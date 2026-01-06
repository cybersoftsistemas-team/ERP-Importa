unit frmImpressao_Cadastros_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, ppDBPipe, ppClass, ppReport,
  ppCtrls, ppPrnabl, ppBands, ppVar, MaskUtils, DB, DBAccess, MSAccess, myChkBox, DBCtrls, ComObj, Funcoes, MemDS, ppDB, ppParameter, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Cadastros_Clientes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cOrdem: TRadioGroup;
    cSituacao: TRadioGroup;
    rClientes: TppReport;
    pClientes: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppLabel1: TppLabel;
    lTitulo2: TppLabel;
    pEmpresas: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine5: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    lCNPJ: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    tClientes: TMSQuery;
    dstClientes: TDataSource;
    cTrader: TCheckBox;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    fFaixa: TppShape;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    lNumeroEmpresa: TppLabel;
    StaticText10: TStaticText;
    cEstado: TDBLookupComboBox;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    iLogo: TppImage;
    cExcel: TCheckBox;
    cMovimento: TCheckBox;
    StaticText1: TStaticText;
    cMun: TDBLookupComboBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    cSimp: TCheckBox;
    cPessoa: TRadioGroup;
    cCompradores: TCheckBox;
    cTerminal: TCheckBox;
    cBloqueados: TCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportaEXCEL;
    procedure ExportaEXCEL2;
    procedure cEstadoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Cadastros_Clientes: TImpressao_Cadastros_Clientes;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_Cadastros_Clientes.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Cadastros_Clientes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Impressao_Cadastros_Clientes.Release;
     Impressao_Cadastros_Clientes := nil;
end;

procedure TImpressao_Cadastros_Clientes.ppDetailBand1BeforePrint(Sender: TObject);
begin
     With Dados do begin
          If Trim(tClientes.FieldByName('CNPJ').AsString) <> '' then
             lCNPJ.Text := FormatMaskText('##.###.###/####-##;0', Trim(tClientes.FieldByName('CNPJ').AsString))
          else
             lCNPJ.Text := Trim(tClientes.FieldByName('CPF').AsString);
             
          fFaixa.Visible  := not fFaixa.Visible;
     End;
end;

