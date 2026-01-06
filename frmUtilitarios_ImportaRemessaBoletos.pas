unit frmUtilitarios_ImportaRemessaBoletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls,DBCtrls, Vcl.ExtCtrls, RXCtrls, Buttons,
  Grids, DBGrids, RXDBCtrl, RxLookup, Funcoes, Menus, MaskUtils, Mask, RxCurrEdit, MemDS, RxToolEdit, DateUtils, System.UITypes;

type
  TUtilitarios_ImportaRemessaBoletos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bProcessar: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    cArquivo: TEdit;
    tBoletos: TMSQuery;
    OpenDialog1: TOpenDialog;
    bArquivo: TSpeedButton;
    Grade: TDBGrid;
    Label1: TLabel;
    Bevel1: TBevel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    cBanco: TRxDBLookupCombo;
    tNumero: TMSQuery;
    DBNavigator1: TDBNavigator;
    cTotalGeral: TCurrencyEdit;
    cTotalCred: TCurrencyEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    tTotal: TMSQuery;
    cTotalRec: TCurrencyEdit;
    StaticText5: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bArquivoClick(Sender: TObject);
    procedure cArquivoChange(Sender: TObject);
    procedure bProcessarClick(Sender: TObject);
    procedure cBancoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitarios_ImportaRemessaBoletos: TUtilitarios_ImportaRemessaBoletos;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TUtilitarios_ImportaRemessaBoletos.bSairClick(Sender: TObject);
begin
     With Dados do begin
          Boletos.SQL.Clear;
          Boletos.SQL.Add('UPDATE Boletos SET Retorno = 0 WHERE Data_Retorno IS NULL');
          Boletos.Execute;
     End;
     Close;
end;

procedure TUtilitarios_ImportaRemessaBoletos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Utilitarios_ImportaRemessaBoletos.Release;
      Utilitarios_ImportaRemessaBoletos := nil;
end;

procedure TUtilitarios_ImportaRemessaBoletos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ImportaRemessaBoletos.FormShow(Sender: TObject);
begin
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
           Bancos.Open;

           Boletos.SQL.Clear;
           Boletos.SQL.Add('UPDATE Boletos SET Data_Credito = NULL');
           Boletos.SQL.Add('WHERE  Data_Retorno IS NULL');
           Boletos.Execute;

           Boletos.SQL.Clear;
           Boletos.SQL.Add('SELECT  *');
           Boletos.SQL.Add('       ,Nome_Sacado = (SELECT Nome FROM Clientes WHERE Codigo = Sacado)');
           Boletos.SQL.Add('FROM   Boletos');
           Boletos.SQL.Add('WHERE  Cancelado <> 1');
           Boletos.SQL.Add('AND    ISNULL((SELECT Baixa_Numero FROM PagarReceber PR WHERE PR.Boleto_Numero = Registro), 0) = 0');
           Boletos.SQL.Add('ORDER  BY Retorno, Data_Credito');
           Boletos.Open;

           Configuracao.Open;
      End;
end;

procedure TUtilitarios_ImportaRemessaBoletos.bArquivoClick(Sender: TObject);
begin
      If OpenDialog1.Execute then begin
         cArquivo.Clear;
         cArquivo.Text := OpenDialog1.FileName;
      End;
end;

procedure TUtilitarios_ImportaRemessaBoletos.cArquivoChange(Sender: TObject);
Var
    mArquivo : TextFile;
    mLinha   : WideString;
    mNumDOC,
    mCodOcor,
    mJuros,
    mDesconto,
    mDataOcor,
    mDataCred: String;
    Tamanho  : Integer;
    SR       : TSearchRec;
    mAchou   : Boolean;
    mJurosPagos: Real;
