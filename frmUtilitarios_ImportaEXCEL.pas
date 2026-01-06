unit frmUtilitarios_ImportaEXCEL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Grids, Mask, Funcoes, DB, DBAccess, MSAccess,
  Menus, RXSpin, IniFiles, RxMenus, RxLookup, Vcl.ComCtrls, DateUtils, system.UITypes, RxToolEdit, MemDS;

type
  TUtilitarios_ImportaEXCEL = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImportar: TButton;
    Grade: TStringGrid;
    cMsg: TMemo;
    tCodigo: TMSQuery;
    bVerificar: TButton;
    Grade2: TStringGrid;
    blayout: TButton;
    Progresso: TProgressBar;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    cQtde: TStaticText;
    cImportados: TStaticText;
    cPerc: TStaticText;
    cAdic: TStaticText;
    cModif: TStaticText;
    LayImp: TMSQuery;
    dsLayInp: TDataSource;
    Panel2: TPanel;
    StaticText4: TStaticText;
    cArquivo: TFilenameEdit;
    cLinhaIni: TRxSpinEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cDataIni: TDateEdit;
    cDataFim: TDateEdit;
    cApagar: TCheckBox;
    cCodigo: TCheckBox;
    cDeletar: TCheckBox;
    cLinhaFim: TRxSpinEdit;
    StaticText5: TStaticText;
    cTitulo: TCheckBox;
    cTabela: TComboBox;
    StaticText6: TStaticText;
    tTemp: TMSQuery;
    cVinculo: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cArquivoChange(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure GradeDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure CapturaClick(Sender: TObject);
    procedure bVerificarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Grade2DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure SalvaLayout(Tabela: Integer);
    procedure blayoutClick(Sender: TObject);
    procedure cApagarClick(Sender: TObject);
    procedure cLinhaIniChange(Sender: TObject);
    procedure cLinhaFimChange(Sender: TObject);
    procedure cTabelaChange(Sender: TObject);
    procedure cDeletarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ImportaClientes;
    procedure ImportaProdutos;
    procedure ImportaFornecedores;
    procedure ImportaBancos;
    procedure ImportaCentroCusto;
    procedure ImportaPlanoContas;
    procedure ImportaLancamentos;
    procedure ImportaPlanoContasECF;
    procedure ImportaPOItens;
    procedure ImportaSaldo;
    procedure ImportaHistorico;
    procedure ImportaModalidades;
    procedure ImportaFinanceiro;
    procedure ImportaClassificacao;
    procedure ImportaControleNavios;
    procedure ImportaDI;
    procedure ImportaAdicoes;
  private
    procedure ImportaNFP;
    procedure ImportaNFPI;
    procedure ImportaNFT;
    procedure ImportaNFTI;
    procedure ImportaBL;
    { Private declarations }
  public
    { Public declarations }
    mAdic,
    mModif,
    mColuna : Integer;
    aINI    : TIniFile;
    MenuCampos2: TPopUpMenu;
  end;

var
  Utilitarios_ImportaEXCEL: TUtilitarios_ImportaEXCEL;
Const
  Tabelas : array[0..22] of string = ('Clientes'
                                     ,'Fornecedores'
                                     ,'Produtos'
                                     ,'Bancos'
                                     ,'CentroCusto'
                                     ,'PlanoContas'
                                     ,'Lancamentos'
                                     ,'PlanoContasECF'
                                     ,'POItens'
                                     ,'ProdutosTransferencia'
                                     ,'HistoricoPadrao'
                                     ,'ModalidadesPgto'
                                     ,'PagarReceber'
                                     ,'PedidosRepresentantes'
                                     ,'Classificação Financeira'
                                     ,'ControleNavios'
                                     ,'ProcessosDocumentos'
                                     ,'Adicoes'
                                     ,'NotasFiscais'
                                     ,'NotasItens'
                                     ,'NotasTerceiros'
                                     ,'NotasTerceirosItens'
                                     ,'ControleNaviosBL');

implementation

uses frmDados, frmMenu_Principal, frmDMContab, frmDMDespacho, frmDMFiscal;


{$R *.dfm}

procedure TUtilitarios_ImportaEXCEL.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ImportaEXCEL.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     Utilitarios_ImportaEXCEL.tag := 1;
end;

procedure TUtilitarios_ImportaEXCEL.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_ImportaEXCEL.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     //Menu_Principal.Skin.Options := [xoTransparent,xoPreview,xoParentBackGround,xoNoFocusRect,xoToolbarBK,xoToolbarButton,xoMDIChildBorder,xoMenuBG,xoFormScrollbar];
     SetCurrentDir(ExtractFilePath(Application.ExeName));
     Utilitarios_ImportaEXCEL.Release;
     Utilitarios_ImportaEXCEL := nil;
end;

procedure TUtilitarios_ImportaEXCEL.cArquivoChange(Sender: TObject);
var
   i,
   q,
   lin,
   mmn,
   col: integer;
begin
     Grade2.RowCount := 5;
     for lin := 1 to Grade2.RowCount - 1 do begin
         for col := 0 to Grade2.ColCount - 1 do begin
             Grade2.Cells[col, lin] := '';
         end;    
     end;
     if Trim(cArquivo.Text) <> '' then begin
        Screen.Cursor := crAppStart;
        cMsg.Lines.Add('Carregando planilha...Aguarde.');
        ImportaEXCEL(Grade, cArquivo.FileName, nil, 1, cLinhaIni.AsInteger, cLinhaFim.AsInteger, cTitulo.Checked);

        cMsg.Lines.Add('Planilha carregada.');
        Screen.Cursor := crDefault;
     end;
     bVerificar.Enabled := Trim(cArquivo.Text) <> '';
     bImportar.Enabled  := false;
     q := 0;
     for i := 2 to Grade.RowCount do begin
         if Trim(Grade.cells[0,i]+Grade.cells[1,i]+Grade.cells[2,i]+Grade.cells[3,i]) <> '' then Inc(q);
         cQtde.Caption := 'Itens | '+PoeZero(6, q);
     end;
     LayImp.First;
     if LayImp.RecordCount > 0 then begin
        for Col := 0 to Grade.ColCount-1 do begin
            if LayImp.Locate('Coluna', Col, [loCaseInsensitive]) then begin
               Grade.Cells[Col, 0] := LayImp.FieldByName('Campo').AsString;
            end;
        end;
     end;
     AutoAjusteCol(Grade);
     // Checkando as opções do menu.
     for i := 0 to pred(Grade.ColCount) do begin
         for mMn := 0 to pred(MenuCampos2.Items.Count) do begin
             if RemoveCaracter('&', '', MenuCampos2.Items[mMn].Caption) = Grade.Cells[i, 0] then begin
                MenuCampos2.Items[mMn].AutoCheck := true;
                MenuCampos2.Items[mMn].Checked   := true;
             end;
         end;
     end;
end;

procedure TUtilitarios_ImportaEXCEL.bCancelarClick(Sender: TObject);
begin
     tag := 1;
end;

procedure TUtilitarios_ImportaEXCEL.bImportarClick(Sender: TObject);
begin
      bImportar.Enabled  := false;
      Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
      Progresso.Position := 0;
      Grade2.Options     := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goAlwaysShowEditor, goThumbTracking];
      mAdic              := 0;
      mModif             := 0;

      if cTabela.ItemIndex = 0 then ImportaClientes;
      if cTabela.ItemIndex =  1 then ImportaFornecedores;
      if cTabela.ItemIndex =  2 then ImportaProdutos;
      if cTabela.ItemIndex =  3 then ImportaBancos;
      if cTabela.ItemIndex =  4 then ImportaCentroCusto;
      if cTabela.ItemIndex =  5 then ImportaPlanoContas;
      if cTabela.ItemIndex =  6 then ImportaLancamentos;
      if cTabela.ItemIndex =  7 then ImportaPlanoContasECF;
      if cTabela.ItemIndex =  8 then ImportaPOItens;
      if cTabela.ItemIndex =  9 then ImportaSaldo;
      if cTabela.ItemIndex = 10 then ImportaHistorico;
      if cTabela.ItemIndex = 11 then ImportaModalidades;
      if cTabela.ItemIndex = 12 then ImportaFinanceiro;
      //if cTabela.ItemIndex = 13 then ImportaPedidosEComm;
      if cTabela.ItemIndex = 14 then ImportaClassificacao;
      if cTabela.ItemIndex = 15 then ImportaControleNavios;
      if cTabela.ItemIndex = 16 then ImportaDI;            
      if cTabela.ItemIndex = 17 then ImportaAdicoes;
      if cTabela.ItemIndex = 18 then ImportaNFP;
      if cTabela.ItemIndex = 19 then ImportaNFPI;
      if cTabela.ItemIndex = 20 then ImportaNFT;
      if cTabela.ItemIndex = 21 then ImportaNFTI;
      if cTabela.ItemIndex = 22 then ImportaBL;

      Grade2.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];

      Showmessage('Importação dos dados de '+cTabela.Items[cTabela.ItemIndex]+ ' terminada.');
      bImportar.Enabled  := true;
end;

procedure TUtilitarios_ImportaEXCEL.ImportaClientes;
Var
    Linha,
    Coluna,
    mCod,
    mColCNPJ,
    mColCPF,
    mColNome,
    mColPais,
    mColCod,
    mCodigo,
    i: Integer;
    mAchou: Boolean;
