unit frmPedido_Excluir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DB, system.UITypes, DBAccess, MSAccess, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TPedido_Excluir = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    bExec: TButton;
    tPedidos: TMSQuery;
    cEntradas: TCheckBox;
    lNome: TStaticText;
    cIni: TCurrencyEdit;
    StaticText1: TStaticText;
    cFim: TCurrencyEdit;
    cSaidas: TCheckBox;
    cTodos: TCheckBox;
    cPrim: TCurrencyEdit;
    cUlt: TCurrencyEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    Bevel1: TBevel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bExecClick(Sender: TObject);
    procedure cTodosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cEntradasClick(Sender: TObject);
    procedure cSaidasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_Excluir: TPedido_Excluir;

implementation

uses frmDados;

{$R *.dfm}

procedure TPedido_Excluir.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TPedido_Excluir.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Pedido_Excluir.Release;
      Pedido_Excluir := nil;
end;

procedure TPedido_Excluir.bExecClick(Sender: TObject);
begin
      If MessageDlg('Atenção!'+#13+#13+'Isto ira excluir todos os pedidos do intervalo informado.'+#13+#13+'Deseja realmente excluir?', mtWarning, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados do begin
           // Disponibiliza os itens das ADIÇÕES em caso de pedidos de entrada.
           tPedidos.SQL.Clear;
           if cEntradas.Checked then begin
              tPedidos.SQL.Add('UPDATE Adicoes SET Lancado_Entrada = Lancado_Entrada +');
              tPedidos.SQL.Add('                                     (SELECT SUM(Quantidade)');
              tPedidos.SQL.Add('                                      FROM   PedidosItens PI');
              tPedidos.SQL.Add('                                      WHERE (PI.Saida_Entrada = 0)');
              tPedidos.SQL.Add('                                        AND (PI.DI = Adicoes.DI)');
              tPedidos.SQL.Add('                                        AND (PI.Codigo_Mercadoria = Adicoes.Codigo_Mercadoria)');
              tPedidos.SQL.Add('                                        AND (PI.Sequencia_SISCOMEX = Adicoes.Sequencia_SISCOMEX)');
              tPedidos.SQL.Add('                                        AND (PI.Pedido BETWEEN :pIni AND :pFim)');
              tPedidos.SQL.Add('                                     )');
              tPedidos.SQL.Add('WHERE DI IN( SELECT DISTINCT DI FROM PedidosItens PI2 WHERE PI2.Saida_Entrada = 0 AND PI2.Pedido BETWEEN :pIni AND :pFIm AND ISNULL(PI2.DI, '''') <> '''' ) ');
           end;
           // Disponibiliza os itens das ADIÇÕES em caso de pedidos de saida.
           if cSaidas.Checked then begin
              tPedidos.SQL.Add('UPDATE Adicoes SET Lancado_Entrada = Lancado_Saida +');
              tPedidos.SQL.Add('                                     (SELECT SUM(Quantidade)');
              tPedidos.SQL.Add('                                      FROM   PedidosItens PI');
              tPedidos.SQL.Add('                                      WHERE (PI.Saida_Entrada = 1)');
              tPedidos.SQL.Add('                                        AND (PI.DI = Adicoes.DI)');
              tPedidos.SQL.Add('                                        AND (PI.Codigo_Mercadoria = Adicoes.Codigo_Mercadoria)');
              tPedidos.SQL.Add('                                        AND (PI.Sequencia_SISCOMEX = Adicoes.Sequencia_SISCOMEX)');
              tPedidos.SQL.Add('                                        AND (PI.Pedido BETWEEN :pIni AND :pFim)');
              tPedidos.SQL.Add('                                     )');
              tPedidos.SQL.Add('WHERE DI IN( SELECT DISTINCT DI FROM PedidosItens PI2 WHERE PI2.Saida_Entrada = 1 AND PI2.Pedido BETWEEN :pIni AND :pFIm AND ISNULL(PI2.DI, '''') <> '''' ) ');
           end;
           tPedidos.ParamByName('pIni').AsInteger  := cIni.AsInteger;
           tPedidos.ParamByName('pFim').AsInteger  := cFim.AsInteger;
           //tPedidos.SQL.SaveToFile('c:\temp\Exclusao_Pedidos_Ajusta_Adicao.sql');
           tPedidos.Execute;

           // Disponibiliza o pedido do representante.
           tPedidos.SQL.Clear;
           tPedidos.SQL.Add('UPDATE PedidosRepresentantes SET Situacao     = ''LIBERADO'',');
           tPedidos.SQL.Add('                                 Gerar_Pedido = 0');
           tPedidos.SQL.Add('WHERE ISNULL(Faturado, 0) = 0 AND Pedido IN(SELECT Pedido_Representante FROM Pedidos WHERE Numero BETWEEN :pIni AND :pFim)');
           tPedidos.SQL.Add('');

           // Delete os pedidos de todas as tabelas.
           tPedidos.SQL.Add('DELETE FROM PedidosRepresentantesItens     WHERE Pedido IN(SELECT Pedido_Representante+''-B'' FROM Pedidos WHERE Numero BETWEEN :pIni AND :pFim)');
           tPedidos.SQL.Add('');
           tPedidos.SQL.Add('DELETE FROM PedidosRepresentantesItensTemp WHERE Pedido IN(SELECT Pedido_Representante+''-B'' FROM Pedidos WHERE Numero BETWEEN :pIni AND :pFim)');
           tPedidos.SQL.Add('');
           tPedidos.SQL.Add('DELETE FROM PedidosFatura                  WHERE Pedido IN(SELECT Pedido FROM Pedidos WHERE Numero BETWEEN :pIni AND :pFim) AND (Origem_Pedido = 1)');
           tPedidos.SQL.Add('');

           tPedidos.SQL.Add('DELETE FROM Pedidos                        WHERE Numero BETWEEN :pIni AND :pFim');
           if (not cEntradas.Checked) or (not cSaidas.Checked) then begin
              if cEntradas.Checked then
                 tPedidos.SQL.Add('                                           AND   Saida_Entrada = 0');
              if cSaidas.Checked then
                 tPedidos.SQL.Add('                                           AND   Saida_Entrada = 1');
              tPedidos.SQL.Add('');
           end;

           tPedidos.SQL.Add('DELETE FROM PedidosItens                   WHERE Pedido BETWEEN :pIni AND :pFim');
           if (not cEntradas.Checked) or (not cSaidas.Checked) then begin
              if cEntradas.Checked then
                 tPedidos.SQL.Add('                                           AND   Saida_Entrada = 0');
              if cSaidas.Checked then
                 tPedidos.SQL.Add('                                           AND   Saida_Entrada = 1');
           end;
           tPedidos.SQL.Add('');
           tPedidos.ParamByName('pIni').AsInteger  := cIni.AsInteger;
           tPedidos.ParamByName('pFim').AsInteger  := cFim.AsInteger;
           //tPedidos.SQL.SaveToFile('c:\temp\Exclusao_Pedidos.sql');
           tPedidos.Execute;
      End;

      Showmessage('Pedidos excluídos do banco de dados com sucesso!');
end;

procedure TPedido_Excluir.cTodosClick(Sender: TObject);
begin
       cIni.Enabled := not cTodos.Checked;
       cFim.Enabled := not cTodos.Checked;
       if cTodos.Checked then begin
          cIni.Value  := tPedidos.FieldByName('Ini').AsInteger;
          cFim.Value  := tPedidos.FieldByName('Fim').AsInteger;
       end else begin
          cIni.Value  := 0;
          cFim.Value  := 0;
       end;
end;

procedure TPedido_Excluir.FormShow(Sender: TObject);
begin
       tPedidos.SQL.Clear;
       tPedidos.SQL.Add('SELECT MIN(Numero) AS Ini, MAX(Numero) AS Fim FROM Pedidos');
       tPedidos.Open;

       cPrim.Value := tPedidos.FieldByName('Ini').AsInteger;
       cUlt.Value  := tPedidos.FieldByName('Fim').AsInteger;
end;

procedure TPedido_Excluir.cEntradasClick(Sender: TObject);
begin
      bExec.Enabled := cEntradas.Checked or cSaidas.Checked;
end;

procedure TPedido_Excluir.cSaidasClick(Sender: TObject);
begin
      bExec.Enabled := cEntradas.Checked or cSaidas.Checked;
end;

end.
