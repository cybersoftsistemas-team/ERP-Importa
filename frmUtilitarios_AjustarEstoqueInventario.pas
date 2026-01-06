unit frmUtilitarios_AjustarEstoqueInventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Grids, DBGrids, Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, RXDBCtrl,
  Math, Funcoes, MemDS, system.UITypes, RxLookup;

type
  TUtilitarios_AjustarEstoqueInventario = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    tNotas: TMSQuery;
    tItens: TMSQuery;
    dstNotas: TDataSource;
    dstItens: TDataSource;
    tNotasNumero: TIntegerField;
    tNotasData_Emissao: TDateTimeField;
    tNotasDestinatario_Nome: TStringField;
    tNotasTipo: TStringField;
    RxDBGrid1: TDBGrid;
    bPesquisar: TButton;
    GroupBox1: TGroupBox;
    cInv: TCheckBox;
    cEst: TCheckBox;
    cPC: TCheckBox;
    GradeItens: TDBGrid;
    tNotasTipo_Nota: TSmallintField;
    tNotasApuracao_PISCOFINS: TBooleanField;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    StaticText9: TStaticText;
    tNotasProcesso: TStringField;
    cProcessoOrig: TEdit;
    StaticText1: TStaticText;
    cProcessoDest: TEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tNotasNatureza_Codigo: TStringField;
    StaticText2: TStaticText;
    cProdutoOrig: TEdit;
    StaticText3: TStaticText;
    cProdutoDest: TEdit;
    cFinalidadeNF: TRadioGroup;
    cFinalidadeTN: TRadioGroup;
    Panel2: TPanel;
    StaticText5: TStaticText;
    cSenha: TEdit;
    bInventario: TButton;
    bPISCOFINS: TButton;
    bAplicar: TButton;
    tNotasNFE_cNF: TStringField;
    tNotasValor_TotalNota: TCurrencyField;
    tItensCodigo_Mercadoria: TIntegerField;
    tItensDescricao_Mercadoria: TStringField;
    tItensMovimenta_Estoque: TBooleanField;
    tItensMovimenta_Inventario: TBooleanField;
    tItensApuracao_PISCOFINS: TBooleanField;
    tItensProcesso: TStringField;
    tItensValor_Inventario: TFloatField;
    tItensFinalidade_Mercadoria: TSmallintField;
    tItensAliquota_PIS: TFloatField;
    tItensValor_PIS: TFloatField;
    tItensAliquota_COFINS: TFloatField;
    tItensValor_COFINS: TFloatField;
    tNotasValor_PIS: TCurrencyField;
    tNotasValor_COFINS: TCurrencyField;
    tItensCSTPIS: TStringField;
    tItensCSTCOFINS: TStringField;
    StaticText6: TStaticText;
    cCSTOrig: TEdit;
    cCSTDest: TEdit;
    StaticText7: TStaticText;
    bItem: TButton;
    tItensItem: TSmallintField;
    tItensQuantidade: TFloatField;
    cDev: TCheckBox;
    tItensDevolucao: TBooleanField;
    cForaPrazo: TCheckBox;
    tNotasCancelada_ForaPrazo: TBooleanField;
    StaticText51: TStaticText;
    cIncentivo: TRxDBLookupCombo;
    tNotasIncentivo_Fiscal: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tNotasAfterScroll(DataSet: TDataSet);
    procedure GradeItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bPesquisarClick(Sender: TObject);
    procedure bAplicarClick(Sender: TObject);
    procedure bInventarioClick(Sender: TObject);
    procedure bPISCOFINSClick(Sender: TObject);
    procedure cSenhaChange(Sender: TObject);
    Function  ChecaSenha: Boolean;
    procedure FiltraNotas(Nota: Integer);
    procedure FiltraItens;
    procedure GradeItensDblClick(Sender: TObject);
    procedure bItemClick(Sender: TObject);
    procedure cForaPrazoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNF: Integer;
    mDT: TDate;
  end;

