unit frmImpressao_ControleNaviosNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands,
  ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, Data.DB, MemDS, DBAccess, maskUtils,
  MSAccess, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, Vcl.ExtCtrls, RxLookup, RxCtrls, IniFiles, Funcoes,ComObj;

type
  TImpressao_ControleNaviosNotas = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cNavio: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cExcel: TCheckBox;
    tNavios: TMSQuery;
    tNaviosOrdem: TIntegerField;
    tNaviosNavio: TStringField;
    tNaviosStatus: TStringField;
    dstNavios: TDataSource;
    rNotas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText17: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel17: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pNotas: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    cDataIni: TDateEdit;
    lData: TStaticText;
    cDataFim: TDateEdit;
    ppLine2: TppLine;
    ppLabel13: TppLabel;
    ppDBText8: TppDBText;
    cArmazem: TRxDBLookupCombo;
    StaticText1: TStaticText;
    tArmazem: TMSQuery;
    dstArmazem: TDataSource;
    tArmazemCodigo: TIntegerField;
    tArmazemCNPJ: TStringField;
    tArmazemNome: TStringField;
    lPeriodo: TppLabel;
    cFinal: TRadioGroup;
    cTipo: TRadioGroup;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ControleNaviosNotas: TImpressao_ControleNaviosNotas;

implementation


{$R *.dfm}

uses frmDados, frmMenu_Principal;

