unit DANFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, QRCtrls, CJVQRBarCode, QuickRpt, Vcl.ExtCtrls, RxGIF, StdCtrls;

type
  TfrmDANFE = class(TForm)
    QuickRep2: TQuickRep;
    QRCupom: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRLbRecebemosde: TQRLabel;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLbCpNumNota: TQRLabel;
    QRLabel16: TQRLabel;
    QRLbCpSerieNota: TQRLabel;
    QRShape12: TQRShape;
    QRRodape: TQRBand;
    QRLabel84: TQRLabel;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRLabel85: TQRLabel;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRLabel86: TQRLabel;
    QRItens: TQRSubDetail;
    QRLabel8: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRchDestinario: TQRChildBand;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel25: TQRLabel;
    QRShape13: TQRShape;
    QRLabel26: TQRLabel;
    QRShape31: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel28: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRShape76: TQRShape;
    QRLabel101: TQRLabel;
    QRLbDFNumNota: TQRLabel;
    QRLabel103: TQRLabel;
    QrlbPage: TQRLabel;
    BarrasChaveAcessoNFe: TCJVQRBarCode;
    QRLbDFSerieNota: TQRLabel;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRShape80: TQRShape;
    QRLabel110: TQRLabel;
    QRLbChaveAcessoNFe: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLogotipo: TQRImage;
    QREmitRazao: TQRLabel;
    QREmitEndereco: TQRLabel;
    QREmitBairro: TQRLabel;
    QREmitCEP: TQRLabel;
    QREmitMunicipio: TQRLabel;
    QREmitFone: TQRLabel;
    QRLbTipoOperacao: TQRLabel;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape66: TQRShape;
    QRShape82: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLbValorISS: TQRLabel;
    QRFretePorConta: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRLbItQuant: TQRLabel;
    QRLbItUnitario: TQRLabel;
    QRLbItTotal: TQRLabel;
    QRCabItens: TQRBand;
    QRShape65: TQRShape;
    QRShape57: TQRShape;
    QRShape64: TQRShape;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape63: TQRShape;
    QRLabel80: TQRLabel;
    QRShape62: TQRShape;
    QRLabel79: TQRLabel;
    QRShape61: TQRShape;
    QRLabel78: TQRLabel;
    QRShape60: TQRShape;
    QRLabel77: TQRLabel;
    QRShape59: TQRShape;
    QRLabel76: TQRLabel;
    QRShape58: TQRShape;
    QRLabel75: TQRLabel;
    QRLabel74: TQRLabel;
    QRShape56: TQRShape;
    QRLabel73: TQRLabel;
    QRShape55: TQRShape;
    QRLabel72: TQRLabel;
    QRShape54: TQRShape;
    QRLabel71: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText31: TQRDBText;
    QRAnotacoesNF: TQRLabel;
    QRShape8: TQRShape;
    QRDBText30: TQRDBText;
    QRlbBSICMS: TQRLabel;
    QRlbVICMS: TQRLabel;
    QRlbBSST: TQRLabel;
    QRlbVALST: TQRLabel;
    QRlbTOTPROD: TQRLabel;
    QRlbVFRE: TQRLabel;
    QRlbVSEG: TQRLabel;
    QRlbDESC: TQRLabel;
    QRlbVOUTRAS: TQRLabel;
    QRlbVIPI: TQRLabel;
    QRlbVTOTAL: TQRLabel;
    QRLbFatA: TQRLabel;
    QRlbDt1: TQRLabel;
    QRlbVal1: TQRLabel;
    QRLbFatE: TQRLabel;
    QRlbDt5: TQRLabel;
    QRLbVal5: TQRLabel;
    QRLbFatB: TQRLabel;
    QRlbDt2: TQRLabel;
    QRlbVal2: TQRLabel;
    QRLbFatF: TQRLabel;
    QRlbDt6: TQRLabel;
    QRLbVal6: TQRLabel;
    QRLbFatC: TQRLabel;
    QRlbDt3: TQRLabel;
    QRlbVal3: TQRLabel;
    QRLbFatG: TQRLabel;
    QRlbDt7: TQRLabel;
    QRLbVal7: TQRLabel;
    QRLbFatD: TQRLabel;
    QRlbDt4: TQRLabel;
    QRlbVal4: TQRLabel;
    QRLbFatH: TQRLabel;
    QRlbDt8: TQRLabel;
    QRLbVAl8: TQRLabel;
    QRLbFatI: TQRLabel;
    QRlbDt9: TQRLabel;
    QRLbVal9: TQRLabel;
    QRLbFatJ: TQRLabel;
    QrlbDt10: TQRLabel;
    QRLbVal10: TQRLabel;
    QRLbFatK: TQRLabel;
    QRlbDt11: TQRLabel;
    QRLbVal11: TQRLabel;
    QRLbFatL: TQRLabel;
    QRLbDt12: TQRLabel;
    QRLbVal12: TQRLabel;
    QRShape25: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel125: TQRLabel;
    QRValorPagoAvista: TQRLabel;
    QRDescitem: TQRLabel;
    QRDescitem2: TQRLabel;
    QRLote: TQRLabel;
    QRDBText14: TQRDBText;
    procedure QRCupomBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRchDestinarioBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRItensBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRCabItensBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRRodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    nPages, PaginaAtual, tmpVar: Integer;
  public
    { Public declarations }
    Paginas: integer;
    ChaveAcessoNFe: string[44];
    cHistorico: string;
  end;

