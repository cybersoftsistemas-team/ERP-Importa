unit frmLeitorSISCOMEXWEB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, MaskUtils,ComCtrls, Grids, Funcoes, OleCtrls, Buttons,
  SHDocVw;

type
  TLeitorSISCOMEXWEB = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cSituacao: TEdit;
    cURFDespacho: TEdit;
    cFUNDAP: TRadioGroup;
    cDataRegistro: TEdit;
    cModalidadeDesp: TEdit;
    cTipoDeclaracao: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cImportador: TEdit;
    StaticText6: TStaticText;
    cNome: TEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    cEndereco: TEdit;
    StaticText9: TStaticText;
    cResponsavel: TEdit;
    StaticText10: TStaticText;
    cOperacao: TEdit;
    StaticText11: TStaticText;
    cFatura: TEdit;
    StaticText13: TStaticText;
    cNomeResponsavel: TEdit;
    StaticText12: TStaticText;
    cDataDesembaraco: TEdit;
    StaticText14: TStaticText;
    cRomaneio: TEdit;
    OpenDialog1: TOpenDialog;
    StaticText16: TStaticText;
    cConhecimentoCarga: TEdit;
    StaticText17: TStaticText;
    cProcessoVinculado: TEdit;
    StaticText18: TStaticText;
    cProcedencia: TEdit;
    StaticText19: TStaticText;
    cURFEntrada: TEdit;
    StaticText21: TStaticText;
    cPesoBruto: TEdit;
    StaticText20: TStaticText;
    cDataChegada: TEdit;
    StaticText22: TStaticText;
    cPesoLiquido: TEdit;
    StaticText23: TStaticText;
    cRecintoAduaneiro: TEdit;
    cSetor: TEdit;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    cArmazem: TEdit;
    cQuantidade: TEdit;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    cNomeCaracter: TEdit;
    cMultiModal: TRadioGroup;
    TabSheet4: TTabSheet;
    gAdicoes: TStringGrid;
    StaticText35: TStaticText;
    cViaTransporte: TEdit;
    StaticText36: TStaticText;
    cTransportador: TEdit;
    StaticText37: TStaticText;
    cNomeEmbarcacao: TEdit;
    cManifestoCarga: TEdit;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    cLocalEmbarque: TEdit;
    cDataEmbarque: TEdit;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    cTipoConhecimento: TEdit;
    StaticText30: TStaticText;
    cPrepaid: TEdit;
    StaticText31: TStaticText;
    cTotalDolares: TEdit;
    StaticText32: TStaticText;
    cCollect: TEdit;
    StaticText33: TStaticText;
    cTotalReais: TEdit;
    StaticText34: TStaticText;
    cTerritorioNac: TEdit;
    StaticText42: TStaticText;
    cUtilizacao: TEdit;
    StaticText43: TStaticText;
    cConhecimento: TEdit;
    StaticText44: TStaticText;
    cRetif: TEdit;
    StaticText45: TStaticText;
    cReceita: TEdit;
    cValorReceita: TEdit;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    cJurosEncargos: TEdit;
    cMulta: TEdit;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    cValorTotal: TEdit;
    StaticText50: TStaticText;
    cData: TEdit;
    StaticText51: TStaticText;
    cTipo: TEdit;
    StaticText15: TStaticText;
    cTipoEmbalagem: TEdit;
    StaticText28: TStaticText;
    cMoedaNegociada: TEdit;
    StaticText29: TStaticText;
    cTotalMoeda: TEdit;
    Panel1: TPanel;
    cCarrega: TButton;
    Button1: TButton;
    TabSheet2: TTabSheet;
    cBrowser: TWebBrowser;
    cURL: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    bVolta: TSpeedButton;
    bAdianta: TSpeedButton;
    cDI: TEdit;
    Label2: TLabel;
    bSalvar: TButton;
    TabSheet3: TTabSheet;
    cComplemento: TMemo;
    Function  LerTag(NomeTag1, NomeTag2: String; Indice: Integer; ConteudoIni, ConteudoFim:String): String;
    procedure cCarregaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bVoltaClick(Sender: TObject);
    procedure bAdiantaClick(Sender: TObject);
    procedure cBrowserBeforeNavigate2(Sender: TObject;const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,Headers: OleVariant; var Cancel: WordBool);
    procedure cBrowserDocumentComplete(Sender: TObject;const pDisp: IDispatch; var URL: OleVariant);
    procedure SalvaPaginasHTML;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mTexto: TStringList;
    s: Variant;
    mNumero: Integer;
    mPasta : WideString;
  end;

