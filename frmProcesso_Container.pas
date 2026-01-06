unit frmProcesso_Container;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.ExtCtrls, RXCtrls,
  Vcl.StdCtrls, Mask, DBCtrls, DBGrids, Vcl.ComCtrls, RXDBCtrl, Funcoes, RxLookup, system.UITypes, Buttons, Grids, RxCurrEdit, MemDS, RxToolEdit;

type
    NewTypeNav = class( TDbNavigator );

  TProcesso_Container = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    cNumero: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    cFreeTime: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    StaticText3: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    cArmazem: TDBLookupComboBox;
    DBDateEdit3: TDBDateEdit;
    StaticText12: TStaticText;
    StaticText4: TStaticText;
    DBDateEdit1: TDBDateEdit;
    StaticText52: TStaticText;
    DBEdit13: TDBEdit;
    tPesquisa: TMSQuery;
    DBEdit1: TDBEdit;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    DBDateEdit2: TDBDateEdit;
    DBEdit2: TDBEdit;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    StaticText17: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    Armazens: TMSQuery;
    dsArmazens: TDataSource;
    ArmazensCodigo: TIntegerField;
    ArmazensNome: TStringField;
    ArmazensCNPJ: TStringField;
    cProcesso: TRxDBLookupCombo;
    StaticText18: TStaticText;
    DBMemo1: TDBMemo;
    cTravar: TCheckBox;
    tContainer: TMSQuery;
    StaticText19: TStaticText;
    cTipoEmbarque: TDBComboBox;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    cDemurrage: TCurrencyEdit;
    cTotalME: TCurrencyEdit;
    StaticText22: TStaticText;
    cTotalReal: TCurrencyEdit;
    StaticText23: TStaticText;
    cTaxa: TCurrencyEdit;
    cMemoProcessos: TDBMemo;
    bAdicionarProcesso: TButton;
    cAdicionarProcesso: TRxDBLookupCombo;
    StaticText24: TStaticText;
    DBDateEdit4: TDBDateEdit;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cFreeTimeExit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProcessoChange(Sender: TObject);
    procedure cTravarClick(Sender: TObject);
    procedure cNumeroChange(Sender: TObject);
    procedure cNumeroExit(Sender: TObject);
    procedure CalculaDemurrage;
    procedure DBEdit8Change(Sender: TObject);
    procedure cTipoEmbarqueExit(Sender: TObject);
    procedure bAdicionarProcessoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mProcesso    : String;
    mConhecimento: String;
  end;

var
  Processo_Container: TProcesso_Container;

implementation

Uses frmDados;

{$R *.dfm}

procedure TProcesso_Container.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TProcesso_Container.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      If Trim(mProcesso) = '' then FecharTabelas(Dados, nil, nil, nil);

      LimpaMemoria;
      Processo_Container.Release;
      Processo_Container := nil;
end;

procedure TProcesso_Container.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     If Trim(mProcesso) <> '' then cProcesso.Enabled := false;
     With Dados do begin
          Container.SQL.Clear;
          Container.SQL.Add('SELECT * FROM Container ORDER BY Processo, Numero');
          Container.Open;

          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
          ProcessosDOC.Open;

          Armazens.SQL.Clear;
          Armazens.SQL.Add('SELECT * FROM Fornecedores WHERE (SELECT Modulo_Container FROM RamoAtividade WHERE(Codigo = Ramo_Atividade) AND (Descricao LIKE ''%ARM%'')) = 1');
          Armazens.SQL.Add('ORDER BY Nome');
          Armazens.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(SELECT Modulo_Container FROM RamoAtividade WHERE(Codigo = Ramo_Atividade) AND (Descricao LIKE ''%TRANS%'')) = 1');
          Fornecedores.SQL.Add('ORDER BY Nome');
          Fornecedores.Open;

          Container.Locate('Processo', mProcesso, [loCaseInsensitive]);
     End;

     //CalculaDemurrage;

     Screen.Cursor := crDefault;
end;

