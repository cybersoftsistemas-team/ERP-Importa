unit frmCadastro_Recebedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Mask, Buttons, RXCtrls, Vcl.ExtCtrls, DB,
  DBAccess, MSAccess, xmldom, msxmldom, XMLDoc, IdHTTP, XMLIntf, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, MemDS;

type
  TCadastro_Recebedor = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    bPesquisaCEP: TSpeedButton;
    cCodigo: TDBEdit;
    cNome: TDBEdit;
    cLogradouro: TDBEdit;
    cNumero: TDBEdit;
    cBairro: TDBEdit;
    cCEP: TDBEdit;
    DBEdit10: TDBEdit;
    cCNPJ: TDBEdit;
    cIE: TDBEdit;
    StaticText1: TStaticText;
    lNome: TStaticText;
    lLogradouro: TStaticText;
    lBairro: TStaticText;
    lNumero: TStaticText;
    lCEP: TStaticText;
    lEstado: TStaticText;
    StaticText10: TStaticText;
    lCNPJ: TStaticText;
    lIE: TStaticText;
    lPais: TStaticText;
    cPais: TDBLookupComboBox;
    cAtivo: TDBCheckBox;
    cEstado: TDBLookupComboBox;
    cIsento: TDBCheckBox;
    cCPF: TDBEdit;
    cRG: TDBEdit;
    lCPF: TStaticText;
    lRG: TStaticText;
    cMunicipio: TDBLookupComboBox;
    lMunicipio: TStaticText;
    Panel5: TPanel;

    tCodigo: TMSQuery;
    IdHTTP1: TIdHTTP;
    XMLBuscaCEP: TXMLDocument;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoChange(Sender: TObject);
    procedure bPesquisaCEPClick(Sender: TObject);
    procedure cCEPChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Recebedor: TCadastro_Recebedor;
  TSConsulta: TStringList;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Recebedor.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Recebedor.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_Recebedor.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_Recebedor.Release;
      Cadastro_Recebedor:= nil;
end;

procedure TCadastro_Recebedor.FormShow(Sender: TObject);
begin
      With Dados do begin
           Recebedores.SQL.Clear;
           Recebedores.SQL.Add('SELECT * FROM Recebedores ORDER BY Codigo');
           Recebedores.Open;

           Paises.Open;
           Comissoes.Open;
           Estados.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;
      End;
end;

procedure TCadastro_Recebedor.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         cNome.SetFocus;
      End;
      If (Button = nbInsert) then begin
         Dados.RecebedoresAtivo.Value  := true;
         Dados.RecebedoresIsento.Value := false;
      End;
end;

procedure TCadastro_Recebedor.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
     If (Button = nbPost) then begin
        If (Dados.Recebedores.State = dsInsert) then begin
           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0) AS Codigo FROM Recebedores');
           tCodigo.Open;
           Dados.RecebedoresCodigo.Value := tCodigo.FieldByName('Codigo').Value+1;
           tCodigo.Close;
        End;
     End;
end;

procedure TCadastro_Recebedor.cCodigoChange(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Municipios.Close;
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Recebedor.bPesquisaCEPClick(Sender: TObject);
var
   Resposta: TStringStream;
begin
     With Dados do begin
          
          Panel5.Visible   := true;

          Resposta                      := TStringStream.Create('');
          TSConsulta                    := TStringList.Create;
          IdHTTP1.Request.UserAgent     := 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV2';
          TSConsulta.Values['&cep']     := cCEP.Text;
          TSConsulta.Values['&formato'] := 'xml';

          Try
             Try
                IdHTTP1.Post('http://cep.republicavirtual.com.br/web_cep.php?', TSConsulta, Resposta);
             except
                
                Panel5.Visible   := false;
             End;

             XMLBuscaCEP.Active   := True;
             XMLBuscaCEP.Encoding := 'iso-8859-1';
             XMLBuscaCEP.LoadFromStream(Resposta);

             If XMLBuscaCEP.DocumentElement.ChildNodes['logradouro'].NodeValue <> null then begin
                RecebedoresEstado.Value := XMLBuscaCEP.DocumentElement.ChildNodes['uf'].NodeValue;
                RecebedoresRua.Value    := XMLBuscaCEP.DocumentElement.ChildNodes['tipo_logradouro'].NodeValue+' '+XMLBuscaCEP.DocumentElement.ChildNodes['logradouro'].NodeValue;
                RecebedoresBairro.Value := XMLBuscaCEP.DocumentElement.ChildNodes['bairro'].NodeValue;

                Estados.Locate('Codigo', RecebedoresEstado.AsString, [loCaseInsensitive]);

                Municipios.SQL.Clear;
                Municipios.SQL.Add('SELECT * FROM Municipios WHERE(Estado = :pEstado) ORDER BY Nome');
                Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
                Municipios.Open;

                Municipios.Locate('Estado;Nome', VarArrayOf([EstadosNumero.Value, XMLBuscaCEP.DocumentElement.ChildNodes['cidade'].NodeValue]), [loCaseInsensitive]);
                RecebedoresMunicipio.Value        := XMLBuscaCEP.DocumentElement.ChildNodes['cidade'].NodeValue;
                RecebedoresMunicipio_Codigo.Value := MunicipiosCodigo.AsInteger;
             End;
          Except
             Showmessage('Houve falha na consulta!');
          End;
     End;
     TSConsulta.Free;
     Resposta.Free;
     XMLBuscaCEP.Active := False;

     
     Panel5.Visible   := false;
end;


procedure TCadastro_Recebedor.cCEPChange(Sender: TObject);
begin
      bPesquisaCEP.Enabled := Length(Trim(cCEP.Text)) = 8;
end;

end.
