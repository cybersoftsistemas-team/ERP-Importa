unit frmProcesso_Documentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls,
   RXDBCtrl, Mask, mdTabEnter, DB, Grids, DBGrids,
  MemDS, DBAccess, MSAccess, Buttons, ImgList, Menus, FUNCOES, RxCurrEdit;

type
  TProcesso_Documentos = class(TForm)
    XPPanel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    TabEnter1: TTabEnter;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tSoma: TMSQuery;
    tSomaSoma: TCurrencyField;
    bAdicoes: TButton;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    StaticText3: TStaticText;
    StaticText14: TStaticText;
    StaticText35: TStaticText;
    cProcesso: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit11: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    StaticText36: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    StaticText44: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    cDataAbertura: TDBDateEdit;
    DBDateEdit6: TDBDateEdit;
    cModalidade: TDBComboBox;
    StaticText13: TStaticText;
    cCondicaoVenda: TDBLookupComboBox;
    cFUNDAP: TDBCheckBox;
    GroupBox2: TGroupBox;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    StaticText33: TStaticText;
    cDataRegistro_DI: TDBDateEdit;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    cDI: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit22: TDBEdit;
    cICMS: TDBEdit;
    DBEdit24: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    StaticText39: TStaticText;
    DBEdit26: TDBEdit;
    StaticText43: TStaticText;
    cDiferido: TDBCheckBox;
    GroupBox1: TGroupBox;
    cFatura: TDBEdit;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cMoedaFOB: TDBLookupComboBox;
    StaticText6: TStaticText;
    DBEdit4: TDBEdit;
    StaticText7: TStaticText;
    cVolumes: TDBEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    DBEdit7: TDBEdit;
    StaticText12: TStaticText;
    cFOBME: TDBEdit;
    StaticText4: TStaticText;
    StaticText10: TStaticText;
    DBEdit8: TDBEdit;
    StaticText19: TStaticText;
    DBEdit14: TDBEdit;
    StaticText20: TStaticText;
    cMoedaFrete: TDBLookupComboBox;
    cFreteME: TDBEdit;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    cMoedaSeguro: TDBLookupComboBox;
    cSeguroME: TDBEdit;
    StaticText23: TStaticText;
    StaticText27: TStaticText;
    DBEdit19: TDBEdit;
    StaticText28: TStaticText;
    cPesoLiquido: TDBEdit;
    StaticText29: TStaticText;
    DBEdit21: TDBEdit;
    StaticText18: TStaticText;
    cOrigem: TDBEdit;
    cVia: TDBComboBox;
    lDoc: TStaticText;
    DBEdit10: TDBEdit;
    StaticText15: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Grade: TRxDBGrid;
    lTotalDesp: TStaticText;
    cTotalDespesas: TCurrencyEdit;
    lTotalCusto: TStaticText;
    cTotalDespesasCusto: TCurrencyEdit;
    lTotalRec: TStaticText;
    cRecebimentos: TCurrencyEdit;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    cValor_ICMS: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    StaticText2: TStaticText;
    StaticText11: TStaticText;
    StaticText32: TStaticText;
    DBEdit6: TDBEdit;
    StaticText34: TStaticText;
    Label1: TLabel;
    Button1: TButton;
    StaticText42: TStaticText;
    DBEdit15: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cDiferidoClick(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure bAdicoesClick(Sender: TObject);
    procedure cViaChange(Sender: TObject);
    procedure StaticText13Click(Sender: TObject);
    procedure StaticText14Click(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GroupBox5DblClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure StaticText8Click(Sender: TObject);
    procedure cDIChange(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProcessoChange(Sender: TObject);
    procedure cDataAberturaChange(Sender: TObject);
    procedure cVolumesChange(Sender: TObject);
    procedure cFOBMEChange(Sender: TObject);
    procedure cMoedaFOBClick(Sender: TObject);
    procedure cFreteMEChange(Sender: TObject);
    procedure cMoedaFreteClick(Sender: TObject);
    procedure cICMSChange(Sender: TObject);
    procedure cDataRegistro_DIChange(Sender: TObject);
    procedure cDataRegistro_DIExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cFUNDAPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Processo_Documentos: TProcesso_Documentos;

implementation

Uses frmDados, frmProcesso_Adicoes, frmCadastro_Incoterms,
  frmCadastro_Clientes, frmMenu_Principal, frmCadastro_TipoProduto,
  frmConversor_Moedas;

{$R *.dfm}

procedure TProcesso_Documentos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TProcesso_Documentos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then begin
            Dados.ProcessosDOCEntreposto.Value := False;
            Dados.ProcessosDOCFUNDAP.Value     := True;
            Dados.ProcessosDOCImp_Exp.Value    := 1;
         End;   
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         TabSheet1.Enabled := True; 
         cProcesso.SetFocus;
         bAdicoes.Enabled := False;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.ProcessosDOC.Refresh;
         Screen.Cursor     := crDefault;
         TabSheet1.Enabled := False;
         bAdicoes.Enabled  := True;
      End;
      cProcessoExit(Self);
end;

procedure TProcesso_Documentos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
        With Dados do Begin
             ProcessosDOC.Close;
             Clientes.Close;
             Moedas.Close;
             Paises.Close;
             Cotacao.Close;
             PagarReceber.Close;
             Adicoes.Close;
             TipoContas.Close;
             Incoterms.Close;
             TipoContas.Close;
             TipoProduto.Close;
             Configuracao.Close;
             PagarReceber.RestoreSQL;
        End;
        Processo_Documentos.Release;
        Processo_Documentos := nil;
end;

procedure TProcesso_Documentos.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        PageControl1.ActivePage := TabSheet1;
        With Dados do Begin
             ProcessosDOC.Open;
             Clientes.Open;
             Moedas.Open;
             Paises.Open;
             Cotacao.Open;
             TipoContas.Open;
             Incoterms.Open;
             TipoContas.Open;
             TipoProduto.Open;
             Configuracao.Open;
             // Pegando os despesas de custo do processo no financeiro.
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = :pProcesso) ORDER BY Tipo_Conta');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Open;
             PagarReceber.First;
             cTotalDespesasCusto.Value := 0;
             cTotalDespesas.Value      := 0;
             cRecebimentos.Value       := 0;
             While not PagarReceber.Eof do Begin
                   If PagarReceberPagamento_Recebimento.Value = 1 then begin
                      cTotalDespesas.Value := cTotalDespesas.Value + PagarReceberValor_Total.Value;
                      If PagarReceberCustoConta.Value = True then begin
                         cTotalDespesasCusto.Value := cTotalDespesasCusto.Value + PagarReceberValor_Total.Value;
                      End;
                   end else begin
                      cRecebimentos.Value := cRecebimentos.Value + PagarReceberValor_Total.Value;
                   End;
                   PagarReceber.Next;
             End;
        End;
        Screen.Cursor := crDefault;
end;

procedure TProcesso_Documentos.cDiferidoClick(Sender: TObject);
begin
        cValor_ICMS.Enabled := not cDiferido.Checked;
        cICMS.Enabled       := not cDiferido.Checked;
end;

procedure TProcesso_Documentos.cProcessoExit(Sender: TObject);
begin
       // Pegando os despesas do processo no financeiro.
       // Pegando os despesas de custo do processo no financeiro.
       // Pegando os despesas totais do processo no financeiro.
       Screen.Cursor := crSQLWait;
       With Dados do Begin
            PagarReceber.SQL.Clear;
            PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = :pProcesso) ORDER BY Tipo_Conta');
            PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
            PagarReceber.Open;
            PagarReceber.First;
            cTotalDespesasCusto.Value := 0;
            cTotalDespesas.Value      := 0;
            cRecebimentos.Value       := 0;
            While not PagarReceber.Eof do Begin
                  If PagarReceberPagamento_Recebimento.Value = 1 then begin
                     cTotalDespesas.Value := cTotalDespesas.Value + PagarReceberValor_Total.Value;
                     If PagarReceberCustoConta.Value = True then begin
                        cTotalDespesasCusto.Value := cTotalDespesasCusto.Value + PagarReceberValor_Total.Value;
                     End;
                  end else begin
                     cRecebimentos.Value := cRecebimentos.Value + PagarReceberValor_Total.Value;
                  End;
                  PagarReceber.Next;
            End;
       End;
       Screen.Cursor := crDefault;
end;

procedure TProcesso_Documentos.bAdicoesClick(Sender: TObject);
begin
      Processo_Adicoes := TProcesso_Adicoes.Create(Self);
      Processo_Adicoes.Caption := 'Manutenção das adições da DI';
      Processo_Adicoes.ShowModal;
end;

procedure TProcesso_Documentos.cViaChange(Sender: TObject);
begin
      If cVia.Text = 'MARÍTIMO'    then lDOC.Caption := 'BL Nº';
      If cVia.Text = 'AÉREO'       then lDOC.Caption := 'AWB Nº';
      If cVia.Text = 'RODOVIÁRIO'  then lDOC.Caption := 'CTR Nº';
      If cVia.Text = 'FERROVIÁRIO' then lDOC.Caption := 'CTR Nº';
end;

procedure TProcesso_Documentos.StaticText13Click(Sender: TObject);
begin
       Cadastro_Incoterms := TCadastro_Incoterms.Create(Self);
       Cadastro_Incoterms.caption := Caption;
       Cadastro_Incoterms.Showmodal;
       Dados.ProcessosDOCIncoterms.Value := Menu_Principal.mMem_Incoterm;
       Dados.Incoterms.Open;
end;

procedure TProcesso_Documentos.StaticText14Click(Sender: TObject);
begin
        Cadastro_Clientes := TCadastro_Clientes.Create(Self);
        Cadastro_Clientes.Caption := Caption;
        Cadastro_Clientes.ShowModal;
        Dados.ProcessosDOCCliente.Value := Menu_Principal.mMem_Cliente;
        Dados.Clientes.Open;
end;

procedure TProcesso_Documentos.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do Begin
           If (Column.FieldName = 'CustoConta') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('CustoConta').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
      End;
end;
              
procedure TProcesso_Documentos.GroupBox5DblClick(Sender: TObject);
begin
       With GroupBox5 do begin
            If Tag = 0 then begin
               Top    := GroupBox2.Top;
               Height := GroupBox5.Height + 235;
               Tag    := 1;
               Grade.Height       := Grade.Height + 235;
               lTotalRec.Top      := Height - 26;
               cRecebimentos.Top  :=  Height - 26;
               lTotalDesp.Top     := Height - 49;
               cTotalDespesas.Top :=  Height - 49;
               lTotalCusto.Top     := Height - 72;
               cTotalDespesasCusto.Top :=  Height - 72;
            end else begin
               Tag    := 0;
               Height := GroupBox5.Height - 235;
               Grade.Height := Grade.Height - 235;
               lTotalRec.Top      := Height - 26;
               cRecebimentos.Top  :=  Height - 26;
               lTotalDesp.Top     := Height - 49;
               cTotalDespesas.Top :=  Height - 49;
               lTotalCusto.Top     := Height - 72;
               cTotalDespesasCusto.Top :=  Height - 72;
               Top    := 236;
            End;
       End;
end;

procedure TProcesso_Documentos.GradeCellClick(Column: TColumn);
begin
//      lTotalCusto.Caption := Column.FieldName;
      With Dados do begin
          If (Column.FieldName = 'CustoConta') and (PagarReceberCustoConta.Value = True) then begin
             If MessageDlg('Deseja remover esta despesa do custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                PagarReceber.Edit;
                             PagarReceberCustoConta.Value := False;
                PagarReceber.Post;             
             End;
          End else begin
             If (Column.FieldName = 'CustoConta') and (PagarReceberCustoConta.Value = False) then begin
                If MessageDlg('Deseja acrecentar esta despesa do custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                   PagarReceber.Edit;
                                PagarReceberCustoConta.Value := True;
                   PagarReceber.Post;
                End;
             End;
          End;
      End;
end;

procedure TProcesso_Documentos.StaticText8Click(Sender: TObject);
begin
        Cadastro_TipoProduto := TCadastro_TipoProduto.Create(Self);
        Cadastro_TipoProduto.Caption := Caption;
        Cadastro_TipoProduto.ShowModal;
        Dados.ProcessosDOCTipo_Mercadoria.Value := Menu_Principal.mMem_TipoProduto;
        Dados.TipoProduto.Open;
end;

procedure TProcesso_Documentos.cDIChange(Sender: TObject);
begin
        bAdicoes.Enabled := Dados.ProcessosDOCNumero_DI.Value <> '';
        CDI.Color := clWindow;
end;

procedure TProcesso_Documentos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
     If Button = nbPost then begin
        cFOBME.Text    := RemoveCaracter('.','',cFOBME.Text);
        cFreteME.Text  := RemoveCaracter('.','',cFreteME.Text);
        cSeguroME.Text := RemoveCaracter('.','',cSeguroME.Text);
        If Trim(cProcesso.Text) = '' then begin
           cProcesso.Color := clRed;
           ShowMessage('Você deve informar o [Número do Processo].');
           cProcesso.SetFocus;
           Abort;
        End;
        If Trim(cCondicaoVenda.Text) = '' then begin
           ShowMessage('Você deve informar qual a [Condição de Venda].');
           cCondicaoVenda.SetFocus;
           Abort;
        End;
        If Trim(RemoveCaracter('/', '', cDataAbertura.EditText)) = '' then begin
           cDataAbertura.Color := clRed;
           ShowMessage('Você deve informar a [Data da Abertura] do processo.');
           cDataAbertura.SetFocus;
           Abort;
        End;
        If Trim(cModalidade.Text) = '' then begin
           ShowMessage('Você deve informar qual a [Modalidade] da importação.');
           cModalidade.SetFocus;
           Abort;
        End;
        If (Trim(cVolumes.Text) = '') or (StrtoInt(cVolumes.Text) = 0) then begin
           cVolumes.Color := clRed;
           ShowMessage('Você deve informar a quantidade de [Volumes] da importação.');
           cVolumes.SetFocus;
           Abort;
        End;
        If (Trim(cFOBME.Text) = '') or (StrtoCurr(cFOBME.Text) = 0) then begin
           cFOBME.Color := clRed;
//           ShowMessage('Você deve informar o valor do [FOB] em moeda estrangeira.');
//           cFOBME.SetFocus;
//           Abort;
        End;
        If (Trim(cFreteME.Text) = '') or (StrtoCurr(cFreteME.Text) = 0) then begin
           cFreteME.Color := clRed;
           ShowMessage('Você deve informar o valor do [Frete] em moeda estrangeira.');
           cFreteME.SetFocus;
           Abort;
        End;
        If Trim(cMoedaFOB.Text) = '' then begin
           ShowMessage('Você deve informar em qual [Moeda] esta o valor do FOB.');
           cMoedaFOB.SetFocus;
           Abort;
        End;
        If Trim(cMoedaFrete.Text) = '' then begin
           ShowMessage('Você deve informar em qual [Moeda] esta o valor do Frete.');
           cMoedaFrete.SetFocus;
           Abort;
        End;
        If (Trim(cSeguroME.Text) <> '') and (StrtoCurr(cSeguroME.Text) <> 0) and (Trim(cMoedaSeguro.Text) = '') then begin
           ShowMessage('Você deve informar em qual [Moeda] esta o valor do Seguro.');
           cMoedaSeguro.SetFocus;
           Abort;
        End;
        If Trim(cDI.Text) = '' then begin
           cDI.Color := clRed;
           ShowMessage('Você deve informar o número da [DI].');
           cDI.SetFocus;
           Abort;
        End;
        If Trim(RemoveCaracter('/', '', cDataRegistro_DI.EditText)) = '' then begin
           cDataRegistro_DI.Color := clRed;
           ShowMessage('Você deve informar a [Data do Registro] da DI.');
           cDataRegistro_DI.SetFocus;
           Abort;
        End;
        If (cDiferido.Checked = False) and (cICMS.Text = '') then begin
           cICMS.Color := clRed;
           ShowMessage('Você deve informar a aliqutota do [ICMS].');
           cICMS.SetFocus;
           Abort;
        End;
     End;
end;

procedure TProcesso_Documentos.cProcessoChange(Sender: TObject);
begin
       cProcesso.Color := clWindow;
end;

procedure TProcesso_Documentos.cDataAberturaChange(Sender: TObject);
begin
      cDataAbertura.Color := clWindow;
end;

procedure TProcesso_Documentos.cVolumesChange(Sender: TObject);
begin
           cVolumes.Color := clWindow;
end;

procedure TProcesso_Documentos.cFOBMEChange(Sender: TObject);
begin
       cFOBME.Color := clWindow;
end;

procedure TProcesso_Documentos.cMoedaFOBClick(Sender: TObject);
begin
      cMoedaFOB.Color := clWindow;
end;

procedure TProcesso_Documentos.cFreteMEChange(Sender: TObject);
begin
     cFreteME.Color := clWindow;
end;

procedure TProcesso_Documentos.cMoedaFreteClick(Sender: TObject);
begin
      cMoedaFrete.Color := clWindow;
end;

procedure TProcesso_Documentos.cICMSChange(Sender: TObject);
begin
       cICMS.Color := clWindow;
end;

procedure TProcesso_Documentos.cDataRegistro_DIChange(Sender: TObject);
begin
      cDataRegistro_DI.Color := clWindow;
end;

procedure TProcesso_Documentos.cDataRegistro_DIExit(Sender: TObject);
begin
       With Dados do Begin
            If ProcessosDOCFOB_ME.Value <> 0 then begin
               If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_FOB.Value, ProcessosDOCData_RegistroDI.Value]), [loCaseInsensitive]) = True then begin
                  ProcessosDOCTaxa_FOB.Value := CotacaoValor.Value;
                  ProcessosDOCFOB.Value      := (ProcessosDOCFOB_ME.Value * CotacaoValor.Value );
               End;
            End;
            If ProcessosDOCFrete_ME.Value <> 0 then begin
               If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Frete.Value, ProcessosDOCData_RegistroDI.Value]), [loCaseInsensitive]) = True then begin
                  ProcessosDOCTaxa_Frete.Value := CotacaoValor.Value;
                  ProcessosDOCFrete.Value      := (ProcessosDOCFrete_ME.Value * CotacaoValor.Value );
               End;
            End;
            If ProcessosDOCSeguro_ME.Value <> 0 then begin
               If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Seguro.Value, ProcessosDOCData_RegistroDI.Value]), [loCaseInsensitive]) = True then begin
                  ProcessosDOCTaxa_Seguro.Value := CotacaoValor.Value;
                  ProcessosDOCSeguro.Value      := (ProcessosDOCSeguro_ME.Value * CotacaoValor.Value );
               End;
            End;
       End;
end;

procedure TProcesso_Documentos.Button1Click(Sender: TObject);
begin
       Conversor_Moedas := TConversor_Moedas.Create(Self);
       Conversor_Moedas.ShowModal;
end;

procedure TProcesso_Documentos.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa de processos', 'Processos / DI / BL',mPesquisa);
      If Dados.ProcessosDOC.Locate('Processo', mPesquisa, [loCaseInsensitive]) = False then begin
         If Dados.ProcessosDOC.Locate('Numero_DI', mPesquisa, [loCaseInsensitive]) = False then begin
            If Dados.ProcessosDOC.Locate('Numero_DOC', mPesquisa, [loCaseInsensitive]) = False then begin
               ShowMessage('Nenhum "Processo, DI ou BL" encontrados com este número!');
            End;
         End;
      End;
end;

procedure TProcesso_Documentos.cFUNDAPClick(Sender: TObject);
begin
     If (Dados.ProcessosDOC.State = dsInsert) or (Dados.ProcessosDOC.State = dsEdit) then
        Dados.ProcessosDOCICMS_DIferido.Value := Dados.ProcessosDOCFUNDAP.Value;
end;

end.
