unit frmConfig_LayoutMemorando;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Grids, DBGrids, RXDBCtrl, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  RXCtrls, RXSpin, Buttons, Funcoes, system.UITypes, Data.DB, Vcl.Mask;

type
  TConfig_LayoutMemorando = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    StaticText12: TStaticText;
    StaticText1: TStaticText;
    cLinha: TRxSpinEdit;
    cColuna: TRxSpinEdit;
    bExecCol: TBitBtn;
    bExecLin: TBitBtn;
    bExportar: TButton;
    bImportar: TButton;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GradeDblClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bExecColClick(Sender: TObject);
    procedure bExecLinClick(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_LayoutMemorando: TConfig_LayoutMemorando;

implementation

uses frmDados, frmConfig_LayoutMemorandoInformar;

{$R *.dfm}

procedure TConfig_LayoutMemorando.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      Dados.ImpressaoMemorando.SQL.Clear;
      Dados.ImpressaoMemorando.SQL.Add('SELECT * FROM ImpressaoMemorando ORDER BY Linha,Coluna');
      Dados.ImpressaoMemorando.Open;
      Screen.Cursor := crDefault;
end;

procedure TConfig_LayoutMemorando.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TConfig_LayoutMemorando.FormClose(Sender: TObject;var Action: TCloseAction);
begin
        Dados.ImpressaoMemorando.Close;
        
        LimpaMemoria;
        Config_LayoutMemorando.Release;
        Config_LayoutMemorando := nil;
end;

procedure TConfig_LayoutMemorando.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do Begin
          If (Column.FieldName = 'Imprimir') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (ImpressaoMemorando.FieldByName('Imprimir').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TConfig_LayoutMemorando.GradeDblClick(Sender: TObject);
begin
        Config_LayoutMemorandoInformar := TConfig_LayoutMemorandoInformar.Create(Self);
        Config_LayoutMemorandoInformar.Caption := Caption;
        Config_LayoutMemorandoInformar.ShowModal;
        Dados.ImpressaoMemorando.Refresh;
end;

procedure TConfig_LayoutMemorando.NavegaClick(Sender: TObject;Button: TNavigateBtn);
begin
      If (Button = nbEdit) or (Button = nbInsert) then GradeDblClick(nil);
end;

procedure TConfig_LayoutMemorando.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TConfig_LayoutMemorando.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
end;

procedure TConfig_LayoutMemorando.bExecColClick(Sender: TObject);
begin
     with Dados do begin
          ImpressaoMemorando.First;
          while not ImpressaoMemorando.Eof do begin
                ImpressaoMemorando.Edit;
                                   ImpressaoMemorandoColuna.Value := ImpressaoMemorandoColuna.Value + cColuna.AsInteger;
                ImpressaoMemorando.Post;
                ImpressaoMemorando.Next;
          end;
     end;
end;

procedure TConfig_LayoutMemorando.bExecLinClick(Sender: TObject);
begin
     with Dados do begin
          ImpressaoMemorando.First;
          while not ImpressaoMemorando.Eof do begin
                ImpressaoMemorando.Edit;
                                   ImpressaoMemorandoLinha.Value := ImpressaoMemorandoLinha.Value + cLinha.AsInteger;
                ImpressaoMemorando.Post;
                ImpressaoMemorando.Next;
          end;
     end;
end;

procedure TConfig_LayoutMemorando.bExportarClick(Sender: TObject);
Var
    mMemo :TMemo;
    b     :integer;
    mLinha:string;
begin
      mMemo         := TMemo.Create(Config_LayoutMemorando);
      mMemo.Visible := False;
      mMemo.Parent  := Config_LayoutMemorando;

      // Exporta todos os campos do tipo de nota para um script de importação.
      with Dados do begin
           Configuracao.Open;
           ImpressaoMemorando.First;
           mMemo.Lines.Clear;
           while not ImpressaoMemorando.Eof do begin
                 mLinha := '';
                 for b := 0 to (ImpressaoMemorando.FieldCount -1) do begin
                     if not ImpressaoMemorando.FieldByName(ImpressaoMemorando.Fields[b].FieldName).IsNull then begin
                        mLinha := mLinha + ImpressaoMemorando.FieldByName(ImpressaoMemorando.Fields[b].FieldName).AsString+'|';
                     end else begin
                        mLinha := mLinha + '|';
                     end;
                 end;
                 mMemo.Lines.Add(mLinha);

                 ImpressaoMemorando.Next;
           end;
           mMemo.Lines.SaveToFile(ConfiguracaoPasta_Exportacao.Value+'\Layout_MemorandoExportacao.TXT');

           Showmessage('Exportação terminada!'+#13+#13+'Arquivo salvo em '+ConfiguracaoPasta_Exportacao.Value+'\Layout_MemorandoExportacao.TXT');
      end;
end;

procedure TConfig_LayoutMemorando.bImportarClick(Sender: TObject);
Var
    mMemo :TMemo;
    i:integer;
    mLin:string;
    mReg, mTabela, mCampo, mLinha, mColuna, mTamanho, mTipo, mLinha_Memo, mMascara, mDescricao, mImprimir, mValor_Padrao, mPosicao:String;
begin
      mMemo         := TMemo.Create(Config_LayoutMemorando);
      mMemo.Visible := False;
      mMemo.WordWrap:= False;
      mMemo.Parent  := Config_LayoutMemorando;

      Dados.Configuracao.Open;

      if not FileExists(Dados.ConfiguracaoPasta_Exportacao.Value+'\Layout_MemorandoExportacao.TXT') then begin
         MessageDlg('Erro!'+#13+#13+'Arquivo não localizado em '+Dados.ConfiguracaoPasta_Exportacao.Value+'\Layout_MemorandoExportacao.TXT', mtError, [mbOK], 0);
         Abort;
      end;

      mMemo.Lines.LoadFromFile(Dados.ConfiguracaoPasta_Exportacao.Value+'\Layout_MemorandoExportacao.TXT');

      with dados do begin
           ImpressaoMemorando.SQL.Clear;
           ImpressaoMemorando.SQL.Add('TRUNCATE TABLE ImpressaoMemorando');
           ImpressaoMemorando.Execute;
           ImpressaoMemorando.SQL.Clear;
           ImpressaoMemorando.SQL.Add('SELECT * FROM ImpressaoMemorando ORDER BY Linha, Coluna');
           ImpressaoMemorando.Open;

           for i := 0 to mMemo.Lines.Count do begin
               mLin          := mMemo.Lines[i];
               mReg          := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mTabela       := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mCampo        := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mLinha        := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mColuna       := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mTamanho      := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mTipo         := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mLinha_Memo   := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mMascara      := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mDescricao    := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mImprimir     := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mValor_Padrao := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));
               mPosicao      := Copy(mLin, 1, Pos('|', mLin)-1);
               mLin          := Copy(mLin, Pos('|', mLin)+1, Length(mLin));

               if mReg <> '' then begin
                  ImpressaoMemorando.Append;
                                     ImpressaoMemorandoReg.Value          := StrtoInt(mReg);
                                     ImpressaoMemorandoTabela.Value       := mTabela;
                                     ImpressaoMemorandoCampo.Value        := mCampo;
                                     ImpressaoMemorandoLinha.Value        := StrtoInt(mLinha);
                                     ImpressaoMemorandoColuna.Value       := StrtoInt(mColuna);
                                     ImpressaoMemorandoTamanho.Value      := StrtoInt(mTamanho);
                                     ImpressaoMemorandoTipo.Value         := mTipo;
                                     ImpressaoMemorandoLinha_Memo.Value   := StrtoInt(mLinha_Memo);
                                     if mMascara <> '' then ImpressaoMemorandoMascara.Value      := mMascara;
                                     ImpressaoMemorandoDescricao.Value    := mDescricao;
                                     ImpressaoMemorandoImprimir.Value     := StrtoBool(mImprimir);
                                     if mValor_Padrao <> '' then ImpressaoMemorandoValor_Padrao.Value := mValor_Padrao;
                                     ImpressaoMemorandoPosicao.Value      := mPosicao;
                  ImpressaoMemorando.Post;
               end;
           end;
      end;
end;

end.
