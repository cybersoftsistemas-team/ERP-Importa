object ModificarNF: TModificarNF
  Left = 285
  Top = 195
  BorderStyle = bsToolWindow
  Caption = 'ModificarNF'
  ClientHeight = 567
  ClientWidth = 1158
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 39
    Height = 13
    Caption = 'Emissao'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Entrada'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 80
    Width = 73
    Height = 13
    Caption = 'Vol.Quantidade'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 104
    Width = 56
    Height = 13
    Caption = 'Vol.Especie'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 128
    Width = 48
    Height = 13
    Caption = 'Vol.Marca'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 152
    Width = 55
    Height = 13
    Caption = 'Vol.Numero'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 176
    Width = 68
    Height = 13
    Caption = 'Volu.P.Liquido'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 8
    Top = 200
    Width = 53
    Height = 13
    Caption = 'Vol.P.Bruto'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 8
    Top = 224
    Width = 60
    Height = 13
    Caption = 'ICMSOper %'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 8
    Top = 248
    Width = 40
    Height = 13
    Caption = 'BCICMS'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 8
    Top = 272
    Width = 53
    Height = 13
    Caption = 'Valor ICMS'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 8
    Top = 296
    Width = 54
    Height = 13
    Caption = 'BCICMSST'
    FocusControl = DBEdit13
  end
  object Label14: TLabel
    Left = 8
    Top = 320
    Width = 70
    Height = 13
    Caption = 'Valor ICMS ST'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 8
    Top = 344
    Width = 69
    Height = 13
    Caption = 'Total Produtos'
    FocusControl = DBEdit15
  end
  object Label16: TLabel
    Left = 8
    Top = 368
    Width = 51
    Height = 13
    Caption = 'Total Frete'
    FocusControl = DBEdit16
  end
  object Label17: TLabel
    Left = 8
    Top = 392
    Width = 61
    Height = 13
    Caption = 'Valor Seguro'
    FocusControl = DBEdit17
  end
  object Label18: TLabel
    Left = 8
    Top = 416
    Width = 47
    Height = 13
    Caption = 'Despesas'
    FocusControl = DBEdit18
  end
  object Label19: TLabel
    Left = 8
    Top = 440
    Width = 27
    Height = 13
    Caption = 'BCIPI'
    FocusControl = DBEdit19
  end
  object Label20: TLabel
    Left = 8
    Top = 464
    Width = 40
    Height = 13
    Caption = 'Total IPI'
    FocusControl = DBEdit20
  end
  object Label21: TLabel
    Left = 8
    Top = 488
    Width = 50
    Height = 13
    Caption = 'Total Nota'
    FocusControl = DBEdit21
  end
  object DBEdit1: TDBEdit
    Left = 85
    Top = 5
    Width = 109
    Height = 21
    DataField = 'Numero'
    DataSource = dmFiscal.dsNotas
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 85
    Top = 29
    Width = 109
    Height = 21
    DataField = 'Data_Emissao'
    DataSource = dmFiscal.dsNotas
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 85
    Top = 53
    Width = 109
    Height = 21
    DataField = 'Data_EntradaSaida'
    DataSource = dmFiscal.dsNotas
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 85
    Top = 77
    Width = 109
    Height = 21
    DataField = 'Volume_Quantidade'
    DataSource = dmFiscal.dsNotas
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 85
    Top = 101
    Width = 109
    Height = 21
    DataField = 'Volume_Especie'
    DataSource = dmFiscal.dsNotas
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 85
    Top = 125
    Width = 109
    Height = 21
    DataField = 'Volume_Marca'
    DataSource = dmFiscal.dsNotas
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 85
    Top = 149
    Width = 109
    Height = 21
    DataField = 'Volume_Numero'
    DataSource = dmFiscal.dsNotas
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 85
    Top = 173
    Width = 109
    Height = 21
    DataField = 'Volume_PesoLiquido'
    DataSource = dmFiscal.dsNotas
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 85
    Top = 197
    Width = 109
    Height = 21
    DataField = 'Volume_PesoBruto'
    DataSource = dmFiscal.dsNotas
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 85
    Top = 221
    Width = 109
    Height = 21
    DataField = 'Aliquota_ICMSOper'
    DataSource = dmFiscal.dsNotas
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 85
    Top = 245
    Width = 109
    Height = 21
    DataField = 'BCICMS'
    DataSource = dmFiscal.dsNotas
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 85
    Top = 269
    Width = 109
    Height = 21
    DataField = 'Valor_ICMS'
    DataSource = dmFiscal.dsNotas
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 85
    Top = 293
    Width = 109
    Height = 21
    DataField = 'BCICMS_Substitutivo'
    DataSource = dmFiscal.dsNotas
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 85
    Top = 317
    Width = 109
    Height = 21
    DataField = 'ValorICMS_Substitutivo'
    DataSource = dmFiscal.dsNotas
    TabOrder = 13
  end
  object DBEdit15: TDBEdit
    Left = 85
    Top = 341
    Width = 109
    Height = 21
    DataField = 'Valor_TotalProdutos'
    DataSource = dmFiscal.dsNotas
    TabOrder = 14
  end
  object DBEdit16: TDBEdit
    Left = 85
    Top = 365
    Width = 109
    Height = 21
    DataField = 'Total_Frete'
    DataSource = dmFiscal.dsNotas
    TabOrder = 15
  end
  object DBEdit17: TDBEdit
    Left = 85
    Top = 389
    Width = 109
    Height = 21
    DataField = 'Valor_Seguro'
    DataSource = dmFiscal.dsNotas
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 85
    Top = 413
    Width = 109
    Height = 21
    DataField = 'Valor_OutrasDespesas'
    DataSource = dmFiscal.dsNotas
    TabOrder = 17
  end
  object DBEdit19: TDBEdit
    Left = 85
    Top = 437
    Width = 109
    Height = 21
    DataField = 'BCIPI'
    DataSource = dmFiscal.dsNotas
    TabOrder = 18
  end
  object DBEdit20: TDBEdit
    Left = 85
    Top = 461
    Width = 109
    Height = 21
    DataField = 'Valor_TotalIPI'
    DataSource = dmFiscal.dsNotas
    TabOrder = 19
  end
  object DBEdit21: TDBEdit
    Left = 85
    Top = 485
    Width = 109
    Height = 21
    DataField = 'Valor_TotalNota'
    DataSource = dmFiscal.dsNotas
    TabOrder = 20
  end
  object DBNavigator1: TDBNavigator
    Left = 304
    Top = 521
    Width = 550
    Height = 33
    DataSource = dmFiscal.dsNotas
    TabOrder = 21
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 197
    Top = 5
    Width = 957
    Height = 507
    DataSource = dmFiscal.dsNotasItens
    TabOrder = 22
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nota'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'Codigo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Unitario'
        Title.Alignment = taCenter
        Title.Caption = 'Unitario'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_IPI'
        Title.Alignment = taCenter
        Title.Caption = 'V.IPI'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_IPI'
        Title.Alignment = taCenter
        Title.Caption = 'T.IPI'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_BCICMSOper'
        Title.Alignment = taCenter
        Title.Caption = 'BC ICMS'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_ICMSOper'
        Title.Alignment = taCenter
        Title.Caption = 'V.ICMS'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_BCICMSSub'
        Title.Alignment = taCenter
        Title.Caption = 'BC.ICMS ST'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_ICMSSub'
        Title.Alignment = taCenter
        Title.Caption = 'V.ICMS ST'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Disponivel'
        Title.Alignment = taCenter
        Width = 60
        Visible = True
      end>
  end
end