var
  LeitorSISCOMEXWEB: TLeitorSISCOMEXWEB;

implementation

uses frmDados;

{$R *.dfm}

procedure TLeitorSISCOMEXWEB.cCarregaClick(Sender: TObject);
Var
   Reg: Integer;
   mItem, mAdicao, mLaco, mLinha: Integer;
begin
      mTexto.Clear;
      mTexto.LoadFromFile(mPasta+'\DI_'+cDI.Text+'\Pagina_004.txt');

      If LerTag('Operação Fundap:', '', 1, 'resposta', '</LABEL>') = 'SIM' then cFUNDAP.ItemIndex := 0 else cFUNDAP.ItemIndex := 1;
      cSituacao.Text          := LerTag('> Situação da Entrega da Carga <', '', 1, 'resposta', '</LABEL>' );
      cURFDespacho.Text       := LerTag('>URF de Despacho:<', '', 1, 'resposta', '</LABEL>' );
      cDataRegistro.Text      := LerTag('>Data de Registro:<', '', 1, 'reposta', '</LABEL>' );
      cDataDesembaraco.Text   := LerTag('>Data de Desembaraço:<', '', 1, 'resposta', '</LABEL>');
      cModalidadeDesp.Text    := LerTag('>Modalidade do Despacho:<', '', 1, 'resposta', '</LABEL>');
      cTipoDeclaracao.Text    := LerTag('>Tipo de Declaração:<', '', 1, 'resposta', '</LABEL>');
      cImportador.Text        := ApenasNumeros(LerTag('>Importador:<', '', 1, 'resposta', '</LABEL>'));
      cNome.Text              := LerTag('>Importador:<', '&nbsp;-&nbsp;', 1, 'resposta', '</LABEL>');
      cEndereco.Text          := LerTag('>Endereço:<', '', 1, 'resposta', '</LABEL>');
      cResponsavel.Text       := ApenasNumeros(LerTag('>Responsável pela Retificação da DI:<', '', 1, 'resposta', '</LABEL>'));
      cNomeResponsavel.Text   := LerTag('>Responsável pela Retificação da DI:<','&nbsp;-&nbsp;', 1, 'resposta', '</LABEL>');
      cOperacao.Text          := ApenasNumeros(LerTag('> Caracterização da Operação <', '', 1, 'resposta', '</LABEL>'));
      cNomeCaracter.Text      := LerTag('> Caracterização da Operação <','&nbsp;-&nbsp;', 1, 'resposta', '</LABEL>');
      cConhecimentoCarga.Text := LerTag('>CONHECIMENTO DE CARGA <','', 1, 'resposta', '</LABEL>');
      cProcessoVinculado.Text := LerTag('> Processos Vinculados <','', 1, 'resposta', '</LABEL>');
      cProcedencia.Text       := LerTag('>Procedência:<','', 1, 'resposta', '</LABEL>');
      cURFEntrada.Text        := LerTag('>URF de Entrada:<', '', 1, 'resposta', '</LABEL>');
      cDataChegada.Text       := LerTag('>Data de Chegada:<', '', 1, 'resposta', '</LABEL>');
      cPesoBruto.Text         := RemoveCaracter('.', '', LerTag('>Peso Bruto (Kg):<', '', 1, 'resposta', '</LABEL>'));
      cPesoLiquido.Text       := RemoveCaracter('.', '', LerTag('>Peso Líquido (Kg):<', '', 1, 'resposta', '</LABEL>'));
      cRecintoAduaneiro.Text  := LerTag('>Recinto Aduaneiro:<', '', 1, 'resposta', '</LABEL>');
      cSetor.Text             := LerTag('>Setor:<', '', 1, 'resposta', '</LABEL>');
      cArmazem.text           := LerTag('>Armazém:<', '', 1, 'resposta', '</LABEL>');
      cQuantidade.text        := LerTag('>Quantidade:<', '', 1, 'resposta', '</LABEL>');
      cTipoEmbalagem.text     := LerTag('>Tipo da Embalagem:<', '', 2, 'resposta', '</LABEL>');
      cMoedaNegociada.text    := LerTag('>Moeda Negociada:<', '', 1, 'resposta', '</LABEL>');
      cTotalMoeda.text        := RemoveCaracter('.', '', LerTag('>Total na Moeda:<', '', 1, 'resposta', '</LABEL>'));
      cPrepaid.text           := LerTag('>Prepaid:<', '', 1, 'resposta', '</LABEL>');
      cTotalDolares.text      := LerTag('>Total em Dólares:<', '', 1, 'resposta', '</LABEL>');
      cCollect.text           := LerTag('>Collect:<', '', 1, 'resposta', '</LABEL>');
      cTotalReais.text        := LerTag('>Total em Reais:<', '', 1, 'resposta', '</LABEL>');
      cTerritorioNac.text     := LerTag('>Em Território Nacional:<', '', 1, 'resposta', '</LABEL>');
      cViaTransporte.text     := LerTag('>Via de Transporte:<', '', 1, 'resposta', '</LABEL>');
      If LerTag('>Multimodal:<', '', 1, 'resposta', '</LABEL>') = 'SIM' then cMultiModal.ItemIndex := 0 else cMultiModal.ItemIndex := 1;
      cTransportador.text     := LerTag('>Transportador:<', '', 1, 'resposta', '</LABEL>');
      cNomeEmbarcacao.Text    := LerTag('>Nome da Embarcação:<','', 2, 'resposta', '</LABEL>');
      cManifestoCarga.Text    := LerTag('>Manifesto da Carga <', '', 1, 'resposta', '</LABEL>');
      cLocalEmbarque.Text     := LerTag('>Local de Embarque:<', '', 1, 'resposta', '</LABEL>');
      cDataEmbarque.Text      := LerTag('>Data de Embarque:<', '', 1, 'resposta', '</LABEL>');
      cTipoConhecimento.Text  := LerTag('>Tipo do Conhecimento:<', '', 1, 'resposta', '</LABEL>');
      cUtilizacao.Text        := LerTag('>Utilização:<', '', 1, 'resposta', '</LABEL>');
      cConhecimento.Text      := LerTag('>Id. do Conhecimento:<', '', 1, 'resposta', '</LABEL>');
      cRetif.Text             := LerTag('>Retif.<', '', 1, 'resposta', '</LABEL>');
      cValorReceita.Text      := RemoveCaracter('.','',LerTag('>Valor da Receita<', '', 3, 'resposta', '</LABEL>'));
      cJurosEncargos.Text     := RemoveCaracter('.','',LerTag('>Juros/Encargos<', '', 4, 'resposta', '</LABEL>'));
      cMulta.Text             := RemoveCaracter('.','',LerTag('>Juros/Encargos<', '', 5, 'resposta', '</LABEL>'));
      cValorTotal.Text        := RemoveCaracter('.','',LerTag('>Valor Total<', '', 6, 'resposta', '</LABEL>'));
      cData.Text              := RemoveCaracter('.','',LerTag('>Data<', '', 7, 'resposta', '</LABEL>'));
      cTipo.Text              := RemoveCaracter('.','',LerTag('>Tipo<', '', 8, 'resposta', '</LABEL>'));
      cFatura.Text            := LerTag('>FATURA COMERCIAL <', '', 1, 'resposta', '</LABEL>');
      cRomaneio.Text          := LerTag('>ROMANEIO DE CARGA <', '', 1, 'resposta', '</LABEL>');

      //Adições.
      Reg := 0;
      gAdicoes.RowCount := 1000;
      mLinha := 1;
      For mAdicao := 1 to 9 do begin
          mTexto.Clear;
          mTexto.LoadFromFile(mPasta+'\DI_'+cDI.Text+'\Adicoes\Adicao_'+PoeZero(3, mAdicao)+'.txt');
          Application.ProcessMessages;
          mItem := 1;
          mLaco := 0;

          // Define os títulos da grade das adições.
          gAdicoes.Cells[00,0] := 'REG';
          gAdicoes.Cells[01,0] := 'AD';
          gAdicoes.Cells[02,0] := 'ITEM';
          gAdicoes.Cells[03,0] := 'SEQ.SIS';
          gAdicoes.Cells[04,0] := 'CÓDIGO';
          gAdicoes.Cells[05,0] := 'DESCRIÇÃO MERCADORIA';
          gAdicoes.Cells[06,0] := 'UM';
          gAdicoes.Cells[07,0] := 'QTDE';
          gAdicoes.Cells[08,0] := 'VLR.UNITARIO';
          gAdicoes.Cells[09,0] := 'NCM';
          gAdicoes.Cells[10,0] := 'PESO LIQ.';
          gAdicoes.Cells[11,0] := 'VLR PIS';
          gAdicoes.Cells[12,0] := 'VLR COFINS';
          gAdicoes.Cells[13,0] := 'DUMPING';
          gAdicoes.Cells[14,0] := 'ICMS';

          While mLaco = 0 do begin
                If Pos('<U>'+PoeZero(2, mItem)+'</U>', mTexto.Text) <> 0 then  begin
                   Inc(Reg);
                   gAdicoes.Cells[00, mLinha] := InttoStr(Reg);
                   gAdicoes.Cells[01, mLinha] := InttoStr(mAdicao);
                   gAdicoes.Cells[02, mLinha] := InttoStr(mItem);
                   gAdicoes.Cells[03, mLinha] := '001';
                   gAdicoes.Cells[05, mLinha] := LerTag('<U>'+PoeZero(2, mItem)+'</U>'    , ''         , 5, 'resposta' , '<BR></LABEL>');
                   gAdicoes.Cells[06, mLinha] := LerTag('>Unidade de Medida Estatística:<', ''         , 1, 'resposta' , '</LABEL>');
                   gAdicoes.Cells[07, mLinha] := LerTag('>Quantidade:<'                   , ''         , 1, 'resposta' , '</LABEL>');
                   gAdicoes.Cells[08, mLinha] := LerTag('>Valor Unitário<'                , ''         , 3, 'resposta' , '</LABEL>');
                   gAdicoes.Cells[09, mLinha] := LerTag('>NCM:<'                          , '<LABEL class=resposta>', 1, 'resposta>' , '</LABEL> </TD></TR>');
                   gAdicoes.Cells[10, mLinha] := LerTag('>Peso Líquido (Kg):<'            , ''         , 1, 'resposta' , '</LABEL>');
                   Inc(mItem);
                   Inc(mLinha);
                end else begin
                   mLaco := 1;
                End;
                Application.ProcessMessages;
          End;
      End;