begin
      mCodigo := 0;
      With Dados do begin
           if cDeletar.Checked then begin
              Clientes.SQL.Clear;
              Clientes.SQL.Add('TRUNCATE TABLE Clientes');
              Clientes.Execute;
           end;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Open;

           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Clientes');
           tCodigo.Open;
           mCod := tCodigo.FieldByName('Codigo').AsInteger;

           mCod     := tCodigo.FieldByName('Codigo').AsInteger;
           mColCNPJ := 0;
           mColNome := 0;
           mColCPF  := 0;
           mColPais := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'CNPJ' then begin
                  mColCNPJ := i;
               end;
               if Grade2.Cells[i, 0] = 'CPF' then begin
                  mColCPF := i;
               end;
               if Grade2.Cells[i, 0] = 'Nome' then begin
                  mColNome := i;
               end;
               if Grade2.Cells[i, 0] = 'Pais' then begin
                  mColPais := i;
               end;
               if Grade2.Cells[i, 0] = 'Codigo' then begin
                  mColCod := i;
               end;
           end;

           i := 0;
           for Linha := 1 to Grade2.RowCount-1 do begin
               mAchou := false;

               if Trim(Grade2.Cells[mColNome, Linha]) <> '' then begin
                  if Trim(Grade2.Cells[mColCNPJ, Linha]) <> '' then begin
                     mAchou := Clientes.Locate('CNPJ', Trim(Grade2.Cells[mColCNPJ, Linha]), [loCaseInsensitive]);
                  end else begin
                     if Trim(Grade2.Cells[mColCPF, Linha]) <> '' then begin
                        mAchou := Clientes.Locate('CPF', Trim(Grade2.Cells[mColCPF, Linha]), [loCaseInsensitive]);
                     end else begin
                        mAchou := Clientes.Locate('Nome', Trim(Grade2.Cells[mColNome, Linha]), [loCaseInsensitive]);
                     end;
                  end;

                  if mAchou then begin
                     Inc(mModif);
                     cMsg.Lines.Add('ALTERADO   CNPJ: ' + Grade2.Cells[mColCNPJ, Linha] + ' CPF: ' + Grade2.Cells[mColCPF, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                     Clientes.Edit;
                     mCodigo := Clientes.FieldByName('Codigo').asinteger;
                  end else begin
                     cMsg.Lines.Add('ADICIONADO CNPJ: ' + Grade2.Cells[mColCNPJ, Linha] + ' CPF: ' + Grade2.Cells[mColCPF, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                     Inc(mAdic);
                     Clientes.Append;
                  end;
                  
                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         Clientes.FieldByName(Grade2.Cells[Coluna, 0]).Value := Trim(Grade2.Cells[Coluna, Linha]);
                      end;
                  end;

                  If (Trim(ClientesInscricao_Estadual.Value) = '') then begin
                     ClientesIsento.Value := true;
                  end else begin
                     ClientesIsento.Value := false;
                  End;
                  If (Trim(ClientesCNPJ.Value) <> '') and (Trim(ClientesInscricao_Estadual.Value) <> '') then begin
                     ClientesIndicador_IE.Value := '1';
                  End;
                  If (Trim(ClientesCNPJ.Value) <> '') and (ClientesIsento.Value = true) then begin
                     ClientesIndicador_IE.Value := '2';
                  End;
                  If (Trim(ClientesCPF.Value) <> '')  then begin
                     ClientesIndicador_IE.Value := '9';
                  End;

                  If Trim(ClientesPais.AsString) = '' then
                     ClientesPais.Value := '1058';

                  if not mAchou then begin
                     if not cCodigo.Checked then begin
                        ClientesCodigo.Value := mCod;
                        inc(mCod);
                     end;
                  end else begin
                     ClientesCodigo.Value := mCodigo;
                  end;

                  ClientesData_Cadastro.Value := Date;
                  ClientesAtivo.Value         := true;
                  Clientes.Post;

                  cImportados.Caption := 'Processados | '+PoeZero(6,i);
                  cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                  cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  inc(i);
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';

               Application.ProcessMessages;
           end;

           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('UPDATE Clientes SET Municipio_Codigo = (');
           tCodigo.SQL.Add('                                        SELECT DISTINCT Codigo FROM Cybersoft_Cadastros.dbo.Municipios MUN');
           tCodigo.SQL.Add('                                        WHERE  UPPER(MUN.Nome) collate sql_latin1_general_cp1251_cs_as = UPPER(Clientes.Municipio) collate sql_latin1_general_cp1251_cs_as');
           tCodigo.SQL.Add('                                        AND    MUN.UF   = Clientes.Estado');
           tCodigo.SQL.Add('                                       )');
           tCodigo.Execute;
      End;
end;

procedure TUtilitarios_ImportaEXCEL.ImportaFornecedores;
Var
    Linha,
    Coluna,
    mCod,
    mColCNPJ,
    mColCPF,
    mColNome,
    mColPais,
    mColCod,
    mCodigo,
    i: Integer;
    mAchou : Boolean;
begin
      mCodigo := 0;
      With Dados do begin
           if cDeletar.Checked then begin
              Fornecedores.SQL.Clear;
              Fornecedores.SQL.Add('TRUNCATE TABLE Fornecedores');
              Fornecedores.Execute;
           end;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;

           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Fornecedores');
           tCodigo.Open;
           mCod := tCodigo.FieldByName('Codigo').AsInteger;

           mColCNPJ := 0;
           mColCPF  := 0;
           mColNome := 0;
           mColPais := 0;
           mColCod  := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               If Grade2.Cells[i, 0] = 'CNPJ' then begin
                  mColCNPJ := i;
               End;
               If Grade2.Cells[i, 0] = 'CPF' then begin
                  mColCPF:= i;
               End;
               If Grade2.Cells[i, 0] = 'Nome' then begin
                  mColNome := i;
               End;
               If Grade2.Cells[i, 0] = 'Pais' then begin
                  mColPais := i;
               End;
               If Grade2.Cells[i, 0] = 'Codigo' then begin
                  mColCod := i;
               End;
           end;

           i := 0;
           for Linha := 1 to Grade2.RowCount-1 do begin
               mAchou := false;
               if Trim(Grade2.Cells[mColNome, Linha]) <> '' then begin
                  if Trim(Grade2.Cells[mColCNPJ, Linha]) <> '' then begin
                     mAchou := Fornecedores.Locate('CNPJ', Trim(Grade2.Cells[mColCNPJ, Linha]), [loCaseInsensitive]);
                  end else begin
                     if Trim(Grade2.Cells[mColCPF, Linha]) <> '' then begin
                        mAchou := Fornecedores.Locate('CPF', Trim(Grade2.Cells[mColCPF, Linha]), [loCaseInsensitive]);
                     end else begin
                        mAchou := Fornecedores.Locate('Nome', Trim(Grade2.Cells[mColNome, Linha]), [loCaseInsensitive]);
                     end;
                  end;
                  
                  if mAchou then begin
                     Inc(mModif);
                     cMsg.Lines.Add('  ALTERADO: ' + Grade2.Cells[mColCNPJ, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                     Fornecedores.Edit;
                     mCodigo := Fornecedores.FieldByName('Codigo').asinteger;
                  end else begin
                     tCodigo.Close;

                     cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColCNPJ, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                     Inc(mAdic);
                     Fornecedores.Append;
                  end;

                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         Fornecedores.FieldByName(Grade2.Cells[Coluna, 0]).Value := Trim(Grade2.Cells[Coluna, Linha]);
                      end;
                  end;

                  if (Trim(FornecedoresInscricao_Estadual.Value) = '') then begin
                     FornecedoresIsento.Value := true;
                  end else begin
                     FornecedoresIsento.Value := false;
                  end;
                  if (Trim(FornecedoresInscricao_Estadual.Value) <> '') and (Trim(FornecedoresCNPJ.Value) <> '') then begin
                     FornecedoresIndicador_IE.Value := '1';
                  end;
                  if (Trim(FornecedoresCNPJ.Value) <> '') and (FornecedoresIsento.Value = true) then begin
                     FornecedoresIndicador_IE.Value := '2';
                  end;
                  if (Trim(FornecedoresCPF.Value) <> '')  then begin
                     FornecedoresIndicador_IE.Value := '9';
                  end;
                  if Trim(FornecedoresPais.AsString) = '' then begin
                     FornecedoresPais.Value := '1058';
                  end;

                  if not mAchou then begin
                     if not cCodigo.Checked then begin
                        FornecedoresCodigo.Value := mCod;
                        inc(mCod);
                     end;
                  end else begin
                     FornecedoresCodigo.Value := mCodigo;
                  end;
                  FornecedoresAtivo.Value  := true;
                  Fornecedores.Post;
               end;

               Grade2.Row := Linha;

               cImportados.Caption := 'Processados | '+PoeZero(6,i);
               cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
               cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
               inc(i);

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;

           tCodigo.SQL.Clear;
           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('UPDATE Fornecedores SET Municipio_Codigo = (');
           tCodigo.SQL.Add('                                        SELECT DISTINCT Codigo FROM Cybersoft_Cadastros.dbo.Municipios MUN');
           tCodigo.SQL.Add('                                        WHERE  UPPER(MUN.Nome) collate sql_latin1_general_cp1251_cs_as = UPPER(Fornecedores.Municipio) collate sql_latin1_general_cp1251_cs_as');
           tCodigo.SQL.Add('                                        AND    MUN.UF   = Fornecedores.Estado');
           tCodigo.SQL.Add('                                       )');
           tCodigo.Execute;
           tCodigo.Execute;
      End;
end;

procedure TUtilitarios_ImportaEXCEL.ImportaProdutos;
Var
    mColFab,
    mColDesc,
    mColCod,
    mColSKU,
    mColLinha,
    mCodLinha,
    mLin,
    mCol   : Integer;
    mExiste: Boolean;
    mDesc,
    mCodigo: String;
    mPosIni: Integer;
    mPosFim: Integer;
begin
      With Dados do begin
           If cTabela.ItemIndex = 2 then begin
              if cDeletar.Checked then begin
                 Produtos.SQL.Clear;
                 Produtos.SQL.Add('TRUNCATE TABLE Produtos');
                 Produtos.Execute;
              end;
              Produtos.SQL.Clear;
              Produtos.SQL.Add('SELECT * FROM Produtos');
              Produtos.Open;

              mColFab   := 0;
              mColDesc  := 0;
              mColCod   := 0;
              mColSKU   := 0;
              mcolLinha := 0;
              mCodLinha := 0;

              for mCol := 0 to Grade2.ColCount do begin
                  if Grade2.Cells[mCol, 0] = 'Codigo'            then mColCod   := mCol;
                  if Grade2.Cells[mCol, 0] = 'Codigo_Fabricante' then mColFab   := mCol;
                  if Grade2.Cells[mCol, 0] = 'Descricao'         then mColDesc  := mCol;
                  if Grade2.Cells[mCol, 0] = 'Codigo_SKU'        then mColSKU   := mCol;
                  if Grade2.Cells[mCol, 0] = 'Linha'             then mColLinha := mCol;
              end;

              for mLin := 1 to Grade2.RowCount-1 do begin
                  mExiste := false;
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     if cCodigo.Checked then begin
                        mExiste := Produtos.Locate('Codigo', Grade2.Cells[mColCod, mLin], [loCaseInsensitive]);
                     end else begin
                        // Verifica se o produto já existe pelo codigo do fabricante.
                        if Trim(Grade2.Cells[mColFab, mLin]) <> '' then begin
                           mExiste := Produtos.Locate('Codigo_Fabricante', Grade2.Cells[mColFab, mLin], [loCaseInsensitive]);
                        end;
                        if Trim(Grade2.Cells[mColSKU, mLin]) <> '' then begin
                           mExiste := Produtos.Locate('Codigo_SKU', Grade2.Cells[mColSKU, mLin], [loCaseInsensitive]);
                        end;
                        // Verifica se o produto já existe pelo codigo interno na descrição.
                        if not mExiste then begin
                           if Pos('<{', Grade2.Cells[mColDesc, mLin]) > 0 then begin
                              mPosIni := Pos('<{', Grade2.Cells[mColDesc, mLin])+2;
                              mPosFim := Pos('}>', Grade2.Cells[mColDesc, mLin]);
                              mCodigo := Copy(Grade2.Cells[mColDesc, mLin], mPosIni, (mPosFim-mPosIni));
                              mExiste := Produtos.Locate('Codigo', mCodigo, [loCaseInsensitive]);
                           end;
                        end;
                        // Verifica se o produto já existe pela descrição.
                        if not mExiste then begin
                           mDesc := Trim(Grade2.Cells[mColDesc, mLin]);
                           tCodigo.SQL.Clear;
                           tCodigo.SQL.Add('SELECT Codigo, Descricao FROM Produtos WHERE Descricao LIKE '+QuotedStr('%'+mDesc+'%'));
                           tCodigo.Open;
                           tCodigo.First;
                           while not tCodigo.Eof do begin
                                 if Trim(RemoveCaracter(#13+'<{'+Trim(tCodigo.FieldByName('Codigo').AsString)+'}>', '', tCodigo.FieldByName('Descricao').AsString)) = mDesc then begin
                                    mExiste := true;
                                    Break;
                                 end;
                                 tCodigo.Next;
                           end;
                           Produtos.Locate('Codigo', tCodigo.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
                        end;
                     end;
                     if not mExiste then begin
                        //tCodigo.SQL.SaveToFile('c:\temp\tcodigo.sql');
                        tCodigo.SQL.Clear;
                        tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo),0) AS Codigo FROM Produtos');
                        tCodigo.Open;
                        Produtos.Append;
                     end else begin
                        Produtos.Edit;
                     end;

                     // Cria ou pega o codigo da "Linha do Produto" caso exista.
                     with ProdutosLinhas do begin
                          SQL.Clear;
                          SQL.Add('select * from ProdutosLinhas where Descricao = :pLinha');
                          parambyname('pLinha').AsString := Grade2.Cells[mColLinha, mLin];
                          Open;
                          if RecordCount = 0 then begin
                             tTemp.SQL.clear;
                             tTemp.SQL.Add('select isnull(max(Codigo), 0)+1 as Codigo from ProdutosLinhas');
                             tTemp.Open;
                             Append;
                                  fieldbyname('Codigo').value    := tTemp.FieldByName('Codigo').AsInteger;
                                  fieldbyname('Descricao').value := Grade2.Cells[mColLinha, mLin];
                             post;
                          end else begin
                             mCodLinha := FieldByName('Codigo').AsInteger;
                          end;
                     end;

                     for mCol := 0 to Grade2.ColCount-1 do begin
                         if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                            if not mExiste then begin
                               if not cCodigo.Checked then
                                  Produtos.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger+1
                               else
                                  Produtos.FieldByName('Codigo').Value := StrtoInt(Trim(Grade2.Cells[mColCod, mLin]));
                            end;
                            if Grade2.Cells[mCol, 0] <> 'Codigo' then begin
                               if Trim(Grade2.Cells[mCol, mLin]) <> '' then begin
                                  if Grade2.Cells[mCol, 0] <> 'Linha' then begin
                                     Produtos.FieldByName(Grade2.Cells[mCol,0]).Value := Trim(Grade2.Cells[mCol, mLin]);
                                  end else begin
                                     Produtos.FieldByName('Linha').Value := mCodLinha;
                                  end;
                               end;
                            end;
                            
                            if (Grade2.Cells[mCol,0] = 'Descricao') and (Pos('<{', ProdutosDescricao.AsString) = 0) then
                               Produtos.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin] + #13+'<{'+ProdutosCodigo.AsString+'}>';
                            if Grade2.Cells[mCol,0] = 'NCM' then
                               Produtos.FieldByName(Grade2.Cells[mCol,0]).Value := ApenasNumeros(Grade2.Cells[mCol, mLin]);
                            if Trim(Produtos.FieldByName('Descricao_Reduzida').AsString) = '' then
                               Produtos.FieldByName('Descricao_Reduzida').Value := Trim(Copy(RemoveCaracter('<{'+ProdutosCodigo.AsString+'}>', '',Produtos.FieldByName('Descricao').AsString),1 , 60));
                            if cFornecedor.DisplayValue <> '' then begin
                               Produtos.FieldByName('Fabricante').Value := FornecedoresCodigo.AsInteger;
                               Produtos.FieldByName('Fornecedor').Value := FornecedoresCodigo.AsInteger;
                            end;
                         end;
                     end;
                     Produtos.FieldByName('Desativado').Value := false;
                     Produtos.Post;

                     If not mExiste then begin
                        cMsg.Lines.Add('ADICIONADO: ' + Produtos.FieldByName('Codigo').AsString+ ' --> '+Produtos.FieldByName('Descricao').AsString);
                        Inc(mAdic);
                     end else begin
                        cMsg.Lines.Add('  ALTERADO: ' + Produtos.FieldByName('Codigo').AsString+ ' --> '+Produtos.FieldByName('Descricao').AsString);
                        Inc(mModif);
                     end;

                     cImportados.Caption := 'Processados | '+PoeZero(6,mlin);
                     cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                     cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  end;

                  Progresso.Position  := Progresso.Position + 1;
                  cPerc.Caption       := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                  Application.ProcessMessages;
              end;
           end;
      end;
end;

procedure TUtilitarios_ImportaEXCEL.GradeDrawCell(Sender: TObject; ACol,ARow: Integer; Rect: TRect; State: TGridDrawState);
var
    Texto : string;
    Largurat : integer;
    Largurac : integer;
begin
      With (Sender as TStringGrid).Canvas do begin
           Texto    := Grade.Cells[ACol, ARow];
           Largurat := Canvas.TextWidth(texto) div 2;
           Largurac := Grade.ColWidths[ACol] div 2;

           If ARow = 0 then begin
              Brush.Color := $003E3E3E;
              Font.Color  := clYellow;
              Font.Size   := 8;
              Font.Style  := [fsBold];
           End;
           If ARow = 1 then begin
              Brush.Color := clActiveCaption;
              Font.Color  := clBlack;
              Font.Size   := 8;
              Font.Style  := [fsBold];
           End;
           If gdFocused in State then begin
              Brush.Color := clnavy;
              mColuna     := ACol;
              Font.Color  := clWhite;
           End;
           FillRect(Rect);

           If ARow <= 1 then begin
              TextOut(Rect.Left+1+largurac-largurat,Rect.Top+2, Texto);
           end else
              TextOut(Rect.Left+1, Rect.Top+2, Grade.Cells[aCol,aRow]);
      End;
end;

procedure TUtilitarios_ImportaEXCEL.CapturaClick(Sender: TObject);
var
   mCol,i, mmn: Integer;
begin
      Grade.Cells[mColuna, 0] := ' ';
      // Limpa o campo de outra célula se já utilizado.
      if (RemoveCaracter('&', '', TMenuItem(Sender).Caption) <> 'Limpar') then begin
         for mCol := 0 to Grade.ColCount -1 do begin
             if Grade.Cells[mCol, 0] = RemoveCaracter('&', '', TMenuItem(Sender).Caption) then Grade.Cells[mCol, 0] := ' ';
         end;
         Grade.Cells[mColuna, 0] := RemoveCaracter('&', '', TMenuItem(Sender).Caption);
      end;
      // Recheckando as opções do menu.
      for i := 0 to pred(Grade.ColCount) do begin
          for mMn := 0 to pred(MenuCampos2.Items.Count) do begin
              MenuCampos2.Items[mMn].Checked   := false;
          end;
      end;
      for i := 0 to pred(Grade.ColCount) do begin
          for mMn := 0 to pred(MenuCampos2.Items.Count) do begin
              if RemoveCaracter('&', '', MenuCampos2.Items[mMn].Caption) = Grade.Cells[i, 0] then begin
                 MenuCampos2.Items[mMn].AutoCheck := true;
                 MenuCampos2.Items[mMn].Checked   := true;
              end;
          end;
      end;
end;

procedure TUtilitarios_ImportaEXCEL.bVerificarClick(Sender: TObject);
Var
    mCol,
    mLin,
    mCol2,
    mLin2,
    mColCod,
    mCoLDes,
    mColCta,
    mColCtaD,
    mColCtaC,
    i: Integer;
    mTipo : TFieldType;
    mTexto: WideString;
begin
      mColCod := 0;
      with Dados, dmContab, dmDespacho do begin
           Clientes.DisableControls;
           Fornecedores.DisableControls;
           Lancamentos.DisableControls;
           ProcessosDoc.DisableControls;
           Historicos.DisableControls;
           PlanoContas.DisableControls;
           PlanoContasECF.DisableControls;
           POItens.DisableControls;
           ClassificacaoFinanceira.DisableControls;
           PagarReceber.DisableControls;
           PagarReceberBaixas.DisableControls;
           ControleNavios.DisableControls;
           ProcessosDOC.DisableControls;
           Adicoes.DisableControls;
           ControleNaviosBL.DisableControls;
      end;

      // Limpando a grade.
      for mLin := 0 to Grade2.RowCount -1 do begin
          Grade2.Rows[mLin].Clear;
      end;

      //Grade2.RowCount := Grade.RowCount - cLinhaIni.AsInteger;
      Grade2.RowCount := Grade.RowCount - 1;
      Grade2.ColCount := Grade.ColCount;

      // Pegando os nomes do campos da primeira grade.
      mCol2 := 0;
      for mCol := 0 to Grade.ColCount-1 do begin
          if Trim(Grade.Cells[mCol, 0]) <> '' then begin
             Grade2.Cells[mCol2, 0] := Trim(Grade.Cells[mCol, 0]);
             Inc(mCol2);
          end;
      end;

      Progresso.Max      := Grade2.RowCount-2;
      Progresso.Position := 0;
      mLin2              := 1;

      for mLin := 2 to Grade2.RowCount-1 do begin
          mCol2 := 0;
          For mCol := 0 to Grade.ColCount-1 do begin
              If Trim(Grade.Cells[mCol, 0]) <> '' then begin
                 If (Grade.Cells[mCol, 0] = 'CNPJ') or (Grade.Cells[mCol, 0] = 'Inscricao_Estadual') or (Grade.Cells[mCol, 0] = 'Telefone1') or (Grade.Cells[mCol, 0] = 'Telefone2')
                    or (Grade.Cells[mCol, 0] = 'CEP') or (Grade.Cells[mCol, 0] = 'CPF') then begin
                    Grade2.Cells[mCol2, mLin2] := ApenasNumeros(Grade.Cells[mCol, mLin]);
                 end else begin
                    Grade2.Cells[mCol2, mLin2] := Grade.Cells[mCol, mLin];
                 End;
                 Inc(mCol2);
              End;
          End;
          Inc(mLin2);
          Progresso.Position  := Progresso.Position + 1;
          cPerc.Caption       := InttoStr( Round((Progresso.Position / Progresso.Max) * 100 ))+'%';
          cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
      End;

      cMsg.Clear;
      Progresso.Position := 0;

      // Verifica conversão dos campos do cadastro de clientes.
      If cTabela.ItemIndex = 0 then begin
         With Dados do begin
              Clientes.SQL.Clear;
              Clientes.SQL.Add('SELECT * FROM Clientes');
              Clientes.Open;

              For mLin := 1 to Grade2.RowCount-1 do begin
                  If Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo),0) AS Codigo FROM Clientes');
                     tCodigo.Open;

                     Clientes.Append;
                     For mCol := 0 to Grade2.ColCount-1 do begin
                         If Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                            Try
                               Clientes.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                            Except
                               cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                            End;
                         End;
                     End;
                     Clientes.Cancel;
                  End;

                  Progresso.Position := Progresso.Position + 1;
                  cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              End;
         End;
      End;

      // Verifica conversão dos campos do cadastro de produtos.
      If cTabela.ItemIndex = 2 then begin
         With Dados do begin
              Produtos.SQL.Clear;
              Produtos.SQL.Add('SELECT * FROM Produtos');
              Produtos.Open;

              For mLin := 1 to Grade2.RowCount-1 do begin
                  If Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo),0) AS Codigo FROM Produtos');
                     tCodigo.Open;

                     Produtos.Append;
                     For mCol := 0 to Grade2.ColCount-1 do begin
                         If Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                            mTipo := Produtos.FieldByName(Grade2.Cells[mCol,0]).DataType;
                            Try
                               if Grade2.Cells[mCol, 0] <> 'Linha' then begin;
                                  if (mTipo = ftInteger) or (mTipo = ftSmallint) or (mTipo = ftfloat) or (mTipo = ftCurrency) then begin
                                     if trim(Grade2.Cells[mCol, mLin]) = '' then
                                        Produtos.FieldByName(Grade2.Cells[mCol,0]).Value := 0
                                     else
                                        Produtos.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin]
                                  end else
                                     Produtos.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                               end;
                            Except
                               cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                            End;
                         End;
                     End;
                     Produtos.Cancel;
                  End;

                  Progresso.Position := Progresso.Position + 1;
                  cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              End;
         End;
      End;

      // Verifica conversão dos campos do cadastro de Bancos.
      if cTabela.ItemIndex = 3 then begin
         with Dados do begin
              Bancos.SQL.Clear;
              Bancos.SQL.Add('SELECT * FROM Bancos');
              Bancos.Open;

              for mLin := 1 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo),0) AS Codigo FROM Bancos');
                     tCodigo.Open;

                     Bancos.Append;
                     for mCol := 0 to Grade2.ColCount-1 do begin
                         if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                            try
                               Bancos.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                            except
                               cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                            end;
                         end;
                     end;
                     Bancos.Cancel;
                  end;

                  Progresso.Position := Progresso.Position + 1;
                  cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              end;
         end;
      end;

      // Verifica conversão dos campos do cadastro de Centro de Custos.
      if cTabela.ItemIndex = 4 then begin
         with Dados do begin
              CentroCusto.SQL.Clear;
              CentroCusto.SQL.Add('SELECT * FROM CentroCusto');
              CentroCusto.Open;

              for mLin := 1 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo),0) AS Codigo FROM CentroCusto');
                     tCodigo.Open;

                     CentroCusto.Append;
                     for mCol := 0 to Grade2.ColCount-1 do begin
                         if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                            try
                               CentroCusto.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                            except
                               cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                            end;
                         end;
                     end;
                     CentroCusto.Cancel;
                  end;

                  Progresso.Position := Progresso.Position + 1;
                  cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              end;
         end;
      end;

      // Verifica conversão dos campos do cadastro do Plano de Contas.
      if cTabela.ItemIndex = 5 then begin
         with Dados, dmContab do begin
              Empresas.SQL.Clear;
              Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
              Empresas.Open;

              If Trim(Dados.EmpresasMascara_PlanoContas.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'A mascara de formatação do classificador da conta ainda não foi informada.'+#13+#13+'Informe a mascara em Cadastros\Gerais\Empresas\Parâmetros\Máscara P.Contas.', mtError, [mbOK], 0);
                 bImportar.Enabled := false;
                 Abort;
              end;
              tCodigo.Connection := Dados.Banco_Contabilidade;

              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
              PlanoContas.Open;
              
              mTexto  := '';
              mColCod := 0;
              mColDes := 0;
              mColCta := 0;
              
              for i := 0 to Grade2.ColCount-1 do begin
                  if Grade2.Cells[i, 0] = 'Codigo' then begin
                     mColCod := i;
                  end;
                  if Grade2.Cells[i, 0] = 'Descricao' then begin
                     mColDes := i;
                  end;
                  if Grade2.Cells[i, 0] = 'Conta' then begin
                     mColCta := i;
                  end;
              end;

              for mLin := 1 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo),0) AS Codigo FROM PlanoContas');
                     tCodigo.Open;

                     PlanoContas.Append;
                     for mCol := 0 to Grade2.ColCount-1 do begin
                         if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                            try
                               PlanoContas.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                            except
                               cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                            end;
                         end;
                     end;
                     PlanoContas.Cancel;
                  end;

                  if not EmpresasCodigo_Reduzido.AsBoolean then begin
                     if (Trim(Grade2.Cells[mColCod, mLin]) = '') and (Trim(Grade2.Cells[mColCta, mLin]) <> '') then begin
                        mTexto := mTexto + #13+ PoeZero(4,mLin)+' ->'+Trim(Grade2.Cells[mColCod, mLin]) + ' - '+Trim(Grade2.Cells[mColCta, mLin]) + ' - '+Trim(Grade2.Cells[mColDes, mLin]);
                     end;
                  end;
                  Progresso.Position := Progresso.Position + 1;
                  cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              end;
              if mTexto <> '' then begin
                 MessageDlg('Atenção!'+#13+#13+'As seguintes linhas estão sem o código reduzido da conta e não serão importados.'+#13+#13+mTexto, mtInformation, [mbOK], 0);
              end;
         end;
      end;

      // Verifica conversão dos campos da tabela de lançamentos.
      if cTabela.ItemIndex = 6 then begin
         mColCtaD := 0;
         mColCtaC := 0;
         for i := 0 to Grade2.ColCount-1 do begin
             if Grade2.Cells[i, 0] = 'Conta_Debito' then begin
                mColCtaD := i;
             end;
             if Grade2.Cells[i, 0] = 'Conta_Credito' then begin
                mColCtaC := i;
             end;
         end;

         with dmContab do begin
              tCodigo.Connection := Dados.Banco_Contabilidade;

              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE Registro = (SELECT MAX(Registro)+1 FROM Lancamentos)');
              Lancamentos.Open;

              for mLin := 1 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     Lancamentos.Append;
                     for mCol := 0 to Grade2.ColCount-1 do begin
                         if (Trim(Grade2.Cells[mCol, 0]) <> '') and (Grade2.Cells[mCol, 0] <> 'D/C') then begin
                            try
                               Lancamentos.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                            except
                               cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                            end;
                         end;
                     end;
                     Lancamentos.Cancel;
                  end;
                  Progresso.Position  := Progresso.Position + 1;
                  cPerc.Caption       := InttoStr( Round((Progresso.Position/Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              end;

              // Verifica se as contas dos lancamentos existem no plano de contas.
              Progresso.Position := 0;
              for mLin := 1 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT Qtde_D = (SELECT COUNT(*) FROM PlanoContas WHERE Codigo  = '+Grade2.Cells[mColCtaD, mLin]+')');
                     tCodigo.SQL.Add('      ,Qtde_C = (SELECT COUNT(*) FROM PlanoContas WHERE Codigo  = '+Grade2.Cells[mColCtaC, mLin]+')');
                     tCodigo.Open;
                     if tCodigo.FieldByName('Qtde_D').AsInteger = 0 then begin
                        cMsg.Lines.Add('Conta "DÉBITO" ('+Grade2.Cells[mColCtaD, mLin]+') não encontrada no plano de contas :  Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mColCtaD+1));
                     end;
                     if tCodigo.FieldByName('Qtde_C').AsInteger = 0 then begin
                        cMsg.Lines.Add('Conta "CRÉDITO" ('+Grade2.Cells[mColCtaC, mLin]+') não encontrada no plano de contas :  Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mColCtaC+1));
                     end;
                  end;
                  Progresso.Position  := Progresso.Position + 1;
                  cPerc.Caption       := InttoStr( Round((Progresso.Position/Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              end;
         end;
      end;

      // Verifica conversão dos campos do cadastro do Plano de Contas da ECD.
      if cTabela.ItemIndex = 7 then begin
         with dmContab do begin
              tCodigo.Connection := Dados.Banco_Contabilidade;
              
              PlanoContasECF.SQL.Clear;
              PlanoContasECF.SQL.Add('SELECT * FROM PlanoContasECF');
              PlanoContasECF.Open;
              
              for mLin := 1 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     PlanoContasECF.Append;
                     for mCol := 0 to Grade2.ColCount-1 do begin
                         if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                            try
                               PlanoContasECF.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                            except
                               cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                            end;
                         end;
                     end;
                     PlanoContasECF.Cancel;
                  end;
                  Progresso.Position  := Progresso.Position + 1;
                  cPerc.Caption       := InttoStr( Round((Progresso.Position/Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              end;
         end;
      end;

      // Verifica conversão dos campos do cadastro de Itens da PO.
      if cTabela.ItemIndex = 8 then begin
         with Dados, dmDespacho do begin
              POItens.SQL.Clear;
              POItens.SQL.Add('SELECT * FROM POITens');
              POItens.Open;

              for mLin := 2 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Registro),0) AS Registro FROM POItens');
                     tCodigo.Open;

                     POItens.Append;
                     for mCol := 0 to Grade2.ColCount-1 do begin
                         if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                            try
                               POItens.FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                            except
                               cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                            end;
                         end;
                     end;
                     POItens.Cancel;
                  end;

                  Progresso.Position  := Progresso.Position + 1;
                  cPerc.Caption       := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                  cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
              end;
         end;
      end;
      
      // Verifica conversão dos campos dos titulos Financeiros
      if cTabela.ItemIndex = 12 then begin
         with Dados do begin
              for i := 0 to Grade2.ColCount-1 do begin
                  if Grade2.Cells[i, 0] = 'Classificacao' then begin
                     mColCod := i;
                  end;
              end;
         
              with PagarReceber do begin         
                   SQL.Clear;
                   SQL.Add('select * FROM PagarReceber where Numero = (select max(numero) from PagarReceber)');
                   Open;

                   for mLin := 2 to Grade2.RowCount-1 do begin
                       if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                          tCodigo.SQL.Clear;
                          tCodigo.SQL.Add('SELECT ISNULL(MAX(Registro),0) AS Registro FROM POItens');
                          tCodigo.Open;

                          Append;
                               for mCol := 0 to Grade2.ColCount-1 do begin
                                   if Trim(Grade2.Cells[mColCod, mLin]) = '' then begin
                                      cMsg.Lines.Add('Classificação Financeira não informada :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                                   end;
                                   if (Trim(Grade2.Cells[mCol, 0]) <> '') and (pos('_*', Grade2.Cells[mCol, 0]) = 0)then begin
                                      try
                                         FieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                                      except
                                         cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                                      end;
                                   end;
                               end;
                               with tTemp do begin
                                    sql.clear;
                                    if not ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                                       sql.add('select Count(Codigo) from ClassificacaoFinanceira where Codigo = '+quotedstr(Trim(Grade2.Cells[mColCod, mLin])) );
                                    end else begin
                                       sql.add('select Count(Codigo) from Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where Codigo = '+quotedstr(Trim(Grade2.Cells[mColCod, mLin])) );
                                    end;
                                    open;
                                    if recordCount = 0 then begin
                                       cMsg.Lines.Add('Classificação Financeira não cadastrada:'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1));
                                    end;
                               end;
                          Cancel;
                       end;

                       Application.ProcessMessages;
                       if Utilitarios_ImportaEXCEL.tag = 1 then begin
                          Utilitarios_ImportaEXCEL.tag := 0;
                          break;
                       end;
                       Progresso.Position  := Progresso.Position + 1;
                       cPerc.Caption       := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                       cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
                   end;
              end;
         end;
      end;
      
      // Verifica conversão dos campos do cadastro de Controle de Navios.
      if cTabela.ItemIndex = 15 then begin
         mCol := 0;
         with Dados, ControleNavios do begin
              sql.Clear;
              sql.Add('select * from ControleNavios');
              open;

              for mLin := 2 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     with tCodigo do begin 
                          sql.Clear;
                          sql.Add('select isnull(max(Registro),0) as Registro from Cybersoft_Cadastros.dbo.ControleNavios');
                          open;
                     end;

                     Append;
                          for mCol := 0 to Grade2.ColCount-1 do begin
                              if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                                 try
                                    if Trim(Grade2.Cells[mCol, mLin]) <> '' then begin
                                       fieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                                    end;
                                 except
                                    cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1)+'-> '+Grade2.Cells[mCol, mLin]);
                                 end;
                              end;
                          end;
                     Cancel;
                  end;
              end;
              Progresso.Position  := Progresso.Position + 1;
              cPerc.Caption       := InttoStr(Round((Progresso.Position/Progresso.Max) * 100 ))+'%';
              cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
         end;
      end;
      
      // Verifica conversão dos campos da DI (ProcessosDocumentos).
      if cTabela.ItemIndex = 16 then begin
         mCol := 0;
         with Dados, ProcessosDOC do begin
              sql.Clear;
              sql.Add('select * from ProcessosDocumentos');
              open;
              for mLin := 2 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     Append;
                          for mCol := 0 to Grade2.ColCount-1 do begin
                              if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                                 try
                                    if Trim(Grade2.Cells[mCol, mLin]) <> '' then begin
                                       fieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                                    end;
                                 except
                                    cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1)+'-> '+Grade2.Cells[mCol, mLin]);
                                 end;
                              end;
                          end;
                     Cancel;
                  end;
              end;
              Progresso.Position  := Progresso.Position + 1;
              cPerc.Caption       := InttoStr(Round((Progresso.Position/Progresso.Max) * 100 ))+'%';
              cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
         end;
      end;
      
      // Verifica conversão dos campos das Adições.
      if cTabela.ItemIndex = 17 then begin
         mCol := 0;
         with Dados, Adicoes do begin
              sql.Clear;
              sql.Add('select * from Adicoes');
              open;

              for mLin := 2 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     with tCodigo do begin 
                          sql.Clear;
                          sql.Add('select isnull(max(Registro),0) as Registro from Adicoes');
                          open;
                     end;
                     Append;
                          for mCol := 0 to Grade2.ColCount-1 do begin
                              if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                                 try
                                    if Trim(Grade2.Cells[mCol, mLin]) <> '' then begin
                                       fieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                                    end;
                                 except
                                    cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1)+'-> '+Grade2.Cells[mCol, mLin]);
                                 end;
                              end;
                          end;
                     Cancel;
                  end;
              end;
              Progresso.Position  := Progresso.Position + 1;
              cPerc.Caption       := InttoStr(Round((Progresso.Position/Progresso.Max) * 100 ))+'%';
              cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
         end;
      end;

      // Verifica conversão dos campos dos BL's.
      if cTabela.ItemIndex = 22 then begin
         mCol := 0;
         with Dados, ControleNaviosBL do begin
              sql.Clear;
              sql.Add('select * from ControleNaviosBL');
              open;

              for mLin := 2 to Grade2.RowCount-1 do begin
                  if Trim(Grade2.Cells[0, mLin]) <> '' then begin
                     Append;
                          for mCol := 0 to Grade2.ColCount-1 do begin
                              if Trim(Grade2.Cells[mCol, 0]) <> '' then begin
                                 try
                                    if Trim(Grade2.Cells[mCol, mLin]) <> '' then begin
                                       fieldByName(Grade2.Cells[mCol,0]).Value := Grade2.Cells[mCol, mLin];
                                    end;
                                 except
                                    cMsg.Lines.Add('Erro na conversão do campo :'+Grade2.Cells[mCol,0]+'   Linha :'+InttoStr(mLin)+'   Coluna: '+InttoStr(mCol+1)+'-> '+Grade2.Cells[mCol, mLin]);
                                 end;
                              end;
                          end;
                     Cancel;
                  end;
              end;
              Progresso.Position  := Progresso.Position + 1;
              cPerc.Caption       := InttoStr(Round((Progresso.Position/Progresso.Max) * 100 ))+'%';
              cImportados.Caption := 'Verificados | '+PoeZero(6, mLin);
         end;
      end;

      Progresso.Position := 0;
      bImportar.Enabled  := Trim(cMsg.Lines.Text) = '';
      AutoAjusteCol(Grade2);
      Grade2.Row := 1;

      with Dados, dmContab, dmDespacho do begin
           Clientes.EnableControls;
           Fornecedores.EnableControls;
           Lancamentos.EnableControls;
           ProcessosDoc.EnableControls;
           Historicos.EnableControls;
           PlanoContas.EnableControls;
           PlanoContasECF.EnableControls;
           POItens.EnableControls;
           ClassificacaoFinanceira.EnableControls;
           PagarReceber.EnableControls;
           PagarReceberBaixas.EnableControls;
           ControleNavios.EnableControls;
           ProcessosDOC.EnableControls;
           Adicoes.EnableControls;
      end;

      Showmessage('Verificação terminada...');
end;

procedure TUtilitarios_ImportaEXCEL.FormShow(Sender: TObject);
begin
      With Dados do begin
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmp ORDER BY Razao_Social');
           Empresas.ParamByName('pEmp').asinteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;
end;

procedure TUtilitarios_ImportaEXCEL.Grade2DrawCell(Sender: TObject; ACol,ARow: Integer; Rect: TRect; State: TGridDrawState);
var
    Largurat: integer;
    Largurac: integer;
begin
      With (Sender as TStringGrid).Canvas do begin
           Largurat := Canvas.TextWidth(Grade2.Cells[ACol, ARow]) div 2;
           Largurac := Grade2.ColWidths[ACol] div 2;

           If ARow = 0 then begin
              Brush.Color := $003E3E3E;
              Font.Color  := clYellow;
              Font.Size   := 8;
              Font.Style  := [fsBold];
           End;
           If gdFocused in State then begin
              Brush.Color   := clnavy;
              mColuna       := ACol;
              Font.Color    := clWhite;
              //Barra.Caption := 'Linha: '+ InttoStr(aRow)+'  | Coluna : '+InttoStr(aCol+1)+'  | Campo: ' +Grade2.Cells[ACol, 0]+'  | Conteúdo: '+Grade2.Cells[ACol, aRow];
           End;
           FillRect(Rect);
           If ARow = 0 then
              TextOut(Rect.Left+1+largurac-largurat,Rect.Top+2, Grade2.Cells[ACol, ARow])
           else
              TextOut(Rect.Left+1, Rect.Top+2, Grade2.Cells[aCol,aRow]);
      End;
end;

procedure TUtilitarios_ImportaEXCEL.ImportaBancos;
Var
    Linha,
    Coluna,
    mCod,
    mColConta,
    mColNome,
    i: Integer;
    mAdd: Boolean;
begin
      with Dados do begin
           if cDeletar.Checked then begin
              with Bancos do begin
                   SQL.Clear;
                   SQL.Add('TRUNCATE TABLE Bancos');
                   Execute;
                   SQL.Clear;
                   SQL.Add('SELECT * FROM Bancos');
                   Open;
              end;
           end;

           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0) AS Codigo FROM Bancos');
           tCodigo.Open;
           
           mCod      := tCodigo.FieldByName('Codigo').AsInteger;
           mColConta := 0;
           mColNome  := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'Conta' then begin
                  mColConta := i;
               end;
               if Grade2.Cells[i, 0] = 'Nome' then begin
                  mColNome := i;
               end;
           end;

           i := 0;
           for Linha := cLinhaIni.AsInteger to Grade2.RowCount-1 do begin
               mAdd := true;
               if Trim(Grade2.Cells[mColNome, Linha]) <> '' then begin
                  if Bancos.Locate('Nome', Trim(Grade2.Cells[mColNome, Linha]), [loCaseInsensitive]) then begin
                     mAdd := (Trim(BancosNome.AsString) <> Trim(Grade2.Cells[mColNome, Linha]));
                  end;
                  if mAdd then begin
                     cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColConta, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                     Inc(mCod);

                     Bancos.Append;
                            BancosCodigo.Value  := mCod;
                            BancosEmpresa.Value := Menu_Principal.mEmpresa;
                  end else begin
                     cMsg.Lines.Add('  ALTERADO: ' + Grade2.Cells[mColConta, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                     Bancos.Edit;
                  end;

                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         if Grade2.Cells[Coluna, 0] <> 'Codigo' then begin
                            Bancos.FieldByName(Grade2.Cells[Coluna, 0]).Value := Trim(Grade2.Cells[Coluna, Linha]);
                         end;
                      end;
                  end;

                  Bancos.Post;

                  cImportados.Caption := 'Processados | '+PoeZero(6,i);
                  cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                  cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  inc(i);
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaCentroCusto;
Var
    Linha,
    Coluna,
    mColCodigo,
    mColNome,
    i: Integer;
begin
      with Dados do begin
           if cDeletar.Checked then begin
              CentroCusto.SQL.Clear;
              CentroCusto.SQL.Add('TRUNCATE TABLE CentroCusto');
              CentroCusto.Execute;
           end;
           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto');
           CentroCusto.Open;

           mColCodigo := 0;
           mColNome   := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'Codigo' then begin
                  mColCodigo := i;
               end;
               if Grade2.Cells[i, 0] = 'Nome' then begin
                  mColNome:= i;
               end;
           end;
           i := 0;
           for Linha := cLinhaIni.AsInteger to Grade2.RowCount-1 do begin
               if Grade2.Cells[mColCodigo, Linha] <> '' then begin
                  if not CentroCusto.Locate('Codigo', Grade2.Cells[mColCodigo, Linha], [loCaseInsensitive]) then begin
                     cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);

                     CentroCusto.Append;
                                 CentroCustoEmpresa.Value := Menu_Principal.mEmpresa;
                  end else begin
                     cMsg.Lines.Add('  ALTERADO: ' + Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                     CentroCusto.Edit;
                  end;

                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         CentroCusto.FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                      end;
                  end;

                  CentroCusto.Post;
                  
                  cImportados.Caption := 'Processados | '+PoeZero(6,i);
                  cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                  cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  inc(i);
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaPlanoContas;
Var
    Linha,
    Coluna,
    mColCodigo,
    mColNome,
    mColConta,
    i: Integer;
begin
      with Dados, dmContab do begin
           if cDeletar.Checked then begin
              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('TRUNCATE TABLE PlanoContas');
              PlanoContas.Execute;
           end;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
           PlanoContas.Open;

           mColCodigo := 0;
           mColNome   := 0;
           mColConta  := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'Codigo' then begin
                  mColCodigo := i;
               end;
               if Grade2.Cells[i, 0] = 'Descricao' then begin
                  mColNome:= i;
               end;
               if Grade2.Cells[i, 0] = 'Conta' then begin
                  mColConta := i;
               end;
           end;

           i := 0;
           for Linha := 1 to Grade2.RowCount-1 do begin
               if Grade2.Cells[mColConta, Linha] <> '' then begin
                  if (not EmpresasCodigo_Reduzido.AsBoolean) then begin
                     if not PlanoContas.Locate('Codigo', Grade2.Cells[mColCodigo, Linha], [loCaseInsensitive]) then begin
                        cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColConta, Linha] + '  '+Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                        PlanoContas.Append;
                        inc(mAdic);
                     end else begin
                        cMsg.Lines.Add('  ALTERADO: ' + Grade2.Cells[mColConta, Linha] + '  '+Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                        PlanoContas.Edit;
                        inc(mModif);
                     end;
                  end else begin
                     cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColConta, Linha] + '  '+Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColNome, Linha]);
                     PlanoContas.Append;
                     inc(mAdic);
                  end;

                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         PlanoContas.FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                         if Coluna = mColConta then begin
                            PlanoContas.FieldByName(Grade2.Cells[Coluna, 0]).Value := RemoveCaracter('.','',Grade2.Cells[mColConta, Linha]);
                         end;
                         if (EmpresasCodigo_Reduzido.AsBoolean) and (PlanoContas.State = dsInsert) then begin
                            tCodigo.SQL.Clear;
                            tCodigo.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0) AS Codigo FROM PlanoContas WHERE SUBSTRING(Conta, 1, 1) = :pConta');
                            tCodigo.ParamByName('pConta').AsString := Copy(PlanoContasConta.Value, 1, 1);
                            tCodigo.Open;
                            if tCodigo.FieldByName('Codigo').AsInteger = 0 then
                               PlanoContasCodigo.Value :=  Copy(PlanoContasConta.Value, 1, 1) + PoeZero(4, tCodigo.FieldByName('Codigo').AsInteger)
                            else
                               PlanoContasCodigo.Value := InttoStr(tCodigo.FieldByName('Codigo').AsInteger+1);
                         end;
                      end;
                  end;

                  PlanoContasLALUR.Value           := false;
                  PlanoContasMostrar_Balanco.Value := false;
                  PlanoContasOrigem.Value          := PoeZero(2, StrtoInt(Copy(PlanoContasConta.AsString,1,1)));
                  PlanoContasEmpresa.Value         := EmpresasCNPJ.AsString;
                  PlanoContasNivel.Value           := NivelConta(PlanoContasConta.AsString, EmpresasMascara_PlanoContas.AsString);
                  PlanoContasGrupo.Value           := Copy(PlanoContasConta.AsString,1,1);
                  if DataLimpa(PlanoContasData_Inclusao.AsString) then
                     PlanoContasData_Inclusao.Value := Date;
                     
                  PlanoContasNivel.Value       := NivelConta(PlanoContasConta.Value, EmpresasMascara_PlanoContas.Value);
                  PlanoContasConta_Grupo.Value := GrupoConta(PlanoContasConta.Value, EmpresasMascara_PlanoContas.Value, PlanoContasNivel.Value);

                  PlanoContas.Post;

                  cImportados.Caption := 'Processados | '+PoeZero(6,i);
                  cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                  cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  inc(i);
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;

           // Ajusta o campo Titulo/Analitica.
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('UPDATE PlanoContas SET Sintetica = CASE WHEN Nivel < (SELECT MAX(Nivel) AS Nivel FROM PlanoContas) THEN 1 ELSE 0 END');
           PlanoContas.Execute;
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
           PlanoContas.Open;

           // Remove os Zeros a direita das contas título.
           Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
           Progresso.Position := 0;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaLancamentos;
Var
    Linha,
    Coluna,
    i,
    mReg,
    mColCtaD,
    mColCtaC,
    mColDC,
    mColVal,
    mColData,
    mLote,
    mCod: Integer;
begin
      if (DataLimpa(cDataIni.Text)) or (DataLimpa(cDataFim.Text)) then begin
         MessageDlg('Erro!'+#13+#13+'Para importação de lançamentos contabeis é necessário informar as datas de inicio e de fim do período.', mtError, [mbOK], 0);
         if DataLimpa(cDataIni.Text) then
            cDataIni.SetFocus
         else
            cDataFim.SetFocus;
         Abort;
      end;

      with dmContab do begin
           if cApagar.Checked then begin
              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE Data BETWEEN :pDataIni AND :pDataFim');
              Lancamentos.ParamByName('pDataIni').AsDate := cDataIni.Date;
              Lancamentos.ParamByName('pDataFim').AsDate := cDataFim.Date;
              Lancamentos.Execute;
           end;
           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE Data BETWEEN :pDataIni AND :pDataFim');
           Lancamentos.ParamByName('pDataIni').AsDate := cDataIni.Date;
           Lancamentos.ParamByName('pDataFim').AsDate := cDataFim.Date;
           Lancamentos.Open;

           tCodigo.Connection := Dados.Banco_Contabilidade;
           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM Lancamentos');
           tCodigo.Open;
           mReg := tCodigo.FieldByName('Registro').AsInteger;

           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM Lancamentos WHERE(YEAR(Data) = :pAno)');
           tCodigo.ParamByName('pAno').AsInteger := YearOf(cDataIni.Date);
           tCodigo.Open;
           mCod := tCodigo.FieldByName('Numero').AsInteger;

           mColCtaD := 0;
           mColCtaC := 0;
           mColDC   := 0;
           mColData := 0;
           mColVal  := 0;
           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'Conta_Debito' then begin
                  mColCtaD := i;
               end;
               if Grade2.Cells[i, 0] = 'Conta_Credito' then begin
                  mColCtaC := i;
               end;
               if Grade2.Cells[i, 0] = 'D/C' then begin
                  mColDC := i;
               end;
               if Grade2.Cells[i, 0] = 'Valor' then begin
                  mColVal := i;
               end;
               if Grade2.Cells[i, 0] = 'Data' then begin
                  mColData := i;
               end;
           end;

           i := 0;
           for Linha := 1 to Grade2.RowCount-1 do begin
               //cMsg.Lines.Add('ADICIONADO: ' + InttoStr(Linha));

               if ((Grade2.Cells[mColCtaD, Linha] <> '') or (Grade2.Cells[mColCtaC, Linha] <> '')) and (Grade2.Cells[mColVal, Linha] <> '') then begin
                  if ( StrtoDate(Trim(RemoveCaracter('"','',Grade2.Cells[mColData, Linha]))) >= cDataIni.Date) and ( StrtoDate(Trim(RemoveCaracter('"', '',Grade2.Cells[mColData, Linha]))) <= cDataFim.Date) then begin
                     Lancamentos.Append;
                                 for Coluna := 0 to Grade2.ColCount-1 do begin
                                     if (Grade2.Cells[Coluna, Linha] <> '') and (Coluna <> mColDC) then begin
                                        Try
                                            Lancamentos.FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                                        Except
                                            cMsg.Lines.Add('Erro de conversão de dados para item : LINHA :'+inttoStr(Linha)+'     CONTEÚDO :'+Grade2.Cells[Coluna, Linha]);
                                        End;
                                     end;
                                 end;

                                 // Gerando o número do lote pela data do lançamento.
                                 tCodigo.SQL.Clear;
                                 tCodigo.SQL.Add('SELECT ISNULL(MAX(Lote), 0)+1 AS Lote FROM Lancamentos WHERE (YEAR(Data) = :pAno) AND (MONTH(Data) = :pMes)');
                                 tCodigo.ParamByName('pAno').AsInteger := YearOf (LancamentosData.Value);
                                 tCodigo.ParamByName('pMes').AsInteger := MonthOf(LancamentosData.Value);
                                 tCodigo.Open;
                                 mLote := tCodigo.FieldByName('Lote').AsInteger;

                                 LancamentosRegistro.Value       := mReg;
                                 LancamentosEmpresa.Value        := Dados.EmpresasCNPJ.Value;
                                 LancamentosNumero.Value         := mCod;
                                 LancamentosLote.Value           := mLote;
                                 LancamentosOrigem.Value         := 'LANÇAMENTO IMPORTADO (EXCEL)';
                                 LancamentosTipo_Documento.Value := 'IE';

                                 // Ajusta a conta quando lançamento de partida simples, apenas uma conta.
                                 if (Trim(LancamentosConta_Debito.AsString) = '')  and (Grade2.Cells[mColDC, Linha] = 'D') then begin
                                    LancamentosConta_Debito.Value := LancamentosConta_Credito.Value;
                                    LancamentosConta_Credito.Clear;
                                 end;
                                 if (Trim(LancamentosConta_Credito.AsString) = '')  and (Grade2.Cells[mColDC, Linha] = 'C') then begin
                                    LancamentosConta_Credito.Value := LancamentosConta_Debito.Value;
                                    LancamentosConta_Debito.Clear;
                                 end;
                     Lancamentos.Post;
                  end;
               end;
               inc(mReg);
               inc(mCod);
               //inc(mLote);

               cImportados.Caption := 'Processados | '+PoeZero(6,i);
               cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
               cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
               inc(i);

               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;
      end;

      Grade2.Options     := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
      tCodigo.Connection := Dados.Banco_Empresas;
end;

procedure TUtilitarios_ImportaEXCEL.SalvaLayout(Tabela: Integer);
Var
    mCol: Integer;
begin
     with LayImp do begin
          sql.Clear;
          sql.Add('delete from LayoutImportacao where Tabela = '+QuotedStr(Tabelas[cTabela.ItemIndex]));
          execute;
          sql.Clear;
          sql.Add('select * from LayoutImportacao');
          sql.Add('where  Tabela = '+QuotedStr(Tabelas[cTabela.ItemIndex]));
          sql.Add('order by Coluna');
          open;
          First;
          for mCol := 0 to Grade.ColCount-1 do begin
              if Trim(Grade.Cells[mCol, 0]) <> '' then begin
                 Append;
                      FieldByName('Tabela').value     := Tabelas[cTabela.ItemIndex];
                      FieldByName('Coluna').value     := PoeZero(2,mCol);
                      FieldByName('Campo').value      := Grade.Cells[mCol, 0];
                      FieldByName('LinhaIni').value   := cLinhaIni.AsInteger;
                      FieldByName('LinhaFim').value   := cLinhaFim.AsInteger;
                      FieldByName('Fornecedor').value := cFornecedor.KeyValue;
                      FieldByName('CodigoPlan').value := cCodigo.Checked;
                      FieldByName('Titulo').value     := cTitulo.Checked;
                      FieldByName('Apagar').value     := cApagar.Checked;
                      FieldByName('DataIni').value    := iif(not DataLimpa(cDataIni.Text) , cDataIni.Date, null);
                      FieldByName('DataFim').value    := iif(not DataLimpa(cDataFim.Text) , cDataFim.Date, null);
                 post;
              end;
          end;
          close;
     end;
end;

procedure TUtilitarios_ImportaEXCEL.blayoutClick(Sender: TObject);
begin
     SalvaLayout(cTabela.ItemIndex);
end;

procedure TUtilitarios_ImportaEXCEL.cApagarClick(Sender: TObject);
begin
      if cApagar.Checked then begin
         if MessageDlg('Atenção!'+#13+#13+'Esta opção apagara todos os lançamentos existentes no período informado.'+#13+#13+'Deseja realmente apaga-los?', mtWarning, [mbYes, mbNo], 0) = mrNo then
            cApagar.Checked := false;
      end;
end;

procedure TUtilitarios_ImportaEXCEL.ImportaPlanoContasECF;
Var
    Linha,
    Coluna,
    mColConta,
    mColNome,
    i: Integer;
begin
      with dmContab do begin
           if cDeletar.Checked then begin
              PlanoContasECF.SQL.Clear;
              PlanoContasECF.SQL.Add('TRUNCATE TABLE PlanoContasECF');
              PlanoContasECF.Execute;
           end;

           PlanoContasECF.SQL.Clear;
           PlanoContasECF.SQL.Add('SELECT * FROM PlanoContasECF');
           PlanoContasECF.Open;

           mColConta := 0;
           mColNome  := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'Conta' then begin
                  mColConta := i;
               end;
               if Grade2.Cells[i, 0] = 'Descricao' then begin
                  mColNome := i;
               end;
           end;

           i := 0;
           for Linha := 1 to Grade2.RowCount-1 do begin
               if Grade2.Cells[mColConta, Linha] <> '' then begin
                  if not PlanoContasECF.Locate('Conta', Grade2.Cells[mColConta, Linha], [loCaseInsensitive]) then begin
                     cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColConta, Linha] + ' - '+Grade2.Cells[mColNome, Linha]);
                     PlanoContasECF.Append;
                     inc(mAdic);
                  end else begin
                     cMsg.Lines.Add('  ALTERADO: ' + Grade2.Cells[mColConta, Linha] + '  '+' - ' + Grade2.Cells[mColNome, Linha]);
                     PlanoContasECF.Edit;
                     inc(mModif);
                  end;

                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         PlanoContasECF.FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                      end;
                  end;
                  if PlanoContasECF.State = dsInsert then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PlanoContasECF');
                     tCodigo.Open;
                     PlanoContasECF.FieldByName('Registro').Value := tCodigo.FieldByName('Registro').AsInteger;
                  end;
                  PlanoContasECFConta.Value := RemoveCaracter('.', '', Grade2.Cells[mColConta, Linha]);

                  PlanoContasECF.Post;

                  cImportados.Caption := 'Processados | '+PoeZero(6,i);
                  cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                  cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  inc(i);
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;

           Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
           Progresso.Position := 0;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaPOItens;
Var
    Linha,
    Coluna,
    mColCod,
    mColPO,
    mLinFim,
    i: Integer;
begin
      with dmDespacho do begin
           POItens.SQL.Clear;
           POITens.SQL.Add('SELECT * FROM POItens');
           POItens.Open;

           mColCod := 0;
           mColPO  := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'Codigo_Mercadoria' then begin
                  mColCod := i;
               end;
               if Grade2.Cells[i, 0] = 'PO' then begin
                  mColPO := i;
               end;
           end;

           i       := 0;
           mLinFim := Grade2.RowCount-1;
           
           for Linha := 1 to mLinFim do begin
               if Grade2.Cells[mColCod, Linha] <> '' then begin
                  cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColCod, Linha] + ' - '+Grade2.Cells[mColPO, Linha]);
                  POItens.Append;
                  inc(mAdic);
                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         POItens.FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                      end;
                  end;
                  if POItens.State = dsInsert then begin
                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM POItens');
                     tCodigo.Open;
                     POItens.FieldByName('Registro').Value := tCodigo.FieldByName('Registro').AsInteger;
                     POItens.FieldByName('PO').Value := 'MO-0277';
                  end;

                  POItens.Post;

                  cImportados.Caption := 'Processados | '+PoeZero(6,i);
                  cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                  cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  inc(i);
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;

           Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
           Progresso.Position := 0;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaControleNavios;
