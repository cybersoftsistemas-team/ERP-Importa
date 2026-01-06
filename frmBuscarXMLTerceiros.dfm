object BuscarXMLTerceiros: TBuscarXMLTerceiros
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'BuscarXMLTerceiros'
  ClientHeight = 663
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 514
    Height = 307
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 506
      Height = 299
      Align = alClient
      DataSource = dstNSU
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NSU'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Chave'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 385
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 630
    Width = 514
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      Left = 449
      Top = 1
      Width = 64
      Height = 28
      Align = alRight
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bSairClick
    end
    object bBuscar: TButton
      Left = 283
      Top = 1
      Width = 96
      Height = 28
      Align = alRight
      Caption = '&Buscar Notas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bBuscarClick
    end
    object bImportar: TButton
      Left = 379
      Top = 1
      Width = 70
      Height = 28
      Align = alRight
      Caption = '&Importar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bImportarClick
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 514
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object StaticText1: TStaticText
      Left = 11
      Top = 10
      Width = 99
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = sbsSunken
      Caption = 'Ultimo NSU'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Transparent = False
      StyleElements = [seFont, seBorder]
    end
    object cNSU: TEdit
      Left = 112
      Top = 10
      Width = 105
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object cSobrepor: TToggleSwitch
      Left = 232
      Top = 10
      Width = 177
      Height = 22
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      StateCaptions.CaptionOn = 'Sobrepor Notas existentes'
      StateCaptions.CaptionOff = 'N'#227'o Sobrepor notas existentes.'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 2
      TabStop = False
      ThumbWidth = 12
    end
  end
  object mLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 363
    Width = 514
    Height = 261
    Align = alBottom
    Color = 4587520
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 9737364
    Font.Height = -12
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    Lines.Strings = (
      'mLog')
    ParentFont = False
    TabOrder = 3
    StyleElements = [seBorder]
  end
  object tNSU: TVirtualTable
    Left = 276
    Top = 156
    Data = {04000000000000000000}
    object tNSUNSU: TIntegerField
      FieldName = 'NSU'
    end
    object tNSUChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
  end
  object dstNSU: TDataSource
    DataSet = tNSU
    Left = 276
    Top = 208
  end
  object NFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 277
    Top = 271
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 206
    Top = 158
  end
  object tForn: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 208
    Top = 217
  end
  object tRef: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 209
    Top = 273
  end
end
