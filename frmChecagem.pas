unit frmChecagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, RXCtrls, Vcl.ExtCtrls, DB, DBAccess, MSAccess, Funcoes, Vcl.ComCtrls,
  Printers, DateUtils, system.UITypes, MemDS;

type
  TChecagem = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    tCheca: TMSQuery;
    lProcesso: TLabel;
    Progresso: TProgressBar;
    bRefazer: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    cMsgDemurrage: TMemo;
    cMsgClientes: TMemo;
    cMsgRetorno: TMemo;
    TabSheet4: TTabSheet;
    cMsgContainer: TMemo;
    TabSheet5: TTabSheet;
    cMsgArquivos: TMemo;
    TabSheet6: TTabSheet;
    tDisponivel: TMSQuery;
    cMsgEstoque: TMemo;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    cMsgRadar: TMemo;
    cMsgVinculacao: TMemo;
    TabSheet9: TTabSheet;
    cMsgAtraso: TMemo;
    TabSheet10: TTabSheet;
    cMsgMovimento: TMemo;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    TabSheet11: TTabSheet;
    cMsgExoneracao: TMemo;
    TabSheet12: TTabSheet;
    cMsgDIDA: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bRefazerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Checagem: TChecagem;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TChecagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Checagem.Release;
     Checagem := nil;
end;

procedure TChecagem.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
     With Dados do begin
          Configuracao.Open;
          with Usuarios do begin
               sql.Clear;
               sql.Add('select * from usuarios where Matricula = '+quotedstr(Menu_Principal.mUsuarioCodigo));
               open;
          end;

          TabSheet1.TabVisible  := UsuariosChecagem_Demurrage.AsBoolean;
          TabSheet2.TabVisible  := UsuariosChecagem_ContratoClientes.AsBoolean;
          TabSheet3.TabVisible  := UsuariosChecagem_PrazoRetorno.AsBoolean;
          TabSheet4.TabVisible  := UsuariosChecagem_ProcessoContainer.AsBoolean;
          TabSheet5.TabVisible  := UsuariosChecagem_PrazoArquivos.AsBoolean;
          TabSheet6.TabVisible  := UsuariosChecagem_EstoqueMinimo.AsBoolean;
          TabSheet7.TabVisible  := UsuariosChecagem_Radar.AsBoolean;
          TabSheet8.TabVisible  := UsuariosChecagem_Viculacoes.AsBoolean;
          TabSheet9.TabVisible  := UsuariosChecagem_ClientesAtraso.AsBoolean;
          TabSheet10.TabVisible := UsuariosChecagem_ClientesMovimento.AsBoolean;
          TabSheet11.TabVisible := UsuariosChecagem_Exoneracao.AsBoolean;
          TabSheet12.TabVisible := UsuariosChecagem_DIDA.AsBoolean;
     end;
end;

procedure TChecagem.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TChecagem.FormActivate(Sender: TObject);
Var
     mTotal    : Real;
     mVenc     : Integer;
     mLista    : Boolean;
     mDescricao: WideString;
