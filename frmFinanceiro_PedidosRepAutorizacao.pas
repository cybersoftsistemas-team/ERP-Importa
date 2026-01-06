unit frmFinanceiro_PedidosRepAutorizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, RxToolEdit, RxCurrEdit, Vcl.Mask, RxCtrls, MemDS, DBAccess, MSAccess, system.UITypes, Vcl.Buttons;

type
  TFinanceiro_PedidosRepAutorizacao = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel2: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bLiberar: TButton;
    bCancelar: TButton;
    bSelTodos: TButton;
    bSelNenhum: TButton;
    Grade: TDBGrid;
    tPedidos: TMSQuery;
    dstPedidos: TDataSource;
    tPedidosPedido: TStringField;
    tPedidosData: TWideStringField;
    tPedidosOrigem_Pedido: TStringField;
    tPedidosRepresentante: TSmallintField;
    tPedidosRepresentant_Nome: TStringField;
    tPedidosCliente: TSmallintField;
    tPedidosCliente_Nome: TStringField;
    tPedidosLimite_Cliente: TCurrencyField;
    tPedidosLimite_Utilizado: TCurrencyField;
    tPedidosTotal_Pedido: TCurrencyField;
    tPedidosLimite_Saldo: TCurrencyField;
    cOrigem: TRadioGroup;
    StatusBar1: TStatusBar;
    tTmp: TMSQuery;
    cPedido: TEdit;
    Label2: TLabel;
    bPesquisa: TSpeedButton;
    tPedidosQuantidade: TFloatField;
    bDesaut: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cOrigemClick(Sender: TObject);
    procedure GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeCellClick(Column: TColumn);
    procedure bSelTodosClick(Sender: TObject);
    procedure bSelNenhumClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure GradeTitleClick(Column: TColumn);
    procedure bLiberarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bDesautClick(Sender: TObject);
  private
    procedure FiltraPedidos(ordem: string);
    procedure Seleciona(pSel: boolean);
    function PegaSel(pGrade: TDBGrid): string;
    { Private declarations }
  public
    { Public declarations }
    mSel: boolean;
    mCont
   ,mContFinal: integer;
   mDirecao: string;
  end;

var
  Financeiro_PedidosRepAutorizacao: TFinanceiro_PedidosRepAutorizacao;

implementation

{$R *.dfm}

uses frmMenu_Principal, frmDados, FUNCOES;