Var
    Linha,
    Coluna,
    mColOrd,
    mColPO,
    mLinFim,
    i: Integer;
begin
     with Dados, ControleNavios do begin
          if cDeletar.Checked then begin
             sql.Clear;
             sql.Add('truncate table ControleNavios');
             execute;
          end;
     
          sql.Clear;
          sql.Add('select * from ControleNavios');
          open;

          mColOrd := 0;
          mColPO  := 0;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'Ordem' then begin
                 mColOrd := i;
              end;
          end;

          i       := 0;
          mLinFim := Grade2.RowCount-1;
          
          for Linha := 1 to mLinFim do begin
              if Grade2.Cells[mColOrd, Linha] <> '' then begin
                 cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColOrd, Linha]);
                 Append;
                 inc(mAdic);
                 for Coluna := 0 to Grade2.ColCount-1 do begin
                     if Grade2.Cells[Coluna, Linha] <> '' then begin
                        FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                     end;
                 end;
                 if State = dsInsert then begin
                    with tCodigo do begin
                         sql.Clear;
                         sql.Add('select isnull(max(Registro), 0)+1 as Registro from ControleNavios');
                         open;
                    end;
                    
                    FieldByName('Registro').Value := tCodigo.FieldByName('Registro').AsInteger;
                 end;

                 Post;

                 cImportados.Caption := 'Processados | '+PoeZero(6,i);
                 cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                 cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                 inc(i);
              end;
              Grade2.Row := Linha;

              Progresso.Position := Progresso.Position + 1;
              cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
              Application.ProcessMessages;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaDI;
