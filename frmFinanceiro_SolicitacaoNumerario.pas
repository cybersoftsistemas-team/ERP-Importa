unit frmFinanceiro_SolicitacaoNumerario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXDBCtrl, Vcl.StdCtrls, Mask,
  RXCtrls, Vcl.ExtCtrls, DBCtrls, Buttons, Funcoes, ppParameter, ppBands, ppCtrls, ppVar, ppReport,  system.UITypes, ppDBPipe, DateUtils, Grids, DBGrids, ppDesignLayer, ppPrnabl, ppClass,
  ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS, RxToolEdit;

type
  TFinanceiro_SolicitacaoNumerario = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bItens: TButton;
    tNumero: TMSQuery;
    Panel2: TPanel;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    cProcesso: TDBLookupComboBox;
    StaticText11: TStaticText;
    cSN: TDBEdit;
    Navega: TDBNavigator;
    cDataVencimento: TDBDateEdit;
    cDataPrevisao: TDBDateEdit;
    Grade: TDBGrid;
    StaticText1: TStaticText;
    cTotal: TDBEdit;
    bImprimir: TButton;
    tPagarReceber: TMSQuery;
    dstPagarReceber: TDataSource;
    pBancos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    pPagarReceber: TppDBPipeline;
    rSN: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppDBImage1: TppDBImage;
    ppDBText7: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppShape14: TppShape;
    ppLabel15: TppLabel;
    ppShape15: TppShape;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppShape20: TppShape;
    ppLabel23: TppLabel;
    ppShape21: TppShape;
    ppLabel24: TppLabel;
    ppShape22: TppShape;
    ppLabel25: TppLabel;
    ppShape23: TppShape;
    ppLabel26: TppLabel;
    ppShape24: TppShape;
    ppLabel27: TppLabel;
    ppShape25: TppShape;
    ppLabel28: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppShape26: TppShape;
    ppLabel29: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppVariable2: TppVariable;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine21: TppLine;
    ppLabel30: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel31: TppLabel;
    ppVariable4: TppVariable;
    ppLine24: TppLine;
    ppVariable5: TppVariable;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppShape28: TppShape;
    ppLine28: TppLine;
    ppLabel32: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLabel33: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine32: TppLine;
    ppDBText24: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppParameterList1: TppParameterList;
    tBaixas: TMSQuery;
    ppVariable1: TppVariable;
    ppDBText1: TppDBText;
    StaticText2: TStaticText;
    cClassificacao: TDBLookupComboBox;
    StaticText3: TStaticText;
    cCentroCusto: TDBLookupComboBox;
    StaticText4: TStaticText;
    cCliente: TDBLookupComboBox;
    StaticText5: TStaticText;
    lObservacao: TStaticText;
    cObservacao: TDBMemo;
    cDocumento: TDBLookupComboBox;
    tItens: TMSQuery;
    StaticText8: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText10: TStaticText;
    cData: TDBEdit;
    StaticText12: TStaticText;
    DBEdit2: TDBEdit;
    tLancamento: TMSQuery;
    tLancamentoNumero: TSmallintField;
    Image2: TImage;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    ppShape1: TppShape;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bItensClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppVariable5Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable4Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure cProcessoExit(Sender: TObject);
    procedure GerarFinanceiro(Edita:Boolean);
//    procedure GerarContabil;
//    procedure ChecaConta(ContaD:String; ContaC:String);
//    Function  ConverteHistorico(Historico: String):String;
  private
    { Private declarations }
  public
    { Public declarations }
    mCompClass
   ,mCompBancos
   ,mContaDebito
   ,mContaCredito: String;
  end;

var
  Financeiro_SolicitacaoNumerario: TFinanceiro_SolicitacaoNumerario;

implementation

uses frmDados, frmFinanceiro_SolicitacaoItens, frmJanela_Processamento, frmMenu_Principal, frmDMContab;

{$R *.dfm}

procedure TFinanceiro_SolicitacaoNumerario.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_SolicitacaoNumerario.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_SolicitacaoNumerario.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, dmContab, nil, nil);
      Financeiro_SolicitacaoNumerario.Release;
      Financeiro_SolicitacaoNumerario := nil;
end;

