unit frmCadastro_Fabricantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Mask, DBCtrls, Vcl.ExtCtrls,
  FUNCOES, Vcl.ComCtrls, RXCtrls, RXDBCtrl, ClipBrd, RxLookup, Grids, DBGrids, MemDS, system.UITypes;

type
  TCadastro_Fabricantes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tCodigo: TMSQuery;
    tFabricantes: TMSQuery;
    pPaginas: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    cNome: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    cBairro: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    cIE: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText3: TStaticText;
    StaticText14: TStaticText;
    cTipoProduto: TDBLookupComboBox;
    cEstado: TDBLookupComboBox;
    cCNPJ: TDBEdit;
    cNomeFantasia: TDBEdit;
    StaticText16: TStaticText;
    DBEdit2: TDBEdit;
    StaticText17: TStaticText;
    cIsento: TDBCheckBox;
    cPais: TRxDBLookupCombo;
    StaticText27: TStaticText;
    DBEdit15: TDBEdit;
    TabSheet3: TTabSheet;
    GradeClientes: TRxDBGrid;
    StaticText28: TStaticText;
    cPesquisa: TEdit;
    cAtivo: TDBCheckBox;
    tCodigoCodigo: TIntegerField;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    cMunicipio: TDBEdit;
    cEstadoEX: TDBEdit;
    lEstadoEX: TStaticText;
    DBEdit3: TDBEdit;
    StaticText49: TStaticText;
    DBEdit31: TDBEdit;
    StaticText48: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure cCNPJExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cIsentoClick(Sender: TObject);
    procedure cIEExit(Sender: TObject);
    procedure cEstadoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cPaisChange(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure cIEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_Fabricantes: TCadastro_Fabricantes;

implementation

Uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_Fabricantes.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_Fabricantes.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         pPaginas.ActivePageIndex := 0;
         If button = nbInsert then Dados.FabricantesIsento.Value := false;

         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cNome.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled    := False;
      End;
      With Dados do begin
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;
      End;
     
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Fabricantes.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      pPaginas.ActivePageIndex := 0;
      
      With Dados do begin
           Fabricantes.SQL.Clear;
           Fabricantes.SQL.Add('SELECT * FROM Fabricantes ORDER BY Nome');
           Fabricantes.Open;

           TipoProduto.SQL.Clear;
           TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
           TipoProduto.Open;

           Paises.Open;
           Estados.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)' );
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           Configuracao.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Fabricantes.cCNPJExit(Sender: TObject);
begin
        If (VerificaCNPJ(cCNPJ.Text) = False) and (Trim(cCNPJ.Text) <> '') then begin
           MessageDlg('Número de CNPJ inválido!', mtError, [mbok],0);
           cCNPJ.SetFocus;
           Abort;
        End;
end;

