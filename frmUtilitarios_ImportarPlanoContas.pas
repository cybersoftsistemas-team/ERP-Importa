unit frmUtilitarios_ImportarPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Vcl.ComCtrls, Funcoes, MaskUtils,
  RXSpin, Buttons, Mask, system.UITypes, RxToolEdit;

type
  TUtilitarios_ImportarPlanoContas = class(TForm)
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText2: TStaticText;
    cArquivo: TFilenameEdit;
    Panel1: TPanel;
    bImportar: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    cContaCol: TRxSpinEdit;
    cContaTam: TRxSpinEdit;
    StaticText3: TStaticText;
    cCodigoCol: TRxSpinEdit;
    cCodigoTam: TRxSpinEdit;
    StaticText4: TStaticText;
    cNomeCol: TRxSpinEdit;
    cNomeTam: TRxSpinEdit;
    StaticText5: TStaticText;
    cSintCol: TRxSpinEdit;
    cSintTam: TRxSpinEdit;
    StaticText6: TStaticText;
    StaticText1: TStaticText;
    cLayout: TComboBox;
    ListBox1: TTextListBox;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    cNome: TRadioGroup;
    Edit1: TEdit;
    Label1: TLabel;
    procedure bImportarClick(Sender: TObject);
    procedure cArquivoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AjustaGrupo;
    procedure cContaColChange(Sender: TObject);
    procedure cLayoutChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MouseDownSpot : TPoint;
    Capturing : bool;
  end;

var
  Utilitarios_ImportarPlanoContas: TUtilitarios_ImportarPlanoContas;

implementation

uses frmDMContab, frmMenu_Principal, frmJanela_Processamento, frmDados;

{$R *.dfm}

procedure TUtilitarios_ImportarPlanoContas.bImportarClick(Sender: TObject);
Var
    mLinha : WideString;
    i      : Integer;
    mNum   : String;