procedure TFinanceiro_SolicitacaoNumerario.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           
           with Configuracao do begin
                Open;
                mCompBancos := 'Bancos';
                if fieldbyname('Compartilhar_Bancos').asboolean then mCompBancos := 'Cybersoft_Cadastros.dbo.Bancos';
                mCompClass := 'ClassificacaoFinanceira';
                if fieldbyname('Compartilhar_Classificacao').asboolean then mCompClass:= 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira';
           end;

           SN.SQL.Clear;
           SN.SQL.Add('SELECT *');
           SN.SQL.Add('FROM   SolicitacaoNumerario WHERE(Data_Cadastro > :pDataFechamento)');
           SN.ParamByName('pDataFechamento').AsDate := EmpresasFechamento_Financeiro.AsDateTime;
           SN.SQL.Add('ORDER BY Numero');
           SN.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
           CentroCusto.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Cliente > 0) ORDER BY Processo');
           ProcessosDOC.Open;
           
           with Bancos do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM '+mCompBancos+' WHERE(Desativado <> 1) ORDER BY Nome');
                Open;
           end;
           with ClassificacaoFinanceira do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM '+mCompClass+' WHERE(Tipo = ''R'') AND (Adiantamento = 1) AND (Desativada <> 1) ORDER BY Descricao');
                Open;
           end;

           TiposDocumentos.SQL.Clear;
           TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos ORDER BY Descricao');
           TiposDocumentos.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos');
           Orgaos.Open;

           ModalidadesPgto.SQL.Clear;
           ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
           ModalidadesPgto.Open;

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Codigo');
           Historicos.Open;
     End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_SolicitacaoNumerario.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      bImprimir.Enabled := Dados.SNValor_Total.AsCurrency > 0;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := true;
         bItens.Enabled := false;
         cProcesso.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.SN.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor  := crDefault;
         bItens.Enabled := true;
      End;
end;