procedure TProcesso_Container.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
     cNumero.Color := clWindow;
     With Dados do begin
          If (Button = nbEdit) or (Button = nbInsert) then begin
             For i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             End;
             Panel2.Enabled := True;
             If Button = nbInsert then begin
                If (Trim(mProcesso) <> '')     then ContainerProcesso.Value        := mProcesso;
                If (Trim(mConhecimento) <> '') then ContainerDoCumento_Carga.Value := mConhecimento;

                If cTravar.Checked = true then begin
                   ContainerHora_Entrada.Value           := tContainer.FieldByName('Hora_Entrada').AsString;
                   ContainerHora_Saida.Value             := tContainer.FieldByName('Hora_Saida').AsString;
                   ContainerData_Entrada.Value           := tContainer.FieldByName('Data_Entrada').AsDateTime;
                   ContainerData_Saida.Value             := tContainer.FieldByName('Data_Saida').AsDateTime;
                   ContainerData_Entrega.Value           := tContainer.FieldByName('Data_Entrega').AsDateTime;
                   ContainerArmazem.Value                := tContainer.FieldByName('Armazem').AsInteger;
                   ContainerValor_Demurrage.Value        := tContainer.FieldByName('Valor_Demurrage').AsCurrency;
                   ContainerTransportadora_Saida.Value   := tContainer.FieldByName('Transportadora_Saida').AsInteger;
                   ContainerFree_Time.Value              := tContainer.FieldByName('Free_Time').AsInteger;
                   ContainerTamanho.Value                := tContainer.FieldByName('Tamanho').AsInteger;
                   ContainerTransportadora_Entrada.Value := tContainer.FieldByName('Transportadora_Entrada').AsInteger;
                   ContainerObservacao.Value             := tContainer.FieldByName('Observacao').AsString;
                   ContainerHora_Entrega.Value           := tContainer.FieldByName('Hora_Entrega').AsString;
                   ContainerArmador.Value                := tContainer.FieldByName('Armador').AsString;
                   ContainerDocumento_Carga.Value        := tContainer.FieldByName('Documento_Carga').AsString;
                   ContainerTerminal.Value               := tContainer.FieldByName('Terminal').AsString;
                   ContainerProcesso.Value               := tContainer.FieldByName('Processo').AsString;
                   ContainerTipo.Value                   := tContainer.FieldByName('Tipo').AsString;
                End;
             End;

             If Trim(mProcesso) = '' then cProcesso.SetFocus else cNumero.SetFocus;
             bPesquisa.Enabled := false;
          End;
     End;
     If (Button = nbPost) or (Button = nbCancel) then Begin
        Screen.Cursor := crSQLWait;
        Panel2.Enabled := False;
        Screen.Cursor := crDefault;
        bPesquisa.Enabled := true;
     End;

     bAdicionarProcesso.Enabled := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
     cAdicionarProcesso.Enabled := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
     cMemoProcessos.Enabled     := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
end;

procedure TProcesso_Container.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Container/Processo/Doc.Carga Nº', mPesquisa));

     If not Dados.Container.Locate('Numero', mPesquisa, [loPartialKey]) then begin
        If not Dados.Container.Locate('Processo', mPesquisa, [loPartialKey]) then begin
           tPesquisa.SQL.Clear;
           tPesquisa.SQL.Add('SELECT * FROM Container WHERE(Documento_Carga LIKE '+QuotedStr('%'+mPesquisa+'%')+')');
           tPesquisa.Open;
           If tPesquisa.RecordCount = 0 then begin
              ShowMessage('Nenhum registro encontrado com número de Container ou Documento de Carga informado!');
           end else begin
              Dados.Container.Locate('Numero', tPesquisa.FieldByName('Numero').AsString, [loCaseInsensitive]);
           End;
        End;
     End;
end;

procedure TProcesso_Container.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_Container.cFreeTimeExit(Sender: TObject);
begin
     With Dados do begin
          If (Container.State = dsInsert) or (Container.State = dsEdit) then
              ContainerData_Saida.Value := ContainerData_Entrada.Value + ContainerFree_Time.Value;
     End;
end;

procedure TProcesso_Container.DBEdit4Exit(Sender: TObject);
begin
      With Dados do begin
           If (Container.State = dsInsert) or (Container.State = dsEdit) then
              If Trim(ContainerHora_Saida.Value) = '' then ContainerHora_Saida.Value := ContainerHora_Entrada.Value;
      End;
end;