Var
    Linha,
    Coluna,
    mColPrc,
    mColDI,
    mLinFim,
    i: Integer;
begin
     with Dados, ProcessosDOC do begin
          if cDeletar.Checked then begin
             sql.Clear;
             sql.Add('truncate table ProcessosDocumentos');
             execute;
          end;
     
          sql.Clear;
          sql.Add('select * from ProcessosDocumentos');
          open;

          mColPrc := 0;
          mColDI  := 0;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'Processo' then begin
                 mColPrc := i;
              end;
              if Grade2.Cells[i, 0] = 'Numero_Declaracao' then begin
                 mColDI:= i;
              end;
          end;

          i       := 0;
          mLinFim := Grade2.RowCount-1;
          
          for Linha := 1 to mLinFim do begin
              if (Grade2.Cells[mColPrc, Linha] <> '') and (Grade2.Cells[mColDI, Linha] <> '') then begin
                 cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColPrc, Linha]);
                 Append;
                       inc(mAdic);
                       for Coluna := 0 to Grade2.ColCount-1 do begin
                           if Grade2.Cells[Coluna, Linha] <> '' then begin
                              if Grade2.Cells[Coluna, 0] = 'Numero_Declaracao' then begin
                                 FieldByName(Grade2.Cells[Coluna, 0]).Value := apenasNumeros(Grade2.Cells[Coluna, Linha]);
                              end else begin
                                 FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                              end;
                           end;
                       end;
                       FieldByName('Tipo').Value       := 'IMPORTAÇÃO';
                       FieldByName('Desativado').Value := false;
                 Post;

                 cImportados.Caption := 'Processados | '+PoeZero(6,i);
                 cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                 cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                 inc(i);
              end;
              Grade2.Row := Linha;

              Progresso.Position := Progresso.Position + 1;
              cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
              Application.ProcessMessages;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaAdicoes;