procedure TFinanceiro_SolicitacaoNumerario.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     With Dados, dmContab do begin
          // Verifica fechamento do período.
          If Button = nbPost then begin
             If (SNData_Previsao.Value <= EmpresasFechamento_Financeiro.Value) then begin
                ShowMessage('Data de previsão da solicitação, esta dentro de um período já fechado.');
                cDataPrevisao.SetFocus;
                Abort;
             End;
             If (SNData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) then begin
                ShowMessage('Data de vencimento da solicitação, esta dentro de um período já fechado.');
                cDataVencimento.SetFocus;
                Abort;
             End;
          End;
          
          // Verifica horario para alteração da solicitação de numerário.
          If (Button = nbDelete) or (Button = nbEdit) then begin
             If (Trim(ConfiguracaoHora_Solicitacao.AsString) <> '') and (Trim(Menu_Principal.mUsuarioNome) <> 'ADMINISTRADOR')   then begin
                If Time > StrtoTime(ConfiguracaoHora_Solicitacao.AsString) then begin
                   MessageDlg('Atenção!'+#13+#13+'Esta Solicitação de Numerário atingiu a hora limite.'+#13+#13+'Somente um usuário administrador podera altera-la.', mtInformation, [mbOK], 0);
                   Abort;
                End;
             End;
          End;

          // Verifica se houve alguma baixa para a solicitação.
          If (Button = nbDelete) or (Button = nbEdit) then begin
             tBaixas.SQL.Clear;
             tBaixas.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE(Numero IN(SELECT Lancamento FROM ItensSolicitacao WHERE(Numero = :pSN)))');
             tBaixas.ParamByName('pSN').AsInteger := Dados.SNNumero.AsInteger;
             tBaixas.Open;

             If tBaixas.FieldByName('Qtde').AsInteger > 0 then begin
                If (Button = nbDelete) or (Button = nbEdit) or (Button = nbInsert) then begin
                    MessageDlg('Atenção!'+#13+#13+'Já foram baixados lançamentos desta solicitação, solicitação não pode ser alterada, ou excluída.', mtInformation, [mbOk], 0);
                End;
                Dados.SN.Cancel;
                Abort;
             End;
          End;

          If Button = nbPost then begin
             If Trim(cDocumento.Text) = '' then begin
                ShowMessage('Você deve informar o [Documento] da solicitação.');
                cDocumento.SetFocus;
                Abort;
             End;
             If Trim(RemoveCaracter('/', '', cDataPrevisao.Text)) = '' then begin
                ShowMessage('Você deve informar a [Data da Previsão] da solicitação.');
                cDataPrevisao.SetFocus;
                Abort;
             End;
             If Trim(RemoveCaracter('/', '', cDataVencimento.Text)) = '' then begin
                ShowMessage('Você deve informar a [Data do Vencimento] da solicitação.');
                cDataVencimento.SetFocus;
                Abort;
             End;
             If Trim(cCliente.Text) = '' then begin
                ShowMessage('Você deve informar o [Cliente] da solicitação.');
                cCliente.SetFocus;
                Abort;
             End;
             If Trim(cClassificacao.Text) = '' then begin
                ShowMessage('Você deve informar a [Classificação Financeira] da solicitação.');
                cClassificacao.SetFocus;
                Abort;
             End;
          End;

          If (Button = nbPost) and (SN.State = dsInsert) then begin
             tNumero.SQL.Clear;
             tNumero.SQL.Add('SELECT MAX(Numero) AS SN FROM SolicitacaoNumerario');
             tNumero.Open;
             SNNumero.Value        := tNumero.FieldByName('SN').AsInteger + 1;
             SNData_Cadastro.Value := Date;
             SNHora_Cadastro.Value := TimetoStr(Time);
             tNumero.Close;
          End;

          // Lançamentos do financeiro.
          If (Button = nbPost) and (SN.State = dsEdit) then begin
             GerarFinanceiro(false);
          End;

          If (Button = nbDelete) then begin
             If MessageDlg('Deseja realmente excluir esta solicitação de numerário?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                ItensSN.SQL.Clear;
                ItensSN.SQL.Add('DELETE FROM ItensSolicitacao WHERE(Numero = :pNumero)');
                ItensSN.ParamByName('pNumero').AsInteger := SNNumero.AsInteger;
                ItensSN.Execute;
                ItensSN.SQL.Clear;
                ItensSN.SQL.Add('SELECT * FROM ItensSolicitacao ORDER BY Numero');

                PagarReceber.SQL.Clear;
                PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE(Solicitacao_Numerario = :pSN)');
                PagarReceber.ParamByName('pSN').AsInteger := SNNumero.AsInteger;
                PagarReceber.Execute;
                PagarReceber.SQL.Clear;
                PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Solicitacao_Numerario = :pSN)');
                PagarReceber.ParamByName('pSN').AsInteger := SNNumero.AsInteger;
                PagarReceber.Open;
                {
                Lancamentos.SQL.Clear;
                Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE(Tipo_Nota = :pTipo) AND (Nota_Fiscal = :pNota)');
                Lancamentos.ParamByName('pTipo').AsString  := 'SN';
                Lancamentos.ParamByName('pNota').AsInteger := SNNumero.AsInteger;
                Lancamentos.Execute;
                }
                {
                Lancamentos.SQL.Clear;
                Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE(Tipo_Documento = :pTipo) AND (Documento = :pNota)');
                Lancamentos.ParamByName('pTipo').AsString  := 'SN';
                Lancamentos.ParamByName('pNota').AsInteger := SNNumero.AsInteger;
                Lancamentos.Execute;

                Lancamentos.SQL.Clear;
                Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE(Documento = :pNota) AND (Data_Documento = :pData)');
                Lancamentos.ParamByName('pNota').AsInteger  := SNNumero.AsInteger;
                Lancamentos.ParamByName('pData').AsDateTime := SNData.AsDateTime;
                Lancamentos.Open;
                }
             end else begin
                Abort;
             End;
          End;

          // Registra log do usuario.
          LogDados(SN, '('+SNNumero.AsString+') de '+SNData.AsString, SN.State);
     End;
end;

procedure TFinanceiro_SolicitacaoNumerario.bItensClick(Sender: TObject);
begin
      // Verifica horario para alteração da solicitação de numerário.
      If (Trim(Dados.ConfiguracaoHora_Solicitacao.AsString) <> '') and (Trim(Menu_Principal.mUsuarioNome) <> 'ADMINISTRADOR')   then begin
         If Time > StrtoTime(Dados.ConfiguracaoHora_Solicitacao.AsString) then begin
            MessageDlg('Atenção!'+#13+#13+'Esta Solicitação de Numerário atingiu a hora limite.'+#13+#13+'Somente um usuário administrador podera altera-la.', mtInformation, [mbOK], 0);
            Abort;
         End;
      End;

      tBaixas.SQL.Clear;
      tBaixas.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE(Numero IN(SELECT Lancamento FROM ItensSolicitacao WHERE(Numero = :pSN)))');
      tBaixas.ParamByName('pSN').AsInteger := Dados.SNNumero.AsInteger;
      tBaixas.Open;

      If tBaixas.FieldByName('Qtde').AsInteger > 0 then begin
         MessageDlg('Atenção!'+#13+#13+'Já foram baixados lançamentos desta solicitação, solicitação não pode ser alterada.', mtInformation, [mbOk], 0);
         Abort;
      End;

      with Dados.ClassificacaoFinanceira do begin 
           SQL.Clear;
           SQL.Add('SELECT * FROM '+mCompClass+' WHERE(Tipo = ''P'') AND (Adiantamento <> 1) AND (Desativada <> 1) ORDER BY Descricao');
           Open;
      end;

      Financeiro_SolicitacaoItens := TFinanceiro_SolicitacaoItens.Create(Self);
      Financeiro_SolicitacaoItens.Caption := Caption;
      Financeiro_SolicitacaoItens.ShowModal;

      with Dados.ClassificacaoFinanceira do begin 
           SQL.Clear;
           SQL.Add('SELECT * FROM '+mCompClass+' WHERE(Tipo = ''R'') AND (Adiantamento = 1) AND (Desativada <> 1) ORDER BY Descricao');
           Open;
      end;

      GerarFinanceiro(true);

      bImprimir.Enabled := Dados.SNValor_Total.AsCurrency > 0;
end;

procedure TFinanceiro_SolicitacaoNumerario.bImprimirClick(Sender: TObject);
begin
      With Dados do begin
           {
           tPagarReceber.SQL.Clear;
           tPagarReceber.SQL.Add('SELECT PagarReceber.Valor_Documento,');
           tPagarReceber.SQL.Add('       PagarReceber.Data_Vencimento,');
           tPagarReceber.SQL.Add('       PagarReceber.Processo,');
           tPagarReceber.SQL.Add('       PagarReceber.Solicitacao_Numerario,');
           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
              tPagarReceber.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) AS Classificacao,');
           end else begin
              tPagarReceber.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) AS Classificacao,');
           End;
           tPagarReceber.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = :pCodigo)) AS Cliente,');
           tPagarReceber.SQL.Add('       (SELECT DISTINCT Nome FROM Cybersoft_Cadastros.dbo.Moedas, ProcessosDocumentos WHERE(Codigo = ProcessosDocumentos.Moeda_FOB) AND (ProcessosDocumentos.Processo = PagarReceber.Processo)) AS Moeda,');
           tPagarReceber.SQL.Add('       (SELECT DISTINCT Taxa_FOB FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = PagarReceber.Processo)) AS Taxa,');
           tPagarReceber.SQL.Add('       (SELECT DISTINCT FOB FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = PagarReceber.Processo)) AS FOB_Real,');
           tPagarReceber.SQL.Add('       (SELECT DISTINCT FOB_ME FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = PagarReceber.Processo)) AS FOB_ME');
           tPagarReceber.SQL.Add('FROM   PagarReceber');
           tPagarReceber.SQL.Add('WHERE (Solicitacao_Numerario = :pSN) AND (Tipo = ''P'')' );
           tPagarReceber.ParamByName('pSN').AsInteger     := Dados.SNNumero.AsInteger;
           tPagarReceber.ParamByName('pCodigo').AsInteger := Dados.SNCliente.AsInteger;
           tPagarReceber.Open;
           }

           tPagarReceber.SQL.Clear;
           tPagarReceber.SQL.Add('select Valor_Documento = ISl.Valor');
           tPagarReceber.SQL.Add('      ,Sln.Data_Vencimento');
           tPagarReceber.SQL.Add('      ,Sln.Processo');
           tPagarReceber.SQL.Add('      ,Sln.Numero');
           tPagarReceber.SQL.Add('      ,Classificacao = (select Descricao from '+mCompClass+' where Codigo = Isl.Classificacao)');
           tPagarReceber.SQL.Add('      ,Cliente       = (select Nome from Clientes where Codigo = Sln.Cliente)');
           tPagarReceber.SQL.Add('      ,Moeda         = (select distinct Nome from Cybersoft_Cadastros.dbo.Moedas where Codigo = Pdc.Moeda_FOB)');
           tPagarReceber.SQL.Add('      ,Taxa          = Pdc.Taxa_FOB');
           tPagarReceber.SQL.Add('      ,FOB_Real      = 0');
           tPagarReceber.SQL.Add('      ,FOB_ME        = 0');
           tPagarReceber.SQL.Add('from ItensSolicitacao Isl, SolicitacaoNumerario Sln, ProcessosDocumentos Pdc');
           tPagarReceber.SQL.Add('where Isl.Numero = :pSN' );
           tPagarReceber.SQL.Add('and Sln.Numero = :pSN');
           tPagarReceber.SQL.Add('and Pdc.Processo = Sln.Processo');
           tPagarReceber.ParamByName('pSN').AsInteger     := Dados.SNNumero.AsInteger;
           //tPagarReceber.SQL.SaveToFile('c:\temp\Solicitação_Numerario.sql');
           tPagarReceber.Open;

           with Bancos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM '+mCompBancos+' Bancos WHERE(Codigo = :pBanco)');
                ParamByName('pBanco').AsInteger := SNBanco.AsInteger;
                Open;
           end;

           rSN.Reset;
           rSN.Print;
           rSN.Reset;

           with Bancos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM '+mCompBancos+' order by Nome');
                Open;
           end;
      End;