var
  frmDANFE: TfrmDANFE;

implementation

uses DataModule, funcoesclipper, comercial;


{$R *.dfm}


procedure TfrmDANFE.QRCupomBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var cNota: string;
begin
 QRLbPage.Caption :=
 'fls '+IntToStr(QuickRep2.PageNumber)+'/'+IntToStr(Paginas);

 if QuickRep2.PageNumber = 1 then
 begin
    // Dados da Loja EMITENTE
    QRLogotipo.Picture.LoadFromFile('logoloja.gif');
    QREmitRazao.Caption :=
    DM.ClientDSLoja.FieldByName('RAZAO').AsString;
    QREmitEndereco.Caption :=
    DM.ClientDSLoja.FieldByName('ENDERECO').AsString;
    QREmitBairro.Caption :=
    DM.ClientDSLoja.FieldByName('BAIRRO').AsString;
    QREmitCEP.Caption :=
    DM.ClientDSLoja.FieldByName('CEP').AsString;
    QREmitFone.Caption :=
    DM.ClientDSLoja.FieldByName('FONE').AsString;
    QREmitMunicipio.Caption :=
    DM.ClientDSLoja.FieldByName('CIDADE').AsString+' '+
    DM.ClientDSLoja.FieldByName('ESTADO').AsString;

    BarrasChaveAcessoNFe.Texto := ChaveAcessoNFe;

    QRLbChaveAcessoNfe.Caption := FormataChaveAcessoNfe(ChaveAcessoNFe,'1.10');

    QRlbRecebemosde.Caption := QREmitRazao.Caption +
    ' OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO ';

    // TIPO OPERACAO
    if Pos(Copy(DM.ClientDSDoc.FieldByName('nf_cfis').AsString,1,1), '__123') > 0
    then QRLbTipoOperacao.Caption := '0'
    Else QRLbTipoOperacao.Caption := '1';

    // FORMATAR NUMERO NOTA E SERIE
    cNota := StrZeroA( DM.ClientDSDoc.FieldByName('nf_nota').AsString, 6);
    QRLbDFNumNota.Caption := '000.'+Copy(cNota,1,3)+'.'+Copy(cNota,4,3);
    QRLbCPNumNota.Caption := QRLbDFNumNota.Caption;
    QRLbDFSerieNota.Caption :=
    StrZeroA(TRIM(DM.ClientDSDoc.FieldByName('NF_SERIE').AsString),3);
    QRLbCPSerieNota.Caption := QRLbDFSerieNota.Caption;

    // FORMATAR CAMPOS CALCULO IMPOSTO
    QRlbBSICMS.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_BSICMS').AsCurrency,2);
    QRlbVICMS.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_VICMS').AsCurrency,2);
    QRlbBSST.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_BSST').AsCurrency,2);
    QRlbValST.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_VALST').AsCurrency,2);
    QRlbTOTPROD.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_TOTPROD').AsCurrency,2);
    QRlbVFRE.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_VFRE').AsCurrency,2);
    QRlbVSEG.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_VSEG').AsCurrency,2);
    QRlbDESC.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_DESC').AsCurrency,2);
    QRlbVOUTRAS.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_VOUTRAS').AsCurrency,2);
    QRlbVIPI.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_VIPI').AsCurrency,2);
    QRlbVTOTAL.Caption :=
    FormataPrecoUnitario( DM.ClientDSDoc.FieldByName('NF_VTOTAL').AsCurrency,2);



 end;
 PrintBand := true;