Var
    Linha,
    Coluna,
    mColAd,
    mColDI,
    mLinFim,
    i: Integer;
begin
     with Dados, Adicoes do begin
          if cDeletar.Checked then begin
             sql.Clear;
             sql.Add('truncate table Adicoes');
             execute;
          end;
     
          sql.Clear;
          sql.Add('select * from Adicoes');
          open;

          mColAd := 0;
          mColDI := 0;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'DI' then begin
                 mColDI := i;
              end;
              if Grade2.Cells[i, 0] = 'Adicao' then begin
                 mColAd:= i;
              end;
          end;

          i       := 0;
          mLinFim := Grade2.RowCount-1;
          
          for Linha := 1 to mLinFim do begin
              if (Grade2.Cells[mColAd, Linha] <> '') and (Grade2.Cells[mColDI, Linha] <> '') then begin
                 cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColAd, Linha]);
                 Append;
                 inc(mAdic);
                 for Coluna := 0 to Grade2.ColCount-1 do begin
                     if Grade2.Cells[Coluna, Linha] <> '' then begin
                        if Grade2.Cells[Coluna, 0] = 'DI' then begin
                           FieldByName(Grade2.Cells[Coluna, 0]).Value := apenasNumeros(Grade2.Cells[Coluna, Linha]);
                        end else begin
                           FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                        end;
                     end;
                 end;
                 if State = dsInsert then begin
                    with tCodigo do begin
                         sql.Clear;
                         sql.Add('select isnull(max(Registro), 0)+1 as Registro from Adicoes');
                         open;
                    end;
                    
                    FieldByName('Registro').Value := tCodigo.FieldByName('Registro').AsInteger;
                 end;
                 Post;

                 cImportados.Caption := 'Processados | '+PoeZero(6,i);
                 cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                 cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                 inc(i);
              end;
              Grade2.Row := Linha;

              Progresso.Position := Progresso.Position + 1;
              cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
              Application.ProcessMessages;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaNFP;
