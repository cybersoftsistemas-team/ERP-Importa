unit frmCadastro_NCMAtualizaTEC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OleCtrls, SHDocVw, Grids, Vcl.StdCtrls, Vcl.ExtCtrls, IdIOHandler, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdHTTP, HTTPApp, Funcoes, Vcl.ComCtrls, MaskUtils, IdIOHandlerSocket, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient;

type
  TCadastro_NCMAtualizaTEC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bSair: TButton;
    Grade: TStringGrid;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Progresso: TProgressBar;
    bExec: TButton;
    lNCM: TLabel;
    cBrowser: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure PesquisaNCM;
    procedure cBrowserDocumentComplete(Sender: TObject;const pDisp: IDispatch; var URL: OleVariant);
    procedure GradeDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure bExecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_NCMAtualizaTEC: TCadastro_NCMAtualizaTEC;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TCadastro_NCMAtualizaTEC.FormShow(Sender: TObject);
begin
//      cBrowser.Hide;

      with Grade do begin
           ColWidths[0] := 70;
           ColWidths[1] := 70;
           ColWidths[2] := 723;
           ColWidths[3] := 55;
           ColWidths[4] := 55;
           ColWidths[5] := 55;
           ColWidths[6] := 55;
           ColWidths[7] := 55;

           Cells[0,0] := 'NCM';
           Cells[1,0] := 'NALADI';
           Cells[2,0] := 'DESCRIÇÃO';
           Cells[3,0] := 'II';
           Cells[4,0] := 'IPI';
           Cells[5,0] := 'PIS';
           Cells[6,0] := 'COFINS';
           Cells[7,0] := 'GATT';
      end;
end;

procedure TCadastro_NCMAtualizaTEC.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Cadastro_NCMAtualizaTEC.Release;
     Cadastro_NCMAtualizaTEC := nil;
end;

procedure TCadastro_NCMAtualizaTEC.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TCadastro_NCMAtualizaTEC.PesquisaNCM;
var
  PostData,
  Headers          : OleVariant;
  EncodedDataString: string;
  i                : Integer;
