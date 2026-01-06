unit frmFinanceiro_Duplicar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, RXDBCtrl, RXCtrls, Vcl.ExtCtrls,
  RXSpin, DB, DBAccess, MSAccess, Funcoes, DateUtils, Grids, system.UITypes, DBGrids, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TFinanceiro_Duplicar = class(TForm)
    Panel1: TPanel;
    lBaixado: TLabel;
    bSair: TButton;
    bDuplicar: TButton;
    Panel3: TPanel;
    cBanco: TDBLookupComboBox;
    cObservacao: TDBMemo;
    lObservacao: TStaticText;
    StaticText13: TStaticText;
    cMulta: TDBEdit;
    StaticText14: TStaticText;
    cJuros: TDBEdit;
    StaticText15: TStaticText;
    cDesconto: TDBEdit;
    cValorTotal: TDBEdit;
    StaticText17: TStaticText;
    lClassificacao: TStaticText;
    lBeneficiario: TStaticText;
    lValorTitulo: TStaticText;
    lVencimento: TStaticText;
    cValorDocumento: TDBEdit;
    cNumeroDOC: TDBEdit;
    lProcesso: TStaticText;
    lDataProvisao: TStaticText;
    lDocumento: TStaticText;
    lNumeroDOC: TStaticText;
    lDataPrevisao: TStaticText;
    StaticText1: TStaticText;
    cValorParcela: TDBEdit;
    cClassificacao: TDBLookupComboBox;
    cProcesso: TDBLookupComboBox;
    cDataPrevisao: TDBDateEdit;
    cDataDoc: TDBDateEdit;
    cVencimento: TDBDateEdit;
    cBeneficiario: TDBLookupComboBox;
    cDocumento: TDBLookupComboBox;
    cTipo: TEdit;
    lModalidade: TStaticText;
    cModalidade: TDBLookupComboBox;
    StaticText2: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText4: TStaticText;
    cTotalBaixas: TCurrencyEdit;
    cSaldo: TCurrencyEdit;
    StaticText5: TStaticText;
    lAdiantamento: TStaticText;
    cNumeroForma: TDBEdit;
    lNumeroForma: TStaticText;
    lBanco: TStaticText;
    lForma: TStaticText;
    cFormaPagamento: TDBComboBox;
    cNumeroAdiantamento: TDBEdit;
    Panel2: TPanel;
    lDias: TStaticText;
    cDias: TRxSpinEdit;
    StaticText6: TStaticText;
    cQuantidade: TRxSpinEdit;
    DBEdit2: TDBEdit;
    StaticText7: TStaticText;
    tTemp: TMSQuery;
    lDiaFixo: TStaticText;
    cDiaFixo: TRxSpinEdit;
    tNumero: TMSQuery;
    cTipoCopia: TRadioGroup;
    cIncDoc: TCheckBox;
    Image2: TImage;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    cGrade: TRxDBGrid;
    TituloParcelas: TMSQuery;
    TituloParcelasRegistro: TSmallintField;
    TituloParcelasTitulo: TIntegerField;
    TituloParcelasParcela: TSmallintField;
    TituloParcelasVencimento: TDateTimeField;
    dsTituloParcelas: TDataSource;
    TituloParcelasValor: TCurrencyField;
    cIncVenc: TCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
    procedure cQuantidadeChange(Sender: TObject);
    procedure cDiaFixoChange(Sender: TObject);
    procedure cDiasChange(Sender: TObject);
    procedure cTipoCopiaClick(Sender: TObject);
    procedure CriaParcelas;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_Duplicar: TFinanceiro_Duplicar;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_Duplicar.bSairClick(Sender: TObject);
begin
      tTemp.SQL.Clear;
      tTemp.SQL.Add('DELETE FROM TituloParcelas WHERE Titulo = :pNumero');
      tTemp.ParamByName('pNumero').AsInteger := Dados.PagarReceberNumero.Asinteger;
      tTemp.Execute;
      Close;
end;

procedure TFinanceiro_Duplicar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Financeiro_Duplicar.Release;
      Financeiro_Duplicar := nil;
end;