Var
    Linha
   ,Coluna
   ,mColNF
   ,mColChv
   ,mLinFim
   ,mColCNPJ
   ,i: Integer;
begin
     with dmFiscal, Notas do begin
          if cDeletar.Checked then begin
             sql.Clear;
             sql.Add('truncate table NotasFiscais');
             execute;
          end;
     
          sql.Clear;
          sql.Add('select * from NotasFiscais');
          open;

          mColNF   := 0;
          mColChv  := 0;
          mColCNPJ := 0;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'Numero' then begin
                 mColNF := i;
              end;
              if Grade2.Cells[i, 0] = 'NFe_cNF' then begin
                 mColChv := i;
              end;
              if Grade2.Cells[i, 0] = 'Destinatario_CNPJ_CPF' then begin
                 mColCNPJ := i;
              end;
          end;

          i       := 0;
          mLinFim := Grade2.RowCount-1;
          
          for Linha := 1 to mLinFim do begin
              if Grade2.Cells[mColNF, Linha] <> '' then begin
                 cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColNF, Linha]+ '  CHAVE: '+Grade2.Cells[mColChv, Linha]);
                 Append;
                      inc(mAdic);
                      for Coluna := 0 to Grade2.ColCount-1 do begin
                          if Grade2.Cells[Coluna, Linha] <> '' then begin
                             FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                          end;
                      end;
                      fieldbyname('Cancelada').Value    := false;
                      fieldbyname('Nfe_Denegada').Value := false;
                      
                      // Pegando o código do Fornecedor/Cliente.
                      if FieldByName('Saida_Entrada').AsInteger = 0 then begin
                         tTemp.sql.clear;
                         tTemp.sql.add('select Codigo from Fornecedores where CNPJ = '+quotedstr(fieldbyname('Destinatario_CNPJ_CPF').asstring));
                         tTemp.open;
                         if tTemp.RecordCount > 0 then begin
                            FieldByName('Fornecedor_Codigo').value := tTemp.FieldByName('Codigo').AsInteger;
                         end;
                      end else begin
                         tTemp.sql.clear;
                         tTemp.sql.add('select Codigo from Clientes where CNPJ = '+quotedstr(fieldbyname('Destinatario_CNPJ_CPF').asstring));
                         tTemp.open;
                         if tTemp.RecordCount > 0 then begin
                            FieldByName('Cliente_Codigo').value := tTemp.FieldByName('Codigo').AsInteger;
                         end;
                      end;
                 post;

                 cImportados.Caption := 'Processados | '+PoeZero(6,i);
                 cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                 cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                 inc(i);
              end;
              Grade2.Row := Linha;

              Progresso.Position := Progresso.Position + 1;
              cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
              Application.ProcessMessages;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaNFPI;
Var
    Linha,
    Coluna,
    mColNF,
    mColIt,
    mLinFim,
    i: Integer;
begin
     with dmFiscal, NotasItens do begin
          if cDeletar.Checked then begin
             sql.Clear;
             sql.Add('truncate table NotasItens');
             execute;
          end;
     
          sql.Clear;
          sql.Add('select * from NotasItens');
          open;

          mColNF := 0;
          mColIt := 0;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'Numero' then begin
                 mColNF := i;
              end;
              if Grade2.Cells[i, 0] = 'Item' then begin
                 mColIt := i;
              end;
          end;

          i       := 0;
          mLinFim := Grade2.RowCount-1;
          
          for Linha := 1 to mLinFim do begin
              if Grade2.Cells[mColNF, Linha] <> '' then begin
                 cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColNF, Linha]+ '  CHAVE: '+Grade2.Cells[mColIt, Linha]);
                 Append;
                       inc(mAdic);
                       for Coluna := 0 to Grade2.ColCount-1 do begin
                           if Grade2.Cells[Coluna, Linha] <> '' then begin
                              FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                           end;
                       end;
                       // Pegando o código interno do Navio;
                       tTemp.sql.clear;
                       tTemp.sql.add('select Ordem from Cybersoft_Cadastros.dbo.ControleNavios where Ordem = :pOrd');
                       tTemp.parambyname('pOrd').AsInteger := fieldbyname('Ordem').AsInteger;
                       tTemp.open;
                       if tTemp.RecordCount > 0 then begin
                          FieldByName('Navio').value := tTemp.FieldByName('Ordem').AsInteger;
                       end;
                 Post;

                 cImportados.Caption := 'Processados | '+PoeZero(6,i);
                 cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                 cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                 inc(i);
              end;
              Grade2.Row := Linha;

              Progresso.Position := Progresso.Position + 1;
              cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
              Application.ProcessMessages;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaNFT;
Var
    Linha,
    Coluna,
    mColNF,
    mColChv,
    mLinFim,
    i: Integer;
begin
     with dmFiscal, NotasTerceiros do begin
          if cDeletar.Checked then begin
             sql.Clear;
             sql.Add('truncate table NotasTerceiros');
             execute;
          end;
     
          sql.Clear;
          sql.Add('select * from NotasTerceiros');
          open;

          mColNF  := 0;
          mColChv := 0;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'Nota' then begin
                 mColNF := i;
              end;
              if Grade2.Cells[i, 0] = 'NFe_cNF' then begin
                 mColChv := i;
              end;
          end;

          i       := 0;
          mLinFim := Grade2.RowCount-1;
          
          for Linha := 1 to mLinFim do begin
              if Grade2.Cells[mColNF, Linha] <> '' then begin
                 cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColNF, Linha]+ '  CHAVE: '+Grade2.Cells[mColChv, Linha]);
                 Append;
                 inc(mAdic);
                 for Coluna := 0 to Grade2.ColCount-1 do begin
                     if Grade2.Cells[Coluna, Linha] <> '' then begin
                        FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                     end;
                 end;
                 Post;

                 cImportados.Caption := 'Processados | '+PoeZero(6,i);
                 cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                 cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                 inc(i);
              end;
              Grade2.Row := Linha;

              Progresso.Position := Progresso.Position + 1;
              cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
              Application.ProcessMessages;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaNFTI;
Var
    Linha,
    Coluna,
    mColNF,
    mColIt,
    mLinFim,
    i: Integer;
