unit frmProcesso_Adicoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  DBCtrls, Grids, DBGrids, RXDBCtrl,DB, DBAccess, MSAccess, Math, system.UITypes,  Buttons, MemDS, Mask, RxCurrEdit, RxToolEdit;

type
  TProcesso_Adicoes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    lProduto: TStaticText;
    StaticText3: TStaticText;
    StaticText11: TStaticText;
    cProduto: TDBLookupComboBox;
    cAdicao: TDBEdit;
    cQuantidade: TDBEdit;
    cValorUnitarioME: TDBEdit;
    DBMemo1: TDBMemo;
    lNCM: TStaticText;
    DBEdit1: TDBEdit;
    StaticText5: TStaticText;
    DBEdit5: TDBEdit;
    Grade: TDBGrid;
    StaticText9: TStaticText;
    StaticText4: TStaticText;
    tRegistro: TMSQuery;
    lExportador: TStaticText;
    cExportador: TDBLookupComboBox;
    cPesoUnitario: TDBEdit;
    StaticText10: TStaticText;
    bPesquisa: TButton;
    StaticText12: TStaticText;
    DBEdit6: TDBEdit;
    bConv: TButton;
    tCodigoPlano: TMSQuery;
    tCodigoPlanoCodigo: TStringField;
    tContaPlano: TMSQuery;
    tContaPlanoConta: TStringField;
    tFornecedor: TMSQuery;
    tFornecedorCodigo: TIntegerField;
    tSequencia: TMSQuery;
    tSequenciaSequencia: TSmallintField;
    lEntradas: TStaticText;
    cEntradas: TDBEdit;
    lSaidas: TStaticText;
    cSaidas: TDBEdit;
    StaticText6: TStaticText;
    cTotalQtde: TCurrencyEdit;
    cTotalValor: TCurrencyEdit;
    StaticText8: TStaticText;
    cTotalPeso: TCurrencyEdit;
    cTotalValorReal: TCurrencyEdit;
    StaticText1: TStaticText;
    cVlrsemAcrescimo: TDBEdit;
    StaticText2: TStaticText;
    DBEdit7: TDBEdit;
    StaticText7: TStaticText;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    DBEdit10: TDBEdit;
    StaticText15: TStaticText;
    DBEdit11: TDBEdit;
    StaticText63: TStaticText;
    bImp: TSpeedButton;
    OpenDialog1: TOpenDialog;
    cOrdem: TDBEdit;
    StaticText16: TStaticText;
    cPosicao: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit2: TDBEdit;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    DBEdit3: TDBEdit;
    StaticText19: TStaticText;
    DBEdit4: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cProdutoClick(Sender: TObject);
    Procedure TotalizaAdicao;
    procedure lExportadorClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cValorUnitarioMEExit(Sender: TObject);
    procedure bConvClick(Sender: TObject);
    procedure lNCMClick(Sender: TObject);
    procedure lProdutoClick(Sender: TObject);
    procedure cValorUnitarioMEChange(Sender: TObject);
    procedure bImpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa   : String;
    mQtdeInicio
   ,mTotalCIDEDev
   ,mTotalCIDERec: Real;
  end;

var
  Processo_Adicoes: TProcesso_Adicoes;

implementation

Uses frmDados, frmMenu_Principal, frmCadastro_Fornecedores, funcoes,frmProcesso_Importacao, frmConversor_Moedas, frmCadastro_NCM,frmDMFiscal, frmCadastro_Produtos,
     frmProcesso_AdicoesOrdem, frmJanela_Processamento;

{$R *.dfm}

procedure TProcesso_Adicoes.bSairClick(Sender: TObject);
begin
      Dados.Adicoes.Cancel;
      Close;
end;

procedure TProcesso_Adicoes.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do Begin
           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI) ORDER BY Adicao');
           Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
           Adicoes.Open;
           Navega.Controls[6].Enabled := Dados.Adicoes.RecordCount > 0;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
           Produtos.Open;

           Fornecedores.sql.clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Codigo');
           Fornecedores.Open;

           lEntradas.Enabled := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
           CEntradas.Enabled := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
           lSaidas.Enabled   := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
           cSaidas.Enabled   := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
      end;
      TotalizaAdicao;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_Adicoes.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   mConvertido
  ,mTaxaOrig
  ,mTaxaDest: Real;