begin
     Screen.Cursor := crSQLWait;

     cMsgDemurrage.Clear;
     cMsgClientes.Clear;
     cMsgRadar.Clear;
     cMsgVinculacao.Clear;
     cMsgRetorno.Clear;
     cMsgArquivos.Clear;
     cMsgContainer.Clear;
     cMsgEstoque.Clear;
     cMsgAtraso.Clear;
     cMsgExoneracao.Clear;

     With Dados do begin
          // Fazendo checagem de "Demurage".
          if UsuariosChecagem_Demurrage.AsBoolean then begin
             cMsgDemurrage.Clear;
             tCheca.SQL.Clear;
             tCheca.SQL.Add('SELECT CASE WHEN Data_Entrega IS NULL THEN');
             tCheca.SQL.Add('            DATEDIFF(Day, Data_Saida, GETDATE())');
             tCheca.SQL.Add('       ELSE');
             tCheca.SQL.Add('            0');
             tCheca.SQL.Add('       END AS Demurrage,');
             tCheca.SQL.Add('       (DATEDIFF(Day, Data_Saida, GETDATE()) * Valor_Demurrage) AS Valor_Demurrage,');
             tCheca.SQL.Add('       Numero,');
             tCheca.SQL.Add('       Processo');
             tCheca.SQL.Add('FROM   Container');
             tCheca.SQL.Add('WHERE (Data_Pagamento IS NULL) AND (Tipo_Embarque = ''FCL'' OR Tipo_Embarque = ''LCL - INTEGRAL'') ');
             tCheca.SQL.Add('  AND (Data_Entrega IS NULL) AND (DATEDIFF(Day, Data_Saida, GETDATE()) > 0)');
             tCheca.SQL.Add('  AND ISNULL( (SELECT Processo_Mestre FROM ProcessosDocumentos PD WHERE(PD.Processo = Container.Processo) ), '''') = '''' ');
             tCheca.SQL.Add('ORDER BY Processo, Numero');
             tCheca.Open;

             If tCheca.RecordCount > 0 then begin
                PageControl1.ActivePageIndex := 0;
                TabSheet1.Caption  := 'Demurrage ['+PoeZero(1, tCheca.RecordCount)+']';
                lProcesso.Caption  := 'Verificando vencimento de containers "Demurrage"...';
                Progresso.Visible  := true;
                Progresso.Max      := tCheca.RecordCount;
                Progresso.Position := 0;

                mTotal := 0;
                cMsgDemurrage.Lines.Add('01. CONTAINERS COM PRAZO DE ENTREGA VENCIDOS');
                tCheca.First;
                While not tCheca.Eof do begin
                      cMsgDemurrage.Lines.Add(Space(4)+'» Processo  nº: '+tCheca.FieldByName('Processo').AsString+Space(15-Length(Trim(tCheca.FieldByName('Processo').AsString)))+' Container nº: '+tCheca.FieldByName('Numero').AsString+Space(20-Length(Trim(tCheca.FieldByName('Numero').AsString))) + '  Dias: '+PoeZero(5, tCheca.FieldByName('Demurrage').AsInteger)+'  Valor R$: '+PadR(FormatFloat('###,###,##0.00',tCheca.FieldByName('Valor_Demurrage').AsCurrency), 14));
                      mTotal := mTotal + tCheca.FieldByName('Valor_Demurrage').AsCurrency;
                      Progresso.Position := Progresso.Position + 1;
                      Application.ProcessMessages;
                      tCheca.Next;
                End;
                cMsgDemurrage.Lines.Add(Space(76)+'-------------------------------');
                cMsgDemurrage.Lines.Add(Space(76)+'TOTAL DEMURRAGE: '+PadR(FormatFloat('###,###,##0.00',mTotal), 14));
             End;
          end;

          // Fazendo checagem de vencimento dos "Contratos c/Clientes".
          if UsuariosChecagem_ContratoClientes.AsBoolean then begin
             cMsgClientes.Clear;
             tCheca.SQL.Clear;
             tCheca.SQL.Add('SELECT Codigo, CNPJ, Nome,Vencimento_Contrato, DATEDIFF(Day, GETDATE(), Vencimento_Contrato) AS Dias');
             tCheca.SQL.Add('FROM   Clientes');
             tCheca.SQL.Add('WHERE  Vencimento_Contrato IS NOT NULL');
             tCheca.SQL.Add('AND    DATEDIFF(Day, GETDATE(), Vencimento_Contrato) <= (SELECT Aviso_VencimentoContrato FROM Configuracao)');
             tCheca.SQL.Add('ORDER  BY Vencimento_Contrato');
             tCheca.Open;

             If tCheca.RecordCount > 0 then begin
                PageControl1.ActivePageIndex := 1;
                TabSheet2.Caption  := 'Contratos Com Clientes ['+PoeZero(1, tCheca.RecordCount)+']';
                lProcesso.Caption  := 'Verificando vencimento dos "Contratos com Clientes"...';
                Progresso.Visible  := true;
                Progresso.Max      := tCheca.RecordCount;
                Progresso.Position := 0;

                cMsgClientes.Lines.Add('02. CONTRATOS COM CLIENTES COM VENCIMENTO PRÓXIMO OU VENCIDO...');
                tCheca.First;
                While not tCheca.Eof do begin
                         If tCheca.FieldByName('Dias').AsInteger < 0 then
                            cMsgClientes.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ tCheca.FieldByName('Vencimento_Contrato').AsString +' Vencido á '+InttoStr(tCheca.FieldByName('Dias').AsInteger*-1)+' dias.');
                         If tCheca.FieldByName('Dias').AsInteger > 0 then
                            cMsgClientes.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ tCheca.FieldByName('Vencimento_Contrato').AsString +' Vencendo á '+tCheca.FieldByName('Dias').AsString+' dias.');
                         If tCheca.FieldByName('Dias').AsInteger = 0 then
                            cMsgClientes.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ tCheca.FieldByName('Vencimento_Contrato').AsString +' Vencendo á '+tCheca.FieldByName('Dias').AsString+' dias.');
                      Progresso.Position := Progresso.Position + 1;
                      Application.ProcessMessages;
                      tCheca.Next;
                End;
             End;
          end;

          // Fazendo checagem de vencimento dos "Radares" dos Clientes".
          if UsuariosChecagem_Radar.AsBoolean then begin
             cMsgRadar.Clear;
             tCheca.SQL.Clear;
             tCheca.SQL.Add('SELECT Codigo, CNPJ, Nome,Vencimento_Radar, DATEDIFF(Day, GETDATE(), Vencimento_Radar) AS Dias');
             tCheca.SQL.Add('FROM   Clientes');
             tCheca.SQL.Add('WHERE  Vencimento_Radar IS NOT NULL');
             tCheca.SQL.Add('AND    DATEDIFF(Day, GETDATE(), Vencimento_Radar) <= (SELECT Aviso_VencimentoRadar FROM Configuracao)');
             tCheca.SQL.Add('ORDER  BY Vencimento_Radar');
             tCheca.Open;

             If tCheca.RecordCount > 0 then begin
                PageControl1.ActivePageIndex := 2;
                TabSheet7.Caption  := 'Vencimento Radar ['+PoeZero(1, tCheca.RecordCount)+']';
                lProcesso.Caption  := 'Verificando vencimento dos "Radares dos Clientes"...';
                Progresso.Visible  := true;
                Progresso.Max      := tCheca.RecordCount;
                Progresso.Position := 0;

                cMsgRadar.Lines.Add('03. RADAR DE CLIENTES COM VENCIMENTO PRÓXIMO OU VENCIDO...');
                tCheca.First;
                While not tCheca.Eof do begin
                         If tCheca.FieldByName('Dias').AsInteger < 0 then
                            cMsgRadar.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ Copy(tCheca.FieldByName('Vencimento_Radar').AsString, 1, 10) +' Vencido á '+InttoStr(tCheca.FieldByName('Dias').AsInteger*-1)+' dias.');
                         If tCheca.FieldByName('Dias').AsInteger > 0 then
                            cMsgRadar.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ Copy(tCheca.FieldByName('Vencimento_Radar').AsString, 1, 10)+' Vencendo á '+tCheca.FieldByName('Dias').AsString+' dias.');
                         If tCheca.FieldByName('Dias').AsInteger = 0 then
                            cMsgRadar.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ Copy(tCheca.FieldByName('Vencimento_Radar').AsString, 1, 10)+' Vencendo á '+tCheca.FieldByName('Dias').AsString+' dias.');
                      Progresso.Position := Progresso.Position + 1;
                      Application.ProcessMessages;
                      tCheca.Next;
                End;
             End;
          end;

          // Fazendo checagem de vencimento de "Vinculações" dos Clientes".
          if UsuariosChecagem_Viculacoes.AsBoolean then begin
             cMsgVinculacao.Clear;
             tCheca.SQL.Clear;
             tCheca.SQL.Add('SELECT Codigo, CNPJ, Nome,Vencimento_Vinculacao, DATEDIFF(Day, GETDATE(), Vencimento_Vinculacao) AS Dias');
             tCheca.SQL.Add('FROM   Clientes');
             tCheca.SQL.Add('WHERE  Vencimento_Vinculacao IS NOT NULL');
             tCheca.SQL.Add('AND    DATEDIFF(Day, GETDATE(), Vencimento_Vinculacao) <= (SELECT Aviso_VencimentoVinculacao FROM Configuracao)');
             tCheca.SQL.Add('ORDER  BY Vencimento_Vinculacao');
             tCheca.Open;

             If tCheca.RecordCount > 0 then begin
                PageControl1.ActivePageIndex := 3;
                TabSheet8.Caption  := 'Vencimento Vinculação ['+PoeZero(1, tCheca.RecordCount)+']';
                lProcesso.Caption  := 'Verificando vencimento das "Vinculações dos Clientes"...';
                Progresso.Visible  := true;
                Progresso.Max      := tCheca.RecordCount;
                Progresso.Position := 0;

                cMsgVinculacao.Lines.Add('04. VINCULAÇÕES DE CLIENTES COM VENCIMENTO PRÓXIMO OU VENCIDO...');
                tCheca.First;
                While not tCheca.Eof do begin
                         If tCheca.FieldByName('Dias').AsInteger < 0 then
                            cMsgVinculacao.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ Copy(tCheca.FieldByName('Vencimento_Vinculacao').AsString, 1, 10) +' Vencido á '+InttoStr(tCheca.FieldByName('Dias').AsInteger*-1)+' dias.');
                         If tCheca.FieldByName('Dias').AsInteger > 0 then
                            cMsgVinculacao.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ Copy(tCheca.FieldByName('Vencimento_Vinculacao').AsString, 1, 10)+' Vencendo á '+tCheca.FieldByName('Dias').AsString+' dias.');
                         If tCheca.FieldByName('Dias').AsInteger = 0 then
                            cMsgVinculacao.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' Vencimento '+ Copy(tCheca.FieldByName('Vencimento_Vinculacao').AsString, 1, 10)+' Vencendo á '+tCheca.FieldByName('Dias').AsString+' dias.');
                      Progresso.Position := Progresso.Position + 1;
                      Application.ProcessMessages;
                      tCheca.Next;
                End;
             End;
          end;
          
          // Fazendo checagem das notas fiscais de retorno "ICMS".
          if UsuariosChecagem_PrazoRetorno.AsBoolean then begin
             cMsgRetorno.Clear;
             tCheca.SQL.Clear;
             tCheca.SQL.Add('SELECT Natureza_Codigo AS Natureza,');
             tCheca.SQL.Add('       Numero AS Nota,');
             tCheca.SQL.Add('       (SELECT ISNULL(Prazo_Retorno, 0) FROM Cybersoft_Cadastros.dbo.Natureza WHERE(Codigo = NF.Natureza_Codigo)) AS Prazo,');
             tCheca.SQL.Add('       (SELECT ISNULL(Prazo_Retorno, 0) FROM Cybersoft_Cadastros.dbo.Natureza WHERE(Codigo = NF.Natureza_Codigo))-(SELECT Aviso_VencimentoRetorno FROM Configuracao) AS Aviso,');
             tCheca.SQL.Add('       Data_Emissao AS Emissao,');
             tCheca.SQL.Add('       (Data_Emissao+(SELECT ISNULL(Prazo_Retorno, 0) FROM Cybersoft_Cadastros.dbo.Natureza WHERE(Codigo = NF.Natureza_Codigo))) AS Vencimento,');
             tCheca.SQL.Add('       DATEDIFF(Day, Data_Emissao, GETDATE()) AS Dias,');
             tCheca.SQL.Add('       Destinatario_Nome AS Cliente');
             tCheca.SQL.Add('FROM   NotasFiscais NF');
             tCheca.SQL.Add('WHERE  (Saida_Entrada = 1) AND (Cancelada <> 1)');
             tCheca.SQL.Add('       AND (SELECT ISNULL(Prazo_Retorno, 0) FROM Cybersoft_Cadastros.dbo.Natureza WHERE(Codigo = NF.Natureza_Codigo)) <> 0');
             tCheca.SQL.Add('       AND ISNULL((SELECT Nota FROM NotasTerceiros NT WHERE(NT.Nota_Referencia = NF.Numero)), 0) = 0');
             tCheca.SQL.Add('       AND DATEDIFF(Day, Data_Emissao, GETDATE()) >= ((SELECT ISNULL(Prazo_Retorno, 0) FROM Cybersoft_Cadastros.dbo.Natureza WHERE(Codigo = NF.Natureza_Codigo))-(SELECT Aviso_VencimentoRetorno FROM Configuracao))');
             tCheca.SQL.Add('ORDER  BY Data_Emissao DESC');
             tCheca.Open;

             If tCheca.RecordCount > 0 then begin
                PageControl1.ActivePageIndex := 4;
                TabSheet3.Caption  := 'Prazo de Retorno de Nota Fiscal (ICMS) ['+PoeZero(1, tCheca.RecordCount)+']';
                lProcesso.Caption  := 'Verificando vencimento dos "Contratos com Clientes"...';
                Progresso.Visible  := true;
                Progresso.Max      := tCheca.RecordCount;
                Progresso.Position := 0;

                cMsgRetorno.Lines.Add('07. NOTAS FISCAIS COM PRAZO DE RETORNO VENCENDO OU VENCIDO...');
                tCheca.First;
                While not tCheca.Eof do begin
                      If (tCheca.FieldByName('Dias').AsInteger <= tCheca.FieldByName('Prazo').AsInteger) then begin
                         cMsgRetorno.Lines.Add(Space(4)+'» '+PoeZero(9, tCheca.FieldByName('Nota').AsInteger)+' de '+tCheca.FieldByName('Emissao').AsString+' '+tCheca.FieldByName('Natureza').AsString+' Prazo:'+tCheca.FieldByName('Prazo').AsString+' Vencto.'+tCheca.FieldByName('Vencimento').AsString +' Vencendo em '+InttoStr(tCheca.FieldByName('Prazo').AsInteger-tCheca.FieldByName('Dias').AsInteger)+' dias.');
                      End;
                      If (tCheca.FieldByName('Dias').AsInteger > tCheca.FieldByName('Prazo').AsInteger) then begin
                         cMsgRetorno.Lines.Add(Space(4)+'» '+PoeZero(9, tCheca.FieldByName('Nota').AsInteger)+' de '+tCheca.FieldByName('Emissao').AsString+' '+tCheca.FieldByName('Natureza').AsString+' Prazo:'+tCheca.FieldByName('Prazo').AsString+' Vencto.'+tCheca.FieldByName('Vencimento').AsString +' Vencido á '+InttoStr(tCheca.FieldByName('Dias').AsInteger-tCheca.FieldByName('Prazo').AsInteger)+' dias.');
                      End;
                      Progresso.Position := Progresso.Position + 1;
                      Application.ProcessMessages;
                      tCheca.Next;
                End;
             End;
          end;

          // Fazendo checagem de processos com conhecimento de transporte e sem containers cadastrados com via de transporte = "Maritimo".
          if UsuariosChecagem_ProcessoContainer.AsBoolean then begin
             cMsgContainer.Clear;
             tCheca.SQL.Clear;
             tCheca.SQL.Add('SELECT Processo, Numero_DOC');
             tCheca.SQL.Add('FROM   ProcessosDocumentos');
             tCheca.SQL.Add('WHERE  (Via_Transporte = 1) AND (SELECT COUNT(*) FROM Container WHERE(Processo = ProcessosDocumentos.Processo)) = 0');
             tCheca.SQL.Add('ORDER  BY Processo');
             tCheca.Open;

             If tCheca.RecordCount > 0 then begin
                Container.SQL.Clear;
                Container.SQL.Add('SELECT * FROM Container WHERE Processo NOT IN (SELECT Processo FROM ProcessosDocumentos WHERE(Via_Transporte = 1) AND (SELECT COUNT(*) FROM Container WHERE(Processo = ProcessosDocumentos.Processo)) = 0)');
                Container.Open;

                PageControl1.ActivePageIndex := 5;
                TabSheet4.Caption  := 'Processos sem Containers Cadastrados ['+PoeZero(1, tCheca.RecordCount)+']';
                lProcesso.Caption  := 'Verificando Processos sem Containers Cadastrados...';
                Progresso.Visible  := true;
                Progresso.Max      := tCheca.RecordCount;
                Progresso.Position := 0;

                cMsgContainer.Lines.Add('08. PROCESSOS SEM CONTAINERS CADASTRADOS...');
                tCheca.First;
                While not tCheca.Eof do begin
                      mLista := false;
                      Container.First;
                      While not Container.Eof do begin
                            If Pos(tCheca.FieldByName('Processo').AsString, ContainerMemo_Processos.Value) = 0 then  begin
                               mLista := true;
                            end else begin
                               Break;
                            End;
                            Container.Next;
                      End;
                      If mLista then begin
                         cMsgContainer.Lines.Add(Space(4)+'» '+Trim(tCheca.FieldByName('Processo').AsString)+ Space(15-Length(Trim(tCheca.FieldByName('Processo').AsString))) +'    Conhecimento de Embarque: '+tCheca.FieldByName('Numero_DOC').AsString);
                      End;

                      Progresso.Position := Progresso.Position + 1;
                      Application.ProcessMessages;
                      tCheca.Next;
                End;
             End;
          end;
          
          lProcesso.Caption  := 'Aguarde...';
          Application.ProcessMessages;
          
          // Fazendo checagem dos prazos de entrega de obrigações fiscais "Arquivos Digitais".
          // SPED FISCAL.
          if UsuariosChecagem_PrazoArquivos.AsBoolean then begin
             cMsgArquivos.Clear;
             PageControl1.ActivePageIndex := 6;
             mVenc := ConfiguracaoVencimento_FISCAL.AsInteger - DayOf(Date);
             If (mVenc > 0) and (mVenc <= ConfiguracaoVencimento_FISCALDias.AsInteger)  then begin
                cMsgArquivos.Lines.Add('Prazo de entrega do "SPED FISCAL" esta vencendo em '+PoeZero(2, mVenc)+' dias.');
             End;
             If mVenc = 0 then begin
                cMsgArquivos.Lines.Add('Atenção! Hoje é o último dia para entrega do "SPED FISCAL".');
             End;

             // SPED PIS/COFINS.
             mVenc := ConfiguracaoVencimento_PISCOFINS.AsInteger - DayOf(Date);
             If (mVenc > 0) and (mVenc <= ConfiguracaoVencimento_PISCOFINSDias.AsInteger)  then begin
                cMsgArquivos.Lines.Add('Prazo de entrega do "SPED PIS/COFINS" esta vencendo em '+PoeZero(2, mVenc)+' dias.');
             End;
             If mVenc = 0 then begin
                cMsgArquivos.Lines.Add('Atenção! Hoje é o último dia para entrega do "SPED PIS/COFINS".');
             End;

             // SPED CONTABIL.
             mVenc := ConfiguracaoVencimento_CONTABIL.AsInteger - DayOf(Date);
             If MonthOf(Date) = ConfiguracaoVencimento_CONTABILMes.AsInteger then begin
                If (mVenc > 0) and (mVenc <= ConfiguracaoVencimento_CONTABILDias.AsInteger)  then begin
                   cMsgArquivos.Lines.Add('Prazo de entrega do "SPED CONTABIL" esta vencendo em '+PoeZero(2, mVenc)+' dias.');
                End;
                If mVenc = 0 then begin
                   cMsgArquivos.Lines.Add('Atenção! Hoje é o último dia para entrega do "SPED CONTABIL".');
                End;
             End;

             // SINTEGRA.
             mVenc := Dados.ConfiguracaoVencimento_SINTEGRA.AsInteger - DayOf(Date);
             If (mVenc > 0) and (mVenc <= ConfiguracaoVencimento_SINTEGRADias.AsInteger) then begin
                cMsgArquivos.Lines.Add('Prazo de entrega do "SINTEGRA" esta vencendo em '+PoeZero(2, mVenc)+' dias.');
             End;
             If mVenc = 0 then begin
                cMsgArquivos.Lines.Add('Atenção! Hoje é o último dia para entrega do "SINTEGRA".');
             End;
             TabSheet5.Caption  := 'Prazo de Entrega de Arquivos ['+PoeZero(1, cMsgArquivos.Lines.Count)+']';
          end;

          // Fazendo checagem do estoque mínimo.
          if UsuariosChecagem_EstoqueMinimo.AsBoolean then begin
             cMsgEstoque.Clear;
             PageControl1.ActivePageIndex := 7;
             lProcesso.Caption  := 'Verificando produtos que atingiram o estoque mínimo...';
             Progresso.Visible  := true;
             Progresso.Position := 0;
             Application.ProcessMessages;

             tDisponivel.SQL.Clear;
             tDisponivel.SQL.Add('SELECT Codigo,');
             tDisponivel.SQL.Add('       Codigo_Fabricante,');
             tDisponivel.SQL.Add('       CAST(Descricao AS VARCHAR(300)) AS Descricao,');
             tDisponivel.SQL.Add('       Estoque_Minimo,');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM NotasItens            WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = 1)), 0) +');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade_Entrada)  FROM ProdutosTransferencia WHERE(Produto_Entrada   = PD.Codigo) ), 0) -');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM NotasItens            WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM -PedidosItens          WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0) -');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM ProdutosTransferencia WHERE(Produto_Saida     = PD.Codigo) ), 0)');
             tDisponivel.SQL.Add('       AS Disponivel');
             tDisponivel.SQL.Add('FROM Produtos PD');
             tDisponivel.SQL.Add('WHERE  Estoque_Minimo > 0 AND ');
             tDisponivel.SQL.Add('       (ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = 1)), 0) +');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade_Entrada)  FROM ProdutosTransferencia WHERE(Produto_Entrada   = PD.Codigo) ), 0) -');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM NotasItens            WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM PedidosItens          WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0) -');
             tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade)  FROM ProdutosTransferencia WHERE(Produto_Saida     = PD.Codigo) ), 0)) <= Estoque_Minimo');
             tDisponivel.Open;

             TabSheet6.Caption  := 'Estoque Mínimo ['+PoeZero(1, tDisponivel.RecordCount)+']';
             Progresso.Max      := tDisponivel.RecordCount;

             cMsgEstoque.Lines.Add('09. PRODUTOS QUE ATINGIRAM O ESTOQUE MÍNIMO...');
             cMsgEstoque.Lines.Add('----------------------------------------------------------------------------------------------------------------------------------------');

             While not tDisponivel.Eof do begin
                   mDescricao := RemoveCaracter(#13, '', tDisponivel.FieldByName('Descricao').AsString);
                   mDescricao := RemoveCaracter(#12, '', mDescricao);
                   mDescricao := RemoveCaracter('<{'+Trim(tDisponivel.FieldByName('Codigo').AsString)+'}>', '', mDescricao);
                   mDescricao := Copy(mDescricao, 1, 45) + Space(45-Length(Trim(mDescricao)));

                   cMsgEstoque.Lines.Add('» '+PADR(tDisponivel.FieldByName('Codigo').AsString, 6)+' '+
                                         PADR(tDisponivel.FieldByName('Codigo_Fabricante').AsString, 15)+
                                         '  '+mDescricao +
                                         '   Estoque Mínimo: '+PadR(FormatFloat(',##0.000', tDisponivel.FieldByName('Estoque_Minimo').AsFloat),14)+
                                         '   Disponível: '+PadR(FormatFloat(',##0.000', tDisponivel.FieldByName('Disponivel').AsFloat),14));
                   tDisponivel.Next;
                
                   Progresso.Position := Progresso.Position + 1;
                   Application.ProcessMessages;
             End;
          end;

          // Fazendo checagem de atrasos de pagamentos de clientes.
          if UsuariosChecagem_ClientesAtraso.AsBoolean then begin
             cMsgAtraso.Clear;
             tCheca.SQL.Clear;
             tCheca.SQL.Add('SELECT Cliente AS Codigo,');
             tCheca.SQL.Add('       Data_Vencimento,');
             tCheca.SQL.Add('       Cliente,');
             tCheca.SQL.Add('       (SELECT Nome          FROM Clientes WHERE Codigo = Cliente) AS Nome,');
             tCheca.SQL.Add('       (SELECT CNPJ          FROM Clientes WHERE Codigo = Cliente) AS CNPJ,');
             tCheca.SQL.Add('       (SELECT Atraso_Maximo FROM Clientes WHERE Codigo = Cliente) AS Maximo,');
             tCheca.SQL.Add('       DATEDIFF(Day, Data_Vencimento, GETDATE()) AS Atraso,');
             tCheca.SQL.Add('       Numero_Documento');
             tCheca.SQL.Add(' FROM  PagarReceber PR');
             tCheca.SQL.Add('WHERE  Tipo = ''R'' ');
             tCheca.SQL.Add('  AND  ISNULL(Cliente, 0) <> 0');
             tCheca.SQL.Add('  AND  DATEDIFF(Day, Data_Vencimento, GETDATE()) > 0');
             tCheca.SQL.Add('  AND  ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 2),0) < ROUND(Valor_Total, 2)');
             tCheca.SQL.Add('ORDER  BY Data_Vencimento Desc');
             tCheca.Open;

             If tCheca.RecordCount > 0 then begin
                PageControl1.ActivePageIndex := 8;
                TabSheet9.Caption            := 'Clientes com pagamentos em atraso ['+PoeZero(1, tCheca.RecordCount)+']';
                lProcesso.Caption            := 'Verificando "Clientes com pagamentos em atraso"...';
                Progresso.Visible            := true;
                Progresso.Max                := tCheca.RecordCount;
                Progresso.Position           := 0;

                cMsgAtraso.Lines.Add('05. CLIENTES COM PAGAMENTOS EM ATRASO...');
                tCheca.First;
                While not tCheca.Eof do begin
                      cMsgAtraso.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+'Título '+tCheca.FieldByName('Numero_Documento').AsString+' Vencto.'+ Copy(tCheca.FieldByName('Data_Vencimento').AsString, 1, 10)+' Vencido á '+tCheca.FieldByName('Atraso').AsString+' dias.');
                      Progresso.Position := Progresso.Position + 1;
                      Application.ProcessMessages;
                      tCheca.Next;
                End;
             End;
          end;

          // Checagem dos clientes sem movimentação nos ultimos dias informados em configuração.
          if UsuariosChecagem_ClientesMovimento.AsBoolean then begin
             cMsgMovimento.Clear;
             tCheca.SQL.Clear;
             tCheca.SQL.Add('SELECT Codigo,');
             tCheca.SQL.Add('       Nome,');
             tCheca.SQL.Add('       CNPJ,');
             tCheca.SQL.Add('       (SELECT MAX(Data_Emissao) FROM NotasFiscais NF WHERE NF.Cliente_Codigo = CLI.Codigo) AS Data,');
             tCheca.SQL.Add('       DATEDIFF(Day, (SELECT MAX(Data_Emissao) FROM NotasFiscais NF WHERE NF.Cliente_Codigo = CLI.Codigo), GETDATE()) AS Dias');
             tCheca.SQL.Add('FROM   Clientes CLI');
             tCheca.SQL.Add('WHERE  DATEDIFF(Day, (SELECT MAX(Data_Emissao) FROM NotasFiscais NF WHERE NF.Cliente_Codigo = CLI.Codigo), GETDATE()) BETWEEN :pMinimo AND :pMaximo');
             tCheca.SQL.Add('ORDER By Dias');
             tCheca.ParamByName('pMinimo').AsInteger := ConfiguracaoAviso_MovimentoMinimo.AsInteger;
             tCheca.ParamByName('pMaximo').AsInteger := ConfiguracaoAviso_MovimentoMaximo.AsInteger;
             tCheca.Open;

             If tCheca.RecordCount > 0 then begin
                PageControl1.ActivePageIndex := 9;
                TabSheet10.Caption            := 'Clientes sem movimentação ['+PoeZero(1, tCheca.RecordCount)+']';
                lProcesso.Caption            := 'Verificando "Clientes sem movimentação no Período"...';
                Progresso.Visible            := true;
                Progresso.Max                := tCheca.RecordCount;
                Progresso.Position           := 0;

                cMsgMovimento.Lines.Add('06. CLIENTES SEM MOVIMENTAÇÃO...');
                tCheca.First;
                While not tCheca.Eof do begin
                      cMsgMovimento.Lines.Add(Space(4)+'» '+PoeZero(5, tCheca.FieldByName('Codigo').AsInteger)+' '+tCheca.FieldByName('Nome').AsString+Space(60-Length(Trim(tCheca.FieldByName('Nome').AsString)))+' sem movimentação á '+tCheca.FieldByName('Dias').AsString+' dias.');
                      Progresso.Position := Progresso.Position + 1;
                      Application.ProcessMessages;
                      tCheca.Next;
                End;
             End;
          end;
          
          // Fazendo checagem dos prazos de exoneração do ICMS.
          if UsuariosChecagem_Exoneracao.AsBoolean then begin
             cMsgExoneracao.Clear;
             with tCheca do begin
                  sql.clear;
                  sql.add('select DI = Numero_Declaracao');
                  sql.add('      ,Processo');
                  sql.add('      ,Desembaraco = Data_DesembaracoDeclaracao');
                  sql.add('      ,Vencimento  = Data_DesembaracoDeclaracao + :pPrazo');
                  sql.add('      ,Dias        = :pPrazo - datediff(day, Data_DesembaracoDeclaracao, getdate())');
                  sql.add('from ProcessosDocumentos pd');
                  sql.add('where isnull(Numero_Declaracao, '''') <> '''' ');
                  sql.add('and isnull(Exonerado, 0) = 0');
                  sql.add('and (:pPrazo - datediff(day, Data_DesembaracoDeclaracao, getdate())) <= :pAviso');
                  sql.add('order by Numero_Declaracao');
                  parambyname('pPrazo').AsInteger := Dados.ConfiguracaoPrazo_Exoneracao.AsInteger;
                  parambyname('pAviso').AsInteger := Dados.ConfiguracaoAviso_ExoneracaoICMS.AsInteger;
                  //sql.SaveToFile('c:\temp\Checagens_Exoneracao.sql');
                  open;

                  if RecordCount > 0 then begin
                     PageControl1.ActivePageIndex := 10;
                     TabSheet11.Caption := 'Prazo para exoneração - ICMS ['+PoeZero(1, RecordCount)+']';
                     lProcesso.Caption  := 'Verificando a data do desembaraço das DI''s...';
                     Progresso.Visible  := true;
                     Progresso.Max      := RecordCount;
                     Progresso.Position := 0;

                     cMsgExoneracao.Lines.Add('10. DI''s COM PRAZO DE EXONERAÇÃO VENCENDO OU VENCIDO.');
                     first;
                     while not Eof do begin
                           if not fieldbyname('Desembaraco').IsNull then begin
                              if fieldbyname('Dias').AsInteger > 0 then begin
                                 cMsgExoneracao.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+tCheca.fieldbyname('Processo').asstring+' Vencimento em '+FormatDateTime('dd/mm/yyyy', tCheca.FieldByName('Vencimento').value)+' Vencendo em '+ FieldByName('Dias').Asstring+' dias.');
                              end;
                              if fieldbyname('Dias').AsInteger = 0 then begin
                                 cMsgExoneracao.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+tCheca.fieldbyname('Processo').asstring+' Vencimento em '+tCheca.FieldByName('Vencimento').AsString +' Vencendo hoje');
                              end;
                              if fieldbyname('Dias').AsInteger < 0 then begin
                                 cMsgExoneracao.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+tCheca.fieldbyname('Processo').asstring+' Vencimento em '+FormatDateTime('dd/mm/yyyy', tCheca.FieldByName('Vencimento').value)+' Vencida á '+inttostr(FieldByName('Dias').asinteger*-1)+' dias.');
                              end;
                           end else begin
                              cMsgExoneracao.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+tCheca.fieldbyname('Processo').asstring+' Data do desembaraço não informada.');
                           end;
                           Progresso.Position := Progresso.Position + 1;
                           Application.ProcessMessages;
                           next;
                     end;
                  end;
             end;
          end;
          
          // Fazendo checagem dos prazos de DI/DA.
          if UsuariosChecagem_DIDA.AsBoolean then begin
             // Verificação das DI's.
             cMsgDIDA.Clear;
             with tCheca do begin
                  sql.clear;
                  sql.add('select DI = Numero_Declaracao');
                  sql.add('      ,Processo');
                  sql.add('      ,Desembaraco = cast(Data_DesembaracoDeclaracao as date)');
                  //sql.add('      ,Vencimento = Data_DesembaracoDeclaracao + :pPrazoDI');
                  sql.add('      ,Vencimento = Navio_DataChegada + :pPrazoDI');
                  sql.add('      ,Dias = :pPrazoDI - datediff(day, Navio_DataChegada, getdate())');
                  sql.add('from ProcessosDocumentos pd');
                  sql.add('where isnull(Numero_Declaracao, '''') <> '''' ');
                  sql.add('and Desativado <> 1');
                  sql.add('and isnull(DA, 0) = 0');
                  sql.add('and isnull((select count(*) from NotasItens ni where ni.DI = pd.Numero_Declaracao), 0) = 0');
                  //sql.add('and (:pPrazoDI - datediff(day, Data_DesembaracoDeclaracao, getdate())) <= :pPrazoDIDias');
                  sql.add('and (:pPrazoDI - datediff(day, Navio_DataChegada, getdate())) <= :pPrazoDIDias');
                  sql.add('order by Numero_Declaracao');
                  parambyname('pPrazoDI').AsInteger     := Dados.ConfiguracaoPrazo_NFDI.AsInteger;
                  parambyname('pPrazoDIDias').AsInteger := Dados.ConfiguracaoPrazo_NFDIDias.AsInteger;
                  //sql.SaveToFile('c:\temp\Checagens_DI.sql');
                  open;
                  
                  if RecordCount > 0 then begin
                     PageControl1.ActivePageIndex := 11;
                     TabSheet12.Caption           := 'Vencimento de DI ['+PoeZero(1, RecordCount)+'] ';
                     lProcesso.Caption            := 'Verificando a data do desembaraço das DI''s...';
                     Progresso.Visible            := true;
                     Progresso.Max                := RecordCount;
                     Progresso.Position           := 0;

                     cMsgDIDA.Lines.Add('DI''s COM PRAZO VENCENDO OU VENCIDO.');
                     first;
                     while not Eof do begin
                           if not fieldbyname('Desembaraco').IsNull then begin
                              if fieldbyname('Dias').AsInteger > 0 then begin
                                 cMsgDIDA.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+fieldbyname('Processo').asstring+' Vencimento em '+FormatDateTime('dd/mm/yyyy', tCheca.FieldByName('Vencimento').value)+' Vencendo em '+ FieldByName('Dias').Asstring+' dias.');
                              end;
                              if fieldbyname('Dias').AsInteger = 0 then begin
                                 cMsgDIDA.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+fieldbyname('Processo').asstring+' Vencimento em '+tCheca.FieldByName('Vencimento').AsString +' Vencendo hoje');
                              end;
                              if fieldbyname('Dias').AsInteger < 0 then begin
                                 cMsgDIDA.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+fieldbyname('Processo').asstring+' Vencimento em '+FormatDateTime('dd/mm/yyyy', FieldByName('Vencimento').value)+' Vencida á '+inttostr(FieldByName('Dias').asinteger*-1)+' dias.');
                              end;
                           end else begin
                              cMsgDIDA.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+fieldbyname('Processo').asstring+' Data do desembaraço não informada.');
                           end;
                           Progresso.Position := Progresso.Position + 1;
                           Application.ProcessMessages;
                           next;
                     end;
                  end;
                  
                  // Verificação das DA's.
                  sql.clear;
                  sql.add('select DI = Numero_Declaracao');
                  sql.add('      ,Processo');
                  sql.add('      ,Desembaraco = cast(Data_DesembaracoDeclaracao as date)');
                  //sql.add('      ,Vencimento = Data_DesembaracoDeclaracao + :pPrazoDA');
                  sql.add('      ,Vencimento = Navio_DataChegada + :pPrazoDA');
                  //sql.add('      ,Dias = :pPrazoDA - datediff(day, Data_DesembaracoDeclaracao, getdate())');
                  sql.add('      ,Dias = :pPrazoDA - datediff(day, Navio_DataChegada, getdate())');
                  sql.add('      ,QuantidadeProc = isnull(Quantidade, 0)');
                  sql.add('      ,Quantidade = (select isnull(sum(Quantidade), 0) from Adicoes ad where ad.DI in(select pd2.Numero_Declaracao from ProcessosDocumentos pd2 where pd2.Processo_Mestre = pd.Processo))');
                  sql.add('      ,Quantidade_Dif = isnull(Quantidade, 0) - (select isnull(sum(Quantidade), 0) from Adicoes ad where ad.DI in(select pd2.Numero_Declaracao from ProcessosDocumentos pd2 where pd2.Processo_Mestre = pd.Processo))');
                  sql.add('from ProcessosDocumentos pd');
                  sql.add('where isnull(Numero_Declaracao, '''') <> '''' ');
                  sql.add('and Desativado <> 1');
                  sql.add('and DA = 1');
                  sql.add('and isnull(Quantidade , 0) - (select isnull(sum(Quantidade), 0) from Adicoes ad where ad.DI in(select pd2.Numero_Declaracao from ProcessosDocumentos pd2 where pd2.Processo_Mestre = pd.Processo)) > 0');
                  //sql.add('and (:pPrazoDA - datediff(day, Data_DesembaracoDeclaracao, getdate())) <= :pPrazoDADias');
                  sql.add('and (:pPrazoDA - datediff(day, Navio_DataChegada, getdate())) <= :pPrazoDADias');
                  sql.add('order by Numero_Declaracao');
                  parambyname('pPrazoDA').AsInteger     := Dados.ConfiguracaoPrazo_NFDA.AsInteger;
                  parambyname('pPrazoDADias').AsInteger := Dados.ConfiguracaoPrazo_NFDADias.AsInteger;
                  //sql.SaveToFile('c:\temp\Checagens_DA.sql');
                  open;
                  if RecordCount > 0 then begin
                     PageControl1.ActivePageIndex := 11;
                     TabSheet12.Caption           := TabSheet12.Caption +'DA ['+ PoeZero(1, RecordCount)+']';
                     lProcesso.Caption            := 'Verificando a data do desembaraço das DA''s...';
                     Progresso.Visible            := true;
                     Progresso.Max                := RecordCount;
                     Progresso.Position           := 0;

                     cMsgDIDA.Lines.Add('');
                     cMsgDIDA.Lines.Add('');
                     cMsgDIDA.Lines.Add('DA''s COM PRAZO VENCENDO OU VENCIDO.');
                     first;
                     while not Eof do begin
                           if not fieldbyname('Desembaraco').IsNull then begin
                              if fieldbyname('Dias').AsInteger > 0 then begin
                                 cMsgDIDA.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+fieldbyname('Processo').asstring+' Vencimento em '+FormatDateTime('dd/mm/yyyy', tCheca.FieldByName('Vencimento').value)+' Vencendo em '+ FieldByName('Dias').Asstring+' dias.');
                              end;
                              if fieldbyname('Dias').AsInteger = 0 then begin
                                 cMsgDIDA.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+fieldbyname('Processo').asstring+' Vencimento em '+tCheca.FieldByName('Vencimento').AsString +' Vencendo hoje');
                              end;
                              if fieldbyname('Dias').AsInteger < 0 then begin
                                 cMsgDIDA.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+fieldbyname('Processo').asstring+' Vencimento em '+FormatDateTime('dd/mm/yyyy', FieldByName('Vencimento').value)+' Vencida á '+inttostr(FieldByName('Dias').asinteger*-1)+' dias.');
                              end;
                           end else begin
                              cMsgDIDA.Lines.Add(Space(4)+'» '+fieldByName('DI').asstring+' de '+fieldByName('Desembaraco').AsString+' Processo: '+fieldbyname('Processo').asstring+' Data do desembaraço não informada.');
                           end;
                           Progresso.Position := Progresso.Position + 1;
                           Application.ProcessMessages;
                           next;
                     end;
                  end;
             end;
          end;
          
          Application.ProcessMessages;
     End;

     //PageControl1.ActivePageIndex := 0;
     lProcesso.Caption  := 'Pronto...';
     Progresso.Position := 0;
     bImprimir.Enabled  := true;
     bSair.Enabled      := true;
     bRefazer.Enabled   := true;

     Screen.Cursor := crDefault;
