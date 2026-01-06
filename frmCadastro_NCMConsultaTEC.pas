unit frmCadastro_NCMConsultaTEC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Funcoes, Buttons, Mask, OleCtrls, SHDocVw, HTTPApp,
    DB, DBCtrls, RxCurrEdit, RxToolEdit;

type
  TCadastro_NCMConsultaTEC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bSair: TButton;
    cNCM: TMaskEdit;
    StaticText1: TStaticText;
    bPEsquisar: TBitBtn;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    Button1: TButton;
    StaticText7: TStaticText;
    cDescricao: TMemo;
    cNALADI: TMaskEdit;
    StaticText8: TStaticText;
    cII: TCurrencyEdit;
    cIPI: TCurrencyEdit;
    cCOFINS: TCurrencyEdit;
    cPIS: TCurrencyEdit;
    cGATT: TCurrencyEdit;
    StaticText15: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText14: TStaticText;
    cIISis: TCurrencyEdit;
    cIPISis: TCurrencyEdit;
    cCOFSis: TCurrencyEdit;
    cPISSis: TCurrencyEdit;
    cBrowser: TWebBrowser;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPEsquisarClick(Sender: TObject);
    procedure PesquisaNCM;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cBrowserDocumentComplete(ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_NCMConsultaTEC: TCadastro_NCMConsultaTEC;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TCadastro_NCMConsultaTEC.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TCadastro_NCMConsultaTEC.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     cBrowser.Navigate('//www.infoconsult.com.br/tec2015/site/logout');
     LimpaMemoria;
     Cadastro_NCMConsultaTEC.Release;
     Cadastro_NCMConsultaTEC := nil;
end;

procedure TCadastro_NCMConsultaTEC.bPEsquisarClick(Sender: TObject);
var
  EncodedDataString: string;
  PostData: OleVariant;
  Headers: OleVariant;
  i: integer;
begin
      cIISis.Value  := 0; 
      cIPISis.Value := 0;
      cPISSis.Value := 0;
      cCOFSis.Value := 0;
      if dmFiscal.NCM.Locate('NCM', ApenasNumeros(cNCM.Text), [loCaseInsensitive]) then begin
         cIISis.Value  := dmFiscal.NCMII.Value;
         cIPISis.Value := dmFiscal.NCMIPI.Value;
         cPISSis.Value := dmFiscal.NCMPIS.Value;
         cCOFSis.Value := dmFiscal.NCMCOFINS.Value;
      end;

      // First, create a URL encoded string of the data.
      EncodedDataString := 'LoginForm[username]='+HTTPEncode(Dados.Usuarios.FieldByName('Sistema_ExternoUsuario').AsString)+'&'+
                           'LoginForm[password]='+HTTPEncode(Dados.Usuarios.FieldByName('Sistema_ExternoSenha').AsString);

      PostData := VarArrayCreate([0, length(EncodedDataString)-1], varByte);

      // Now, move the Ordinal value of the character into the PostData array.
      for i := 1 to length(EncodedDataString) do begin
          PostData[i-1] := ord(EncodedDataString[i]);
      end;

      Headers := 'Content-type: application/x-www-form-urlencoded'#10#13;

      // Efetua o login no site de pesquisa.
      cBrowser.Navigate('http://www.infoconsult.com.br/tec2015/site/login',EmptyParam, EmptyParam, PostData, Headers); // Parameters 2 and 3 are not used, thus EmptyParam is passed.

      // Efetua a consulta no site após logar.
      PesquisaNCM;
end;

procedure TCadastro_NCMConsultaTEC.PesquisaNCM;
var
  PostData,
  Headers          : OleVariant;
  EncodedDataString: string;
  i                : Integer;
begin
      EncodedDataString := 'ncm='+HTTPEncode(cNCM.Text);
      PostData          := VarArrayCreate([0, length(EncodedDataString)-1], varByte);

      for i := 1 to length(EncodedDataString) do begin
          PostData[i-1] := ord(EncodedDataString[i]);
      end;
      Headers := 'Content-type: application/x-www-form-urlencoded'#10#13;

      if Dados.Usuarios.FieldByName('Sistema_Externo').AsString = 'TECWIN' then begin
         cBrowser.Navigate('//www.infoconsult.com.br/tecweb/iframe_tec.php',EmptyParam, EmptyParam, PostData, Headers);
      end;
         cBrowser.Navigate('//www.infoconsult.com.br/tecweb/iframe_tec.php',EmptyParam, EmptyParam, PostData, Headers);
   //INFOCONSULT

      
end;
{
procedure TCadastro_NCMConsultaTEC.cBrowserDocumentComplete(Sender: TObject; const pDisp: IDispatch; var URL: OleVariant);
var
  CurWebrowser,
  TopWebBrowser: IWebBrowser;
  i : integer;
  vTables,
  vRows,
  vCols: Variant;
begin
      //CurWebrowser  := pDisp as IWebBrowser;
      //TopWebBrowser := cBrowser.DefaultInterface;
      if CurWebrowser = TopWebBrowser then begin
         vTables := cBrowser.OleObject.Document.getElementsByTagName('table');
         if vTables.Length > 0 then begin
            vRows := vTables.Item(1).getElementsByTagName('tr');
            for i := 1 to vRows.Length -1 do begin
                vCols := vRows.Item(i).getElementsByTagName('td');
                if vCols.Item(1).innerText = cNCM.Text then begin
                   cNALADI.Text    := vCols.Item(2).innerText;
                   cDescricao.Text := vCols.Item(3).innerText;

                   if ApenasNumeros(vCols.Item(4).innerText) <> '' then
                      cII.Text := vCols.Item(4).innerText;
                   if ApenasNumeros(vCols.Item(5).innerText) <> '' then
                      cIPI.Text := vCols.Item(5).innerText;
                   if ApenasNumeros(vCols.Item(6).innerText) <> '' then
                      cPIS.Text := vCols.Item(6).innerText;
                   if ApenasNumeros(vCols.Item(7).innerText) <> '' then
                      cCOFINS.Text := vCols.Item(7).innerText;
                   if ApenasNumeros(vCols.Item(8).innerText) <> '' then
                      cGATT.Text := vCols.Item(8).innerText;
                end;
            end;
         end;
      end;
end;
//      OnDocumentComplete = cBrowserDocumentComplete
}
procedure TCadastro_NCMConsultaTEC.FormCreate(Sender: TObject);
begin
//     cBrowser.Hide;
end;

procedure TCadastro_NCMConsultaTEC.Button1Click(Sender: TObject);
begin
      with dmFiscal do begin
           if not NCM.Locate('NCM', ApenasNumeros(cNCM.Text), [loCaseInsensitive]) then begin
              NCM.Append;
           end else begin
              if MessageDlg('NCM já cadastrada no banco de dados.'+#13+#13+'Deseja atualizar os dados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                abort;
              end;  
              NCM.Edit;
           end;
           
           NCMNCM.Value                  := ApenasNumeros(cNCM.Text);
           NCMProduto.Value              := cDescricao.Text;
           NCMCusto_Seletivo.Value       := false;
           NCMFCP.Value                  := false;
           NCMGenero.Value               := StrtoInt(Copy(cNCM.Text, 1, 2));
           NCMUnidade.Value              := 'UN';
           NCMII.Value                   := cII.Value;
           NCMIPI.Value                  := cIPI.Value;
           NCMPIS.Value                  := cPIS.Value;
           NCMCOFINS.Value               := cCOFINS.Value;
           NCMICMS_Isento.Value          := false;
           NCMICMS_Suspensao.Value       := false;
           NCMICMS_Imune.Value           := false;
           NCMMVA_NaoReducao.Value       := false;
           NCMIPI_Isento.Value           := false;
           NCMIPI_Suspensao.Value        := false;
           NCMIPI_TribAliquotaZero.Value := false;
           NCM.Post;

           cIISis.Value  := cII.Value;
           cIPISis.Value := cIPI.Value;
           cPISSis.Value := cPIS.Value;
           cCOFSis.Value := cCOFINS.Value;
      end;
end;

procedure TCadastro_NCMConsultaTEC.cBrowserDocumentComplete(ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
var
  CurWebrowser,
  TopWebBrowser: IWebBrowser;
  i : integer;
  vTables,
  vRows,
  vCols: Variant;
begin
      //CurWebrowser  := pDisp as IWebBrowser;
      //TopWebBrowser := cBrowser.DefaultInterface;
      if CurWebrowser = TopWebBrowser then begin
         vTables := cBrowser.OleObject.Document.getElementsByTagName('table');
         if vTables.Length > 0 then begin
            vRows := vTables.Item(1).getElementsByTagName('tr');
            for i := 1 to vRows.Length -1 do begin
                vCols := vRows.Item(i).getElementsByTagName('td');
                if vCols.Item(1).innerText = cNCM.Text then begin
                   cNALADI.Text    := vCols.Item(2).innerText;
                   cDescricao.Text := vCols.Item(3).innerText;

                   if ApenasNumeros(vCols.Item(4).innerText) <> '' then
                      cII.Text := vCols.Item(4).innerText;
                   if ApenasNumeros(vCols.Item(5).innerText) <> '' then
                      cIPI.Text := vCols.Item(5).innerText;
                   if ApenasNumeros(vCols.Item(6).innerText) <> '' then
                      cPIS.Text := vCols.Item(6).innerText;
                   if ApenasNumeros(vCols.Item(7).innerText) <> '' then
                      cCOFINS.Text := vCols.Item(7).innerText;
                   if ApenasNumeros(vCols.Item(8).innerText) <> '' then
                      cGATT.Text := vCols.Item(8).innerText;
                end;
            end;
         end;
      end;
end;



end.

