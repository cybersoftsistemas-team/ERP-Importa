unit frmCadastro_AjustarPrecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, DBCtrls, Mask, RxCurrEdit, RxToolEdit, system.UITypes;

type
  TCadastro_AjustarPrecos = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    cCampo: TRadioGroup;
    StaticText32: TStaticText;
    cLinha: TDBLookupComboBox;
    cTodas: TCheckBox;
    StaticText1: TStaticText;
    cPercentual: TCurrencyEdit;
    cTipo: TRadioGroup;
    StaticText2: TStaticText;
    cValor: TCurrencyEdit;
    bExecutar: TButton;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    cAjuste: TRadioGroup;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cTodasClick(Sender: TObject);
    procedure bExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_AjustarPrecos: TCadastro_AjustarPrecos;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_AjustarPrecos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_AjustarPrecos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_AjustarPrecos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Cadastro_AjustarPrecos.Release;
     Cadastro_AjustarPrecos := nil;
end;

procedure TCadastro_AjustarPrecos.FormShow(Sender: TObject);
begin
     With Dados do begin
          ProdutosLinhas.SQL.Clear;
          ProdutosLinhas.SQL.Add('SELECT * FROM ProdutosLinhas ORDER BY Descricao');
          ProdutosLinhas.Open;
     End;
end;

procedure TCadastro_AjustarPrecos.cTodasClick(Sender: TObject);
begin
     If cTodas.Checked = true then cLinha.KeyValue := 0;
     cLinha.Enabled := not cTodas.Checked
end;

procedure TCadastro_AjustarPrecos.bExecutarClick(Sender: TObject);
var
   mCampo, mSinal:string;
begin
      If (cCampo.ItemIndex = -1) then begin
         MessageDlg('Erro!'+#13+#13+'Selecione um campo para atualizar.', mtError, [mbOK], 0);
         Abort;
      End;
      If (cTipo.ItemIndex = -1) then begin
         MessageDlg('Erro!'+#13+#13+'Selecione o tipo de operação para atualizar.', mtError, [mbOK], 0);
         Abort;
      End;
      If (cTipo.ItemIndex = 1) and (cPercentual.Value >= 100) then begin
         MessageDlg('Erro!'+#13+#13+'O percentual informado ira zerar o valor dos produtos.', mtError, [mbOK], 0);
         Abort;
      End;
      If (cAjuste.ItemIndex = -1) then begin
         MessageDlg('Erro!'+#13+#13+'Selecione o tipo de ajuste para atualizar.', mtError, [mbOK], 0);
         Abort;
      End;
      If (cPercentual.Value > 0) and (cValor.Value > 0) then begin
         MessageDlg('Erro!'+#13+#13+'Informe apenas um "Percentual" ou um "Valor" para atualizar.', mtError, [mbOK], 0);
         Abort;
      End;
      If (cPercentual.Value = 0) and (cValor.Value = 0) then begin
         MessageDlg('Erro!'+#13+#13+'Informe pelo menos um "Percentual" ou um "Valor" para atualizar.', mtError, [mbOK], 0);
         Abort;
      End;
      If (cPercentual.Value < 0) or (cValor.Value < 0) then begin
         MessageDlg('Erro!'+#13+#13+'Informe um "Valor" válido para atualizar.', mtError, [mbOK], 0);
         Abort;
      End;
      If (cTodas.Checked = false) and (Trim(cLinha.Text) = '') then begin
         MessageDlg('Erro!'+#13+#13+'Escolha uma "Linha" ou marque "Todas" para atualizar.', mtError, [mbOK], 0);
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+#13+'Esta rotina ira alterar os valores da tabela de preços.'+#13+#13+'Deseja realmente executar esta opção?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         Abort;

      Screen.Cursor := crSQLWait;
      If cCampo.ItemIndex = 0 then mCampo := 'Valor_Entrada';
      If cCampo.ItemIndex = 1 then mCampo := 'Valor_Venda';
      If cCampo.ItemIndex = 2 then mCampo := 'Promocao_Valor';
      if cTipo.ItemIndex  = 0 then mSinal := '+';
      if cTipo.ItemIndex  = 1 then mSinal := '-';
      
      with Dados do begin
           Produtos.SQL.Clear;
           // Ajsute de valor Aumentar/Dimiuir.
           if cAjuste.ItemIndex = 0 then begin
              If cPercentual.Value > 0 then begin
                 Produtos.SQL.Add('UPDATE Produtos SET '+mCampo+' = ISNULL('+mCampo+', 0) * (1 '+mSinal+' :pPercentual)');
                 Produtos.ParamByName('pPercentual').AsFloat := cPercentual.Value/100;
              end else begin
                 Produtos.SQL.Add('UPDATE Produtos SET '+mCampo+' = ISNULL('+mCampo+', 0) '+mSinal+' :pValor');
                 Produtos.ParamByName('pValor').AsCurrency := cValor.Value;
              end;
           end;
           // Voltar valor original apos aumento ou diminução.
           if cAjuste.ItemIndex = 1 then begin
              If cPercentual.Value > 0 then begin
                 Produtos.SQL.Add('UPDATE Produtos SET '+mCampo+' = ISNULL('+mCampo+', 0) / (1 '+mSinal+' :pPercentual)');
                 Produtos.ParamByName('pPercentual').AsFloat := cPercentual.Value/100;
              end;
           end;
           
           If cTodas.Checked = false then begin
              Produtos.SQL.Add('WHERE Linha = :pLinha');
              Produtos.ParamByName('pLinha').AsInteger := ProdutosLinhasCodigo.AsInteger;
           End;
           //Produtos.SQL.SaveToFile('c:\temp\Ajuste_Precos.sql');
           Produtos.Execute;
           
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos');
           
           Screen.Cursor := crDefault;
           MessageDlg('Concluído!'+#13+#13+'Atualização da tabela de preços executa.', mtInformation, [mbOK], 0);
      End;
end;

end.