begin
(*
      with dmFiscal do begin
           NCM.First;
           while not NCM.Eof do begin
                 EncodedDataString := 'ncm='+HTTPEncode(FormatMaskText('####.##.##;0', dmFiscal.NCMNCM.AsString));
                 PostData          := VarArrayCreate([0, length(EncodedDataString)-1], varByte);

                 for i := 1 to length(EncodedDataString) do begin
                     PostData[i-1] := ord(EncodedDataString[i]);
                 end;

                 Headers := 'Content-type: application/x-www-form-urlencoded'#10#13;

                 if Dados.Usuarios.FieldByName('Sistema_Externo').AsString = 'TECWIN' then begin
                    cBrowser.Navigate('http://www.aduaneiras.com.br/Conta/Login',EmptyParam, EmptyParam, PostData, Headers);  // Parameters 2 and 3 are not used, thus EmptyParam is passed.
                 end;
                 if Dados.Usuarios.FieldByName('Sistema_Externo').AsString = 'INFOCONSULT' then begin
                    cBrowser.Navigate('http://www.infoconsult.com.br/tec2015/site/login',EmptyParam, EmptyParam, PostData, Headers); // Parameters 2 and 3 are not used, thus EmptyParam is passed.
                 end;

                 //cBrowser.Navigate('//www.infoconsult.com.br/tecweb/iframe_tec.php',EmptyParam, EmptyParam, PostData, Headers);

                 // Fica em loop até que a pagina de consulta do webbrowser seja carregada completamente.
                 // Isso é indicado na tag do componente.
                 lNCM.Caption := 'Consultando NCM: '+ FormatMaskText('####.##.##;0', dmFiscal.NCMNCM.AsString);
                 i := 0;
                 repeat
                       inc(i);
                       application.ProcessMessages;
                 Until cBrowser.Tag = 1;

                 cBrowser.Tag := 0;

                 NCM.Next;
                 Progresso.Position := Progresso.Position + 1;
           end;
      end;
*)
      with dmFiscal do begin
           NCM.First;
           while not NCM.Eof do begin
                 EncodedDataString := 'ncm='+HTTPEncode(FormatMaskText('####.##.##;0', dmFiscal.NCMNCM.AsString));
                 PostData          := VarArrayCreate([0, length(EncodedDataString)-1], varByte);

                 for i := 1 to length(EncodedDataString) do begin
                     PostData[i-1] := ord(EncodedDataString[i]);
                 end;

                 Headers := 'Content-type: application/x-www-form-urlencoded'#10#13;

                 if Dados.Usuarios.FieldByName('Sistema_Externo').AsString = 'TECWIN' then begin
                    //cBrowser.Navigate('http://www.aduaneiras.com.br/Conta/Login',EmptyParam, EmptyParam, PostData, Headers);  // Parameters 2 and 3 are not used, thus EmptyParam is passed.
                    cBrowser.Navigate('https://tecwinweb.aduaneiras.com.br/Modulos/Usuario/Login.aspx?ReturnUrl=%2fModulos%2fUsuario',EmptyParam, EmptyParam, PostData, Headers);  // Parameters 2 and 3 are not used, thus EmptyParam is passed.
                 end;
                 if Dados.Usuarios.FieldByName('Sistema_Externo').AsString = 'INFOCONSULT' then begin
                    cBrowser.Navigate('http://www.infoconsult.com.br/tec2015/site/login',EmptyParam, EmptyParam, PostData, Headers); // Parameters 2 and 3 are not used, thus EmptyParam is passed.
                 end;

                 //cBrowser.Navigate('//www.infoconsult.com.br/tecweb/iframe_tec.php',EmptyParam, EmptyParam, PostData, Headers);

                 // Fica em loop até que a pagina de consulta do webbrowser seja carregada completamente.
                 // Isso é indicado na tag do componente.
                 lNCM.Caption := 'Consultando NCM: '+ FormatMaskText('####.##.##;0', dmFiscal.NCMNCM.AsString);
//                 i := 0;
                 repeat
//                       inc(i);
                       application.ProcessMessages;
                 Until cBrowser.Tag = 1;

                 cBrowser.Tag := 0;

                 NCM.Next;
                 Progresso.Position := Progresso.Position + 1;
           end;
      end;
end;

procedure TCadastro_NCMAtualizaTEC.cBrowserDocumentComplete(Sender: TObject; const pDisp: IDispatch; var URL: OleVariant);
var
  CurWebrowser,
  TopWebBrowser: IWebBrowser;
  i,
  z:Integer;
  vTables,
  vRows,
  vCols: Variant;
begin
      CurWebrowser  := pDisp as IWebBrowser;
//      TopWebBrowser := cBrowser.DefaultInterface;

      if CurWebrowser = TopWebBrowser then begin
         vTables := cBrowser.OleObject.Document.getElementsByTagName('table');
         if vTables.Length > 0 then begin
            vRows := vTables.Item(1).getElementsByTagName('tr');
            for i := 1 to vRows.Length -1 do begin
                vCols := vRows.Item(i).getElementsByTagName('td');
                if Length(vCols.Item(1).innerText) = 10 then begin
                   for z := 0 to vCols.Length -1 do begin
                       if z > 0 then begin
                          Grade.Cells[z-1, Grade.RowCount-1] := vCols.Item(z).innerText;
                       end;
                   end;
                   Grade.RowCount := Grade.RowCount + 1;
                end;
            end;
         end;
      end;

      // Posiciona o grid na NCM do cadastro.
      with Grade do begin
           for i := 1 to RowCount-1 do begin
               Row := i;
               if ApenasNumeros(Cells[0, i]) = dmFiscal.NCMNCM.AsString then break;
           end;
      end;
      cBrowser.Tag := 1;
end;

