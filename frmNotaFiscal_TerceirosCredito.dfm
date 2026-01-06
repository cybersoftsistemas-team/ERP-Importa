object NotaFiscal_TerceirosCredito: TNotaFiscal_TerceirosCredito
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_TerceirosCredito'
  ClientHeight = 351
  ClientWidth = 326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 322
    Width = 326
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 262
      Top = 1
      Width = 63
      Height = 27
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bGerar: TButton
      Left = 68
      Top = 1
      Width = 97
      Height = 27
      Cursor = crHandPoint
      Hint = 'Gera o lan'#231'amento de credito para o cliente'
      Align = alRight
      Caption = '&Gerar Cr'#233'dito'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bGerarClick
    end
    object bExcluir: TButton
      Left = 165
      Top = 1
      Width = 97
      Height = 27
      Cursor = crHandPoint
      Hint = 'Exclui o lan'#231'amento de credito do cliente'
      Align = alRight
      Caption = '&Excluir Cr'#233'dito'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bExcluirClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 320
    Height = 316
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object DBGrid2: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 96
      Width = 312
      Height = 216
      Align = alBottom
      DataSource = Dados.dsPagarReceberCreditos
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nota'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 124
          Visible = True
        end>
    end
    object StaticText11: TStaticText
      Left = 35
      Top = 49
      Width = 94
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor do Cr'#233'dito'
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
    object DBEdit1: TDBEdit
      Left = 130
      Top = 49
      Width = 154
      Height = 21
      DataField = 'Valor_TotalNota'
      DataSource = dmFiscal.dsNotasTerceiros
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText1: TStaticText
      Left = 35
      Top = 26
      Width = 94
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total dos Cr'#233'ditos'
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
    object cTotal: TCurrencyEdit
      Left = 130
      Top = 26
      Width = 154
      Height = 21
      DisplayFormat = '#,##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object ttmp: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Total= 0'
      'from PagarReceberCreditos')
    Left = 130
    Top = 260
  end
end
