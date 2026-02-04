unit frmPedido_NFS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  RxDBCtrl, Vcl.StdCtrls, Vcl.DBCtrls, RxLookup, RxToolEdit, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, RxCtrls, MemDS, DBAccess, MSAccess;

type
  TPedido_NFS = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    bItens: TButton;
    bDuplicatas: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    GradeItens: TDBGrid;
    Image6: TImage;
    Image5: TImage;
    Image4: TImage;
    Image3: TImage;
    Label4: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    cValorISS: TDBText;
    Label1: TLabel;
    Label5: TLabel;
    cTotalLiquido: TDBText;
    bPesqFor: TSpeedButton;
    DBText2: TDBText;
    cCliente: TDBLookupComboBox;
    cPedido: TDBEdit;
    lNome: TStaticText;
    lNota: TStaticText;
    DBMemo1: TDBMemo;
    StaticText24: TStaticText;
    StaticText7: TStaticText;
    cCentroCusto: TDBLookupComboBox;
    lCentroCusto: TStaticText;
    StaticText3: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    StaticText12: TStaticText;
    cClass: TDBLookupComboBox;
    cReferencia: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    TabSheet2: TTabSheet;
    Grade: TDBGrid;
    ttmp: TMSQuery;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cClienteExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cPedidoChange(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure cReferenciaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_NFS: TPedido_NFS;

implementation

{$R *.dfm}

uses FUNCOES, frmDados, frmMenu_Principal, frmPedido_NFSItens, frmPedido_NFSVinculo;

procedure TPedido_NFS.bItensClick(Sender: TObject);
begin
     if Dados.PedidoServicoItens.recordcount = 0 then begin
        Pedido_NFSVinculo := TPedido_NFSVinculo.create(self);
        Pedido_NFSVinculo.caption := caption;
        Pedido_NFSVinculo.showmodal;
     end;
     if Tag = 0 then begin
        Pedido_NFSItens := TPedido_NFSItens.create(self);
        Pedido_NFSItens.caption := caption;
        Pedido_NFSItens.showmodal;
     end;
end;

procedure TPedido_NFS.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_NFS.cClienteExit(Sender: TObject);
begin
     with Dados do begin
          if (PedidoServico.State = dsInsert) and (trim(PedidoServicoNatureza_Operacao.Value) = '') then begin
             if ClientesEstado.Value <> EmpresasEstado.Value then begin
                PedidoServicoNatureza_Operacao.Value := ReferenciasFiscaisNatureza_Fora.Value
             end else begin
                PedidoServicoNatureza_Operacao.Value := ReferenciasFiscaisNatureza_Dentro.Value;
             end;
             PedidoServicoServico.Value := ReferenciasFiscaisServico.Value;
          end;
     end;
end;

procedure TPedido_NFS.cPedidoChange(Sender: TObject);
begin
     with Dados, PedidoServicoItens do begin
          sql.clear;
          sql.add('select * from PedidosServicoItens where Pedido = :pPed');
          parambyName('pPed').AsInteger := PedidoServicoNumero.asinteger;
          open;
     end;
end;

procedure TPedido_NFS.cReferenciaExit(Sender: TObject);
begin
     with Dados, PedidoServico do begin
          fieldbyname('Aliquota_ISS').value := Dados.ReferenciasFiscaisAliquota_ISS.AsFloat;
          fieldbyname('Aliquota_ISS').value := Dados.ReferenciasFiscaisAliquota_ISS.AsFloat;
     end;
end;

procedure TPedido_NFS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     Pedido_NFS.Release;
     Pedido_NFS := nil;
end;

procedure TPedido_NFS.FormCreate(Sender: TObject);
begin
      PageControl1.ActivePageIndex := 0;
      if FileExists('Fundo_Barra_Roxo.bmp') then Image1.Picture.LoadFromFile('Fundo_Barra_Roxo.bmp');
      if FileExists('Fundo_Barra.bmp') then Image3.Picture.LoadFromFile('Fundo_Barra.bmp');
      if FileExists('Fundo_Barra.bmp') then Image4.Picture.LoadFromFile('Fundo_Barra.bmp');
      if FileExists('Fundo_Barra.bmp') then Image5.Picture.LoadFromFile('Fundo_Barra.bmp');
      if FileExists('Fundo_Barra.bmp') then Image6.Picture.LoadFromFile('Fundo_Barra.bmp');
end;

procedure TPedido_NFS.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With Dados do Begin
          with Empresas do begin
               sql.clear;
               sql.Add('select * from Empresas where Codigo = :pEmpresa');
               parambyname('pEmpresa').asinteger := Menu_Principal.mEmpresa;
               open;
          end;
          with PedidoServico do begin
               sql.clear;
               sql.add('select * from PedidosServico');
               open;
               Navega.Controls[6].Enabled := recordcount > 0;
          end;
          with Servicos do begin
               sql.Clear;
               sql.Add('select * from Servicos where Ativo = 1 order by Descricao,Codigo');
               open;
          end;
          {
          with Impostos do begin 
               sql.clear;
               sql.add('select * from Impostos order by Descricao');
               open;
          end;
          }
          with Clientes do begin 
               sql.clear;
               sql.Add('select * from Clientes where Ativo = 1 order by Nome');
               open;
          end;
          with Natureza do begin
               sql.Clear;
               sql.Add('select * from Natureza where Ativo = 1 and Servico = 1 order by Descricao_NF');
               open;
          end;
          {
          with ClassificacaoFinanceira do begin
               sql.Clear;
               sql.add('select * from ClassificacaoFinanceira where Desativada <> 1');
               open;
          end;
          with TiposDocumentos do begin 
               sql.clear;
               sql.add('select * from TiposDocumentos where Sintegra = 1');
               open;
          end;
          }
          with ReferenciasFiscais do begin 
               sql.Clear;
               sql.Add('select *');
               sql.Add('from ReferenciasFiscais');
               sql.Add('where Ativo = 1');
               sql.add('and Servico is not null');
               sql.add('and ((select Saida_Entrada from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Dentro) = 1');
               sql.add('     or(select Saida_Entrada from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Fora) = 1)');
               sql.Add('order by Descricao');
               open;
          end;
          with CentroCusto do begin 
               sql.clear;
               sql.Add('select * from CentroCusto order by Codigo');
               open;
          end;
          with ServicosClass do begin 
               sql.Clear;
               sql.Add('select * from ServicosClass order by Descricao');
               open;
          end;
     end;
     Screen.Cursor := crDefault;
end;

procedure TPedido_NFS.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with Dados, PedidoServico do begin
          if Button = nbPost then begin
             if PedidoServicoReferencia_Fiscal.Value = 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a referência fiscal.', mtError, [mbOK], 0);
                cReferencia.SetFocus;
                Abort;
             end;
             if PedidoServicoCliente.Value = 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o fornecedor.', mtError, [mbOK], 0);
                cCliente.SetFocus;
                Abort;
             end;
             if PedidoServicoNatureza_Operacao.Value = '' then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a natureza da operação.'+#13+#13+'Falta informar a natureza da operação no cadastro das referências fiscais.', mtError, [mbOK], 0);
                cReferencia.SetFocus;
                Abort;
             end;
             if Trim(ReferenciasFiscaisServico.Value) = '' then begin
                MessageDlg('Erro na referência fiscal!'+#13+#13+'Deve ser informado o "Serviço" na "Referência Fiscal" informada.', mtError, [mbOK], 0);
                cReferencia.SetFocus;
                Abort;
             end;
             if State = dsInsert then begin
                with ttmp do begin
                     sql.Clear;
                     sql.Add('select isnull(max(Numero), 0)+1 as Pedido from PedidosServico');
                     open;
                     PedidoServico.FieldByName('NUmero').value := fieldbyname('Pedido').AsInteger;
                end;
             end;
          end;
          if Button = nbDelete then begin
             if MessageDlg('Deseja realmente excluir este Pedido?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                Abort;
             end else begin
                with ttmp do begin
                     sql.clear;
                     sql.Add('delete from PedidosServicoItens where Pedido = :pPed');
                     parambyname('pPed').AsInteger := PedidoServico.fieldbyname('Numero').AsInteger;
                     execute;
                end;
             end;
          end;
     end;
end;

procedure TPedido_NFS.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
  i: Integer;
begin
      Screen.Cursor     := crSQLWait;
      TabSheet1.Enabled := Button in[nbEdit, nbInsert];
      with Dados do begin
           if Button in[nbEdit, nbInsert] then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              PedidoServico.FieldByName('Retencao_ISS').Value := false;
              if ReferenciasFiscais.recordcount = 1 then PedidoServico.FieldByName('Referencia_Fiscal').Value := ReferenciasFiscais.FieldByName('Codigo').Value;
              PageControl1.ActivePageIndex := 0; 
              cReferencia.SetFocus;
           end;
      end;
      Screen.Cursor := crDefault;
end;



end.