begin
     with dmFiscal, NotasTerceirosItens do begin
          if cDeletar.Checked then begin
             sql.Clear;
             sql.Add('truncate table NotasTerceirosItens');
             execute;
          end;

          sql.Clear;
          sql.Add('select * from NotasTerceirosItens');
          open;

          mColNF := 0;
          mColIt := 0;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'Numero' then begin
                 mColNF := i;
              end;
              if Grade2.Cells[i, 0] = 'Item' then begin
                 mColIt := i;
              end;
          end;

          i       := 0;
          mLinFim := Grade2.RowCount-1;

          for Linha := 1 to mLinFim do begin
              if Grade2.Cells[mColNF, Linha] <> '' then begin
                 cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColNF, Linha]+ '  CHAVE: '+Grade2.Cells[mColIt, Linha]);
                 Append;
                 inc(mAdic);
                 for Coluna := 0 to Grade2.ColCount-1 do begin
                     if Grade2.Cells[Coluna, Linha] <> '' then begin
                        FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                     end;
                 end;
                 Post;

                 cImportados.Caption := 'Processados | '+PoeZero(6,i);
                 cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                 cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                 inc(i);
              end;
              Grade2.Row := Linha;

              Progresso.Position := Progresso.Position + 1;
              cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
              Application.ProcessMessages;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaBL;
Var
    Linha,
    Coluna,
    mColBL,
    mLinFim,
    i: Integer;
begin
     with Dados, ControleNaviosBL do begin
          if cDeletar.Checked then begin
             sql.Clear;
             sql.Add('truncate table ControleNaviosBL');
             execute;
          end;

          sql.Clear;
          sql.Add('select * from ControleNaviosBL');
          open;

          mColBL := 0;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'BL' then begin
                 mColBL := i;
              end;
          end;

          i       := 0;
          mLinFim := Grade2.RowCount-1;

          for Linha := 1 to mLinFim do begin
              if Grade2.Cells[mColBL, Linha] <> '' then begin
                 cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColBL, Linha]);
                 Append;
                       inc(mAdic);
                       for Coluna := 0 to Grade2.ColCount-1 do begin
                           if Grade2.Cells[Coluna, Linha] <> '' then begin
                              FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                           end;
                       end;
                       with tCodigo do begin
                            sql.Clear;
                            sql.Add('select isnull(max(Registro),0)+1 as Registro from ControleNaviosBL');
                            open;
                       end;
                       fieldByName('Registro').Value := tCodigo.FieldByName('Registro').AsInteger;
                 Post;

                 cImportados.Caption := 'Processados | '+PoeZero(6,i);
                 cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                 cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                 inc(i);
              end;
              Grade2.Row := Linha;

              Progresso.Position := Progresso.Position + 1;
              cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
              Application.ProcessMessages;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.cLinhaIniChange(Sender: TObject);
begin
     if cLinhaFim.Value < cLinhaIni.Value then cLinhaFim.value := cLinhaIni.value;
end;

procedure TUtilitarios_ImportaEXCEL.cLinhaFimChange(Sender: TObject);
begin
     if cLinhaFim.Value < cLinhaIni.Value then cLinhaFim.value := cLinhaIni.value;
end;

procedure TUtilitarios_ImportaEXCEL.cTabelaChange(Sender: TObject);
var
   NovoItem: TMenuItem;
   Lista: TListBox;
   i, mMn, mQuebra: Integer;
begin
     cCodigo.Checked       := false;
     cCodigo.Enabled       := true;
     Grade.PopupMenu       := MenuCampos2;
     cFornecedor.Enabled   := cTabela.ItemIndex in[2, 8];
     StaticText2.Enabled   := cFornecedor.Enabled;
     cDataIni.Enabled      := cTabela.ItemIndex = 6;
     cDataFim.Enabled      := cDataIni.Enabled;
     StaticText3.Enabled   := cDataIni.Enabled;
     cApagar.Enabled       := cDataIni.Enabled;
     MenuCampos2           := TPopUpMenu.Create(Utilitarios_ImportaEXCEL);
     MenuCampos2.OwnerDraw := false;
     NovoItem              := TMenuItem.Create(MenuCampos2);
     NovoItem.Caption      := '-';

     MenuCampos2.Items.Insert(0, NovoItem);
     NovoItem         := TMenuItem.Create(MenuCampos2);
     NovoItem.Caption := 'Limpar';
     MenuCampos2.Items.Insert(0, NovoItem);
     MenuCampos2.Items.Items[0].OnClick := CapturaClick;

     Grade.PopupMenu := MenuCampos2;

     Lista         := TListBox.Create(Utilitarios_ImportaEXCEL);
     Lista.Visible := false;
     Lista.Parent  := Utilitarios_ImportaEXCEL;
     Lista.Sorted  := true;
     Lista.Height  := 400;
     mQuebra       := 0;

     // Clientes.
     If cTabela.ItemIndex = 0 then begin
        For i := 0 to Dados.Clientes.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('Clientes', '', Dados.Clientes.Fields[i].Name));
        End;
     End;
     // Fornecedores.
     If cTabela.ItemIndex = 1 then begin
        For i := 0 to Dados.Fornecedores.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('Fornecedores', '', Dados.Fornecedores.Fields[i].Name));
        End;
     End;
     // Produtos.
     If cTabela.ItemIndex = 2 then begin
        For i := 0 to Dados.Produtos.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('Produtos', '', Dados.Produtos.Fields[i].Name));
        End;
     End;
     // Bancos.
     If cTabela.ItemIndex = 3 then begin
        For i := 0 to Dados.Bancos.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('Bancos', '', Dados.Bancos.Fields[i].Name));
        End;
     End;
     // Centro de Custo.
     If cTabela.ItemIndex = 4 then begin
        For i := 0 to Dados.CentroCusto.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('CentroCusto', '', Dados.CentroCusto.Fields[i].Name));
        End;
     End;
     // Plano de Contas.
     If cTabela.ItemIndex = 5 then begin
        For i := 0 to dmContab.PlanoContas.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('PlanoContas', '', dmContab.PlanoContas.Fields[i].Name));
        End;
     End;
     // Lançamentos Contabeis.
     If cTabela.ItemIndex = 6 then begin
        For i := 0 to dmContab.Lancamentos.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('Lancamentos', '', dmContab.Lancamentos.Fields[i].Name));
        End;
        Lista.Items.Add('D/C');
     End;
     // Plano de Contas ECF.
     If cTabela.ItemIndex = 7 then begin
        For i := 0 to dmContab.PlanoContasECF.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('PlanoContasECF', '', dmContab.PlanoContasECF.Fields[i].Name));
        End;
     End;
     // Purchase Orders (Itens).
     If cTabela.ItemIndex = 8 then begin
        For i := 0 to dmDespacho.POItens.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('POItens', '', dmDespacho.POItens.Fields[i].Name));
        End;
     End;
     // Saldo de Abertura do Estoque.
     cVinculo.Enabled :=  cTabela.ItemIndex = 9;
     If cTabela.ItemIndex = 9 then begin
        For i := 0 to dmFiscal.ProdutosTransferencia.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('ProdutosTransferencia', '', dmFiscal.ProdutosTransferencia.Fields[i].Name));
        End;
     End;
     // Histórico Padrão.
     If cTabela.ItemIndex = 10 then begin
        For i := 0 to dmContab.Historicos.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('Historicos', '', dmContab.Historicos.Fields[i].Name));
        End;
     End;
     // Modalidades de pagamento.
     If cTabela.ItemIndex = 11 then begin
        For i := 0 to Dados.ModalidadesPgto.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('ModalidadesPgto', '', Dados.ModalidadesPgto.Fields[i].Name));
        End;
     End;
     // Titulos Financeiros.
     If cTabela.ItemIndex = 12 then begin
        For i := 0 to Dados.PagarReceber.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('PagarReceber', '', Dados.PagarReceber.Fields[i].Name));
        End;
        Lista.Items.Add('Data_Baixa_*');
     End;
     // Pedidos de Representantes - Pedidos (E-Commerce).
     if cTabela.ItemIndex = 13 then begin
        // Pedidos.
        for i := 0 to pred(Dados.PedidosRepresentantes.FieldCount) do begin
            Lista.Items.Add(RemoveCaracter('PedidosRepresentantes', '', Dados.PedidosRepresentantes.Fields[i].Name));
        end;
        Lista.Items.Add('-');
        // Itens.
        for i := 0 to pred(Dados.PedidosRepresentantesItens.FieldCount) do begin
            Lista.Items.Add(RemoveCaracter('PedidosRepresentantesItens', '', Dados.PedidosRepresentantesItens.Fields[i].Name));
        end;
     end;
     // Classificação Financeira.
     If cTabela.ItemIndex = 14 then begin
        For i := 0 to Dados.ClassificacaoFinanceira.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('ClassificacaoFinanceira', '', Dados.ClassificacaoFinanceira.Fields[i].Name));
        End;
        cCodigo.Checked := true;
        cCodigo.Enabled := false;
     End;
     // Controle de Navios.
     if cTabela.ItemIndex = 15 then begin
        for i := 0 to Dados.ControleNavios.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('ControleNavios', '', Dados.ControleNavios.Fields[i].Name));
        end;
        cCodigo.Checked := false;
        cCodigo.Enabled := true;
     end;
     // DI.
     if cTabela.ItemIndex = 16 then begin
        for i := 0 to Dados.ProcessosDOC.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('ProcessosDOC', '', Dados.ProcessosDOC.Fields[i].Name));
        end;
        cCodigo.Checked := true;
        cCodigo.Enabled := true;
     end;
     // Adições.
     if cTabela.ItemIndex = 17 then begin
        for i := 0 to Dados.Adicoes.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('Adicoes', '', Dados.Adicoes.Fields[i].Name));
        end;
        cCodigo.Checked := true;
        cCodigo.Enabled := true;
     end;
     // Notas Fiscais Propria (Capa).
     if cTabela.ItemIndex = 18 then begin
        for i := 0 to dmFiscal.Notas.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('Notas', '', dmFiscal.Notas.Fields[i].Name));
        end;
        cCodigo.Checked := true;
        cCodigo.Enabled := true;
     end;
     // Notas Fiscais Propria (Itens).
     if cTabela.ItemIndex = 19 then begin
        for i := 0 to dmFiscal.NotasItens.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('NotasItens', '', dmFiscal.NotasItens.Fields[i].Name));
        end;
        cCodigo.Checked := true;
        cCodigo.Enabled := true;
     end;
     // Notas Fiscais Terceiros (Capa).
     if cTabela.ItemIndex = 20 then begin
        for i := 0 to dmFiscal.NotasTerceiros.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('NotasTerceiros', '', dmFiscal.NotasTerceiros.Fields[i].Name));
        end;
        cCodigo.Checked := true;
        cCodigo.Enabled := true;
     end;
     // Notas Fiscais Terceiros (Itens).
     if cTabela.ItemIndex = 21 then begin
        for i := 0 to dmFiscal.NotasTerceirosItens.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('NotasTerceirosItens', '', dmFiscal.NotasTerceirosItens.Fields[i].Name));
        end;
        cCodigo.Checked := true;
        cCodigo.Enabled := true;
     end;
     // Controle de Navios - BL.
     if cTabela.ItemIndex = 22 then begin
        for i := 0 to Dados.ControleNaviosBL.FieldCount -1 do begin
            Lista.Items.Add(RemoveCaracter('ControleNaviosBL', '', Dados.ControleNaviosBL.Fields[i].Name));
        end;
        cCodigo.Checked := true;
        cCodigo.Enabled := true;
     end;
     for i := 0 to pred(Lista.Count) do begin
         NovoItem             := TMenuItem.Create(MenuCampos2);
         NovoItem.Caption     := Lista.Items[i];
         NovoItem.AutoCheck   := true;
         NovoItem.Checked     := false;
         NovoItem.AutoHotkeys := maParent;

         MenuCampos2.Items.Insert(i+2, NovoItem);
         MenuCampos2.Items.Items[i+2].OnClick := CapturaClick;

         Inc(mQuebra);
         if mQuebra = 25 then begin
            mQuebra := 0;
            NovoItem.Break := mbBreak;
         end;
     end;
     with LayImp do begin
          SQL.Clear;
          SQL.Add('select * from LayoutImportacao');
          SQL.Add('where  Tabela = '+QuotedStr(Tabelas[cTabela.ItemIndex]));
          SQL.Add('order  by Coluna');
          //sql.SaveToFile('c:\temp\Importa_Excel.sql');
          Open;
          First;
     end;
     if LayImp.RecordCount > 0 then begin
        cLinhaIni.Value      := LayImp.FieldByName('LinhaIni').AsInteger;
        cLinhaFim.Value      := LayImp.FieldByName('LinhaFim').AsInteger;
        cFornecedor.KeyValue := LayImp.FieldByName('Fornecedor').AsInteger;
        cCodigo.Checked      := LayImp.FieldByName('CodigoPlan').AsBoolean;
        cTitulo.Checked      := LayImp.FieldByName('Titulo').AsBoolean;
        cApagar.Checked      := LayImp.FieldByName('Apagar').AsBoolean;
        cDataIni.Text        := LayImp.FieldByName('DataIni').AsString;
        cDataFim.Text        := LayImp.FieldByName('DataFim').AsString;
     end;

     AutoAjusteCol(Grade);
     Panel2.Enabled := true;
end;