procedure TFinanceiro_Duplicar.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_Duplicar.FormShow(Sender: TObject);
begin
      with tTemp do begin
           sql.Clear;
           sql.Add('delete from TituloParcelas where Titulo = :pNumero');
           parambyname('pNumero').AsInteger := Dados.PagarReceberNumero.Asinteger;
           execute;
      end;
      with TituloParcelas do begin
           sql.Clear;
           sql.Add('select * from TituloParcelas where Titulo = :pTitulo order by Vencimento');
           parambyname('pTitulo').AsInteger := Dados.PagarReceberNumero.AsInteger;
           open;
      end;
      with Dados.ClassificacaoFinanceira do begin
           sql.Clear;
           sql.Add('select * from ClassificacaoFinanceira where Codigo = :pCod');
           parambyname('pCod').Asstring := Dados.PagarReceberClassificacao.asstring;
           open;
      end;
      cGrade.Enabled := (cTipoCopia.ItemIndex = 0) and (cQuantidade.AsInteger > 1);
      With Dados do begin
           if PagarReceberTipo.Value = 'P' then begin
              cTipo.Text := 'PAGAMENTO';
              if not TiposDocumentosTributo.asboolean then begin
                 if not ClassificacaoFinanceiraDevolucao.AsBoolean then begin
                    lBeneficiario.Caption    := 'Fornecedor';
                    cBeneficiario.DataField  := 'Fornecedor';
                    cBeneficiario.ListField  := 'Codigo;Nome';
                    cBeneficiario.ListSource := Dados.dsFornecedores;
                 end else begin
                    lBeneficiario.Caption    := 'Cliente';
                    cBeneficiario.DataField  := 'Cliente';
                    cBeneficiario.ListField  := 'Codigo;Nome';
                    cBeneficiario.ListSource := Dados.dsClientes;
                 end;
              end else begin
                 lBeneficiario.Caption    := 'Orgão Público';
                 cBeneficiario.DataField  := 'Orgao';
                 cBeneficiario.ListField  := 'Codigo;Nome';
                 cBeneficiario.ListSource := Dados.dsOrgaos;
              end;
           end else begin
              if not ClassificacaoFinanceiraDevolucao.AsBoolean then begin
                 cTipo.Text               := 'RECEBIMENTO';
                 lBeneficiario.Caption    := 'Cliente';
                 cBeneficiario.DataField  := 'Cliente';
                 cBeneficiario.ListSource := Dados.dsClientes;
                 cBeneficiario.ListField  := 'Codigo;Nome';
              end else begin
                 cTipo.Text               := 'RECEBIMENTO';
                 lBeneficiario.Caption    := 'Fornecedor';
                 cBeneficiario.DataField  := 'Fornecedor';
                 cBeneficiario.ListField  := 'Codigo;Nome';
                 cBeneficiario.ListSource := Dados.dsFornecedores;
              end;
           end;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT SUM(Valor) AS Total_Baixado FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
           tTemp.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
           tTemp.Open;
           lBaixado.Visible := tTemp.FieldByName('Total_Baixado').AsCurrency = PagarReceberValor_Total.AsCurrency;
           cQuantidade.SetFocus;

           cIncDoc.Checked  := false;
           cIncDoc.Enabled  := false;
           cIncVenc.Checked := false;
           cIncVenc.Enabled := false;
      End;
end;

procedure TFinanceiro_Duplicar.bDuplicarClick(Sender: TObject);
var
    mAdiantamento_Numero,
    mBanco,
    mFornecedor,
    mModalidade_Pgto,
    mTransferencia_Banco,
    mSolicitacao_Numerario,
    mSolicitacao_Pgto,
    mNivel,
    mNumero,
    mTransferencia_Numero,
    mEmpresa,
    mFilial,
    mCliente : Integer;

    mCentro_Custo,
    mCheque_Assinado,
    mCheque_Assinado2,
    mCheque_Nominal,
    mClassificacao,
    mDocumento,
    mForma_Tipo,
    mFornecedor_Banco,
    mNumero_Documento,
    mNumero_FormaTipo,
    mOrgao,
    mProcesso,
    mParcela,
    mTipo,
    mTipo_Nota,
    mFiscal,
    mFornecedor_Agencia,
    mFornecedor_Conta,
    mObservacao : String;

    mCheque_Cruzado,
    mCheque_Visado,
    mCustoConta,
    mCustoSeletivo,
    mCustoEntrada,
    mTransferencia : Boolean;

    mData_Documento,
    mData_Vencimento : TDate;

    mDesconto,
    mJuros,
    mMulta,
    mValor_Baixado,
    mValor_Documento,
    mValor_Operacao,
    mValor_Parcela,
    mValor_Total : Real;

    mMensagem : String;
    mQtde     : Integer;
    mData     : TDate;
    mUltimoDia: Integer;
    mMes      : Integer;
    mAno      : Integer;
