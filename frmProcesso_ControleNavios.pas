unit frmProcesso_ControleNavios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, system.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls, RxCurrEdit, RxToolEdit, RxDBCtrl, RxCtrls, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.WinXCtrls;

type
  TProcesso_ControleNavios = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    PanelNav: TPanel;
    bSair: TButton;
    pPaginas: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    cProcesso: TDBEdit;
    cOrdem: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText14: TStaticText;
    StaticText16: TStaticText;
    tTmp: TMSQuery;
    cFilial: TDBLookupComboBox;
    StaticText11: TStaticText;
    cDataEstimada: TDBDateEdit;
    StaticText3: TStaticText;
    cDataChegada: TDBDateEdit;
    StaticText4: TStaticText;
    cDataAtracacao: TDBDateEdit;
    StaticText5: TStaticText;
    DBDateEdit3: TDBDateEdit;
    StaticText6: TStaticText;
    DBEdit1: TDBEdit;
    StaticText10: TStaticText;
    cPremium: TDBEdit;
    StaticText12: TStaticText;
    cTranshipment: TDBEdit;
    StaticText13: TStaticText;
    StaticText17: TStaticText;
    cFator_Conversao: TDBEdit;
    StaticText18: TStaticText;
    cVariacao_Termica: TDBEdit;
    StaticText19: TStaticText;
    cValor_Demurrage: TDBEdit;
    StaticText21: TStaticText;
    cTempo_Demurrage: TDBEdit;
    StaticText22: TStaticText;
    cTotal_ME: TDBEdit;
    StaticText23: TStaticText;
    DBEdit2: TDBEdit;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    cObservacao: TDBMemo;
    cStatus: TDBComboBox;
    tFiliais: TMSQuery;
    dstFiliais: TDataSource;
    cNavio: TDBComboBox;
    tNavios: TMSQuery;
    dstNavios: TDataSource;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    tNotasNota: TIntegerField;
    tNotasData: TDateTimeField;
    tNotasEmissao: TStringField;
    tNotasDestinatario: TStringField;
    tNotasProcesso: TStringField;
    tNotasValor_TotalNota: TCurrencyField;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    GradeBL: TDBGrid;
    StaticText45: TStaticText;
    Panel7: TPanel;
    DBEdit4: TDBEdit;
    StaticText32: TStaticText;
    StaticText34: TStaticText;
    DBEdit3: TDBEdit;
    StaticText33: TStaticText;
    StaticText35: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    cBL: TDBEdit;
    cDataBL: TDBDateEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText48: TStaticText;
    DBEdit13: TDBEdit;
    TabSheet5: TTabSheet;
    StaticText43: TStaticText;
    DBMemo1: TDBMemo;
    tPorto: TMSQuery;
    dstPorto: TDataSource;
    dstArmazem: TDataSource;
    tArmazem: TMSQuery;
    Navega: TDBNavigator;
    Panel4: TPanel;
    DBEdit9: TDBEdit;
    StaticText15: TStaticText;
    StaticText37: TStaticText;
    DBEdit10: TDBEdit;
    StaticText60: TStaticText;
    StaticText47: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    cQtdeDecM3: TDBEdit;
    cQtdeDecLT: TDBEdit;
    cQtdeRecM3: TDBEdit;
    DBEdit16: TDBEdit;
    StaticText51: TStaticText;
    cQtdeRecLT: TDBEdit;
    StaticText52: TStaticText;
    DBMemo2: TDBMemo;
    StaticText42: TStaticText;
    cDataAtr: TDBDateEdit;
    StaticText44: TStaticText;
    cDataOper: TDBDateEdit;
    StaticText54: TStaticText;
    DBEdit11: TDBEdit;
    cLaudo: TDBEdit;
    StaticText55: TStaticText;
    tBLLaudos: TMSQuery;
    dstBLLaudos: TDataSource;
    tBLLaudosData_Emissao: TDateTimeField;
    tBLLaudosTon_Vac: TFloatField;
    tBLLaudosTon_Air: TFloatField;
    tBLLaudosEndossado: TBooleanField;
    tBLLaudosBloqueado: TBooleanField;
    tBLLaudosLaudo: TStringField;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    GradeNotas: TDBGrid;
    StaticText26: TStaticText;
    GroupBox1: TGroupBox;
    StaticText27: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    cEntradas: TCurrencyEdit;
    cSaidas: TCurrencyEdit;
    cDisponivel: TCurrencyEdit;
    Panel12: TPanel;
    Grade: TDBGrid;
    tNotasCNPJ: TStringField;
    tNotasSE: TStringField;
    tNotasQuantidade: TFloatField;
    StaticText56: TStaticText;
    Panel13: TPanel;
    StaticText53: TStaticText;
    DBGrid2: TDBGrid;
    Panel9: TPanel;
    DBGrid1: TDBGrid;
    StaticText46: TStaticText;
    Panel10: TPanel;
    bAddLaudo: TButton;
    bRemLaudo: TButton;
    bRemTodos: TButton;
    StaticText57: TStaticText;
    DBEdit12: TDBEdit;
    tBLLaudosRegistro: TIntegerField;
    tBLLaudosNavio: TIntegerField;
    PopupMenu1: TPopupMenu;
    ATIVO1: TMenuItem;
    EMANDAMENTO1: TMenuItem;
    ENCERRADO1: TMenuItem;
    Image2: TImage;
    StaticText59: TStaticText;
    DBEdit15: TDBEdit;
    StaticText61: TStaticText;
    DBEdit17: TDBEdit;
    tTerminal: TMSQuery;
    tTmp2: TMSQuery;
    cEndossado: TToggleSwitch;
    cBloqueado: TToggleSwitch;
    StaticText63: TStaticText;
    cDataPartida: TDBDateEdit;
    cQtdeCarga: TDBEdit;
    StaticText64: TStaticText;
    Panel11: TPanel;
    cFiltroStatus: TRadioGroup;
    cFiltroBL: TRadioGroup;
    cFiltroLaudo: TRadioGroup;
    cFiltroFilial: TDBLookupComboBox;
    StaticText66: TStaticText;
    tFiliaisNumero: TSmallintField;
    tFiliaisNome: TStringField;
    tFiliaisCidade: TStringField;
    tFiliaisEstado: TStringField;
    PanelBL: TPanel;
    NavegaBL: TDBNavigator;
    PanelLd: TPanel;
    NavegaLaudo: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    tBLLaudosBL: TStringField;
    tBLLaudosDI: TStringField;
    tBLLaudosObservacao: TMemoField;
    StaticText28: TStaticText;
    cPesquisa: TEdit;
    StaticText62: TStaticText;
    cPorto: TDBComboBox;
    cArmazem: TDBLookupComboBox;
    StaticText36: TStaticText;
    tArmazemCodigo: TIntegerField;
    tArmazemCNPJ: TStringField;
    tArmazemNome: TStringField;
    tArmazemMunicipio: TStringField;
    tBLLaudosPorto: TStringField;
    tBLLaudosArmazem: TSmallintField;
    cDescargaLT: TCurrencyEdit;
    tBLLaudosQuantidade_M315: TFloatField;
    tBLLaudosQuantidade_M320: TFloatField;
    tBLLaudosQuantidade_LT20: TFloatField;
    tBLLaudosQuantidade_LT15: TFloatField;
    StaticText72: TStaticText;
    StaticText73: TStaticText;
    DBEdit14: TDBEdit;
    DBEdit18: TDBEdit;
    StaticText74: TStaticText;
    DBEdit19: TDBEdit;
    StaticText75: TStaticText;
    DBEdit20: TDBEdit;
    tSoma: TMSQuery;
    dstSoma: TDataSource;
    GradeSoma: TDBGrid;
    tSomaDescricao: TStringField;
    tSomaM3: TFloatField;
    tSomaLITROS: TFloatField;
    cDifer: TCurrencyEdit;
    StaticText7: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText8: TStaticText;
    tProdutos: TMSQuery;
    dstProdutos: TDataSource;
    tProdutosCodigo: TIntegerField;
    tProdutosDescricao_Reduzida: TStringField;
    cEntreposto: TToggleSwitch;
    StaticText9: TStaticText;
    DBEdit21: TDBEdit;
    cReferencia: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cFiltroStatusClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure cOrdemChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaBLClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBLBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure GradeDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure GradeTitleClick(Column: TColumn);
    procedure NavegaLaudoClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaLaudoBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bAddLaudoClick(Sender: TObject);
    procedure bRemLaudoClick(Sender: TObject);
    procedure bRemTodosClick(Sender: TObject);
    procedure cQtdeDecM3Exit(Sender: TObject);
    procedure cQtdeRecM3Exit(Sender: TObject);
    procedure cLaudoChange(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure ATIVO1Click(Sender: TObject);
    procedure EMANDAMENTO1Click(Sender: TObject);
    procedure ENCERRADO1Click(Sender: TObject);
    procedure cBLChange(Sender: TObject);
    procedure cFiltroFilialClick(Sender: TObject);
    procedure cFiltroPortoChange(Sender: TObject);
    procedure pPaginasChange(Sender: TObject);
    procedure cNavioExit(Sender: TObject);
  private
    procedure Filtra;
    procedure PegaNotas;
    procedure TotalizaLaudo;
    { Private declarations }
  public
    { Public declarations }
    DirOrdem
   ,CampoOrdem:string;
  end;

var
  Processo_ControleNavios: TProcesso_ControleNavios;

implementation

{$R *.dfm}

uses frmDados, Funcoes, frmdmFiscal, frmControleNaviosLaudoBL, frmMenu_Principal;

procedure TProcesso_ControleNavios.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TProcesso_ControleNavios.bRemTodosClick(Sender: TObject);
var
   mVarLT
  ,mVarPerc: real;
begin
     if messagedlg('Deseja realmente remover todos os BL''s deste Laudo?', mtConfirmation, [mbyes, mbno], 0) = mrno then abort;
     with Dados do begin
          with tTmp do begin
               sql.Clear;
               sql.Add('update ControleNaviosBL set Laudo = null where Navio = :pNavio and Laudo = :pLaudo');
               parambyname('pNavio').Value := ControleNavios.fieldbyname('Ordem').asinteger;
               parambyname('pLaudo').Value := ControleNaviosLaudo.fieldbyname('Laudo').asstring;
               execute;

               TotalizaLaudo;
          end;
     end;
end;

procedure TProcesso_ControleNavios.ATIVO1Click(Sender: TObject);
begin
     with Dados, ControleNavios do begin
          edit;
             fieldbyname('Status').Value := 'ATIVO';
          post;
     end;
end;

procedure TProcesso_ControleNavios.bAddLaudoClick(Sender: TObject);
begin
      ControleNaviosLaudoBL := TControleNaviosLaudoBL.create(Self);
      ControleNaviosLaudoBL.caption := Caption;
      ControleNaviosLaudoBL.showmodal;
      TotalizaLaudo;
      tBLLaudos.Refresh;
end;

procedure TProcesso_ControleNavios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      FecharTabelas(Dados, nil, dmfiscal, nil);
      LimpaMemoria;   
      Processo_ControleNavios.Release;
      Processo_ControleNavios := nil;
end;

procedure TProcesso_ControleNavios.FormCreate(Sender: TObject);
begin
//     if (Screen.Width < width) then ScaleBy(Screen.Width, width+50);
      if Screen.Height <= 768 then begin
         ScaleBy(93, 100);
      end;

     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
     pPAginas.ActivePageIndex := 0;

     PanelNav.Visible := true;
     PanelBL.Visible  := false;
     PanelLd.Visible  := false;
     PanelBL.Align    := alBottom;
     PanelLd.Align    := alBottom;
end;

procedure TProcesso_ControleNavios.FormShow(Sender: TObject);
begin
     pPaginas.ActivePageIndex := 0;
     DirOrdem   := 'desc';
     CampoOrdem := 'Navio';
     with Dados do begin
          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
               open;
          end;
          with Estados do begin
               sql.Clear;
               sql.Add('select * from Estados order by Nome');
               open;
          end;
          with tFiliais do begin
               sql.Clear;
               sql.Add('select distinct');
               sql.Add('       Numero = Numero_Filial');
               sql.Add('      ,Nome   = cast(iif(Numero_Filial > 0, ''FILIAL ''+cast(Numero_Filial as varchar(6)), ''MATRIZ'') as varchar(10))');
               sql.Add('      ,Cidade = cast(upper((select Nome from Municipios where Codigo = Municipio_Codigo)) as varchar(30))');
               sql.Add('      ,Estado = cast(Estado as varchar(4))');
               sql.Add('from Empresas');
               sql.add('where SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
               parambyname('pCNPJ').AsString := Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8);
               sql.add('order by Numero_Filial');
               open;
          end;
          with tNavios do begin
               sql.clear;
               sql.add('select distinct Navio from ControleNavios');
               open;
               first;
               cNavio.Clear;
               while not eof do begin
                     cNavio.Items.add(fieldbyname('Navio').asstring);
                     next;
               end;
          end;
          with tPorto do begin
               sql.clear;
               sql.add('select distinct Porto from ControleNaviosBL where isnull(Porto, '''') <> '''' order by Porto');
               open;
               first;
               cPorto.Clear;
               while not eof do begin
                     cPorto.Items.add(fieldbyname('Porto').asstring);
                     next;
               end;
          end;
          with tArmazem do begin
               sql.Clear;
               sql.Add('select Codigo, CNPJ, Nome, Municipio from Fornecedores');
               sql.Add('where Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%ARMAZ%'')');
               sql.Add('order by Nome');
               open;
          end;
          with tProdutos do begin
               sql.Clear;
               sql.Add('select Codigo');
               sql.add('      ,Descricao_Reduzida');
               sql.add('from Produtos');
               sql.Add('where isnull(Desativado, 0) = 0');
               sql.Add('order by Descricao_Reduzida');
               open;
          end;

          Filtra;
     end;
end;

procedure TProcesso_ControleNavios.GradeDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
      with Dados, ControleNavios do begin
           if Grade.SelectedRows.CurrentRowSelected then begin
              TDbGrid(Sender).Canvas.Brush.Color := $00FF8080;
              TDbGrid(Sender).Canvas.font.Color  := clBlack;
           end else begin
               if fieldbyname('Status').asstring = 'ATIVO' then begin
                  TDbGrid(Sender).Canvas.font.Color:= clBlue;
               end;
               if fieldbyname('Status').asstring = 'EM ANDAMENTO' then begin
                  TDbGrid(Sender).Canvas.font.Color:= clGreen;
               end;
               if fieldbyname('Status').asstring = 'ENCERRADO' then begin
                  TDbGrid(Sender).Canvas.font.Color:= clRed;
               end;
           end;
      end;
end;

procedure TProcesso_ControleNavios.GradeTitleClick(Column: TColumn);
begin
     DirOrdem   := iif(DirOrdem = 'asc', 'desc', 'asc');
     CampoOrdem := Column.FieldName;
     Filtra;
end;

procedure TProcesso_ControleNavios.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      Navega.SetFocus;
      with Dados, ControleNavios do begin
           if Button = nbPost then begin
              if ValidaCampo(cFilial, trim(cFilial.text), '', '=', 'Campo "Filial de Destino" não informado!', 'CAMPO OBRIGATÓRIO!') then abort;
              if ValidaCampo(cStatus, trim(cStatus.text), '', '=', 'Campo "Status" não informado!', 'CAMPO OBRIGATÓRIO!') then abort;
              if ValidaCampo(cNavio , trim(cNavio.text) , '', '=', 'Campo "Navio" não informado!', 'CAMPO OBRIGATÓRIO!') then abort;
              if ValidaCampo(cDataPartida, ApenasNumeros(cDataPartida.EditText), '', '=', 'Campo "Data Partida" não informado!', 'CAMPO OBRIGATÓRIO!') then abort;
              if ValidaCampo(cDataEstimada, ApenasNumeros(cDataEstimada.EditText), '', '=', 'Campo "Data Estimada Chegada(ETA)" não informado!', 'CAMPO OBRIGATÓRIO!') then abort;
              if State = dsInsert then begin
                 with tTmp2 do begin
                      sql.clear;
                      sql.add('select Reg = isnull(max(Registro), 0)+1, Ordem = isnull(max(Ordem), 0)+1 from ControleNavios');
                      open;
                      ControleNavios.fieldbyname('Registro').Value := fieldbyname('Reg').asinteger;
                      ControleNavios.fieldbyname('Ordem').Value    := fieldbyname('Ordem').asinteger;
                 end;
              end;
           end;
           // Verifica se ha lancamento financeiro para o navio.
           if Button = nbDelete then begin
              with tTmp do begin
                   sql.Clear;
                   sql.Add('select count(*) as Qtde from PagarReceber where Navio = :pNavio');
                   parambyname('pNavio').AsInteger := ControleNavios.Fieldbyname('Ordem').AsInteger;
                   open;
                   if fieldByName('Qtde').AsInteger > 0 then begin
                      MessageDlg('Este Navio não pode ser excluido, pois ja foram feitos lançamentos financeiros utilizando-o.', mtInformation, [mbOK], 0);
                      ControleNavios.Cancel;
                      Abort;
                   end;

                   sql.Clear;
                   sql.Add('select count(*) as Qtde from NotasItens where Navio = :pNavio');
                   parambyname('pNavio').AsInteger := ControleNavios.Fieldbyname('Ordem').AsInteger;
                   open;
                   if fieldByName('Qtde').AsInteger > 0 then begin
                      MessageDlg('Este Navio não pode ser excluido, pois ja foram emitidas notas fiscais.', mtInformation, [mbOK], 0);
                      ControleNavios.Cancel;
                      Abort;
                   end;
              end;
              if MessageDlg('Deseja realmente excluir este Navio?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                 Abort
              end;
           End;
      end;
end;

procedure TProcesso_ControleNavios.NavegaBLBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     NavegaBL.SetFocus;
     with Dados, ControleNaviosBL do begin
          if Button = nbPost then begin
             if trim(ControleNaviosBl.FieldByName('BL').AsString) = '' then begin
                MessageDlg('Erro!'+#13+#13+'Falta informar o número do BL.', mtError, [mbok], 0);
                cBl.SetFocus;
                Abort;
             end;
             if DataLimpa(ControleNaviosBl.FieldByName('Data_Emissao').AsString) then begin
                MessageDlg('Erro!'+#13+#13+'Falta informar a Data do BL.', mtError, [mbok], 0);
                cDataBl.SetFocus;
                Abort;
             end;
             if State = dsInsert then begin
                with tTmp do begin
                     sql.clear;
                     sql.Add('select Qtde = count(*) from ControleNaviosBL where Navio = :pNavio and BL = :pBL');
                     parambyname('pNavio').AsInteger := ControleNaviosOrdem.AsInteger;
                     parambyname('pBL').Asstring     := ControleNaviosBLBL.Asstring;
                     open;
                     if fieldbyname('Qtde').asinteger > 0 then begin
                        messagedlg('Erro!'+#13+#13+'Número de BL ja cadastrada para esse navio!', mtError, [mbok], 0);
                        cBL.SetFocus;
                        Abort;
                     end;
                end;
             end;
             with tTmp do begin
                  sql.clear;
                  sql.add('select Reg = isnull(max(Registro), 0)+1 from ControleNaviosBL');
                  open;
             end;
             fieldbyname('Registro').Value   := tTmp.fieldbyname('Reg').asinteger;
             fieldbyname('Endossado').value  := cEndossado.State  = tsson;
             fieldbyname('Bloqueado').value  := cBloqueado.State  = tsson;
             fieldbyname('Entreposto').value := cEntreposto.State = tsson;
          end;
          if Button = nbDelete then begin
             // Verifica se existe algum Laudo vinculado ao BL.
             if trim(ControleNaviosBl.FieldByName('Laudo').AsString) <> '' then begin
                MessageDlg('Erro!'+#13+#13+'Esse BL não pode ser excluído pois existe "Laudo" vinculado.', mtError, [mbok], 0);
                Abort;
             end;
             if MessageDlg('Deseja realmente excluir este BL?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                Abort
             end;
          end;
     end;
end;

procedure TProcesso_ControleNavios.NavegaBLClick(Sender: TObject; Button: TNavigateBtn);
Var
   i:integer;
begin
     NavegaBL.SetFocus;
     with Dados do begin
          if (Button = nbEdit) and (ControleNaviosBL.recordcount = 0) then begin
             messagedlg('Nenhuma BL cadastrado para Editar ou Excluir!' , mtinformation, [mbok], 0);
             abort;
          end;
          if (Button = nbEdit) or (Button = nbInsert) then begin
             for i := 0 to 6 do begin
                 NavegaBL.Controls[i].Enabled := False;
             end;
             Panel7.Enabled := true;
             cPorto.SetFocus;
             if Button = nbInsert then begin
                ControleNaviosBL.fieldbyname('Endossado').value := false;
                ControleNaviosBL.fieldbyname('Bloqueado').value := faLse;
                ControleNaviosBL.fieldbyname('Navio').value     := ControleNavios.FieldByName('Ordem').AsInteger;
             end;
          end;
          if (Button = nbPost) or (Button = nbCancel) then Begin
             Panel7.Enabled := false;
             if Button = nbPost then Begin
                // Atualiza os totais do navio.
                with tTmp do begin
                     sql.clear;
                     sql.add('update Cybersoft_Cadastros.dbo.ControleNavios set Variacao_Termica = (select sum(Quantidade_LT20) from ControleNaviosBl where Navio = Ordem) -');
                     sql.add('                                                                     (select sum(Quantidade_RecebidaLT20) from ControleNaviosLaudo where Navio = Ordem)');
                     sql.add('where Ordem = :pOrdem');
                     parambyname('pOrdem').value := ControleNaviosOrdem.AsInteger;
                     //sql.savetofile('c:\temp\Controle_Navios_Total.sql');
                     execute;
                end;
                ControleNavios.RefreshRecord;

                with tPorto do begin
                     sql.clear;
                     sql.add('select distinct Porto from ControleNaviosBL where isnull(Porto, '''') <> '''' order by Porto');
                     open;
                     first;
                     cPorto.Clear;
                     while not eof do begin
                           cPorto.Items.add(fieldbyname('Porto').asstring);
                           next;
                     end;
                end;
                with tTmp do begin
                     sql.clear;
                     sql.add('select Total_BL = sum(Quantidade_LT20) from ControleNaviosBL cnb where cnb.Navio = :pNavio');
                     parambyname('pNavio').AsInteger := ControleNavios.fieldbyname('Ordem').AsInteger;
                     open;
                end;
             end;
          end;
     end;
end;

procedure TProcesso_ControleNavios.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
   i:integer;
begin
     with Dados do begin
          if (Button = nbEdit) or (Button = nbInsert) then begin
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             pPaginas.ActivePageIndex := 0;
             Panel2.Enabled := true;
             cFilial.SetFocus;
          end;
          if Button = nbInsert then begin
             ControleNaviosStatus.Value          := 'ATIVO';
             ControleNaviosFator_Conversao.Value := ConfiguracaoNavio_FatorConversao.AsFloat;
          end;
          if (Button = nbPost) or (Button = nbCancel) then Begin
             Panel2.Enabled := false;
             with tTmp do begin
                  sql.clear;
                  sql.add('select Total_BL = sum(Quantidade_LT20) from ControleNaviosBL cnb where cnb.Navio = :pNavio');
                  parambyname('pNavio').AsInteger := ControleNavios.fieldbyname('Ordem').AsInteger;
                  open;
             end;
          end;
     end;
end;

procedure TProcesso_ControleNavios.NavegaLaudoBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     NavegaLaudo.SetFocus;
     with Dados, ControleNaviosLaudo do begin
          if Button = nbEdit then begin
             with tTmp do begin
                  sql.clear;
                  sql.add('select Existe = count(*) from ControleNaviosBL where Navio = :pNavio and Laudo = :pLaudo');
                  parambyname('pNavio').AsInteger := ControleNavios.Fieldbyname('Ordem').AsInteger;
                  parambyname('pLaudo').Asstring  := ControleNaviosLaudo.Fieldbyname('Laudo').asstring;
                  open;
                  cLaudo.Enabled    := fieldbyname('Existe').AsInteger = 0;
                  cLaudo.Color      := iif(cLaudo.Enabled, clWhite, $00EFE4E4);
             end;
          end;
          if Button = nbPost then begin
             if ValidaCampo(cLaudo, trim(cLaudo.text), '', '=', 'Número "Laudo" não informado!', 'CAMPO OBRIGATÓRIO!') then abort;
             if DataLimpa(cDataAtr.text) then begin
                messagedlg('CAMPO OBRIGATÓRIO!'+#13+#13+'"Data de Atracação" não informada!', mterror, [mbok], 0);
                cDataAtr.SetFocus;
                abort;
             end;
             if DataLimpa(cDataOper.text) then begin
                messagedlg('CAMPO OBRIGATÓRIO!'+#13+#13+'"Data da Operação" não informada!', mterror, [mbok], 0);
                cDataOper.SetFocus;
                abort;
             end;
             if ValidaCampo(cQtdeRecM3, fieldbyname('Quantidade_RecebidaM320').AsFloat, 0, '=', '"Qantidade Recebida em M³" não informada!', 'CAMPO OBRIGATÓRIO!') then abort;
             if ValidaCampo(cQtdeRecLT, fieldbyname('Quantidade_RecebidaLT20').AsFloat, 0, '=', '"Qantidade Recebida em Litros" não informada!', 'CAMPO OBRIGATÓRIO!') then abort;

             if State = dsInsert then begin
                if Existe(Banco_Empresas, 'ControleNaviosLaudo', ' Laudo = '+quotedstr(fieldbyname('Laudo').asstring)+' and Navio = '+fieldbyname('Navio').asstring) then begin
                   messagedlg('Já exite um Laudo cadastrado com o número informado!', mtError,[mbok], 0);
                   cLaudo.setfocus;
                   abort;
                end;
                with tTmp do begin
                     sql.clear;
                     sql.add('select Reg = isnull(max(Registro), 0)+1 from ControleNaviosLaudo');
                     open;
                end;
                fieldbyname('Registro').Value := tTmp.fieldbyname('Reg').asinteger;
             end;
          end;
          if Button = nbDelete then begin
             // Verifica se existe algum BL vinculado ao Laudo.
             with tTmp do begin
                  sql.Clear;
                  sql.add('select Existe = isnull(count(*), 0) from ControleNaviosBL where Navio = :pNavio and Laudo = :pLaudo');
                  parambyname('pNavio').Value := ControleNaviosLaudo.fieldbyname('Navio').AsString;
                  parambyname('pLaudo').Value := ControleNaviosLaudo.fieldbyname('Laudo').AsString;
                  open;
                  if FieldByName('Existe').asinteger > 0 then begin
                     MessageDlg('Erro!'+#13+#13+'Esse Laudo não pode ser excluído pois existe "BL" vinculado.', mtError, [mbok], 0);
                     Abort;
                  end;
             end;
             if MessageDlg('Deseja realmente excluir este Laudo?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                Abort
             end;
          end;
     end;
end;

procedure TProcesso_ControleNavios.NavegaLaudoClick(Sender: TObject; Button: TNavigateBtn);
Var
   i:integer;
begin
     with Dados do begin
          if (Button = nbEdit) and (ControleNaviosLaudo.recordcount = 0) then begin
             messagedlg('Nenhuma Laudo cadastrado para Editar ou Excluir!' , mtinformation, [mbok], 0);
             abort;
          end;
          if (Button = nbEdit) or (Button = nbInsert) then begin
             for i := 0 to 6 do begin
                 NavegaLaudo.Controls[i].Enabled := False;
             end;
             Panel4.Enabled := true;
             if cLaudo.Enabled then
                cLaudo.SetFocus
             else
                cDataAtr.SetFocus;

             if Button = nbInsert then begin
                ControleNaviosLaudo.fieldbyname('Navio').value := ControleNavios.FieldByName('Ordem').AsInteger;
             end;
          end;
          if (Button = nbPost) or (Button = nbCancel) then Begin
             Panel4.Enabled := false;
             cLaudo.Color   := clWhite;
             if Button = nbPost then Begin
                // Atualiza o total descarregado do navio.
                with tTmp do begin
                     sql.clear;
                     sql.add('update Cybersoft_Cadastros.dbo.ControleNavios set Variacao_Termica = (select sum(Quantidade_LT20) from ControleNaviosBl where Navio = Ordem) -');
                     sql.add('                                                                     (select sum(Quantidade_RecebidaLT20) from ControleNaviosLaudo where Navio = Ordem)');
                     sql.add('where Ordem = :pOrdem');
                     parambyname('pOrdem').value := ControleNaviosOrdem.AsInteger;
                     execute;
                end;
                ControleNavios.RefreshRecord;
             end;
          end;
          bAddLaudo.Enabled := ControleNaviosLaudo.recordcount > 0;
          bRemLaudo.Enabled := ControleNaviosLaudo.recordcount > 0;
          bRemTodos.Enabled := ControleNaviosLaudo.recordcount > 0;
     end;
end;

procedure TProcesso_ControleNavios.bRemLaudoClick(Sender: TObject);
begin
     if messagedlg('Deseja realmente remover este BL do Laudo?', mtConfirmation, [mbyes, mbno], 0) = mrno then abort;

     with Dados do begin
          with tTmp do begin
               sql.Clear;
               sql.Add('update ControleNaviosBL set Laudo = null where Navio = :pNavio and Laudo = :pLaudo and BL = :pBL');
               parambyname('pNavio').Value := ControleNavios.fieldbyname('Ordem').asinteger;
               parambyname('pLaudo').Value := ControleNaviosLaudo.fieldbyname('Laudo').asstring;
               parambyname('pBL').Value    := tBLLaudos.FieldByName('BL').asstring;
               execute;
          end;
          TotalizaLaudo;
          tBLLaudos.Refresh;
          ControleNaviosBL.Refresh;
     end;
end;

procedure TProcesso_ControleNavios.cBLChange(Sender: TObject);
begin
      with Dados, ControleNaviosBL do begin
           cEndossado.State  := iif(fieldbyname('Endossado').AsBoolean , tsson, tssoff);
           cBloqueado.State  := iif(fieldbyname('Bloqueado').AsBoolean , tsson, tssoff);
           cEntreposto.State := iif(fieldbyname('Entreposto').AsBoolean, tsson, tssoff);
      end;
end;

procedure TProcesso_ControleNavios.cFiltroFilialClick(Sender: TObject);
begin
     Filtra;
end;

procedure TProcesso_ControleNavios.cFiltroStatusClick(Sender: TObject);
begin
     Filtra;
end;

procedure TProcesso_ControleNavios.cFiltroPortoChange(Sender: TObject);
begin
    Filtra;
end;

procedure TProcesso_ControleNavios.cLaudoChange(Sender: TObject);
begin
     with Dados do begin
          with tBLLaudos do begin
               sql.Clear;
               sql.Add('select *');
               sql.Add('from  ControleNaviosBL');
               sql.add('where Navio = :pNavio');
               sql.add('and Laudo = :pLaudo');
               sql.add('order by BL');
               parambyname('pNavio').Value := ControleNavios.fieldbyname('Ordem').asinteger;
               parambyname('pLaudo').Value := ControleNaviosLaudo.fieldbyname('Laudo').asstring;
               //sql.savetofile('c:\temp\Controle_Navios_BL_Laudos.sql');
               open;
               ControleNaviosBL.Refresh;
          end;
     end;
end;

procedure TProcesso_ControleNavios.cNavioExit(Sender: TObject);
begin
     with Dados, ControleNavios do begin
          if State = dsInsert then begin
             cReferencia.Text := ApenasNumeros(FieldByName('Navio').AsString);
          end;
     end;
end;

procedure TProcesso_ControleNavios.cOrdemChange(Sender: TObject);
begin
     Image2.Picture := nil;
     if cStatus.Text = 'ATIVO'        then Dados.ImageList2.GetBitmap(2, Image2.Picture.Bitmap);
     if cStatus.Text = 'EM ANDAMENTO' then Dados.ImageList2.GetBitmap(3, Image2.Picture.Bitmap);
     if cStatus.Text = 'ENCERRADO'    then Dados.ImageList2.GetBitmap(4, Image2.Picture.Bitmap);
     PegaNotas;
end;

procedure TProcesso_ControleNavios.cPesquisaChange(Sender: TObject);
begin
      with Dados, tTmp2 do begin
           sql.Clear;
           sql.Add('select Registro from ControleNavios where Navio like '+QuotedStr('%'+cPesquisa.Text+'%'));
           open;
           cFiltroStatus.ItemIndex := 0;
           cFiltroBL.ItemIndex     := 0;
           cFiltroLaudo.ItemIndex := 0;
           cFiltroFilial.KeyValue := -1;
           if recordcount <> 0 then begin
              ControleNavios.Locate('Registro', FieldByName('Registro').AsInteger, [loCaseInsensitive]);
           end;
      end;
end;

procedure TProcesso_ControleNavios.cQtdeDecM3Exit(Sender: TObject);
begin
     with Dados, ControleNaviosLaudo do begin
          fieldbyname('Quantidade_LT20').value := fieldbyname('Quantidade_M320').asfloat * 1000;
          if state = dsInsert then begin
             fieldbyname('Quantidade_RecebidaM320').value  := fieldbyname('Quantidade_M320').asfloat;
             fieldbyname('Quantidade_RecebidaLT20').value  := fieldbyname('Quantidade_M320').asfloat * 1000;
          end;
     end;
end;

procedure TProcesso_ControleNavios.cQtdeRecM3Exit(Sender: TObject);
begin
     with Dados, ControleNaviosLaudo do begin
          fieldbyname('Quantidade_RecebidaLT20').value  := fieldbyname('Quantidade_RecebidaM320').asfloat * 1000;
     end;
end;

procedure TProcesso_ControleNavios.DBEdit13Exit(Sender: TObject);
begin
     with Dados, ControleNaviosBL do begin
          fieldbyname('Quantidade_LT20').Value := fieldbyname('Quantidade_M320').AsFloat * 1000;
          if fieldbyname('Quantidade_EmbM320').asfloat <= 0 then begin
             fieldbyname('Quantidade_EmbM320').Value := fieldbyname('Quantidade_M320').AsFloat;
             fieldbyname('Quantidade_EmbLT20').Value := fieldbyname('Quantidade_M320').AsFloat * 1000;
          end;
     end;
end;

procedure TProcesso_ControleNavios.DBEdit7Exit(Sender: TObject);
begin
     with Dados, ControleNaviosBL do begin
          fieldbyname('Quantidade_LT15').Value    := fieldbyname('Quantidade_M315').AsFloat * 1000;
          if fieldbyname('Quantidade_EmbM315').asfloat <= 0 then begin
             fieldbyname('Quantidade_EmbM315').Value := fieldbyname('Quantidade_M315').AsFloat;
             fieldbyname('Quantidade_EmbLT15').Value := fieldbyname('Quantidade_M315').AsFloat * 1000;
          end;
     end;
end;

procedure TProcesso_ControleNavios.EMANDAMENTO1Click(Sender: TObject);
begin
     with Dados, ControleNavios do begin
          edit;
             fieldbyname('Status').Value := 'EM ANDAMENTO';
          post;
     end;
end;

procedure TProcesso_ControleNavios.ENCERRADO1Click(Sender: TObject);
begin
     with Dados, ControleNavios do begin
          edit;
             fieldbyname('Status').Value := 'ENCERRADO';
          post;
     end;
end;

procedure TProcesso_ControleNavios.Filtra;
begin
     with Dados, ControleNavios do begin
          sql.Clear;
          sql.Add('select * from ControleNavios cn');
          sql.add('where Registro is not null');
          if cFiltroStatus.ItemIndex > 0 then begin
             sql.add('and Status = '+quotedstr(cFiltroStatus.Items[cFiltroStatus.ItemIndex]));
          end;
          if cFiltroBL.ItemIndex = 1 then begin
             sql.add('and (select count(*) from '+EmpresasBanco_Dados.asstring+ '.dbo.ControleNaviosBL cnb where cnb.Navio = cn.Ordem) > 0');
          end;
          if cFiltroBL.ItemIndex = 2 then begin
             sql.add('and (select count(*) from '+EmpresasBanco_Dados.asstring+ '.dbo.ControleNaviosBL cnb where cnb.Navio = cn.Ordem) = 0');
          end;
          if cFiltroLaudo.ItemIndex = 1 then begin
             sql.add('and (select count(*) from '+EmpresasBanco_Dados.asstring+ '.dbo.ControleNaviosLaudo cnb where cnb.Navio = cn.Ordem) > 0');
          end;
          if cFiltroLaudo.ItemIndex = 2 then begin
             sql.add('and (select count(*) from '+EmpresasBanco_Dados.asstring+ '.dbo.ControleNaviosLaudo cnb where cnb.Navio = cn.Ordem) = 0');
          end;
          if cFiltroFilial.Text <> '' then begin
             sql.add('and Filial = :pFilial');
             parambyname('pFilial').AsInteger := cFiltroFilial.KeyValue;
          end;
          sql.add('order by '+CampoOrdem+' '+DirOrdem);
          //sql.SaveToFile('c:\temp\Controle_Navios.sql');
          open;
     end;
end;

procedure TProcesso_ControleNavios.PegaNotas;
begin
     with Dados do begin
          if ControleNavios.state <= dsBrowse then begin
             with tNotas do begin
                  sql.Clear;
                  sql.Add('select Nota = Numero');
                  sql.Add('      ,Data = Data_Emissao');
                  sql.Add('      ,SE = case when Saida_Entrada = 0 then ''ENTRADA'' else ''SAÍDA'' end');
                  sql.add('      ,Emissao = ''PROPRIA'' ');
                  sql.Add('      ,Destinatario = Destinatario_Nome');
                  sql.Add('      ,CNPJ = Destinatario_CNPJ_CPF');
                  sql.Add('      ,Processo');
                  sql.Add('      ,Total = Valor_TotalNota');
                  sql.Add('      ,Quantidade = (select sum(Quantidade) from NotasItens ni where ni.Nota = nf.Numero and ni.Data = nf.Data_Emissao)');
                  sql.Add('from  NotasFiscais nf');
                  sql.add('where Numero in(select Nota from NotasItensNavios where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Nota');
                  sql.add('      ,Data = Data_Emissao');
                  sql.add('      ,Saida_Entrada = ''ENTRADA'' ');
                  sql.add('      ,Emissao = ''TERCEIROS'' ');
                  sql.add('      ,Destinatario = (select Nome from Fornecedores where Codigo = Fornecedor)');
                  sql.Add('      ,CNPJ = (select CNPJ from Fornecedores where Codigo = Fornecedor)');
                  sql.add('      ,Processo');
                  sql.add('      ,Total = Valor_TotalNota');
                  sql.Add('      ,Quantidade = (select sum(Quantidade) from NotasTerceirosItens nti where nti.Nota = nt.Nota and nti.Data_Emissao = nt.Data_Emissao and nti.Fornecedor = nt.Fornecedor)');
                  sql.add('from NotasTerceiros nt');
                  sql.add('where Nota in(select Nota from NotasTerceirosItens where Navio = :pNavio)');
                  sql.add('order by Data, SE');
                  parambyname('pNavio').Value := ControleNavios.fieldbyname('Ordem').asstring;
                  //sql.savetofile('c:\temp\Controle_Navios_Notas.sql');
                  open;
             end;
             with tTmp do begin
                  sql.clear;
                  sql.add('select Entradas   = sum(iif(Saida_Entrada = 0, Quantidade, 0))');
                  sql.add('      ,Saidas     = sum(iif(Saida_Entrada = 1, Quantidade, 0))');
                  sql.add('      ,Disponivel = sum(iif(Saida_Entrada = 0, Quantidade, Quantidade*-1))');
                  sql.add('from   NotasItensNavios');
                  sql.add('where Navio = :pNavio');
                  parambyname('pNavio').AsInteger := ControleNavios.fieldbyname('Ordem').AsInteger;
                  open;
                  cEntradas.Value   := fieldbyname('Entradas').AsFloat;
                  cSaidas.Value     := fieldbyname('Saidas').AsFloat;
                  cDisponivel.Value := fieldbyname('Disponivel').AsFloat;
             end;
             with ControleNaviosBL do begin
                  sql.Clear;
                  sql.Add('select *');
                  sql.Add('from  ControleNaviosBL');
                  sql.add('where Navio = :pNavio');
                  sql.add('order by BL');
                  parambyname('pNavio').Value := ControleNavios.fieldbyname('Ordem').asinteger;
                  //sql.savetofile('c:\temp\Controle_Navios_BL.sql');
                  open;
             end;
             with ControleNaviosLaudo do begin
                  sql.Clear;
                  sql.Add('select *');
                  sql.Add('from  ControleNaviosLaudo');
                  sql.add('where Navio = :pNavio');
                  sql.add('order by Laudo');
                  parambyname('pNavio').Value := ControleNavios.fieldbyname('Ordem').asinteger;
                  //sql.savetofile('c:\temp\Controle_Navios_Laudo.sql');
                  open;
                  bAddLaudo.Enabled := recordcount > 0;
                  bRemLaudo.Enabled := recordcount > 0;
                  bRemTodos.Enabled := recordcount > 0;
             end;
             with tSoma do begin
                  sql.clear;
                  sql.add('--[ 15º GRAUS ]----------------------------------------------------------------------------------------------------------');
                  sql.add('select Descricao = ''Total 15º'' ');
                  sql.add('      ,M3 = (select sum(Quantidade_m315) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(Quantidade_m315*1000) from ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Descricao = ''Total Não Endossado 15º'' ');
                  sql.add('      ,M3 = (select sum(iif(Endossado = 0, Quantidade_m315, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(iif(Endossado = 0, Quantidade_m315*1000, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Descricao = ''Total Endossado 15º'' ');
                  sql.add('      ,M3 = (select sum(iif(Endossado = 1, Quantidade_m315, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(iif(Endossado = 1, Quantidade_m315*1000, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Descricao = ''Total não Bloqueado 15º'' ');
                  sql.add('      ,M3 = (select sum(iif(Bloqueado = 0, Quantidade_m315, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(iif(Bloqueado = 0, Quantidade_m315*1000, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Descricao = ''Total Bloqueado 15º'' ');
                  sql.add('      ,M3 = (select sum(iif(Bloqueado = 1, Quantidade_m315, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(iif(Bloqueado = 1, Quantidade_m315*1000, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('--[ 20º GRAUS ]----------------------------------------------------------------------------------------------------------');
                  sql.add('select Descricao = ''Total 20º'' ');
                  sql.add('      ,M3 = (select sum(Quantidade_m320) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(Quantidade_m320*1000) from ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Descricao = ''Total Não Endossado 20º'' ');
                  sql.add('      ,M3 = (select sum(iif(Endossado = 0, Quantidade_m320, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(iif(Endossado = 0, Quantidade_m320*1000, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Descricao = ''Total Endossado 20º'' ');
                  sql.add('      ,M3 = (select sum(iif(Endossado = 1, Quantidade_m320, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(iif(Endossado = 1, Quantidade_m320*1000, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Descricao = ''Total não Bloqueado 20º'' ');
                  sql.add('      ,M3 = (select sum(iif(Bloqueado = 0, Quantidade_m320, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(iif(Bloqueado = 0, Quantidade_m320*1000, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('union all');
                  sql.add('select Descricao = ''Total Bloqueado 20º'' ');
                  sql.add('      ,M3 = (select sum(iif(Bloqueado = 1, Quantidade_m320, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  sql.add('      ,LITROS = (select sum(iif(Bloqueado = 1, Quantidade_m320*1000, 0)) from  ControleNaviosBL where Navio = :pNavio)');
                  parambyname('pNavio').AsInteger := ControleNavios.fieldbyname('Ordem').AsInteger;
                  open;
             end;
             with tTmp do begin
                  sql.clear;
                  sql.add('select Total_LT20 = sum(Quantidade_LT20)');
                  sql.add('from   ControleNaviosBL where Navio = :pNavio');
                  parambyname('pNavio').AsInteger := ControleNavios.fieldbyname('Ordem').AsInteger;
                  open;
                  cDifer.Value := ControleNavios.fieldbyname('Quantidade_Carga').AsFloat - fieldbyname('Total_LT20').AsFloat;
             end;
          end;
     end;
end;

procedure TProcesso_ControleNavios.pPaginasChange(Sender: TObject);
begin
     PanelNav.Visible := pPaginas.ActivePageIndex in[0,3];
     PanelBL.Visible  := pPaginas.ActivePageIndex = 1;
     PanelLd.Visible  := pPaginas.ActivePageIndex = 2;
end;

procedure TProcesso_ControleNavios.TotalizaLaudo;
var
   mVarLT
  ,mVarPerc: real;
begin
     // Atualiza os totais com as quantidades dos bl's.
     with Dados do begin
          with tTmp do begin
               sql.clear;
               sql.add('select QtdeM320 = (select isnull(sum(Quantidade_m320), 0) from ControleNaviosBL where Navio = :pNavio and Laudo = :pLaudo)');
               sql.add('      ,QtdeLT20 = (select isnull(sum(Quantidade_m320), 0)*1000 from ControleNaviosBL where Navio = :pNavio and Laudo = :pLaudo)');
               parambyname('pNavio').Value := ControleNaviosLaudo.fieldbyname('Navio').AsInteger;
               parambyname('pLaudo').Value := ControleNaviosLaudo.fieldbyname('Laudo').asstring;
               open;
               mVarLT   := ControleNaviosLaudo.fieldbyname('Quantidade_RecebidaLT20').AsFloat - fieldbyname('QtdeLT20').AsFloat;
               mVarPerc := (((ControleNaviosLaudo.fieldbyname('Quantidade_RecebidaLT20').AsFloat-fieldbyname('QtdeLT20').AsFloat)/ControleNaviosLaudo.fieldbyname('Quantidade_RecebidaLT20').AsFloat)*100);
               ControleNaviosLaudo.Edit;
                                   ControleNaviosLaudo.fieldbyname('Quantidade_M320').value  := fieldbyname('QtdeM320').AsFloat;
                                   ControleNaviosLaudo.fieldbyname('Quantidade_LT20').value  := fieldbyname('QtdeLT20').AsFloat;
                                   ControleNaviosLaudo.fieldbyname('Variacao_DesLT').value   := mVarLT;
                                   ControleNaviosLaudo.fieldbyname('Variacao_DesPerc').value := mVarPerc;
               ControleNaviosLaudo.Post;
               tBLLaudos.Refresh;
               ControleNaviosBL.Refresh;
          end;
     end;
end;



end.
