unit Service.APIDominio;

interface

uses
  System.SysUtils, System.Classes, System.DateUtils, Vcl.Dialogs, IdMultipartFormData, IdSSLOpenSSL, System.JSON, IdIOHandlerSocket, IdIOHandlerStack, IdHTTP, IdIOHandler, IdSSL, IniFiles, Forms,
  Vcl.StdCtrls;
  
type
  TServiceAPIDominio = class
    private
      FHTTP: TIdHTTP;
      FIdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
      FResponse: TJSONObject;
      FCaminhoArquivoToken: string;
      FAccessToken: string;
      FIntegrationKey: string;
      function tokenInvalido: Boolean;
      procedure obtemToken;
    public
      mXML: TStringList;
      procedure obtemKeyIntegracao(const AIntegrationKey: string);
      procedure enviaXMLAPI;
      constructor Create;
      destructor Destroy; override;
      
      var
        Url_auth
       ,Url_info
       ,Url_integration_key
       ,Url_post
       ,Client_Chave
       ,Client_id
       ,Client_secret
       ,Audience: string;
  end;

implementation

{ TServiceAPIDominio }

constructor TServiceAPIDominio.Create;
Var
   aINI: TIniFile;
begin
      aINI                := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaServidor.ini');
      Url_Auth            := aINI.ReadString('API_ThomsonReuters', 'URL_AUTH', '');
      Url_Info            := aINI.ReadString('API_ThomsonReuters', 'URL_INFO', '');
      Url_Integration_Key := aINI.ReadString('API_ThomsonReuters', 'URL_INTEGRATION_KEY', '');
      Url_Post            := aINI.ReadString('API_ThomsonReuters', 'URL_POST', '');
      Client_Chave        := aINI.ReadString('API_ThomsonReuters', 'CLIENT_CHAVE', 'GYBtKWR5QjSwVqtRNHM2inRJAVGlW0n1lRfPBSrnBjc');
      Client_Id           := aINI.ReadString('API_ThomsonReuters', 'CLIENT_ID', '');
      Client_Secret       := aINI.ReadString('API_ThomsonReuters', 'CLIENT_SECRET', '');
      Audience            := aINI.ReadString('API_ThomsonReuters', 'AUDIENCE', '');
      aini.free;
      
      mXML                                                := TStringList.Create;
      FCaminhoArquivoToken                                := ExtractFilePath(ParamStr(0)) + 'token.dm';
      FHTTP                                               := TIdHTTP.Create(nil);
      FIdSSLIOHandlerSocketOpenSSL                        := TIdSSLIOHandlerSocketOpenSSL.Create;
      FIdSSLIOHandlerSocketOpenSSL.SSLOptions.SSLVersions := [sslvSSLv23, sslvTLSv1_2];
      FHTTP.IOHandler                                     := FIdSSLIOHandlerSocketOpenSSL;
end;

destructor TServiceAPIDominio.Destroy;
begin
     if Assigned(FIdSSLIOHandlerSocketOpenSSL) then FreeAndNil(FIdSSLIOHandlerSocketOpenSSL);
     if Assigned(FHTTP) then FreeAndNil(FHTTP);
     if Assigned(mXML) then FreeAndNil(mXML);
     inherited;
end;

procedure TServiceAPIDominio.enviaXMLAPI;
var
  LPostFileStream: TIdMultiPartFormDataStream;
  LResult: string;
  i: integer;
begin
     obtemKeyIntegracao(Client_Chave);
     FHTTP.Request.Clear;
     FHTTP.Request.ContentType := 'multipart/form-data';
     FHTTP.Request.Accept      := 'application/json';
     FHTTP.Request.CustomHeaders.Clear;
     FHTTP.Request.CustomHeaders.Values['Authorization']     := 'Bearer ' +  FAccessToken;
     FHTTP.Request.CustomHeaders.Values['x-integration-key'] := FIntegrationKey;
     LPostFileStream := TIdMultiPartFormDataStream.Create;
     try
        for i := 0 to pred(mXML.Count) do begin
            LPostFileStream.AddFile('file[]', mXML[i], 'application/xml');
        end;
        LPostFileStream.AddFormField('query', '{"boxe/File": true}', 'UTF-8', 'application/json');
        LResult := FHTTP.Post(URL_POST, LPostFileStream);
        showmessage('Status: '+FHTTP.ResponseText);
     except
        showmessage('Falha no envio para API: '+FHTTP.ResponseText);
     end;
     LPostFileStream.Free;
end;

procedure TServiceAPIDominio.obtemToken;
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

procedure TServiceAPIDominio.obtemKeyIntegracao(const AIntegrationKey: string);
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
             LResult         := FHTTP.Post(URL_INTEGRATION_KEY,LJsonToSend);
             FResponse       := TJSONObject.ParseJSONValue(LResult) as TJSONObject;
             LIntegrationKey := FResponse.GetValue('integrationKey').Value;
             FIntegrationKey := LIntegrationKey;
          except 
             on E: Exception do
             begin
                 if E.InheritsFrom(EIdHTTPProtocolException) then
                    raise Exception.Create((E as EIdHTTPProtocolException).ErrorMessage)
                 else
                    raise Exception.Create(e.Message);
             end;    
          end;
     finally
          LJsonToSend.Free;
     end;
end;

function TServiceAPIDominio.tokenInvalido: Boolean;
var
  LArq: TextFile;
  LLinha: string;
  LExpiraData: TDateTime;
begin
     LExpiraData := IncDay(Now,-5);
     if FileExists(FCaminhoArquivoToken) then begin
        AssignFile(LArq, FCaminhoArquivoToken);
        Reset(LArq);
        while (not eof(LArq)) do begin
              Readln(LArq, LLinha);
              if Pos('access_token',LLinha) <>0 then FAccessToken := Copy(LLinha,14);
              if Pos('expire',LLinha) <> 0 then LExpiraData := StrToDateTime(Copy(LLinha,8));
        end;
        CloseFile(LArq);
     end;
     Result := (LExpiraData) < (Now)
end;


end.
