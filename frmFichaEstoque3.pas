unit frmFichaEstoque3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, Math, Grids, DBCtrls, system.UITypes, MemDS, Vcl.WinXCtrls;

type
  TFichaEstoque3 = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    Image2: TImage;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    bExecutar: TButton;
    cDescricao: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FichaEstoque3: TFichaEstoque3;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Comunicacao;

{$R *.dfm}

procedure TFichaEstoque3.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFichaEstoque3.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TFichaEstoque3.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     FichaEstoque3.Release;
     FichaEstoque3 := nil;
end;

procedure TFichaEstoque3.bExecutarClick(Sender: TObject);
begin
     if MessageDlg('ATENÇÃO!'+#13+#13+'Esta rotina pode demorar um pouco para processar.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbyes, mbno], 0) = mrno then Abort;
      
     Screen.Cursor := crHourGlass;
     Janela_Comunicacao := TJanela_Comunicacao.Create(Self);
     Janela_Comunicacao.lMesagem1.Caption := 'Processando Fichas..Aguarde por favor';
     Janela_Comunicacao.lTempo.Caption    := '...Processando Ficha de Estoque';
     Janela_Comunicacao.lTempo.Visible    := true;
     Janela_Comunicacao.bCancelar.Visible := false;
     Janela_Comunicacao.Show;
     Application.ProcessMessages;

     ProcessaEstoque(0, iif(cDescricao.ItemIndex = 0, 'NF', 'PD'));
     Janela_Comunicacao.lTempo.Caption := 'Ficha de Estoque [OK]'+#13+
                                           '...Processando Ficha de Inventario';
     ProcessaInventario(0, iif(cDescricao.ItemIndex = 0, 'NF', 'PD'));
     Janela_Comunicacao.lTempo.Caption := 'Ficha de Estoque [OK]'+#13+
                                           'Ficha de Inventario [OK]';
     Application.ProcessMessages;
     sleep(2000);
     Janela_Comunicacao.Close;
     Showmessage('Processamento da Ficha de Estoque/Inventario terminado.');
end;

end.
