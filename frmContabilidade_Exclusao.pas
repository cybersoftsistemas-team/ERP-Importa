unit frmContabilidade_Exclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Mask, RxLookup, DBCtrls, DB,
  DBAccess, MSAccess, Funcoes, DateUtils, RxToolEdit, system.UITypes, MemDS;

type
  TContabilidade_Exclusao = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    cOrigem: TRadioGroup;
    bExecutar: TButton;
    StaticText3: TStaticText;
    cConta: TRxDBLookupCombo;
    cTipo: TRadioGroup;
    cCodigo: TEdit;
    tLan: TMSQuery;
    RadioGroup1: TRadioGroup;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bExecutarClick(Sender: TObject);
    procedure cDataIniExit(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure cContaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Contabilidade_Exclusao: TContabilidade_Exclusao;

implementation

uses frmDMContab, frmMenu_Principal;

{$R *.dfm}

procedure TContabilidade_Exclusao.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TContabilidade_Exclusao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TContabilidade_Exclusao.FormShow(Sender: TObject);
begin
      with dmContab do begin
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE ISNULL(Sintetica, 0) = 0 ORDER BY Conta');
           PlanoContas.Open;
      end;
end;

procedure TContabilidade_Exclusao.bExecutarClick(Sender: TObject);
begin
      if (DataLimpa(cDataIni.Text)) then begin
         MessageDlg('É preciso informar uma data inicial para excluir os lançamentos.', mtError, [mbOK], 0);
         Abort;
      end;
      if (DataLimpa(cDataFim.Text)) then begin
         MessageDlg('É preciso informar uma data final para excluir os lançamentos.', mtError, [mbOK], 0);
         Abort;
      end;

      // Verifica se o período contabil esta bloqueado.
      tLan.SQL.Clear;
      tLan.SQL.Add('SELECT COUNT(*) AS Qtde');
      tLan.SQL.Add('FROM   FechamentoContabil');
      tLan.SQL.Add('WHERE  Ano BETWEEN :pAnoIni AND :pAnoFim');
      tLan.SQL.Add('AND    Mes BETWEEN :pMesIni AND :pMesFim');
      tLan.SQL.Add('AND    ISNULL(Fechado, 0) = 1');
      tLan.ParamByName('pAnoIni').AsInteger := YearOf(cDataIni.Date);
      tLan.ParamByName('pAnoFim').AsInteger := YearOf(cDataFim.Date);
      tLan.ParamByName('pMesIni').AsInteger := MonthOf(cDataIni.Date);
      tLan.ParamByName('pMesFim').AsInteger := MonthOf(cDataFim.Date);
      tLan.Open;
      
      If tLan.FieldByName('Qtde').AsInteger > 0 then begin
         MessageDlg('Os lançamentos solicitados não podem ser excluídos!'+#13+#13+'Lançamentos estão dentro de um período bloqueado!', mtInformation, [mbOK], 0);
         Abort;
      end;
      
      if MessageDlg('Atenção!'+#13+#13+'Isso irá excluir todos os lançamentos dentro dos filtros informados.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      end else begin
         with dmContab do begin
              tLan.SQL.Clear;
              tLan.SQL.Add('DELETE FROM Lancamentos');
              tLan.SQL.Add('WHERE Data BETWEEN :pDataIni AND :pDataFim');
              tLan.ParamByName('pDataIni').AsDate := cDataIni.Date;
              tLan.ParamByName('pDataFim').AsDate := cDataFim.Date;
              if cTipo.ItemIndex = 0 then begin
                 if Trim(cCodigo.Text) <> '' then begin
                    tLan.SQL.Add('AND Conta_Credito = :pCodigo');
                    tLan.ParamByName('pCodigo').AsString := cCodigo.Text;
                 end;
              end;
              if cTipo.ItemIndex = 1 then begin
                 if Trim(cCodigo.Text) <> '' then begin
                    tLan.SQL.Add('AND Conta_Debito = :pCodigo');
                    tLan.ParamByName('pCodigo').AsString := cCodigo.Text;
                 end;
              end;
              if cTipo.ItemIndex = 2 then begin
                 if Trim(cCodigo.Text) <> '' then begin
                    tLan.SQL.Add('AND (Conta_Debito = :pCodigo OR Conta_Credito = :pCodigo)');
                    tLan.ParamByName('pCodigo').AsString := cCodigo.Text;
                 end;
              end;
              if cOrigem.ItemIndex = 0 then begin
                 tLan.SQL.Add('AND ISNULL(Recriar, 0) = 0');
              end;
              if cOrigem.ItemIndex = 1 then begin
                 tLan.SQL.Add('AND ISNULL(Recriar, 0) = 1');
              end;
              //an.SQL.SavetoFile('c:\temp\Lancamentos_Exclusao.sql');
              tLan.Execute;

              // Log de operações.
              GerarLog(Menu_Principal.mUsuarioCodigo+'('+Menu_Principal.mUsuarioNome+')' , 'Lancamentos', 'EXCLUSÃO', 'Todos', 'Exclusão de todos os lançamentos do período '+cDataIni.Text+' a '+cDataFim.Text+' da conta '+cCodigo.Text, '', '', '');
         end;

         MessageDlg('Todos os lançamentos dentro dos filtros informados foram excluídos!', mtInformation, [mbOK], 0);
      end;
end;

procedure TContabilidade_Exclusao.cDataIniExit(Sender: TObject);
begin
      if cDataFim.Date < cDataIni.Date then cDataFim.Date := cDataIni.Date;
end;

procedure TContabilidade_Exclusao.cCodigoChange(Sender: TObject);
begin
      with dmContab do begin
           PlanoContas.Locate('Codigo', cCodigo.Text, [loCaseInsensitive]);
           if cCodigo.Text <> '' then
              cConta.KeyValue := PlanoContasCodigo.AsInteger
           else
              cConta.KeyValue := -1;
      end;
end;

procedure TContabilidade_Exclusao.cContaExit(Sender: TObject);
begin
      with dmContab do begin
           if cConta.DisplayValue <> '' then
              cCodigo.Text := PlanoContasCodigo.AsString;
      end;
end;

end.
