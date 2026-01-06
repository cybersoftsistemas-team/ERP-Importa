object Financeiro_SolicitacaoItensDeleta: TFinanceiro_SolicitacaoItensDeleta
  Left = 492
  Top = 279
  BorderStyle = bsToolWindow
  Caption = 'Financeiro_SolicitacaoItensDeleta'
  ClientHeight = 147
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 57
    Top = 8
    Width = 193
    Height = 18
    Caption = 'Exclus'#227'o de itens por intervalo.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object cInicio: TRxSpinEdit
    Left = 143
    Top = 47
    Width = 65
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object lBeneficiario: TStaticText
    Left = 101
    Top = 47
    Width = 40
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Inicio'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Transparent = False
    StyleElements = []
  end
  object cFinal: TRxSpinEdit
    Left = 143
    Top = 70
    Width = 65
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 101
    Top = 70
    Width = 40
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Final'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Transparent = False
    StyleElements = []
  end
  object bOK: TButton
    Left = 76
    Top = 112
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 4
    OnClick = bOKClick
  end
  object bCancelar: TButton
    Left = 156
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 5
    OnClick = bCancelarClick
  end
  object tItens: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PagarReceber.Numero, PagarReceber.Empresa, PagarReceber.P' +
        'agamento_Recebimento, PagarReceber.Classificacao, PagarReceber.C' +
        'entro_Custo, PagarReceber.Data_Provisao, PagarReceber.Data_Venci' +
        'mento, PagarReceber.Data_Pagamento, PagarReceber.Valor, PagarRec' +
        'eber.Valor_Total, PagarReceber.Fornecedor, PagarReceber.Cliente,' +
        ' PagarReceber.Orgao, PagarReceber.Banco, PagarReceber.Modalidade' +
        '_Pgto, PagarReceber.Documento, PagarReceber.Numero_Documento, Pa' +
        'garReceber.Forma_Pagamento, PagarReceber.Numero_FormaPagamento, ' +
        'PagarReceber.Observacao, PagarReceber.Processo, PagarReceber.Cod' +
        'igo_Adicional01, PagarReceber.Valor_Adicional01, PagarReceber.Co' +
        'digo_Adicional02, PagarReceber.Valor_Adicional02, PagarReceber.C' +
        'odigo_Adicional03, PagarReceber.Valor_Adicional03, PagarReceber.' +
        'Codigo_Adicional04, PagarReceber.Valor_Adicional04, PagarReceber' +
        '.Codigo_Adicional05, PagarReceber.Valor_Adicional05, PagarRecebe' +
        'r.Codigo_Adicional06, PagarReceber.Valor_Adicional06, PagarReceb' +
        'er.Codigo_Adicional07, PagarReceber.Valor_Adicional07, PagarRece' +
        'ber.Codigo_Adicional08, PagarReceber.Valor_Adicional08, PagarRec' +
        'eber.Codigo_Adicional09, PagarReceber.Valor_Adicional09, PagarRe' +
        'ceber.Codigo_Adicional10, PagarReceber.Valor_Adicional10, PagarR' +
        'eceber.CustoConta, PagarReceber.Bordero FROM PagarReceber'
      'WHERE PagarReceber.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 215
    Top = 57
  end
end
