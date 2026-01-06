unit frmUtilitario_ExportaAPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, IdMultipartFormData, Data.DB, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, MemDS, DBAccess, MSAccess, Vcl.Grids, Vcl.DBGrids, RxToolEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Controls, Vcl.ExtCtrls, 
  Vcl.ComCtrls, Vcl.Forms, Vcl.Dialogs, ClipBrd, RxCtrls, JSON, Vcl.Buttons,  Service.APIDominio, Inifiles, DateUtils, Vcl.WinXCtrls;

type
  TUtilitario_ExportaAPI = class(TForm)
    Image3: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Label1: TLabel;
    cArq: TListBox;
    Panel2: TPanel;
    bttEnviarXML: TSpeedButton;
    bSair: TSpeedButton;
    bArq: TSpeedButton;
    cLog: TMemo;
    dArq: TOpenDialog;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bArqClick(Sender: TObject);
    procedure bttEnviarXMLClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FResponse: TJSONObject;
    FAPI: TServiceAPIDominio;
    FIdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    procedure EnviarAPI;
    procedure obtemKeyIntegracao(const AIntegrationKey: string);
    function tokenInvalido: Boolean;
    procedure obtemToken;
    procedure Consulta;
    function LerJSONOnvio(const Texto: string): string;
  public
    { Public declarations }
    FHTTP: TIdHTTP;
    fIntegrationKey: string;
    Url_auth
   ,Url_post
   ,Url_info
   ,Url_integration_key
   ,Client_id
   ,Client_secret
   ,Client_chave
   ,Audience
   ,fCaminhoArquivoToken
   ,fAccessToken
   ,mDir
   ,mId: string;
  end;

var
  Utilitario_ExportaAPI: TUtilitario_ExportaAPI;

implementation

{$R *.dfm}

uses FUNCOES;

procedure TUtilitario_ExportaAPI.bArqClick(Sender: TObject);
begin
     if dArq.Execute then begin
        cArq.Items.Text := dArq.Files.Text;
        mDir := copy(dArq.FileName, 1, pos('NFe_', dArq.FileName)-1);
     end;
end;

procedure TUtilitario_ExportaAPI.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TUtilitario_ExportaAPI.bttEnviarXMLClick(Sender: TObject);
var
  i:integer;
begin
     if cArq.Items.Count > 0 then begin
        screen.Cursor := crAppStart;
        EnviarAPI;
        Consulta;
        screen.Cursor := crDefault;
     end else begin
        messagedlg('Nenhum arquivo selecionado para enviar!', mtError, [mbok], 0);
     end;
end;

procedure TUtilitario_ExportaAPI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     Utilitario_ExportaAPI.Release;
     Utilitario_ExportaAPI := nil;
end;

procedure TUtilitario_ExportaAPI.FormCreate(Sender: TObject);
Var
   aINI: TIniFile;
begin
      aINI                := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaServidor.ini');
      Url_Auth            := aINI.ReadString('API_ThomsonReuters', 'URL_AUTH', '');
      Url_Info            := aINI.ReadString('API_ThomsonReuters', 'URL_INFO', '');
      Url_Integration_Key := aINI.ReadString('API_ThomsonReuters', 'URL_INTEGRATION_KEY', '');
      Url_Post            := aINI.ReadString('API_ThomsonReuters', 'URL_POST', '');
      Client_Chave        := aINI.ReadString('API_ThomsonReuters', 'CLIENT_CHAVE', '');
      Client_Id           := aINI.ReadString('API_ThomsonReuters', 'CLIENT_ID', '');
      Client_Secret       := aINI.ReadString('API_ThomsonReuters', 'CLIENT_SECRET', '');
      Audience            := aINI.ReadString('API_ThomsonReuters', 'AUDIENCE', '');
      aini.free;
      fCaminhoArquivoToken                                := ExtractFilePath(ParamStr(0)) + 'token.dm';
      FHTTP                                               := TIdHTTP.Create(nil);
      FIdSSLIOHandlerSocketOpenSSL                        := TIdSSLIOHandlerSocketOpenSSL.Create;
      FIdSSLIOHandlerSocketOpenSSL.SSLOptions.SSLVersions := [sslvSSLv23, sslvTLSv1_2];
      FHTTP.IOHandler                                     := FIdSSLIOHandlerSocketOpenSSL;

      FAPI := TServiceAPIDominio.Create;
      if FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
      cLog.Clear;
end;

procedure TUtilitario_ExportaAPI.EnviarAPI;
var
  LPostFileStream: TIdMultiPartFormDataStream;
  LResult: string;
  i: integer;