procedure TUtilitarios_ImportaEXCEL.cDeletarClick(Sender: TObject);
begin
     if cDeletar.Checked then begin
        MessageDlg('Atenção!'+#13+#13+'isso ira apagar todos os dados da tabela de destino,', mtWarning, [mbOK], 0);
     end;
end;

procedure TUtilitarios_ImportaEXCEL.ImportaSaldo;
Var
    Linha
   ,Coluna
   ,mColCodigo
   ,mColQtde
   ,i: Integer;
begin
      with Dados, dmFiscal do begin
           with ProdutosTransferencia do begin
                if cDeletar.Checked then begin
                   sql.Clear;
                   sql.Add('delete from ProdutosTransferencia where Motivo = ''A'' ');
                   execute;
                end;
                sql.Clear;
                sql.Add('select * from ProdutosTransferencia');
                open;
           end;
           mColCodigo := 0;
           for i := 0 to Grade2.ColCount-1 do begin
               if Trim(Grade2.Cells[i, 0]) = 'Produto_Entrada' then begin
                  mColCodigo := i;
               end;
           end;
           mColQtde := 0;
           for i := 0 to Grade2.ColCount-1 do begin
               if Trim(Grade2.Cells[i, 0]) = 'Quantidade_Entrada' then begin
                  mColQtde := i;
               end;
           end;
           
           i := 0;
           for Linha := cLinhaIni.AsInteger to Grade2.RowCount-1 do begin
               if Grade2.Cells[mColCodigo, Linha] <> '' then begin
                  if strtoint(Grade2.Cells[mColQtde, Linha]) <> 0 then begin
                     cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColCodigo, Linha]);

                     tCodigo.SQL.Clear;
                     tCodigo.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosTransferencia');
                     tCodigo.Open;

                     Produtos.SQL.Clear;
                     if cVinculo.ItemIndex = 0 then begin
                        Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo_Fabricante = :pCod');
                     end else begin
                        Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo_SKU = :pCod');
                     end;
                     Produtos.ParamByName('pCod').AsString := Grade2.Cells[mColCodigo, Linha];
                     Produtos.Open;

                     if Produtos.RecordCount > 0 then begin
                        ProdutosTransferencia.Append;
                                              ProdutosTransferencia.FieldByName('Registro').Value        := tCodigo.FieldByName('Registro').AsInteger;
                                              ProdutosTransferencia.FieldByName('Motivo').Value          := 'A';
                                              ProdutosTransferencia.FieldByName('Inventario').Value      := true;
                                              ProdutosTransferencia.FieldByName('Estoque').Value         := true;
                                              ProdutosTransferencia.FieldByName('Produto_Entrada').Value := Produtos.FieldByName('Codigo').Value;

                                              for Coluna := 0 to Grade2.ColCount-1 do begin
                                                  if Grade2.Cells[Coluna, Linha] <> '' then begin
                                                     if Coluna <> mColCodigo then begin
                                                        ProdutosTransferencia.FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                                                     end;
                                                  end;
                                              end;
                                              ProdutosTransferencia.FieldByName('Quantidade').Value := ProdutosTransferencia.FieldByName('Quantidade_Entrada').Value;
                        ProdutosTransferencia.Post;
                        
                        cAdic.Caption  := 'Adicionados | '+PoeZero(6,mAdic);
                        cModif.Caption := 'Modificados | '+PoeZero(6,mModif);
                     end;
                     
                     cImportados.Caption := 'Processados | '+PoeZero(6,i);
                     inc(i);
                  end;
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption      := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaHistorico;
Var
    Linha,
    Coluna,
    mColCodigo,
    mColDescricao,
    i: Integer;
begin
      with Dados, dmContab do begin
           if cDeletar.Checked then begin
              Historicos.SQL.Clear;
              Historicos.SQL.Add('TRUNCATE TABLE HistoricoPadrao');
              Historicos.Execute;
           end;

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao');
           Historicos.Open;

           mColCodigo    := 0;
           mColDescricao := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'Codigo' then begin
                  mColCodigo := i;
               end;
               if Grade2.Cells[i, 0] = 'Descricao' then begin
                  mColDescricao := i;
               end;
           end;

           i := 0;
           for Linha := 1 to Grade2.RowCount-1 do begin
               if Grade2.Cells[mColCodigo, Linha] <> '' then begin
                  if not Historicos.Locate('Codigo', Grade2.Cells[mColCodigo, Linha], [loCaseInsensitive]) then begin
                     cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColCodigo, Linha] + '  '+Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColDescricao, Linha]);
                     Historicos.Append;
                     inc(mAdic);
                  end else begin
                     cMsg.Lines.Add('  ALTERADO: ' + Grade2.Cells[mColCodigo, Linha] + '  '+Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColDescricao, Linha]);
                     Historicos.Edit;
                     inc(mModif);
                  end;

                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         Historicos.FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                         if not cCodigo.checked then begin
                            tCodigo.SQL.Clear;
                            tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM HistoricoPadrao');
                            tCodigo.Open;
                            HistoricosCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger;
                         end;   
                      end;
                  end;

                  Historicos.Post;

                  cImportados.Caption := 'Processados | '+PoeZero(6,i);
                  cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                  cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  inc(i);
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;

           Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
           Progresso.Position := 0;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaModalidades;
Var
    Linha,
    Coluna,
    mColCodigo,
    mColDescricao,
    i: Integer;
begin
      with Dados, dmContab do begin
           if cDeletar.Checked then begin
              with ModalidadesPgto do begin
                   sql.clear;
                   sql.add('truncate table ModalidadesPagamento');
                   Execute;
                   
                   sql.Clear;
                   sql.Add('select * from ModalidadesPagamento');
                   open;
              end;
           end;

           mColCodigo    := 0;
           mColDescricao := 0;

           for i := 0 to Grade2.ColCount-1 do begin
               if Grade2.Cells[i, 0] = 'Codigo' then begin
                  mColCodigo := i;
               end;
               if Grade2.Cells[i, 0] = 'Descricao' then begin
                  mColDescricao := i;
               end;
           end;

           i := 0;
           for Linha := 1 to Grade2.RowCount-1 do begin
               if Grade2.Cells[mColCodigo, Linha] <> '' then begin
                  if not ModalidadesPgto.Locate('Codigo', Grade2.Cells[mColCodigo, Linha], [loCaseInsensitive]) then begin
                     cMsg.Lines.Add('ADICIONADO: ' + Grade2.Cells[mColCodigo, Linha] + '  '+Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColDescricao, Linha]);
                     ModalidadesPgto.Append;
                     inc(mAdic);
                  end else begin
                     cMsg.Lines.Add('  ALTERADO: ' + Grade2.Cells[mColCodigo, Linha] + '  '+Grade2.Cells[mColCodigo, Linha] + ' - ' + Grade2.Cells[mColDescricao, Linha]);
                     ModalidadesPgto.Edit;
                     inc(mModif);
                  end;

                  for Coluna := 0 to Grade2.ColCount-1 do begin
                      if Grade2.Cells[Coluna, Linha] <> '' then begin
                         ModalidadesPgto.FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                         if not cCodigo.checked then begin
                            tCodigo.SQL.Clear;
                            tCodigo.SQL.Add('select isnull(max(Codigo), 0)+1 AS Codigo from ModalidadesPagamento');
                            tCodigo.Open;
                            ModalidadesPgtoCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger;
                         end;   
                      end;
                  end;

                  ModalidadesPgto.Post;

                  cImportados.Caption := 'Processados | '+PoeZero(6,i);
                  cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                  cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                  inc(i);
               end;
               Grade2.Row := Linha;

               Progresso.Position := Progresso.Position + 1;
               cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
               Application.ProcessMessages;
           end;

           Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
           Progresso.Position := 0;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaFinanceiro;
Var
    Linha,
    Coluna,
    mColCodigo,
    mColDescricao,
    mColBx,
    i: Integer;
    mBaixa:boolean;
    mDataBx:string;
begin
     mColBX := 0;
     mBaixa := false;
     with Dados, dmContab do begin
          PagarReceber.DisableControls;
          PagarReceberBaixas.DisableControls;
          if cDeletar.Checked then begin
             with tTemp do begin
                  sql.clear;
                  sql.add('truncate table PagarReceber');
                  Execute;
             end;
             with tTemp do begin
                  sql.clear;
                  sql.add('truncate table PagarReceberBaixas');
                  Execute;
             end;
          end;

          for i := 0 to Grade2.ColCount-1 do begin
              if Grade2.Cells[i, 0] = 'Data_Baixa_*' then begin
                 mColBx := i;
              end;
          end;

          i := 0;
          with PagarReceber do begin
               sql.Clear;
               sql.Add('select * from PagarReceber where Numero = (select max(numero) from PagarReceber)');
               open;
               for Linha := 1 to pred(Grade2.RowCount) do begin
                   Append;
                        for Coluna := 0 to Pred(Grade2.ColCount) do begin
                            if (Grade2.Cells[Coluna, Linha] <> '') and (Coluna <> mColBx) then begin
                               tCodigo.SQL.Clear;
                               tCodigo.SQL.Add('select isnull(max(Numero), 0)+1 AS Numero from PagarReceber');
                               tCodigo.Open;
                               FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                               FieldByName('Numero').Value                := tCodigo.FieldByName('Numero').AsInteger;

                               // Verifica se existe valor de baixa pra gerar o lançamento de baixa.
                               if Grade2.Cells[Coluna, 0] = 'Valor_Baixado' then begin
                                  if FieldByName(Grade2.Cells[Coluna, 0]).ascurrency <> 0 then begin
                                     mBaixa  := true;
                                     mDataBx := Grade2.Cells[mColBx, Linha];
                                  end;
                               end;
                            end;
                        end;
                   if FieldByName('Numero').asinteger > 0 then begin
                      Post;
                      inc(mAdic);
                   end else begin
                      cancel;
                   end;
                   if mBaixa then begin
                      with Bancos do begin
                           sql.Clear;
                           sql.Add('select * from Bancos where Codigo = '+PagarReceber.FieldByName('Banco').asstring);
                           open;
                      end;
                      with tTemp do begin
                           sql.Clear;
                           sql.Add('select Registro = isnull(max(Registro), 0)+1 from PagarReceberBaixas');
                           open;
                      end;
                      with PagarReceberBaixas do begin
                           sql.Clear;
                           sql.Add('select top 1 * from PagarReceberBaixas');
                           open;
                           Append;
                                fieldbyname('Registro').value            := tTemp.FieldByName('Registro').AsInteger;
                                fieldbyname('Numero').value              := PagarReceber.FieldByName('Numero').AsInteger;
                                fieldbyname('Data').value                := mDataBx;
                                fieldbyname('Tipo').value                := PagarReceber.FieldByName('Tipo').asstring;
                                fieldbyname('Valor').value               := PagarReceber.FieldByName('Valor_Total').ascurrency;
                                fieldbyname('Banco').value               := PagarReceber.FieldByName('Banco').asinteger;
                                fieldbyname('Forma_Tipo').value          := PagarReceber.FieldByName('Forma_Tipo').asstring;
                                fieldbyname('Forma_TipoDocumento').value := PagarReceber.FieldByName('Numero_FormaTipo').asstring;
                                fieldbyname('Observacao').value          := 'BAIXA DE TITULO IMPORTADO.';
                                fieldbyname('Multa').value               := 0;
                                fieldbyname('Juros').value               := 0;
                                fieldbyname('Desconto').value            := 0;
                                fieldbyname('Banco_Conta').value         := Bancos.FieldByName('Conta').AsString;
                                fieldbyname('Conciliado').value          := false;
                                fieldbyname('Selecionado').value         := false;
                           post;
                      end;
                   end;

                   cImportados.Caption := 'Processados | '+PoeZero(6,i);
                   cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                   cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                   inc(i);
                   Grade2.Row := Linha;

                   Progresso.Position := Progresso.Position + 1;
                   cPerc.Caption := InttoStr( Round((Progresso.Position/Progresso.Max) * 100 ))+'%';
                   Application.ProcessMessages;
               end;
          end;

          Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
          Progresso.Position := 0;

          PagarReceber.EnableControls;
          PagarReceberBaixas.EnableControls;
     end;

     Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;

procedure TUtilitarios_ImportaEXCEL.ImportaClassificacao;
Var
    Linha,
    Coluna,
    mColCodigo,
    mColDescricao,
    i: Integer;
begin
      with Dados do begin
           if cDeletar.Checked then begin
              with tTemp do begin
                   sql.clear;
                   if not ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                      sql.add('truncate table ClassificacaoFinanceira');
                   end else begin
                      sql.add('truncate table Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
                   end;
                   Execute;
              end;
           end;

           i := 0;
           with ClassificacaoFinanceira do begin
                sql.Clear;
                sql.Add('select * from ClassificacaoFinanceira where Codigo = (select max(Codigo) from ClassificacaoFinanceira)');
                open;
                for Linha := 1 to pred(Grade2.RowCount) do begin
                    Append;
                         for Coluna := 0 to Pred(Grade2.ColCount) do begin
                             if Grade2.Cells[Coluna, Linha] <> '' then begin
                                FieldByName(Grade2.Cells[Coluna, 0]).Value := Grade2.Cells[Coluna, Linha];
                             end;
                         end;
                    if trim(FieldByName('Codigo').asstring) <> '' then begin
                       Post;
                       inc(mAdic);
                    end else begin
                       cancel;
                    end;

                    cImportados.Caption := 'Processados | '+PoeZero(6,i);
                    cAdic.Caption       := 'Adicionados | '+PoeZero(6,mAdic);
                    cModif.Caption      := 'Modificados | '+PoeZero(6,mModif);
                    inc(i);
                    Grade2.Row := Linha;

                    Progresso.Position := Progresso.Position + 1;
                    cPerc.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
                    Application.ProcessMessages;
                end;
           end;

           Progresso.Max      := Grade2.RowCount-cLinhaIni.AsInteger;
           Progresso.Position := 0;
      end;

      Grade2.Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor, goThumbTracking];
end;



end.



