unit frmProposta_Exportacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup, RXDBCtrl, Mask, DB, DBAccess, MSAccess, Grids, DBGrids,
  Vcl.ComCtrls, RxCurrEdit, MemDS, RxToolEdit, System.UITypes;

type
  TProposta_Exportacao = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tTemp: TMSQuery;
    bImprimir: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    StaticText3: TStaticText;
    StaticText35: TStaticText;
    cDataAbertura: TDBDateEdit;
    StaticText34: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    StaticText44: TStaticText;
    StaticText6: TStaticText;
    StaticText12: TStaticText;
    StaticText10: TStaticText;
    DBEdit8: TDBEdit;
    StaticText19: TStaticText;
    DBEdit14: TDBEdit;
    lDoc: TStaticText;
    DBEdit10: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    StaticText40: TStaticText;
    StaticText46: TStaticText;
    StaticText53: TStaticText;
    DBEdit20: TDBEdit;
    StaticText51: TStaticText;
    DBLookupComboBox9: TDBLookupComboBox;
    cVia: TDBLookupComboBox;
    StaticText1: TStaticText;
    cProposta: TDBEdit;
    StaticText4: TStaticText;
    DBEdit3: TDBEdit;
    StaticText7: TStaticText;
    StaticText11: TStaticText;
    DBEdit6: TDBEdit;
    StaticText13: TStaticText;
    DBEdit9: TDBEdit;
    StaticText14: TStaticText;
    DBEdit11: TDBEdit;
    StaticText17: TStaticText;
    DBEdit13: TDBEdit;
    StaticText18: TStaticText;
    DBEdit15: TDBEdit;
    StaticText2: TStaticText;
    DBEdit7: TDBEdit;
    StaticText5: TStaticText;
    cQtdePallets: TDBEdit;
    StaticText8: TStaticText;
    DBEdit18: TDBEdit;
    StaticText9: TStaticText;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    StaticText20: TStaticText;
    StaticText15: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    DBEdit22: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText21: TStaticText;
    cPallets: TCurrencyEdit;
    StaticText23: TStaticText;
    DBEdit1: TDBEdit;
    StaticText24: TStaticText;
    DBEdit5: TDBEdit;
    StaticText25: TStaticText;
    DBEdit17: TDBEdit;
    Panel4: TPanel;
    gDesp: TRxDBGrid;
    Panel3: TPanel;
    bAdicionar: TButton;
    bRemoveItem: TButton;
    bRemoveTudo: TButton;
    bBuscar: TButton;
    cDespesa: TRxDBLookupCombo;
    StaticText22: TStaticText;
    StaticText30: TStaticText;
    cTotalDespesas: TCurrencyEdit;
    StaticText33: TStaticText;
    cDespValor: TCurrencyEdit;
    bAlterar: TButton;
    StaticText27: TStaticText;
    cMoeda2: TRxDBLookupCombo;
    StaticText28: TStaticText;
    cCotacao: TCurrencyEdit;
    StaticText31: TStaticText;
    DBEdit24: TDBEdit;
    StaticText26: TStaticText;
    StaticText29: TStaticText;
    DBEdit23: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    StaticText32: TStaticText;
    cIRPJ: TDBEdit;
    DBEdit26: TDBEdit;
    cCSLL: TStaticText;
    DBRadioGroup4: TDBRadioGroup;
    StaticText37: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    cCondicaoCambio: TRxDBLookupCombo;
    DBLookupComboBox7: TDBLookupComboBox;
    cProcesso: TDBComboBox;
    DBEdit2: TDBEdit;
    StaticText36: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cPropostaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bAdicionarClick(Sender: TObject);
    procedure bRemoveItemClick(Sender: TObject);
    procedure bRemoveTudoClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure cQtdePalletsChange(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure cDespValMEChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure gDespCellClick(Column: TColumn);
    procedure cIRPJChange(Sender: TObject);
    procedure DBLookupComboBox7Click(Sender: TObject);
  private
    procedure FiltraDespesas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Proposta_Exportacao: TProposta_Exportacao;

implementation

uses frmDados, frmDMDespacho, Funcoes, frmProposta_ExportacaoImpDesp, frmImpressao_ProcessosOP_Proposta,
     frmMenu_Principal;

{$R *.dfm}

procedure TProposta_Exportacao.FormCreate(Sender: TObject);
begin
//      if Screen.Height <= 768 then begin
//         ScaleBy(Height, Menu_Principal.Height);
//      end;
      if FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProposta_Exportacao.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProposta_Exportacao.FormShow(Sender: TObject);
begin
     with Dados, dmDespacho do begin
          PropostaExp.sql.Clear;
          PropostaExp.sql.add('SELECT * FROM PropostaExp ORDER BY Proposta');
          PropostaExp.open;

          tTemp.SQL.Clear;
          tTemp.SQL.Add('SELECT DISTINCT Processo FROM PropostaExp');
          tTemp.Open;
          tTemp.First;
          while not tTemp.eof do begin
                cProcesso.Items.Add(tTemp.FieldByName('Processo').AsString);
                tTemp.next;
          end;

          Clientes.sql.clear;
          Clientes.sql.add('SELECT * FROM Clientes ORDER BY Nome');
          Clientes.Open;

          INCOTERMS.sql.clear;
          INCOTERMS.sql.add('SELECT * FROM INCOTERMS ORDER BY Codigo');
          INCOTERMS.open;

          Unidades.sql.clear;
          Unidades.sql.add('SELECT * FROM UnidadeMedida ORDER BY Codigo');
          Unidades.open;

          ViaTransporte.SQL.Clear;
          ViaTransporte.SQL.Add('SELECT * FROM ViaTransporte ORDER BY Descricao');
          ViaTransporte.Open;

          Moedas.sql.clear;
          Moedas.sql.add('SELECT * FROM Moedas ORDER BY Nome');
          Moedas.open;

          ClassificacaoFinanceira.sql.clear;
          ClassificacaoFinanceira.sql.add('SELECT * FROM ClassificacaoFinanceira WHERE Desativada <> 1 ORDER BY Descricao');
          ClassificacaoFinanceira.open;

          Paises.sql.clear;
          Paises.sql.add('SELECT * FROM Paises ORDER BY Nome');
          Paises.open;

          CondicaoCambial.SQL.Clear;
          CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Descricao' );
          CondicaoCambial.Open;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida' );
          Produtos.Open;
     end;
end;

procedure TProposta_Exportacao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
     with Dados do begin
          if Button = nbInsert then begin
             PropostaExpQuantidade_Unidade.value := 1;
          end;

          if (Button = nbEdit) or (Button = nbInsert) then begin
             PageControl1.ActivePageIndex  := 0;
             PageControl1.Pages[1].Enabled := false;
             Panel2.Enabled                := True;
             bPesquisa.Enabled             := false;
             cProcesso.Setfocus;

             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             cProcesso.SetFocus;
          end;
          if (Button = nbPost) or (Button = nbCancel) then Begin
             Panel2.Enabled                := False;
             PageControl1.Pages[1].Enabled := true;
             bPesquisa.Enabled             := true;
          end;
     end;
end;

procedure TProposta_Exportacao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir esta proposta?', mtConfirmation, [mbyes, mbno], 0) = mrNo then begin
                 Abort;
              end;   
           end; 
           if (Button = nbPost) and (PropostaExp.State = dsInsert) then begin
              tTemp.sql.clear;
              tTemp.sql.add('SELECT ISNULL(MAX(Proposta), 0)+1 AS Proposta FROM PropostaExp');
              tTemp.Open;
              PropostaExpProposta.Value := tTemp.FieldByName('Proposta').AsInteger;
           end;
      end;
end;

procedure TProposta_Exportacao.cPropostaChange(Sender: TObject);
begin
      FiltraDespesas;
end;

procedure TProposta_Exportacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, nil, nil, nil);
      Proposta_Exportacao.Release;
      Proposta_Exportacao := nil;
