object ConsultarNFE: TConsultarNFE
  Left = 404
  Top = 157
  BorderStyle = bsDialog
  Caption = 'Exemplo de Chamada da fun'#231#227'o de Consulta de NF-e destinadas'
  ClientHeight = 638
  ClientWidth = 847
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 0
    Width = 104
    Height = 13
    Caption = 'Ultimo NSU Recebido'
  end
  object GroupBox3: TGroupBox
    Left = 23
    Top = 193
    Width = 666
    Height = 131
    Caption = 'XML da Resposta do Web Service  (par'#226'metro msgRetWS)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object rtfRetWS: TMemo
      Left = 8
      Top = 16
      Width = 649
      Height = 105
      Lines.Strings = (
        'rtfRetWS')
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 23
    Top = 147
    Width = 666
    Height = 46
    Caption = 'Resposta do Web Service (par'#226'metro msgResultado)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object edResultado: TEdit
      Left = 10
      Top = 15
      Width = 647
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 23
    Top = 40
    Width = 666
    Height = 107
    Caption = 'XML do pedido enviado ao Web Service (par'#226'metro msgDados)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object rtfDadosMsg: TMemo
      Left = 8
      Top = 16
      Width = 649
      Height = 81
      Lines.Strings = (
        'rtfDadosMsg')
      TabOrder = 0
    end
  end
  object btGravar: TBitBtn
    Left = 697
    Top = 66
    Width = 127
    Height = 41
    Hint = 'Grava Documento XML de Retorno'
    Caption = '&Gravar Retorno'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btGravarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object btEnviaEvento: TBitBtn
    Left = 697
    Top = 25
    Width = 127
    Height = 41
    Hint = 'Consultar NF-e destinadas'
    Caption = '&Consultar NF-e'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btEnviaEventoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
      3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
      700077337F3333373777887007333337007733F773F333337733700070333333
      077037773733333F7F37703707333300080737F373333377737F003333333307
      78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
      078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
      70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
      3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
      33337F73FF737773333307800077033333337337773373333333}
    NumGlyphs = 2
  end
  object btGravarEvento: TBitBtn
    Left = 697
    Top = 107
    Width = 127
    Height = 41
    Hint = 'Grava Resultado da Consulta'
    Caption = '&Gravar  Lista NF-e'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btGravarEventoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object GroupBox4: TGroupBox
    Left = 23
    Top = 324
    Width = 666
    Height = 119
    Caption = 'Lista de NF-e em TXT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object rtfListaNFe: TMemo
      Left = 8
      Top = 16
      Width = 649
      Height = 96
      Lines.Strings = (
        'rtfListaNFe')
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 728
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
  object cUltimoNSU: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 19
    TabOrder = 8
    Text = 'cUltimoNSU'
  end
  object GroupBox7: TGroupBox
    Left = 24
    Top = 447
    Width = 811
    Height = 186
    Caption = 
      'Lista de DF-e em Grid (clique na linha para ver o detalhe do XML' +
      ')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    object sg: TStringGrid
      Left = 1
      Top = 14
      Width = 809
      Height = 171
      Align = alClient
      ColCount = 3
      DefaultRowHeight = 18
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnSelectCell = sgSelectCell
      ColWidths = (
        128
        158
        496)
    end
  end
  object Button2: TButton
    Left = 728
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 728
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 11
    OnClick = Button3Click
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Arquivo XML|*.xml|Todos Arquivos|*.*'
    Title = 'Salvar como'
    Left = 752
    Top = 201
  end
  object SaveDialog2: TSaveDialog
    Filter = 'Arquivo TXT|*.txt|Todos Arquivos|*.*'
    Title = 'Salvar como'
    Left = 744
    Top = 153
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.PathSchemas = 'C:\Sistemas\Faturamento\Codigo_Fonte\NFe_Util\Schemas\'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 752
    Top = 392
  end
end