begin
      // Verifica se o total das parcelas confere com o total do titulo.
      TituloParcelas.Refresh;
      if cTipoCopia.ItemIndex = 0 then begin
         tTemp.SQL.Clear;
         TTemp.SQL.Add('SELECT ROUND(SUM(Valor), 2) AS Valor FROM TituloParcelas WHERE Titulo = :pTit');
         tTemp.ParamByName('pTit').AsInteger := Dados.PagarReceberNumero.AsInteger;
         tTemp.Open;

         if tTemp.FieldByName('Valor').Value <> Dados.PagarReceberValor_Documento.Value then begin
            MessageDlg('Total das Parcelas não confere com o total do documento!'+#13+#13+
                       'Parcelamento não sera gerado, corrija os valores para poder prosseguir.', mtError, [mbOK], 0);
            Abort;
         end;
      end else begin
         if cDiaFixo.AsInteger <= 0 then begin
            MessageDlg('Informe um dia fixo válido!', mtError, [mbOK], 0);
            Abort;
         end;
      end;

      If cQuantidade.AsInteger = 1 then begin
         mMensagem := 'Atenção!'+#13+#13+'Isso irá '+cTipoCopia.Items[cTipoCopia.ItemIndex]+' o lançamento selecionado.'+#13+#13+'Deseja realmente executar a operação?';
      end else begin
         mMensagem := 'Atenção!'+#13+#13+'Isso irá '+cTipoCopia.Items[cTipoCopia.ItemIndex]+' o lançamento selecionado '+cQuantidade.Text + ' vezes.'+#13+#13+'Deseja realmente executar a operação?';
      End;

      If MessageDlg(mMensagem, mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados do begin
           mAdiantamento_Numero   := PagarReceberAdiantamento_Numero.Value;
           mFornecedor            := PagarReceberFornecedor.Value;
           mModalidade_Pgto       := PagarReceberModalidade_Pgto.Value;
           mTransferencia_Banco   := PagarReceberTransferencia_Banco.Value;
           mSolicitacao_Numerario := PagarReceberSolicitacao_Numerario.Value;
           mSolicitacao_Pgto      := PagarReceberSolicitacao_Pgto.Value;
           mNivel                 := PagarReceberNivel.Value;
           mNumero                := PagarReceberNumero.Value;
           mTransferencia_Numero  := PagarReceberTransferencia_Numero.Value;
           mCliente               := PagarReceberCliente.Value;
           mCentro_Custo          := PagarReceberCentro_Custo.Value;
           mCheque_Assinado       := PagarReceberCheque_Assinado.Value;
           mCheque_Assinado2      := PagarReceberCheque_Assinado2.Value;
           mCheque_Nominal        := PagarReceberCheque_Nominal.Value;
           mClassificacao         := PagarReceberClassificacao.Value;
           mDocumento             := PagarReceberDocumento.Value;
           mFornecedor_Banco      := PagarReceberFornecedor_Banco.Value;
           mNumero_Documento      := PagarReceberNumero_Documento.Value;
           mOrgao                 := PagarReceberOrgao.Value;
           mProcesso              := PagarReceberProcesso.Value;
           mTipo                  := PagarReceberTipo.Value;
           mTipo_Nota             := PagarReceberTipo_Nota.Value;
           mFiscal                := PagarReceberFiscal.Value;
           mFornecedor_Agencia    := PagarReceberFornecedor_Agencia.Value;
           mFornecedor_Conta      := PagarReceberFornecedor_Conta.Value;
           mObservacao            := PagarReceberObservacao.AsString;
           mCheque_Cruzado        := PagarReceberCheque_Cruzado.Value;
           mCheque_Visado         := PagarReceberCheque_Visado.Value;
           mCustoConta            := PagarReceberCustoConta.Value;
           mCustoSeletivo         := PagarReceberCusto_Seletivo.Value;
           mCustoEntrada          := PagarReceberCusto_Entrada.Value;
           mTransferencia         := PagarReceberTransferencia.Value;
           mData_Documento        := PagarReceberData_Documento.Value;
           mData_Vencimento       := PagarReceberData_Vencimento.Value;
           mDesconto              := PagarReceberDesconto.Value;
           mJuros                 := PagarReceberJuros.Value;
           mMulta                 := PagarReceberMulta.Value;
           mValor_Baixado         := 0;
           mValor_Documento       := PagarReceberValor_Documento.Value;
           mValor_Operacao        := PagarReceberValor_Operacao.Value;
           mValor_Parcela         := PagarReceberValor_Parcela.Value;
           mValor_Total           := PagarReceberValor_Total.Value;
           mBanco                 := 0;
           mForma_Tipo            := '';
           mNumero_FormaTipo      := '';
           mData                  := PagarReceberData_Vencimento.Value;
           mEmpresa               := PagarReceberEmpresa.Value;
           mFilial                := PagarReceberFilial.Value;

           with TituloParcelas do begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM TituloParcelas WHERE Titulo = :pTit ORDER BY Registro');
                ParamByName('pTit').AsInteger := PagarReceberNumero.AsInteger;
                Open;
           end;

           for mQtde := 1 to cQuantidade.AsInteger do begin
               mParcela := InttoStr(mQtde)+'/'+cQuantidade.Text;

               if cTipoCopia.ItemIndex = 0 then begin
                  TituloParcelas.Locate('Registro', mQtde, [loCaseInsensitive]);
                  mData           := TituloParcelas.FieldByName('Vencimento').Value;
                  mValor_Parcela  := TituloParcelas.FieldByName('Valor').Value;
                  mValor_Operacao := TituloParcelas.FieldByName('Valor').Value;
                  mValor_Total    := TituloParcelas.FieldByName('Valor').Value;
               end else begin
                  // Incrementa o mês da data do documento se selecionado.
                  if cIncDoc.Checked then begin
                     mData_Documento := IncMonth(mData_Documento, 1);
                  end;
                  // Incrementa o mês da data do vencimento se selecionado.
                  if cIncVenc.Checked then begin
                     mData_Vencimento := IncMonth(mData_Vencimento, 1);
                     mData            := mData_Vencimento;
                  end;
               end;

               tNumero.SQL.Clear;
               tNumero.SQL.Add('Select MAX(Numero) AS Numero FROM PagarReceber');
               tNumero.Open;
               PagarReceber.Append;
                            if mAdiantamento_Numero > 0 then PagarReceberAdiantamento_Numero.Value := mAdiantamento_Numero;
                            PagarReceberBanco.Value                 := mBanco;
                            PagarReceberFornecedor.Value            := mFornecedor;
                            PagarReceberModalidade_Pgto.Value       := mModalidade_Pgto;
                            PagarReceberTransferencia_Banco.Value   := mTransferencia_Banco;
                            PagarReceberSolicitacao_Numerario.Value := mSolicitacao_Numerario;
                            PagarReceberSolicitacao_Pgto.Value      := mSolicitacao_Pgto;
                            PagarReceberNivel.Value                 := mNivel;
                            PagarReceberNumero.Value                := tNumero.FieldByName('Numero').AsInteger + 1;
                            PagarReceberTransferencia_Numero.Value  := mTransferencia_Numero;
                            PagarReceberCliente.Value               := mCliente;
                            PagarReceberCentro_Custo.Value          := mCentro_Custo;
                            PagarReceberCheque_Assinado.Value       := mCheque_Assinado;
                            PagarReceberCheque_Assinado2.Value      := mCheque_Assinado2;
                            PagarReceberCheque_Nominal.Value        := mCheque_Nominal;
                            PagarReceberClassificacao.Value         := mClassificacao;
                            PagarReceberDocumento.Value             := mDocumento;
                            PagarReceberForma_Tipo.Value            := mForma_Tipo;
                            PagarReceberFornecedor_Banco.Value      := mFornecedor_Banco;
                            PagarReceberNumero_Documento.Value      := mNumero_Documento+'/'+inttoStr(mQtde);
                            PagarReceberNumero_FormaTipo.Value      := mNumero_FormaTipo;
                            PagarReceberOrgao.Value                 := mOrgao;
                            PagarReceberProcesso.Value              := mProcesso;
                            PagarReceberParcela.Value               := mParcela;
                            PagarReceberTipo.Value                  := mTipo;
                            PagarReceberTipo_Nota.Value             := mTipo_Nota;
                            PagarReceberFiscal.Value                := mFiscal;
                            PagarReceberFornecedor_Agencia.Value    := mFornecedor_Agencia;
                            PagarReceberFornecedor_Conta.Value      := mFornecedor_Conta;
                            if cTipoCopia.ItemIndex = 0 then begin
                               PagarReceberObservacao.Value := mObservacao + ' (Parcela '+PoeZero(4,mQtde+1)+' de '+PoeZero(4, cQuantidade.AsInteger+1)+' do Lançamento '+InttoStr(mNumero)+')';
                            end else begin
                               PagarReceberObservacao.Value := mObservacao + ' (Copia '+PoeZero(4,mQtde)+' de '+PoeZero(4, cQuantidade.AsInteger)+' do Lançamento '+InttoStr(mNumero)+')';
                            end;
                            PagarReceberCheque_Cruzado.Value        := mCheque_Cruzado;
                            PagarReceberCheque_Visado.Value         := mCheque_Visado;
                            PagarReceberCustoConta.Value            := mCustoConta;
                            PagarReceberCusto_Seletivo.Value        := mCustoSeletivo;
                            PagarReceberCusto_Entrada.Value         := mCustoEntrada;
                            PagarReceberTransferencia.Value         := mTransferencia;
                            PagarReceberData_Documento.Value        := mData_Documento;
                            PagarReceberData_Vencimento.Value       := mData;
                            PagarReceberDesconto.Value              := mDesconto;
                            PagarReceberJuros.Value                 := mJuros;
                            PagarReceberMulta.Value                 := mMulta;
                            PagarReceberValor_Baixado.Value         := 0;
                            PagarReceberValor_Documento.Value       := mValor_Documento;
                            PagarReceberValor_Operacao.Value        := mValor_Operacao;
                            PagarReceberValor_Parcela.Value         := mValor_Parcela;
                            PagarReceberValor_Total.Value           := mValor_Total;
                            PagarReceberProvisorio.Value            := false;
                            PagarReceberEmpresa.Value               := mEmpresa;
                            PagarReceberFilial.Value                := mFilial;
               PagarReceber.Post;
               tNumero.Close;
               TituloParcelas.Next;
           End;

           // Deleta o titulo principal em caso de parcelamento.
           if cTipoCopia.ItemIndex = 0 then begin
              if PagarReceber.Locate('Numero', mNumero, [loCaseInsensitive]) then begin
                 PagarReceber.Delete;
              end;
           end;
      End;
      Close;
end;

procedure TFinanceiro_Duplicar.cQuantidadeChange(Sender: TObject);
begin
      cGrade.Enabled    := (cTipoCopia.ItemIndex = 0) and (cQuantidade.AsInteger > 1);
      bDuplicar.Enabled := false;
      If cQuantidade.Text <> '' then begin
         bDuplicar.Enabled := cQuantidade.AsInteger > 0;
         if (cTipoCopia.ItemIndex = 0) and (cQuantidade.AsInteger > 1) then begin
            CriaParcelas;
         end;
      End;
end;

procedure TFinanceiro_Duplicar.cDiaFixoChange(Sender: TObject);
begin
      If cDiaFixo.Text <> '' then begin
         if cDiaFixo.AsInteger > 0 then begin
            cDias.AsInteger := 0;
            if (cTipoCopia.ItemIndex = 0) and (cQuantidade.AsInteger > 1) then begin
               CriaParcelas;
            end;
         end;
      End;
end;

procedure TFinanceiro_Duplicar.cDiasChange(Sender: TObject);
begin
      if cDias.Text <> '' then begin
         if cDias.AsInteger > 0 then begin
            cDiaFixo.AsInteger := 0;
            if (cTipoCopia.ItemIndex = 0) and (cQuantidade.AsInteger > 1) then begin
               CriaParcelas;
            end;
         end;   
      end;
end;

procedure TFinanceiro_Duplicar.cTipoCopiaClick(Sender: TObject);
begin
      cDias.Enabled  := cTipoCopia.ItemIndex = 0;
      lDias.Enabled  := cTipoCopia.ItemIndex = 0;
      cGrade.Enabled := (cTipoCopia.ItemIndex = 0) and (cQuantidade.AsInteger > 1);

      if cTipoCopia.ItemIndex = 0 then begin
         cGrade.Color   := clWhite;
         cGrade.Enabled := true;
      end else begin
         cGrade.Color   := clBtnFace;
         cGrade.Enabled := false;
      end;

      if cTipoCopia.ItemIndex = 0 then begin
         bDuplicar.Caption := '&Parcelar';
        if cQuantidade.AsInteger > 1 then begin
           CriaParcelas;
        end;
      end else begin
         bDuplicar.Caption := '&Duplicar';
         tTemp.SQL.Clear;
         tTemp.SQL.Add('DELETE FROM TituloParcelas WHERE Titulo = :pNumero');
         tTemp.ParamByName('pNumero').AsInteger := Dados.PagarReceberNumero.Asinteger;
         tTemp.Execute;
         TituloParcelas.Refresh;
      end;

      bDuplicar.Caption := '&'+cTipoCopia.Items[cTipoCopia.ItemIndex];

      cIncDoc.Enabled  := true;
      cIncVenc.Enabled := true;
      If cTipoCopia.ItemIndex = 0 then begin
         cIncDoc.Checked  := false;
         cIncDoc.Enabled  := false;
         cIncVenc.Checked := false;
         cIncVenc.Enabled := false;
      End;
end;

procedure TFinanceiro_Duplicar.CriaParcelas;
var
   i: integer;
    mData: TDate;
    mUltimoDia,
    mMes,
    mAno: Integer;
begin
      tNumero.SQL.Clear;
      tNumero.SQL.Add('Select ISNULL(MAX(Registro), 0)+1 AS Reg FROM TituloParcelas');
      with Dados do begin
           tTemp.SQL.Clear;
           tTemp.SQL.Add('DELETE FROM TituloParcelas WHERE Titulo = :pNumero');
           tTemp.ParamByName('pNumero').AsInteger := PagarReceberNumero.Asinteger;
           tTemp.Execute;
           TituloParcelas.Refresh;

           mData := PagarReceberData_Vencimento.Value;

           for i := 1 to cQuantidade.AsInteger do begin
               // Gerando a data do vencimento do título.
               if cDiaFixo.AsInteger = 0 then begin
                  mData := mData + cDias.AsInteger;
                  // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                  if (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                     if (DayOfWeek(mData) = 1) then begin
                        if (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -2
                        else
                           mData := mData +1;
                     end;
                     if (DayOfWeek(mData) = 7) then begin
                        if (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -1
                        else
                           mData := mData +2;
                     end;
                  end;
               end else begin
                  mMes := MonthOf(mData)+1;
                  mAno := YearOf(mData);
                  if mMes > 12 then begin
                     mMes := 1;
                     mAno := mAno + 1;
                  end;

                  mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/'+InttoStr(mMes)+'/'+InttoStr(mAno))));
                  if mUltimoDia > cDiaFixo.AsInteger then begin
                     mData := StrtoDate(InttoStr(cDiaFixo.AsInteger)+'/'+InttoStr(mMes)+'/'+InttoStr(mAno));
                  end else begin
                     mData := StrtoDate(InttoStr(mUltimoDia)+'/'+InttoStr(mMes)+'/'+InttoStr(mAno));
                  end;
               end;

               tNumero.Open;
               TituloParcelas.Append;
                              TituloParcelasRegistro.Value   := tNumero.FieldByName('Reg').AsInteger;
                              TituloParcelasTitulo.Value     := PagarReceberNumero.AsInteger;
                              TituloParcelasParcela.Value    := i;
                              TituloParcelasVencimento.Value := mData;
                              TituloParcelasValor.Value      := PagarReceberValor_Documento.Value / cQuantidade.AsInteger;
               TituloParcelas.Post;
               tNumero.Close;
           end;
      end;
end;

end.