begin
      AssignFile(mArquivo, cArquivo.Text);
      Reset(mArquivo);
      FindFirst(RemoveCaracter('"', '',cArquivo.Text), 0, SR);
      Tamanho := SR.Size;

      Janela_Processamento                    := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := Round(Tamanho/400);
      Janela_Processamento.lProcesso.Caption  := 'Lendo arquivo de retorno...';
      Janela_Processamento.Show;

      With Dados do begin
           Boletos.DisableControls;
           Grade.Enabled := false;

           with Boletos do begin
                SQL.Clear;
                SQL.Add('UPDATE Boletos SET Retorno    = 0');
                SQL.Add('                  ,Ocorrencia = NULL');
                SQL.Add('WHERE Data_Retorno IS NULL');
                Execute;
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('      ,Nome_Sacado = (SELECT Nome FROM Clientes WHERE Codigo = Sacado)');
                SQL.Add('FROM   Boletos');
                SQL.Add('WHERE  ISNULL(Cancelado, 0) = 0');
                SQL.Add('AND    Data_Retorno IS NULL');
                SQL.Add('AND    ISNULL((SELECT distinct Baixa_Numero FROM PagarReceber PR WHERE PR.Boleto_Numero = Registro), 0) = 0');
                SQL.Add('ORDER  BY Retorno DESC, Data_Credito DESC, Data_Vencimento, Ocorrencia DESC');
                //sql.SaveToFile('c:\temp\Arquivo_Retorno_Boletos.sql');
                Open;
           end;

           If FileExists(cArquivo.Text) then begin
              // Pula a primeira linha HEADER do arquivo.
              While not Eof (mArquivo) do begin
                    ReadLn(mArquivo, mLinha);
                    mJuros      := '';
                    mDesconto   := '';
                    
                    if (Copy(mLinha, 1, 1) = '1') or (Copy(mLinha, 1, 1) = '7') then begin
                       mAchou    := false;
                       mCodOcor  := '';
                       mDataOcor := FormatMaskText('00/00/00;0; ', Copy(mLinha, 111, 6));
                       mDataCred := FormatMaskText('00/00/00;0; ', Copy(mLinha, 296, 6));
                       mCodOcor  := Copy(mLinha, 109, 2);
                       mDesconto := FormatMaskText('##########0,00;0', Copy(mLinha, 241, 13));
                       mJuros    := FormatMaskText('##########0,00;0', Copy(mLinha, 267, 13));

                       //------------------------------------------< BANCO DO BRASIL >----------------------------------------------
                       if BancosNumero_Banco.Value = 1  then begin
                          mNumDOC   := Copy(mLinha, 64, 17);
                          mAchou    := Boletos.Locate('Nosso_Numero', StrZero(mNumDOC, 17), [loCaseInsensitive]);
                          mDataCred := FormatMaskText('00/00/00;0; ', Copy(mLinha, 176, 6));
                          mDesconto := FormatMaskText('##########0,00;0', Copy(mLinha, 241, 11));
                          mJuros    := FormatMaskText('##########0,00;0', Copy(mLinha, 267, 11));
                       end;
                       //---------------------------------------------< BRADESCO >--------------------------------------------------
                       if BancosNumero_Banco.Value = 237 then begin
                          mNumDOC := Copy(mLinha, 71, 11);
                          mAchou  := Boletos.Locate('Numero_Documento', StrZero(mNumDOC, 13), [loCaseInsensitive]);
                          if not mAchou then begin
                             mAchou := Boletos.Locate('Numero_Documento', Trim(InttoStr(StrtoInt(mNumDOC))), [loCaseInsensitive]);
                          end;
                       end;
                       //-----------------------------------------------< ITAÙ >----------------------------------------------------
                       if BancosNumero_Banco.Value = 341 then begin
                          mNumDOC := Copy(mLinha, 63, 08);
                          mAchou  := Boletos.Locate('Numero_Documento', StrZero(mNumDOC, 8), [loCaseInsensitive]);
                       end;
                       //---------------------------------------------< SANTANDER >-------------------------------------------------
                       if BancosNumero_Banco.Value = 33  then begin
                          mNumDOC := Copy(mLinha, 63, 08);
                          mAchou  := Boletos.Locate('Nosso_Numero', StrZero(mNumDOC, 13), [loCaseInsensitive]);
                       end;

                       BancosOcorrencias.SQL.Clear;
                       BancosOcorrencias.SQL.Add('SELECT * FROM BancosOcorrencias WHERE Banco = :pBanco AND Codigo = :pCod');
                       BancosOcorrencias.ParamByName('pBanco').AsInteger := BancosNumero_Banco.AsInteger;
                       BancosOcorrencias.ParamByName('pCod').AsString    := mCodOcor;
                       BancosOcorrencias.Open;
                       if mAchou then begin
                          // Juros e multa.
                          mJurosPagos := 0;
                          if (not DataLimpa(mDataCred)) and (strtocurr(mJuros) > 0) then begin
                             mJurosPagos := BoletosValor_MultaVencimento.AsCurrency - strtocurr(mJuros);
                             if mJurosPagos < 0 then mJurosPagos := mJurosPagos * -1;
                          end;
                          
                          Boletos.Edit;
                                  if (not DataLimpa(mDataCred)) and (BancosOcorrencias.FieldByName('Liquidado').AsBoolean) then begin
                                     BoletosData_Credito.Value := StrtoDate(mDataCred);
                                     BoletosRetorno.Value      := true;
                                  end else begin
                                     BoletosData_Credito.Clear;
                                     BoletosRetorno.Value := false;
                                  end;
                                  BoletosData_Ocorrencia.Value := StrtoDate(mDataOcor);
                                  BoletosOcorrencia.Value      := BancosOcorrencias.FieldByName('Codigo').AsAnsiString+'-'+BancosOcorrencias.FieldByName('Descricao').AsAnsiString;
                                  BoletosValor_Desconto.Value  := StrtoCurr(mDesconto);
                                  BoletosValor_Juros.Value     := mJurosPagos;
                          Boletos.Post;
                       end;
                    end;

                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                    Application.ProcessMessages;
              End;

              CloseFile (mArquivo);
           End;
           Janela_Processamento.Close;
           Boletos.Close;
           Boletos.Open;
           Boletos.First;
           Boletos.EnableControls;
           Grade.Enabled := True;
      End;
