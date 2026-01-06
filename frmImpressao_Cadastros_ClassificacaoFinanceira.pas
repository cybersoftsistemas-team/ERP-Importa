unit frmImpressao_Cadastros_ClassificacaoFinanceira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, ppCtrls, ppPrnabl, ppBands, ppDBPipe,
  ppReport, ppVar, myChkBox, ComObj, Funcoes, DB, ppDB, ppParameter, ppDesignLayer, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Cadastros_ClassificacaoFinanceira = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cTipo: TRadioGroup;
    cCusto: TRadioGroup;
    rClassificacao: TppReport;
    pClassificacao: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    bDetalhe: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    pEmpresas: TppDBPipeline;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    fFaixa: TppShape;
    ppLabel5: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel6: TppLabel;
    myDBCheckBox3: TmyDBCheckBox;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    lPGBanco: TppLabel;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    cOrdem: TRadioGroup;
    ppLine2: TppLine;
    ppLine1: TppLine;
    cUtilizado: TRadioGroup;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    cExcel: TCheckBox;
    lTitulo: TppLabel;
    lNumeroEmpresa: TppLabel;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    cEstado: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ExportaEXCEL;
    procedure bDetalheBeforeGenerate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Cadastros_ClassificacaoFinanceira: TImpressao_Cadastros_ClassificacaoFinanceira;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Cadastros_ClassificacaoFinanceira.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Cadastros_ClassificacaoFinanceira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Impressao_Cadastros_ClassificacaoFinanceira.Release;
     Impressao_Cadastros_ClassificacaoFinanceira := nil;
end;

procedure TImpressao_Cadastros_ClassificacaoFinanceira.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Cadastros_ClassificacaoFinanceira.bImprimirClick(Sender: TObject);
begin
     With Dados do begin
          Empresas.Open;
          Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
          
          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira ');
          ClassificacaoFinanceira.SQL.Add('WHERE Descricao IS NOT NULL');

          If cTipo.ItemIndex = 1 then ClassificacaoFinanceira.SQL.Add('AND Tipo = ''P'' ');
          If cTipo.ItemIndex = 2 then ClassificacaoFinanceira.SQL.Add('AND Tipo = ''R'' ');

          If cCusto.ItemIndex = 1 then ClassificacaoFinanceira.SQL.Add('AND Custo = 1');
          If cCusto.ItemIndex = 2 then ClassificacaoFinanceira.SQL.Add('AND Custo = 0');
          If cUtilizado.ItemIndex = 1 then ClassificacaoFinanceira.SQL.Add('AND (SELECT COUNT(*) FROM PagarReceber WHERE(Classificacao = ClassificacaoFinanceira.Codigo)) > 0');
          If cUtilizado.ItemIndex = 2 then ClassificacaoFinanceira.SQL.Add('AND (SELECT COUNT(*) FROM PagarReceber WHERE(Classificacao = ClassificacaoFinanceira.Codigo)) = 0');
          If cEstado.ItemIndex = 1 then ClassificacaoFinanceira.SQL.Add('AND isnull(Desativada, 0) = 0');
          If cEstado.ItemIndex = 2 then ClassificacaoFinanceira.SQL.Add('AND isnull(Desativada, 0) = 1');

          If cOrdem.ItemIndex = 1 then
             ClassificacaoFinanceira.SQL.Add('ORDER BY Descricao')
          else
             ClassificacaoFinanceira.SQL.Add('ORDER BY Codigo, Descricao');
          ClassificacaoFinanceira.Open;
     End;
     If cExcel.Checked = false then begin
        If Dados.EmpresasMatriz_Filial.AsBoolean = true then
           lNumeroEmpresa.Text := 'MATRIZ ('+Dados.EmpresasEstado.AsString+')'
        else
           lNumeroEmpresa.Text := 'FILIAL '+Dados.EmpresasNumero_Filial.AsString +' ('+Dados.EmpresasEstado.AsString+')';;

        if FileExists(Dados.EmpresasLogo.Value) then begin
           iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        end;

        rClassificacao.Print;
        rClassificacao.Reset;
     end else begin
        ExportaEXCEL;
     End;
