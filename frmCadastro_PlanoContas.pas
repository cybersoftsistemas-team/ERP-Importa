unit frmCadastro_PlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls, Vcl.ExtCtrls,
  RXDBCtrl, Vcl.ComCtrls, Vcl.StdCtrls, DBCtrls, Mask, DB, DBAccess, MSAccess, FUNCOES, MaskUtils, RxDBComb, Buttons, Grids, DBGrids, MemDS, RxToolEdit,
  System.UITypes, Vcl.WinXCtrls;

type
  TCadastro_PlanoContas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText6: TStaticText;
    cCodigo: TDBEdit;
    Grade: TDBGrid;
    tCodigo: TMSQuery;
    tDescricao: TMSQuery;
    bSaldo: TButton;
    cNaturteza: TDBRadioGroup;
    OpenDialog1: TOpenDialog;
    tMovimento: TMSQuery;
    StaticText2: TStaticText;
    cData: TDBDateEdit;
    StaticText3: TStaticText;
    DBEdit1: TDBEdit;
    StaticText4: TStaticText;
    cNatureza: TRxDBComboBox;
    bTerceiros: TButton;
    SpeedButton2: TSpeedButton;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    cConta: TDBEdit;
    Button2: TButton;
    StaticText8: TStaticText;
    cPesq1: TEdit;
    bLimpar: TSpeedButton;
    StaticText9: TStaticText;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    cSintetica: TToggleSwitch;
    cResult: TToggleSwitch;
    cLALUR: TToggleSwitch;
    cDRE: TToggleSwitch;
    cBalanco: TToggleSwitch;
    cPessoa: TToggleSwitch;
    cProcesso: TToggleSwitch;
    cTitulo: TToggleSwitch;
    bAnterior: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cContaExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bSaldoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bTerceirosClick(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cPesq1Change(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure cContaChange(Sender: TObject);
    procedure bAnteriorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
    mF9       : Integer;
  end;

var
  Cadastro_PlanoContas: TCadastro_PlanoContas;

implementation

uses frmDMContab, frmDados, frmMenu_Principal, frmCadastro_PlanoContasSaldo, frmCadastro_PCTerceirosClientes, frmCadastro_PCTerceirosForn,
     frmCadastro_PCTerceirosProc, frmCadastro_PlanoContasECFRelac, frmCadastro_PlanoContasAnterior;

{$R *.dfm}

procedure TCadastro_PlanoContas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_PlanoContas.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With dmContab,Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta, Codigo');
           PlanoContas.Open;
           PlanoContasConta.EditMask := EmpresasMascara_PlanoContas.AsString+';0; ';

           PlanoContasECF.SQL.Clear;
           PlanoContasECF.SQL.Add('SELECT * FROM PlanoContasECF ORDER BY Conta, Descricao');
           PlanoContasECF.Open;

           DREContabilGrupos.SQL.Clear;
           DREContabilGrupos.SQL.Add('SELECT * FROM DREContabilGrupos ORDER BY Codigo');
           DREContabilGrupos.Open;

           cCodigo.Enabled := not EmpresasCodigo_Reduzido.Value;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_PlanoContas.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         If Button = nbInsert then begin
            dmContab.PlanoContasSaldo_Anterior.Value  := 0;
            dmContab.PlanoContasLALUR.Value           := false;
            dmContab.PlanoContasMostrar_Balanco.Value := false;
            dmContab.PlanoContasData_Inclusao.Value   := Date;
         End;
         Panel2.Enabled := True;
         Grade.Enabled  := false;
         cConta.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         dmContab.PlanoContas.Refresh;
         Panel2.Enabled := False;
         Grade.Enabled  := true;
      End;
      bTerceiros.Enabled := Trim(dmContab.PlanoContasTipo_Terceiros.AsString) <> '';
End;

procedure TCadastro_PlanoContas.cContaChange(Sender: TObject);
begin
     with dmContab, PlanoContas do begin
          cTitulo.State    := iif(FieldByName('Titulo').asboolean, tsson, tssoff);
          cSintetica.State := iif(FieldByName('Sintetica').asboolean, tsson, tssoff);
          cResult.State    := iif(FieldByName('Conta_Resultado').asboolean, tsson, tssoff);
          cLALUR.State     := iif(FieldByName('LALUR').asboolean, tsson, tssoff);
          cDRE.State       := iif(FieldByName('DRE').asboolean, tsson, tssoff);
          cBalanco.State   := iif(FieldByName('Mostrar_Balanco').asboolean, tsson, tssoff);
          cPessoa.State    := iif(FieldByName('Detalha_Pessoa').asboolean, tsson, tssoff);
          cProcesso.State  := iif(FieldByName('Detalha_Processo').asboolean, tsson, tssoff);
          bAnterior.Enabled := not FieldByName('Titulo').asboolean;
     end;
end;

procedure TCadastro_PlanoContas.cContaExit(Sender: TObject);
Var
    mConta: String;
begin
      With dmContab, Dados do begin
           If (EmpresasCodigo_Reduzido.Value = True) and (PlanoContas.State = dsInsert) then begin
              mConta := Copy(PlanoContasConta.AsString, 1, 1);

              tCodigo.SQL.Clear;
              tCodigo.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0)+1 AS Codigo FROM PlanoContas');
              tCodigo.Open;
              PlanoContasCodigo.AsString := InttoStr(tCodigo.FieldByName('Codigo').AsInteger);
           End;

           If (Trim(PlanoContasConta.AsString) <> '') and (Trim(PlanoContasOrigem.AsString) = '') then
              PlanoContasOrigem.AsString := PoeZero(2, StrtoInt(Copy(cConta.Text, 1,1)));

           mConta                          := FormatMaskText(PlanoContasConta.EditMask, PlanoContasConta.AsString);
           PlanoContasNivel.Value          := NivelConta(PlanoContasConta.AsString, EmpresasMascara_PlanoContas.AsString);
           PlanoContasConta_Grupo.AsString := GrupoConta(PlanoContasConta.AsString, EmpresasMascara_PlanoContas.AsString, PlanoContasNivel.AsInteger);
      End;
end;

procedure TCadastro_PlanoContas.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa conta','Pesquisa por:', mPesquisa);
      if mPesquisa <> '' then cPesq1.Clear;
      With dmContab do begin
           If PlanoContas.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
              If PlanoContas.Locate('Conta', mPesquisa, [loCaseInsensitive]) = False then begin
                 PlanoContas.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
              End;
           End;
      End;
end;

procedure TCadastro_PlanoContas.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      With Dados, dmContab do begin
           If Button = nbPost then begin
              If (EmpresasCodigo_Reduzido.Value = false) and (Trim(PlanoContasCodigo.AsString) = '') then begin
                 MessageDlg('Campo "Código reduzido" é obrigatório!', mtInformation, [MBOK], 0);
                 cCodigo.Setfocus;
                 Abort;
              End;
              If PlanoContasNatureza.AsString = '' then begin
                 MessageDlg('A Natureza da conta é campo obrigatório!', mtInformation, [MBOK], 0);
                 cNatureza.Setfocus;
                 Abort;
              End;
              If PlanoContasDescricao.AsString = '' then begin
                 MessageDlg('O Nome da conta é campo obrigatório!', mtInformation, [MBOK], 0);
                 cDescricao.Setfocus;
                 Abort;
              End;
              If DataLimpa(PlanoContasData_Inclusao.AsString) then begin
                 MessageDlg('A "Data da inclusão" da conta é campo obrigatório!', mtInformation, [MBOK], 0);
                 cData.Setfocus;
                 Abort;
              End;
              if PlanoContas.State = dsInsert then begin
                 tCodigo.SQL.Clear;
                 tCodigo.SQL.Add('SELECT Conta, Codigo, Descricao FROM PlanoContas WHERE Codigo = :pCodigo' );
                 tCodigo.ParamByName('pCodigo').AsString := PlanoContasCodigo.AsString;
                 tCodigo.Open;

                 if tCodigo.RecordCount > 0 then begin
                    ShowMessage('Já existe uma conta cadastrada com este código reduzido!'+#13+#13+tCodigo.FieldbyName('Conta').AsString+' - '+tCodigo.FieldbyName('Descricao').AsString+#13+#13+
                                'O Último número de conta cadastrado é o nº '+tCodigo.FieldByName('Codigo').AsString);
                    cCodigo.SetFocus;
                    Abort;
                 end;

                 // Verifica se é uma conta Sintetica ou Analitica.
                 If Length(Trim(PlanoContasConta.AsString)) < (Length(RemoveCaracter('.','', EmpresasMascara_PlanoContas.AsString))) then
                    PlanoContasSintetica.Value := True
                 else
                    PlanoContasSintetica.Value := False;

              end;
              PlanoContasEmpresa.Value := EmpresasCNPJ.AsAnsiString;
              tCodigo.Close;

              PlanoContas.FieldByName('Titulo').value           := cTitulo.State;
              PlanoContas.FieldByName('Sintetica').value        := cSintetica.State;
              PlanoContas.FieldByName('Conta_Resultado').value  := cResult.State;
              PlanoContas.FieldByName('LALUR').value            := cLALUR.State;
              PlanoContas.FieldByName('DRE').value              := cDRE.State;
              PlanoContas.FieldByName('Mostrar_Balanco').value  := cBalanco.State;
              PlanoContas.FieldByName('Detalha_Pessoa').value   := cPessoa.State;
              PlanoContas.FieldByName('Detalha_Processo').value := cProcesso.State;
           end;
           If (Button = nbDelete) then begin
              // Verifica se existe saldo ou lançamento na conta.
              If PlanoContasSaldo_Anterior.Value <> 0 then begin
                 MessageDlg('Esta conta possui saldo, não pode ser excluida!', mtInformation, [mbOK], 0);
                 Abort;
              End;

              tMovimento.SQL.Clear;
              tMovimento.SQL.Add('SELECT COUNT(*) AS Qtde FROM Lancamentos WHERE(Conta_Debito = :pConta) OR (Conta_Credito = :pConta)');
              tMovimento.ParamByName('pConta').AsString := PlanoContasCodigo.AsString;
              tMovimento.Open;
              If tMovimento.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Esta conta possui lançamentos, não pode ser excluida!', mtInformation, [mbOK], 0);
                 Abort;
              End;
           End;
      End;
end;

procedure TCadastro_PlanoContas.bSaldoClick(Sender: TObject);
begin
      Cadastro_PlanoContasSaldo := TCadastro_PlanoContasSaldo.Create(Self);
      Cadastro_PlanoContasSaldo.Caption := Caption;
      Cadastro_PlanoContasSaldo.ShowModal;
end;

procedure TCadastro_PlanoContas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      dmContab.PlanoContas.Close;
      Dados.Empresas.Close;
      LimpaMemoria;
      Cadastro_PlanoContas.Release;
      Cadastro_PlanoContas := nil;
end;

procedure TCadastro_PlanoContas.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_PlanoContas.bTerceirosClick(Sender: TObject);
begin
     With dmContab do begin
          If (PlanoContasTipo_Terceiros.AsString = 'CN') or (PlanoContasTipo_Terceiros.AsString = 'CE') then begin
             Cadastro_PCTerceirosClientes := TCadastro_PCTerceirosClientes.Create(Self);
             Cadastro_PCTerceirosClientes.Caption := Caption;
             Cadastro_PCTerceirosClientes.ShowModal;
          End;
          If (PlanoContasTipo_Terceiros.AsString = 'FN') or (PlanoContasTipo_Terceiros.AsString = 'FE') then begin
             Cadastro_PCTerceirosForn:= TCadastro_PCTerceirosForn.Create(Self);
             Cadastro_PCTerceirosForn.Caption := Caption;
             Cadastro_PCTerceirosForn.ShowModal;
          End;
          If PlanoContasTipo_Terceiros.AsString = 'PR' then begin
             Cadastro_PCTerceirosProc:= TCadastro_PCTerceirosProc.Create(Self);
             Cadastro_PCTerceirosProc.Caption := Caption;
             Cadastro_PCTerceirosProc.ShowModal;
          End;
          PlanoContas.Refresh;
     End;
end;

procedure TCadastro_PlanoContas.cCodigoChange(Sender: TObject);
begin
      bTerceiros.Enabled := Trim(dmContab.PlanoContasTipo_Terceiros.AsString) <> '';
end;

procedure TCadastro_PlanoContas.SpeedButton2Click(Sender: TObject);
begin
      dmContab.PlanoContasOrigem.Clear;
end;

procedure TCadastro_PlanoContas.SpeedButton1Click(Sender: TObject);
begin
      dmContab.PlanoContasTipo_Terceiros.Clear;
end;

procedure TCadastro_PlanoContas.Button2Click(Sender: TObject);
begin
      Cadastro_PlanoContasECFRelac := TCadastro_PlanoContasECFRelac.Create(Self);
      Cadastro_PlanoContasECFRelac.Caption := Caption;
      Cadastro_PlanoContasECFRelac.ShowModal;
end;

procedure TCadastro_PlanoContas.cPesq1Change(Sender: TObject);
begin
      with dmContab do begin
           PlanoContas.SQL.Clear;
           if Trim(cPesq1.Text) <> '' then 
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cPesq1.Text+'%')+') ORDER BY Conta, Codigo')
           else
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta, Codigo');
           PlanoContas.Open;
      end;
end;

procedure TCadastro_PlanoContas.bAnteriorClick(Sender: TObject);
begin
     Cadastro_PlanoContasAnterior := TCadastro_PlanoContasAnterior.create(self);
     Cadastro_PlanoContasAnterior.Caption := Caption;
     Cadastro_PlanoContasAnterior.showmodal;
end;

procedure TCadastro_PlanoContas.bLimparClick(Sender: TObject);
begin
     cPesq1.Clear;
end;

procedure TCadastro_PlanoContas.DBCheckBox5Click(Sender: TObject);
begin
      //cDRE.Enabled        := dmCOntab.PlanoContasSintetica.AsBoolean;
      StaticText9.Enabled := dmCOntab.PlanoContasSintetica.AsBoolean;
end;

end.