end;

procedure TfrmDANFE.QRchDestinarioBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var nK: Integer;
begin
  if QuickRep2.PageNumber > 1 then PrintBand := False
  else begin
     // Forma Frete
     if (TRIM(DM.ClientDSDoc.FieldByName('NF_TRCONTA').AsString) = '') then
     QRFretePorConta.caption := '1'
     else
     QRFretePorConta.Caption := DM.ClientDSDoc.FieldByName('NF_TRCONTA').AsString;

     // Fatura
     QRLbFatA.Caption := ''; QRLbDt1.Caption := ''; QRLbVal1.Caption := '';
     QRLbFatB.Caption := ''; QRLbDt2.Caption := ''; QRLbVal2.Caption := '';
     QRLbFatC.Caption := ''; QRLbDt3.Caption := ''; QRLbVal3.Caption := '';
     QRLbFatD.Caption := ''; QRLbDt4.Caption := ''; QRLbVal4.Caption := '';
     QRLbFatE.Caption := ''; QRLbDt5.Caption := ''; QRLbVal5.Caption := '';
     QRLbFatF.Caption := ''; QRLbDt6.Caption := ''; QRLbVal6.Caption := '';
     QRLbFatG.Caption := ''; QRLbDt7.Caption := ''; QRLbVal7.Caption := '';
     QRLbFatH.Caption := ''; QRLbDt8.Caption := ''; QRLbVal8.Caption := '';
     QRLbFatI.Caption := ''; QRLbDt9.Caption := ''; QRLbVal9.Caption := '';
     QRLbFatJ.Caption := ''; QRLbDt10.Caption := ''; QRLbVal10.Caption := '';
     QRLbFatK.Caption := ''; QRLbDt11.Caption := ''; QRLbVal11.Caption := '';
     QRLbFatL.Caption := ''; QRLbDt12.Caption := ''; QRLbVal12.Caption := '';

     if DM.ClientDSDoc.FieldByName('NF_VFINAN').AsCurrency > 0.00 then
     begin
     With DM.ClientDSTitulosDOC do begin
        first; nK := 1;
        While Not Eof do begin
          case nK of
          1: begin
             QRLbFatA.Caption := 'A)';
             QRLbDt1.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal1.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          2: begin
             QRLbFatB.Caption := 'B)';
             QRLbDt2.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal2.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          3: begin
             QRLbFatC.Caption := 'C)';
             QRLbDt3.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal3.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          4: begin
             QRLbFatD.Caption := 'D)';
             QRLbDt4.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal4.Caption := 'R$'+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          5: begin
             QRLbFatE.Caption := 'E)';
             QRLbDt5.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal5.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          6: begin
             QRLbFatF.Caption := 'F)';
             QRLbDt6.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal6.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          7: begin
             QRLbFatG.Caption := 'G)';
             QRLbDt7.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal7.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          8: begin
             QRLbFatH.Caption := 'H)';
             QRLbDt8.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal8.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          9: begin
             QRLbFatI.Caption := 'I)';
             QRLbDt9.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal9.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          10: begin
             QRLbFatJ.Caption := 'J)';
             QRLbDt10.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal10.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          11: begin
             QRLbFatK.Caption := 'K)';
             QRLbDt11.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal11.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          12: begin
             QRLbFatL.Caption := 'L)';
             QRLbDt12.Caption :=
             FormatDateTime( 'DD/MM/YYYY',FieldByName('DATAV').AsDateTime);
             QRLbVal12.Caption := 'R$ '+
             FormataPrecoUnitario(FieldByName('VALORV').AsCurrency,2);
             end;
          end; // case
          inc(nK);
          next;
        end; // While
     end; // with
     end; // then fatura > 0
  end;