end;

procedure TProposta_Exportacao.bAdicionarClick(Sender: TObject);
begin
      if (cDespesa.Text <> '') and (cDespValor.Value <> 0) then begin
         with Dados do begin
              tTemp.sql.clear;
              tTemp.sql.add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PropostaExpDesp');
              tTemp.Open;

              PropostaExpDesp.Append;
                              PropostaExpDesp.FieldByName('Registro').value      := tTemp.FieldByName('Registro').AsInteger;
                              PropostaExpDesp.FieldByName('Proposta').value      := PropostaExp.FieldByName('Proposta').Value;
                              PropostaExpDesp.FieldByName('Classificacao').value := ClassificacaoFinanceira.FieldByName('Codigo').Value;
                              PropostaExpDesp.FieldByName('Descricao').value     := ClassificacaoFinanceira.FieldByName('Descricao').Value;
                              PropostaExpDesp.FieldByName('Valor').value         := cDespValor.Value;
                              PropostaExpDesp.FieldByName('Moeda').value         := Moedas.FieldByName('Codigo').Value;
                              PropostaExpDesp.FieldByName('Simbolo').value       := Moedas.FieldByName('Simbolo').Value;
                              PropostaExpDesp.FieldByName('Cotacao').value       := cCotacao.value;
              PropostaExpDesp.Post;
         end;
         FiltraDespesas;
      end;
end;

procedure TProposta_Exportacao.FiltraDespesas;
begin
     with Dados do begin
          PropostaExpDesp.sql.Clear;
          PropostaExpDesp.sql.add('SELECT * FROM PropostaExpDesp WHERE Proposta = :pProp ORDER BY Moeda, Descricao');
          PropostaExpDesp.ParamByName('pProp').asinteger := PropostaExp.FieldByName('Proposta').AsInteger;
          PropostaExpDesp.open;

          tTemp.sql.clear;
          tTemp.sql.add('SELECT SUM(Valor * Cotacao) AS Total FROM PropostaExpDesp WHERE Proposta = :pProp');
          tTemp.ParamByName('pProp').asinteger := PropostaExp.FieldByName('Proposta').AsInteger;
          tTemp.open;

          cTotalDespesas.value := tTemp.FieldByName('Total').AsCurrency;
     end;
