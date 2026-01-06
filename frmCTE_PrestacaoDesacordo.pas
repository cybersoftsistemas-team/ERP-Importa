unit frmCTE_PrestacaoDesacordo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess, RxCtrls, DateUtils, XSBuiltIns;

type
  TCTE_PrestacaoDesacordo = class(TForm)
    tCTE: TMSQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    dstCTE: TDataSource;
    Grade: TDBGrid;
    cMsgCTE: TMemo;
    Panel1: TPanel;
    bSair: TButton;
    bPesquisa: TButton;
    bExecutar: TButton;
    Image1: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    tCTENfe_Protocolo: TStringField;
    tTemp: TMSQuery;
    tCTECod_Fornecedor: TSmallintField;
    cDescricao: TMemo;
    Label1: TLabel;
    StaticText140: TStaticText;
    cUF: TDBComboBox;
    tCTEEstado: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bExecutarClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTE_PrestacaoDesacordo: TCTE_PrestacaoDesacordo;

implementation

{$R *.dfm}

uses CTe_Util_TLB, frmDMFiscal, FUNCOES, frmDados, frmMenu_Principal;

procedure TCTE_PrestacaoDesacordo.bPesquisaClick(Sender: TObject);
Var
   mPesquisa: String;
begin
     with dmFiscal do begin
          mPesquisa := InputBox('Pesquisa', 'Nº da Nota:', '');
          if tCTE.Locate('Nota', mPesquisa, [loCaseInsensitive]) = False then begin
             ShowMessage('Nenhuma CT-e encontrado com o número informado!');
             Abort;
          end;
     end;
end;

procedure TCTE_PrestacaoDesacordo.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TCTE_PrestacaoDesacordo.bExecutarClick(Sender: TObject);
var
   Util: CTe_Util_Interface;
   msgDados
  ,msgRetWS
  ,msgResultado
  ,nProtocolo
  ,dProtocolo
  ,Evento
  ,mPasta: widestring;

   cStat: integer;
  XML: TMemo;
