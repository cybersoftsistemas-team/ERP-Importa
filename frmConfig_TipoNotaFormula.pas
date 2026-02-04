unit frmConfig_TipoNotaFormula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, DBCtrls, RXDBCtrl, DB, FUNCOES, CalcExpress, DBAccess, MSAccess, RxLookup, Grids, DBGrids, MemDS, system.UITypes, Math;

type
  TConfig_TipoNotaFormula = class(TForm)
    Panel4: TPanel;
    bLimpar: TButton;
    bAdicionar: TButton;
    bSair: TButton;
    bTestar: TButton;
    lCampo: TLabel;
    Grade: TDBGrid;
    Label2: TLabel;
    mMacro: TCalcExpress;
    lCSTPIS: TStaticText;
    dstCampos: TDataSource;
    tCampos: TMSQuery;
    tCamposReferencia: TStringField;
    tCamposTabela: TStringField;
    cTabelas: TRxDBLookupCombo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cFormula: TMemo;
    cCalculo: TMemo;
    StaticText1: TStaticText;
    cPesquisa: TEdit;
    bInventario: TButton;
    tTotal: TMSQuery;
    tTotaliza: TMSQuery;
    msg: TPanel;
    Label1: TLabel;
    TabSheet3: TTabSheet;
    cLog: TMemo;
    procedure bConfirmarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bTestarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure cFormulaDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure cFormulaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure bLimparClick(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure cFormulaEnter(Sender: TObject);
    procedure cTabelasChange(Sender: TObject);
    procedure InserirTexto(Texto: String; Objeto : TMemo);
    procedure cPesquisaChange(Sender: TObject);
    procedure bInventarioClick(Sender: TObject);
  private
    function CalculaMacro(Campo: String): Real;
    function ConverteCalculo: boolean;
    { Private declarations }
  public
    { Public declarations }
    mNomeFormula : String;
    mNomeCalculo : String;
  end;

var
  Config_TipoNotaFormula: TConfig_TipoNotaFormula;

implementation

Uses frmDados, frmDMFiscal, frmPedido_Outros;
{$R *.dfm}

procedure TConfig_TipoNotaFormula.bConfirmarClick(Sender: TObject);
begin
      Close;
end;

procedure TConfig_TipoNotaFormula.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TConfig_TipoNotaFormula.bTestarClick(Sender: TObject);
begin
      if not ConverteCalculo then begin
         ShowMessage('Erro desconhecido na formula do campo');
      end;
end;

function TConfig_TipoNotaFormula.ConverteCalculo: boolean;
Var
    i      : Integer;
    mFecha : Integer;
    mAbre  : Integer;
    mNovo  : String;
    mPos   : Integer;
    mTesta : String;
    mFuncao: String;
begin
      // Convertendo a fórrmula digitada para o campo calculo.
      mFecha := 0;
      mAbre  := 0;
      With Dados do begin
           Campos.DisableControls;
           Campos.SQL.Clear;
           Campos.SQL.Add('SELECT * FROM Campos WHERE Calculavel = 1 AND Visivel = 1 AND RTRIM(ISNULL(Descricao,'''')) <> '''' ');
           Campos.SQL.Add('ORDER  BY Referencia,Descricao');
           Campos.Open;

           if Trim(cFormula.Text) <> '' then begin
              Campos.First;
              mNovo  := cFormula.Text;
              mTesta := cFormula.Text;
              while not Campos.Eof do begin
                    mPos := Pos(CamposDescricao.Value, mNovo);
                    if CamposFuncao.AsBoolean = false then begin
                       if mPos <> 0 then begin
                          while (mPos <> 0) and (not Campos.Eof) do begin
                                mNovo  := RemoveCaracter(CamposDescricao.Value, CamposCampo.Value, mNovo);          // Troca a descrição do campo pelo "Campo".
                                mTesta := RemoveCaracter(CamposDescricao.Value, CamposValor_Teste.Value, mTesta);   // Troca a descrição do campo pelo "Valor teste".
                                mPos   := Pos(CamposDescricao.Value, mNovo);                                        // Verifica se o campo existe.
                          end;
                       end;
                    end else begin
                       while (mPos <> 0) and (not Campos.Eof) do begin
                             mFuncao := Trim(CamposDescricao.AsString);
                             for i := Pos('{', mTesta) to Length(mTesta) do begin
                                 mFuncao := mFuncao + mTesta[i];
                                 If mTesta[i] = '}' then break;
                             end;
                             mTesta := RemoveCaracter(mFuncao, CamposValor_Teste.Value, mTesta);
                             mPos   := Pos(CamposDescricao.Value, mTesta);
                       end;
                    end;
                    Campos.next;
              end;

              mNovo  := RemoveCaracter(#13,'', mNovo);
              mTesta := RemoveCaracter(#13,'', mTesta);

              // Verificando se os parenteses abertos e fechados estão corretos.
              for i := 1 to Length(cFormula.Text) do begin
                  If Copy(cFormula.Text, i,1) = '(' then Inc(mAbre);
                  If Copy(cFormula.Text, i,1) = ')' then Inc(mFecha);
              end;
              if mAbre > mFecha then ShowMessage('Existe um erro de parêntese na fórmula.'+#13+'A quantidade de parênteses abertos "(" é maior que a de parênteses fechados ")".');
              if mAbre < mFecha then ShowMessage('Existe um erro de parêntese na fórmula.'+#13+'A quantidade de parênteses fechados ")" é maior que a de parênteses abertos "(".');

              // Verificando se as chaves de funções abertos e fechados estão corretos.
              mAbre  := 0;
              mFecha := 0;
              For i := 1 to Length(cFormula.Text) do begin
                  If Copy(cFormula.Text, i,1) = '{' then Inc(mAbre);
                  If Copy(cFormula.Text, i,1) = '}' then Inc(mFecha);
              End;
              If mAbre > mFecha then ShowMessage('Existe um erro de chaves na fórmula.'+#13+'A quantidade de chaves abertas "{" é maior que a de chaves fechadas "}".');
              If mAbre < mFecha then ShowMessage('Existe um erro de chaves na fórmula.'+#13+'A quantidade de chaves fechadas "}" é maior que a de chaves abertas "{".');

              If mAbre = mFecha then begin
                 TipoNota.FieldByName(mNomeFormula).Value := Trim(cFormula.Text);
                 TipoNota.FieldByName(mNomeCalculo).Value := Trim(mNovo);
                 cCalculo.Text := Trim(mNovo);
              End;
              
              cLog.Lines.Clear;
              cLog.Lines.Add(mTesta);
              mMacro.Formula := Trim(mTesta);
              If mMacro.Tag <> 0 then begin 
                 Campos.EnableControls;
                 Abort;
              end;
           end else begin
              TipoNota.FieldByName(mNomeFormula).Clear;
              TipoNota.FieldByName(mNomeCalculo).Clear;
           End;

           result := mAbre = mFecha;
           Campos.EnableControls;
      End;
end;

procedure TConfig_TipoNotaFormula.bInventarioClick(Sender: TObject);
var
   mTotal:real;
   mCalculo:string;
begin
    bInventario.Enabled := false;
    msg.Visible := not msg.Visible;
    Label1.Visible := true;
    msg.Repaint;
    ConverteCalculo;
    mCalculo := cCalculo.Text;

    // Recalcula o campo "Inventario" das notas fiscais.
    with Dados, dmFiscal do begin
         Campos.DisableControls;
         if Trim(TipoNotaCalculo_Inventario.AsString) <> '' then begin
            // Recalcula os pedidos existentes.
            Pedidos.sql.clear;
            Pedidos.SQL.Add('select * from Pedidos where Tipo_Nota = :pTipo');
            Pedidos.parambyName('pTipo').AsInteger := TipoNotaCodigo.AsInteger;
            Pedidos.Open;
            while not Pedidos.Eof do begin
                  with PedidosItens do begin
                       sql.Clear;
                       sql.Add('select * from PedidosItens where Pedido = :pPedido');
                       parambyName('pPedido').AsInteger := Pedidos.FieldByName('Numero').AsInteger;
                       open;

                       mTotal := 0;
                       while not eof do begin
                             edit;
                                PedidosItensValor_Inventario.Value := CalculaMacro(mCalculo);
                             post;
                             mTotal := mTotal + Roundto(PedidosItensValor_Inventario.ascurrency * PedidosItensQuantidade.asfloat, -2);
                             next;
                       end;
                  end;
                  Pedidos.Edit;
                        Pedidos.FieldByName('Valor_Inventario').Value := mTotal;
                  Pedidos.Post;
                  Pedidos.next;
            end;

            // Recalcula todas as notas fiscais.
            mCalculo := StringReplace(cCalculo.Text, 'PedidosItens_[', 'NotasItens_[', [rfReplaceAll, rfIgnoreCase]);
            Notas.sql.clear;
            Notas.SQL.Add('select * from NotasFiscais where Tipo_Nota = :pTipo and Cancelada <> 1 and Nfe_Denegada <> 1');
            Notas.parambyName('pTipo').AsInteger := TipoNotaCodigo.AsInteger;
            Notas.Open;
            while not Notas.Eof do begin
                  with NotasItens do begin
                       sql.Clear;
                       sql.Add('select * from NotasItens where Nota = :pNota and Data = :pData');
                       parambyName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
                       parambyName('pData').AsDate    := Notas.FieldByName('Data_Emissao').asDatetime;
                       open;

                       mTotal := 0;
                       while not eof do begin
                             edit;
                                NotasItensValor_Inventario.Value := CalculaMacro(mCalculo);
                             post;
                             mTotal := mTotal + Roundto(NotasItensValor_Inventario.ascurrency * NotasItensQuantidade.asfloat, -2);
                             next;
                       end;
                  end;
                  Notas.Edit;
                        Notas.FieldByName('Valor_Inventario').Value := mTotal;
                  Notas.Post;
                  Notas.next;
            end;
         end;

         Campos.EnableControls;
    end;
    msg.Visible := not msg.Visible;
    MessageDlg('Recalculo do valor do inventario das notas fiscais concluído!', mtInformation, [mbok], 0);
    bInventario.Enabled := true;
end;

procedure TConfig_TipoNotaFormula.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do Begin
          Campos.Close;
          Campos.SQL.Clear;
          Campos.SQL.Add('SELECT * FROM Campos WHERE Calculavel = 1 AND Visivel = 1 AND RTRIM(ISNULL(Descricao, '''')) <> '''' ORDER BY Referencia,Descricao');
          Campos.Open;
          cFormula.Text := TipoNota.FieldByName(mNomeFormula).AsString;
          cCalculo.Text := TipoNota.FieldByName(mNomeCalculo).asstring;

          tCampos.SQL.Clear;
          tCampos.SQL.Add('SELECT DISTINCT Referencia, Tabela FROM Campos WHERE Calculavel = 1 AND Visivel = 1 AND RTRIM(ISNULL(Descricao, '''')) <> '''' ORDER BY Referencia, Tabela');
          tCampos.Open;
      End;
      bInventario.Enabled := mNomeFormula = 'Formula_Inventario';
      Screen.Cursor := crDefault;
end;

procedure TConfig_TipoNotaFormula.GradeDblClick(Sender: TObject);
begin
      If Dados.CamposPercentual.AsBoolean = false then
         InserirTexto(Dados.CamposDescricao.Value, cFormula)
      else
         InserirTexto('('+Dados.CamposDescricao.Value+'/100)', cFormula);
      cFormula.SetFocus;
end;

procedure TConfig_TipoNotaFormula.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Campos.Close;
           Campos.SQL.Clear;
           Campos.SQL.Add('SELECT * FROM Campos ORDER BY Referencia, Campo');
           Campos.Open;
      End;
      Screen.Cursor := crDefault;

      LimpaMemoria;
      Config_TipoNotaFormula.Release;
      Config_TipoNotaFormula := nil;
end;

procedure TConfig_TipoNotaFormula.GradeMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      Grade.BeginDrag(True);
end;

procedure TConfig_TipoNotaFormula.cFormulaDragOver(Sender, Source: TObject;X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TConfig_TipoNotaFormula.cFormulaDragDrop(Sender, Source: TObject;X, Y: Integer);
begin
      If Dados.CamposPercentual.AsBoolean = false then
         InserirTexto(Dados.CamposDescricao.Value, cFormula)
      else
         InserirTexto('('+Dados.CamposDescricao.Value+'/100)', cFormula);

      cFormula.SetFocus;
end;

procedure TConfig_TipoNotaFormula.bLimparClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente limpar a fórmula?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         cFormula.Clear;
end;

procedure TConfig_TipoNotaFormula.bAdicionarClick(Sender: TObject);
begin
      If Dados.CamposPercentual.AsBoolean = false then
         InserirTexto(Dados.CamposDescricao.Value, cFormula)
      else
         InserirTexto('('+Dados.CamposDescricao.Value+'/100)', cFormula);

      cFormula.SetFocus;
end;

procedure TConfig_TipoNotaFormula.cFormulaEnter(Sender: TObject);
begin
      keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);
      keybd_event(VK_END, 0, 0, 0);
      keybd_event(VK_CONTROL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
      keybd_event(VK_SPACE, 0, 0, 0);
end;

procedure TConfig_TipoNotaFormula.cTabelasChange(Sender: TObject);
begin
     With Dados do begin
          Campos.Close;
          Campos.SQL.Clear;
          Campos.SQL.Add('SELECT * FROM Campos WHERE Calculavel = 1 AND Visivel = 1 AND RTRIM(ISNULL(Descricao, '''')) <> '''' ');
          If Trim(cTabelas.Text) <> '' then begin
             Campos.SQL.Add('  AND Referencia = '+QuotedStr(tCampos.FieldByName('Referencia').AsString) );
          End;
          Campos.SQL.Add('ORDER BY Referencia,Descricao');
          //Campos.SQL.SaveToFile('c:\temp\Campos.sql');
          Campos.Open;
     End;
end;

procedure TConfig_TipoNotaFormula.InserirTexto(Texto: String; Objeto: TMemo);
var
    TextoA,
    TextoD: WideString;
    Pos   : Integer;
begin
     // Armazena a coluna em que está o cursor.
     Pos := Objeto.SelStart;

     // Armazena o texto anterior.
     TextoA := Copy(Objeto.Text, 1, Pos);

     // Armazena o texto depois.
     TextoD := Copy(objeto.Text,POS+1,Length(objeto.Text));

     // Armazena o texto anterior, o texto desejato, e o texto posterior.
     Objeto.Text := textoA +' '+ texto +' '+ textoD;
end;

procedure TConfig_TipoNotaFormula.cPesquisaChange(Sender: TObject);
begin
     with Dados do begin
          Campos.SQL.Clear;
          Campos.SQL.Add('SELECT * FROM Campos WHERE Calculavel = 1 AND Visivel = 1');
          if Trim(cPesquisa.Text) <> '' then begin
             Campos.SQL.Add('  AND Descricao LIKE '+QuotedStr('%'+cPesquisa.Text+'%'));
          end;
          Campos.SQL.Add('ORDER BY Referencia,Descricao');
          //Campos.SQL.SaveToFile('c:\temp\Campos_Pesquisa.sql');
          Campos.Open;
     end;
end;

// Executa os calculos dos macro passados como strings.
Function TConfig_TipoNotaFormula.CalculaMacro(Campo:String):Real;
var
    mPos         : Integer;
    mTam         : Integer;
    mPosFun      : Integer;
    i            : Integer;
    mResultado   : Real;
    mFormula     : String;
    mCampo       : String;
    mSQL         : String;
    mFuncao      : String;
    mFunTermo1   : String;
    mFunTermo2   : String;
    mFunCondic   : String;
    mSinal       : String;
    mValorCondic1: String;
    mValorCondic2: String;
begin
     With Dados, dmFiscal do begin
          // Convertendo a formulas do campo.
          mFormula := RemoveCaracter(#13,'',Campo);
          mFormula := RemoveCaracter(#12,'',mFormula);
          mFormula := RemoveCaracter(#10,'',mFormula);
          Campos.First;
          While not Campos.Eof do begin
                mTam   := Length(Trim(CamposCampo.Value));
                mPos   := Pos(CamposCampo.Value, mFormula);
                mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 60);
                mCampo := Trim(Copy( mCampo, 1, Pos(']',mCampo)-1));
                If (CamposPesquisa.Value <> '') and (mPos <> 0) then Begin
                   mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 30);
                   mCampo := Copy(mCampo, 1, Pos(']',mCampo)-1);
                End;
                If (mPos <> 0) then begin
                   Delete( mFormula, mPos, mTam );
                   If UpperCase(CamposTabela.Value) = 'PEDIDOS' then begin
                      If Trim(Pedidos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Pedidos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PEDIDOSITENS' then begin
                      If Trim(PedidosItens.FieldByName(mCampo).AsString) <> '' then begin
                         Insert( PedidosItens.FieldByName(mCampo).AsString, mFormula, mPos );
                      end else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROSITENS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASITENS' then begin
                      If Trim(NotasItens.FieldByName(mCampo).AsString) <> '' then
                         if (mCampo = 'Valor_PIS') or (mCampo = 'Valor_COFINS') then begin
                            Insert( '('+NotasItens.FieldByName(mCampo).AsString+' / '+NotasItens.FieldByName('Quantidade').AsString+')', mFormula, mPos );
                         end else begin
                            Insert( NotasItens.FieldByName(mCampo).AsString, mFormula, mPos )
                         end
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PROCESSOSDOCUMENTOS' then begin
                      If Trim(PedidosProcesso.AsString) <> '' then begin
                         If Trim(ProcessosDOC.FieldByName(mCampo).AsString) <> '' then
                            Insert( ProcessosDOC.FieldByName(mCampo).AsString, mFormula, mPos )
                         else
                            Insert( '0', mFormula, mPos );
                      end else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ADICOES' then begin
                      If Trim(Adicoes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Adicoes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'CLIENTES' then begin
                      If Trim(Clientes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Clientes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NCM' then begin
                      If Trim(NCM.FieldByName(mCampo).AsString) <> '' then
                         Insert( NCM.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PRODUTOS' then begin
                      If Trim(Produtos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Produtos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAESTOQUE' then begin
                      If Trim(FichaEstoque.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaEstoque.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAINVENTARIO' then begin
                      If Trim(FichaInventario.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaInventario.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   {
                   If UpperCase(CamposTabela.Value) = 'ICMS' then begin
                      If EmpresasEstado.Value = ClientesEstado.Value then begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_DentroNContrib'
                         else
                            mCampo := 'Imp_DentroContrib';
                      End else begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_ForaNContrib'
                         else
                            mCampo := 'Imp_ForaContrib';
                      End;
                      Insert( ICMS.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   }
                   if UpperCase(CamposTabela.Value) = 'ICMS' then begin
                      if EmpresasEstado.Value = ClientesEstado.Value then begin
                         if ClientesIsento.Value = True then
                            mCampo := 'Nac_NContribuinte'
                         else
                            mCampo := 'Nac_Contribuinte';
                      end else begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_NContribuinte'
                         else
                            mCampo := 'Imp_Contribuinte';
                      end;
                      Insert( ICMS.FieldByName(mCampo).AsString, mFormula, mPos );
                   end;

                   If UpperCase(CamposTabela.Value) = 'PAGARRECEBER' then begin
                      // Filtra a tabela para pegar o valor do lançamento.
                      If CamposPesquisa.Value <> '' then begin
                         mSQL := PagarReceber.SQL.Text;
                         PagarReceber.SQL.Clear;
                         PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = '+QuotedStr(ProcessosDOCProcesso.Value)+') and ('+CamposCampo_Chave.Value+' = '+QuotedStr(CamposPesquisa.Value)+')' );
                         PagarReceber.Open;

                         // Se não houver lançamento feito insere o valor 0 na formula.
                         If PagarReceber.RecordCount <> 0 then
                            Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                         else
                            Insert( '0', mFormula, mPos );
                      End else begin
                         mCampo := CamposCampo_Chave.Value;
                         Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                      End;
                   End;
                End;
                If mPos = 0 then Campos.Next;
          End;

          while Pos('{', mFormula) > 0 do begin
                mPosFun := Pos('{', mFormula)+1;
                mFuncao := Copy(mFormula, mPosFun, Pos('}', mFormula)-mPosFun);

                // Condição da função.
                mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := RemoveCaracter(mFunCondic, '', mFuncao);
                mFunCondic := RemoveCaracter(';', '', mFunCondic);

                // Primeiro termo da função.
                mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := RemoveCaracter(mFunTermo1, '', mFuncao);
                mFunTermo1 := RemoveCaracter(';', '', mFunTermo1);

                // Segundo termo da função.
                mFunTermo2 := RemoveCaracter(';', '', mFuncao);

                // Sinal utilizado no teste de condição.
                mSinal := '';
                for i := 1 to Length(mFunCondic) do begin
                    If (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
                end;

                // Valores da condição.
                mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
                mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
                mFuncao := '';
                for i := Pos('{', mFormula) to Length(mFormula) do begin
                    mFuncao := mFuncao + mFormula[i];
                    If mFormula[i] = '}' then break;
                end;

                if ApenasNumeros(mValorCondic2) <> '' then begin
                   if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                      (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                      (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                      (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                      mFormula := RemoveCaracter(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := RemoveCaracter(mFuncao, mFunTermo2, mFormula);
                end else begin
                   if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                      (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                      (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                      (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                      (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                      (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                      mFormula := RemoveCaracter(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := RemoveCaracter(mFuncao, mFunTermo2, mFormula);
                end;
          end;

          //PedidosItens.EnableControls;
          Pedidos.EnableControls;
     End;

     mResultado := 0;

     Try
        mMacro.Formula := mFormula;
        mResultado     := mMacro.Calc([0]);
        If mResultado <= 0 then mResultado := 0;
     Except
          showmessage('Erro na formula do campo '+Campo);
     end;

     Result := mResultado;
end;


end.