end;

procedure TProposta_Exportacao.bRemoveItemClick(Sender: TObject);
begin
     with Dados do begin
         if PropostaExpDesp.RecordCount > 0 then begin
             if MessageDlg('Remover a despesa desta proposta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                PropostaExpDesp.Delete;
             end;
             FiltraDespesas;
          end;
     end;
end;

procedure TProposta_Exportacao.bRemoveTudoClick(Sender: TObject);
begin
     with Dados do begin
          if PropostaExpDesp.RecordCount > 0 then begin
             if MessageDlg('Remover todas as despesas desta proposta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                tTemp.SQL.Clear;
                tTemp.SQL.Add('DELETE FROM PropostaExpDesp WHERE Proposta = :pProp');
                tTemp.ParamByName('pProp').AsInteger := PropostaExpDesp.FieldByName('Proposta').AsInteger;
                tTemp.Execute;
                PropostaExpDesp.Refresh;
                FiltraDespesas;
             end;
          end;
     end;
end;

procedure TProposta_Exportacao.bBuscarClick(Sender: TObject);
begin
      Proposta_ExportacaoImpDesp := TProposta_ExportacaoImpDesp.Create(Self);
      Proposta_ExportacaoImpDesp.mProposta := Dados.PropostaExp.FieldByName('Proposta').asinteger;
      Proposta_ExportacaoImpDesp.showmodal;
      FiltraDespesas;
end;

procedure TProposta_Exportacao.cQtdePalletsChange(Sender: TObject);
begin
     with Dados do begin
          if trim(cQtdePallets.Text) <> '' then begin
             cPallets.Value := PropostaExp.FieldByName('Quantidade').AsFloat / StrtoFloat(cQtdePallets.Text);
          end;
     end;
end;

procedure TProposta_Exportacao.DBEdit18Change(Sender: TObject);
begin
     with Dados do begin
          if trim(cQtdePallets.Text) <> '' then begin
             cPallets.Value := PropostaExp.FieldByName('Quantidade').AsFloat / StrtoFloat(cQtdePallets.Text);
          end;   
     end;
end;

procedure TProposta_Exportacao.cDespValMEChange(Sender: TObject);
begin
      cDespValor.value := 0;
end;

procedure TProposta_Exportacao.bImprimirClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Proposta := TImpressao_ProcessosOP_Proposta.Create(Self);
      Impressao_ProcessosOP_Proposta.Caption := Caption;
      Impressao_ProcessosOP_Proposta.ShowModal;
end;

procedure TProposta_Exportacao.bAlterarClick(Sender: TObject);
begin
      if (cDespesa.Text <> '') and (cDespValor.Value <> 0) then begin
         with Dados do begin
              PropostaExpDesp.Edit;
                              if trim(cDespesa.Text) <> '' then begin
                                 PropostaExpDesp.FieldByName('Classificacao').value := ClassificacaoFinanceira.FieldByName('Codigo').Value;
                                 PropostaExpDesp.FieldByName('Descricao').value     := ClassificacaoFinanceira.FieldByName('Descricao').Value;
                              end;
                              if cDespValor.Value <> 0 then begin
                                 PropostaExpDesp.FieldByName('Valor').value := cDespValor.Value;
                              end;
                              PropostaExpDesp.FieldByName('Moeda').value   := Moedas.FieldByName('Codigo').Value;
                              PropostaExpDesp.FieldByName('Simbolo').value := Moedas.FieldByName('Simbolo').Value;
                              PropostaExpDesp.FieldByName('Cotacao').value := cCotacao.value;
              PropostaExpDesp.post;
         end;

         FiltraDespesas;
      end;
end;

procedure TProposta_Exportacao.gDespCellClick(Column: TColumn);
begin
     with Dados do begin
          cDespesa.KeyValue := PropostaExpDesp.FieldByName('Classificacao').Value;
          cDespValor.Value  := PropostaExpDesp.FieldByName('Valor').Value;
          cMoeda2.KeyValue  := PropostaExpDesp.FieldByName('Moeda').Value;
          cCotacao.value    := PropostaExpDesp.FieldByName('Cotacao').Value;
     end;
end;

procedure TProposta_Exportacao.cIRPJChange(Sender: TObject);
begin
     with Dados do begin
          if (PropostaExp.State = dsInsert) or (PropostaExp.State = dsEdit) then begin
             PropostaExp.FieldByName('Fator').value := 100 - (PropostaExp.FieldByName('IRPJ').asfloat + PropostaExp.FieldByName('CSLL').asfloat);
          end;
     end;
end;

procedure TProposta_Exportacao.DBLookupComboBox7Click(Sender: TObject);
begin
      with Dados do begin
           PropostaExpUnidade.Value := Produtos.FieldByName('Unidade').AsString;
      end;
end;

end.