begin
     If MessageDlg('Atenção!'+#13+'Isso ira apagar todo o plano de contas e importar o novo.'+#13+#13+'Deseja realmente continuar?', mtWarning, [mbyes, mbNo], 0) = mrNo then
        Abort;

     Janela_Processamento := TJanela_Processamento.Create(Self);
     Janela_Processamento.lProcesso.Caption  := 'Aguarde... Importando Plano de Contas';
     Janela_Processamento.Progresso.Max      := ListBox1.Count;
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Show;

     With dmContab do begin
          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add('TRUNCATE TABLE PlanoContas');
          PlanoContas.Execute;
          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
          PlanoContas.Open;

          For i := 0 to ListBox1.Count-1 do begin
                mLinha             := ListBox1.Items[i];
                mNum               := Copy(mLinha, 1, 1);
                ListBox1.ItemIndex := i;

                If (mNum = '0') or (mNum = '1') or (mNum = '2') or (mNum = '3') or (mNum = '4') or (mNum = '5') or (mNum = '6') or (mNum = '7') or (mNum = '8') or (mNum = '9') then begin  // PROSOFT.
                   PlanoContas.Append;
                               // Plano - PROSOFT.
                               If cLayOut.Text = 'PROSOFT' then begin
                                  PlanoContasCodigo.Value := ApenasNumeros(Trim(Copy(mLinha, 1, 5)))+DigitoConta(ApenasNumeros(Trim(Copy(mLinha, 1, 5))));
                                  //PlanoContasConta.Value  := RemoveCaracter('.','',Copy(mLinha, 10, 15));
                                  PlanoContasConta.Value  := ApenasNumeros(Copy(mLinha, 10, 15));
                                  If Copy(PlanoContasConta.Value,2,9) = '000000000' then PlanoContasConta.Value := Copy(PlanoContasConta.Value,1,1);
                                  If Copy(PlanoContasConta.Value,3,8) = '00000000'  then PlanoContasConta.Value := Copy(PlanoContasConta.Value,1,2);
                                  If Copy(PlanoContasConta.Value,5,6) = '000000'    then PlanoContasConta.Value := Copy(PlanoContasConta.Value,1,4);
                                  If Copy(PlanoContasConta.Value,7,4) = '0000'      then PlanoContasConta.Value := Copy(PlanoContasConta.Value,1,6);
                                  If Copy(PlanoContasConta.Value,9,2) = '00'        then PlanoContasConta.Value := Copy(PlanoContasConta.Value,1,8);

                                  PlanoContasDescricao.Value      := Copy(mLinha,40,30);
                                  PlanoContasSaldo_Anterior.Value := 0;
                                  PlanoContasDebito.Value         := 0;
                                  PlanoContasCredito.Value        := 0;
                                  PlanoContasCredito.Value        := 0;
                                  If Copy(PlanoContasConta.AsString,1,1) = '1' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '2' then PlanoContasNatureza.Value := 'C';
                                  If Copy(PlanoContasConta.AsString,1,1) = '3' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '4' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '5' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '6' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '7' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '8' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '9' then PlanoContasNatureza.Value := 'I';
                                  PlanoContasLALUR.Value           := false;
                                  PlanoContasMostrar_Balanco.Value := false;

                                  If Copy(mLinha, 75, 1) = 'S' then PlanoContasSintetica.Value := false else PlanoContasSintetica.Value := true;
                                  If Length(Trim(RemoveCaracter('0', '', PlanoContasConta.AsString))) = 1 then PlanoContasSintetica.Value := true;
                               End;

                               // Plano de Contas Alterdata
                               If cLayOut.Text = 'ALTERDATA' then begin
                                  PlanoContasCodigo.Value := Trim(Copy(mLinha, 389, 6));
                                  PlanoContasConta.Value  := RemoveCaracter('.','',Copy(mLinha, 1, 15));
                                  if cNome.ItemIndex = 0 then
                                     PlanoContasDescricao.Value := Copy(mLinha,72,51);
                                  if cNome.ItemIndex = 1 then
                                     PlanoContasDescricao.Value := uppercase(Copy(mLinha,72,1))+lowercase(Copy(mLinha,73,51));
                                  if cNome.ItemIndex = 2 then
                                     PlanoContasDescricao.Value := uppercase(Copy(mLinha,72,51));
                                  if cNome.ItemIndex = 3 then
                                     PlanoContasDescricao.Value := lowercase(Copy(mLinha,72,51));

                                  PlanoContasSaldo_Anterior.Value  := 0;
                                  PlanoContasDebito.Value          := 0;
                                  PlanoContasCredito.Value         := 0;
                                  PlanoContasCredito.Value         := 0;
                                  PlanoContasNatureza.Value        := Copy(mLinha,122,1);
                                  PlanoContasLALUR.Value           := false;
                                  PlanoContasMostrar_Balanco.Value := false;
                                  PlanoContasOrigem.Value          := PoeZero(2, StrtoInt(Copy(mLinha,1,1)));

                                  If Length(Trim(PlanoContasConta.AsString)) <= 6 then PlanoContasSintetica.Value := true else PlanoContasSintetica.Value := false;
                               End;

                               // Plano Sistema ABRASIL (SC).
                               If cLayOut.Text = 'ABRASIL' then begin
                                  PlanoContasCodigo.Value         := Trim(Copy(mLinha, 1, 14));
                                  PlanoContasConta.Value          := Trim(RemoveCaracter('.','',Copy(mLinha, 20, 14)));
                                  PlanoContasDescricao.Value      := Copy(mLinha,39,60);
                                  PlanoContasSaldo_Anterior.Value := 0;
                                  PlanoContasDebito.Value         := 0;
                                  PlanoContasCredito.Value        := 0;
                                  PlanoContasCredito.Value        := 0;
                                  If Copy(PlanoContasConta.AsString,1,1) = '1' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '2' then PlanoContasNatureza.Value := 'C';
                                  If Copy(PlanoContasConta.AsString,1,1) = '3' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '4' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '5' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '6' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '7' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '8' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '9' then PlanoContasNatureza.Value := 'I';
                                  PlanoContasLALUR.Value           := false;
                                  PlanoContasMostrar_Balanco.Value := false;

                                  If Copy(mLinha, 17, 1) = 'S' then PlanoContasSintetica.Value := true else PlanoContasSintetica.Value := false;
                               End;

                               // Plano Sistema TOPLOG (SC).
                               If cLayOut.Text = 'TOPLOG' then begin
                                  PlanoContasCodigo.Value         := Trim(Copy(mLinha, 1, 10));
                                  PlanoContasConta.Value          := Trim(Copy(mLinha, 16, 13));
                                  PlanoContasDescricao.Value      := Copy(mLinha,29,60);
                                  PlanoContasSaldo_Anterior.Value := 0;
                                  PlanoContasDebito.Value         := 0;
                                  PlanoContasCredito.Value        := 0;
                                  PlanoContasCredito.Value        := 0;
                                  If Copy(PlanoContasConta.AsString,1,1) = '1' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '2' then PlanoContasNatureza.Value := 'C';
                                  If Copy(PlanoContasConta.AsString,1,1) = '3' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '4' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '5' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '6' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '7' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '8' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '9' then PlanoContasNatureza.Value := 'I';
                                  PlanoContasLALUR.Value           := false;
                                  PlanoContasMostrar_Balanco.Value := false;

                                  If Copy(mLinha, 20, 1) = 'S' then PlanoContasSintetica.Value := true else PlanoContasSintetica.Value := false;
                               End;

                               // Plano Sistema MASTERCONT.
                               If cLayOut.Text = 'MASTERCONT' then begin
                                  PlanoContasCodigo.Value         := Trim(Copy(mLinha, 61, 10));
                                  PlanoContasConta.Value          := Trim(RemoveCaracter('.','',Copy(mLinha, 1, 13)));
                                  PlanoContasDescricao.Value      := Copy(mLinha,72,50);
                                  PlanoContasSintetica.Value      := Copy(mLinha,71,1) = 'S';
                                  PlanoContasSaldo_Anterior.Value := 0;
                                  PlanoContasDebito.Value         := 0;
                                  PlanoContasCredito.Value        := 0;
                                  PlanoContasCredito.Value        := 0;
                                  If Copy(PlanoContasConta.AsString,1,1) = '1' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '2' then PlanoContasNatureza.Value := 'C';
                                  If Copy(PlanoContasConta.AsString,1,1) = '3' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '4' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '5' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '6' then PlanoContasNatureza.Value := 'D';
                                  If Copy(PlanoContasConta.AsString,1,1) = '7' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '8' then PlanoContasNatureza.Value := 'I';
                                  If Copy(PlanoContasConta.AsString,1,1) = '9' then PlanoContasNatureza.Value := 'I';
                                  PlanoContasLALUR.Value           := false;
                                  PlanoContasMostrar_Balanco.Value := false;

                                  If Length(Trim(PlanoContasConta.AsString)) <= 5 then PlanoContasSintetica.Value := true else PlanoContasSintetica.Value := false;
                               End;

                               PlanoContasEmpresa.Value := Dados.EmpresasCNPJ.asstring;
                   PlanoContas.Post;
                End;

                Application.ProcessMessages;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
          End;
          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta, Descricao');
          PlanoContas.Open;
     End;
     
     AjustaGrupo;

     Showmessage('Importação do Plano de Contas terminado.');
end;

procedure TUtilitarios_ImportarPlanoContas.cArquivoChange(Sender: TObject);
begin
     ListBox1.Items.Clear;
     If FileExists(cArquivo.FileName) then ListBox1.Items.LoadFromFile(cArquivo.FileName);
end;

procedure TUtilitarios_ImportarPlanoContas.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ImportarPlanoContas.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_ImportarPlanoContas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     SetCurrentDir(ExtractFilePath(Application.ExeName));
     Utilitarios_ImportarPlanoContas.Release;
     Utilitarios_ImportarPlanoContas := nil;
end;

procedure TUtilitarios_ImportarPlanoContas.AjustaGrupo;
Var
    mConta: String;
    mNivel: Integer;
    i     : Integer;
    mGrupo: String;
begin
    With dmContab do begin
         Janela_Processamento.lProcesso.Caption  := 'Aguarde... Ajustando Grupos';
         Janela_Processamento.Progresso.Max      := PlanoContas.RecordCount;
         Janela_Processamento.Progresso.Position := 0;

         PlanoCOntas.First;
         While not PlanoContas.Eof do begin
               mConta := FormatMaskText(PlanoContasConta.EditMask, PlanoContasConta.AsString);
               mNivel := 1;
               For i := 1 to Length(mConta) do begin
                   //If (mConta[i] = '.') and (mConta[i+1] in (['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Inc(mNivel);
                   If (mConta[i] = '.') and (charinset(mConta[i+1],(['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']))) then Inc(mNivel);
                   If mConta[i] = ' ' then Break;
               End;

               PlanoContas.Edit;
                           PlanoContasNivel.Value := mNivel;

                           mNivel := 1;
                           mGrupo := '';
                           If PlanoContasNivel.AsInteger > 1 then begin
                              For i := 1 to Length(mConta) do begin
                                  mGrupo := mGrupo + mConta[i];
                                  //If (mConta[i] = '.') and (mConta[i+1] in (['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Inc(mNivel);
                                  If (mConta[i] = '.') and (charinset(mConta[i+1],(['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']))) then Inc(mNivel);
                                  If mNivel = (PlanoContasNivel.AsInteger) then Break;
                              End;
                              PlanoContasConta_Grupo.Value := RemoveCaracter('.', '', mGrupo);
                           End;
                           PlanoContasGrupo.Value := Copy(PlanoContasConta.AsString,1,1);
                           PlanoContasOrigem.Value := PoeZero(2, StrtoInt(Copy(PlanoContasConta.Value, 1,1)));
               PlanoContas.Post;

               PlanoContas.Next;

               Application.ProcessMessages;
               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
         End;

         Janela_Processamento.Close;
    End;
end;

procedure TUtilitarios_ImportarPlanoContas.cContaColChange(Sender: TObject);
begin
      ListBox1.SetFocus;

      ListBox1.Canvas.Pen.Color   := clBlue;
      ListBox1.Canvas.Rectangle( (cContaCol.AsInteger *7)-7, -1, ((cContaCol.AsInteger +cContaTam.AsInteger )*7)-3, ListBox1.Height );
      ListBox1.Canvas.Pen.Color   := clFuchsia;
      ListBox1.Canvas.Rectangle( (cCodigoCol.AsInteger*7)-7, -1, ((cCodigoCol.AsInteger+cCodigoTam.AsInteger)*7)-3, ListBox1.Height );
      ListBox1.Canvas.Pen.Color   := clGreen;
      ListBox1.Canvas.Rectangle( (cNomeCol.AsInteger  *7)-7, -1, ((cNomeCol.AsInteger  +cNomeTam.AsInteger  )*7)-3, ListBox1.Height );
      ListBox1.Canvas.Pen.Color   := clRed;
      ListBox1.Canvas.Rectangle( (cSintCol.AsInteger  *7)-7, -1, ((cSintCol.AsInteger  +cSintTam.AsInteger  )*7)-3, ListBox1.Height );
end;

procedure TUtilitarios_ImportarPlanoContas.cLayoutChange(Sender: TObject);
begin
      If cLayOut.Text = 'PROSOFT' then begin
         cContaCol.Value  := 10;
         cContaTam.Value  := 15;
         cCodigoCol.Value := 1;
         cCodigoTam.Value := 7;
         cNomeCol.Value   := 40;
         cNomeTam.Value   := 30;
         cSintCol.Value   := 75;
         cSintTam.Value   := 1;
      End;
end;

procedure TUtilitarios_ImportarPlanoContas.FormShow(Sender: TObject);
begin
      ListBox1.Canvas.Brush.Style := bsClear;
      with Dados, Empresas do begin
           sql.clear;
           sql.add('select * from empresas where codigo = '+inttostr(Menu_Principal.mEmpresa));
           open;
      end;
end;

end.
