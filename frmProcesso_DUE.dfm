object Processo_DUE: TProcesso_DUE
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Emiss'#227'o do DUE '
  ClientHeight = 569
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 539
    Width = 757
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      757
      30)
    object bSair: TButton
      Left = 682
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 306
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsProcessosDOC
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o registro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object bDUE: TButton
      Left = 307
      Top = 1
      Width = 90
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Gerar DU-e'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bDUEClick
    end
  end
  object cURL: TLabeledEdit
    Left = 30
    Top = 40
    Width = 697
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'URL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = 'https://val.portalunico.siscomex.gov.br/portal/api/autenticar'
  end
  object Memo1: TMemo
    Left = 24
    Top = 80
    Width = 705
    Height = 425
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 2
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://val.portalunico.siscomex.gov.br/portal/api/autenticar'
    ContentType = 'application/json'
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Role-Type'
        Value = 'IMPEXP'
      end>
    RaiseExceptionOn500 = False
    Left = 64
    Top = 160
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Role-Type'
        Options = [poDoNotEncode]
        Value = 'IMPEXP'
      end>
    Resource = 'IMPEXP'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 64
    Top = 216
  end
  object RESTResponse1: TRESTResponse
    Left = 64
    Top = 272
  end
end