end;

procedure TFinanceiro_SolicitacaoNumerario.ppVariable5Calc(Sender: TObject; var Value: Variant);
begin
      If tPagarReceber.FieldByName('Taxa').AsFloat > 0 then
         Value := Value + (tPagarReceber.FieldByName('Valor_Documento').AsCurrency / tPagarReceber.FieldByName('Taxa').AsFloat)
end;

procedure TFinanceiro_SolicitacaoNumerario.ppVariable2Calc(Sender: TObject;var Value: Variant);
begin
      Value := 0;
      If tPagarReceber.FieldByName('Taxa').AsFloat > 0 then
         Value := (tPagarReceber.FieldByName('Valor_Documento').AsCurrency / tPagarReceber.FieldByName('Taxa').AsFloat);
end;

procedure TFinanceiro_SolicitacaoNumerario.ppVariable4Calc(Sender: TObject;var Value: Variant);
begin
      Value := Value + tPagarReceber.FieldByName('Valor_Documento').AsCurrency;
end;

procedure TFinanceiro_SolicitacaoNumerario.ppVariable1Calc(Sender: TObject;var Value: Variant);
begin
     Inc(Value);
end;

procedure TFinanceiro_SolicitacaoNumerario.cProcessoExit(Sender: TObject);
begin
      With Dados do begin
           If (SN.State = dsEdit) or (SN.State = dsInsert) then begin
              Clientes.SQL.Clear;
              If Trim(cProcesso.Text) <> '' then begin
                 Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo IN(SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(Processo = :pProcesso) AND (Cliente > 0))) ORDER BY Nome');
                 Clientes.ParamByName('pProcesso').AsString := SNProcesso.AsString;
              end else begin
                 Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
              End;
              Clientes.Open;

              cCliente.Enabled := true;
              If Trim(cProcesso.Text) <> '' then begin
                 SNCliente.Value  := ClientesCodigo.AsInteger;
                 cCliente.Enabled := SNCliente.Value <= 0;
              End;

              If (Trim(SNObservacao.Value) = '') and (SN.State = dsInsert) or (SN.State = dsEdit)then begin
                 SNObservacao.Value := 'DI: '+ProcessosDOCNumero_Declaracao.AsString + ' de '+ProcessosDOCData_RegistroDeclaracao.AsString;
              End;
           End;
      End;