end;

procedure TLeitorSISCOMEXWEB.FormCreate(Sender: TObject);
begin
     Dados.Configuracao.Open;
           mPasta := Dados.ConfiguracaoPasta_SISCOMEXWEB.AsString;
     Dados.Configuracao.Close;

     cBrowser.Navigate(cURL.Text);

     mTexto := TStringList.Create;
     mTexto.Clear;
end;

Function TLeitorSISCOMEXWEB.LerTag(NomeTag1, NomeTag2: String; Indice: Integer; ConteudoIni, ConteudoFim:String): String;
Var
    mLin, i: Integer;
    mTam:Integer;
    mIni:Integer;
    mFim:INteger;
    mSai:Boolean;
    mInd:Integer;
begin
      mSai := false;
      mInd := 1;
      For mLin := 0 to mTexto.Count-1 do begin
          If NomeTag2 = '' then begin
             If Pos(NomeTag1, mTexto[mLin]) <> 0 then begin
                For i := mLin+1 to mTexto.Count-1 do begin
                    If Pos(ConteudoIni, mTexto[i]) <> 0 then begin
                       If mInd = Indice then begin
                          mIni   := Pos(ConteudoIni, mTexto[i])+Length(ConteudoIni)+1;
                          mFim   := Pos(ConteudoFim, mTexto[i]);
                          mTam   := mFim - mIni;
                          Result := Copy(mTexto[i], mIni, mTam);
                          mSai   := true;
                          Break;
                       End;
                       Inc(mInd);
                    End;
                End;
             End
          end else begin
             If Pos(NomeTag1, mTexto[mLin]) <> 0 then begin
                For i := mLin to mTexto.Count-1 do begin
                    If Pos(NomeTag2, mTexto[i]) <> 0 then begin
                       If Pos(ConteudoIni, mTexto[i]) <> 0 then begin
                          mIni   := Pos(ConteudoIni, mTexto[i])+Length(ConteudoIni);
                          mFim   := Pos(ConteudoFim, mTexto[i]);
                          mTam   := mFim - mIni;
                          Result := Copy(mTexto[i], mIni, mTam);
                          mSai   := true;
                          Break;
                       End;
                    End
                End;
             End
          End;
          If mSai = true then Break;
      End;
