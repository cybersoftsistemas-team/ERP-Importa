unit frmProcesso_RegistroDUIMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Vcl.ComCtrls, RXDBCtrl, DB, DBAccess, MSAccess, RxDBComb, RxLookup, Buttons,
  Mask, Grids, DBGrids, MemDS, RxToolEdit, Vcl.JumpList, RxCurrEdit, Math, system.UITypes, System.WideStrUtils;

type
  TProcesso_RegistroDUIMP = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    pPasta: TPageControl;
    tDadosDI: TTabSheet;
    pAdicoes: TTabSheet;
    Label5: TLabel;
    tReg: TMSQuery;
    tLista: TTabSheet;
    Grade: TDBGrid;
    bGerarDI: TButton;
    TabSheet1: TTabSheet;
    Memo: TMemo;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    GradeAcre: TDBGrid;
    Panel3: TPanel;
    StaticText34: TStaticText;
    cAcrescimo: TRxDBLookupCombo;
    cValorME: TDBEdit;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    cMoedaAcre: TRxDBLookupCombo;
    StaticText37: TStaticText;
    NavegaAcre: TDBNavigator;
    DBEdit7: TDBEdit;
    StaticText39: TStaticText;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    tTotalAcre: TMSQuery;
    dsTotalAcre: TDataSource;
    tTotalAcreMoeda: TIntegerField;
    tTotalAcreTotalME: TCurrencyField;
    tTotalAcreTotalReal: TFloatField;
    tTotalAcreMoeda_Nome: TStringField;
    DBGrid1: TDBGrid;
    bPesqRec: TSpeedButton;
    bPesqURFDesp: TSpeedButton;
    bPesqURFEnt: TSpeedButton;
    bPesqCons: TSpeedButton;
    bPesqPais: TSpeedButton;
    bPesqMoe1: TSpeedButton;
    bPesqMoe2: TSpeedButton;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit38: TDBEdit;
    RxDBLookupCombo7: TRxDBLookupCombo;
    StaticText24: TStaticText;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit14: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    StaticText3: TStaticText;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    cData: TDBDateEdit;
    RxDBComboBox2: TRxDBComboBox;
    StaticText6: TStaticText;
    RxDBComboBox3: TRxDBComboBox;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    cURFEntrega: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText44: TStaticText;
    cModalidade: TDBLookupComboBox;
    StaticText10: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText11: TStaticText;
    RxDBLookupCombo4: TRxDBLookupCombo;
    StaticText12: TStaticText;
    RxDBComboBox4: TRxDBComboBox;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText17: TStaticText;
    RxDBComboBox5: TRxDBComboBox;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    cLocalEmb: TRxDBComboBox;
    StaticText22: TStaticText;
    DBDateEdit1: TDBDateEdit;
    StaticText23: TStaticText;
    DBDateEdit2: TDBDateEdit;
    cNomeVei: TRxDBComboBox;
    StaticText5: TStaticText;
    RxDBComboBox6: TRxDBComboBox;
    StaticText16: TStaticText;
    DBEdit1: TDBEdit;
    StaticText2: TStaticText;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DBRadioGroup1: TDBRadioGroup;
    RxDBLookupCombo9: TRxDBLookupCombo;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText28: TStaticText;
    cMoedaFrete: TRxDBLookupCombo;
    StaticText27: TStaticText;
    DBEdit3: TDBEdit;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    cMoedaSeguro: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    cProcesso: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBGrid2: TDBGrid;
    tAdicoes: TMSQuery;
    tAcrescimos: TMSQuery;
    bGerarAdicoes: TButton;
    RxDBComboBox1: TRxDBComboBox;
    StaticText38: TStaticText;
    Panel4: TPanel;
    cValorReal: TDBEdit;
    tTotal: TMSQuery;
    tTributos: TTabSheet;
    GroupBox1: TGroupBox;
    StaticText40: TStaticText;
    RxDBLookupCombo12: TRxDBLookupCombo;
    StaticText41: TStaticText;
    RxDBLookupCombo13: TRxDBLookupCombo;
    StaticText42: TStaticText;
    RxDBLookupCombo14: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    StaticText43: TStaticText;
    RxDBLookupCombo15: TRxDBLookupCombo;
    StaticText45: TStaticText;
    RxDBLookupCombo16: TRxDBLookupCombo;
    tMercadoria: TMSQuery;
    StaticText46: TStaticText;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo17: TRxDBLookupCombo;
    ttmp: TMSQuery;
    StaticText47: TStaticText;
    cTipoConhecimento: TRxDBLookupCombo;
    StaticText48: TStaticText;
    DBEdit5: TDBEdit;
    tSetor: TMSQuery;
    dstSetor: TDataSource;
    tSetorSetor: TSmallintField;
    tSetorDescricao: TStringField;
    cNomeAgente: TRxDBComboBox;
    DBEdit10: TDBEdit;
    StaticText15: TStaticText;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    NavegaDOC: TDBNavigator;
    Panel6: TPanel;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    DBEdit11: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText51: TStaticText;
    cEmbalagem: TRxDBLookupCombo;
    StaticText52: TStaticText;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    StaticText53: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesqRecClick(Sender: TObject);
    procedure bPesqURFDespClick(Sender: TObject);
    procedure bPesqURFEntClick(Sender: TObject);
    procedure bPesqConsClick(Sender: TObject);
    procedure bPesqPaisClick(Sender: TObject);
    procedure bPesqMoe1Click(Sender: TObject);
    procedure bPesqMoe2Click(Sender: TObject);
    procedure bGerarDIClick(Sender: TObject);
    procedure NavegaAcreClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaAcreBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit6Change(Sender: TObject);
    procedure bGerarAdicoesClick(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure RxDBLookupCombo7Change(Sender: TObject);
    procedure NavegaDOCClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaDOCBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
     mBCII
    ,mBCPIS
    ,mBCCOFINS
    ,mBCIPI
    ,mBCICMS
    ,mPIS
    ,mCOFINS
    ,mIPI
    ,mII: real;
    procedure CalculaImpostos;
  public
    { Public declarations }
  end;

var
  Processo_RegistroDUIMP: TProcesso_RegistroDUIMP;

implementation

Uses Funcoes, frmDados, frmdmDespacho, frmPesquisaGerais, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TProcesso_RegistroDUIMP.bSairClick(Sender: TObject);
begin
      close;
end;

procedure TProcesso_RegistroDUIMP.DBEdit6Change(Sender: TObject);
begin
     with Dados, dmDespacho do begin
          with DIAdicoes do begin
               sql.clear;
               sql.Add('select *');
               sql.Add('from DIAdicoes');
               sql.Add('where DI = :pDI');
               sql.Add('order by NCM, Adicao');
               Parambyname('pDI').Asstring := DUIMPDUIMP.asstring;
               open;
          end;
          with DIAcrescimo do begin
               sql.clear;
               sql.Add('select *');
               sql.Add('from DIAcrescimo');
               sql.Add('where DI = :pDI');
               sql.Add('order by Moeda');
               Parambyname('pDI').Asstring := DUIMPDUIMP.asstring;
               open;
          end;
          with DIDocumentos do begin
               sql.clear;
               sql.Add('select *');
               sql.Add('      ,Descricao = (select Descricao from Cybersoft_Cadastros.dbo.DocumentoInstrucao dit where dit.Codigo = did.Codigo)');
               sql.Add('from DIDocumentos did');
               sql.Add('where DI = :pDI');
               sql.Add('order by Descricao');
               Parambyname('pDI').Asstring := DUIMPDUIMP.asstring;
               open;
          end;
          with tTotalAcre do begin
               sql.clear;
               sql.Add('select dia.Moeda');
               sql.add('      ,TotalME   = sum(isnull(dia.Valor_ME, 0))');
               sql.Add('      ,TotalReal = sum(isnull(dia.Valor_ME, 0)) * (select isnull(Valor, 1) from Cybersoft_Cadastros.dbo.Cotacao cot where cot.Moeda = dia.Moeda and cot.Data = :pData)');
               sql.Add('from DIAcrescimo dia');
               sql.Add('where DI = :pDI');
               sql.Add('group by dia.moeda');
               Parambyname('pDI').Asstring := DUIMPDUIMP.asstring;
               Parambyname('pData').Asdate := DUIMPData.asdatetime;
               //sql.SaveToFile('c:\temp\Total_Acrescimo.sql');
               open;
          end;
     end;
end;

procedure TProcesso_RegistroDUIMP.NavegaAcreBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      ActiveControl := nil;
      with Dados, dmDespacho do begin
           if Button = nbPost then begin
              if DIAcrescimo.state = dsInsert then begin
                 tReg.SQL.Clear;
                 tReg.SQL.Add('SELECT Reg = ISNULL(MAX(Registro), 0)+1 FROM DIAcrescimo');
                 tReg.Open;
                 DIAcrescimoRegistro.Value    := tReg.FieldByName('Reg').asinteger;
                 DIAcrescimoDI.Value          := DUIMPDUIMP.Asstring;
               end;

               DIAcrescimoValor_Real.Value := iif(DIAcrescimoMoeda.asinteger <> 790, DIAcrescimoValor_ME.ascurrency * InvoiceTaxa_Cambio.AsFloat, DIAcrescimoValor_ME.ascurrency);
           end;

           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
           Panel1.Enabled := true;
      end;
end;

procedure TProcesso_RegistroDUIMP.NavegaAcreClick(Sender: TObject; Button: TNavigateBtn);
var
   i:integer;
begin
      with dmDespacho do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  NavegaAcre.Controls[i].Enabled := False;
              end;
              Panel3.Enabled := true;
              Panel1.Enabled := false;
           end;
           if (Button = nbPost) or (Button = nbCancel) then begin
              Panel3.Enabled := false;
              Panel1.Enabled := true;
           end;
      end;
end;

procedure TProcesso_RegistroDUIMP.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, dmDespacho, nil, nil);
     LimpaMemoria;
     Processo_RegistroDI.Release;
     Processo_RegistroDI := nil;
end;