//      cBancoChange(Self);
      bProcessar.Enabled := (Trim(cBanco.Text) <> '') and (Trim(cArquivo.Text) <> '');
end;

procedure TUtilitarios_ImportaRemessaBoletos.bProcessarClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente processar este arquivo de retorno de boletos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados do begin
           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := Boletos.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando lançamentos de baixas...';
           Janela_Processamento.Show;

           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Data = GETDATE()');
           PagarReceberBaixas.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT MAX(Registro) AS Numero FROM PagarReceberBaixas');

           Boletos.DisableControls;
           Grade.Enabled := false;
           Boletos.First;
           while not Boletos.Eof do begin
                 if (BoletosRetorno.AsBoolean) and (not DataLimpa(Boletos.FieldByName('Data_Credito').AsString)) then begin
                    PagarReceber.SQL.Clear;
                    PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
                    PagarReceber.ParamByName('pNumero').AsInteger := BoletosFinanceiro_Numero.AsInteger;
                    PagarReceber.Open;

                    if PagarReceber.RecordCount > 0 then begin
                       tNumero.Open;
                       PagarReceberBaixas.Append;
                                          PagarReceberBaixasRegistro.Value := tNumero.FieldByName('Numero').AsInteger + 1;
                                          PagarReceberBaixasNumero.Value   := PagarReceber.FieldByName('Numero').AsInteger;
                                          PagarReceberBaixasData.Value     := Boletos.FieldByName('Data_Credito').Value;
                                          PagarReceberBaixasTipo.Value     := PagarReceberTipo.AsAnsiString;
                                          if Boletos.FieldByName('Valor_Juros').ascurrency > 0 then begin
                                             PagarReceberBaixasJuros.Value := Boletos.FieldByName('Valor_Juros').asCurrency;
                                             PagarReceberBaixasMulta.Value := Boletos.FieldByName('Valor_MultaVencimento').AsCurrency;
                                             PagarReceberBaixasValor.Value := Boletos.FieldByName('Valor_Documento').AsCurrency + Boletos.FieldByName('Valor_Juros').asCurrency + Boletos.FieldByName('Valor_MultaVencimento').AsCurrency - Boletos.FieldByName('Valor_Desconto').AsCurrency;
                                          end else begin
                                             PagarReceberBaixasMulta.Value := 0;
                                             PagarReceberBaixasJuros.Value := 0;
                                             PagarReceberBaixasValor.Value := Boletos.FieldByName('Valor_Documento').AsCurrency + Boletos.FieldByName('Valor_Juros').asCurrency - Boletos.FieldByName('Valor_Desconto').AsCurrency;
                                          end;
                                          //PagarReceberBaixasJuros.Value               := Boletos.FieldByName('Valor_Juros').asCurrency;
                                          //PagarReceberBaixasMulta.Value               := Boletos.FieldByName('Valor_MultaVencimento').asCurrency;
                                          PagarReceberBaixasDesconto.Value            := Boletos.FieldByName('Valor_Desconto').AsCurrency;
                                          PagarReceberBaixasOrigem_Multa.Value        := 'B';
                                          PagarReceberBaixasOrigem_Juros.Value        := 'B';
                                          PagarReceberBaixasOrigem_Desconto.Value     := 'B';
                                          PagarReceberBaixasForma_Tipo.Value          := 'BOLETO BANCÁRIO';
                                          PagarReceberBaixasForma_TipoDocumento.Value := Boletos.FieldByName('Numero_Documento').AsAnsiString;
                                          PagarReceberBaixasBanco.Value               := Bancos.FieldByName('Codigo').AsInteger;
                                          PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsAnsiString;
                                          PagarReceberBaixasCheque_Visado.Value       := false;
                                          PagarReceberBaixasCheque_Cruzado.Value      := false;
                                          PagarReceberBaixasObservacao.Value          := 'ARQUIVO DE RETORNO BOLETO Nº'+Boletos.FieldByName('Nosso_Numero').AsAnsiString;
                       PagarReceberBaixas.Post;
                       tNumero.Close;

                       PagarReceber.Edit;
                                    PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                                    PagarReceberBanco.Value         := PagarReceberBaixasBanco.Value;
                                    PagarReceberValor_Baixado.Value := Boletos.FieldByName('Valor_Documento').AsCurrency;
                                    PagarReceberDesconto.Value      := Boletos.FieldByName('Valor_Desconto').AsCurrency;
                                    if Boletos.FieldByName('Valor_Juros').ascurrency > 0 then begin
                                       PagarReceberJuros.Value         := Boletos.FieldByName('Valor_Juros').asCurrency;
                                       PagarReceberMulta.Value         := Boletos.FieldByName('Valor_MultaVencimento').AsCurrency;
                                       PagarReceberValor_Total.Value   := (PagarReceberValor_Parcela.Value + Boletos.FieldByName('Valor_Juros').asCurrency + Boletos.FieldByName('Valor_MultaVencimento').AsCurrency - Boletos.FieldByName('Valor_Desconto').AsCurrency);
                                       PagarReceberValor_Baixado.Value := (PagarReceberValor_Parcela.Value + Boletos.FieldByName('Valor_Juros').asCurrency + Boletos.FieldByName('Valor_MultaVencimento').AsCurrency - Boletos.FieldByName('Valor_Desconto').AsCurrency);
                                    end else begin
                                       PagarReceberValor_Total.Value   := (PagarReceberValor_Parcela.Value + Boletos.FieldByName('Valor_Juros').asCurrency - Boletos.FieldByName('Valor_Desconto').AsCurrency);
                                       PagarReceberValor_Baixado.Value := (PagarReceberValor_Parcela.Value + Boletos.FieldByName('Valor_Juros').asCurrency - Boletos.FieldByName('Valor_Desconto').AsCurrency);
                                       PagarReceberJuros.Value         := 0;
                                       PagarReceberMulta.Value         := 0;
                                    end;
                       PagarReceber.Post;

                       Boletos.Edit;
                               BoletosData_Retorno.Value := Boletos.FieldByName('Data_Credito').Value;
                       Boletos.Post;
                    end;
                 end;

                 Boletos.Next;

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           end;
           Boletos.EnableControls;
           Grade.Enabled := True;

           Boletos.Refresh;

           Janela_Processamento.Close;
      End;

      Showmessage('Leitura do arquivo de retorno de boletos terminada!');
