unit frmCadastro_NCMProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, DBGrids, Funcoes,
  Grids, Data.DB;

type
  TCadastro_NCMProdutos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Button1: TButton;
    Grade: TDBGrid;
    bSelecionar: TButton;
    procedure Button1Click(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_NCMProdutos: TCadastro_NCMProdutos;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TCadastro_NCMProdutos.Button1Click(Sender: TObject);
begin
     // Atualiza as alíquotas de de Redução do ICMS no cadastro de Produtos.
     with Dados, dmFiscal do begin
          Produtos.SQL.Clear;
          Produtos.SQl.Add('UPDATE Produtos SET ICMS_Reducao     = :pReducao,');
          Produtos.SQl.Add('                    Custo_Seletivo   = :pSeletivo,');
          Produtos.SQl.Add('                    COFINS_Nota      = :pCOFINS,');
          Produtos.SQl.Add('                    Aliquota_IPI     = :pIPI,');
          Produtos.SQl.Add('                    PIS_Nota         = :pPIS,');
          Produtos.SQl.Add('                    COFINS_NotaSaida = :pCOFINSSaida,');
          Produtos.SQl.Add('                    PIS_NotaSaida    = :pPISSaida,');
          Produtos.SQl.Add('                    Aliquota_PIS     = :pAliquotaPIS,');
          Produtos.SQl.Add('                    Aliquota_COFINS  = :pAliquotaCOFINS,');
          Produtos.SQl.Add('                    Reducao_PIS      = :pPISReducao,');
          Produtos.SQl.Add('                    Reducao_COFINS   = :pCOFINSReducao,');
          Produtos.SQl.Add('                    FCP              = :pFCP');
          Produtos.SQl.Add('WHERE(NCM = :pNCM)');
          Produtos.ParamByName('pReducao').AsFloat      := NCMICMS_Reducao.AsFloat;
          Produtos.ParamByName('pSeletivo').AsBoolean   := NCMCusto_Seletivo.AsBoolean;
          Produtos.ParamByName('pNCM').AsString         := NCMNCM.AsString;
          Produtos.ParamByName('pPIS').Value            := NCMPIS_Nota.Value;
          Produtos.ParamByName('pIPI').Value            := NCMIPI.Value;
          Produtos.ParamByName('pCOFINS').Value         := NCMCOFINS_Nota.Value;
          Produtos.ParamByName('pPISSaida').Value       := NCMPIS_NotaSaida.Value;
          Produtos.ParamByName('pCOFINSSaida').Value    := NCMCOFINS_NotaSaida.Value;
          Produtos.ParamByName('pAliquotaPIS').Value    := NCMPIS.Value;
          Produtos.ParamByName('pAliquotaCOFINS').Value := NCMCOFINS.Value;
          Produtos.ParamByName('pPISReducao').Value     := NCMPIS_Reducao.Value;
          Produtos.ParamByName('pCOFINSReducao').Value  := NCMCOFINS_Reducao.Value;
          Produtos.ParamByName('pFCP').Value            := NCMFCP.Value;
          Produtos.Execute;
          Produtos.SQL.Clear;
          Produtos.SQl.Add('SELECT * FROM Produtos WHERE(NCM = :pNCM)');
          Produtos.ParamByName('pNCM').AsString := NCMNCM.AsString;
     end;
end;

procedure TCadastro_NCMProdutos.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_NCMProdutos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Cadastro_NCMProdutos.Release;
      Cadastro_NCMProdutos := nil;
end;

procedure TCadastro_NCMProdutos.FormShow(Sender: TObject);
begin
     with dados do begin
          TiposProcesso.SQL.Clear;
          TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
          TiposProcesso.Open;
     end;
end;

procedure TCadastro_NCMProdutos.bSelecionarClick(Sender: TObject);
begin
      with dados do begin
           if bSelecionar.Caption = '&Selecionar Todos' then begin
              bSelecionar.Caption := '&Desmarcar Todos';
              TiposProcesso.First;
              //Grade.
              while not TiposProcesso.Eof do begin
                    Grade.SelectedRows.CurrentRowSelected := True;
                    TiposProcesso.Next;
              end;
            end else begin
              bSelecionar.Caption := '&Selecionar Todos';
              Grade.SelectedRows.Clear;
            end;
      end;
end;



end.