end;

procedure TImpressao_Cadastros_ClassificacaoFinanceira.bDetalheBeforeGenerate(Sender: TObject);
begin
      fFaixa.Visible   := not fFaixa.Visible;
      lPGBanco.Visible := Trim(Dados.ClassificacaoFinanceiraPagamento_Conta.AsString) <> '';

      If Dados.ClassificacaoFinanceiraTitulo.AsBoolean = true then begin
         ppDBText1.Font.Style  := [fsBold];
         ppDBText3.Font.Style  := [fsBold];
         ppDBText4.Font.Style  := [fsBold];
         ppDBText5.Font.Style  := [fsBold];
         ppDBText6.Font.Style  := [fsBold];
         ppDBText7.Font.Style  := [fsBold];
         ppDBText8.Font.Style  := [fsBold];
         ppDBText9.Font.Style  := [fsBold];
         ppDBText10.Font.Style := [fsBold];
         lPGBanco.Font.Style   := [fsBold];

         If Dados.ClassificacaoFinanceiraDesativada.AsBoolean then begin
            ppDBText1.Font.Style  := [fsBold,fsstrikeout];
            ppDBText3.Font.Style  := [fsBold,fsstrikeout];
         end;
      end else begin
         ppDBText1.Font.Style  := [];
         ppDBText3.Font.Style  := [];
         ppDBText4.Font.Style  := [];
         ppDBText5.Font.Style  := [];
         ppDBText6.Font.Style  := [];
         ppDBText7.Font.Style  := [];
         ppDBText8.Font.Style  := [];
         ppDBText9.Font.Style  := [];
         ppDBText10.Font.Style := [];
         lPGBanco.Font.Style   := [];
         If Dados.ClassificacaoFinanceiraDesativada.AsBoolean then begin
            ppDBText1.Font.Style  := [fsstrikeout];
            ppDBText3.Font.Style  := [fsstrikeout];
         end;
      End;
end;