procedure TProcesso_RegistroDUIMP.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_RegistroDUIMP.FormShow(Sender: TObject);
begin
     with Dados, dmDespacho do begin
          // Carregando os locais de embarque pré-existentes.
          with tReg do begin
               SQL.Clear;
               SQL.Add('select distinct local_Embarque from Invoice where ltrim(rtrim(Local_Embarque)) <> '''' order by Local_Embarque');
               Open;
               cLocalEmb.Items.Clear;
               while not eof do begin
                     cLocalEmb.Items.add(FieldByName('Local_Embarque').asString);
                     Next;
               end;
          end;
          // Carregando os nome de veículos pré-existentes.
          with tReg do begin
               close;
               SQL.Clear;
               SQL.Add('SELECT DISTINCT Nome_Veiculo FROM DI Order BY Nome_Veiculo');
               Open;
               cNomeVei.Items.Clear;
               while not tReg.eof do begin
                     cNomeVei.Items.add(tReg.FieldByName('Nome_Veiculo').asString);
                     tReg.Next;
               end;
               close;
          end;
          // Carregando os nome dos agente transportador pré-existentes.
          with tReg do begin
               close;
               SQL.Clear;
               SQL.Add('SELECT DISTINCT Agente_Transportador FROM DI Order BY Agente_Transportador');
               Open;
               cNomeAgente.Items.Clear;
               while not tReg.eof do begin
                     cNomeAgente.Items.add(tReg.FieldByName('Agente_Transportador').asString);
                     tReg.Next;
               end;
               close;
          end;
          with DUIMP do begin
               sql.Clear;
               sql.Add('select * from DI order by Data, DI');
               Open;
          end;
          with DIAcrescimo do begin
               sql.clear;
               sql.Add('select *');
               sql.Add('from DIAcrescimo');
               sql.Add('where DI = :pDI');
               sql.Add('order by Moeda');
               Parambyname('pDI').Asstring := DUIMPDUIMP.asstring;
               open;
          end;
          with DIAdicoes do begin
               sql.clear;
               sql.Add('select *');
               sql.Add('from DIAdicoes');
               sql.Add('where DI = :pDI');
               sql.Add('order by NCM, Adicao');
               Parambyname('pDI').Asstring := DUIMPDUIMP.asstring;
               open;
          end;
          with DIDocumentos do begin
               sql.clear;
               sql.Add('select *');
               sql.Add('      ,Descricao = (select Descricao from Cybersoft_Cadastros.dbo.DocumentoInstrucao dit where dit.Codigo = did.Codigo)');
               sql.Add('from DIDocumentos did');
               sql.Add('where DI = :pDI');
               sql.Add('order by Descricao');
               Parambyname('pDI').Asstring := DUIMPDUIMP.asstring;
               open;
          end;
          with Invoice do begin
               sql.Clear;
               sql.Add('select * from Invoice inv where Registro in(select max(Registro) from Invoice reg where reg.Processo = inv.Processo)');
               Open;
          end;
          with OrgaosSRF do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM OrgaosSRF ORDER BY Descricao, Orgao, Recinto, Setor');
               Open;
          end;
          with RecintosAduaneiros do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM RecintosAduaneiros ORDER BY Descricao, Codigo');
               Open;
          end;
          with LocalDesembaraco do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM LocalDesembaraco ORDER BY Descricao');
               Open;
          end;
          with TiposProcesso do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo, Descricao');
               Open;
          end;
          with TiposDeclaracao do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM TiposDeclaracao ORDER BY Codigo, Descricao');
               Open;
          end;
          with Clientes do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
               Open;
          end;
          with Fornecedores do begin
               SQL.Clear;
               SQL.Add('SELECT *');
               SQL.Add('FROM   Fornecedores');
               SQL.Add('WHERE  Ramo_Atividade IN(SELECT Codigo FROM RamoAtividade WHERE Descricao LIKE ''%TRANSPORT%'') ');
               SQL.Add('ORDER BY Nome');
               Open;
          end;
          with Paises do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Paises ORDER BY Nome');
               Open;
          end;
          with Bancos do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Bancos ORDER BY Nome');
               Open;
          end;
          with Moedas do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
               Open;
          end;
          with RegimeTributacao do begin
               SQL.Clear;
               SQL.Add('select * from RegimeTributacao order by Descricao');
               Open;
          end;
          with FundamentoLegal do begin
               SQL.Clear;
               SQL.Add('select * from FundamentoLegal order by Codigo');
               Open;
          end;
          with MotivoAdmissaoTemp do begin
               SQL.Clear;
               SQL.Add('select * from MotivoAdmissaoTemp order by Codigo');
               Open;
          end;
          with TipoConhecimento do begin
               SQL.Clear;
               SQL.Add('select * from TipoConhecimento order by Descricao');
               Open;
          end;
          with tSetor do begin
               SQL.Clear;
               SQL.Add('select Setor = cast(Setor as smallint)');
               SQL.Add('      ,Descricao');
               SQL.add('from OrgaosSRF where Recinto = :pRecinto order by Descricao');
               Open;
          end;
          with DocInstrucao do begin
               SQL.Clear;
               SQL.Add('select *');
               SQL.add('from DocumentoInstrucao order by Descricao');
               Open;
          end;
          with Embalagens do begin
               SQL.Clear;
               SQL.Add('select * from TiposEmbalagem order by Descricao');
               Open;
          end;

          pPasta.ActivePageIndex := 0;
     end;
end;

procedure TProcesso_RegistroDUIMP.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados, dmDespacho do begin
           if (Button = nbPost) and (DUIMP.state = dsInsert) then begin
              tReg.SQL.Clear;
              tReg.SQL.Add('SELECT Reg = ISNULL(MAX(Registro), 0)+1 FROM DI');
              tReg.Open;
              DUIMPRegistro.Value := tReg.FieldByName('Reg').asinteger;
              if trim(DUIMPDUIMP.AsString) = '' then begin
                 DUIMPDUIMP.Value := concat('TMP#', trim(tReg.FieldByName('Reg').asstring));
              end;
           end;
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
              tReg.SQL.Clear;
              tReg.SQL.Add('delete from DIAcrescimo where Registro_DI = :pReg');
              tReg.ParamByName('pReg').AsInteger := DUIMPRegistro.AsInteger;
              tReg.Execute;
              DIAcrescimo.Refresh;
              tReg.SQL.Clear;
              tReg.SQL.Add('delete from DIAdicoes where DI = :pDI');
              tReg.ParamByName('pDI').Asstring := DUIMPDUIMP.asstring;
              tReg.Execute;
              DIAdicoes.Refresh;
           end;
           Panel2.Enabled := true;
      end;
end;

procedure TProcesso_RegistroDUIMP.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
   i:integer;
begin
      with Dados, dmDespacho do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;

              if Button = nbInsert then begin
                 DUIMPFUNDAP.Value        := false;
                 DUIMPMultimodal.Value       := false;
                 DUIMPSituacao.value         := 'Em Confecção';
                 DUIMPOrigem_DI.VAlue        := 2;
                 DUIMPTipo_Pagamento.Value   := 1;
              end;
              pPasta.ActivePageIndex := 1;
              tDadosDI.Enabled       := true;
              tTributos.Enabled      := true;
              Panel2.Enabled         := false;
              bPesquisa.Enabled      := false;
              bGerarAdicoes.Enabled  := false;
              bGerarDI.Enabled       := false;
              cProcesso.SetFocus;
           end;

           if (Button = nbPost) or (Button = nbCancel) then begin
              tDadosDI.Enabled       := false;
              tTributos.Enabled      := false;
              bPesquisa.Enabled      := true;
              bGerarAdicoes.Enabled  := true;
              bGerarDI.Enabled       := true;
           end;
      end;
end;

procedure TProcesso_RegistroDUIMP.NavegaDOCBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      ActiveControl := nil;
      with Dados, dmDespacho do begin
           if Button = nbPost then begin
              if DIDocumentos.state = dsInsert then begin
                 DIDocumentosDI.Value := DUIMPDUIMP.Asstring;
               end;
           end;
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
           Panel1.Enabled := true;
      end;
end;

procedure TProcesso_RegistroDUIMP.NavegaDOCClick(Sender: TObject; Button: TNavigateBtn);
var
   i:integer;
begin
      with dmDespacho do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  NavegaDoc.Controls[i].Enabled := False;
              end;
              Panel6.Enabled := true;
              Panel1.Enabled := false;
           end;
           if (Button = nbPost) or (Button = nbCancel) then begin
              Panel6.Enabled := false;
              Panel1.Enabled := true;
           end;
      end;
end;

procedure TProcesso_RegistroDUIMP.RxDBLookupCombo7Change(Sender: TObject);
begin
     with dmDespacho do begin
          with tSetor do begin
               SQL.Clear;
               SQL.Add('select distinct Setor = cast(Setor as smallint)');
               SQL.Add('      ,Recinto');
               SQL.Add('      ,Descricao');
               SQL.add('from OrgaosSRF');
               sql.Add('where Recinto = :pRecinto');
               sql.Add('order by Descricao');
               ParamByName('pRecinto').AsInteger := DUIMPRecinto_Aduaneiro.AsInteger;
               Open;
          end;
     end;
end;

procedure TProcesso_RegistroDUIMP.bPesqRecClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'RecintosAduaneiros';
      PesquisaGerais.mCampo  := 'Recinto_Aduaneiro';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.DUIMP;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_RegistroDUIMP.bPesqURFDespClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'LocalDesembaraco';
      PesquisaGerais.mCampo  := 'URF_Despacho';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.DUIMP;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_RegistroDUIMP.bPesqURFEntClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'LocalDesembaraco';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mCampo  := 'URF_Entrega';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.DUIMP;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_RegistroDUIMP.bPesqConsClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Consignatario';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := dmDespacho.DUIMP;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_RegistroDUIMP.bPesqPaisClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Paises';
      PesquisaGerais.mCampo  := 'Pais_Procedencia';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.DUIMP;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_RegistroDUIMP.bGerarAdicoesClick(Sender: TObject);
var
   mPesoLiq
  ,mPesoBrt
  ,mTotalAcre
  ,mTotalReal
  ,mTotalAcreReal
  ,mTotalME: real;
begin
     mTotaLReal     := 0;
     mTotalAcreReal := 0;
     if messagedlg('Atenção!'+#13+#13+'Isso ira criar todas as "Adições da DI", substituindo as existentes.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
        Abort;
     end;

     with dmDespacho, Dados, dmFiscal do begin
          with tAdicoes do begin
               sql.Clear;
               sql.Add('select ivi.NCM');
               sql.Add('      ,inv.Exportador');
               sql.add('      ,Adicao       = row_number() over (order by NCM)');
               sql.Add('      ,Quantidade   = sum(ivi.Quantidade)');
               sql.Add('      ,Peso_Liquido = sum(ivi.Peso_Liquido * ivi.Quantidade)');
               sql.Add('      ,Peso_Bruto   = sum(ivi.Peso_Bruto   * ivi.Quantidade)');
               sql.Add('      ,inv.INCOTERMS');
               sql.add('      ,inv.Local_Condicao');
               sql.add('      ,inv.Metodo_Valoracao');
               sql.add('      ,inv.Moeda');
               sql.add('      ,Moeda_Nome = (select Nome from Cybersoft_Cadastros.dbo.Moedas where Codigo = inv.Moeda)');
               sql.add('      ,inv.Taxa_Cambio');
               sql.add('      ,inv.Cobertura_Cambial');
               sql.add('      ,inv.Financiadora');
               sql.add('      ,inv.Motivo_SemCobertura');
               sql.add('      ,inv.Aplicacao');
               sql.add('      ,inv.Condicao_Mercadoria');
               sql.add('      ,ivi.Fabricante');
               sql.add('      ,inv.Moeda_Frete');
               sql.add('      ,inv.Moeda_Seguro');
               sql.Add('      ,Valor_ME         = sum(round(ivi.Valor_UnitarioME * ivi.Quantidade, 2, 6))');
               sql.Add('      ,Valor_Real       = sum(ivi.Valor_Unitario   * ivi.Quantidade)');
               sql.add('      ,Valor_Frete      = sum((inv.Frete_PrePaid+Frete_Collect / inv.Peso_Liquido) * (ivi.Peso_Liquido * ivi.Quantidade))');
               sql.add('      ,Valor_FreteReal  = round(sum((inv.Frete_PrePaid+Frete_Collect / inv.Peso_Liquido) * (ivi.Peso_Liquido * ivi.Quantidade)) * inv.Taxa_Cambio, 2, 4)');
               sql.add('      ,Valor_Seguro     = sum((inv.Seguro / inv.Total_FaturaME) * (ivi.Valor_UnitarioME * ivi.Quantidade))');
               sql.add('      ,Valor_SeguroReal = round(sum((inv.Seguro / inv.Total_FaturaME) * (ivi.Valor_UnitarioME * ivi.Quantidade)) * inv.Taxa_Cambio, 2, 4)');
               sql.add('      ,Pais_Aquisicao');
               sql.add('      ,Pais_Origem');
               sql.Add('into  #tmp');
               sql.Add('from  InvoiceItens ivi, Invoice inv');
               sql.Add('where inv.Processo = :pProc');
               sql.Add('and   inv.Numero = ivi.Invoice');
               sql.Add('group by ivi.NCM');
               sql.Add('        ,inv.Exportador');
               sql.Add('        ,inv.INCOTERMS');
               sql.Add('        ,Inv.Local_Condicao');
               sql.Add('        ,Inv.Metodo_Valoracao');
               sql.Add('        ,inv.Moeda');
               sql.Add('        ,inv.Taxa_Cambio');
               sql.Add('        ,inv.Cobertura_Cambial');
               sql.Add('        ,inv.Financiadora');
               sql.Add('        ,inv.Motivo_SemCobertura');
               sql.Add('        ,inv.Aplicacao');
               sql.add('        ,inv.Condicao_Mercadoria');
               sql.add('        ,ivi.Fabricante');
               sql.add('        ,inv.Moeda_Frete');
               sql.add('        ,inv.Moeda_Seguro');
               sql.add('        ,inv.Pais_Aquisicao');
               sql.add('        ,inv.Pais_Origem');
               sql.Add('select *');
               sql.Add('      ,Valor_BCPISCOF = round(Valor_Real + Valor_Frete + Valor_Seguro, 2)');
               sql.Add('      ,Valor_BCII     = round(Valor_Real + Valor_Frete + Valor_Seguro, 2)');
               sql.Add('from #tmp');
               sql.add('order by NCM, Adicao');
               sql.Add('drop table #tmp');
               parambyname('pProc').AsString := DUIMPProcesso.AsString;
               //sql.SaveToFile('c:\temp\Gerar_tAdicoes.sql');
               open;
               first;
          end;
          with tAcrescimos do begin
               sql.clear;
               sql.Add('select DI');
               sql.Add('      ,Codigo');
               sql.Add('      ,Moeda');
               sql.Add('      ,Total_ME   = sum(Valor_ME)');
               sql.Add('      ,Total_Real = sum(Valor_Real)');
               sql.Add('from  DIAcrescimo');
               sql.add('where DI = :pDI');
               sql.Add('group by Moeda, DI, Codigo');
               parambyname('pDI').AsString := DUIMPDUIMP.AsString;
               //sql.SaveToFile('c:\temp\Gerar_Totaliza_tAcrescimos.sql');
               open;
          end;
          with AdicoesAcre do begin
               sql.clear;
               sql.Add('delete from AdicoesAcrescimo where DI = :pDI');
               parambyname('pDI').AsString := DUIMPDUIMP.AsString;
               execute;
               sql.clear;
               sql.Add('select * from AdicoesAcrescimo where DI = :pDI');
               parambyname('pDI').AsString := DUIMPDUIMP.AsString;
               open;
          end;

          with DIAdicoes do begin
               sql.Clear;
               sql.Add('delete from DIAdicoes where DI = :pDI');
               parambyname('pDI').AsString := iif(trim(DUIMPDUIMP.AsString) <> '', DUIMPDUIMP.AsString, 'TMP#'+DUIMPRegistro.AsString);
               execute;

               sql.Clear;
               sql.Add('select * from DIAdicoes where DI = :pDI order by NCM, Adicao');
               parambyname('pDI').AsString := DUIMPDUIMP.AsString;
               open;

               mPesoLiq := 0;
               mPesoBrt := 0;
               mTotalME := 0;

               while not tAdicoes.eof do begin
                     with NCM do begin
                          sql.clear;
                          sql.Add('select * from NCM where NCM = :pNCM');
                          parambyname('pNCM').AsString := tAdicoes.FieldByName('NCM').AsString;
                          open;
                     end;
                     with Unidades do begin
                          sql.clear;
                          sql.Add('select * from UnidadeMedida where Codigo = :pCod');
                          parambyname('pCod').AsString := NCM.FieldByName('Unidade').AsString;
                          open;
                     end;
                     with Fornecedores do begin
                          sql.clear;
                          sql.Add('select * from Fornecedores where Codigo = :pExp');
                          parambyname('pExp').AsInteger := tAdicoes.FieldByName('Exportador').asinteger;
                          open;
                     end;

                     // Criando os acréscimos da "Adição".
                     if tAcrescimos.RecordCount > 0 then begin
                        with AdicoesAcre do begin
                             tReg.sql.Clear;
                             tReg.sql.Add('select isnull(max(Registro), 0)+1 as Reg from AdicoesAcrescimo');
                             tReg.Open;

                             open;
                             Append;
                                  FieldByname('Registro').Value   := tReg.FieldByName('Reg').AsInteger;
                                  FieldByname('DI').Value         := iif(trim(DUIMPDUIMP.AsString) <> '', DUIMPDUIMP.AsString, 'TMP#'+DUIMPRegistro.AsString);
                                  FieldByname('Adicao').Value     := tAdicoes.FieldByName('Adicao').asinteger;
                                  FieldByname('Codigo').Value     := tAcrescimos.FieldByName('Codigo').asinteger;
                                  FieldByname('Moeda').Value      := tAcrescimos.FieldByName('Moeda').asinteger;
                                  FieldByname('Valor_ME').Value   := (tAcrescimos.fieldbyname('Total_ME').AsCurrency   / DUIMPPeso_Liquido.AsFloat) * tAdicoes.FieldByName('Peso_Liquido').AsFloat;
                                  FieldByname('Valor_Real').Value := (tAcrescimos.fieldbyname('Total_Real').AsCurrency / DUIMPPeso_Liquido.AsFloat) * tAdicoes.FieldByName('Peso_Liquido').AsFloat;
                             post;
                             tReg.Close;
                        end;
                     end;

                     CalculaImpostos;

                     tReg.SQL.Clear;
                     tReg.SQL.Add('select isnull(Max(Registro), 0)+1 as Registro from DIAdicoes');
                     tReg.Open;

                     Append;
                          Fieldbyname('Registro').value              := tReg.FieldByName('Registro').AsInteger;
                          Fieldbyname('DI').value                    := iif(trim(DUIMPDUIMP.AsString) <> '', DUIMPDUIMP.AsString, 'TMP#'+DUIMPRegistro.AsString);
                          Fieldbyname('LI').value                    := null;
                          Fieldbyname('Adicao').value                := tAdicoes.FieldByName('Adicao').asinteger;
                          Fieldbyname('NCM').value                   := tAdicoes.FieldByName('NCM').AsString;
                          Fieldbyname('NBM').value                   := tAdicoes.FieldByName('NCM').AsString;
                          Fieldbyname('NALADI_SH').value             := iif(NCM.FieldByName('NALADI').AsString      <> '', NCM.FieldByName('NALADI').AsString     , '00000000');
                          Fieldbyname('NALADI_NCCA').value           := iif(NCM.FieldByName('NALADI_NCCA').AsString <> '', NCM.FieldByName('NALADI_NCCA').AsString, '0000000');
                          Fieldbyname('Vinculo_CompVend').value      := Fornecedores.FieldByName('Vinculo_CompVend').asinteger;
                          Fieldbyname('Relacao_ExpFab').value        := Fornecedores.FieldByName('Relacao_ExpFab').asinteger;
                          Fieldbyname('Peso_Liquido').value          := tAdicoes.FieldByName('Peso_Liquido').asfloat;
                          Fieldbyname('Peso_Bruto').value            := tAdicoes.FieldByName('Peso_Bruto').asfloat;
                          Fieldbyname('Aliquota_COFINS').value       := NCM.FieldByName('COFINS').asfloat;
                          Fieldbyname('Aliquota_RedCOFINS').value    := NCM.FieldByName('COFINS_Reducao').asfloat;
                          Fieldbyname('Aliquota_PIS').value          := NCM.FieldByName('PIS').asfloat;
                          Fieldbyname('Aliquota_RedPIS').value       := NCM.FieldByName('PIS_Reducao').asfloat;
                          Fieldbyname('Valor_MercadoriaME').value    := tAdicoes.FieldByName('Valor_ME').ascurrency;
                          Fieldbyname('Valor_MercadoriaReal').value  := tAdicoes.FieldByName('Valor_Real').ascurrency;
                          Fieldbyname('Quantidade').value            := tAdicoes.FieldByName('Quantidade').asfloat;
                          Fieldbyname('INCOTERMS').value             := tAdicoes.FieldByName('INCOTERMS').asstring;
                          Fieldbyname('Metodo_Valoracao').value      := tAdicoes.FieldByName('Metodo_Valoracao').asinteger;
                          Fieldbyname('Local_CondicaoVenda').value   := tAdicoes.FieldByName('Local_Condicao').asstring;
                          Fieldbyname('Taxa_Cambio').value           := tAdicoes.FieldByName('Taxa_Cambio').asfloat;
                          Fieldbyname('Moeda_FOB').value             := tAdicoes.FieldByName('Moeda').asinteger;
                          Fieldbyname('Cobertura_Cambial').value     := tAdicoes.FieldByName('Cobertura_Cambial').asinteger;
                          Fieldbyname('Orgao_Financiador').value     := tAdicoes.FieldByName('Financiadora').asinteger;
                          Fieldbyname('Motivo_SemCobertura').value   := tAdicoes.FieldByName('Motivo_SemCobertura').asinteger;
                          Fieldbyname('Aplicacao').value             := tAdicoes.FieldByName('Aplicacao').asstring;
                          Fieldbyname('Condicao_Mercadoria').value   := tAdicoes.FieldByName('Condicao_Mercadoria').asstring;
                          Fieldbyname('Unidade').value               := Unidades.FieldByName('Descricao').asstring;
                          Fieldbyname('Fabricante').value            := tAdicoes.FieldByName('Fabricante').asinteger;
                          Fieldbyname('Exportador').value            := tAdicoes.FieldByName('Exportador').asinteger;
                          Fieldbyname('Moeda_Frete').value           := tAdicoes.FieldByName('Moeda_Frete').asinteger;
                          Fieldbyname('Valor_Frete').value           := roundto(tAdicoes.FieldByName('Valor_Frete').ascurrency, -2);
                          Fieldbyname('Moeda_Seguro').value          := tAdicoes.FieldByName('Moeda_Seguro').asinteger;
                          Fieldbyname('Valor_Seguro').value          := roundto(tAdicoes.FieldByName('Valor_Seguro').ascurrency, -2);
                          Fieldbyname('Acordo_TarifarioII').value    := NCM.FieldByName('Acordo_TarifarioII').asfloat;
                          Fieldbyname('Acordo_TarifarioIICod').value := NCM.FieldByName('Acordo_TarifarioIICod').asinteger;
                          Fieldbyname('Aliquota_II').value           := NCM.FieldByName('II').asfloat;
                          Fieldbyname('Aliquota_ReducaoII').value    := NCM.FieldByName('Reducao_II').asfloat;
                          Fieldbyname('II_Reduzida').value           := NCM.FieldByName('II_Reduzida').asfloat;
                          Fieldbyname('Valor_BCII').value            := mBCII;
                          Fieldbyname('Valor_II').value              := mII;
                          Fieldbyname('Valor_BCIPI').value           := mBCIPI;
                          Fieldbyname('Valor_IPI').value             := mIPI;
                          Fieldbyname('Valor_BCPIS').value           := mBCPIS;
                          Fieldbyname('Valor_PIS').value             := mPIS;
                          Fieldbyname('Valor_BCCOFINS').value        := mBCCOFINS;
                          Fieldbyname('Valor_COFINS').value          := mCOFINS;
                          Fieldbyname('Aliquota_IPIEspRec').value    := NCM.FieldByName('IPI_AliqEspRecip').asfloat;
                          Fieldbyname('Aliquota_IPIEspUnid').value   := NCM.FieldByName('IPI_AliqEspUnid').asfloat;
                          Fieldbyname('Aliquota_RedIPI').value       := NCM.FieldByName('Reducao_IPI').asfloat;
                          Fieldbyname('Pais_Aquisicao').value        := tAdicoes.FieldByName('Pais_Aquisicao').asinteger;
                          Fieldbyname('Pais_Origem').value           := tAdicoes.FieldByName('Pais_ORigem').asinteger;
                          Fieldbyname('Aliquota_ICMS').value         := NCM.FieldByName('ICMS_Importacao').asfloat;
                          Fieldbyname('Fundamento_LegalPIS').value   := NCM.FieldByName('Regime_TribPISCOFINS').asinteger;
                          Fieldbyname('Reducao_BCPISCOFINS').value   := NCM.FieldByName('COFINS_Reducao').asfloat;
                          Fieldbyname('Fundamento_LegalReduc').value := NCM.FieldByName('Fundamento_RedPISCOFINS').asinteger;
                          Fieldbyname('Regime_PIS').value            := NCM.FieldByName('Regime_TribPISCOFINS').asinteger;
                          Fieldbyname('Regime_TribII').value         := NCM.FieldByName('Regime_TribII').asinteger;

                     Post;
                     tReg.close;

                     mPesoLiq       := mPesoLiq       + tAdicoes.FieldByName('Peso_Liquido').asfloat;
                     mPesoBrt       := mPesoBrt       + tAdicoes.FieldByName('Peso_Bruto').asfloat ;
                     mTotaLME       := mTotalME       + tAdicoes.FieldByName('Valor_ME').asfloat;
                     mTotaLReal     := mTotalReal     + tAdicoes.FieldByName('Valor_Real').asfloat;
                     mTotalAcreReal := mTotalAcreReal + AdicoesAcre.FieldByName('Valor_Real').ascurrency;

                     tAdicoes.Next;
               end;

               with DUIMP do begin
                    edit;
                        FieldByName('Peso_Liquido').Value         := mPesoLiq;
                        FieldByName('Peso_Bruto').Value           := mPesoBrt;
                        FieldByName('Total_MercadoriaME').Value   := mTotalME;
                        FieldByName('Total_MercadoriaReal').Value := mTotalReal;
                        FieldByName('Total_AcrescimoReal').Value  := mTotalAcreReal;
                    post;
               end;
          end;
     end;
end;

procedure TProcesso_RegistroDUIMP.bGerarDIClick(Sender: TObject);
var
  mAcreReal: real;
  mDesc: string;
  mDI: TStringList;
  mFreteME: real;
  mCompl: widestring;
const
  mCobCambial: array[1..4] of String = ('ATE 180 DIAS', 'DE 181 A 360 DIAS', 'ACIMA DE 360 DIAS', 'SEM COBERTURA');
  mFunRedPIS: array[1..2] of String = ('IMPORTACAO, PARA REVENDA, DE CAMINHOES CHASSI E MONOBLOCO NA FORMA DEFINIDA PELA LEI 10865/04 - ART. 7º, PAR. 3º, INC. I',
                                       'IMPORTACAO, PARA REVENDA, DE MAQUINAS E VEICULOS NA FORMA DEFINIDA PELA LEI 10865/04 - ART. 7º, PAR. 3º, INC. II'
                                      );

  mRelCompVend: array[1..3] of String = ('O Fabricante/Produtor é o Exportado',
                                         'O Fabricante/Produtor não é o Exportado',
                                         'O Fabricante/Produtor o desconhecido'
                                        );

  mVincCompVend: array[1..3] of String = ('Não há vinculação',
                                          'Há vinculação, mas este não teve influência sobre o preço da mercadoria',
                                          'Há vinculação, e esta vinculção influênciou no preço da mercadoria'

                                         );

{ ****************** TIPOS DE IMPORTADOR **********************
1,PESSOA JURIDICA
2,PESSOA FISICA RESIDENTE NO PAIS
3,PESSOA FISICA RESIDENTE NO EXTERIOR
4,MISSAO DIPLOMATICA/REPRESENTACAO ORGANISMOS INTERNACION
5,PESSOA FISICA RESIDENTE NO PAIS SEM INSCRICAO NO CPF
6,TRANSPORTADOR PORTA A PORTA (REMESSAS INTERNACIONAIS)
***************************************************************
}
begin
      pPasta.ActivePageIndex := 6;

      with Dados, dmDespacho do begin
           with tMercadoria do begin
                sql.Clear;
                sql.Add('select Item = row_number() over (order by NCM)');
                sql.Add('      ,ivi.Quantidade');
                sql.Add('      ,ivi.Valor_UnitarioME');
                sql.add('      ,Unidade = (select max(Descricao) from Cybersoft_Cadastros.dbo.UnidadeMedida where Codigo = ivi.Unidade)');
                sql.add('      ,Descricao = (select Descricao from Produtos where Codigo = Codigo_Mercadoria)');
                sql.add('      ,Codigo_Mercadoria');
                sql.Add('from  InvoiceItens ivi, Invoice inv');
                sql.Add('where inv.Processo = :pProc');
                sql.Add('and   inv.Numero = ivi.Invoice');
                sql.Add('group by ivi.NCM');
                sql.Add('        ,ivi.Quantidade');
                sql.Add('        ,ivi.Valor_UnitarioME');
                sql.Add('        ,inv.Exportador');
                sql.Add('        ,inv.INCOTERMS');
                sql.Add('        ,Inv.Local_Condicao');
                sql.Add('        ,Inv.Metodo_Valoracao');
                sql.Add('        ,inv.Moeda');
                sql.Add('        ,inv.Taxa_Cambio');
                sql.Add('        ,inv.Cobertura_Cambial');
                sql.Add('        ,inv.Financiadora');
                sql.Add('        ,inv.Motivo_SemCobertura');
                sql.Add('        ,inv.Aplicacao');
                sql.Add('        ,inv.Condicao_Mercadoria');
                sql.Add('        ,ivi.Fabricante');
                sql.Add('        ,inv.Moeda_Frete');
                sql.Add('        ,ivi.Unidade');
                sql.Add('        ,ivi.Codigo_Mercadoria');
                parambyname('pProc').AsString := DUIMPProcesso.AsString;
                open;
           end;
           with Memo.lines do begin
                clear;
                add('<?xml version="1.0" encoding="utf-8" standalone="yes"?>');
                add(CriaTag('ListaDeclaracoesTransmissao', '', 'A', 0));     // Abre tag principal.
                add(CriaTag('declaracao'                 , '', 'A', 1));     // Abre tag Declaração

                with tAdicoes do begin
                     sql.clear;
                     sql.Add('select *');
                     sql.Add('      ,Metodo_ValNome = (select Descricao from Cybersoft_Cadastros.dbo.MetodoValoracao mv where mv.Codigo = dia.Metodo_Valoracao)');
                     sql.Add('      ,Moeda_Nome     = (select Nome from Cybersoft_Cadastros.dbo.Moedas moe where moe.Codigo = dia.Moeda_FOB)');
                     sql.Add('      ,Financiadora_Nome = isnull((select Descricao from Cybersoft_Cadastros.dbo.AgenciaFinanciadora where Codigo = dia.Financiadora), ''N/I'')');
                     sql.add('      ,Motivo_SemCobertura = isnull(motivo_SemCobertura, 0)');
                     sql.Add('      ,Motivo_Nome = isnull((select Descricao from Cybersoft_Cadastros.dbo.MotivoCambial where Codigo = dia.Motivo_SemCobertura), ''N/I'')');
                     sql.add('      ,NCM_Nome = (select Produto from NCM where NCM.NCM = dia.NCM)');
                     sql.add('      ,Destaque = (select Destaque from NCM where NCM.NCM = dia.NCM)');

                     sql.Add('      ,Fabricante_Cidade = (select Municipio   from Fabricantes where Codigo = dia.Fabricante)');
                     sql.Add('      ,Fabricante_Compl  = (select Complemento from Fabricantes where Codigo = dia.Fabricante)');
                     sql.Add('      ,Fabricante_Rua    = (select Rua         from Fabricantes where Codigo = dia.Fabricante)');
                     sql.Add('      ,Fabricante_Nome   = (select Nome        from Fabricantes where Codigo = dia.Fabricante)');
                     sql.Add('      ,Fabricante_Numero = (select Rua_Numero  from Fabricantes where Codigo = dia.Fabricante)');

                     sql.Add('      ,Fornecedor_Cidade = (select Municipio   from Fornecedores where Codigo = dia.Exportador)');
                     sql.Add('      ,Fornecedor_Compl  = (select Complemento from Fornecedores where Codigo = dia.Exportador)');
                     sql.Add('      ,Fornecedor_Estado = (select Estado_Nome from Fornecedores where Codigo = dia.Exportador)');
                     sql.Add('      ,Fornecedor_Rua    = (select Rua         from Fornecedores where Codigo = dia.Exportador)');
                     sql.Add('      ,Fornecedor_Nome   = (select Nome        from Fornecedores where Codigo = dia.Exportador)');
                     sql.Add('      ,Fornecedor_Numero = (select Rua_Numero  from Fornecedores where Codigo = dia.Exportador)');

                     sql.Add('      ,Moeda_FreteCodigo = dia.Moeda_Frete');
                     sql.Add('      ,Valor_FreteME     = (select Frete_Prepaid+Frete_Collect from DI where DI.DI = :pDI)');
                     sql.Add('      ,Valor_FreteReal   = round((select Frete_Prepaid+Frete_Collect from DI where DI.DI = :pDI) * (select Valor from Cybersoft_Cadastros.dbo.Cotacao cot where cot.Moeda = dia.Moeda_Frete and cot.Data = (select Data from DI where DI.DI = :pDI)), 2, 6)');

                     sql.Add('      ,Moeda_SeguroCodigo = dia.Moeda_Seguro');
                     sql.Add('      ,Valor_Seguro       = (select Valor_Seguro from DI where DI.DI = :pDI)');
                     sql.Add('      ,Valor_SeguroReal   = round((select Valor_Seguro from DI where DI.DI = :pDI) * (select Valor from Cybersoft_Cadastros.dbo.Cotacao cot where cot.Moeda = dia.Moeda_Seguro and cot.Data = (select Data from DI where DI.DI = :pDI)), 2, 6)');

                     sql.add('      ,Pais_AquisicaoNome = (select lTrim(rTrim(Nome)) from cybersoft_Cadastros.dbo.Paises where Codigo = dia.Pais_Aquisicao)');
                     sql.add('      ,Pais_OrigemNome    = (select lTrim(rTrim(Nome)) from cybersoft_Cadastros.dbo.Paises where Codigo = dia.Pais_Origem)');
                     sql.add('      ,Regime_TribII');
                     sql.add('      ,Regime_TribIINome  = (select Descricao from cybersoft_Cadastros.dbo.RegimeTributacao where Codigo = Regime_TribII)');
                     sql.Add('      ,Regime_TribPISNome = (select Descricao from cybersoft_Cadastros.dbo.RegimeTributacao where Codigo = dia.Regime_PIS)');
                     sql.Add('from DIAdicoes dia');
                     sql.add('where DI = :pDI');
                     sql.Add('order by Adicao');
                     //sql.SaveToFile('c:\temp\Gerar_DI_Adicoes.sql');
                     parambyname('pDI').AsString := DUIMPDUIMP.AsString;
                     open;
                     first;

                     while not eof do begin
                           //----------------------------------------------------------[ ADIÇÔES ]----------------------------------------------------------
                           // Abre a tag da DI.
                           add(CriaTag('adicao', '', 'A', 2));

                           with tAcrescimos do begin
                                sql.Clear;
                                sql.add('select Codigo');
                                sql.add('      ,Descricao  = (select max(Descricao) from Cybersoft_Cadastros.dbo.Acrescimo acr where Acr.Codigo = aac.Codigo)');
                                sql.add('      ,Moeda');
                                sql.add('      ,Moeda_Nome = (select max(Nome) from Cybersoft_Cadastros.dbo.Moedas moe where moe.Codigo = aac.Moeda)');
                                sql.add('      ,Valor_ME ');
                                sql.add('      ,Valor_Real');
                                sql.add('from AdicoesAcrescimo aac');
                                sql.add('where DI = :pDI and Adicao = :pAdicao');
                                parambyname('pDI').AsString      := DUIMPDUIMP.AsString;
                                parambyname('pAdicao').Asinteger := tAdicoes.fieldbyname('Adicao').AsInteger;
                                //sql.SaveToFile('c:\temp\Gerar_tAcrescimos1.sql');
                                open;

                                mAcreReal := 0;
                                if recordCount > 0 then begin
                                   add(CriaTag('acrescimo'           , '', 'A', 3));
                                   add(CriaTag('codigoAcrescimo'     , fieldbyname('Codigo').asstring    , 'D', 4));
                                   add(CriaTag('denominacao'         , fieldbyname('Descricao').asstring , 'D', 4));
                                   add(CriaTag('moedaNegociadaCodigo', fieldbyname('Moeda').asstring     , 'D', 4));
                                   add(CriaTag('moedaNegociadaNome'  , fieldbyname('Moeda_Nome').asstring, 'D', 4));
                                   add(CriaTag('valorMoedaNegociada' , stringreplace(formatfloat('0000000000000.00', fieldbyname('Valor_ME').ascurrency)  , ',', '', [rfReplaceAll]), 'D', 4));
                                   add(CriaTag('valorReais'          , stringreplace(formatfloat('0000000000000.00', fieldbyname('Valor_Real').ascurrency), ',', '', [rfReplaceAll]), 'D', 4));
                                   add(CriaTag('acrescimo'           , '', 'F', 3));

                                   mAcreReal := mAcreReal + fieldbyname('Valor_Real').ascurrency;
                                end;
                           end;

                           // Importante!
                           // Verificar como calcular o CIDE para implementar aqui.
                           add(CriaTag('cideValorAliquotaEspecifica'                 , '00000000000'    , 'D', 3));
                           add(CriaTag('cideValorDevido'                             , '000000000000000', 'D', 3));
                           add(CriaTag('cideValorRecolher'                           , '000000000000000', 'D', 3));
                           add(CriaTag('codigoRelacaoCompradorVendedor'              , FieldByName('Relacao_ExpFab').asstring, 'D', 3));
                           add(CriaTag('codigoVinculoCompradorVendedor'              , FieldByName('Vinculo_CompVend').asstring, 'D', 3));
                           add(CriaTag('cofinsAliquotaAdValorem'                     , stringreplace(formatfloat('000.00', FieldByName('Aliquota_COFINS').asfloat)  , ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('cofinsAliquotaEspecificaQuantidadeUnidade'   , '000000000', 'D', 3));
                           add(CriaTag('cofinsAliquotaEspecificaValor'               , '0000000000', 'D', 3));
                           add(CriaTag('cofinsAliquotaReduzida'                      , '00000', 'D', 3));
                           add(CriaTag('cofinsAliquotaValorDevido'                   , stringreplace(formatfloat('0000000000000.00', FieldByName('Valor_COFINS').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('cofinsAliquotaValorRecolher'                 , stringreplace(formatfloat('0000000000000.00', FieldByName('Valor_COFINS').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('condicaoVendaIncoterm'                       , FieldByName('INCOTERMS').asstring, 'D', 3));
                           add(CriaTag('condicaoVendaLocal'                          , FieldByName('Local_CondicaoVenda').asstring, 'D', 3));
                           add(CriaTag('condicaoVendaMetodoValoracaoCodigo'          , formatfloat('00', FieldByName('Metodo_Valoracao').asinteger), 'D', 3));
                           add(CriaTag('condicaoVendaMetodoValoracaoNome'            , FieldByName('Metodo_ValNome').asstring, 'D', 3));
                           add(CriaTag('condicaoVendaMoedaCodigo'                    , FieldByName('Moeda_FOB').asstring, 'D', 3));
                           add(CriaTag('condicaoVendaMoedaNome'                      , FieldByName('Moeda_Nome').asstring, 'D', 3));
                           add(CriaTag('condicaoVendaValorMoeda'                     , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_MercadoriaME').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('condicaoVendaValorReais'                     , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_MercadoriaReal').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('dadosCambiaisCoberturaCambialCodigo'         , FieldByName('Cobertura_Cambial').asstring, 'D', 3));
                           add(CriaTag('dadosCambiaisCoberturaCambialNome'           , 'COM COBERTURA CAMBIAL E PAGAMENTO FINAL A PRAZO DE '+mCobCambial[FieldByName('Cobertura_Cambial').asinteger], 'D', 3));
                           add(CriaTag('dadosCambiaisInstituicaoFinanciadoraCodigo'  , formatfloat('00', Fieldbyname('Financiadora').asinteger), 'D', 3));
                           add(CriaTag('dadosCambiaisInstituicaoFinanciadoraNome'    , Fieldbyname('Financiadora_Nome').asstring, 'D', 3));
                           add(CriaTag('dadosCambiaisMotivoSemCoberturaCodigo'       , formatfloat('00', Fieldbyname('Motivo_SemCobertura').asinteger), 'D', 3));
                           add(CriaTag('dadosCambiaisMotivoSemCoberturaNome'         , Fieldbyname('Motivo_Nome').asstring, 'D', 3));
                           add(CriaTag('dadosCambiaisValorRealCambio'                , '000000000000000', 'D', 3));
                           add(CriaTag('dadosCargaPaisProcedenciaCodigo'             , Copy(DUIMPPais_Procedencia.asstring, 1, 3), 'D', 3));
                           add(CriaTag('dadosCargaUrfEntradaCodigo'                  , '0000000', 'D', 3));
                           add(CriaTag('dadosCargaViaTransporteCodigo'               , '00', 'D', 3));
                           add(CriaTag('dadosMercadoriaAplicacao'                    , Fieldbyname('Aplicacao').asstring, 'D', 3));
                           add(CriaTag('dadosMercadoriaCodigoNaladiNCCA'             , Fieldbyname('NALADI_NCCA').asstring, 'D', 3));
                           add(CriaTag('dadosMercadoriaCodigoNaladiSH'               , Fieldbyname('NALADI_SH').asstring, 'D', 3));
                           add(CriaTag('dadosMercadoriaCodigoNcm'                    , Fieldbyname('NCM').asstring, 'D', 3));
                           add(CriaTag('dadosMercadoriaCondicao'                     , Fieldbyname('Condicao_Mercadoria').asstring, 'D', 3));
                           add(CriaTag('dadosMercadoriaMedidaEstatisticaQuantidade'  , stringreplace(formatfloat('000000000.00000', fieldbyName('Quantidade').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('dadosMercadoriaMedidaEstatisticaUnidade'     , fieldbyName('Unidade').asstring, 'D', 3));
                           add(CriaTag('dadosMercadoriaNomeNcm'                      , fieldbyName('NCM_Nome').asstring, 'D', 3));
                           add(CriaTag('dadosMercadoriaPesoLiquido'                  , stringreplace(formatfloat('0000000000.00000', FieldByName('Peso_Liquido').asfloat)  , ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('dcrCoeficienteReducao'                       , '00000', 'D', 3));
                           add(CriaTag('dcrIdentificacao'                            , '00000000', 'D', 3));
                           add(CriaTag('dcrValorDevido'                              , '000000000000000', 'D', 3));
                           add(CriaTag('dcrValorDolar'                               , '000000000000000', 'D', 3));
                           add(CriaTag('dcrValorReal'                                , '000000000000000', 'D', 3));
                           add(CriaTag('dcrValorRecolher'                            , '000000000000000', 'D', 3));

                           if trim(fieldbyName('Destaque').asstring) <> '' then begin
                              // Abre a tag da DESTAQUE NCM.
                              add(CriaTag('destaqueNcm'                                 , '', 'A', 3));
                              add(CriaTag('numeroDestaque'                              , fieldbyName('Destaque').asstring, 'D', 4));
                              add(CriaTag('destaqueNcm'                                 , '', 'F', 3));
                              // Fecha a tag DESTAQUE NCM.
                           end;

                           add(CriaTag('fabricanteCidade'                            , fieldbyName('Fabricante_Cidade').asstring, 'D', 3));
                           add(CriaTag('fabricanteComplemento'                       , fieldbyName('Fabricante_Compl').asstring, 'D', 3));
                           add(CriaTag('fabricanteLogradouro'                        , fieldbyName('Fabricante_Rua').asstring, 'D', 3));
                           add(CriaTag('fabricanteNome'                              , fieldbyName('Fabricante_Nome').asstring, 'D', 3));
                           add(CriaTag('fabricanteNumero'                            , fieldbyName('Fabricante_Numero').asstring, 'D', 3));
                           add(CriaTag('fornecedorCidade'                            , fieldbyName('Fornecedor_Cidade').asstring, 'D', 3));
                           add(CriaTag('fornecedorComplemento'                       , fieldbyName('Fornecedor_Compl').asstring, 'D', 3));
                           add(CriaTag('fornecedorEstado'                            , fieldbyName('Fornecedor_Estado').asstring, 'D', 3));
                           add(CriaTag('fornecedorLogradouro'                        , fieldbyName('Fornecedor_Rua').asstring, 'D', 3));
                           add(CriaTag('fornecedorNome'                              , fieldbyName('Fornecedor_Nome').asstring, 'D', 3));
                           add(CriaTag('fornecedorNumero'                            , fieldbyName('Fornecedor_Numero').asstring, 'D', 3));
                           add(CriaTag('freteMoedaNegociadaCodigo'                   , fieldbyName('Moeda_FreteCodigo').asstring, 'D', 3));
                           add(CriaTag('freteValorMoedaNegociada'                    , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_FreteME').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('freteValorReais'                             , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_FreteReal').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiAcordoTarifarioTipoCodigo'                 , fieldbyName('Acordo_TarifarioIICod').asstring, 'D', 3));
                           add(CriaTag('iiAliquotaAcordo'                            , stringreplace(formatfloat('000.00', fieldbyName('Acordo_TarifarioII').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiAliquotaAdValorem'                         , stringreplace(formatfloat('000.00', fieldbyName('Aliquota_II').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiAliquotaPercentualReducao'                 , stringreplace(formatfloat('000.00', fieldbyName('Aliquota_ReducaoII').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiAliquotaReduzida'                          , stringreplace(formatfloat('000.00', fieldbyName('II_Reduzida').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiAliquotaValorCalculado'                    , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_II').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiAliquotaValorDevido'                       , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_II').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiAliquotaValorRecolher'                     , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_II').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiAliquotaValorReduzido'                     , stringreplace(formatfloat('0000000000000.00', 0), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiBaseCalculo'                               , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_BCII').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('iiFundamentoLegalCodigo'                     , formatfloat('00', DUIMP.FieldByName('Fundamento_Legal').asinteger), 'D', 3));
                           add(CriaTag('iiMotivoAdmissoTemporariaCodigo'             , formatfloat('00', DUIMP.FieldByName('Motivo_AdmissaoTemp').asinteger), 'D', 3));
                           add(CriaTag('iiRegimeTributacaoCodigo'                    , FieldByName('Regime_TribII').asstring, 'D', 3));
                           add(CriaTag('iiRegimeTributacaoNome'                      , FieldByName('Regime_TribIINome').asstring, 'D', 3));
                           add(CriaTag('ipiAliquotaAdValorem'                        , stringreplace(formatfloat('000.00', fieldbyName('Aliquota_IPI').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('ipiAliquotaEspecificaCapacidadeRecipciente'  , stringreplace(formatfloat('000.00', Fieldbyname('Aliquota_IPIEspRec').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('ipiAliquotaEspecificaQuantidadeUnidadeMedida', stringreplace(formatfloat('0000000.00', Fieldbyname('Aliquota_IPIEspUnid').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('ipiAliquotaEspecificaTipoRecipienteCodigo'   , '00', 'D', 3));
                           add(CriaTag('ipiAliquotaEspecificaValorUnidadeMedida'     , '0000000000', 'D', 3));
                           add(CriaTag('ipiAliquotaNotaComplementarTIPI'             , '00', 'D', 3));
                           add(CriaTag('ipiAliquotaReduzida'                         , stringreplace(formatfloat('000.00', Fieldbyname('Aliquota_RedIPI').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('ipiAliquotaValorDevido'                      , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_IPI').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('ipiAliquotaValorRecolher'                    , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_IPI').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('ipiRegimeTributacaoCodigo'                   , '00', 'D', 3));
                           add(CriaTag('ipiRegimeTributacaoNome'                     , 'NULL', 'D', 3));

                           // Grupo das mercadorias.
                           with tMercadoria do begin
                                first;
                                while not Eof do begin
                                      mDesc := stringReplace(Fieldbyname('Descricao').asstring, '<{'+trim(Fieldbyname('Codigo_Mercadoria').asstring)+'}>', '', [rfReplaceAll]);
                                      mDesc := mDesc;
                                      // Abre a tag da MERCADORIA.
                                      add(CriaTag('mercadoria', '', 'A', 3));
                                      add(CriaTag('descricaoMercadoria' , mDesc, 'D', 4));
                                      add(CriaTag('numeroSequencialItem', stringreplace(formatfloat('00', Fieldbyname('Item').asinteger), ',', '', [rfReplaceAll]), 'D', 4));
                                      add(CriaTag('quantidade'          , stringreplace(formatfloat('000000000.00000', Fieldbyname('Quantidade').asfloat), ',', '', [rfReplaceAll]), 'D', 4));
                                      add(CriaTag('unidadeMedida'       , Fieldbyname('Unidade').asstring, 'D', 4));
                                      add(CriaTag('valorUnitario'       , stringreplace(formatfloat('0000000000000.0000000', Fieldbyname('Valor_UnitarioME').asfloat), ',', '', [rfReplaceAll]), 'D', 4));
                                      // Fecha a tag MERCADORIA.
                                      add(CriaTag('mercadoria', '', 'F', 3));
                                      next;
                                end;
                           end;

                           add(CriaTag('numeroAdicao'                               , stringreplace(formatfloat('000', Fieldbyname('Adicao').asinteger), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('numeroDI'                                   , Fieldbyname('DI').asstring, 'D', 3));
                           add(CriaTag('numeroLI'                                   , Fieldbyname('LI').asstring, 'D', 3));
                           add(CriaTag('paisAquisicaoMercadoriaCodigo'              , copy(Fieldbyname('Pais_Aquisicao').asstring, 1, 3), 'D', 3));
                           add(CriaTag('paisAquisicaoMercadoriaNome'                , tAdicoes.Fieldbyname('Pais_AquisicaoNome').asstring, 'D', 3));
                           add(CriaTag('paisOrigemMercadoriaCodigo'                 , copy(Fieldbyname('Pais_Origem').asstring, 1, 3), 'D', 3));
                           add(CriaTag('paisOrigemMercadoriaNome'                   , Fieldbyname('Pais_OrigemNome').asstring, 'D', 3));
                           add(CriaTag('pisCofinsBaseCalculoAliquotaICMS'           , stringreplace(formatfloat('000.00', FieldByName('Aliquota_ICMS').asfloat)  , ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('pisCofinsBaseCalculoFundamentoLegalCodigo'  , formatfloat('00', FieldByName('Fundamento_LegalPIS').asinteger), 'D', 3));
                           add(CriaTag('pisCofinsBaseCalculoPercentualReducao'      , stringreplace(formatfloat('000.00', Fieldbyname('Reducao_BCPISCOFINS').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('pisCofinsBaseCalculoValor'                  , stringreplace(formatfloat('0000000000000.00', Fieldbyname('Valor_BCCOFINS').asfloat), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('pisCofinsFundamentoLegalReducaoCodigo'      , formatfloat('00', FieldByName('Fundamento_LegalReduc').asinteger), 'D', 3));
                           add(CriaTag('pisCofinsFundamentoLegalReducaoNome'        , mFunRedPIS[FieldByName('Fundamento_LegalReduc').asinteger], 'D', 3));
                           add(CriaTag('pisCofinsRegimeTributacaoCodigo'            , formatfloat('00', FieldByName('Regime_PIS').asinteger), 'D', 3));
                           add(CriaTag('pisCofinsRegimeTributacaoNome'              , Fieldbyname('Regime_TribPISNome').asstring, 'D', 3));
                           add(CriaTag('pisPasepAliquotaAdValorem'                  , stringreplace(formatfloat('000.00', FieldByName('Aliquota_PIS').asfloat)  , ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('pisPasepAliquotaEspecificaQuantidadeUnidade', '000000000', 'D', 3));
                           add(CriaTag('pisPasepAliquotaEspecificaValor'            , '0000000000', 'D', 3));
                           add(CriaTag('pisPasepAliquotaReduzida'                   , '00000', 'D', 3));
                           add(CriaTag('pisPasepAliquotaValorDevido'                , stringreplace(formatfloat('0000000000000.00', FieldByName('Valor_PIS').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('pisPasepAliquotaValorRecolher'              , stringreplace(formatfloat('0000000000000.00', FieldByName('Valor_PIS').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('relacaoCompradorVendedor'                   , mRelCompVend[FieldByName('Relacao_ExpFab').asinteger], 'D', 3));
                           add(CriaTag('seguroMoedaNegociadaCodigo'                 , formatfloat('000', fieldbyName('Moeda_SeguroCodigo').asinteger), 'D', 3));
                           add(CriaTag('seguroValorMoedaNegociada'                  , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_Seguro').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('seguroValorReais'                           , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_SeguroReal').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('sequencialRetificacao'                      , '00', 'D', 3));
                           add(CriaTag('valorMultaARecolher'                        , '000000000000000', 'D', 3));
                           add(CriaTag('valorMultaARecolherAjustado'                , '000000000000000', 'D', 3));
                           add(CriaTag('valorReaisFreteInternacional'               , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_FreteReal').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('valorReaisSeguroInternacional'              , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_SeguroReal').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('valorTotalCondicaoVenda'                    , stringreplace(formatfloat('0000000000000.00', fieldbyName('Valor_MercadoriaME').ascurrency), ',', '', [rfReplaceAll]), 'D', 3));
                           add(CriaTag('vinculoCompradorVendedor'                   , mVincCompVend[FieldByName('Vinculo_CompVend').asinteger], 'D', 3));

                           // Fecha a tag da Adição.
                           add(CriaTag('adicao', '', 'F', 2));

                           next;
                     end;
                end;

                //-----------------------------------------------------------------[ DADOS GERAIS ]------------------------------------------------------------------
                with RecintosAduaneiros do begin
                     sql.clear;
                     sql.Add('select * from RecintosAduaneiros where Codigo = '+iif(DUIMP.Fieldbyname('Recinto_Aduaneiro').asstring <> '', DUIMP.Fieldbyname('Recinto_Aduaneiro').asstring, quotedstr('')));
                     open;
                end;
                with DUIMP do begin
                     add(CriaTag('armazenamentoRecintoAduaneiroCodigo', Fieldbyname('Recinto_Aduaneiro').asstring, 'D', 2));
                     add(CriaTag('armazenamentoRecintoAduaneiroNome'  , RecintosAduaneiros.Fieldbyname('Descricao').asstring, 'D', 2));
                     add(CriaTag('armazenamentoSetor'                 , formatfloat('000', FieldByName('Recinto_AduaneiroSetor').asinteger), 'D', 2));
                     add(CriaTag('canalSelecaoParametrizada'          , '000', 'D', 2));
                     add(CriaTag('caracterizacaoOperacaoCodigoTipo'   , FieldByName('Modalidade_Importacao').asstring, 'D', 2));
                     add(CriaTag('caracterizacaoOperacaoDescricaoTipo', cModalidade.text, 'D', 2));
                     add(CriaTag('cargaDataChegada'                   , FormatDateTime('yyyyMMdd',Fieldbyname('Data_Chegada').asdatetime), 'D', 2));
                     add(CriaTag('cargaNumeroAgente'                  , iif(trim(Fieldbyname('Agente_Numero').asstring) <> '', Fieldbyname('Agente_Numero').asstring, 'N/I'), 'D', 2));
                     add(CriaTag('cargaPaisProcedenciaCodigo'         , copy(Fieldbyname('Pais_Procedencia').asstring, 1, 3), 'D', 2));
                     add(CriaTag('cargaPaisProcedenciaNome'           , Fieldbyname('Pais_Procedencia').asstring, 'D', 2));
                     add(CriaTag('cargaPesoBruto'                     , stringreplace(formatfloat('00000000000.00000', fieldbyName('Peso_Bruto').asfloat), ',', '', [rfReplaceAll]), 'D', 2));
                     add(CriaTag('cargaPesoLiquido'                   , stringreplace(formatfloat('00000000000.00000', fieldbyName('Peso_Liquido').asfloat), ',', '', [rfReplaceAll]), 'D', 2));
                     add(CriaTag('cargaUrfEntradaCodigo'              , formatfloat('0000000', Fieldbyname('URF_Entrega').asinteger), 'D', 2));
                     add(CriaTag('cargaUrfEntradaNome'                , cURFEntrega.text, 'D', 2));
                     add(CriaTag('conhecimentoCargaEmbarqueData'      , FormatDateTime('yyyyMMdd',Fieldbyname('Data_Embarque').asdatetime), 'D', 2));
                     add(CriaTag('conhecimentoCargaEmbarqueLocal'     , cLocalEmb.text, 'D', 2));
                     add(CriaTag('conhecimentoCargaId'                , FieldByName('Numero_DocCarga').asstring, 'D', 2));
                     add(CriaTag('conhecimentoCargaIdMaster'          , FieldByName('Numero_DocCargaMaster').asstring, 'D', 2));
                     add(CriaTag('conhecimentoCargaTipoCodigo'        , FieldByName('Tipo_Conhecimento').asstring, 'D', 2));
                     add(CriaTag('conhecimentoCargaTipoNome'          , cTipoConhecimento.text, 'D', 2));
                     add(CriaTag('conhecimentoCargaUtilizacao'        , '***** Codigo *****', 'D', 2));
                     add(CriaTag('conhecimentoCargaUtilizacaoNome'    , '****** Nome ******', 'D', 2));
                     add(CriaTag('dataRegistro'                       , FormatDateTime('yyyyMMdd',Fieldbyname('Data').asdatetime), 'D', 2));
                     add(CriaTag('documentoChegadaCargaCodigoTipo'    , '***** Codigo *****', 'D', 2));
                     add(CriaTag('documentoChegadaCargaNome'          , '****** Nome ******', 'D', 2));
                     add(CriaTag('documentoChegadaCargaNumero'        , FieldByName('Documento_Chegada').asstring, 'D', 2));

                     // DOCUMENTO DE INSTRUÇÃO DE DESPACHO.
                     with DIDocumentos do begin
                          first;
                          if recordcount > 0 then begin
                             while not eof do begin
                                   // Abre a tag "DOCUMENTO DE INSTRUÇÃO DE DESPACHO"
                                   add(CriaTag('documentoInstrucaoDespacho', '', 'A', 2));
                                   add(CriaTag('codigoTipoDocumentoDespacho'        , formatfloat('00', Fieldbyname('Codigo').asinteger), 'D', 3));
                                   add(CriaTag('nomeDocumentoDespacho'              , Fieldbyname('Descricao').asstring, 'D', 3));
                                   add(CriaTag('numeroDocumentoDespacho'            , Fieldbyname('Numero').asstring, 'D', 3));
                                   add(CriaTag('documentoInstrucaoDespacho', '', 'F', 2));
                                   // Fecha a tag "DOCUMENTO DE INSTRUÇÃO DE DESPACHO"
                                   next;
                             end;
                          end;
                     end;

                     // Abre a tag "Embalagem".
                     add(CriaTag('embalagem', '', 'A', 2));
                     add(CriaTag('codigoTipoEmbalagem', formatfloat('00', Fieldbyname('Tipo_Embalagem').asinteger), 'D', 3));
                     add(CriaTag('nomeEmbalagem'      , cEmbalagem.text, 'D', 3));
                     add(CriaTag('quantidadeVolume'   , formatfloat('00000', Fieldbyname('Volumes_Embalagem').asinteger), 'D', 3));
                     add(CriaTag('embalagem', '', 'F', 2));
                     // Fecha a tag "Embalagem".

                     add(CriaTag('freteCollect'             , stringreplace(formatfloat('0000000000000.00', fieldbyName('Frete_Collect').ascurrency), ',', '', [rfReplaceAll]), 'D', 2));
                     add(CriaTag('freteEmTerritorioNacional', stringreplace(formatfloat('0000000000000.00', fieldbyName('Frete_TerritorioNac').ascurrency), ',', '', [rfReplaceAll]), 'D', 2));
                     add(CriaTag('freteMoedaNegociadaCodigo', FieldByName('Moeda_Frete').asstring, 'D', 2));
                     add(CriaTag('freteMoedaNegociadaNome'  , cMoedaFrete.text, 'D', 2));
                     add(CriaTag('fretePrepaid'             , stringreplace(formatfloat('0000000000000.00', fieldbyName('Frete_PrePaid').ascurrency), ',', '', [rfReplaceAll]), 'D', 2));
                     add(CriaTag('freteTotalDolares'        , stringreplace(formatfloat('0000000000000.00', fieldbyName('Frete_Prepaid').ascurrency+fieldbyName('Frete_Collect').ascurrency), ',', '', [rfReplaceAll]), 'D', 2));
                     add(CriaTag('freteTotalMoeda'          , stringreplace(formatfloat('0000000000000.00', fieldbyName('Frete_Prepaid').ascurrency+fieldbyName('Frete_Collect').ascurrency), ',', '', [rfReplaceAll]), 'D', 2));
                     add(CriaTag('freteTotalReais'          , stringreplace(formatfloat('0000000000000.00', fieldbyName('Frete_Real').ascurrency), ',', '', [rfReplaceAll]), 'D', 2));

                     (*
                     // Abre a tag "ICMS".
                     add(CriaTag('icms', '', 'A', 2));
                     add(CriaTag('agenciaIcms'               , '00000', 'D', 3));
                     add(CriaTag('bancoIcms'                 , '000', 'D', 3));
                     add(CriaTag('codigoTipoRecolhimentoIcms', '0', 'D', 3));
                     add(CriaTag('cpfResponsavelRegistro'    , '00000000000', 'D', 3));
                     add(CriaTag('dataRegistro'              , '00000000', 'D', 3));
                     add(CriaTag('horaRegistro'              , '000000', 'D', 3));
                     add(CriaTag('nomeTipoRecolhimentoIcms'  , '000', 'D', 3));
                     add(CriaTag('numeroSequencialIcms'      , '000', 'D', 3));
                     add(CriaTag('ufIcms'                    , '', 'D', 3));
                     add(CriaTag('valorTotalIcms'            , '000000000000000', 'D', 3));
                     add(CriaTag('icms', '', 'F', 2));
                     // Fecha a tag "ICMS".
                     *)

                     with tTmp do begin
                          sql.clear;
                          sql.Add('select CNPJ');
                          sql.Add('      ,Nome = Razao_Social');
                          sql.Add('      ,Rua');
                          sql.Add('      ,Municipio = (select Nome from Cybersoft_Cadastros.dbo.Municipios where Codigo = Municipio_Codigo)');
                          sql.Add('      ,Numero = Rua_Numero');
                          sql.Add('      ,Bairro');
                          sql.Add('      ,UF = Estado');
                          sql.Add('      ,CEP');
                          sql.Add('      ,CPF = Representante_CPF');
                          sql.Add('      ,Representante_Nome');
                          sql.Add('      ,Telefone = Telefone1');
                          sql.Add('from  Cybersoft_Cadastros.dbo.Empresas');
                          sql.Add('where Codigo = '+inttostr(Menu_Principal.mEmpresa));
                          open;

                          add(CriaTag('importadorCodigoTipo'            , '1', 'D', 2));
                          add(CriaTag('importadorCpfRepresentanteLegal' , FieldByName('CPF').asstring, 'D', 2));
                          add(CriaTag('importadorEnderecoBairro'        , FieldByName('Bairro').asstring, 'D', 2));
                          add(CriaTag('importadorEnderecoCep'           , FieldByName('CEP').asstring, 'D', 2));
                          add(CriaTag('importadorEnderecoLogradouro'    , FieldByName('Rua').asstring, 'D', 2));
                          add(CriaTag('importadorEnderecoMunicipio'     , FieldByName('Municipio').asstring, 'D', 2));
                          add(CriaTag('importadorEnderecoNumero'        , FieldByName('Numero').asstring, 'D', 2));
                          add(CriaTag('importadorEnderecoUf'            , FieldByName('UF').asstring, 'D', 2));
                          add(CriaTag('importadorNome'                  , FieldByName('Nome').asstring, 'D', 2));
                          add(CriaTag('importadorNomeRepresentanteLegal', FieldByName('Representante_Nome').asstring, 'D', 2));
                          add(CriaTag('importadorNumero'                , FieldByName('CNPJ').asstring, 'D', 2));
                          add(CriaTag('importadorNumeroTelefone'        , FieldByName('Telefone').asstring, 'D', 2));
                     end;

                     // Informações complementares da DUIMP.
//                     mCompl := concat('******************** MOEDAS UTILIZADAS ********************', #13,
//                                      'FOB..............:', FieldByName('Moeda_FOB').asstring, '   ', cMoedaFOB.       , #13,

                     add(CriaTag('informacaoComplementar', mCompl, 'D', 2));

                end;

                // Fecha a tag da "DI".
                add(CriaTag('declaracao'                 , '', 'F', 1));    // Fechamento tag Declaração.
                add(CriaTag('ListaDeclaracoesTransmissao', '', 'F', 0));    // Fechamento tag Principal.

                SalvaComoUTF8('c:\temp\Cybersoft_DI_'+DUIMPDUIMP.value+'.xml', Memo.Lines);
           end;
      end;
end;

procedure TProcesso_RegistroDUIMP.bPesqMoe1Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Moedas';
      PesquisaGerais.mCampo  := 'Moeda_Frete';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.DUIMP;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_RegistroDUIMP.bPesqMoe2Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Moedas';
      PesquisaGerais.mCampo  := 'Moeda_Seguro';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.DUIMP;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_RegistroDUIMP.CalculaImpostos;
var
   mvlrFrete
  ,mvlrSeg: Real;
begin
     with Dados, dmDespacho, dmFiscal do begin
          with INCOTERMS do begin
               sql.Clear;
               sql.Add('select * from INCOTERMS where Codigo = :pCod');
               parambyname('pCod').AsString := tAdicoes.FieldByName('INCOTERMS').AsString;
               open;
          end;
          with tTotal do begin
               sql.Clear;
               sql.Add('select Total_Acrescimo = sum(round(Valor_Real, 2, 6))');
               sql.add('from   AdicoesAcrescimo');
               sql.add('where  DI = :pDI');
               sql.add('and Adicao = :pAdicao');
               parambyname('pDI').AsString      := DUIMP.FieldByName('DI').AsString;
               parambyname('pAdicao').Asinteger := tAdicoes.FieldByName('Adicao').asinteger;
               //sql.SaveToFile('c:\temp\Calcula_Impostos_TotalAcrescimos.sql');
               open;
          end;
          with tAdicoes do begin
               mvlrFrete := iif(INCOTERMS.fieldbyname('Frete').AsBoolean , FieldByName('Valor_FreteReal').Ascurrency , 0);
               mvlrSeg   := iif(INCOTERMS.fieldbyname('Seguro').AsBoolean, FieldByName('Valor_SeguroReal').Ascurrency, 0);

               mBCII := FieldByName('Valor_Real').ascurrency + tTotal.FieldByName('Total_Acrescimo').ascurrency + mvlrFrete + mvlrSeg;
               mII   := TruncaValor(Percentual(mBCII, NCM.FieldByName('II').asfloat), 2);

               mBCPIS := roundto(FieldByName('Valor_Real').ascurrency + tTotal.FieldByName('Total_Acrescimo').ascurrency + mvlrFrete + mvlrSeg, -6);
               if NCM.FieldByName('PIS_Reducao').asfloat > 0 then begin
                  mBCPIS := roundto(mBCPIS - Percentual(mBCPIS, NCM.FieldByName('PIS_Reducao').asfloat), -2);
               end;
               mPIS := TruncaValor(Percentual(mBCPIS   , NCM.FieldByName('PIS').asfloat), 2);

               mBCCOFINS := roundto(FieldByName('Valor_Real').ascurrency + tTotal.FieldByName('Total_Acrescimo').ascurrency + mvlrFrete + mvlrSeg, -6);
               if NCM.FieldByName('COFINS_Reducao').asfloat > 0 then begin
                  mBCCOFINS := roundto(mBCCOFINS - Percentual(mBCPIS, NCM.FieldByName('COFINS_Reducao').asfloat), -6);
               end;
               mCOFINS := TruncaValor(Percentual(mBCCOFINS, NCM.FieldByName('COFINS').value), 2);

               mBCIPI := FieldByName('Valor_Real').ascurrency + tTotal.FieldByName('Total_Acrescimo').ascurrency + mvlrFrete + mvlrSeg + mII;
               mIPI   := TruncaValor(Percentual(mBCIPI, NCM.FieldByName('IPI').asfloat), 2);
          end;

     end;
end;

procedure TProcesso_RegistroDUIMP.cProcessoExit(Sender: TObject);
begin
     with Dados, dmDespacho do begin
          if (DUIMP.State = dsInsert) or (DUIMP.State = dsEdit)  then begin
             DUIMPPais_Procedencia.Value      := InvoicePais_Origem.asinteger;
             DUIMPModalidade_Importacao.Value := InvoiceModalidade_Importacao.asinteger;
             DUIMPVia_Transporte.Value        := InvoiceVia_Transporte.value;
             DUIMPLocal_Embarque.Value        := InvoiceLocal_Embarque.Value;
             DUIMPMoeda_Frete.Value           := InvoiceMoeda_Frete.Value;
             DUIMPMoeda_Seguro.Value          := InvoiceMoeda_Seguro.Value;
             DUIMPFrete_PrePaid.Value         := InvoiceFrete_PrePaid.Value;
             DUIMPFrete_Collect.Value         := InvoiceFrete_Collect.Value;
          end;
     end;
end;



end.



