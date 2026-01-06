unit frmFinanceiro_BloquearPeriodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Mask, RXDBCtrl, Funcoes,
  Vcl.ComCtrls, DB, DBAccess, MSAccess, RxLookup, RxToolEdit, MemDS, Vcl.DBCtrls, system.UITypes;

type
  TFinanceiro_BloquearPeriodo = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bBloquear: TButton;
    lDataPrevisao: TStaticText;
    cData: TDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    tTitulos: TMSQuery;
    Banco: TStaticText;
    StaticText1: TStaticText;
    cTodos: TCheckBox;
    cDataBanco: TDateEdit;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    DBDateEdit1: TDBDateEdit;
    StaticText2: TStaticText;
    cBanco: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bBloquearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cTodosClick(Sender: TObject);
    procedure cBancoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mData : String;
  end;

var
  Financeiro_BloquearPeriodo: TFinanceiro_BloquearPeriodo;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_BloquearPeriodo.bSairClick(Sender: TObject);
begin
      Dados.Empresas.Cancel;
      Close;
end;

procedure TFinanceiro_BloquearPeriodo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_BloquearPeriodo.FormShow(Sender: TObject);
begin
      With Dados do begin
           with Bancos do begin
                sql.Clear;
                sql.Add('select * from Bancos where Desativado <> 1 order by Nome');
                open;
           end;
           with Empresas do begin
                sql.clear;
                sql.add('select * from Empresas where Codigo = :pCodigo');
                paramByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                open;
                Edit;
           end;
           mData := EmpresasFechamento_Financeiro.AsString;
      End;
end;

procedure TFinanceiro_BloquearPeriodo.bBloquearClick(Sender: TObject);
Var
    mMSG: WideString;
begin
      with Dados do begin
           with tTitulos do begin
                SQL.Clear;
                SQL.Add('select count(*) as Abertos');
                SQL.Add('from   PagarReceber');
                SQL.Add('where  Data_Documento <= :pDataFim and (select sum(Valor) from PagarReceberBaixas where PagarReceberBaixas.Numero = PagarReceber.Numero) <> Valor_Total');
                ParamByName('pDataFim').AsDate := cData.Date;
                //sql.savetofile('c:\temp\Bloqueio_Financeiro.sql');
                Open;
                if FieldByName('Abertos').AsInteger > 0 then
                   mMSG := 'Atenção!'+#13+#13+'Existem títulos abertos com data inferior a data informada.'+#13+#13+'Estes títulos ficarão indisponíveis para baixa após o fechamento.'+ #13+#13+'Deseja realmente bloquear o movimento financeiro na data informada?'
                else
                   mMSG := 'Deseja realmente bloquear o movimento financeiro na data informada?';
           end;
           if MessageDlg(mMSG, mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
              if DataLimpa(cData.EditText) then begin
                 EmpresasFechamento_Financeiro.Clear;
              end;   
              Empresas.Post;
              GerarLog(Menu_Principal.mUsuarioCodigo, 'Empresas', 'ALTERAÇÃO' , 'Fechamento_Financeiro', 'Data de fechamento do movimento do financeiro', mData, Dados.EmpresasFechamento_Financeiro.AsString, '');
              Close;
           end;
           if not cTodos.Checked then begin
              if not DataLimpa(cDataBanco.Text) then begin
                 Bancos.Edit;
                        BancosData_Fechamento.Value := cDataBanco.Date;
                 Bancos.Post;
              end;
           end else begin
              Bancos.Close;
              Bancos.SQL.Clear;
              if Trim(RemoveCaracter('/', '', cDataBanco.Text)) <> '' then begin
                 Bancos.SQL.Add('UPDATE Bancos SET Data_Fechamento = :pData');
                 Bancos.ParamByName('pData').AsDate := cDataBanco.Date;
              end else begin
                 Bancos.SQL.Add('UPDATE Bancos SET Data_Fechamento = NULL');
              end;
              Bancos.Execute;
              Bancos.SQL.Clear;
              Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
              Bancos.Open;
           end;
      end;
end;

procedure TFinanceiro_BloquearPeriodo.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, nil, nil, nil);
      Financeiro_BloquearPeriodo.Release;
      Financeiro_BloquearPeriodo := nil;
end;

procedure TFinanceiro_BloquearPeriodo.cTodosClick(Sender: TObject);
begin

      if cTodos.Checked = true then begin
         cBanco.KeyValue := 0;
      end;
      cBanco.Enabled := not cTodos.Checked;
end;

procedure TFinanceiro_BloquearPeriodo.cBancoChange(Sender: TObject);
begin
      with Dados do begin
           cDataBanco.Date := BancosData_Fechamento.Value;
      end;
end;



end.