end;

procedure TFinanceiro_SolicitacaoNumerario.GerarFinanceiro(Edita: Boolean);
Var
   mNumero: Integer;
begin
      Screen.Cursor := crSQLWait;

      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.lProcesso.Caption  := 'Criando lançamentos no financeiro...Aguarde';
      Janela_Processamento.bCancelar.Visible  := false;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Show;
      Application.ProcessMessages;

      with Dados, dmContab do begin
           PagarReceber.DisableControls;
           ItensSN.DisableControls;

           ItensSN.SQL.Clear;
           ItensSN.SQL.Add('SELECT * FROM ItensSolicitacao WHERE(Numero = :pNumero) ORDER BY Item');
           ItensSN.ParamByName('pNumero').AsInteger := SNNumero.Value;
           ItensSN.Open;

           Janela_Processamento.Progresso.Max := ItensSN.RecordCount + 1;

           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT SUM(Valor) AS Valor FROM ItensSolicitacao WHERE(Numero = :pNumero)');
           tItens.ParamByName('pNumero').AsInteger := SNNumero.Value;
           tItens.Open;

           if Edita = true then SN.Edit;
           
           SNValor_Total.Value := tItens.FieldByName('Valor').AsCurrency;

           // Delete os lançamentos da solicitação na contabilidade.
           (*
           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE(Documento = :pSN) AND (Tipo_Documento = :pTipo)');
           Lancamentos.ParamByName('pSN').AsInteger  := SNNumero.AsInteger;
           Lancamentos.ParamByName('pTipo').AsString := 'SN';
           Lancamentos.Execute;

           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('DELETE FROM Lancamentos');
           Lancamentos.SQL.Add('WHERE  Documento IN((SELECT DISTINCT CAST(Numero AS VARCHAR(15)) FROM '+Dados.Banco_Empresas.Database +'.dbo.PagarReceber WHERE(Tipo_Nota = ''SN'') AND (Fiscal = :pSN)))');
           Lancamentos.ParamByName('pSN').AsInteger  := SNNumero.AsInteger;
           //Lancamentos.SQL.SaveToFile('c:\temp\lancamentosSN.sql');
           Lancamentos.Execute;

           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE(Documento = :pNota) AND (Tipo_Documento = :pTipo)');
           Lancamentos.ParamByName('pNota').AsInteger  := SNNumero.AsInteger;
           Lancamentos.ParamByName('pTipo').AsString   := 'SN';
           Lancamentos.Open;
           *)
           // Delete os lançamentos da solicitação no financeiro e os recria.
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE(Solicitacao_Numerario = :pSN)');
           PagarReceber.ParamByName('pSN').AsInteger := SNNumero.AsInteger;
           PagarReceber.Execute;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Solicitacao_Numerario = :pSN)');
           PagarReceber.ParamByName('pSN').AsInteger := SNNumero.AsInteger;
           PagarReceber.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
           tNumero.Open;
           mNumero := tNumero.FieldByName('Numero').AsInteger + 1;

           // Lançamento de provisão.
           with ClassificacaoFinanceira do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM '+mCompClass);
                Open;
           end;

           // Lançamentos financeiros dos itens da solicitação "Se configurado para gerar".
           if Dados.Configuracao.FieldByName('Gerar_TituloSolictacaoNumItem').AsBoolean then begin
              ItensSN.First;
              while not ItensSN.Eof do begin
                    ClassificacaoFinanceira.Locate('Codigo', ItensSNClassificacao.AsString, [loCaseInsensitive]);

                    PagarReceber.Append;
                                 PagarReceberNumero.Value                := mNumero;
                                 PagarReceberCentro_Custo.Value          := ItensSNCentro_Custo.AsString;
                                 PagarReceberClassificacao.Value         := ItensSNClassificacao.AsString;
                                 PagarReceberCustoConta.Value            := ItensSNCustoConta.Value;

                                 if Trim(RemoveCaracter('/','', ItensSNData_Documento.AsString)) <> '' then
                                    PagarReceberData_Documento.Value := ItensSNData_Documento.Value;

                                 if Trim(RemoveCaracter('/','', ItensSNData_Vencimento.AsString)) <> '' then
                                    PagarReceberData_Vencimento.Value := ItensSNData_Vencimento.Value;

                                 PagarReceberData_Previsao.Value         := ItensSNData_Previsao.Value;
                                 PagarReceberDocumento.Value             := ItensSNDocumento.Value;
                                 PagarReceberNumero_Documento.Value      := ItensSNNumero_Documento.AsString;
                                 PagarReceberFiscal.Value                := SNNumero.AsString;
                                 PagarReceberTipo_Nota.Value             := 'SN';
                                 PagarReceberFornecedor.Value            := ItensSNFornecedor.Value;
                                 PagarReceberOrgao.Value                 := ItensSNOrgao.Value;
                                 PagarReceberModalidade_Pgto.Value       := ItensSNModalidade_Pgto.Value;
                                 PagarReceberJuros.Value                 := 0;
                                 PagarReceberDesconto.Value              := 0;
                                 PagarReceberMulta.Value                 := 0;
                                 PagarReceberObservacao.Value            := ItensSNObservacao.Value;
                                 PagarReceberProcesso.Value              := SNProcesso.AsString;
                                 PagarReceberSolicitacao_Numerario.Value := SNNumero.AsInteger;
                                 PagarReceberTipo.Value                  := 'P';
                                 PagarReceberValor_Baixado.Value         := 0;
                                 PagarReceberValor_Documento.Value       := ItensSNValor.AsCurrency;
                                 PagarReceberValor_Operacao.Value        := ItensSNValor.AsCurrency;
                                 PagarReceberValor_Parcela.Value         := ItensSNValor.AsCurrency;
                                 PagarReceberValor_Total.Value           := ItensSNValor.AsCurrency;
                                 PagarReceberNivel.Value                 := ClassificacaoFinanceiraNivel.Value;
                                 PagarReceberEmpresa.Value               := Menu_Principal.mEmpresa;
                                 PagarReceberFilial.Value                := Empresas.FieldByName('Numero_Filial').asinteger;
                    PagarReceber.Post;

                    ItensSN.Edit;
                            ItensSNLancamento.Value := mNumero;
                    ItensSN.Post;

                    // Verifica se existe a data do documento "Data da Provisão", encontrando gera o lançamento contabil.
                    {
                    if Trim(RemoveCaracter('/', '', PagarReceberData_Documento.AsString)) <> '' then begin
                       Fornecedores.Locate('Codigo', ItensSNFornecedor.Value, [loCaseInsensitive]);
                       GerarContabil;
                    end;
                    }
                    ItensSN.Next;

                    Inc(mNumero);

                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                    Application.ProcessMessages;
              end;
           end;

           with Dados.ClassificacaoFinanceira do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM '+mCompClass+' WHERE(Tipo = ''R'') AND (Adiantamento = 1) AND (Desativada <> 1) ORDER BY Descricao');
                Open;
           end;

           // Gera um lançamento pelo total da solicitação de numerários (Adiantamento). "Se configurado para gerar".
           if Dados.Configuracao.FieldByName('Gerar_TituloSolictacaoNumTotal').AsBoolean then begin
              if SNValor_Total.Value > 0 then begin
                 Dados.ClassificacaoFinanceira.Locate('Codigo', SNClassificacao.AsString, [loCaseInsensitive]);

                 PagarReceber.Append;
                              PagarReceberNumero.Value                := mNumero;
                              PagarReceberCentro_Custo.Value          := SNCentro_Custo.AsString;
                              PagarReceberClassificacao.Value         := SNClassificacao.AsString;
                              PagarReceberCustoConta.Value            := false;
                              PagarReceberCusto_Seletivo.Value        := false;
                              PagarReceberCusto_Entrada.Value         := false;
                              PagarReceberData_Previsao.Value         := SNData_Previsao.Value;
                              PagarReceberData_Documento.Value        := SNData_Previsao.Value;
                              PagarReceberData_Vencimento.Value       := SNData_Vencimento.Value;
                              PagarReceberDocumento.Value             := SNDocumento.AsString;
                              PagarReceberNumero_Documento.Value      := SNNumero.AsString;
                              PagarReceberFiscal.Value                := SNNumero.AsString;
                              PagarReceberTipo_Nota.Value             := 'SN';
                              PagarReceberCliente.Value               := SNCliente.Value;
                              PagarReceberJuros.Value                 := 0;
                              PagarReceberDesconto.Value              := 0;
                              PagarReceberMulta.Value                 := 0;
                              PagarReceberProcesso.Value              := SNProcesso.AsString;
                              PagarReceberSolicitacao_Numerario.Value := SNNumero.AsInteger;
                              PagarReceberTipo.Value                  := 'R';
                              PagarReceberValor_Baixado.Value         := 0;
                              PagarReceberValor_Documento.Value       := SNValor_Total.AsCurrency;
                              PagarReceberValor_Operacao.Value        := SNValor_Total.AsCurrency;
                              PagarReceberValor_Parcela.Value         := SNValor_Total.AsCurrency;
                              PagarReceberValor_Total.Value           := SNValor_Total.AsCurrency;
                              PagarReceberObservacao.Value            := SNObservacao.Value;
                              PagarReceberNivel.Value                 := ClassificacaoFinanceiraNivel.Value;
                              PagarReceberCustoConta.Value            := ClassificacaoFinanceiraCusto.Value;
                              PagarReceberCusto_Seletivo.Value        := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                              PagarReceberCusto_Entrada.Value         := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                              PagarReceberCusto_Outros.Value          := ClassificacaoFinanceira.FieldByName('Custo_Outros').AsBoolean;
                              PagarReceberEmpresa.Value               := Menu_Principal.mEmpresa;
                              PagarReceberFilial.Value                := Empresas.FieldByName('Numero_Filial').asinteger;
                 PagarReceber.Post;

                 SNLancamento.Value := mNumero;

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
              end;
           end;

           PagarReceber.EnableControls;
           ItensSN.EnableControls;

           Janela_Processamento.Close;
           if Edita = true then SN.Post;
      end;
      Screen.Cursor := crDefault;