begin
      if not Internet then begin
         MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
         Abort;
      end;
      if Grade.SelectedRows.Count <= 0 then begin
         MessageDlg('Erro!'+#13+#13+'Nenhuma CT-e selecionado para cancelar.', mtError, [mbOK], 0);
         Grade.SetFocus;
         Abort;
      end;
      if (Length(trim(cDescricao.Text)) < 15) or (Length(trim(cDescricao.Text)) > 255) then begin
         MessageDlg('Erro!'+#13+#13+'Mínimo de 15 e máximo de 255 caracteres são necessários para a descrição do evento!', mtError, [mbOK], 0);
         cDescricao.SetFocus;
         Abort;
      end;

      Screen.Cursor  := crHourGlass;
      cMsgCTE.clear;
      Panel1.Enabled := false;

      cMsgCTE.Clear;
      cMsgCTE.Lines.Add('Comunicando-se com o servidor da SEFAZ...Aguarde.');
      cMsgCTE.Lines.Add('');
      cMsgCTE.Lines.Add('1. Enviando solicitação.');

      Application.ProcessMessages;

      Util := CoUtil.Create;
      with Dados, Empresas do begin
           Evento := Util.EnviaPrestDesacordo(fieldbyname('UF_WebServiceCTe').asstring
                                             ,fieldbyname('Ambiente_CTe').asinteger
                                             ,fieldbyname('Certificado_Digital').asstring
                                             ,fieldbyname('CTe_Layout').asstring
                                             ,msgDados
                                             ,msgRetWS
                                             ,cStat
                                             ,msgResultado
                                             ,tCTE.fieldbyname('Nfe_cNF').asstring
                                             ,fieldbyname('CNPJ').asstring
                                             ,RemoveCaracterXML(cDescricao.text)
                                             ,''                                             // dhEvento.
                                             ,nProtocolo
                                             ,dProtocolo
                                             ,''                                             // proxy.
                                             ,''                                             // usuario.
                                             ,''                                             // senha.
                                             ,fieldbyname('Licensa_CTE_Util').asstring);
      end;

      // 135 - Evento registrado.
      if cStat = 135 then begin
         cMsgCTE.Lines.Add(' ');
         cMsgCTE.Lines.Add('2. Evento autorizado pela SEFAZ.');
         cMsgCTE.Lines.Add('   Protocolo de autorização:'+nProtocolo + '  '+dProtocolo);

         // Copia o CTE para a tabela auxilia "CTEDesacordo" e Excluir o CT-e do movimento.
         with tTemp do begin
              cMsgCTE.Lines.Add('3. Excluindo CT-e do banco de dados.');
              sql.clear;
              sql.Add('if object_id(''CTEDesacordo'') is null');
              sql.Add('   begin');
              sql.Add('       select * into CTEDesacordo      from NotasTerceiros      where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('       select * into CTEDesacordoItens from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('       update CTEDesacordo set Manifesto_Protocolo     = :pProt');
              sql.Add('                              ,Manifesto_DataProtocolo = :pDataProt');
              sql.Add('                              ,Manifesto_Justificativa = :pDesc');
              sql.Add('       where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('   end else begin');
              sql.Add('       insert into CTEDesacordo      select * from NotasTerceiros      where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('       insert into CTEDesacordoItens select * from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('       update CTEDesacordo set Manifesto_Protocolo     = :pProt');
              sql.Add('                              ,Manifesto_DataProtocolo = :pDtProt');
              sql.Add('                              ,Manifesto_Justificativa = :pDesc');
              sql.Add('       where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('   end');
              sql.add('delete from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.add('delete from NotasTerceiros      where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              parambyname('pNota').value   := tCTE.fieldbyname('Nota').value;
              parambyname('pData').value   := tCTE.fieldbyname('Data_Emissao').value;
              parambyname('pForn').value   := tCTE.fieldbyname('Cod_Fornecedor').value;
              parambyname('pProt').value   := nProtocolo;
              parambyname('pDtProt').value := xmltimetodatetime(dProtocolo);
              parambyname('pDesc').value   := trim(copy(cDescricao.Text, 1, 255));
              //sql.savetofile('c:\temp\Prestacao_Desacordo.sql');
              execute;
              cMsgCTE.Lines.Add('   CT-e excluido.');
         end;
         XML := TMemo.Create(self);
         with xml do begin
              visible := false;
              parent  := CTE_PrestacaoDesacordo;
              lines.Clear;
              lines.Add(msgDados);

              with Dados, Configuracao do begin
                   Configuracao.open;
                   mPasta := Trim(ConfiguracaoPasta_NFE.Value)+ '\'+Trim(stringreplace(EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
                   if Dados.EmpresasMatriz_Filial.AsBoolean = true then
                      mPasta := mPasta + '_Matriz'
                   else
                      mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);
              end;
              if not DirectoryExists(mPasta) then ForceDirectories(mPasta);
              lines.SaveToFile(mPasta+'\CTe_Desacordo_'+tCTE.FieldByName('NFe_cNF').AsString+'.xml');
         end;
         XML.Free;
      end else begin
         cMsgCTE.Lines.Add('2. Evento não autorizado pela SEFAZ.');
         cMsgCTE.Lines.Add('   Código de rejeição:'+msgResultado);
      end;

      tCTE.Refresh;
      Panel1.Enabled := true;
      Screen.Cursor  := crDefault;
end;

procedure TCTE_PrestacaoDesacordo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      FecharTabelas(nil, dmFiscal, nil, nil);
      LimpaMemoria;
      CTE_PrestacaoDesacordo.Release;
      CTE_PrestacaoDesacordo := nil;
end;

procedure TCTE_PrestacaoDesacordo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then begin
         Image1.Picture.LoadFromFile('fundo_barra.bmp');
      end;
end;

procedure TCTE_PrestacaoDesacordo.FormShow(Sender: TObject);
begin
      with tCTE do begin
           sql.clear;
           sql.add('select Nota');
           sql.add('      ,Data_Emissao');
           sql.add('      ,NFe_cNF');
           sql.add('      ,NFe_Protocolo');
           sql.add('      ,Cod_Fornecedor = Fornecedor');
           sql.add('      ,Fornecedor = (select Nome from Fornecedores where Codigo = Fornecedor)');
           sql.add('      ,Estado');
           sql.add('from NotasTerceiros');
           sql.add('where Modelo IN(''57'') ');
           sql.add('order by Data_Emissao, Nota');
           open;
      end;
      cUF.Text := tCTE.FieldByName('Estado').AsString;
      with Dados.Empresas do begin
           sql.clear;
           sql.add('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
           open;
      end;
end;

procedure TCTE_PrestacaoDesacordo.GradeCellClick(Column: TColumn);
begin
     cUF.Text := tCTE.FieldByName('Estado').AsString;
end;

end.