procedure TImpressao_Cadastros_Clientes.bImprimirClick(Sender: TObject);
begin
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa) );
           Empresas.Open;

           tClientes.SQL.Clear;
           tClientes.SQL.Add('SELECT Codigo,');
           tClientes.SQL.Add('       Nome,');
           tClientes.SQL.Add('       Ativo,');
           tClientes.SQL.Add('       Contato  = LTRIM(RTRIM(ISNULL(Contato, ''''))) + ''  [''+Telefone1+'']'',');
           tClientes.SQL.Add('       Contato2 = LTRIM(RTRIM(ISNULL(Contato, ''''))),');
           tClientes.SQL.Add('       Telefone1,');
           tClientes.SQL.Add('       Rua,');
           tClientes.SQL.Add('       Rua_Numero,');
           tClientes.SQL.Add('       Bairro,');
           tClientes.SQL.Add('       Municipio,');
           tClientes.SQL.Add('       Estado,');
           tClientes.SQL.Add('       CEP,');
           tClientes.SQL.Add('       Telefone2,');
           tClientes.SQL.Add('       CNPJ,');
           tClientes.SQL.Add('       CPF,');
           tClientes.SQL.Add('       Email,');
           tClientes.SQL.Add('       Site,');
           tClientes.SQL.Add('       Trader,');
           tClientes.SQL.Add('       Trader_Comissao,');
           tClientes.SQL.Add('       Tipo_Comissao,');
           tClientes.SQL.Add('       Complemento,');
           tClientes.SQL.Add('       Municipio_Codigo,');
           tClientes.SQL.Add('       Pais,');
           tClientes.SQL.Add('       FAX,');
           tClientes.SQL.Add('       RG,');
           tClientes.SQL.Add('       Inscricao_Estadual,');
           tClientes.SQL.Add('       Isento,');
           tClientes.SQL.Add('       Inscricao_Municipal,');
           tClientes.SQL.Add('       Rua_Entrega,');
           tClientes.SQL.Add('       Rua_EntregaNumero,');
           tClientes.SQL.Add('       Bairro_Entrega,');
           tClientes.SQL.Add('       Municipio_Entrega,');
           tClientes.SQL.Add('       Estado_Entrega,');
           tClientes.SQL.Add('       CEP_Entrega,');
           tClientes.SQL.Add('       CNPJ_Entrega,');
           tClientes.SQL.Add('       IE_Entrega,');
           tClientes.SQL.Add('       Transportador,');
           tClientes.SQL.Add('       Data_Cadastro,');
           tClientes.SQL.Add('       Praca_Pagamento,');
           tClientes.SQL.Add('       Conta_Ativo,');
           tClientes.SQL.Add('       Conta_Adiantamento,');
           tClientes.SQL.Add('       Matriz,');
           tClientes.SQL.Add('       Alterado,');
           tClientes.SQL.Add('       SUFRAMA,');
           tClientes.SQL.Add('       Desconto_Dupl_Tipo,');
           tClientes.SQL.Add('       Desconto_Dupl_Valor,');
           tClientes.SQL.Add('       Desconto_Dupl_Dias,');
           tClientes.SQL.Add('       (SELECT DISTINCT Nome FROM Fornecedores WHERE(Fornecedores.Codigo = Clientes.Trader)) AS Nome_Trader,');
           tClientes.SQL.Add('       (SELECT Nome FROM Fornecedores WHERE(Fornecedores.Codigo = Clientes.Representante)) AS Representante,');
           tClientes.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Usuarios WHERE Matricula = Atendente) AS Atendente,');
           tClientes.SQL.Add('       (SELECT Descricao FROM RamoAtividade WHERE Codigo = Clientes.Ramo_Atividade) AS Ramo,');
           tClientes.SQL.Add('       (SELECT MAX(Data_Emissao) FROM NotasFiscais NF WHERE  NF.Cliente_Codigo = Clientes.Codigo AND Cancelada <> 1 AND NFe_Denegada <> 1) AS Ultima_Compra,');
           tClientes.SQL.Add('       ISNULL((SELECT MAX(Valor_TotalNota) FROM NotasFiscais NF WHERE Numero = (SELECT DISTINCT MAX(Numero) FROM NotasFiscais NF WHERE NF.Cliente_Codigo = Clientes.Codigo AND Saida_Entrada = 1');
           tClientes.SQL.Add('                                                                      AND Cancelada <> 1 AND NFe_Denegada <> 1) ), 0) AS Valor_UltimaCompra,');
           tClientes.SQL.Add('       ISNULL((SELECT SUM(Valor_TotalNota) FROM NotasFiscais NF WHERE  NF.Cliente_Codigo = Clientes.Codigo AND Cancelada <> 1 AND NFe_Denegada <> 1), 0) AS Faturamento,');
           tClientes.SQL.Add('       ISNULL(Limite_Credito, 0) AS Limite_Credito,');
           tClientes.SQL.Add('       CAST(Observacao AS VARCHAR(120)) AS Observacao,');
           tClientes.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Cliente = Clientes.Codigo AND Tipo_Nota = ''SD'' AND (SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE Numero = PR.Numero) > 0), 0) AS Pagamentos,');
           tClientes.SQL.Add('       Terminal  = iif(Terminal  = 1, ''SIM'', ''NÃO''),');
           tClientes.SQL.Add('       Comprador = iif(Comprador = 1, ''SIM'', ''NÃO''),');
           tClientes.SQL.Add('       Bloqueado = iif(Bloqueado = 1, ''SIM'', ''NÃO'') ');
           tClientes.SQL.Add('FROM   Clientes');
           tClientes.SQL.Add('WHERE  Codigo IS NOT NULL');
           If cMovimento.Checked = true then begin
              tClientes.SQL.Add('  AND  (SELECT SUM(Valor_TotalNota) FROM NotasFiscais NF WHERE  NF.Cliente_Codigo = Clientes.Codigo AND Cancelada <> 1 AND NFe_Denegada <> 1) > 0');
           End;
           If cCompradores.Checked = true then begin
              tClientes.SQL.Add('  AND  isnull(Comprador, 0) = 1');
           End;
           If cTerminal.Checked = true then begin
              tClientes.SQL.Add('  AND  isnull(Terminal, 0) = 1');
           End;
           If cBloqueados.Checked = true then begin
              tClientes.SQL.Add('  AND  isnull(Bloqueado, 0) = 0');
           End;

           If Trim(cEstado.Text) <> '' then begin
              tClientes.SQL.Add('AND Estado = :pEstado');
              tClientes.ParamByName('pEstado').AsString := EstadosCodigo.Value;
           End;
           If Trim(cMun.Text) <> '' then begin
              tClientes.SQL.Add('AND Municipio_Codigo = :pMun');
              tClientes.ParamByName('pMun').AsString := MunicipiosCodigo.AsString;
           End;
           if cPessoa.ItemIndex = 0 then begin
              tClientes.SQL.Add('AND ISNULL(CNPJ, '''') = '''' ');
           end;
           if cPessoa.ItemIndex = 1 then begin
              tClientes.SQL.Add('AND ISNULL(CNPJ, '''') <> '''' ');
           end;

           lTitulo2.Caption := '';
           If cSituacao.ItemIndex = 0 then lTitulo2.Caption := 'Clientes ativos no cadastro.';
           If cSituacao.ItemIndex = 1 then lTitulo2.Caption := 'Clientes desativados no cadastro.';
           If cSituacao.ItemIndex = 2 then lTitulo2.Caption := 'Clientes ativos e desativados no cadastro.';
           If cTrader.Checked = False then begin
              If cOrdem.ItemIndex = 0 then begin
                 tClientes.SQL.Add('ORDER BY Codigo');
                 lTitulo2.Caption := lTitulo2.Caption + ' (Ordem de Código)';
              End;
              If cOrdem.ItemIndex = 1 then begin
                 tClientes.SQL.Add('ORDER BY Nome');
                 lTitulo2.Caption := lTitulo2.Caption + ' (Ordem de Nome)';
              End;
              If cOrdem.ItemIndex = 2 then begin
                 tClientes.SQL.Add('ORDER BY CNPJ');
                 lTitulo2.Caption := lTitulo2.Caption + ' (Ordem de CNPJ)';
              End;
           end else begin
              If cOrdem.ItemIndex = 0 then tClientes.SQL.Add('ORDER BY Trader, Codigo');
              If cOrdem.ItemIndex = 1 then tClientes.SQL.Add('ORDER BY Trader, Nome');
              If cOrdem.ItemIndex = 2 then tClientes.SQL.Add('ORDER BY Trader, CNPJ');
           End;
           //tClientes.SQL.SavetoFile('c:\temp\Impressao_Cadastro_Clientes.sql');
           tClientes.Open;

           ppGroupFooterBand1.Visible := cTrader.Checked;
      End;

      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         lNumeroEmpresa.Text := 'MATRIZ ('+Dados.EmpresasEstado.AsString+')'
      else
         lNumeroEmpresa.Text := 'FILIAL '+Dados.EmpresasNumero_Filial.AsString +' ('+Dados.EmpresasEstado.AsString+')';;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      
      If not cExcel.Checked then begin
         rClientes.Reset;
         rClientes.Print;
      end else begin
         if not cSimp.Checked then
            ExportaExcel
         else
            ExportaExcel2;
      End;