begin
     cLog.Clear;
     fResponse := TJSONObject.Create;
     cLog.Lines.Add('...Aguarde, conectando a API da Thomson Reuters.');
     fResponse := TJSONObject.Create;
     if fIntegrationKey.IsEmpty then begin
        obtemKeyIntegracao(Client_Chave);
     end;
     FHTTP.Request.Clear;
     FHTTP.Request.ContentType := 'multipart/form-data';
     FHTTP.Request.Accept      := 'application/json';
     FHTTP.Request.CustomHeaders.Clear;
     FHTTP.Request.CustomHeaders.Values['Authorization']     := 'Bearer ' + fAccessToken;
     FHTTP.Request.CustomHeaders.Values['x-integration-key'] := FIntegrationKey;
     LPostFileStream := TIdMultiPartFormDataStream.Create;
     try
        cLog.Lines.Add('...Anexando arquivos XMML selecionados.');
        for i := 0 to pred(cArq.Count) do begin
            LPostFileStream.AddFile('file[]', cArq.Items[i], 'application/xml');
            LPostFileStream.AddFormField('query', '{"boxe/File": true}', 'UTF-8', 'application/json');
            cLog.lines.add('   '+formatfloat('0000',i)+': '+cArq.Items[i]);
        end;
        LResult   := FHTTP.Post(URL_POST, LPostFileStream);
        FResponse := TJSONObject.ParseJSONValue(LResult) as TJSONObject;
        mID       := FResponse.GetValue('id').Value;
        {
        cLog.Lines.add('Id : '+mId);
        cLog.Lines.add(FHTTP.ResponseText);
        cLog.Lines.add(lResult);
        }
     finally
        LPostFileStream.Free;
     end;
end;

procedure TUtilitario_ExportaAPI.Consulta;
var
  HTTP: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  URL, Resp, mCodRet: string;
  mContador: integer;
begin
     HTTP := TIdHTTP.Create(nil);
     SSL  := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
     try
       SSL.SSLOptions.Method      := sslvTLSv1_2;
       SSL.SSLOptions.SSLVersions := [sslvTLSv1_2];
       HTTP.IOHandler             := SSL;

       // Cabeçalhos necessários
       HTTP.Request.CustomHeaders.Clear;
       HTTP.Request.CustomHeaders.Values['Authorization']     := 'Bearer ' + fAccessToken;
       HTTP.Request.CustomHeaders.Values['x-integration-key'] := fIntegrationKey;
       HTTP.Request.Accept                                    := 'application/json';

       // Endpoint de consulta
       url := URL_POST+'/'+mId;

       try
         Resp := HTTP.Get(URL);
         //cLog.Lines.add('Resposta: ' + UTF8ToString(Resp));
         //cLog.Lines.add('[ JSON ]----------------------------------------------------------------------------------------------------');
         mCodRet   := LerJSONOnvio(Resp);
         mContador := 0;
         while (mCodRet = 'S1') and (mContador < 20) do begin
               mCodRet := LerJSONOnvio(Resp);
               inc(mContador);
         end;
       except
         on E: EIdHTTPProtocolException do
            cLog.Lines.add('Erro HTTP: ' + IntToStr(E.ErrorCode) + ' - ' + E.Message);
         on E: Exception do
            cLog.Lines.add('Erro: ' + E.Message);
       end;
     finally
       SSL.Free;
       HTTP.Free;
     end;
end;

procedure TUtilitario_ExportaAPI.obtemKeyIntegracao(const AIntegrationKey: string);
var
   LResponse: TJSONObject;
   LResult: string;
   LIntegrationKey: string;
   LJsonToSend: TStringStream;
begin
     if tokenInvalido then obtemToken;
     FHTTP.Request.Clear;
     FHTTP.Request.CustomHeaders.Clear;
     FHTTP.Request.Accept := 'application/json';
     FHTTP.Request.CustomHeaders.Clear;
     FHTTP.Request.CustomHeaders.Values['Authorization']     := 'Bearer ' + FAccessToken;
     FHTTP.Request.CustomHeaders.Values['x-integration-key'] := AIntegrationKey;

     FResponse   := TJSONObject.Create;
     LJsonToSend := TStringStream.Create('', TEncoding.UTF8);
     try
        try
           LResult         := FHTTP.Post(url_Integration_Key,lJsonToSend);
           FResponse       := TJSONObject.ParseJSONValue(LResult) as TJSONObject;
           LIntegrationKey := FResponse.GetValue('integrationKey').Value;
           FIntegrationKey := LIntegrationKey;
        except 
           on E: Exception do
           begin
               cLog.Lines.Add(e.Message);   
               if E.InheritsFrom(EIdHTTPProtocolException) then
                  cLog.Lines.Add((E as EIdHTTPProtocolException).ErrorMessage)
               else
                  raise Exception.Create(e.Message);
           end;    
        end;
     finally
        LJsonToSend.Free;
     end;
end;

function TUtilitario_ExportaAPI.tokenInvalido: Boolean;
var
  lArq: TextFile;
  lLinha: string;
  lExpiraData: TDateTime;