begin
        With Dados do Begin
             Adicoes.DisableControls;
             // Totalizando o peso liquido da DI.
             TotalizaAdicao;

             ProcessosDoc.Edit;
                          ProcessosDOCPeso_Liquido.Value       := cTotalPeso.Value;
                          ProcessosDOCFOB_ME.Value             := cTotalValor.Value;
                          ProcessosDOCFOB.Value                := cTotalValorReal.Value;
                          ProcessosDOCFOB_MEAdicoes.Value      := cTotalValor.Value;
                          ProcessosDOCFOB_Adicoes.Value        := cTotalValorReal.Value;
                          ProcessosDOCCIDE_ValorDevido.Value   := mTotalCIDEDev;
                          ProcessosDOCCIDE_ValorRecolher.Value := mTotalCIDERec;

                          // Removendo o valor do frete do total do FOB se for o caso.
                          If (IncotermsFrete.Value = False) and (cTotalValor.Value <> 0) then begin
                             If ProcessosDOCMoeda_FOB.Value = ProcessosDOCMoeda_Frete.Value then
                                ProcessosDOCFOB_ME.Value := (cTotalValor.Value - ProcessosDOCFrete_ME.Value)
                             else begin
                                Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Frete.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                                mTaxaOrig := CotacaoValor.Value;
                                Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_FOB.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                                mTaxaDest                := CotacaoValor.Value;
                                mConvertido              := ((ProcessosDOCFrete_ME.Value * mTaxaOrig ) / mTaxaDest );
                                ProcessosDOCFOB_ME.Value := (cTotalValor.Value - mConvertido );
                             End;
                          End;

                          If (IncotermsSeguro.Value = False) and (cTotalValor.Value <> 0) then begin
                             If ProcessosDOCMoeda_FOB.Value = ProcessosDOCMoeda_Seguro.Value then
                                ProcessosDOCFOB_ME.Value := (ProcessosDOCFOB_ME.Value - ProcessosDOCSeguro_ME.Value)
                             else begin
                                Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Seguro.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                                mTaxaOrig := CotacaoValor.Value;
                                Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_FOB.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                                mTaxaDest                := CotacaoValor.Value;
                                mConvertido              := ((ProcessosDOCSeguro_ME.Value * mTaxaOrig ) / mTaxaDest );
                                ProcessosDOCFOB_ME.Value := (cTotalValor.Value - mConvertido );
                             End;
                          End;

                          ProcessosDOCQuantidade.Value := cTotalQtde.Value;

                          // Atualizando os valores em real.
                          If ProcessosDOCFOB_ME.Value <> 0 then begin
                             If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_FOB.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
                                ProcessosDOCTaxa_FOB.Value := CotacaoValor.Value;
                                ProcessosDOCFOB.Value      := (ProcessosDOCFOB_ME.Value * CotacaoValor.Value );
                             End;
                          End;
                          If ProcessosDOCFrete_ME.Value <> 0 then begin
                             If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Frete.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
                                ProcessosDOCTaxa_Frete.Value := CotacaoValor.Value;
                                ProcessosDOCFrete.Value      := (ProcessosDOCFrete_ME.Value * CotacaoValor.Value );
                             End;
                          End;
                          If ProcessosDOCSeguro_ME.Value <> 0 then begin
                             If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Seguro.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
                                ProcessosDOCTaxa_Seguro.Value := CotacaoValor.Value;
                                ProcessosDOCSeguro.Value      := (ProcessosDOCSeguro_ME.Value * CotacaoValor.Value );
                             End;
                          End;
             ProcessosDOC.Post;
             If ProcessosDOCFOB_ME.Value = 0 then Processo_Importacao.cFOBME.Color := clRed;

             Adicoes.Close;
             Adicoes.EnableControls;
        End;

        LimpaMemoria;
        Processo_Adicoes.Release;
        Processo_Adicoes := nil;
end;

procedure TProcesso_Adicoes.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         bPesquisa.Enabled := false;
         bImp.Enabled      := false;
         bConv.Enabled     := false;
         mQtdeInicio       := Dados.AdicoesQuantidade.Value;
         If Button = nbInsert then begin
            Dados.AdicoesDI.Value := Dados.ProcessosDOCNumero_Declaracao.Value;
         end;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cAdicao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbDelete) then begin
         TotalizaAdicao;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Adicoes.Refresh;
         bPesquisa.Enabled := true;
         bImp.Enabled      := true;
         bConv.Enabled     := true;
         Panel2.Enabled    := False;
         Screen.Cursor     := crDefault;
      End;
      Navega.Controls[6].Enabled := Dados.Adicoes.RecordCount > 0;
end;

