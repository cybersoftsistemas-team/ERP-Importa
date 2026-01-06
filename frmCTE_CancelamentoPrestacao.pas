unit frmCTE_CancelamentoPrestacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess, RxCtrls, CTe_Util_TLB;

type
  TCTE_CancelamentoPrestacao = class(TForm)
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
    tCTEManifesto_Protocolo: TStringField;
    tCTEManifesto_DataProtocolo: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bExecutarClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTE_CancelamentoPrestacao: TCTE_CancelamentoPrestacao;

implementation

{$R *.dfm}

uses frmDMFiscal, FUNCOES, frmDados, frmMenu_Principal;

procedure TCTE_CancelamentoPrestacao.bPesquisaClick(Sender: TObject);
Var
   mPesquisa: String;
begin
     with dmFiscal do begin
          mPesquisa := InputBox('Pesquisa', 'Nº da Nota:', '');
          if tCTE.Locate('Nota', mPesquisa, [loCaseInsensitive]) = False then begin
             ShowMessage('Nenhum CT-e encontrado com o número informado!');
             Abort;
          end;
     end;
end;

procedure TCTE_CancelamentoPrestacao.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TCTE_CancelamentoPrestacao.bExecutarClick(Sender: TObject);
var
   Util: CTe_Util_Interface;
   msgDados
  ,msgRetWS
  ,msgResultado
  ,nProtocolo
  ,dProtocolo
  ,Evento: widestring;
  cStat: integer;
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
           Evento := Util.EnviaCancPrestDesacordo(fieldbyname('UF_WebServiceCTe').asstring
                                                 ,fieldbyname('Ambiente_CTe').asinteger
                                                 ,fieldbyname('Certificado_Digital').asstring
                                                 ,fieldbyname('CTe_Layout').asstring
                                                 ,msgDados
                                                 ,msgRetWS
                                                 ,cStat
                                                 ,msgResultado
                                                 ,tCTE.fieldbyname('Nfe_cNF').asstring
                                                 ,fieldbyname('CNPJ').asstring
                                                 ,tCTE.fieldbyname('Nfe_Protocolo').asstring
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
         cMsgCTE.Lines.Add('   Protocolo de autorização:'+nProtocolo);

         // Copia o CTE para a tabela de movimento "NotasTerceiros" e Excluir o CT-e da tabela auxiliar.
         with tTemp do begin
              cMsgCTE.Lines.Add('3. Restaurando o CT-e para o banco de dados.');
              sql.clear;
              sql.Add('if object_id(''CTEDesacordo'') is not null');
              sql.Add('   begin');
              sql.Add('       insert into NotasTerceiros      select * from CTEDesacordo      where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('       insert into NotasTerceirosItens select * from CTEDesacordoItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('       update NotasTerceiros set Manifesto_Protocolo     = :pProt');
              sql.Add('                                ,Manifesto_DataProtocolo = :pDtProt');
              sql.Add('                                ,Manifesto_Justificativa = :pJust');
              sql.Add('       where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.Add('   end');
              sql.add('delete from CTEDesacordoItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              sql.add('delete from CTEDesacordo      where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn and Tipo = ''CTE'' ');
              parambyname('pNota').value   := tCTE.fieldbyname('Nota').value;
              parambyname('pData').value   := tCTE.fieldbyname('Data_Emissao').value;
              parambyname('pForn').value   := tCTE.fieldbyname('Cod_Fornecedor').value;
              parambyname('pProt').value   := nProtocolo;
              parambyname('pDtProt').value := strtodatetime(dProtocolo);
              parambyname('pJust').value   := 'Cancelamento de evento de serviço em desacordo em Protocolo: '+tCTE.fieldbyname('Manifesto_Protocolo').asstring+ ' de '+tCTE.fieldbyname('Manifesto_DataProtocolo').asstring;
              //sql.savetofile('c:\temp\Cancelamento_Prestacao_Desacordo.sql');
              execute;
              cMsgCTE.Lines.Add('   CT-e restaurado.');
         end;
      end else begin
         cMsgCTE.Lines.Add('2. Evento não autorizado pela SEFAZ.');
         cMsgCTE.Lines.Add('   Código de rejeição:'+msgResultado);
      end;

      tCTE.Refresh;
      Panel1.Enabled := true;
      Screen.Cursor  := crDefault;
end;

procedure TCTE_CancelamentoPrestacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      FecharTabelas(nil, dmFiscal, nil, nil);
      LimpaMemoria;
      CTE_CancelamentoPrestacao.Release;
      CTE_CancelamentoPrestacao:= nil;
end;

procedure TCTE_CancelamentoPrestacao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then begin
         Image1.Picture.LoadFromFile('Fundo_Barra_Vermelha.bmp');
      end;
end;

procedure TCTE_CancelamentoPrestacao.FormShow(Sender: TObject);
begin
      with tCTE do begin
           sql.clear;
           sql.add('select Nota');
           sql.add('      ,Data_Emissao');
           sql.add('      ,NFe_cNF');
           sql.add('      ,NFe_Protocolo');
           sql.add('      ,Cod_Fornecedor = Fornecedor');
           sql.add('      ,Fornecedor = (select Nome from Fornecedores where Codigo = Fornecedor)');
           sql.add('      ,Manifesto_Protocolo');
           sql.add('      ,Manifesto_DataProtocolo');
           sql.add('from CTEDesacordo');
           sql.add('order by Data_Emissao, Nota');
           open;
      end;
      with Dados.Empresas do begin
           sql.clear;
           sql.add('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
           open;
      end;
end;



end.