begin
     lExpiraData := IncDay(Now,-5);
     if FileExists(fCaminhoArquivoToken) then begin
        AssignFile(lArq, fCaminhoArquivoToken);
        Reset(lArq);
        while (not eof(lArq)) do begin
              Readln(lArq, lLinha);
              if Pos('access_token',lLinha) <> 0 then fAccessToken := Copy(lLinha,14);
              if Pos('expire',lLinha) <> 0 then lExpiraData := StrToDateTime(Copy(lLinha,8));
        end;
        CloseFile(lArq);
     end;
     Result := (lExpiraData) < (Now)
end;

procedure TUtilitario_ExportaAPI.obtemToken;
var
  LResult: string;
  LToken: string;
  LGrantType: string;
  LAudience: string;
  LReqAuthParams: TStringList;
  LSaveStrings: TStringList;
begin
     LGrantType     := 'grant_type=client_credentials' ;
     LAudience      := Concat('audience=',AUDIENCE);
     LReqAuthParams := TStringList.Create;
     try
          LReqAuthParams.Clear;
          LReqAuthParams.Add(LGrantType);
          LReqAuthParams.Add(LAudience);

          FResponse := TJSONObject.Create;

          FHTTP.Request.Clear;
          FHTTP.Request.ContentType         := 'application/x-www-form-urlencoded';
          FHTTP.Request.BasicAuthentication := True;
          FHTTP.Request.Username            := CLIENT_ID;
          FHTTP.Request.Password            := CLIENT_SECRET;
    
          try
               LResult   := FHTTP.Post(URL_AUTH, LReqAuthParams);
               FResponse := TJSONObject.ParseJSONValue(LResult) as TJSONObject;

               LToken := FResponse.GetValue('access_token').Value;
               FAccessToken := LToken;

               LSaveStrings := TStringList.Create;
               try
                   if FileExists(FCaminhoArquivoToken) then DeleteFile(FCaminhoArquivoToken);
                   LSaveStrings.Add('access_token=' + LToken);
                   LSaveStrings.Add('expire=' + DateTimeToStr(IncHour(now,23)));
                   LSaveStrings.SaveToFile(FCaminhoArquivoToken);
               finally
                   FreeAndNil(LSaveStrings);
               end;
          except on e:Exception do
               raise Exception.Create(e.Message);
          end;
     finally
          LReqAuthParams.Free;
     end;
end;

procedure TUtilitario_ExportaAPI.SpeedButton1Click(Sender: TObject);
begin
     Consulta;
end;

function TUtilitario_ExportaAPI.LerJSONOnvio(const Texto: string): string;
var
  JSONString: string;
  JSONValue, InnerValue: TJSONValue;
  JSONObject, FileObj, ApiStatusObj, BoxeStatusObj: TJSONObject;
  FilesArray: TJSONArray;
  Pair: TJSONPair;

  FileItem: TJSONObject;
  CodeValue, Mensagem: string;

begin
     JSONValue := TJSONObject.ParseJSONValue(Texto);
     if not Assigned(JSONValue) then begin
        Writeln('Erro ao interpretar JSON.');
        Exit;
     end;
     {
     try
       JSONObject := JSONValue as TJSONObject;

       // Tags principais
       cLog.lines.add('type: '+JSONObject.GetValue<string>('type'));
       cLog.lines.add('lastStatusOn: '+ JSONObject.GetValue<string>('lastStatusOn'));
       cLog.lines.add('apiVersion: '+ JSONObject.GetValue<string>('apiVersion'));
       cLog.lines.add('boxeFile: '+ JSONObject.GetValue<Boolean>('boxeFile').ToString);
       cLog.lines.add('id: '+ JSONObject.GetValue<string>('id'));

       // Status principal
       InnerValue := JSONObject.GetValue('status');
       if InnerValue is TJSONObject then begin
          cLog.lines.add('status.code: '+ TJSONObject(InnerValue).GetValue<string>('code'));
          cLog.lines.add('status.message: '+ TJSONObject(InnerValue).GetValue<string>('message'));
          cLog.lines.add('');
          cLog.lines.add(texto);
       end;
       result := TJSONObject(InnerValue).GetValue<string>('code');
     except
       result := '';
     end;
     }

     try
       // pega o array filesExpanded
       //cLog.Clear;
       JSONObject := JSONValue as TJSONObject;
       FilesArray := JSONObject.GetValue<TJSONArray>('filesExpanded');
       if (FilesArray <> nil) and (FilesArray.Count > 0) then begin
          // pega o primeiro item do array
          FileItem := FilesArray.Items[0] as TJSONObject;

          // pega o objeto apiStatus dentro dele
          ApiStatusObj := FileItem.GetValue<TJSONObject>('apiStatus');
          // agora pega o campo code
          if ApiStatusObj <> nil then begin
             CodeValue := ApiStatusObj.GetValue<string>('code');
             Mensagem  := UTF8Decode(ApiStatusObj.GetValue<string>('message'));
             cLog.Lines.Add('');
             cLog.Lines.Add('...Status');
             cLog.lines.add('   '+CodeValue+ ': '+Mensagem);
          end;
       end;
     finally
       JSONObject.Free;
     end;
end;


end.