end;

(*
procedure TFinanceiro_SolicitacaoNumerario.GerarContabil;
begin
     // Delete o lançamento caso ja exista.
     With Dados, dmContab do begin
          ClassificacaoFinanceira.Locate('Codigo', PagarReceberClassificacao.AsString, [loCaseInsensitive]);

          ChecaConta(ClassificacaoFinanceiraProvisao_ContaD.AsString, ClassificacaoFinanceiraProvisao_ContaC.AsString);

          If (mContaDebito <> '') or (mContaCredito <> '') then begin
             tLancamento.SQL.Clear;
             tLancamento.SQL.Add('SELECT  Numero   = (SELECT MAX(Numero)   FROM Lancamentos WHERE YEAR(Data) = :pAno)');
             tLancamento.SQL.Add('       ,Registro = (SELECT MAX(Registro) FROM Lancamentos)');
             tLancamento.ParamByName('pAno').AsInteger := YearOf(PagarReceberData_Documento.AsDateTime);
             tLancamento.Open;

             Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);

             Lancamentos.Append;
                         LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger+1;
                         LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger+1;
                         LancamentosData.Value                  := PagarReceberData_Documento.AsDateTime;
                         LancamentosConta_Debito.Value          := mContaDebito;
                         LancamentosConta_Credito.Value         := mContaCredito;
                         LancamentosValor.Value                 := PagarReceberValor_Total.AsCurrency;
                         LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.AsInteger;
                         LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                         LancamentosDocumento.Value             := SNNumero.AsString;
                         LancamentosData_Documento.Value        := ItensSNData_Documento.AsDateTime;
                         LancamentosTipo_Documento.Value        := 'SN';
                         LancamentosNumero_Financeiro.Value     := PagarReceberNumero.Value;
                         LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                         LancamentosRecriar.Value               := true;
                         LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                         LancamentosOrigem.Value                := 'FINANCEIRO (SOLICITAÇÃO NÚMERARIO)> '+PagarReceberNumero.AsString;
             Lancamentos.Post;
             tLancamento.Close;
          End;
     End;