end;

procedure TLeitorSISCOMEXWEB.Button1Click(Sender: TObject);
begin
      Close;
end;

procedure TLeitorSISCOMEXWEB.bVoltaClick(Sender: TObject);
begin
      cBrowser.GoBack;
end;

procedure TLeitorSISCOMEXWEB.bAdiantaClick(Sender: TObject);
begin
      cBrowser.GoHome;
end;

procedure TLeitorSISCOMEXWEB.cBrowserBeforeNavigate2(Sender: TObject;const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,Headers: OleVariant; var Cancel: WordBool);
begin
     bAdianta.Enabled := true;
end;

procedure TLeitorSISCOMEXWEB.SalvaPaginasHTML;
Var
   i,mAdicao : Integer;
begin
      mAdicao := 1;
      For i := 1 to 9 do begin
          cBrowser.Tag := mAdicao;
          cBrowser.Navigate('https://www4c.receita.fazenda.gov.br/importacaoweb-7/ConsultarDIAdicao.do?numAdicao='+FormatFloat('000', mAdicao));
          While cBrowser.Tag <> 0 do begin
                Application.ProcessMessages;
          End;
          Inc(mAdicao);
      End;

      cBrowser.Navigate('https://www4c.receita.fazenda.gov.br/importacaoweb-7/ConsultarDI.do?popupInformacoesGerais=true');
      S := cBrowser.Document;
      S.Body.innerHTML;
      cComplemento.Lines.Clear;
      //cComplemento.Lines.Add(mTexto);