end;

procedure TUtilitarios_ImportaRemessaBoletos.cBancoChange(Sender: TObject);
begin
      screen.Cursor := crSQLwait;
      Janela_Processamento                    := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 50;
      Janela_Processamento.Progresso.Max      := 100;
      Janela_Processamento.lProcesso.Caption  := 'Totalizando conta do banco...';
      Janela_Processamento.bCancelar.Visible  := false;
      Janela_Processamento.Top                := Utilitarios_ImportaRemessaBoletos.Top + 50;
      Janela_Processamento.Show;
      Application.ProcessMessages;
      
      with tTotal do begin
           sql.clear;
           sql.add('SELECT Total_Cred = (SELECT SUM(Valor_Documento) FROM Boletos WHERE ISNULL(Cancelado, 0) = 0 AND Banco = :pBanco AND Data_Emissao BETWEEN :pDataIni AND :pDataFim');
           sql.add('                     AND ISNULL((SELECT Baixa_Numero FROM PagarReceber PR WHERE PR.Boleto_Numero = Registro), 0) <> 0)');
           sql.add('      ,Total_Rec  = (SELECT SUM(Valor_Documento) FROM Boletos WHERE ISNULL(Cancelado, 0) = 0 AND Banco = :pBanco AND Data_Emissao BETWEEN :pDataIni AND :pDataFim');
           sql.add('                     AND ISNULL((SELECT Baixa_Numero FROM PagarReceber PR WHERE PR.Boleto_Numero = Registro), 0)  = 0)');
           parambyName('pBanco').AsInteger := Dados.BancosCodigo.Value;
           parambyName('pDataIni').AsDate  := StrtoDate('01/'+InttoStr(Monthof(now))+'/'+InttoStr(Yearof(now)));
           parambyName('pDataFim').AsDate  := UltimoDiaMes(StrtoDate('01/'+InttoStr(Monthof(now))+'/'+InttoStr(Yearof(now))));
           //sql.SaveToFile('c:\temp\Total_Boletos.sql');
           Open;

           cTotalCred.Value  := FieldByName('Total_Cred').AsCurrency;
           cTotalRec.Value   := FieldByName('Total_Rec').AsCurrency;
           cTotalGeral.Value := FieldByName('Total_Cred').AsCurrency + FieldByName('Total_Rec').AsCurrency;
           
           Janela_Processamento.Progresso.Position := 100;
           Application.ProcessMessages;
      end;
      screen.Cursor := crDefault;
      Janela_Processamento.close;
end;



end.