procedure TProcesso_Container.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) then begin
              If (Container.State = dsInsert) then begin
                 // Verificando se o número do container já existe.
                 tPesquisa.SQL.Clear;
                 tPesquisa.SQL.Add('SELECT COUNT(*) AS Qtde FROM Container WHERE(Numero = :pNumero) AND (Processo = :pProcesso)');
                 tPesquisa.ParamByName('pNumero').AsString   := ContainerNumero.AsString;
                 tPesquisa.ParamByName('pProcesso').AsString := ContainerProcesso.AsString;
                 tPesquisa.Open;

                 If tPesquisa.FieldByName('Qtde').AsInteger > 0 then begin
                    MessageDlg('Número de Container já cadastrado!', mtError, [mbOK], 0);
                    cNumero.Setfocus;
                    Abort;
                 End;
              End;

              // Verificando se o campo tipo de embaruqe esta informado.
              If Trim(Container.FieldByName('Tipo_Embarque').AsString) = '' then begin
                 MessageDlg('"Tipo de Embarque" é campo obrigatório!', mtError, [mbOK], 0);
                 cTipoEmbarque.Setfocus;
                 Abort;
              End;
           End;
      End;
end;

procedure TProcesso_Container.cProcessoChange(Sender: TObject);
begin
      With Dados do begin
           ContainerNumero.Value          := ProcessosDOCContainer_Numero.AsString;
           ContainerArmador.Value         := ProcessosDOCAgencia_Maritima.AsString;
           ContainerDocumento_Carga.Value := ProcessosDOCNumero_DOC.AsString;
           
           bAdicionarProcesso.Enabled     := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
           cAdicionarProcesso.Enabled     := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
           cMemoProcessos.Enabled         := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
      End;
end;

procedure TProcesso_Container.cTravarClick(Sender: TObject);
begin
      tContainer.SQL.Clear;
      tContainer.SQL.Add('SELECT * FROM Container WHERE(Numero = :pNumero)');
      tContainer.ParamByName('pNumero').AsString := Dados.ContainerNumero.AsString;
      tContainer.Open;
end;

procedure TProcesso_Container.cNumeroChange(Sender: TObject);
begin
      If (Dados.Container.State <> dsInsert) and (Dados.Container.State <> dsEdit) then cTravar.Checked := false;
end;

procedure TProcesso_Container.cNumeroExit(Sender: TObject);
begin
      If (VerificaContainer(Trim(cNumero.Text)) = False) and (Trim(cNumero.Text) <> '') then begin
         MessageDlg('Número do container incorreto!', mtError, [mbOk],0);
         cNumero .Color := clRed;
      End else begin
         cNumero.Color := clWindow;
      End;
end;

procedure TProcesso_Container.CalculaDemurrage;
begin
      With Dados do begin
           // Calculando demurrage.
           If Trim(ContainerData_Entrega.AsString) <> '' then begin
              cDemurrage.Value := StrtoInt(DifDias(ContainerData_Saida.Value, ContainerData_Entrega.Value));
           end else begin
              cDemurrage.Value := StrtoInt(DifDias(ContainerData_Saida.Value, Date));
           End;
           cTaxa.Value      := iif(cTaxa.Value = 0, ProcessosDOCTaxa_FOB.AsFloat, cTaxa.Value);
           cTotalME.Value   := ContainerValor_Demurrage.Value * cDemurrage.Value;
           cTotalReal.Value := cTotalME.Value * ProcessosDOCTaxa_FOB.AsFloat;
      End;
end;

procedure TProcesso_Container.DBEdit8Change(Sender: TObject);
begin
      CalculaDemurrage;
end;

procedure TProcesso_Container.cTipoEmbarqueExit(Sender: TObject);
begin
      bAdicionarProcesso.Enabled := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
      cAdicionarProcesso.Enabled := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
      cMemoProcessos.Enabled     := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
end;

procedure TProcesso_Container.bAdicionarProcessoClick(Sender: TObject);
begin
      If Trim(cAdicionarProcesso.Text) <> '' then begin
         Dados.ContainerMemo_Processos.Value := Dados.ContainerMemo_Processos.Value + cAdicionarProcesso.Text + ', ';
         cAdicionarProcesso.KeyValue := '';
      End;   
end;

end.