var
  Utilitarios_AjustarEstoqueInventario: TUtilitarios_AjustarEstoqueInventario;

implementation

uses frmDMFiscal, frmDados, frmMenu_Principal, frmUtilitarios_AjustarItem, frmJanela_Processamento;

{$R *.dfm}

procedure TUtilitarios_AjustarEstoqueInventario.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_AjustarEstoqueInventario.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_AjustarEstoqueInventario.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     dmFiscal.NotasItens.Close;
     dmFiscal.Notas.Close;
     dmFiscal.ApuracaoPISCOFINS.Close;
     tItens.Close;
     tNotas.Close;
     FecharTabelas(Dados, dmFiscal, nil, nil);
     Utilitarios_AjustarEstoqueInventario.Release;
     Utilitarios_AjustarEstoqueInventario := nil;
end;

procedure TUtilitarios_AjustarEstoqueInventario.FormShow(Sender: TObject);
begin
      with Dados, IncentivosFiscais do begin
           sql.Clear;
           sql.Add('select * from IncentivosFiscais order by Nome');
           open;
      end;
      FiltraNotas(0); 
      FiltraItens;

      cProcessoDest.Clear;
      cProdutoOrig.Clear;
      cProdutoDest.Clear;
      cCSTOrig.Clear;
      cCSTDest.Clear;
end;

procedure TUtilitarios_AjustarEstoqueInventario.tNotasAfterScroll(DataSet: TDataSet);
begin
//      GradeItens.DisableScroll;
      FiltraItens;

      With Dados do begin
           TipoNota.SQL.Clear;
           TipoNota.SQl.Add('SELECT * FROM TipoNota WHERE Codigo = :pTipo');
           TipoNota.ParamByName('pTipo').AsInteger := tNotas.FieldByName('Tipo_Nota').AsInteger;
           TipoNota.Open;
           
           IncentivosFiscais.Locate('Nome', tNotas.FieldByName('Incentivo_Fiscal').asstring, [loCaseInsensitive]);

           cEst.Checked            := TipoNota.FieldByName('Movimenta_Estoque').AsBoolean;
           cInv.Checked            := TipoNota.FieldByName('Movimenta_Inventario').AsBoolean;
           cDev.Checked            := TipoNota.FieldByName('Finalidade_Mercadoria').AsInteger = 2;
           cPC.Checked             := tNotas.FieldByName('Apuracao_PISCOFINS').AsBoolean;
           cProcessoOrig.Text      := tNotas.FieldByName('Processo').AsString;
           cForaPrazo.Checked      := tNotas.FieldByName('Cancelada_ForaPrazo').asboolean;
           cFinalidadeTN.ItemIndex := TipoNota.FieldByName('Finalidade_Mercadoria').AsInteger;
           cFinalidadeNF.ItemIndex := tItens.FieldByName('Finalidade_Mercadoria').AsInteger;
           cIncentivo.keyvalue     := tNotas.FieldByName('Incentivo_Fiscal').asstring;
      End;
      
//      GradeItens.EnableScroll;
end;