procedure TProcesso_Adicoes.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
     Navega.SetFocus;
     With Dados do begin
          If Button = nbPost then begin
             If AdicoesValor_SemAdValorem.Value <= 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'Campo "Vlr S/Acréscimo" é campo obrigatório.', mtError, [mbOK], 0);
                cVlrSemAcrescimo.SetFocus;
                Abort;
             End;
             If AdicoesValor_Unitario.Value <= 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'Campo "Valor Unitario (ME)" é campo obrigatório.', mtError, [mbOK], 0);
                cValorUnitarioME.SetFocus;
                Abort;
             End;
             If AdicoesExportador.Value <= 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'Campo "Exportador" é campo obrigatório.', mtError, [mbOK], 0);
                cExportador.SetFocus;
                Abort;
             End;
             If AdicoesAdicao.Value <= 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'Campo "Adição Nº" é campo obrigatório.', mtError, [mbOK], 0);
                cAdicao.SetFocus;
                Abort;
             End;
             If AdicoesCodigo_Mercadoria.Value <= 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'Campo "Produto" é campo obrigatório.', mtError, [mbOK], 0);
                cProduto.SetFocus;
                Abort;
             End;
             If AdicoesQuantidade.Value <= 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'Campo "Quantidade" é campo obrigatório.', mtError, [mbOK], 0);
                cQuantidade.SetFocus;
                Abort;
             End;
          End;

          If Adicoes.State = dsInsert then begin
             tSequencia.SQL.Clear;
             tSequencia.SQL.Add('SELECT MAX(Sequencia) AS Sequencia FROM Adicoes WHERE (DI = :pDI) AND (Adicao = :pAdicao)');
             tSequencia.ParamByName('pDI').AsString      := ProcessosDOCNumero_Declaracao.AsString;
             tSequencia.ParamByName('pAdicao').AsInteger := AdicoesAdicao.Value;
             tSequencia.Open;

             tRegistro.SQL.Clear;
             tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 as Registro FROM Adicoes');
             tRegistro.Open;

             AdicoesRegistro.Value        := tRegistro.FieldByName('Registro').Value;
             AdicoesDI.value              := ProcessosDOCNumero_Declaracao.Value;
             AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
             AdicoesSequencia.Value       := tSequencia.FieldByName('Sequencia').AsInteger+1;

             tSequencia.SQL.Clear;
             tSequencia.SQL.Add('SELECT MAX(Sequencia_SISCOMEX) AS Sequencia FROM Adicoes WHERE (DI = :pDI)');
             tSequencia.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
             tSequencia.Open;

             AdicoesSequencia_SISCOMEX.Value := tSequencia.FieldByName('Sequencia').AsInteger+1;
             tRegistro.Close;
             tSequencia.Close;
          End;
          If (Adicoes.State = dsEdit) then begin
             If (AdicoesQuantidade.Value - mQtdeInicio) > 0 then AdicoesLancado_Entrada.Value := (AdicoesQuantidade.Value - mQtdeInicio);
             If (AdicoesQuantidade.Value - mQtdeInicio) < 0 then AdicoesLancado_Entrada.Value := 0;
          End;
          If (Button = nbPost) and (AdicoesPeso_Liquido.Value <> ProdutosPeso_Liquido.Value) then begin
             Produtos.Edit;
                      ProdutosPeso_Liquido.Value := AdicoesPeso_Liquido.Value;
             Produtos.Post;
          End;
     End;
end;

procedure TProcesso_Adicoes.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
Var
   Icon: TBitMap;
begin
      Icon := TBitmap.Create;
      If Odd(Dados.Adicoes.RecNo) then begin
         Grade.Canvas.Brush.Color := $00FFF0F0;
      End;
      If gdSelected in State then begin //Cor da célula selecionada
         Grade.Canvas.Brush.Color := $000080FF;
      End;
      If (Column.FieldName = 'Dumping') then begin
         With Grade.Canvas do begin
              Brush.Color := clWhite;
              FillRect(Rect);
              If (Dados.Adicoes.FieldByName('Dumping').Value = True) then Dados.ImageList1.GetBitmap(2, Icon);
              Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
         End;
      End;
end;

procedure TProcesso_Adicoes.cProdutoClick(Sender: TObject);
begin
     With Dados do begin
          If (Adicoes.State = dsEdit) or (Adicoes.State = dsInsert) then begin
             AdicoesNCM.Value          := ProdutosNCM.Value;
             AdicoesPeso_Liquido.Value := ProdutosPeso_Liquido.AsFloat;
          End;   
     End;
end;