end;

procedure TFinanceiro_SolicitacaoNumerario.ChecaConta(ContaD:String; ContaC:String);
begin
      mContaDebito  := '';
      mContaCredito := '';
      If (ApenasNumeros(ContaD) <> '') then mContaDebito  := Trim(ContaD);
      If (ApenasNumeros(ContaC) <> '') then mContaCredito := Trim(ContaC);

      Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberFornecedor.Value, [loCaseInsensitive]);
      Dados.Clientes.Locate('Codigo', Dados.PagarReceberCliente.Value, [loCaseInsensitive]);

      // Conta Debito.
      If ContaD = 'PROCESSO'     then mContaDebito  := Trim(Dados.ProcessosDOCConta_Despesas.Value);
      If ContaD = 'CLIENTE'      then mContaDebito  := Trim(Dados.ClientesConta_Ativo.AsString);
      If ContaD = 'FORNECEDOR'   then mContaDebito  := Trim(Dados.FornecedoresConta.AsString);
      If ContaD = 'DEVOLUÇÃO '   then mContaDebito  := Trim(Dados.FornecedoresConta_Devolucao.AsString);
      If ContaD = 'BANCO'        then mContaDebito  := Trim(Dados.BancosPlano_Contas.Value);
      If ContaD = 'ADIANTAMENTO' then begin
         If Dados.ClassificacaoFinanceiraTipo.AsString = 'R' then begin
            Dados.Clientes.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
            mContaDebito := Trim(Dados.ClientesConta_Adiantamento.AsString)
         end else begin
            Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
            mContaDebito := Trim(Dados.FornecedoresConta_Adiantamento.AsString);
         End;
      End;

      // Conta Credito.
      If ContaC = 'PROCESSO'     then mContaCredito := Trim(Dados.ProcessosDOCConta_Despesas.Value);
      If ContaC = 'CLIENTE'      then mContaCredito := Trim(Dados.ClientesConta_Ativo.AsString);
      If ContaC = 'FORNECEDOR'   then mContaCredito := Trim(Dados.FornecedoresConta.AsString);
      If ContaC = 'DEVOLUÇÃO '   then mContaCredito := Trim(Dados.FornecedoresConta_Devolucao.AsString);
      If ContaC = 'BANCO'        then mContaCredito := Trim(Dados.BancosPlano_Contas.Value);
      If ContaC = 'ADIANTAMENTO' then begin
         If Dados.ClassificacaoFinanceiraTipo.AsString = 'R' then begin
            Dados.Clientes.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
            mContaCredito := Trim(Dados.ClientesConta_Adiantamento.AsString)
         end else begin
            Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
            mContaCredito := Trim(Dados.FornecedoresConta_Adiantamento.AsString);
         End;
      End;
