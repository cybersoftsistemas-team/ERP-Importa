unit frmUtilitarios_ImportarPlanoContasRef;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, RxCtrls, RxSpin, Vcl.Mask, RxToolEdit, Funcoes, Data.DB, MemDS, DBAccess, MSAccess;

type
  TUtilitarios_ImportarPlanoContasRef = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    StaticText2: TStaticText;
    cArquivo: TFilenameEdit;
    Panel1: TPanel;
    bImportar: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cContaCol: TRxSpinEdit;
    StaticText3: TStaticText;
    cDescrCol: TRxSpinEdit;
    StaticText4: TStaticText;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    cSeparador: TEdit;
    ListBox1: TTextListBox;
    cNome: TRadioGroup;
    tmp: TMSQuery;
    cApagar: TCheckBox;
    procedure cArquivoChange(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitarios_ImportarPlanoContasRef: TUtilitarios_ImportarPlanoContasRef;

implementation

uses frmDMContab, frmMenu_Principal, frmJanela_Processamento, frmDados;

{$R *.dfm}

procedure TUtilitarios_ImportarPlanoContasRef.bImportarClick(Sender: TObject);
Var
    mLinha: TStringList;
    i: Integer;
    mEnd: byte;
    mBase, msep, s: string;
begin
     mLinha := TStringList.Create;

     Janela_Processamento := TJanela_Processamento.Create(Self);
     Janela_Processamento.lProcesso.Caption  := 'Aguarde... Importando Plano de Contas Referencial';
     Janela_Processamento.Progresso.Max      := ListBox1.Count;
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Show;

     with dmContab, PlanoContasECF do begin
          if cApagar.checked then begin
             sql.Clear;
             sql.Add('truncate Table PlanoContasECF');
             execute;
          end;

          sql.Clear;
          sql.Add('select * from PlanoContasECF');
          Open;

          tmp.sql.clear;
          tmp.sql.add('select isnull(max(registro),0)+1 as reg from PlanoContasECF');
          mSep  := trim(cSeparador.text);

          for i := 0 to pred(ListBox1.Count) do begin
              ListBox1.ItemIndex := i;
              mBase              := ListBox1.Items[i];
              mLinha.Clear;
              repeat
                    mEnd := Pos(mSep, mBase);
                    if mEnd = 0 then
                       mLinha.add(mBase)
                    else
                       mLinha.add(Copy(mBase, 1, mEnd-1));

                    mBase := Copy(mBase, mEnd+length(mSep), length(mBase)-mEnd);
              Until mEnd = 0;

              tmp.Open;
              Append;
                    FieldByName('Registro').Value  := tmp.FieldByName('Reg').AsInteger;
                    FieldByName('Conta').Value     := ApenasNumeros(mLinha[cContaCol.AsInteger-1]);

                    s := mLinha[cDescrCol.AsInteger-1];
                    if cNome.ItemIndex = 0 then
                       FieldByName('Descricao').Value := s;
                    if cNome.ItemIndex = 1 then
                       FieldByName('Descricao').Value := UpperCase(Copy(s, 1, 1))+Copy(s, 2, Length(s)-1);
                    if cNome.ItemIndex = 2 then
                       FieldByName('Descricao').Value := Ansiuppercase(s);
                    if cNome.ItemIndex = 3 then
                       FieldByName('Descricao').Value := Ansilowercase(s);
              Post;
              tmp.close;

              Application.ProcessMessages;
              Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
          end;
          PlanoContasECF.SQL.Clear;
          PlanoContasECF.SQL.Add('SELECT * FROM PlanoContasECF ORDER BY Conta, Descricao');
          PlanoContasECF.Open;
     end;
     Janela_Processamento.close;
     Showmessage('Importação do Plano de Contas terminado.');
end;

procedure TUtilitarios_ImportarPlanoContasRef.Button3Click(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_ImportarPlanoContasRef.cArquivoChange(Sender: TObject);
begin
     ListBox1.Items.Clear;
     if FileExists(cArquivo.FileName) then ListBox1.Items.LoadFromFile(cArquivo.FileName);
end;

procedure TUtilitarios_ImportarPlanoContasRef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     SetCurrentDir(ExtractFilePath(Application.ExeName));
     Utilitarios_ImportarPlanoContasRef.Release;
     Utilitarios_ImportarPlanoContasRef := nil;
end;

end.