procedure TCadastro_NCMAtualizaTEC.GradeDrawCell(Sender: TObject;ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
//var
//    Texto : string;
//    LarguraT : integer;
//    LarguraC : integer;
begin
{
      if (ARow = 0) then begin
         Texto    := Grade.Cells[ACol, ARow];
         LarguraT := Canvas.TextWidth(texto) div 2;
         LarguraC := Grade.ColWidths[ACol] div 2;
         Grade.Canvas.Font.Color := clBlack;
         Grade.Canvas.Font.Style := [fsBold];
         Grade.Canvas.FillRect(Rect);
         Grade.Canvas.TextOut(Rect.Left-2+LarguraC-LarguraT, Rect.Top+3, texto)
      end;
      if (ARow > 0)  then begin
         Grade.Canvas.Font.Color  := clBlack;
         Grade.Canvas.Brush.Color := clWhite;
         if (odd(arow)) then begin
            Grade.Canvas.Font.Color  := clBlack;
            Grade.Canvas.Brush.Color := $00FFEAEA;
         end;
         Grade.Canvas.FillRect(Rect);
         if ACol > 2 then begin
            if Trim(Grade.Cells[acol,arow]) <> '' then
               if ApenasNumeros(Grade.Cells[acol,arow]) <> '' then
                  Grade.Canvas.TextOut(Rect.Left,Rect.Top+3, PadR(FormatFloat(',##0.00%', StrtoFloat(Grade.Cells[acol,arow])), 12));
         end else begin
            Grade.Canvas.TextOut(Rect.Left+2,Rect.Top+3,Grade.Cells[acol,arow]);
         end;
      end;
}
end;

procedure TCadastro_NCMAtualizaTEC.bExecClick(Sender: TObject);
var
  EncodedDataString: string;
  PostData: OleVariant;
  Headers: OleVariant;
  i: integer;
begin
      Progresso.Max      := dmFiscal.NCM.RecordCount;
      Progresso.Position := 0;

      Grade.RowCount := 2;
      for i := 0 to 7 do begin
          Grade.Cells[i,1] := '';
      end;
      // First, create a URL encoded string of the data.
//      EncodedDataString := 'LoginForm[username]='+HTTPEncode(Dados.Usuarios.FieldByName('Sistema_ExternoUsuario').AsString)+'&'+
//                           'LoginForm[password]='+HTTPEncode(Dados.Usuarios.FieldByName('Sistema_ExternoSenha').AsString);
      EncodedDataString := 'formLogin[txtEmail]='+HTTPEncode(Dados.Usuarios.FieldByName('Sistema_ExternoUsuario').AsString)+'&'+
                           'formLogin[txtSenha]='+HTTPEncode(Dados.Usuarios.FieldByName('Sistema_ExternoSenha').AsString);

      PostData := VarArrayCreate([0, length(EncodedDataString)-1], varByte);

      // Now, move the Ordinal value of the character into the PostData array.
      for i := 1 to length(EncodedDataString) do begin
          PostData[i-1] := ord(EncodedDataString[i]);
      end;

      Headers := 'Content-type: application/x-www-form-urlencoded'#10#13;

      // Efetua o login no site de pesquisa.
      if Dados.Usuarios.FieldByName('Sistema_Externo').AsString = 'TECWIN' then begin
//         cBrowser.Navigate('https://tecwinweb.aduaneiras.com.br/Modulos/Usuario/Login.aspx?ReturnUrl=%2f',EmptyParam, EmptyParam, PostData, Headers);  // Parameters 2 and 3 are not used, thus EmptyParam is passed.
         cBrowser.Navigate('https://tecwinweb.aduaneiras.com.br/Modulos/Usuario/Login.aspx?ReturnUrl=%2fModulos%2fUsuario',EmptyParam, EmptyParam, PostData, Headers);  // Parameters 2 and 3 are not used, thus EmptyParam is passed.
      end;
      if Dados.Usuarios.FieldByName('Sistema_Externo').AsString = 'INFOCONSULT' then begin
         cBrowser.Navigate('http://www.infoconsult.com.br/tec2015/site/login',EmptyParam, EmptyParam, PostData, Headers); // Parameters 2 and 3 are not used, thus EmptyParam is passed.
      end;

      // Efetua a consulta no site após logar.
      PesquisaNCM;
end;



end.
