unit frmProcesso_AdicoesOrdem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ComObj, DB, DBAccess, MSAccess, system.UITypes, ComCtrls;

type
  TProcesso_AdicoesOrdem = class(TForm)
    GroupBox3: TGroupBox;
    ComboA: TComboBox;
    ComboB: TComboBox;
    bSair: TButton;
    cPlanilha: TEdit;
    bImportar: TButton;
    StaticText8: TStaticText;
    StaticText1: TStaticText;
    Label2: TLabel;
    cAViso: TStaticText;
    bCancelar: TButton;
    StaticText2: TStaticText;
    ComboC: TComboBox;
    StaticText3: TStaticText;
    ComboD: TComboBox;
    Progresso: TProgressBar;
    StaticText4: TStaticText;
    ComboE: TComboBox;
    procedure bSairClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure ComboAChange(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mCancela: Boolean;
  end;

var
  Processo_AdicoesOrdem: TProcesso_AdicoesOrdem;

implementation

uses frmDados;

{$R *.dfm}

procedure TProcesso_AdicoesOrdem.bSairClick(Sender: TObject);
begin
     Close;
end;


procedure TProcesso_AdicoesOrdem.bImportarClick(Sender: TObject);
Var
    mCol1: Integer;
    mCol2: Integer;
    mCol3: Integer;
    mCol4: Integer;
    mCol5: Integer;
    Excel: OleVariant;
    i    : Integer;
    mOrdem  : String;
    mCodFab : String;
    mPosicao: Integer;
    mQtde   : Real;
    mDesc   : String;
begin
      bCancelar.Enabled := true;
      with Dados do begin
           try
             Excel := CreateOleObject('Excel.Application');
             Excel.WorkBooks.Open(cPlanilha.Text, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

             // Criando a tabela temporario caso não exista.
             cAviso.Caption := 'Aguarde importando arquivo '+cPlanilha.Text+' do Microsoft Excel para o sistema. . . ';

             i        := 2;
             mCol1    := ComboA.ItemIndex+1;
             mCol2    := ComboB.ItemIndex+1;
             mCol3    := ComboC.ItemIndex+1;
             mCol4    := ComboD.ItemIndex+1;
             mCol5    := ComboE.ItemIndex+1;
             mCancela := false;

             Adicoes.SQL.Clear;
             Adicoes.SQL.Add('UPDATE Adicoes SET Ordem  = null,');
             Adicoes.SQL.Add('                   Pedido = null');
             Adicoes.SQL.Add('WHERE DI = :pDI');
             Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
             Adicoes.Execute;
             Adicoes.SQL.Clear;
             Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI) ORDER BY Adicao');
             Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
             Adicoes.Open;

             while (Trim(String(Excel.WorkBooks[1].Sheets[1].Cells[i,mCol1])) <> '') and (mCancela = false) do begin;
                   Inc(i);
             end;
             Progresso.Position := 0;
             Progresso.Max      := i-1;
             i := 2;

             Produtos.DisableControls;
             Adicoes.DisableControls;

             while (Trim(String(Excel.WorkBooks[1].Sheets[1].Cells[i,mCol1])) <> '') and (mCancela = false) do begin;
                   mCodFab  := Trim(String(Excel.WorkBooks[1].Sheets[1].Cells[i, mCol1]));
                   mDesc    := Trim(String(Excel.WorkBooks[1].Sheets[1].Cells[i, mCol2]));
                   mPosicao := StrtoInt(Trim(String(Excel.WorkBooks[1].Sheets[1].Cells[i, mCol3])));
                   mOrdem   := Trim(String(Excel.WorkBooks[1].Sheets[1].Cells[i, mCol4]));
                   mQtde    := StrtoFloat(Trim(String(Excel.WorkBooks[1].Sheets[1].Cells[i, mCol5])));


                   if Produtos.Locate('Codigo_Fabricante', mCodFab, [loCaseInsensitive]) = true then begin
                      Adicoes.Locate('Codigo_Mercadoria; Quantidade', VarArrayOf([ProdutosCodigo.AsInteger, mQtde]), [loCaseInsensitive]);
                      if Adicoes.RecordCount > 0 then begin
                         Adicoes.Edit;
                                 AdicoesOrdem.Value  := mPosicao;
                                 AdicoesPedido.Value := mOrdem;
                         Adicoes.Post;
                      end;
                   end;

                   Inc(i);
                   cAviso.Caption := 'Importando Produto...['+InttoStr(i)+'] '+ String(Excel.WorkBooks[1].Sheets[1].Cells[i, mCol1]);
                   Progresso.Position := Progresso.Position + 1;
             end;

             Adicoes.SQL.Clear;
             Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI) ORDER BY Adicao');
             Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
             Adicoes.Open;

             Produtos.EnableControls;
             Adicoes.EnableControls;
             Excel.WorkBooks.Close;
             Excel.Quit;
           except
              MessageDlg('Houve Falha na abertura da planilha do Microsoft Excel', mtInformation,[mbOk], 0);
           end;
           Excel.WorkBooks.Close;
           Excel.Quit;

           cAviso.Caption := 'Importação terminada...';
           MessageDlg('Importação da planilha do Excel executada com exito.', mtInformation, [mbOk], 0 );

           Close;
      end;
end;

procedure TProcesso_AdicoesOrdem.ComboAChange(Sender: TObject);
begin
      bImportar.Enabled := (ComboA.Text <> '') and (ComboB.Text <> '');
end;

procedure TProcesso_AdicoesOrdem.bCancelarClick(Sender: TObject);
begin
      mCancela := true;
end;

procedure TProcesso_AdicoesOrdem.FormCreate(Sender: TObject);
begin
      ComboA.ItemIndex := 0;
      ComboB.ItemIndex := 1;
      ComboC.ItemIndex := 2;
      ComboD.ItemIndex := 3;
      ComboE.ItemIndex := 4;
end;

end.