end;

procedure TfrmDANFE.QRItensBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var cDesc : string;
begin
  cDesc := Trim(DM.ClientDSItensDoc.FieldByName('c_marca').AsString)+' '+
  TRIM(DM.ClientDSItensDoc.FieldByName('descitem').AsString);

  QRDescitem.caption := copy(cDesc,1,47);
  QRDescitem2.caption := copy(cDesc,48,47);

  if copy(DM.DSDoc.DataSet.FieldByName('NF_CFIS').AsString,2,3) = '601' then
  begin
  QRLbItQuant.caption :=
  FormataPrecoUnitario(0.00,
  DM.ClientDSParametros.FieldByName('wganqtdec').AsInteger);

  QRLbItUnitario.caption :=
  FormataPrecoUnitario(0.00,
  DM.ClientDSParametros.FieldByName('wgancasa3').AsInteger);

  QRLOte.Caption := '';

  end
  else begin
  QRLbItQuant.caption :=
  FormataPrecoUnitario(DM.ClientDSItensDoc.FieldByName('quant').AsCurrency,
  DM.ClientDSParametros.FieldByName('wganqtdec').AsInteger);

  QRLbItUnitario.caption :=
  FormataPrecoUnitario(DM.ClientDSItensDoc.FieldByName('punitv').AsCurrency,
  DM.ClientDSParametros.FieldByName('wgancasa3').AsInteger);

  QRLOte.Caption := 'LT.'+DM.ClientDSItensDoc.FieldByName('lotenum').AsString+' V.'+
  DM.ClientDSItensDoc.FieldByName('lotevalid').AsString;
  end;

  QRLbItTotal.caption :=
  FormataPrecoUnitario( DM.ClientDSItensDoc.FieldByName('quant').AsCurrency *
  DM.ClientDSItensDoc.FieldByName('punitv').AsCurrency, 2);

  PrintBand := true;
end;

procedure TfrmDANFE.QRCabItensBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := true;
end;

procedure TfrmDANFE.QRRodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRAnotacoesNF.Caption := cHistorico;

  // Imprime Valor do ISS
  if DM.ClientDSDoc.FieldByName('NF_SERVICO').AsCurrency > 0.00 then
  QRLbValorISS.Caption :=
  FormataPrecoUnitario(
  (DM.ClientDSDoc.FieldByName('NF_SERVICO').AsCurrency *
  DM.ClientDSParametros.FieldByName('WGANISS').AsCurrency)/100,2);

  // Forma de Pagamento
  if (DM.ClientDSDoc.FieldByName('NF_DINHEIRO').AsCurrency  +
      DM.ClientDSDoc.FieldByName('NF_CHEQUEAVISTA').AsCurrency +
      DM.ClientDSDoc.FieldByName('NF_CARTAOAVISTA').AsCurrency > 0.00)
      then
          QRValorPagoAVista.Caption := 'PAGAMENTO À VISTA: '+
          DM.ClientDSDoc.FieldByName('FORMACOBR').AsString+
          ' VALOR R$ '+
          FormataPrecoUnitario(
            DM.ClientDSDoc.FieldByName('NF_DINHEIRO').AsCurrency  +
            DM.ClientDSDoc.FieldByName('NF_CHEQUEAVISTA').AsCurrency +
            DM.ClientDSDoc.FieldByName('NF_CARTAOAVISTA').AsCurrency
            ,2)
      else
      QRValorPagoAVista.Caption := '';

end;

end.