procedure TFinanceiro_PedidosRepAutorizacao.bCancelarClick(Sender: TObject);
begin
     If tPedidos.FieldByName('Cancelado').AsBoolean = false then begin
        If MessageDlg('Deseja realmente cancelar este pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
           Abort;
        End;
     end else begin
        If MessageDlg('Deseja realmente revalidar este pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
           Abort;
        End;
     End;

     with tTmp do begin
          SQL.Clear;
          SQL.Add('update PedidosRepresentantes set Cancelado = case when Cancelado = 0 then 1 else 0 end');
          SQL.Add('                                ,Situacao  = case when Cancelado = 0 then ''CANCELADO'' else ''AGUARDANDO'' end');
          SQL.Add('                                ,Sel       = 0');
          SQL.Add('where Pedido = :pPedido');
          ParamByName('pPedido').AsString := tPedidos.FieldByName('Pedido').AsString;
          Execute;
     end;
     tPedidos.Refresh;
end;

procedure TFinanceiro_PedidosRepAutorizacao.bDesautClick(Sender: TObject);
begin
      if Grade.SelectedRows.Count = 0 then begin
         messagedlg('Nenhum pedido selecionado para voltar para o televendas!', mtinformation, [mbok], 0);
         Abort;
      end;
      if messagedlg('Deseja realmente voltar os pedidos selecionados para o televendas?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
         Abort;
      end;
      screen.Cursor := crSQLWait;
      with tTmp do begin
           sql.Clear;
           sql.Add('update PedidosRepresentantes set Sel = 0');
           sql.Add('                                ,Usuario = '+quotedstr(Menu_Principal.mUsuarioCodigo));
           sql.Add('                                ,Autorizado = 0');
           sql.Add('                                ,Data_Autorizacao = null');
           sql.Add('                                ,Situacao_Televendas = ''AGUARDANDO'' ');
           sql.Add('where Pedido in ('+PegaSel(Grade)+')');
           sql.Add('and isnull(Local, 0) = 0');
//           sql.Add('and isnull(Autorizado,0) = 1');
           execute;
      end;
      tPedidos.Refresh;
      screen.Cursor := crDefault;
end;

procedure TFinanceiro_PedidosRepAutorizacao.bLiberarClick(Sender: TObject);
begin
      if Grade.SelectedRows.Count = 0 then begin
         messagedlg('Nenhum pedido selecionado para autorizar!', mtinformation, [mbok], 0);
         Abort;
      end;
      if messagedlg('Deseja realmente autorizar os pedidos selecionados?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
         Abort;
      end;
      screen.Cursor := crSQLWait;
      with tTmp do begin
           sql.Clear;
           sql.Add('update PedidosRepresentantes set Sel              = 0');
           sql.Add('                                ,Usuario          = '+quotedstr(Menu_Principal.mUsuarioCodigo));
           sql.Add('                                ,Autorizado       = 1');
           sql.Add('                                ,Data_Autorizacao = getdate()');
           sql.Add('where Pedido in ('+PegaSel(Grade)+')');
           sql.Add('and isnull(Local, 0) = 0');
           sql.Add('and isnull(Autorizado,0) = 0');
           execute;
      end;
      tPedidos.Refresh;
      screen.Cursor := crDefault;
end;

procedure TFinanceiro_PedidosRepAutorizacao.bPesquisaClick(Sender: TObject);
begin
      with tTmp do begin
           sql.clear;
           sql.add('select Pedido');
           sql.Add('from   PedidosRepresentantes');
           sql.Add('where  isnull(Autorizado, 0) = 0');
           sql.Add('and    Pedido like '+quotedstr('%'+cPedido.Text+'%'));
           open;
           if recordcount = 0 then begin
              messagedlg('Nenhum pedido encontrado com o número informado!', mtinformation, [mbok], 0);
           end;
           tPedidos.Locate('Pedido', fieldbyname('Pedido').asstring, []);
      end;
end;

procedure TFinanceiro_PedidosRepAutorizacao.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TFinanceiro_PedidosRepAutorizacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Menu_Principal.TimerECommerce.Enabled := true;
      FecharTabelas(Dados, nil, nil, nil);
      Financeiro_PedidosRepAutorizacao.Release;
      Financeiro_PedidosRepAutorizacao := nil;
end;

procedure TFinanceiro_PedidosRepAutorizacao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_PedidosRepAutorizacao.FormShow(Sender: TObject);
begin
     mDirecao := 'asc';
     cOrigem.ItemIndex := 0;
     FiltraPedidos('');
end;

procedure TFinanceiro_PedidosRepAutorizacao.GradeCellClick(Column: TColumn);
begin
      if not mSel then begin
         mSel  := true;
         mCont := Grade.DataSource.DataSet.RecNo;
      end;
end;

procedure TFinanceiro_PedidosRepAutorizacao.GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      with Grade do begin
           if (mSel) and (Key = 16) and (DataSource.DataSet.RecNo > mCont) then begin
              DataSource.DataSet.DisableControls;
              Enabled := false;
              mContFinal := DataSource.DataSet.RecNo;
              DataSource.DataSet.RecNo := mCont;
              Repeat
                   SelectedRows.CurrentRowSelected := true;
                   DataSource.DataSet.Next
              until
                   (DataSource.DataSet.RecNo = mContFinal) or (tPedidos.Eof);
           end;
           mContfinal := 0;
           mSel       := false;
           DataSource.DataSet.EnableControls;
           Enabled := true;
      end;
end;

procedure TFinanceiro_PedidosRepAutorizacao.GradeTitleClick(Column: TColumn);
begin
      FiltraPedidos(Column.FieldName);
      mDirecao := iif(mDirecao = 'asc', 'desc', 'asc');
end;

procedure TFinanceiro_PedidosRepAutorizacao.bSelNenhumClick(Sender: TObject);
begin
     Seleciona(false);
end;

procedure TFinanceiro_PedidosRepAutorizacao.bSelTodosClick(Sender: TObject);
begin
     Seleciona(true);
end;

procedure TFinanceiro_PedidosRepAutorizacao.Seleciona(pSel: boolean);
var
   l:integer;
begin
     Grade.Enabled := false;
     with Grade.DataSource.DataSet do begin
          DisableControls;
          first;
          for l := 0 to pred(RecordCount) do begin
              Grade.SelectedRows.CurrentRowSelected := pSel;
              next;
          end;
          EnableControls;
          Grade.SelectedRows.Refresh;
          first;
     end;
     Grade.Enabled := true;
end;

procedure TFinanceiro_PedidosRepAutorizacao.cOrigemClick(Sender: TObject);
begin
     mDirecao := 'asc';
     FiltraPedidos('');
end;

procedure TFinanceiro_PedidosRepAutorizacao.FiltraPedidos(ordem: string);
begin
      screen.Cursor := crSQLWait;
      with tPedidos do begin
           sql.Clear;
           sql.Add('select pr.Pedido');
           sql.Add('      ,Data = Cast(pr.Data as date)');
           sql.Add('      ,pr.Origem_Pedido');
           sql.Add('      ,pr.Representante ');
           sql.Add('      ,Representant_Nome = (select Nome from fornecedores where Codigo = pr.Representante)');
           sql.Add('      ,pr.Cliente');
           sql.Add('      ,pr.Cliente_Nome');
           sql.Add('      ,Limite_Cliente = isnull((select Limite_Credito   from Clientes cli where cli.Codigo = pr.Cliente), 0)');
           sql.Add('      ,Limite_Utilizado = isnull((select Limite_Utilizado from Clientes cli where cli.Codigo = pr.Cliente), 0)');
           sql.Add('      ,pr.Total_Pedido');
           sql.Add('      ,Limite_Saldo = isnull((select Limite_Credito from Clientes cli where cli.Codigo = pr.Cliente), 0) - isnull(((select isnull(Limite_Utilizado, 0) from Clientes cli where cli.Codigo = pr.Cliente) + pr.Total_Pedido), 0)');
           sql.Add('      ,Quantidade = (select sum(isnull(Quantidade, 0)) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)');
           sql.Add('from  PedidosRepresentantes pr');
           sql.Add('where isnull(Local, 0) = 0');
           sql.Add('and   isnull(Situacao_Televendas,'''') = ''CONFIRMADO'' ');
           sql.Add('and   isnull(pr.Autorizado,0) = 0');
           if cOrigem.ItemIndex = 1 then begin
             sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           if cOrigem.ItemIndex = 3 then begin
              sql.Add('and Origem_Pedido = ''TELEVENDAS'' ');
           end;
           if ordem <> '' then begin
              if ordem <> 'Desc' then begin
                 SQL.Add('order by '+ordem+' '+mDirecao);
              end;
           end else begin
              sql.Add('order by Data, Pedido');
           end;
           //sql.SaveToFile('c:\temp\Pedidos_Representantes_Autorizacao.sql');
           open;
           StatusBar1.Panels[0].Text := 'Pedidos: '+inttostr(recordcount);
      end;
      with tTmp do begin
           sql.Clear;
           sql.Add('select Total = format(isnull(sum(Total_Pedido), 0), ''C'', ''pt-br'')');
           sql.Add('from  PedidosRepresentantes pr');
           sql.Add('where isnull(Local, 0) = 0');
           sql.Add('and   isnull(pr.Autorizado,0) = 0');
           if cOrigem.ItemIndex = 0 then begin
              SQL.Add('and   Origem_Pedido <> ''TELEVENDAS'' ');
           end;
           if cOrigem.ItemIndex = 1 then begin
             sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           //sql.SaveToFile('c:\temp\Pedidos_Representantes_Autorizacao_Total.sql');
           open;
           StatusBar1.Panels[1].Text := 'Total: ' + fieldbyname('Total').AsString;
      end;
      screen.Cursor := crDefault;
end;

function TFinanceiro_PedidosRepAutorizacao.PegaSel(pGrade: TDBGrid): string;
var
    mPedidos: widestring;
    i: integer;
begin
     with pGrade do begin
          mPedidos := '';
          for i := 0 to pred(SelectedRows.Count) do begin
              DataSource.DataSet.GotoBookMark(SelectedRows.Items[i]);
              mPedidos := mPedidos + quotedstr(DataSource.DataSet.fieldbyname('Pedido').asstring) + ',';
          end;
          mPedidos := copy(mPedidos, 1, length(mPedidos)-1);
     end;
     PegaSel := mPedidos;
end;

end.