Procedure TProcesso_Adicoes.TotalizaAdicao;
Begin
      With Dados do begin
           cTotalQtde.Value      := 0;
           cTotalValor.Value     := 0;
           cTotalValorReal.Value := 0;
           cTotalPeso.Value      := 0;
           mTotalCIDEDev         := 0;
           mTotalCIDERec         := 0;
           Janela_Processamento := Tjanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := Adicoes.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Totalizando Adições...Aguarde';
           Janela_Processamento.bCancelar.Visible  := false;
           Janela_Processamento.Show;

           Adicoes.First;
           While not Adicoes.Eof do begin
                 cTotalQtde.Value  := cTotalQtde.Value  + AdicoesQuantidade.Value;
                 cTotalValor.Value := cTotalValor.Value + Roundto((AdicoesValor_Unitario.Value * AdicoesQuantidade.Value), -6);
                 cTotalPeso.Value  := cTotalPeso.Value  + (AdicoesPeso_Liquido.Value * AdicoesQuantidade.Value);
                 mTotalCIDEDev     := mTotalCIDEDev     + AdicoesCIDE_ValorDevido.Value;
                 mTotalCIDERec     := mTotalCIDERec     + AdicoesCIDE_ValorRecolher.Value;

                 Adicoes.Next;

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           End;
           Adicoes.First;
           cTotalValorReal.Value := cTotalValor.Value * Dados.ProcessosDOCTaxa_FOB.Value;
      End;

      Janela_Processamento.Close;
End;

procedure TProcesso_Adicoes.lExportadorClick(Sender: TObject);
begin
      {
      Dados.Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
      If Dados.UsuariosmnCadastro_Fornecedores.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      }
      if not Permissao('mnCadastro_Fornecedores') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      end;
      
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.ShowModal;
      Dados.AdicoesExportador.Value := Menu_Principal.mMem_Fornecedor;
      Dados.Fornecedores.Open;
      Dados.Paises.Open;
      Dados.Usuarios.Open;
end;

procedure TProcesso_Adicoes.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa', 'Codigo do Produto:', mPesquisa);
      Dados.Adicoes.Locate('Codigo_Mercadoria', mPesquisa, [loPartialKey]);
end;

procedure TProcesso_Adicoes.cValorUnitarioMEExit(Sender: TObject);
begin
      Dados.AdicoesValor_UnitarioReal.Value := ( Dados.AdicoesValor_Unitario.Value * Dados.ProcessosDOCTaxa_FOB.Value);
end;


procedure TProcesso_Adicoes.bConvClick(Sender: TObject);
begin
      Conversor_Moedas := TConversor_Moedas.Create(Self);
      Conversor_Moedas.ShowModal;
end;

procedure TProcesso_Adicoes.lNCMClick(Sender: TObject);
begin
      {
      Dados.Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
      If Dados.UsuariosmnCadastro_NCM.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      }
      if not Permissao('mnCadastro_NCM') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      end;
      Cadastro_NCM := TCadastro_NCM.Create(Self);
      Cadastro_NCM.Caption := Caption;
      Cadastro_NCM.ShowModal;
      dmFiscal.NCM.Open;
end;

procedure TProcesso_Adicoes.lProdutoClick(Sender: TObject);
begin
      {
      Dados.Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
      If Dados.UsuariosmnCadastro_Produtos.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      }
      if not Permissao('mnCadastro_Produtos') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;

      Cadastro_Produtos:= TCadastro_Produtos.Create(Self);
      Cadastro_Produtos.Caption := Caption;
      Cadastro_Produtos.ShowModal;
      Dados.Produtos.Open;
      Dados.Usuarios.Open;
end;

procedure TProcesso_Adicoes.cValorUnitarioMEChange(Sender: TObject);
begin
      With Dados do begin
           If (Adicoes.State = dsEdit) or (Adicoes.State = dsInsert) then begin
              If Dados.AdicoesValor_SemAdValorem.Value <= 0 then
                 Dados.AdicoesValor_SemAdValorem.Value := Dados.AdicoesValor_Unitario.Value;
           End;
      End;
end;

procedure TProcesso_Adicoes.bImpClick(Sender: TObject);
begin
      If OpenDialog1.Execute then begin
         Processo_AdicoesOrdem := TProcesso_AdicoesOrdem.Create(Self);
         Processo_AdicoesOrdem.Caption   := Caption;
         Processo_AdicoesOrdem.cPlanilha.Text := OpenDialog1.FileName;
         Processo_AdicoesOrdem.ShowModal;
      End;
end;

end.