end;

Function TFinanceiro_SolicitacaoNumerario.ConverteHistorico(Historico: String):String;
Var
    i      : Integer;
    mPos   : Integer;
    mMacros: array[0..8] of String;
begin
      mMacros[0] := '<{BENEFICIARIO}>';
      mMacros[1] := '<{PROCESSO}>';
      mMacros[2] := '<{DI}>';
      mMacros[3] := '<{DESCRIÇÃO CLASSIFICAÇÃO FINANCEIRA}>';
      mMacros[4] := '<{TIPO DE DOCUMENTO}>';
      mMacros[5] := '<{Nº DOCUMENTO}>';
      mMacros[6] := '<{DATA DOCUMENTO}>';
      mMacros[7] := '<{BANCO}>';
      mMacros[8] := '<{OBSERVAÇÃO}>';
      Result     := Historico;

      For i := 0 to 8 do begin
          mPos := Pos(mMacros[i], Result);
          While mPos <> 0 do begin
                If mPos <> -1 then begin
                   If i = 0 then Result := RemoveCaracter(mMacros[0], Dados.FornecedoresNome.AsString, Result);
                   If i = 1 then Result := RemoveCaracter(mMacros[1], Dados.SNProcesso.AsString, Result);
                   If i = 2 then Result := RemoveCaracter(mMacros[2], Dados.ProcessosDocNumero_Declaracao.AsString, Result);
                   If i = 3 then Result := RemoveCaracter(mMacros[3], Dados.ItensSNClassificacao.AsString, Result);
                   If i = 4 then Result := RemoveCaracter(mMacros[4], Dados.ItensSNDocumento.AsString, Result);
                   If i = 5 then Result := RemoveCaracter(mMacros[5], Dados.ItensSNNumero_Documento.AsString, Result);
                   If i = 6 then Result := RemoveCaracter(mMacros[6], Dados.ItensSNData_Documento.AsString, Result);
                   If i = 7 then Result := RemoveCaracter(mMacros[7], Dados.BancosNome.AsString, Result);
                   If i = 8 then Result := RemoveCaracter(mMacros[8], Dados.ItensSNObservacao.AsString, Result);
                   mPos := Pos(mMacros[i], Result );
                End;
          End;
      End;
end;
*)

end.