end;

procedure TChecagem.bImprimirClick(Sender: TObject);
var
  Prn: TextFile;
  i  : word;
  Strings: TStrings;
begin
     Strings := nil;
     if PageControl1.ActivePageIndex =  0 then Strings := cMsgDemurrage.Lines;
     if PageControl1.ActivePageIndex =  1 then Strings := cMsgClientes.Lines;
     if PageControl1.ActivePageIndex =  2 then Strings := cMsgRadar.Lines;
     if PageControl1.ActivePageIndex =  3 then Strings := cMsgVinculacao.Lines;
     if PageControl1.ActivePageIndex =  4 then Strings := cMsgRetorno.Lines;
     if PageControl1.ActivePageIndex =  5 then Strings := cMsgContainer.Lines;
     if PageControl1.ActivePageIndex =  6 then Strings := cMsgArquivos.Lines;
     if PageControl1.ActivePageIndex =  7 then Strings := cMsgEstoque.Lines;
     if PageControl1.ActivePageIndex =  8 then Strings := cMsgClientes.lines;
     if PageControl1.ActivePageIndex =  9 then Strings := cMsgMovimento.Lines;
     if PageControl1.ActivePageIndex = 10 then Strings := cMsgExoneracao.Lines;
     if PageControl1.ActivePageIndex = 11 then Strings := cMsgDIDA.Lines;

     lProcesso.Caption  := 'Imprimindo Erros...';
     Progresso.Position := 0;
     Progresso.max      := Strings.Count -1;

     AssignPrn(Prn);
     Try
        Rewrite(Prn);
        Try
           for i := 0 to Strings.Count -1 do begin
               Writeln(Prn, Strings.Strings[i]);
               Progresso.Position := Progresso.Position + 1;
               Application.ProcessMessages;
           End;
        finally
           CloseFile(Prn);
        end;
     except on EInOutError do
         MessageDlg('Error na impressao de texto.', mtError, [mbOk], 0);
     End;
     lProcesso.Caption  := 'Pronto...';
     Progresso.Position := 0;
end;

procedure TChecagem.bRefazerClick(Sender: TObject);
begin
     FormActivate(Self);
end;


end.