procedure TImpressao_ControleNaviosNotas.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      lPeriodo.caption := '';
      with tEmpresas do begin
           sql.clear;
           sql.add('select Numero_Filial, Razao_Social, Logo from Empresas where Codigo = :pCodigo');
           parambyname('pCodigo').asinteger := Menu_Principal.mEmpresa;
           open;
      end;
      with tNotas do begin
           sql.Clear;
           sql.Add('select Navio = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = nin.Navio)');
           sql.Add('      ,Nota');
           sql.Add('      ,Data = Data_Emissao');
           sql.Add('      ,SE = iif(Saida_Entrada = 0, ''ENTRADA'', ''SAÍDA'')');
           sql.Add('      ,Emissao = iif(Emissor = ''P'', ''PROPRIA'', ''TERCEIROS'')');
           sql.Add('      ,Destinatario = case Emissor');
           sql.Add('                           when ''P'' then (select Destinatario_Nome from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data_Emissao)');
           sql.Add('                           when ''T'' then (select Nome from Fornecedores where Codigo = (select Fornecedor from NotasTerceiros nt where nt.Nota= nin.Nota and nt.Data_Entrada = nin.Data_Emissao))');
           sql.Add('                      end');
           sql.Add('      ,CNPJ = case Emissor');
           sql.Add('                   when ''P'' then (select Destinatario_CNPJ_CPF from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data_Emissao)');
           sql.Add('                   when ''T'' then (select CNPJ from Fornecedores where Codigo = (select Fornecedor from NotasTerceiros nt where nt.Nota= nin.Nota and nt.Data_Entrada = nin.Data_Emissao))');
           sql.Add('              end');
           sql.Add('      ,Processo = (select Processo from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = nin.Navio)');
           sql.Add('      ,Quantidade = iif(Saida_Entrada = 0, Quantidade, Quantidade *-1)');
           sql.Add('      ,Total = case when Emissor = ''P'' and Saida_Entrada = 0 then (select ni.Valor_Unitario from NotasItens ni where ni.Nota = nin.Nota and ni.Data = nin.Data_Emissao) * nin.Quantidade');
           sql.Add('                    when Emissor = ''P'' and Saida_Entrada = 1 then (select ni.Valor_Unitario from NotasItens ni where ni.Nota = nin.Nota and ni.Data = nin.Data_Emissao) * (nin.Quantidade*-1)');
           sql.Add('                    when Emissor = ''T''                       then (select sum(nti.Valor_Unitario) from NotasTerceirosItens nti where nti.Nota = nin.Nota and nti.Data_Entrada = nin.Data_Emissao) * nin.Quantidade');
           sql.Add('               end');
           sql.Add('      ,DI');
           sql.Add('      ,NCM = (select NCM from Produtos prd where prd.Codigo = nin.Codigo_Mercadoria)');
           sql.Add('      ,Armazem = (select Nome from Fornecedores prd where prd.Codigo = nin.Armazem)');
           sql.Add('      ,CFOP = (select Natureza_Codigo from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data_Emissao)');
           sql.Add('      ,CFOP_Descricao = (select Descricao_NF from Cybersoft_Cadastros.dbo.Natureza where Codigo = (select Natureza_Codigo from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data_Emissao))');
           sql.Add('      ,Codigo_Mercadoria');
           sql.Add('      ,Descricao_Mercadoria = (select Descricao_Reduzida from Produtos where Codigo = Codigo_Mercadoria)');
           sql.add('      ,Tipo_NF = ''NORMAL'' ');
           sql.Add('from NotasItensNavios nin');
           sql.Add('where Nota is not null');
           if (not DataLimpa(cDataIni.text)) and (not DataLimpa(cDataFim.text)) then begin
              sql.add('and Data_Emissao between :pDataIni and :pDataFim');
              parambyname('pDataIni').value := cDataIni.Date;
              parambyname('pDataFim').value := cDataFim.Date;
              lPeriodo.Caption := lPeriodo.Caption + 'Período :'+cDataIni.Text+ ' á '+cDataFim.Text;
           end;
           if cNavio.Text <> '' then begin
              sql.Add('and Navio = :pNavio');
              parambyname('pNavio').Value := tNavios.fieldbyname('Ordem').asinteger;
              lPeriodo.Caption := lPeriodo.Caption + ' | Navio: '+tNavios.fieldbyname('Navio').asstring;
           end;
           if cArmazem.Text <> '' then begin
              sql.Add('and Armazem = :pArm');
              parambyname('pArm').Value := tArmazem.fieldbyname('Codigo').asinteger;
              lPeriodo.Caption := lPeriodo.Caption + ' | Armazém: '+FormatMaskText('##.###.###/####-##;0; ', tArmazem.fieldbyname('CNPJ').AsString) + ' '+ tArmazem.fieldbyname('Nome').AsString;
           end;
           if cTipo.ItemIndex < 2 then begin
              sql.Add('and Saida_Entrada = :pSE');
              parambyname('pSE').asinteger := cTipo.ItemIndex;
           end;
           if cFinal.ItemIndex < 8 then begin
              sql.Add('and (case nin.Emissor');
              sql.Add('          when ''P'' then (select Finalidade_Mercadoria from TipoNota where Codigo = (select Tipo_Nota from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data_Emissao))');
              sql.Add('          when ''T'' then (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = (select Referencia_Fiscal from NotasTerceiros nt where nt.Nota = nin.Nota))');
              sql.Add('     end) = :pFinal');
              parambyname('pFinal').asinteger := cFinal.ItemIndex;
           end;
           sql.add('union all');
           sql.add('select Navio = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = nin.Navio)');
           sql.add('      ,Nota');
           sql.add('      ,Data = Data ');
           sql.add('      ,SE = iif(Saida_Entrada = 0, ''ENTRADA'', ''SAÍDA'')');
           sql.add('      ,Emissao = ''PROPRIA'' ');
           sql.add('      ,Destinatario = (select Destinatario_Nome from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data)');
           sql.add('      ,CNPJ = (select Destinatario_CNPJ_CPF from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data)');
           sql.add('      ,Processo = (select Processo from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = nin.Navio)');
           sql.add('      ,Quantidade = case when Saida_Entrada = 0 then');
           sql.add('                         case when Quantidade = 1 then 0 else Quantidade end');
           sql.add('                    else ');
           sql.add('                         case when Quantidade = 1 then 0 else Quantidade *-1 end');
           sql.add('                    end');
           sql.add('      ,Total = case when Saida_Entrada = 0 then (select ni.Valor_Unitario from NotasItens ni where ni.Nota = nin.Nota and ni.Data = nin.Data) * nin.Quantidade');
           sql.add('                    when Saida_Entrada = 1 then (select ni.Valor_Unitario from NotasItens ni where ni.Nota = nin.Nota and ni.Data = nin.Data) * (nin.Quantidade*-1)');
           sql.add('               end');
           sql.add('      ,DI');
           sql.add('      ,NCM = (select NCM from Produtos prd where prd.Codigo = nin.Codigo_Mercadoria)');
           sql.add('      ,Armazem = (select Nome from Fornecedores prd where prd.Codigo = (select Armazem from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data))');
           sql.add('      ,CFOP = (select Natureza_Codigo from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data)');
           sql.add('      ,CFOP_Descricao = (select Descricao_NF from Cybersoft_Cadastros.dbo.Natureza where Codigo = (select Natureza_Codigo from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data))');
           sql.add('      ,Codigo_Mercadoria');
           sql.add('      ,Descricao_Mercadoria = (select Descricao_Reduzida from Produtos where Codigo = Codigo_Mercadoria)');
           sql.add('      ,Tipo_NF = ''COMPLEMENTAR'' ');
           sql.add('from NotasItens nin');
           sql.add('where Nota is not null');
           sql.add('and (select Complementar from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data) = 1');
           if (not DataLimpa(cDataIni.text)) and (not DataLimpa(cDataFim.text)) then begin
              sql.add('and Data between :pDataIni and :pDataFim');
              parambyname('pDataIni').value := cDataIni.Date;
              parambyname('pDataFim').value := cDataFim.Date;
              lPeriodo.Caption := lPeriodo.Caption + 'Período :'+cDataIni.Text+ ' á '+cDataFim.Text;
           end;
           if cNavio.Text <> '' then begin
              sql.Add('and Navio = :pNavio');
              parambyname('pNavio').Value := tNavios.fieldbyname('Ordem').asinteger;
              lPeriodo.Caption := lPeriodo.Caption + ' | Navio: '+tNavios.fieldbyname('Navio').asstring;
           end;
           if cArmazem.Text <> '' then begin
              sql.Add('and Armazem = :pArm');
              parambyname('pArm').Value := tArmazem.fieldbyname('Codigo').asinteger;
              lPeriodo.Caption := lPeriodo.Caption + ' | Armazém: '+FormatMaskText('##.###.###/####-##;0; ', tArmazem.fieldbyname('CNPJ').AsString) + ' '+ tArmazem.fieldbyname('Nome').AsString;
           end;
           if cTipo.ItemIndex < 2 then begin
              sql.Add('and Saida_Entrada = :pSE');
              parambyname('pSE').asinteger := cTipo.ItemIndex;
           end;
           if cFinal.ItemIndex < 8 then begin
              sql.Add('and (select Finalidade_Mercadoria from TipoNota where Codigo = (select Tipo_Nota from NotasFiscais nf where nf.Numero = nin.Nota and nf.Data_Emissao = nin.Data)) = :pFinal');
              parambyname('pFinal').asinteger := cFinal.ItemIndex;
           end;
           sql.Add('order by Navio, Data, SE, Nota, DI');
           //sql.savetofile('c:\temp\Controle_Navios_Notas.sql');
           open;
           Screen.Cursor := crAppStart;

           if RecordCount <> 0 then begin
              if not cExcel.Checked then begin
                 if FileExists(tEmpresas.fieldbyname('Logo').AsString) then begin
                    iLogo.Picture.LoadFromFile(tEmpresas.fieldbyname('Logo').AsString);
                 end;
                 with rNotas do begin
                      Print;
                      FreeOnRelease;
                      Reset;
                 end;
              end else begin
                 ExportaExcel;
              end;
           end else begin
              MessageDlg('Não há informações para o relatório solicitado!', mtInformation, [mbOk], 0);
           end;
      end;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_ControleNaviosNotas.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_ControleNaviosNotas.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'Navio'  , iif(cNavio.KeyValue > 0, cNavio.KeyValue, -1));
      aINI.WriteString ('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'DataIni', cDataIni.text);
      aINI.WriteString ('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'DataFim', cDataFim.text);
      aINI.WriteBool   ('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'Excel'  , cExcel.checked);
      aINI.WriteInteger('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'Tipo'   , cTipo.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'Final'  , cFinal.ItemIndex);
      aINI.Free;

      Impressao_ControleNaviosNotas.Release;
      Impressao_ControleNaviosNotas := nil;
end;

procedure TImpressao_ControleNaviosNotas.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ControleNaviosNotas.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
     with tNavios do begin
          sql.clear;
          sql.add('select Ordem, Navio, Status from ControleNavios order by Navio');
          open;
     end;
     with tArmazem do begin
          sql.clear;
          sql.add('select Codigo');
          sql.Add('      ,Nome');
          sql.Add('      ,CNPJ');
          sql.Add('from Fornecedores');
          sql.add('where Ativo = 1');
          sql.add('and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%ARMAZ%'')');
          sql.add('order by Nome');
          open;
     end;

     // Carregando as ultimas opções utilizadas no relatório como default.
     aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cNavio.KeyValue  := aINI.ReadInteger('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'Navio', -1);
     cExcel.checked   := aINI.ReadBool   ('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'Excel', false);
     cDataIni.text    := aINI.Readstring ('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'DataIni', '');
     cDataFim.text    := aINI.Readstring ('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'DataFim', '');
     cTipo.ItemIndex  := aINI.ReadInteger('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'Tipo', 2);
     cFinal.ItemIndex := aINI.ReadInteger('IMPRESSAO_CONTROLE_NAVIOSNOTAS', 'Final', 8);
     aINI.Free;
end;

// Envia informações para o excel.
procedure TImpressao_ControleNaviosNotas.ExportaEXCEL;
var
   mPlanilha, img: Variant;
   mLin
  ,mCol: Integer;
   mFilial:string;
   mNavio: string;
   mTotal
  ,mVolumes: real;
begin
       Screen.Cursor := crAppStart;

       mPlanilha := CreateOleObject('Excel.Application');
       mPlanilha.WorkBooks.add(1);
       //mPlanilha.Workbooks[1].Sheets.Add;
       mPlanilha.Workbooks[1].WorkSheets[1].Name := 'NAVIOS - NOTAS';
       mPlanilha.Visible := false;

       
       // Titulo.
       mFilial := iif(tEmpresas.fieldbyname('Numero_Filial').AsInteger = 0, ' - (MATRIZ)', ' - (FILIAL'+tEmpresas.fieldbyname('Numero_Filial').asstring+')');
       if (not DataLimpa(cDataIni.text)) and (not DataLimpa(cDataFim.text)) then begin
          mFilial := mFilial + ' - Período :'+cDataIni.Text+ ' á '+cDataFim.Text;
       end;

       mPlanilha.Cells[1, 1].cells                    := tEmpresas.fieldbyname('Razao_Social').asstring;
       mPlanilha.Range['A1','R1'].Font.Size           := 20;
       mPlanilha.Range['A1','R1'].Font.Color          := clWhite;
       mPlanilha.Range['A1','R1'].Font.Bold           := true;
       mPlanilha.Range['A1','R1'].Mergecells          := True;
       mPlanilha.Cells[2, 1].cells                    := 'CONTROLE DE NAVIOS (Relação de Notas Fiscais)' + mFilial;;
       mPlanilha.Range['A2','R2'].Font.Size           := 16;
       mPlanilha.Range['A2','R2'].Font.Bold           := true;
       mPlanilha.Range['A2','R2'].Mergecells          := True;
       mPlanilha.Range['A1','R3'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','R3'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','R3'].RowHeight           := 30;
       mPlanilha.Range['A1','R3'].Interior.Color      := RGB(0, 140, 140);
       mPlanilha.Range['A1','R3'].Interior.Pattern    := 1;

       // Logo
       if FileExists(tEmpresas.FieldByName('Logo').AsString) then begin
          Img                            := mPlanilha.Worksheets[1].Pictures.Insert(tEmpresas.FieldByName('Logo').AsString);
          Img.ShapeRange.LockAspectRatio := false;
          Img.Left                       := 4;     // Posição horizontal da imagem
          Img.Top                        := 4;     // Posição vertical da imagem
          Img.Width                      := 100;   // Largura da imagem
          Img.Height                     := 54;    // Altura da imagem
       end;

       // Nomes dos campos
       mCol := 1;
       mLin := 3;
       mPlanilha.Cells[mLin, mCol].cells       := 'NAVIO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 30;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'NOTA';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'DATA';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ENT/SAÍ';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'EMISSÃO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'CFOP';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 6;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'CFOP DESCRIÇÃO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 40;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'PRODUTO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 8;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'PRODUTO DESCRIÇÃO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 60;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'DESTINATÁRIO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 40;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'CNPJ';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 16;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'PROCESSO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 16;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'Nº DI';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 12;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'NCM';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'VOLUMES';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 18;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'TOTAL';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 18;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ARMAZÉM';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 40;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'TIPO NF';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 12;

       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Interior.Color    := RGB(0, 102, 102);
       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Interior.Pattern  := 1;
       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Font.Bold         := true;
       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Font.Color        := clAqua;
       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Borders.Color     := clSilver;
       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Font.Size         := 8;
       mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Font.Bold         := true;

       inc(mLin);

       with tNotas do begin
            mCol     := 1;
            mNavio   := fieldbyname('Navio').asstring;
            mTotal   := 0;
            mVolumes := 0;
            while not eof do begin
                  mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].Font.Size         := 8;
                  mPlanilha.Range['A'+inttostr(mLin),'R'+inttostr(mLin)].VerticalAlignment := 2;

                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Navio').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Nota').value;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data').value;
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('SE').asstring;
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Emissao').asstring;
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('CFOP').asstring;
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('CFOP_Descricao').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Codigo_Mercadoria').asinteger;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Descricao_Mercadoria').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Destinatario').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := FormatMaskText('##.###.###/####-##;0', fieldbyname('CNPJ').asstring);
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Processo').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := FormatMaskText('##/#######-#;0', fieldbyname('DI').asstring);
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := FormatMaskText('####.##.##;0', fieldbyname('NCM').asstring);
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Quantidade').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 1;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Total').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00)';
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 1;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Armazem').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Tipo_NF').asstring;
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mLin);
                  dec(mCol, 3);

                  mTotal   := mTotal   + fieldbyname('Total').asfloat;
                  mVolumes := mVolumes + fieldbyname('Quantidade').asfloat;

                  next;

                  if (fieldbyname('Navio').asstring <> mNavio) or (eof) then begin
                     mPlanilha.Cells[mLin, mCol-1].cells := 'TOTAL';
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].Interior.Color    := RGB(0, 140, 140);
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].Font.Size         := 8;
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].VerticalAlignment := 3;
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].Font.Bold         := true;
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].Font.Color        := clWhite;
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].VerticalAlignment := 2;
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].RowHeight         := 17;
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].Borders.LineStyle := 1; //xlContinuous;
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].Borders.Weight    := 2; //xlThin;
                     mPlanilha.Range['N'+inttostr(mLin),'P'+inttostr(mLin)].Borders.Color     := clSilver;
                     mPlanilha.Cells[mLin, mCol].cells               := mVolumes;
                     mPlanilha.Cells[mLin, mCol].NumberFormat        := '#.##0,000_);-#.##0,000)';
                     mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 1;
                     inc(mCol);
                     mPlanilha.Cells[mLin, mCol].cells               := mTotal;
                     mPlanilha.Cells[mLin, mCol].NumberFormat        := '#.##0,00_);-#.##0,00)';
                     mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 1;

                     inc(mLin, 3);
                     mCol     := 1;
                     mNavio   := fieldbyname('Navio').asstring;
                     mTotal   := 0;
                     mVolumes := 0;
                  end;
                  mCol := 1;
            end;
       end;

       mPlanilha.Visible := true;

       // Congela as linhas do cabeçalho (Obs: só funcionou depois do visible = true).
       mPlanilha.Rows[4].Select;
       mPlanilha.ActiveWindow.FreezePanes := True;
       Screen.Cursor := crDefault;
end;


end.
