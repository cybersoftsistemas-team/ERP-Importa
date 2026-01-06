unit frmConsultarNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, ComObj, Buttons, Vcl.ExtCtrls, Grids, ACBrBase,
  ACBrDFe, ACBrNFe;


type
  TConsultarNFE = class(TForm)
    SaveDialog1: TSaveDialog;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    btGravar: TBitBtn;
    btEnviaEvento: TBitBtn;
    btGravarEvento: TBitBtn;
    edResultado: TEdit;
    GroupBox4: TGroupBox;
    SaveDialog2: TSaveDialog;
    Button1: TButton;
    cUltimoNSU: TEdit;
    Label1: TLabel;
    GroupBox7: TGroupBox;
    sg: TStringGrid;
    Button2: TButton;
    rtfListaNFe: TMemo;
    rtfRetWS: TMemo;
    rtfDadosMsg: TMemo;
    Button3: TButton;
    ACBrNFe1: TACBrNFe;
    procedure btGravarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btEnviaEventoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btGravarEventoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sgSelectCell(Sender: TObject; ACol, ARow: Integer;var CanSelect: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    //procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultarNFE: TConsultarNFE;

//--------------------------------------------------------------------------------------
//          DECLARAÇÃO DE PARÂMETROS DE ENTRADA DA FUNCIONALIDADE
//--------------------------------------------------------------------------------------
 siglaWS                        // sigla do WS: AN para Ambiente Nacional ou RS
,siglaUF                        // sigla da UF do destinatário
,nomeCertificado                // campo assunto do certificado digital
,versao                         // versão= 1.01
,CNPJ: widestring;              // CNPJ do desinatário

 tipoAmbiente                   // Ambiente: 1-Produção e 2-Homologação
,indNFe                         // 0-todas as notas,
                                // 1-somente as que não tiveram manifestação concluisva
                                // 2-todas as que tiveram manifestação

,indEmi: integer;               // 0-todas as NF-e,
                                // 1-somente as NF-e que não tenham destinatário/remetente
                                //   com a mesma raiz CNPJ

ultNSU                          // último NSU recebido pela empresa
,proxy                          // IP e porta do proxy, informar se existir proxy
,usuario                        // usuario do proxy
,senha                          // senha do proxy
,licenca                        // licenca de uso, necessário informar para produção
//--------------------------------------------------------------------------------------
//          DECLARAÇÃO DE PARÂMETROS DE RETORNO DA FUNCIONALIDADE
//--------------------------------------------------------------------------------------
,msgDados                       // retorna o XML enviado ao WS
,msgRetWS                       // retorna o XML de resposta do WS
,msgResultado                   // retorna o literal do resultado da chamada
,mAXnsu
,ChaveNFE
,dhResp: widestring;            // retorna a data e hora da resposta
cStat:integer;                  // retorna o código do resultado da chamada
indCont, QtdeDocs: integer;               // retorna o indicador de continuação
                                //   0-não existem mais NF-e
                                //   1-existem mais NF-e

ultNSURecebido,
ultNSUConsultado: widestring;   // retorna o Último NSU pesquisado na SEFAZ.
                                // Se for o caso, o solicitante pode continuar a consulta
                                // a partir deste NSU para obter novos resultados.

txtNFe: widestring;             // retorna o TXT com as informações das notas localizadas
txtNFetemp: widestring;         // string de trabalho


implementation

uses frmDados, frmMenu_Principal, frmMostraXML;



{$R *.dfm}

procedure TConsultarNFE.btGravarClick(Sender: TObject);
var
  Fsaida: TextFile;
begin
  if msgretWS <> '' then begin
     SaveDialog1.Title := 'Salvar a Resposta do Web Service';
     if SaveDialog1.Execute then begin
        AssignFile(Fsaida, SaveDialog1.Filename);
        Rewrite(Fsaida);
        Write(Fsaida, msgretWS);
        CloseFile(Fsaida);
     end;
  end else
     MessageDlg( 'Não existe Resposta do Web Service para gravar...', mtInformation, [mbOk], 0);
end;

procedure TConsultarNFE.btSairClick(Sender: TObject);
begin
     close;
end;

procedure TConsultarNFE.btEnviaEventoClick(Sender: TObject);
var
    Util         : OleVariant;              // declarar a interface da DLL
    _resultado,
    resposta     : integer;
    _msgResultado: widestring;
begin
     with Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          siglaWS          := 'AN';
          siglaUF          := EmpresasEstado.AsString;
          tipoAmbiente     := EmpresasAmbiente.AsInteger;
          nomeCertificado  := EmpresasCertificado_Digital.AsString;
          versao           := '1.01';
          msgDados         := '';
          msgRetWS         := '';
          cStat            := 0;
          msgResultado     := '';
          CNPJ             := EmpresasCNPJ.AsString;
          indNFe           := 0;
          indEmi           := 1;
          ultNSU           := '0';
          proxy            := '';
          usuario          := '';
          senha            := '';
          licenca          := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
          dhResp           := '';
          indCont          := 1;
          ultNSUConsultado := '0';
          txtNFe           := '';
          _resultado       := 0;
          _msgResultado    := '';
          Util             := CreateOleObject('NFe_Util_2G.util');

          Screen.Cursor := CrHourGlass;

          Repeat
                // Loop para consultar as notas fiscais destinadas, como o WS só percorre 50 mil registros do BD da Receita Federal é necessário repetira a consulta, atualizando
                // o ultNSUConsultado enquando o WS devolver indCont = 1
                txtNFeTemp := Util.ConsultaNFDest(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, versao, msgDados, msgRetWS, cStat, msgResultado, CNPJ, indNFe, indEmi, ultNSU, dhResp, indCont, ultNSUConsultado, proxy, usuario, senha, licenca);

                if cStat = 138 then begin             // 138	Documento localizado para o destinatário
                   txtNFe := txtNFe + txtNFeTemp;     // acumula txt - a implementar - caso o usuário queira trabalhar com o XML  - tratar o msgRetWS que tem o XML com a lista de NF-e e eventos
                end else begin
                  if cStat > 1000 then begin
                     MessageDlg( 'Falha na chamada do WS...'+#13+#13+msgResultado, mtError, [mbOk], 0);
                     indCont := 0;                    // para sair do loop
                  end else begin
                    if cStat = 656 then begin         // trata consumo indevido
                       resposta := MessageDlg( 'Ocorreu consumo indevido, necessário aguardar 3 minutos, deseja aguardar 3 minutos ou não? ...'+#13+#13 +msgResultado, mtError, [mbYes,mbNo], 0);
                       if resposta = mrYes then
                          Sleep(180000)
                       else
                          begin
                          MessageDlg( 'Pedido de consulta de NF-e destinadas rejeitada pelo WS...'+#13+#13 +msgResultado, mtError, [mbOk], 0);
                          indCont := 0;               // para sair do loop
                           end;
                    end else begin
                       if cStat <> 137 then begin     // 137	Nenhum documento localizado para o destinatário	WS	-
                          MessageDlg( 'Pedido de consulta de NF-e destinadas rejeitada pelo WS...'+#13+#13 +msgResultado, mtError, [mbOk], 0);
                          indCont := 0;               // para sair do loop
                       end;
                    end;
                  end;
                end;
                
                ultNSU := ultNSUConsultado;           // atualiza ultNSU com o ultNSUConsultado para persistir na pesquisa
          until indCont <> 1;

          Screen.Cursor := CrDefault;

          rtfDadosMsg.Text       := Util.IdentaXML(msgDados,_resultado, _msgResultado);
          rtfRetWs.Text          := Util.IdentaXML(msgRetWS,_resultado, _msgResultado);
          edResultado.Text       := msgResultado;
          btGravar.SetFocus;

          // 137 Nenhum documento localizado para o destinatário WS.
          // 138 Documento localizado para o destinatário.
          if length(txtNFe) > 0 then begin
              rtfListaNFe.Text :=  txtNfe;
          end;
     end;
end;

procedure TConsultarNFE.FormCreate(Sender: TObject);
begin
  proxy             := '';
  usuario           := '';
  senha             := '';
end;

procedure TConsultarNFE.btGravarEventoClick(Sender: TObject);
var
   Fsaida: TextFile;
begin
     if txtNFe <> '' then begin
        SaveDialog1.Title := 'Salvar txtNFe';
        if SaveDialog2.Execute then begin
           AssignFile(Fsaida, SaveDialog2.Filename);
           Rewrite(Fsaida);
           Write(Fsaida, txtNFe);
           CloseFile(Fsaida);
        end;
     end else begin
        MessageDlg( 'Não existe lista de NFe para gravar...', mtInformation, [mbOk], 0);
     end;
end;

/// Consulta NF-e destinadas
/// http://flexdocs.com.br/guianfe/WS.distDFe.distNSU.html
procedure TConsultarNFE.Button1Click(Sender: TObject);
(*
var
  Util: OleVariant;              // declarar a interface da DLL
  _resultado: integer;
  _msgResultado:widestring;
  i, resposta: integer;
  linha:TStringList;
begin
      // INICIALIZAÇÃO DE PARÂMETROS.
      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           siglaWS          := 'AN';
           siglaUF          := '42';
           //tipoAmbiente     := EmpresasAmbiente.AsInteger;
           tipoAmbiente     := 1;
           nomeCertificado  := EmpresasCertificado_Digital.AsString;
           versao           := '4.00';
           msgDados         := '';
           msgRetWS         := '';
           cStat            := 0;
           msgResultado     := '';
           CNPJ             := EmpresasCNPJ.AsString;
           indNFe           := 0;
           indEmi           := 1;
           ultNSU           := '0';
           proxy            := '';
           usuario          := '';
           senha            := '';
           licenca          := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
           dhResp           := '';
           indCont          := 1;
           ultNSUConsultado := '0';
           maxNSU           := '';
           txtNFe           := '';
           _resultado       := 0;
           _msgResultado    := '';
           QtdeDocs         := 0;

           Util := CreateOleObject('NFe_Util_2G.util');

           Screen.Cursor := CrHourGlass;
           Repeat
                // Loop para consultar as notas fiscais destinadas.
                // é necessário repetira a consulta, atualiazando o ultNSURecebido, até que o ultNSU >= MaxNSU.
                txtNFeTemp := Util.distNSU(siglaWS, tipoAmbiente, nomeCertificado, versao, msgDados, msgRetWS, cStat, msgResultado, CNPJ, SiglaUF, ultNSUConsultado, versao, dhResp, ultNSU, maxNSU, qtdeDocs, proxy, usuario, senha, licenca);
                if cStat > 1000 then begin
                   MessageDlg( 'Falha na chamada do WS...'+#13+#13+msgResultado, mtError, [mbOk], 0);
                   ultNSU := maxNSU;
                end else begin
                   // trata consumo indevido.
                   if cStat = 656 then begin
                      resposta := MessageDlg( 'Ocorreu consumo indevido, necessário aguardar 3 minutos, deseja aguardar 3 minutos ou não? ...'+#13+#13 +msgResultado, mtError, [mbYes,mbNo], 0);
                      if resposta = mrYes then
                         Sleep(180000)
                      else begin
                         MessageDlg( 'Interrompendo consulta de DF-e...'+#13+#13 +msgResultado, mtError, [mbOk], 0);
                         ultNSU := maxNSU;
                      end;
                   end else
                      txtNFe := txtNFe + txtNFeTemp;        // acumula txt
                end;
                ultNSURecebido := ultNSU;                  // atualiza o ultNSURecebido para continuar a busca a partir do ultimo NSU (ultNSU)
           until ultNSU >= maxNSU;

           Screen.Cursor := CrDefault;

           rtfDadosMsg.Text       := Util.IdentaXML(msgDados,_resultado, _msgResultado);
           rtfRetWs.Text          := Util.IdentaXML(msgRetWS,_resultado, _msgResultado);
           //cUltimoNSU.Text  := ultNSURecebido;  // atualiza último NSU Recebido
           //edResultado.Text       := msgResultado;
           btGravarEvento.Enabled := false;
           btGravar.Enabled       := true;

           btGravar.SetFocus;

           if length(txtNFe) > 0 then begin
              rtfListaNFe.Text := txtNFe;

              linha           := TStringList.Create;
              linha.Delimiter := chr(13);
              linha.Text      := txtNFe;
              {
              for i:=0 to linha.Count - 1 do begin
                  sg.RowCount := sg.RowCount + 1;
                  sg.Cells[0,i + 1] := copy(linha[i],1,15);                     // posições:  1 a  15 - NSU
                  sg.Cells[1,i + 1] := copy(linha[i],17,35);                    // posições: 17 a  51 - SchemaXML
                  sg.Cells[2,i + 1] := copy(linha[i],53,length(linha[i])-52);   // posições: 53 a fim - XML
              end;

              sg.FixedCols := 1;
              sg.FixedRows := 1;
              }
           end;
      end;
end;
*)

/// Consulta NF-e destinadas
/// http://flexdocs.com.br/guianfe/WS.distDFe.distNSU.html
var
  Util: OleVariant;              // declarar a interface da DLL
  _resultado: integer;
  _msgResultado:widestring;
  i, resposta: integer;
  linha:TStringList;
begin
      // INICIALIZAÇÃO DE PARÂMETROS.
      with dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           siglaWS          := 'AN';
           siglaUF          := '42';
           //tipoAmbiente     := EmpresasAmbiente.AsInteger;
           tipoAmbiente     := 1;
           nomeCertificado  := EmpresasCertificado_Digital.AsString;
           versao           := '4.00';
           msgDados         := '';
           msgRetWS         := '';
           cStat            := 0;
           msgResultado     := '';
           CNPJ             := EmpresasCNPJ.AsString;
           indNFe           := 0;
           indEmi           := 1;
           ultNSU           := '0';
           proxy            := '';
           usuario          := '';
           senha            := '';
           licenca          := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
           dhResp           := '';
           indCont          := 1;
           ultNSUConsultado := '0';
           maxNSU           := '';
           txtNFe           := '';
           _resultado       := 0;
           _msgResultado    := '';
           QtdeDocs         := 0;
           ultNSURecebido  := cUltimoNSU.Text;
           txtNFe          := '';
           txtNFetemp      := '';
           _resultado      := 0;
           _msgResultado   := '';

           Util := CreateOleObject('NFe_Util_2G.util');

           //  chama funcionalidade
           Screen.Cursor := CrHourGlass;

           Repeat
               // Loop para consultar as notas fiscais destinadas.
               // é necessário repetira a consulta, atualiazando o ultNSURecebido, até que o ultNSU >= MaxNSU.
               txtNFeTemp := Util.distNSU(siglaWS, tipoAmbiente, nomeCertificado, versao, msgDados, msgRetWS, cStat, msgResultado, CNPJ, SiglaUF, ultNSURecebido, versao, dhResp, ultNSU, maxNSU, qtdeDocs, proxy, usuario, senha, licenca);
               if cStat > 1000 then begin
                  MessageDlg( 'Falha na chamada do WS...'+#13+#13+msgResultado, mtError, [mbOk], 0);
                  ultNSU := maxNSU;
               end else
                  // trata consumo indevido,
                  if cStat = 656 then begin
                     resposta := MessageDlg( 'Ocorreu consumo indevido, necessário aguardar 3 minutos, deseja aguardar 3 minutos ou não? ...'+#13+#13 +msgResultado, mtError, [mbYes,mbNo], 0);
                     if resposta = mrYes then
                        Sleep(180000)
                     else begin
                        MessageDlg( 'Interrompendo consulta de DF-e...'+#13+#13 +msgResultado, mtError, [mbOk], 0);
                        ultNSU := maxNSU;
                     end;
                  end else
                     txtNFe := txtNFe + txtNFeTemp;       // acumula txt
                ultNSURecebido := ultNSU;                 // atualiza o ultNSURecebido para continuar a busca a partir do ultimo NSU (ultNSU)
           until ultNSU >= maxNSU;

           Screen.Cursor := CrDefault;

           rtfDadosMsg.Text       := Util.IdentaXML(msgDados,_resultado, _msgResultado);
           rtfRetWs.Text          := Util.IdentaXML(msgRetWS,_resultado, _msgResultado);
           cUltimoNSU.Text        := ultNSURecebido;  // atualiza último NSU Recebido
           edResultado.Text       := msgResultado;
           btGravarEvento.Enabled := false;
           btGravar.Enabled       := true;

           btGravar.SetFocus;

           if length(txtNFe) > 0 then begin
              rtfListaNFe.Text       := txtNFe;
              btGravarEvento.Enabled := true;

              linha           := TStringList.Create;
              linha.Delimiter := chr(13);
              linha.Text      := txtNFe;

              for i:=0 to linha.Count - 1 do begin
                  sg.RowCount := sg.RowCount + 1;
                  sg.Cells[0,i + 1] := copy(linha[i],1,15);                     // posições:  1 a  15 - NSU
                  sg.Cells[1,i + 1] := copy(linha[i],17,35);                    // posições: 17 a  51 - SchemaXML
                  sg.Cells[2,i + 1] := copy(linha[i],53,length(linha[i])-52);   // posições: 53 a fim - XML
              end;

              sg.FixedCols := 1;
              sg.FixedRows := 1;

           end;
      end;
end;

procedure TConsultarNFE.sgSelectCell(Sender: TObject; ACol, ARow: Integer;var CanSelect: Boolean);
var
   Util: OleVariant;
   xml_Identado,
   _msgResultado,
   xml_tipo: widestring;
   _resultado: integer;
begin
    if ARow > 0 then begin
       Util := CreateOleObject('NFe_Util_2G.util');
       xml_identado := Util.IdentaXML(sg.Cells[2,ARow],_resultado, _msgResultado);
       if _resultado = 7311 then
          xml_identado := sg.Cells[2,ARow];  // XML não identado

       xml_tipo := sg.Cells[1,ARow];
       with TformMostraXML.Create(self,xml_tipo , xml_identado) do begin
            ShowModal;
            Free;
       end;
    end;

end;

// WS de Download de NF-e por chave de acesso da NF-e, requer a prévia confirmação da operação ou com ciência da operação
// http://www.flexdocs.com.br/guiaNFe/WS.distDFe.consChNFe.html
{
procedure TFormWSDownloadWS.btEnviaEventoClick(Sender: TObject);
var
   Util: OleVariant;              // declarar a interface da DLL
   _resultado: integer;
   _msgResultado:widestring;
begin
    // INICIALIZAÇÃO DE PARÂMETROS
    siglaWS         := cbWS.Text;
    tipoAmbiente    := cbAmbiente.ItemIndex + 1;
    nomeCertificado := edNome.Text;
    versao          := cbVersao.Text;
    msgDados        := '';
    msgRetWS        := '';
    cStat           := 0;
    msgResultado    := '';
    CNPJDest        := edCNPJDest.Text;
    chaveNFe        := edChaveNFe.Text;
    verAplic        := '';
    NSUXML          := '';
    schemaXML       := '';
    proxy           := '';
    usuario         := '';
    senha           := '';
    licenca         := edLicenca.Text;
    procNFe         := '';

    // variável de trabalho.
    _resultado:=0;
    _msgResultado:='';

    // instancia classe.
    Util := CreateOleObject('NFe_Util_2G.util');

    // chama funcionalidade.
    Screen.Cursor := CrHourGlass;

    procNFe := Util.consChNFe(siglaWS, tipoAmbiente, nomeCertificado, versao, msgDados, msgRetWS, cStat, msgResultado, CNPJDest, chaveNFe, verAplic, NSUXML, schemaXML, proxy, usuario, senha, licenca);
    Screen.Cursor := CrDefault;

    rtfDadosMsg.Text := Util.IdentaXML(msgDados,_resultado, _msgResultado);
    rtfRetWs.Text := Util.IdentaXML(msgRetWS,_resultado, _msgResultado);
    edResultado.Text := msgResultado;
    GroupBox1.Visible := true;
    GroupBox2.Visible := true;
    GroupBox3.Visible := true;
    GroupBox4.Visible := false;
    btGravarEvento.Enabled := false;
    btGravar.Enabled := true;
    btGravar.SetFocus;

    // 137 - Nenhum documento localizado, no caso do destinatário, o WS só disponibiliza o download se houver confirmação da operação ou ciência da operação (manifestação do destinatário).
    // 138 - Documento localizado
    if cStat = 138 then begin
       rtfProcNFe.Text :=  procNFe;
       GroupBox4.Visible := true;
       btGravarEvento.Enabled := true;
       MessageDlg( msgResultado, mtInformation, [mbOk], 0);
    end else
       if cStat < 1000 then
          MessageDlg( 'Pedido de download de NF-e rejeitada pelo WS...'+#13+#13 +msgResultado, mtError, [mbOk], 0)
       else
          MessageDlg( 'Falha na chamada do WS...'+#13+#13+msgResultado, mtError, [mbOk], 0);
end;
}

procedure TConsultarNFE.Button2Click(Sender: TObject);
var
  Util: OleVariant;
begin
      Screen.Cursor := crHourGlass;
      with dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           siglaWS          := 'AN';
           //tipoAmbiente     := EmpresasAmbiente.AsInteger;
           tipoAmbiente     := 1;
           nomeCertificado  := EmpresasCertificado_Digital.AsString;
           versao           := '4.00';
           msgDados         := '';
           msgRetWS         := '';
           cStat            := 0;
           msgResultado     := '';
           CNPJ             := EmpresasCNPJ.AsString;
           ChaveNFE         := '32191109632372000105550010000007221356152553';
           proxy            := '';
           usuario          := '';
           senha            := '';
           licenca          := Trim(Dados.EmpresasLicensa_NFe_Util.Value);

           Util := CreateOleObject('NFe_Util_2G.util');
           rtfListaNFe.Text := Util.ConsChNFe( siglaWS
                                              ,TipoAmbiente
                                              ,NomeCertificado
                                              ,Versao
                                              ,msgDados
                                              ,msgRetWS
                                              ,cStat
                                              ,msgResultado
                                              ,CNPJ
                                              ,ChaveNFe
                                              ,'1.0'                 // out string verAplic
                                              ,''     // out string NSUXML
                                              ,'procNFe_v3.10.xsd'   // out string schemaXML
                                              ,proxy
                                              ,usuario
                                              ,senha
                                              ,licenca );

          rtfRetWs.Text    := msgRetWS;
          rtfDadosMsg.Text := msgDados;
          rtfListaNfe.Lines.SaveToFile('C:\Temp\NFS Baixadas\NF.XML');
      end;
      Screen.Cursor := crDefault;
end;

procedure TConsultarNFE.Button3Click(Sender: TObject);
var
    cUFAutor, CNPJ, ultNSU, ANSU: string;
begin
      cUFAutor := '42';
      CNPJ     := '08947074000303';
      ultNSU   := '';
      ANSU     := '';
      ACBrNFe1.DistribuicaoDFe( StrToInt(cUFAutor)
                               ,CNPJ
                               ,ultNSU
                               ,ANSU );

      rtfListaNFe.Lines.Text := ACBrNFe1.WebServices.DistribuicaoDFe.RetWS;
      rtfRetWS.Lines.Text    := ACBrNFe1.WebServices.DistribuicaoDFe.RetornoWS;

      //LoadXML(ACBrNFe1.WebServices.DistribuicaoDFe.RetWS, WBResposta);
end;

{
procedure TConsultarNFE.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
     ACBrUtil.WriteToTXT(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml', ACBrUtil.ConverteXMLtoUTF8(RetWS), False, False);
     MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml');
     if ACBrNFe1.NotasFiscais.Count > 0 then MemoResp.Lines.Add('Empresa: ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome);
end;
}

end.