end;

procedure TLeitorSISCOMEXWEB.cBrowserDocumentComplete(Sender: TObject;const pDisp: IDispatch; var URL: OleVariant);
Var
   Memo1, Memo2: TMemo;
begin
     S := cBrowser.Document;
     Memo1         := TMemo.Create(LeitorSISCOMEXWEB);
     Memo1.Visible := False;
     Memo1.Parent  := LeitorSISCOMEXWEB;
     Memo2         := TMemo.Create(LeitorSISCOMEXWEB);
     Memo2.Visible := False;
     Memo2.Parent  := LeitorSISCOMEXWEB;

     cURL.Text := cBrowser.LocationURL;
     Memo2.Lines.add(cBrowser.LocationURL);
     memo1.Clear;
     Memo1.Lines.Add(S.Body.innerHTML);
     Inc(mNumero);
     If cDI.Text <> '' then begin
        If cBrowser.Tag = 0 then begin
           If not DirectoryExists(mPasta+'\DI_'+cDI.Text) then ForceDirectories(mPasta+'\DI_'+cDI.Text);
           Memo1.Lines.SaveToFile(mPasta+'\DI_'+cDI.Text+'\Pagina_'+FormatFloat('000',mNumero)+'.txt');
        end else begin
           If not DirectoryExists(mPasta+'\DI_'+cDI.Text+'\Adicoes') then ForceDirectories(mPasta+'\DI_'+cDI.Text+'\Adicoes');
           Memo1.Lines.SaveToFile(mPasta+'\DI_'+cDI.Text+'\Adicoes\Adicao_'+FormatFloat('000',cBrowser.Tag)+'.txt');
        End;
     End;
     cBrowser.Tag := 0;
end;

procedure TLeitorSISCOMEXWEB.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LeitorSISCOMEXWEB.Release;
     LeitorSISCOMEXWEB := nil;
end;

procedure TLeitorSISCOMEXWEB.bSalvarClick(Sender: TObject);
begin
      SalvaPaginasHTML;
end;

end.