// Envia informações para o excel.
procedure TImpressao_Cadastros_ClassificacaoFinanceira.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
begin
     With Dados do begin
          Janela_Processamento := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := ClassificacaoFinanceira.RecordCount;
          Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
          Janela_Processamento.Show;

          mPlanilha := CreateOleObject('Excel.Application');

          mPlanilha.WorkBooks.add(1);

          mPlanilha.Visible := false;
          mPlanilha.Range['A3','O3'].Interior.Color    := RGB(255, 255, 140);
          mPlanilha.Range['A3','O3'].Interior.Pattern  := 1;
          mPlanilha.Range['A3','O3'].Font.Bold         := true;
          mPlanilha.Range['A3','O3'].Font.Color        := clBlack;
          mPlanilha.Range['A3','O3'].Borders.LineStyle := 1; //xlContinuous;
          mPlanilha.Range['A3','O3'].Borders.Weight    := 2; //xlThin;
          mPlanilha.Range['A3','O3'].Borders.Color     := RGB(0,0,0);

          mPlanilha.Cells[3,01] := 'CÓDIGO';
          mPlanilha.Cells[3,02] := 'DESCRIÇÃO';
          mPlanilha.Cells[3,03] := 'TIPO';
          mPlanilha.Cells[3,04] := 'TIPO LANÇ.';
          mPlanilha.Cells[3,05] := 'TÍTULO.';
          mPlanilha.Cells[3,06] := 'SOM.FAT.';
          mPlanilha.Cells[3,07] := 'DEVOL.';
          mPlanilha.Cells[3,08] := 'LISTAR REL.';
          mPlanilha.Cells[3,09] := 'CUSTO';
          mPlanilha.Cells[3,10] := 'BAIXA AUTO.';
          mPlanilha.Cells[3,11] := 'ADIANTAM.';
          mPlanilha.Cells[3,12] := 'CÂMBIO';
          mPlanilha.Cells[3,13] := 'DESP.FIXA';
          mPlanilha.Cells[3,14] := 'TRANSFER.';
          mPlanilha.Cells[3,15] := 'DESATIVADA';

          mPlanilha.Range['A3','O3'].HorizontalAlignment := 3;
          mPlanilha.Range['A3','O3'].VerticalAlignment   := 2;
          mPlanilha.Range['A3','O3'].Font.Size           := 8;

          mLinha := 4;

          While (not ClassificacaoFinanceira.Eof) and (not Funcoes.Cancelado) do begin
                If ClassificacaoFinanceira.FieldByName('Titulo').AsBoolean = true then begin
                   mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Color := clRed;
                   mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Bold  := true;
                end else begin
                   mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Color := clBlack;
                   mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Bold  := False;
                End;

                mPlanilha.Range['C'+InttoStr(mLinha),'O'+InttoStr(mLinha)].HorizontalAlignment := 3;
                mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Size := 9;

                mPlanilha.Cells[mLinha,01] := ''''+ClassificacaoFinanceira.FieldByName('Codigo').AsString;
                mPlanilha.Cells[mLinha,02] := ClassificacaoFinanceira.FieldByName('Descricao').AsString;
                mPlanilha.Cells[mLinha,03] := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                mPlanilha.Cells[mLinha,04] := ClassificacaoFinanceira.FieldByName('Tipo_Lancamento').AsString;
                If ClassificacaoFinanceira.FieldByName('Titulo').AsBoolean              then mPlanilha.Cells[mLinha,05] := '*';
                If ClassificacaoFinanceira.FieldByName('Somente_Faturamento').AsBoolean then mPlanilha.Cells[mLinha,06] := '*';
                If ClassificacaoFinanceira.FieldByName('Devolucao').AsBoolean           then mPlanilha.Cells[mLinha,07] := '*';
                If ClassificacaoFinanceira.FieldByName('Relatorio').AsBoolean           then mPlanilha.Cells[mLinha,08] := '*';
                If ClassificacaoFinanceira.FieldByName('Custo').AsBoolean               then mPlanilha.Cells[mLinha,09] := '*';
                If ClassificacaoFinanceira.FieldByName('Baixa_Automatica').AsBoolean    then mPlanilha.Cells[mLinha,10] := '*';
                If ClassificacaoFinanceira.FieldByName('Adiantamento').AsBoolean        then mPlanilha.Cells[mLinha,11] := '*';
                If ClassificacaoFinanceira.FieldByName('Cambio').AsBoolean              then mPlanilha.Cells[mLinha,12] := '*';
                If ClassificacaoFinanceira.FieldByName('Despesa_Fixa').AsBoolean        then mPlanilha.Cells[mLinha,13] := '*';
                If ClassificacaoFinanceira.FieldByName('Transferencia').AsBoolean       then mPlanilha.Cells[mLinha,14] := '*';
                If ClassificacaoFinanceira.FieldByName('Desativada').AsBoolean          then begin
                   mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Font.strikethrough := true;
                   mPlanilha.Cells[mLinha,15] := '*';
                end;

                ClassificacaoFinanceira.Next;
                Inc(mLinha);
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          end;

          mPlanilha.Columns.Autofit;

          //Fecha o Excel.
          If Funcoes.Cancelado = true then begin
             Abort;
             mPlanilha.Free;
             mPlanilha.Destroy;
          End;

          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
          mPlanilha.Range['A1','A1'].Font.Size  := 14;
          mPlanilha.Range['A1','A1'].Font.Bold  := true;
          mPlanilha.Range['A1','O1'].Mergecells := True;
          mPlanilha.Range['A1','O1'].HorizontalAlignment := 3;

          mPlanilha.Cells[2,01] := 'Plano de Classificação Financeira';
          mPlanilha.Range['A2','A2'].Font.Size  := 10;
          mPlanilha.Range['A2','O2'].Mergecells := True;
          mPlanilha.Range['A2','O2'].HorizontalAlignment := 3;

          Janela_Processamento.Close;
          mPlanilha.Visible := true;
     End;
end;


end.