end;

procedure TImpressao_Cadastros_Clientes.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Cadastros_Clientes.FormShow(Sender: TObject);
begin
      With Dados do begin
           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           Estados.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios ORDER BY Nome');
           Municipios.Open;
      End;
end;

// Envia informações para o excel.
procedure TImpressao_Cadastros_Clientes.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
begin
     With Dados do begin
          Janela_Processamento := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := tClientes.RecordCount;
          Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
          Janela_Processamento.Show;

          mPlanilha := CreateOleObject('Excel.Application');

          mPlanilha.WorkBooks.add(1);
          mPlanilha.Visible := false;
          
          mPlanilha.Range['A3','Y3'].Interior.Color    := RGB(255, 255, 140);
          mPlanilha.Range['A3','Y3'].Interior.Pattern  := 1;
          mPlanilha.Range['A3','Y3'].Font.Bold         := true;
          mPlanilha.Range['A3','Y3'].Font.Color        := clBlack;
          mPlanilha.Range['A3','Y3'].Borders.LineStyle := 1; //xlContinuous;
          mPlanilha.Range['A3','Y3'].Borders.Weight    := 2; //xlThin;
          mPlanilha.Range['A3','Y3'].Borders.Color     := RGB(0,0,0);

          mPlanilha.Cells[3,01] := 'CÓDIGO';
          mPlanilha.Cells[3,02] := 'NOME';
          mPlanilha.Cells[3,03] := 'CNPJ/CPF';
          mPlanilha.Cells[3,04] := 'TIPO DE PESSOA';
          mPlanilha.Cells[3,05] := 'INSCRIÇÃO ESTADUAL';
          mPlanilha.Cells[3,06] := 'DATA CADASTRO';
          mPlanilha.Cells[3,07] := 'RAMO ATIVIDADE';
          mPlanilha.Cells[3,08] := 'CONTATO/TELEFONE';
          mPlanilha.Cells[3,09] := 'PRAÇA DE PAGAMENTO';
          mPlanilha.Cells[3,10] := 'ENDEREÇO COMERCIAL';
          mPlanilha.Cells[3,11] := 'ESTADO';
          mPlanilha.Cells[3,12] := 'ENDEREÇO DE COBRANÇA';
          mPlanilha.Cells[3,13] := 'REPRESENTANTE';
          mPlanilha.Cells[3,14] := 'TELEOPERADOR(A)';
          mPlanilha.Cells[3,15] := 'OBSERVAÇÕES';
          mPlanilha.Cells[3,16] := 'ÚLTIMA COMPRA';
          mPlanilha.Cells[3,17] := 'VLR.ÚLTIMA COMPRA';
          mPlanilha.Cells[3,18] := 'LIMITE DE CRÉDITO';
          mPlanilha.Cells[3,19] := 'FATURAMENTO TOTAL';
          mPlanilha.Cells[3,20] := 'PAGAMENTOS';
          mPlanilha.Cells[3,21] := 'SALDO';
          mPlanilha.Cells[3,22] := 'COMPRADOR';
          mPlanilha.Cells[3,23] := 'TERMINAL';
          mPlanilha.Cells[3,24] := 'BLOQUEADO';
          mPlanilha.Cells[3,25] := 'E-MAIL';

          mPlanilha.Range['A3','Y3'].HorizontalAlignment := 3;
          mPlanilha.Range['A3','Y3'].VerticalAlignment   := 2;
          mPlanilha.Range['A3','Y3'].Font.Size           := 8;

          mLinha := 4;

          While (not tClientes.Eof) and (not Funcoes.Cancelado) do begin
                mPlanilha.Range['F'+InttoStr(mLinha),'F'+InttoStr(mLinha)].HorizontalAlignment := 3;
                mPlanilha.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].HorizontalAlignment := 2;
                mPlanilha.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha)].HorizontalAlignment := 3;
                mPlanilha.Range['A'+InttoStr(mLinha),'U'+InttoStr(mLinha)].Font.Size         := 9;
                mPlanilha.Range['P'+InttoStr(mLinha),'U'+InttoStr(mLinha)].Interior.Color    := $00EBF3EB;
                mPlanilha.Range['P'+InttoStr(mLinha),'U'+InttoStr(mLinha)].Borders.LineStyle := 1;
                mPlanilha.Range['P'+InttoStr(mLinha),'U'+InttoStr(mLinha)].Borders.Color     := clSilver;

                mPlanilha.Cells[mLinha,01] := tClientes.FieldByName('Codigo').AsString;
                mPlanilha.Cells[mLinha,02] := tClientes.FieldByName('Nome').AsString;
                If Trim(tClientes.FieldByName('CNPJ').AsString) <> '' then begin
                   mPlanilha.Cells[mLinha,03] := FormatMaskText('##.###.###/####-##;0', Trim(tClientes.FieldByName('CNPJ').AsString));
                   mPlanilha.Cells[mLinha,04] := 'Pessoa Jurídica';
                end else begin
                   mPlanilha.Cells[mLinha,03] := FormatMaskText('###.###.###-##;0', Trim(tClientes.FieldByName('CPF').AsString));
                   mPlanilha.Cells[mLinha,04] := 'Pessoa Física';
                End;

                mPlanilha.Cells[mLinha,05] := ''''+Trim(tClientes.FieldByName('Inscricao_Estadual').AsString);

                mPlanilha.Cells[mLinha,06] := tClientes.FieldByName('Data_Cadastro').AsString;
                mPlanilha.Cells[mLinha,07] := tClientes.FieldByName('Ramo').AsString;
                mPlanilha.Cells[mLinha,08] := tClientes.FieldByName('Contato').AsString;
                mPlanilha.Cells[mLinha,09] := tClientes.FieldByName('Praca_Pagamento').AsString;
                mPlanilha.Cells[mLinha,10] := tClientes.FieldByName('Rua').AsString+' ,nº '+tClientes.FieldByName('Rua_Numero').AsString+' '+tClientes.FieldByName('Bairro').AsString+
                                              ' CEP:'+FormatMaskText('99999-999;0;', tClientes.FieldByName('Rua_Numero').AsString) + tClientes.FieldByName('Municipio').AsString;
                mPlanilha.Cells[mLinha,11] := tClientes.FieldByName('Estado').AsString;
                mPlanilha.Cells[mLinha,12] := tClientes.FieldByName('Rua').AsString+' ,nº '+tClientes.FieldByName('Rua_Numero').AsString+' '+tClientes.FieldByName('Bairro').AsString+
                                              ' CEP:'+FormatMaskText('99999-999;0;', tClientes.FieldByName('Rua_Numero').AsString) + tClientes.FieldByName('Municipio').AsString + '('+
                                              tClientes.FieldByName('Estado').AsString+')';
                mPlanilha.Cells[mLinha,13] := tClientes.FieldByName('Representante').AsString;
                mPlanilha.Cells[mLinha,14] := tClientes.FieldByName('Atendente').AsString;
                mPlanilha.Cells[mLinha,15] := tClientes.FieldByName('Observacao').AsString;
                mPlanilha.Cells[mLinha,16] := tClientes.FieldByName('Ultima_Compra').Value;
                mPlanilha.Cells[mLinha,17] := tClientes.FieldByName('Valor_UltimaCompra').Value;
                mPlanilha.Cells[mLinha,18] := tClientes.FieldByName('Limite_Credito').Value;
                mPlanilha.Cells[mLinha,19] := tClientes.FieldByName('Faturamento').Value;
                mPlanilha.Cells[mLinha,20] := tClientes.FieldByName('Pagamentos').Value;
                mPlanilha.Cells[mLinha,21] := tClientes.FieldByName('Limite_Credito').Value - (tClientes.FieldByName('Faturamento').Value - tClientes.FieldByName('Pagamentos').Value);
                mPlanilha.Cells[mLinha,22] := tClientes.FieldByName('Comprador').asstring;
                mPlanilha.Cells[mLinha,23] := tClientes.FieldByName('Terminal').asstring;
                mPlanilha.Cells[mLinha,24] := tClientes.FieldByName('Bloqueado').asstring;
                mPlanilha.Cells[mLinha,25] := tClientes.FieldByName('Email').asstring;

                mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,18].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,19].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,20].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,21].NumberFormat := '#.##0,00_);(#.##0,00)';

                tClientes.Next;
                Inc(mLinha);

                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          mPlanilha.Columns.Autofit;
          mPlanilha.Rows.Autofit;

          //Fecha o Excel.
          If Funcoes.Cancelado = true then begin
//             KillTask('Excel.exe');
             Abort;
             mPlanilha.Free;
             mPlanilha.Destroy;
          End;

          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
          mPlanilha.Range['A1','A1'].Font.Size  := 14;
          mPlanilha.Range['A1','A1'].Font.Bold  := true;
          mPlanilha.Range['A1','Y1'].Mergecells := True;
          mPlanilha.Range['A1','Y1'].HorizontalAlignment := 3;

          mPlanilha.Cells[2,01] := 'CADASTRO DE CLIENTES';
          mPlanilha.Range['A2','A2'].Font.Size  := 10;
          mPlanilha.Range['A2','Y2'].Mergecells := True;
          mPlanilha.Range['A2','Y2'].HorizontalAlignment := 3;

          Janela_Processamento.Close;
          mPlanilha.Visible := true;
     End;
end;

// Envia informações para o excel.
procedure TImpressao_Cadastros_Clientes.ExportaEXCEL2;
var
   mPlanilha: Variant;
   mLinha   : Integer;
begin
     With Dados do begin
          Janela_Processamento := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := tClientes.RecordCount;
          Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
          Janela_Processamento.Show;

          mPlanilha := CreateOleObject('Excel.Application');

          mPlanilha.WorkBooks.add(1);
          mPlanilha.Visible := false;
          
          mPlanilha.Range['A3','I3'].Interior.Color    := RGB(255, 255, 140);
          mPlanilha.Range['A3','I3'].Interior.Pattern  := 1;
          mPlanilha.Range['A3','I3'].Font.Bold         := true;
          mPlanilha.Range['A3','I3'].Font.Color        := clBlack;
          mPlanilha.Range['A3','I3'].Borders.LineStyle := 1; //xlContinuous;
          mPlanilha.Range['A3','I3'].Borders.Weight    := 2; //xlThin;
          mPlanilha.Range['A3','I3'].Borders.Color     := RGB(0,0,0);

          mPlanilha.Cells[3,01] := 'CÓDIGO';
          mPlanilha.Cells[3,02] := 'NOME';
          mPlanilha.Cells[3,03] := 'CIDADE';
          mPlanilha.Cells[3,04] := 'ESTADO';
          mPlanilha.Cells[3,05] := 'CONTATO';
          mPlanilha.Cells[3,06] := 'TELEFONE';
          mPlanilha.Cells[3,07] := 'E-MAIL';
          mPlanilha.Cells[3,08] := 'ÚLTIMA COMPRA';
          mPlanilha.Cells[3,09] := 'VLR.ÚLTIMA COMPRA';

          mPlanilha.Range['A3','I3'].HorizontalAlignment := 3;
          mPlanilha.Range['A3','I3'].VerticalAlignment   := 2;
          mPlanilha.Range['A3','I3'].Font.Size           := 8;

          mLinha := 4;

          While (not tClientes.Eof) and (not Funcoes.Cancelado) do begin
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Font.Size         := 9;
                mPlanilha.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Color    := $00EBF3EB;
                mPlanilha.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.LineStyle := 1;
                mPlanilha.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.Color     := clSilver;
                
                mPlanilha.Cells[mLinha,01] := tClientes.FieldByName('Codigo').AsString;
                mPlanilha.Cells[mLinha,02] := tClientes.FieldByName('Nome').AsString;
                mPlanilha.Cells[mLinha,03] := tClientes.FieldByName('Municipio').AsString;
                mPlanilha.Cells[mLinha,04] := tClientes.FieldByName('Estado').AsString;
                mPlanilha.Cells[mLinha,05] := tClientes.FieldByName('Contato2').AsString;
                mPlanilha.Cells[mLinha,06] := tClientes.FieldByName('Telefone1').AsString + ' / ' + tClientes.FieldByName('Telefone2').AsString;
                mPlanilha.Cells[mLinha,07] := tClientes.FieldByName('Email').AsString;
                mPlanilha.Cells[mLinha,08] := tClientes.FieldByName('Ultima_Compra').Value;
                mPlanilha.Cells[mLinha,09] := tClientes.FieldByName('Valor_UltimaCompra').Value;

                mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';

                tClientes.Next;
                Inc(mLinha);

                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          mPlanilha.Columns.Autofit;
          mPlanilha.Rows.Autofit;

          //Fecha o Excel.
          If Funcoes.Cancelado = true then begin
             Abort;
             mPlanilha.Free;
             mPlanilha.Destroy;
          End;

          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
          mPlanilha.Range['A1','A1'].Font.Size  := 14;
          mPlanilha.Range['A1','A1'].Font.Bold  := true;
          mPlanilha.Range['A1','I1'].Mergecells := True;
          mPlanilha.Range['A1','I1'].HorizontalAlignment := 3;

          mPlanilha.Cells[2,01] := 'CADASTRO DE CLIENTES';
          mPlanilha.Range['A2','A2'].Font.Size  := 10;
          mPlanilha.Range['A2','I2'].Mergecells := True;
          mPlanilha.Range['A2','I2'].HorizontalAlignment := 3;

          Janela_Processamento.Close;
          mPlanilha.Visible := true;
     End;
end;


procedure TImpressao_Cadastros_Clientes.cEstadoExit(Sender: TObject);
begin
      With Dados do begin
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE UF = :pUF ORDER BY Nome');
           Municipios.ParamByName('pUF').AsString := EstadosCodigo.AsString;
           Municipios.Open;
      End;
end;

end.