procedure TUtilitarios_AjustarEstoqueInventario.GradeItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With dmFiscal, Dados do Begin
          If (Column.FieldName = 'Movimenta_Estoque') then begin
             With GradeItens.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (tItens.FieldByName('Movimenta_Estoque').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Movimenta_Inventario') then begin
             With GradeItens.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (tItens.FieldByName('Movimenta_Inventario').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Devolucao') then begin
             With GradeItens.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (tItens.FieldByName('Devolucao').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Apuracao_PISCOFINS') then begin
             With GradeItens.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (tItens.FieldByName('Apuracao_PISCOFINS').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TUtilitarios_AjustarEstoqueInventario.bPesquisarClick(Sender: TObject);
Var
    mNumero: String;
begin
     mNumero := InputBox('Pesquisa', 'Nº da Nota', mNumero);
     If not tNotas.Locate('Numero', mNumero, [loCaseInsensitive]) then begin
        MessageDlg('Número de Nota Fiscal não encontrado!', mtInformation, [mbOK], 0);
     End;
end;

procedure TUtilitarios_AjustarEstoqueInventario.bAplicarClick(Sender: TObject);
begin
     if not ChecaSenha then abort;
     
     If MessageDlg('Atenção!'+#13+#13+'Esta opção ira salvar as alterações para esta nota fiscal.'+#13+#13+'Confirma realmente executar esta opção?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        With Dados, dmFiscal do begin
             If (Trim(cProcessoDest.Text) = '') then cProcessoDest.Text := cProcessoOrig.Text;
             If (Trim(cProdutoDest.Text) = '')  then cProdutoDest.Text  := cProdutoOrig.Text;
             If (Trim(cCSTDest.Text) = '')      then cCSTDest.Text      := cCSTOrig.Text;

             If Trim(cProdutoDest.Text) <> '' then begin
                Produtos.SQL.Clear;
                Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo = '+cProdutoDest.Text);
                Produtos.Open;
                If Produtos.RecordCount = 0 then begin
                   MessageDlg('Erro!'+#13+#13+'O código de produto informado não existe no cadastro de produtos.'+#13+#13+'Nota Fiscal não foi alterada!', mtError, [mbOK], 0);
                   Abort;
                End;
             End;
             NotasItens.SQL.Clear;
             NotasItens.SQL.Add('UPDATE NotasItens SET  Movimenta_Inventario  = '+iif(cInv.Checked, '1','0') );
             NotasItens.SQL.Add('                      ,Movimenta_Estoque     = '+iif(cEst.Checked, '1','0') );
             NotasItens.SQL.Add('                      ,Devolucao             = '+iif(cDev.Checked, '1','0') );
             NotasItens.SQL.Add('                      ,Apuracao_PISCOFINS    = '+iif(cPC.Checked , '1','0') );
             NotasItens.SQL.Add('                      ,Processo              = '+iif(Trim(cProcessoDest.Text) <> '', quotedstr(Trim(cProcessoDest.Text)), 'null'));
             NotasItens.SQL.Add('                      ,Finalidade_Mercadoria = '+iif(cFinalidadeNF.ItemIndex < 7, InttoStr(cFinalidadeNF.ItemIndex), '9') );
             NotasItens.SQL.Add('WHERE(Nota = :pNota AND Data = :pData)');
             NotasItens.ParamByName('pNota').AsInteger  := tNotasNumero.AsInteger;
             NotasItens.ParamByName('pData').AsDate     := tNotasData_Emissao.Value;
             //NotasItens.SQL.SaveToFile('c:\temp\Ajustes_Notas_Itens.sql');
             NotasItens.Execute;

             If Trim(cProdutoDest.Text) <> '' then begin
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('UPDATE NotasItens SET Codigo_Mercadoria = :pProdutoDest');
                NotasItens.SQL.Add('WHERE(Nota = :pNota) AND (Data = :pData) AND Codigo_Mercadoria = :pProdutoOrig');
                NotasItens.ParamByName('pProdutoOrig').AsString := cProdutoOrig.Text;
                NotasItens.ParamByName('pProdutoDest').AsString := cProdutoDest.Text;
                NotasItens.ParamByName('pNota').AsInteger       := tNotasNumero.AsInteger;
                NotasItens.ParamByName('pData').AsDate          := tNotasData_Emissao.AsDateTime;
                NotasItens.Execute;
             End;

             If Trim(cCSTDest.Text) <> '' then begin
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('UPDATE NotasItens SET CSTPIS    = :pCSTDest');
                NotasItens.SQL.Add('                     ,CSTCOFINS = :pCSTDest');
                NotasItens.SQL.Add('WHERE(Nota = :pNota) AND (Data = :pData) AND CSTPIS = :pCSTOrig');
                NotasItens.ParamByName('pCSTOrig').AsString := cCSTOrig.Text;
                NotasItens.ParamByName('pCSTDest').AsString := cCSTDest.Text;
                NotasItens.ParamByName('pNota').AsInteger   := tNotasNumero.AsInteger;
                NotasItens.ParamByName('pData').AsDate      := tNotasData_Emissao.AsDateTime;
                NotasItens.Execute;
             End;

             NotasItens.SQL.Clear;
             NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)');
             NotasItens.ParamByName('pNota').AsInteger := tNotasNumero.AsInteger;
             NotasItens.ParamByName('pData').AsDate    := tNotasData_Emissao.AsDateTime;
             NotasItens.Close;

             Notas.SQL.Clear;
             Notas.SQL.Add('UPDATE NotasFiscais SET Apuracao_PISCOFINS = :pPC');
             Notas.SQL.Add('                       ,Processo           = :pProc');
             Notas.SQL.Add('                       ,Incentivo_Fiscal   = :pInc');
             Notas.SQL.Add('WHERE(Numero = :pNota) AND (Data_Emissao = :pData)');
             Notas.ParamByName('pNota').AsInteger := tNotasNumero.AsInteger;
             Notas.ParamByName('pData').AsDate    := tNotasData_Emissao.AsDateTime;
             Notas.ParamByName('pPC').AsBoolean   := cPC.Checked;
             Notas.ParamByName('pProc').AsString  := cProcessoDest.Text;
             Notas.ParamByName('pInc').AsString   := cIncentivo.Text;
             Notas.Execute;

             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)');
             Notas.ParamByName('pNota').AsInteger := tNotasNumero.AsInteger;
             Notas.ParamByName('pData').AsDate    := tNotasData_Emissao.AsDateTime;
             Notas.Close;

             cProcessoDest.Clear;
        End;
        tItens.Refresh;
     End;
     MessageDlg('Alterações concluídas para a nota fiscal informada.', mtInformation, [mbOK], 0);
end;

procedure TUtilitarios_AjustarEstoqueInventario.bInventarioClick(Sender: TObject);
Var
    mFormula: String;
begin
       if not ChecaSenha then abort;

       if MessageDlg('Deseja realmente recalcular o valor de inventario da Nota Fiscal '+tNotas.FieldByName('Numero').AsString+' ?', mtConfirmation,[mbYes, mbNo], 0) = mrNo then Abort;

       with Dados do begin
            if TipoNota.Locate('Codigo', tNotas.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]) then begin
               // Desmembrando a formula do inventario para saber os valores que o compõe.
               mFormula := 'ISNULL(Valor_Unitario, 0) ';
               If Pos('PedidosItens_[Valor_Despesa]' , TipoNotaCalculo_Inventario.AsString) > 0 then mFormula := mFormula + ' + ISNULL(Valor_Despesa, 0)';
               If Pos('PedidosItens_[Valor_ICMSOper]', TipoNotaCalculo_Inventario.AsString) > 0 then mFormula := mFormula + ' + ISNULL(Valor_ICMSOper, 0)';
               If Pos('PedidosItens_[Valor_ICMSSub]' , TipoNotaCalculo_Inventario.AsString) > 0 then mFormula := mFormula + ' + ISNULL(Valor_ICMSSub, 0)';
               If Pos('PedidosItens_[Valor_IPI]'     , TipoNotaCalculo_Inventario.AsString) > 0 then mFormula := mFormula + ' + ISNULL(Valor_IPI, 0)';
            end;

            tItens.SQL.Clear;
            tItens.SQL.Add('UPDATE NotasItens SET Valor_Inventario = '+mFormula);
            tItens.SQL.Add('WHERE Nota = :pNota');
            tItens.SQL.Add('AND   Data = :pData');
            tItens.ParamByName('pNota').AsInteger := tNotasNumero.AsInteger;
            tItens.ParamByName('pData').AsDate    := tNotasData_Emissao.AsDateTime;
            //tItens.SQL.SaveToFile('c:\temp\Ajuste_ValorInventario_NF.sql');
            tItens.Execute;

            mNF := tNotasNumero.AsInteger;
            tNotas.SQL.Clear;
            tNotas.SQL.Add('UPDATE NotasFiscais SET Valor_Inventario = (SELECT SUM(Valor_Inventario) FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
            tNotas.SQL.Add('WHERE Numero       = :pNota');
            tNotas.SQL.Add('AND   Data_Emissao = :pData');
            tNotas.ParamByName('pNota').AsInteger := tNotasNumero.AsInteger;
            tNotas.ParamByName('pData').AsDate    := tNotasData_Emissao.AsDateTime;
            tNotas.Execute;

            FiltraNotas(mNF);
            FiltraItens;
       End;
end;

procedure TUtilitarios_AjustarEstoqueInventario.bPISCOFINSClick(Sender: TObject);
begin
       if not ChecaSenha then abort;

       if MessageDlg('Deseja realmente recalcular o valor do PIS e da COFINS da Nota Fiscal '+tNotas.FieldByName('Numero').AsString+' ?', mtConfirmation,[mbYes, mbNo], 0) = mrNo then Abort;

       with Dados, dmFiscal do begin
            TipoNota.Locate('Codigo', tNotas.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]);

            NotasItens.SQL.Clear;
            NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota AND Data = :pData');
            NotasItens.ParamByName('pNota').AsInteger := tNotasNumero.AsInteger;
            NotasItens.ParamByName('pData').AsDate    := tNotasData_Emissao.AsDateTime;
            NotasItens.Open;
            NotasItens.First;

            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.Progresso.Max      := NotasITens.RecordCount;
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.lProcesso.Caption  := 'Recalculando PIS/COFINS da Nota Fiscal '+ tNotasNumero.AsString;
            Janela_Processamento.Show;

            // Desmembrando a formula da BC do PIS/COFINS inventario para saber os valores que a compõe.
            while not NotasItens.Eof do begin
                  Produtos.SQL.Clear;
                  Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo = '+NotasItensCodigo_Mercadoria.AsString);
                  Produtos.Open;

                  NotasItens.Edit;
                             if TipoNotaApuracao_PISCOFINS.AsBoolean then begin
                                if tNotas.FieldByName('Tipo').AsString = 'ENTRADA' then begin
                                   NotasItensAliquota_PIS.Value    := ProdutosPIS_Nota.Value;
                                   NotasItensAliquota_COFINS.Value := ProdutosCOFINS_Nota.Value;
                                   if ProdutosReducao_PIS.Value > 0 then begin
                                      PedidosItensAliquota_PISRed.Value    := ProdutosPIS_Nota.AsFloat - ((ProdutosPIS_Nota.AsFloat * ProdutosReducao_PIS.AsFloat   )/100);
                                      PedidosItensAliquota_COFINSRed.Value := ProdutosPIS_Nota.AsFloat - ((ProdutosPIS_Nota.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
                                   end;
                                end else begin
                                   NotasItensAliquota_PIS.Value    := ProdutosPIS_NotaSaida.Value;
                                   NotasItensAliquota_COFINS.Value := ProdutosCOFINS_NotaSaida.Value;
                                   if ProdutosReducao_PIS.Value > 0 then begin
                                      NotasItensAliquota_PISRed.Value    := ProdutosPIS_NotaSaida.AsFloat - ((ProdutosPIS_NotaSaida.AsFloat * ProdutosReducao_PIS.AsFloat   )/100);
                                      NotasItensAliquota_COFINSRed.Value := ProdutosPIS_NotaSaida.AsFloat - ((ProdutosPIS_NotaSaida.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
                                   end;
                                end;

                                NotasItensValor_BCPIS.Value := NotasItensValor_Total.AsCurrency;
                                If Pos('PedidosItens_[Valor_Frete]'   , TipoNotaCalculo_BCPIS.AsString) > 0 then NotasItensValor_BCPIS.Value := NotasItensValor_BCPIS.Value + NotasItensValor_Frete.AsCurrency;
                                If Pos('PedidosItens_[Valor_Seguro]'  , TipoNotaCalculo_BCPIS.AsString) > 0 then NotasItensValor_BCPIS.Value := NotasItensValor_BCPIS.Value + NotasItensValor_Seguro.AsCurrency;
                                If Pos('PedidosItens_[Desconto_Valor]', TipoNotaCalculo_BCPIS.AsString) > 0 then NotasItensValor_BCPIS.Value := NotasItensValor_BCPIS.Value - NotasItensDesconto_Valor.AsCurrency;

                                NotasItensValor_PIS.Value    := Roundto(NotasItensValor_BCPIS.Value * (NotasItensAliquota_PIS.Value   /100), -2);
                                NotasItensValor_COFINS.Value := Roundto(NotasItensValor_BCPIS.Value * (NotasItensAliquota_COFINS.Value/100), -2);
                             end else begin
                                NotasItensAliquota_PIS.Value       := 0;
                                NotasItensAliquota_COFINS.Value    := 0;
                                NotasItensAliquota_PISRed.Value    := 0;
                                NotasItensAliquota_COFINSRed.Value := 0;
                                NotasItensValor_BCPIS.Value        := 0;
                                NotasItensValor_PIS.Value          := 0;
                                NotasItensValor_COFINS.Value       := 0;
                             end;
                  NotasItens.Post;
                  NotasItens.Next;

                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                  Application.ProcessMessages; 
            end;

            mNF := tNotasNumero.AsInteger;
            mDT := tNotasData_Emissao.AsDateTime;
            tNotas.SQL.Clear;
            tNotas.SQL.Add('UPDATE NotasFiscais SET Valor_PIS    = (SELECT SUM(Valor_PIS)    FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
            tNotas.SQL.Add('                       ,Valor_COFINS = (SELECT SUM(Valor_COFINS) FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
            tNotas.SQL.Add('                       ,Valor_BCPIS  = (SELECT SUM(Valor_BCPIS)  FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
            tNotas.SQL.Add('WHERE Numero       = :pNota');
            tNotas.SQL.Add('AND   Data_Emissao = :pData');
            tNotas.ParamByName('pNota').AsInteger := mNF;
            tNotas.ParamByName('pData').AsDate    := mDT;
            tNotas.Execute;

            FiltraNotas(mNF);
            FiltraItens;

            Janela_Processamento.Close;
       end;
end;

procedure TUtilitarios_AjustarEstoqueInventario.cSenhaChange(Sender: TObject);
begin
      if cSenha.Text <> '' then begin
         bInventario.Enabled := true;
      end;
end;

Function  TUtilitarios_AjustarEstoqueInventario.ChecaSenha: Boolean;
begin
      with Dados do begin
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;

           result := true;
           if UsuariosChave.Value <> cSenha.Text then begin
              result := false;
              MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
           end;
      end;
end;

procedure TUtilitarios_AjustarEstoqueInventario.cForaPrazoClick(Sender: TObject);
begin
      with dmFiscal, Notas do begin
           SQL.Clear;
           SQL.Add('update NotasFiscais set Cancelada_ForaPrazo = :pCanc');
           SQL.Add('where(Numero = :pNota) and (Data_Emissao = :pData)');
           ParamByName('pNota').AsInteger := tNotasNumero.AsInteger;
           ParamByName('pData').AsDate    := tNotasData_Emissao.AsDateTime;
           ParamByName('pCanc').Asboolean := cForaPrazo.Checked;
           Execute;
      end;

end;

procedure TUtilitarios_AjustarEstoqueInventario.FiltraItens;
begin
      Cursor := crSQLWait;
      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Codigo_Mercadoria,');
      tItens.SQL.Add('       CAST(Descricao_Mercadoria AS VARCHAR(500)) AS Descricao_Mercadoria,');
      tItens.SQL.Add('       Movimenta_Estoque,');
      tItens.SQL.Add('       Movimenta_Inventario,');
      tItens.SQL.Add('       Apuracao_PISCOFINS,');
      tItens.SQL.Add('       Processo,');
      tItens.SQL.Add('       Valor_Inventario = CAST(Valor_Inventario AS DECIMAL(18,4)),');
      tItens.SQL.Add('       Finalidade_Mercadoria');
      tItens.SQL.Add('      ,Aliquota_PIS');
      tItens.SQL.Add('      ,Valor_PIS');
      tItens.SQL.Add('      ,Aliquota_COFINS');
      tItens.SQL.Add('      ,Valor_COFINS');
      tItens.SQL.Add('      ,CSTPIS');
      tItens.SQL.Add('      ,CSTCOFINS');
      tItens.SQL.Add('      ,Item');
      tItens.SQL.Add('      ,Quantidade');
      tItens.SQL.Add('      ,Devolucao');
      tItens.SQL.Add('FROM   NotasItens');
      tItens.SQL.Add('WHERE  (Nota = :pNota) AND (Data = :pData)');
      tItens.SQL.Add('ORDER  BY Item');
      tItens.ParamByName('pNota').AsInteger := tNotas.FieldByName('Numero').AsInteger;
      tItens.ParamByName('pData').AsDate    := tNotas.FieldByName('Data_Emissao').AsDateTime;
      tItens.Open;
      Cursor := crDefault;
end;

procedure TUtilitarios_AjustarEstoqueInventario.FiltraNotas(Nota: Integer);
begin
      Cursor := crSQLWait;
      tNotas.SQL.Clear;
      tNotas.SQL.Add('SELECT Numero');
      tNotas.SQL.Add('      ,Data_Emissao');
      tNotas.SQL.Add('      ,Destinatario_Nome');
      tNotas.SQL.Add('      ,CASE WHEN Saida_Entrada = 0 THEN ''ENTRADA'' ELSE ''SAÍDA'' END AS Tipo');
      tNotas.SQL.Add('      ,Tipo_Nota');
      tNotas.SQL.Add('      ,Apuracao_PISCOFINS');
      tNotas.SQL.Add('      ,Processo');
      tNotas.SQL.Add('      ,Natureza_Codigo');
      tNotas.SQL.Add('      ,NFE_cNF');
      tNotas.SQL.Add('      ,Valor_TotalNota');
      tNotas.SQL.Add('      ,Valor_PIS');
      tNotas.SQL.Add('      ,Valor_COFINS');
      tNotas.SQL.Add('      ,Cancelada_ForaPrazo');
      tNotas.SQL.Add('      ,Incentivo_Fiscal');
      tNotas.SQL.Add('FROM NotasFiscais');
      tNotas.SQL.Add('ORDER BY Data_Emissao desc, Numero desc');
      tNotas.Open;

      tNotas.Locate('Numero', Nota, [loCaseInsensitive]);
      Cursor := crDefault;
end;

procedure TUtilitarios_AjustarEstoqueInventario.GradeItensDblClick(Sender: TObject);
begin
      if not ChecaSenha then abort;

      Utilitarios_AjustarItem := TUtilitarios_AjustarItem.Create(Self);
      Utilitarios_AjustarItem.Caption := Caption;
      Utilitarios_AjustarItem.ShowModal;
      tItens.Refresh;
end;

procedure TUtilitarios_AjustarEstoqueInventario.bItemClick(Sender: TObject);
begin
      GradeItensDblClick(self);
end;

end.