procedure TCadastro_Fabricantes.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If (Button = nbPost)  then begin
         With Dados do begin
              // Verificando os campos obrigatorios do cadastro do fornecedor.
              If Trim(FabricantesNome.Value) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o nome do Fabricante.', mtError, [mbOK], 0);
                 cNome.SetFocus;
                 Abort;
              End;
              If Trim(FabricantesPais.AsString) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o país do Fabricante.', mtError, [mbOK], 0);
                 cPais.SetFocus;
                 Abort;
              End;
              If Trim(FabricantesEstado.Value) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o estado do Fabricante.'+#13+#13+'Em caso de Fabricante do exterior informar "EXTERIOR".', mtError, [mbOK], 0);
                 cEstado.SetFocus;
                 Abort;
              End;
              If FabricantesMunicipio_Codigo.Value = 0 then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o município do Fabricante.'+#13+#13+'Em caso de Fabricante do exterior informar "EXTERIOR".', mtError, [mbOK], 0);
                 cMunicipio.SetFocus;
                 Abort;
              End;
              If Trim(FabricantesEstado.Value) <> 'EX' then begin
                 If (Trim(FabricantesCNPJ.Value) = '') then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o CNPJ do Fabricante se pessoa jurídica ou o CPF se pessoa física.', mtError, [mbOK], 0);
                    cCNPJ.SetFocus;
                    Abort;
                 End;
                 If (Trim(FabricantesInscricao_Estadual.Value) = '') and (FabricantesIsento.Value = False) then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a Inscrição Estadual do Fabricante ou informar se o Fabricante é Isento.', mtError, [mbOK], 0);
                    cIE.SetFocus;
                    Abort;
                 End;
              End;

              //FabricantesMunicipio.Value := MunicipiosNome.Value;

              If (Fabricantes.State = dsInsert) then begin
                 // Verificando se já existe Fabricante de fora do pais com o mesmo nome cadastrado, pois não há o CNPJ.
                 If FabricantesPais.Value <> '1058' then begin
                    tFabricantes.SQL.Clear;
                    tFabricantes.SQL.Add('SELECT * FROM Fabricantes WHERE (Nome = :pNome)');
                    tFabricantes.ParamByName('pNome').AsString := FabricantesNome.Value;
                    tFabricantes.Open;
                    If tFabricantes.RecordCount <> 0 then begin
                       MessageDlg('Erro de duplicidade!'+#13+#13+'Já existe um Fabricante de fora do país cadastrado com este nome.'+#13+#13+'Fabricante: '+tFabricantes.FieldByName('Codigo').AsString +' - '+tFabricantes.FieldByName('Nome').Value, mtError, [mbOK], 0);
                       cNome.SetFocus;
                       Abort;
                    End;
                 End;

                 // Verificando se o CNPJ ja foi utilizado por outro registro, para evitar duplicidade de Fabricantes.
                 If Trim(FabricantesCNPJ.Value) <> '' then begin
                    tFabricantes.SQL.Clear;
                    tFabricantes.SQL.Add('SELECT * FROM Fabricantes WHERE (CNPJ = :pCNPJ)');
                    tFabricantes.ParamByName('pCNPJ').AsString := FabricantesCNPJ.Value;
                    tFabricantes.Open;
                    If tFabricantes.RecordCount <> 0 then begin
                       MessageDlg('Erro de duplicidade!'+#13+#13+'Já existe um Fabricante cadastrado com este número de CNPJ.'+#13+#13+'Fabricante: '+tFabricantes.FieldByName('Codigo').AsString +' - '+tFabricantes.FieldByName('Nome').Value, mtError, [mbOK], 0);
                       cCNPJ.SetFocus;
                       Abort;
                    End;
                 End;

                 Screen.Cursor := crSQLWait;
                 tCodigo.Open;
                 FabricantesCodigo.Value := tCodigoCodigo.Value+1;
                 tCodigo.Close;
                 Screen.Cursor := crDefault;
              End;
         End;
      End;

      // Não deixa excluir existir produto com o fabricante.
      If Button = nbDelete then begin
         With Dados do begin
              tFabricantes.SQL.Clear;
              tFabricantes.SQL.Add('SELECT COUNT(*) AS Utilizado FROM Produtos WHERE(Fabricante = :pFabricante)');
              tFabricantes.ParamByName('pFabricante').AsInteger := FabricantesCodigo.AsInteger;
              tFabricantes.Open;
              If tFabricantes.FieldByName('Utilizado').AsInteger > 0 then begin
                 MessageDlg('Este Fabricante não pode ser excluido.', mtInformation, [mbOK], 0);
                 Fabricantes.Cancel;
                 Abort;
              End;
           End;
      End;
end;

procedure TCadastro_Fabricantes.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa', 'Código/ CNPJ/ Nome',mPesquisa);
      With Dados do begin
           If Fabricantes.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
              If Fabricantes.Locate('CNPJ', mPesquisa, [loCaseInsensitive]) = False then begin
                 If Fabricantes.Locate('Nome', mPesquisa, [loCaseInsensitive, loPartialKey]) = False then begin
                    tFabricantes.SQL.Clear;
                    tFabricantes.SQL.Add('SELECT * FROM Fabricantes WHERE(Nome LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
                    tFabricantes.Open;
                    If tFabricantes.RecordCount > 0 then begin
                       Fabricantes.Locate('Codigo', tFabricantes.FieldByName('Codigo').AsInteger, [loCaseInsensitive])
                    End;   
                 End;
              End;
           End;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;
      End;
end;

procedure TCadastro_Fabricantes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.FabricantesCodigo.AsString;
      Menu_Principal.mMem_Fabricante := Dados.FabricantesCodigo.Value;

      Dados.Fabricantes.Close;
      Dados.TipoProduto.Close;
      Dados.Paises.Close;
      Dados.Estados.Close;

      LimpaMemoria;
      Cadastro_Fabricantes.Release;
      Cadastro_Fabricantes := nil;
end;

procedure TCadastro_Fabricantes.cIsentoClick(Sender: TObject);
begin
      If (Dados.Fabricantes.State = dsInsert) or (Dados.Fabricantes.State = dsEdit) then begin
         If cIsento.Checked = True then begin
            Dados.FabricantesInscricao_Estadual.Clear;
         end;
      End;
end;

procedure TCadastro_Fabricantes.cIEExit(Sender: TObject);
begin
        If (VerificaIE(Dados.FabricantesEstado.Value, Dados.FabricantesInscricao_Estadual.Value) = False) and (Trim(Dados.FabricantesInscricao_Estadual.Value) <> '') then begin
           MessageDlg('Inscrição Estadual do Estado do '+Dados.EstadosNome.Value+' incorreta!', mtError, [mbok],0);
        End;
end;

procedure TCadastro_Fabricantes.cEstadoExit(Sender: TObject);
begin
     With Dados do begin
          lEstadoEX.Enabled := Dados.EstadosCodigo.Value = 'EX';
          cEstadoEX.Enabled := Dados.EstadosCodigo.Value = 'EX';
          if Dados.EstadosCodigo.Value = 'EX' then begin
             Dados.FabricantesIsento.Value := True;
          end else begin
             Dados.FabricantesEstado_Nome.Value := EstadosNome.Value;
          end;
          cIEExit(nil);

          Municipios.Close;
          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
          Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
          Municipios.Open;
      End;
end;

procedure TCadastro_Fabricantes.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Fabricantes.cPaisChange(Sender: TObject);
begin
      With Dados do begin
           If FabricantesPais.Value <> '1058' then begin
              FabricantesEstado.Value           := 'EX';
              FabricantesMunicipio_Codigo.Value := 9999999;
              FabricantesEstado_Nome.Value      := EstadosNome.Value;
              cEstado.Enabled                   := False;
              cBairro.SetFocus;
           end else begin
              cEstado.Enabled    := True;
           End;

           lEstadoEX.Enabled := Dados.EstadosCodigo.Value = 'EX';
           cEstadoEX.Enabled := Dados.EstadosCodigo.Value = 'EX';
      End;
end;

procedure TCadastro_Fabricantes.DBEdit1Change(Sender: TObject);
begin
      With Dados do begin
           If FabricantesPais.Value <> '1058' then begin
              cEstado.Enabled    := False;
           end else begin
              cEstado.Enabled    := True;
           End;
      End;
end;

procedure TCadastro_Fabricantes.cPesquisaChange(Sender: TObject);
begin
      With Dados do begin
           If Fabricantes.Locate('Nome', cPesquisa.Text, [loPartialKey]) = False then begin
              tFabricantes.SQL.Clear;
              tFabricantes.SQL.Add('SELECT * FROM Fabricantes WHERE(Nome LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
              tFabricantes.Open;
              Fabricantes.Locate('Codigo', tFabricantes.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_Fabricantes.cIEKeyPress(Sender: TObject;var Key: Char);
begin
      //If not (Key in ['0'..'9', chr(8)]) then Key:=#0;
      If not (charinset(Key,['0'..'9', chr(8)])) then Key := #0;
end;

end.

