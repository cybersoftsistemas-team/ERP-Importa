unit frmImpressao_ProcessosOP_Acompanhamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppBands, ppClass, ppCtrls, ppVar,
  ppReport, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, IniFiles, ppMemo, DBGrids, RXDBCtrl, Funcoes,
  Grids, MemDS, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, Vcl.Mask, RxToolEdit, ppSubRpt;

type
  TImpressao_ProcessosOP_Acompanhamento = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    rAcompanhamentoProcesso: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText25: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    Grupo: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    pProcessos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    tProcessosHistorico: TMSQuery;
    dstProcessosHistorico: TDataSource;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppShape12: TppShape;
    ppLabel11: TppLabel;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppShape15: TppShape;
    ppLabel17: TppLabel;
    ppDBText10: TppDBText;
    ppDBMemo1: TppDBMemo;
    cSalto: TCheckBox;
    ppShape1: TppShape;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cResponsavel: TRxDBLookupCombo;
    Grade: TDBGrid;
    cCliente: TRxDBLookupCombo;
    Button1: TButton;
    Button2: TButton;
    ppGroup2: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText11: TppDBText;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBText13: TppDBText;
    ppLabel7: TppLabel;
    ppDBText12: TppDBText;
    cPesquisar: TEdit;
    StaticText2: TStaticText;
    iLogo: TppImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    cSit: TRadioGroup;
    cEst: TRadioGroup;
    StaticText4: TStaticText;
    cDataIni: TDateEdit;
    cDataFim: TDateEdit;
    Button3: TButton;
    bImprimirFollow: TButton;
    rFollow: TppReport;
    ppParameterList3: TppParameterList;
    pFollow: TppDBPipeline;
    tFollow: TMSQuery;
    dsTFollow: TMSDataSource;
    ppHeaderBand3: TppHeaderBand;
    ppDBText16: TppDBText;
    iLogo2: TppImage;
    ppLabel14: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText17: TppDBText;
    ppLabel15: TppLabel;
    ppDBText18: TppDBText;
    ppLabel18: TppLabel;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppDBText20: TppDBText;
    ppLabel20: TppLabel;
    ppDBText21: TppDBText;
    ppLabel21: TppLabel;
    ppDBText22: TppDBText;
    ppLabel22: TppLabel;
    ppDBText23: TppDBText;
    ppLabel23: TppLabel;
    ppDBText24: TppDBText;
    ppLabel24: TppLabel;
    ppDBText26: TppDBText;
    ppLabel25: TppLabel;
    ppDBText27: TppDBText;
    ppLabel26: TppLabel;
    ppDBText28: TppDBText;
    ppLabel28: TppLabel;
    ppDBText29: TppDBText;
    ppLabel29: TppLabel;
    ppDBText30: TppDBText;
    ppLabel30: TppLabel;
    ppDBText31: TppDBText;
    ppLabel31: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    pSubEmail: TppSubReport;
    pEmail: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand2: TppDetailBand;
    pMsgEmail: TppMemo;
    pSubFixo: TppSubReport;
    pSubDados: TppChildReport;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppDetailBand4: TppDetailBand;
    ppMemo2: TppMemo;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppMemo3: TppMemo;
    pSubStatus: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppDetailBand5: TppDetailBand;
    ppLabel12: TppLabel;
    iStatus2: TppImage;
    ppDBText33: TppDBText;
    ppDBText32: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppImage1: TppImage;
    ppImage2: TppImage;
    pSubObs: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppDetailBand6: TppDetailBand;
    ppDBMemo2: TppDBMemo;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    lAtualizacao: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cResponsavelChange(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cPesquisarChange(Sender: TObject);
    procedure cSitClick(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure cEstClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bImprimirFollowClick(Sender: TObject);
  private
    procedure FiltraProc;
    { Private declarations }
  public
    { Public declarations }
    mSelecionou   : Boolean;
    mContador     : Integer;
    mContadorfinal: Integer;
  end;

var
  Impressao_ProcessosOP_Acompanhamento: TImpressao_ProcessosOP_Acompanhamento;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Acompanhamento.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Acompanhamento.bSairClick(Sender: TObject);
begin
      FecharTabelas(Dados, nil, nil, nil);
      Close;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.Button1Click(Sender: TObject);
var
   l:Integer;
begin
     with Grade.DataSource.DataSet do begin
          DisableControls;
          first;
          for l := 0 to pred(RecordCount) do begin
              Grade.SelectedRows.CurrentRowSelected := True;
              Next;
          end;
          first;
          EnableControls;
     end;
     Grade.SelectedRows.Refresh;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.Button2Click(Sender: TObject);
var
   l:Integer;
begin
     with Grade.DataSource.DataSet do begin
          DisableControls;
          first;
          for l := 0 to pred(RecordCount) do begin
              Grade.SelectedRows.CurrentRowSelected := false;
              Next;
          end;
          first;
          EnableControls;
     end;
     Grade.SelectedRows.Refresh;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.Button3Click(Sender: TObject);
begin
     FiltraProc;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Impressao_ProcessosOP_Acompanhamento.Release;
     Impressao_ProcessosOP_Acompanhamento := nil;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           with Empresas do begin 
                sql.clear;
                sql.add('select * from Empresas where (Codigo = :pEmpresa)');
                parambyname('pEmpresa').asinteger := Menu_Principal.mEmpresa;
                open;
           end;
           with Usuarios do begin
                sql.Clear;
                sql.Add('select * from Usuarios order by Nome');
                open;
           end;     
           with Clientes do begin 
                sql.Clear;
                sql.Add('select * from Clientes order by Nome');
                open;
           end;     
           cSit.ItemIndex  := 0;
      End;
      Screen.Cursor := crDefault;

      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.Free;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.bImprimirFollowClick(Sender: TObject);
var
   mObs:widestring;
begin
      with tFollow do begin 
           sql.Clear;
           sql.add('select Importador = (select Razao_Social from Cybersoft_Cadastros.dbo.Empresas where Codigo = :pEmpresa)');
           sql.add('      ,Exportador = (select Nome from Fornecedores fr where fr.Codigo = pd.Fornecedor)');
           sql.add('      ,Origem     = (select ltrim(rtrim(Nome)) from Cybersoft_Cadastros.dbo.Paises where Codigo = Codigo_PaisOrigem)');
           sql.add('      ,Incoterms');
           sql.add('      ,Numero_BL');
           sql.add('      ,Numero_HouseBL');
           sql.add('      ,Referencia_Cliente');
           sql.add('      ,Numero_TFA');
           sql.add('      ,Navio_PrevSaida');
           sql.add('      ,Transporte_Viagem');
           sql.add('      ,Prev_Chegada = Navio_DataPrevista');
           sql.add('      ,Container_Numero');
           sql.add('      ,Nome_Transporte');
           sql.add('      ,Codigo_PaisOrigem');
           sql.add('      ,Local_Embarque');
           sql.add('      ,Local_Desembarque');
           sql.add('      ,Observacao');
           sql.add('      ,Navio_DataChegada');
           sql.add('      ,Ultima_Atualizacao');
           sql.add('from ProcessosDocumentos pd');
           sql.add('where Processo = '+quotedstr(Dados.ProcessosDOCProcesso.asstring));
           ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           //sql.SaveToFile('c:\temp\Impressao_Followup.sql');
           open;
           mObs := Dados.Empresas.fieldbyname('Email_MsgFollowup').AsString;
           mObs := stringreplace(mObs, '<{Empresa}>'          , Dados.Empresas.FieldByName('Razao_Social').AsString, [rfReplaceAll]);
           mObs := stringreplace(mObs, '<{Data Retorno}>'     , datetostr(Date), [rfReplaceAll]);
           mObs := stringreplace(mObs, '<{Hora Retorno}>'     , timetostr(Date), [rfReplaceAll]);
           mObs := stringreplace(mObs, '<{Nome Navio}>'       , fieldbyname('Nome_Transporte').asstring, [rfReplaceAll]);
           mObs := stringreplace(mObs, '<{Transporte Viagem}>', fieldbyname('Transporte_Viagem').asstring, [rfReplaceAll]);
           mObs := stringreplace(mObs, '<{Previsao Embarque}>', '', [rfReplaceAll]);
           mObs := stringreplace(mObs, '<{Data Chegada}>'     , fieldbyname('Navio_DataChegada').asstring, [rfReplaceAll]);
           pMsgEmail.Lines.Clear;
           pMsgEmail.Lines.Add(mObs);
           
           ppMemo2.Text := stringreplace(ppMemo2.text, '<{Nome Navio}>', fieldbyname('Nome_Transporte').asstring, [rfReplaceAll]);
           ppMemo2.Text := stringreplace(ppMemo2.text, '<{Local Desembarque}> ', fieldbyname('Local_Desembarque').asstring, [rfReplaceAll]);
           ppMemo2.Text := stringreplace(ppMemo2.text, '<{Data Desembarque}>', fieldbyname('Prev_Chegada').asstring, [rfReplaceAll]);
           
           ppMemo3.Text := stringreplace(ppMemo3.text, '<{Local Saida}>', fieldbyname('Local_Embarque').asstring, [rfReplaceAll]);
           ppMemo3.Text := stringreplace(ppMemo3.text, '<{Previsao Saida}>', fieldbyname('Navio_PrevSaida').asstring, [rfReplaceAll]);

           lAtualizacao.Caption := 'Ultima Atualização em '+fieldbyname('Ultima_Atualizacao').asstring;
      end;
       if FileExists(Dados.EmpresasLogo.Value) then begin
          iLogo2.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
       end;
      rFollow.Print;
      rFollow.Reset;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.bLimparClick(Sender: TObject);
begin
     cResponsavel.ClearValue;
     cCliente.ClearValue;
     cResponsavelChange(nil);
     cSit.ItemIndex  := 3;
     cEst.ItemIndex  := 2;
     cDataini.Clear;
     cDataFim.Clear;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.bImprimirClick(Sender: TObject);
Var
    mProcessos: WideString;
    mSel      : Integer;
begin
       With Dados do begin
            mProcessos := '';
            For mSel := 0 to Grade.SelectedRows.Count-1 do begin
                Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
                If Trim(mProcessos) <> '' then
                   mProcessos := mProcessos + ',' + QuotedStr(Trim(ProcessosDOCProcesso.AsString))
                else
                   mProcessos := QuotedStr(Trim(ProcessosDOCProcesso.AsString));
            End;

            If mProcessos = '' then mProcessos := ProcessosDOCProcesso.AsString;

            tProcessosHistorico.SQL.Clear;
            tProcessosHistorico.SQL.Add('SELECT ProcessosHistorico.*,');
            tProcessosHistorico.SQL.Add('       LTRIM(RTRIM(ProcessosHistorico.Processo)) AS Processo2,');
            tProcessosHistorico.SQL.Add('       Via_Transporte = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ViaTransporte WHERE Codigo = ProcessosDocumentos.Via_Transporte),');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.Nome_Transporte,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.Numero_Declaracao,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.Data_DesembaracoDeclaracao,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.Data_RegistroDeclaracao,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.INCOTERMS,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.UF_Desembaraco,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.Origem,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.Modalidade_Importacao AS Modalidade,');
            tProcessosHistorico.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE Codigo = ProcessosDocumentos.Modalidade_Importacao) AS Modalidade_Nome,');
            tProcessosHistorico.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.Incoterms WHERE(Codigo = ProcessosDocumentos.Incoterms)) AS INCOTERM_Descricao,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.Cliente,');
            tProcessosHistorico.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = ProcessosDocumentos.Cliente)) AS Cliente_Nome,');
            tProcessosHistorico.SQL.Add('       ProcessosDocumentos.Referencia_Cliente');
            tProcessosHistorico.SQL.Add('FROM   ProcessosHistorico, ProcessosDocumentos');
            tProcessosHistorico.SQL.Add('WHERE  (ProcessosDocumentos.Processo = ProcessosHistorico.Processo) AND (ProcessosHistorico.Processo IN ('+mProcessos+'))'  );
            tProcessosHistorico.SQL.Add('ORDER BY Cliente_Nome, ProcessosHistorico.Processo, Data, Hora');
            //tProcessosHistorico.SQL.SaveToFile('c:\temp\Processos_Followup.sql');
            tProcessosHistorico.Open;
       End;

       Grupo.Report.Groups[0].NewPage := cSalto.Checked;
       if FileExists(Dados.EmpresasLogo.Value) then begin
          iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
       end;
       
       rAcompanhamentoProcesso.Print;
       rAcompanhamentoProcesso.FreeOnRelease;
       rAcompanhamentoProcesso.Reset;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.cResponsavelChange(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           If Trim(cResponsavel.DisplayValue) <> '' then begin
              ProcessosDOC.SQL.Add('WHERE  (Responsavel = :pResponsavel)');
              ProcessosDOC.ParamByName('pResponsavel').ASString := UsuariosMatricula.AsString;
           End;
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           ProcessosDOC.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           If (Trim(cResponsavel.DisplayValue) <> '')then begin
              Clientes.SQL.Add('WHERE( Codigo IN((SELECT Cliente FROM ProcessosDocumentos WHERE(Responsavel = :pResponsavel))) )');
              Clientes.ParamByName('pResponsavel').AsString := UsuariosMatricula.AsString;
           end else begin
              Clientes.SQL.Add('WHERE( Codigo IN((SELECT Cliente FROM ProcessosDocumentos)) )');
           End;
           Clientes.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.cSitClick(Sender: TObject);
begin
     FiltraProc;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.cTipoClick(Sender: TObject);
begin
     FiltraProc;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.cClienteChange(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           If (Trim(cResponsavel.DisplayValue) <> '') and (Trim(cCliente.DisplayValue) <> '') then begin
              ProcessosDOC.SQL.Add('WHERE(Responsavel = :pResponsavel) AND (Cliente = :pCliente)');
              ProcessosDOC.ParamByName('pResponsavel').ASString := UsuariosMatricula.AsString;
              ProcessosDOC.ParamByName('pCliente').AsInteger    := ClientesCodigo.AsInteger;
           End;
           If (Trim(cResponsavel.DisplayValue) <> '') and (Trim(cCliente.DisplayValue) = '') then begin
              ProcessosDOC.SQL.Add('WHERE(Responsavel = :pResponsavel)');
              ProcessosDOC.ParamByName('pResponsavel').ASString := UsuariosMatricula.AsString;
           End;
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           ProcessosDOC.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.cEstClick(Sender: TObject);
begin
     FiltraProc;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.GradeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      If (mSelecionou = false) and (key = 16)then begin
         mSelecionou := true;
         mContador   := Grade.DataSource.DataSet.RecNo;
      End;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.GradeKeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If (mSelecionou = true) and (Grade.DataSource.DataSet.RecNo > mContador) then begin
        mContadorfinal := Grade.DataSource.DataSet.RecNo;
        Grade.DataSource.DataSet.RecNo := mContador;
        Repeat
             Grade.SelectedRows.CurrentRowSelected := true;
             Grade.DataSource.DataSet.Next
        until
             Grade.DataSource.DataSet.RecNo = mContadorFinal;
     end;
     mContador      := 0;
     mContadorfinal := 0;
     mSelecionou    := false;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.cPesquisarChange(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.Locate('Processo', cPesquisar.Text, [loPartialKey]);
      End;
end;

procedure TImpressao_ProcessosOP_Acompanhamento.FiltraProc;
begin
     with Dados, ProcessosDOC do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from ProcessosDocumentos');
          sql.Add('where Tipo = ''IMPORTAÇÃO'' ');
          if cSit.ItemIndex = 0 then begin
             sql.Add('and isnull(Processo_Fechamento, 0) = 0');
          end;
          if cSit.ItemIndex = 1 then begin
             sql.Add('and isnull(Processo_Fechamento, 0) <> 0');
          end;
          if cSit.ItemIndex = 2 then begin
             sql.Add('and isnull(Data_Encerramento, 0) <> 0');
          end;
          if cEst.ItemIndex = 0 then begin
             sql.Add('and isnull(Desativado, 0) = 0');
          end;
          if cEst.ItemIndex = 1 then begin
             sql.Add('and isnull(Desativado, 0) = 1');
          end;
          if (not DataLimpa(cDataIni.text)) and (not DataLimpa(cDataFim.text))  then begin
             sql.Add('and Processo_Abertura between :pDataI and :pDataF');
             parambyname('pDataI').value := cDataIni.Date;
             parambyname('pDataF').value := cDataFim.Date;
          end;
          sql.Add('order by Processo_Abertura, Processo');
          //sql.SaveToFile('c:\temp\Impressao_Follow_UP.sql');
          Open;
          ProcessosDOCNumero_Declaracao.EditMask := '99/9999999-9;0; ';
     end;
end;


end.
