object Financeiro_EmprestimosBancarios: TFinanceiro_EmprestimosBancarios
  Left = 424
  Top = 130
  BorderStyle = bsDialog
  Caption = 'Financeiro_EmprestimosBancarios'
  ClientHeight = 617
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 585
    Width = 862
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      862
      32)
    object bSair: TButton
      Left = 786
      Top = 2
      Width = 75
      Height = 29
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
      Top = 2
      Width = 387
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsEmprestimos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o reistro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bParcelasCG: TButton
      Left = 388
      Top = 2
      Width = 90
      Height = 28
      Caption = 'Gerar &Parcelas'
      TabOrder = 2
      OnClick = bParcelasClick
    end
    object bFinanceiroCG: TButton
      Left = 478
      Top = 2
      Width = 100
      Height = 28
      Caption = 'Gerar &Financeiro'
      TabOrder = 3
      OnClick = bFinanceiroClick
    end
  end
  object XPPanel1: TXPPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 46
    Align = alTop
    Direction = xdStretchImage
    Color = clHighlight
    ColorEnd = clWhite
    DesignSize = (
      862
      46)
    object Image1: TImage
      Left = 812
      Top = -1
      Width = 44
      Height = 44
      HelpContext = 601
      Anchors = [akTop, akRight]
      Picture.Data = {
        07544269746D6170361B0000424D361B00000000000036000000280000003000
        0000300000000100180000000000001B00000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAF8F8E3D3D3D6BEBECBAAAABE9595B78888B17F7FAE7A79AB7573
        A9706CA36865A77171B28282B99191C9AAAAD7C2C2E6D9D9F1EBEBF9F7F7FDFC
        FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EAEA9E5A53C38C77D5AA97DEBD
        AFE3CCC6E8D9D8EEDED4F5E2CFF0D9BEE3C3A5B1775FBB918AEFE3DFE3CFC6DE
        C2B7D4B5ADCBA69CBE938DB3817BA7706AA165639C605C9C6361A6706EB28281
        BE9696CBAAAAD8C0C0E0CECEE5D7D7FAF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCFB2B2BB8168EFCFAFFFE7CCFFF7E4FFFFF7FFFFFFFFFEF3FFF4DFF6DDC1
        E1C1A2A96E57C19C9BFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFCFFFF
        F8FFFFF8FFFFF1FFFFEBFFF5E3F6E7D5F3E2D0EBD7C4DFC5B4D4AE9EC39B8DA4
        6865FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB2B2B97E65E8C4A6F9DEC4FFEE
        DCFFF7EFFFFDFBFFF8EDFFF0DAF3DABEE0C0A1A56853BE9897FFFFFFFFFDFAFF
        FEFBFFFEFEFFFEFBFFFEFAFFFEFAFFFEF3916279764C7A87566ED1AEA8FFFFF9
        FFFBEDFFFCEDFFFDEDFFFFEEFFFFFDBF8E85FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD0B3B3B97D67E9C6A8FADFC5FFEEDBFFF7EEFFFDFBFFF7EDFFF0DAF4D9BD
        E0C0A0A26750C0948EFFFFFAFFF7EDFFF8F1FFF9F4FFFAF7FFFBFBFFFFFFFFFF
        F14822840000F30000CAA1778EFFFFFFFFFFFBFFFAF1FFF9EFFFF9EDFFFFFBBE
        8F8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0B3B3B97E67E9C5A7FADEC4FFED
        DBFFF7EEFFFEFCFFF7EDFFF2D9F3D8BDE1BF9E9F624CBD8F87FFFDEFFFF0E0FF
        F2E4FFF3E6FFF9EDF9EEE07D3E567A4662360E7E0000FF0000EB864F6BD4B6AE
        E8D2D1FFFEFDFFFEFAFFFDF9FFFFFFBD918EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD0B3B3BA7E66E9C5A7FADEC4FFEDDBFFF6EEFFFDFBFFF7ECFFEFD9F2D8BC
        E0BE9E9F604DC18D82FFF9E1FFE8D5FFEAD7FFECD9FFF2E1FDE7C1290A800000
        F30000FB0000FF0000FF0500DB0800B37E4567FFFFFBFFFDFBFFFDFCFFFFFFBD
        9292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0B3B3BA7F67E9C5A7FADEC4FFED
        DBFFF6EFFFFEFBFFF7EBFFEFD7F1D6BADFBC9D9C5E47C08B7DFFF1D3FFE2C8FF
        E5CAFFE6CCFFEAD4FEE3B62A087E0000FB0000FF0000FF0000FF0000FF0000FF
        7B4776FFFFEFFFF6EDFFF8F0FFFFFFBA908EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD0B3B3BA8067E9C5A7FADDC3FFF0DDFFFDF5FFFFFFFFFDEFFFEFD6F1D6B9
        DEBC9D9A5949BE8476FFEAC6F9D7BCFBDABDFDDCBFFEE3C3FADBB97F3C49692C
        4C2907810000FF0100F92A0784240C8C80475FFFFCE6FFEFE1FFF1E4FFFFF8BC
        8D86FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4B9B9B97E66E9C3A6FBDFC4F7E1
        CFEAD5CFE4D4D1EDDCD1FFF2D9F1D6B8DDBB9B985B48BA7E6DFAD9BBF0C9AEF4
        CEB2F5D1B2F6D1B4F9DCB8FFECC3FFEAAC471D7A0000FF0000F4A4665FFEE8B4
        F6DAB9FFEBD5FFE8D3FFEBD7FFFDEBBB8880FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FCFBAE9D8FBB7B66EAC6A6FFE6CBA2665D7D3A3A732E2F945753FFFEE4F6DABD
        E3BFA09B5D4CBA7E6BF5CFB3EDC5A6F1C8AEF2CEAFF5CCACF2C9AAF3CAABFBD5
        AB59224D1B047A15006897595AFFF5D0FFDFC2FEDEC1FEE0C6FFE5CAFFF6DFBA
        827AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEF2EBBCCCB07E9E62659947667438BA7764E8C1A2FBDBC3914B
        456E33346C2E2E8E4D48E6D5C1D9B399C89A818D4A38A56052D6A189D6A588D8
        A186CD947DD09B80E2BB9AF2CBA9F3D0ACF0C89AEDC089E5AB7FEBC19BFEDFB9
        FBDEBCFEDEBDFFE2C3FFE3C5FFF1D2BA8176FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFDD7E0D0A9BD996F954E5E913F7EB569A0DA95AD
        F3AC99A67788372E9F5D4FA4635978302A8046498D5656833D3CAC7C6FAF7664
        AD725E833A2E99554DAA6F659A584F6A211B8854548A5255712822A36051AA64
        58AF6F5DB37661B67D6AB37D69BD856FBD816EB78475BF8C7AD5A48EFBE2C6B6
        7E70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9F6BECDB28FAA786A934A6DA153
        88BD76ADE5A4B2EDACB5F0AFB5F3B2BAFCBC98A679B26E5AE6C4A1FEE4C68F4D
        48A7A09FC1B6B69E6763FFFFE8F8E6C0E9CCA39A5C49D6A799FFF9E8FFF1E0D0
        9C90A16862A66E69B97C73F6CCB8EDB7A4E1A896D59484C38574B77364AF6C5F
        762B26753C3F8D575B782C2AB97D6E975049FFFFFFFFFFFFEFF3ECB5C6A688A5
        6C68934772A55991C480B5EBACB9EEB6BBF1B2B8F1B3BDF6B9C2FEC3C0FEC1BD
        FFBF949E6FB46F5BE9C3A4FEE6CAB992868249458B514FC9A8A0FFF7DCEFD2B6
        DEBC9B955240D0A59AFFF6E6FFE8DAFFF3E8FFF5E7FFF1E2FFF0DFFFE4D6FFE1
        D2FFE3D2FFE4D2FFE8D3FFE8D3FFEBD9F2C6B4B5796FB1766CCF9789FFEAD4B9
        7A6FABC09670954F608E3E7FB36A99CA88AFE1A4B5EAADB6EDB0BDF2B9C2FAC1
        C8FFC9C9FFC8C6FFC6C4FFC4B4F1AFB1FCB18C9065B06C59EBC4A3FBDBC3FFFF
        F6C59C97CAA9A7FFFFFFFFECD2EED3B6DDBC9A935342D4AFA5FFFDF6FFF3EDFF
        F6F0FFF5EFFFF2EBFFF0E9FFF0E7FFEDE5FFEAE2FFEADFFFE9DDFFE6DAFFE5D9
        FFEBDDFFF2E4FFF0E2FFEADBFFF1E3BD847C618A3B94C780A6DA99A9DC9CAEE4
        A5B6EBB0BEF2B9C2F7C0C3F9C2C5FBC3C5FDC5C5FEC5C6FFC6C3FDC2ACE4A1AA
        F3A8889166B26A55E8C3A4FBDABFFFFAEDBD918DBC9695FFFFF8FFEDD2EFD3B5
        DDBC9A935442D7B5B0FFFFFAFFFDFAFFFFFFFFFFFFFFFFFFFFFFFDFFFDFCFFFC
        F9FFFAF7FFF8F5FFF7F3FFF6F1FFF3EEFFF4EDFFF2EBFFF1E9FFEFE6FFFDF5BE
        8B869BB4857EB1669DD08E9FD38FB9EDB4BBEFB5B9F0B4BAF2B6BCF4B9BEF6BC
        BFF8BDC1FAC0C3FEC3C2FAC4A3DB96A4E59B8CB076A55D47EECBA7FADCBFFFFA
        EDC49993BA9392FFFFF9FFEDD3F1D6B4E1BE99975745DFBBB2FCEEE3F8ECE5FB
        F3F0FBF5F6FDF9F7FDFBFBFEFDFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFFFEFEFFFDFCFFFCFAFFFFFFBE9291C2D1B6699C4999CE8AABDFA1B4EB
        ADB4EAAEB5EBAEB6EDB1B7EFB4B9F2B7BCF6B9BCF6BAC0F9BCC0F9BD9DD88F9D
        D38E9DDC917B3A2EEDBEA2FEE1C4FFFAEDC39D96B58E8BFFFFF9FFEDD3F7DEBE
        C99D81934E44F4CFBAECC8B6EACCBCE9D0C1EDD3C8EED8CCEFDCD2F2E1D7F3E4
        DDF5E8E1F7ECE6F9EFECFAF3F0FBF5F3FCFAF8FDFCFBFEFEFEFFFFFFFFFFFFBD
        9494F0F3ED61903E93C67FA7DB9AB1E7AAAFE5A8B1E9ABB1E9AAAFE8A7ABE2A2
        AEE8A7BBF3B7BBF4BBBFFBBD98D48D9BCF8F72B25D3E4C11A1544BFFE6CAFFFF
        F9D5B5AEC29F9DFFFFFFFFFEE9DCBDA2945345D39880EFBEA0E8B497E5B29ADE
        AF98DEB39EE2B7A4E3BCA9E4BEACE7C4B4E7C7B8E9CBBCECD0C3EED3C7EFD8CD
        F0DBD1F2DFD6F3E4DCF5E8E2FCF4EEA16463FFFFFF75995680B36899CC88AEE3
        A7AEE3A4AAE1A29DD48F99D08A96CC868FC27FB1E7AAB9F1B5C2F8C1BBF0B75F
        8F3D4575259DED9F8D9B6E965F54C08F8CB17175782627A6676688403B690D0D
        A25042BF725AAF614EA8644FAA614DC88466D79675D69C7DD69B7FD7A085E0A7
        8CE5AD92E2B097E0B49CE1B39EE1B8A3E4BBA7E5BFADE7C5B3F2D5C3B98077CE
        B1B1FFFFFF9BB48375A95A8FC37BAADD9FABE0A1A0D59284BD6F87BB717EB56A
        79B162ACE4A5B7EEB5C3F8C974A95A4C7D29AAECA6ADF3ACC5FFCB91D88A4858
        1A84916187815A7F6E4F7F65497F5844723D2D6420195A120E773D3F6D363949
        312BA35038B56045BD684ECB7A5C805743633D32934E43BD755CDC9E7DDAA07E
        DDA484DEA78ADAA48AA96456BA8E8EFFFFFFFFFFFFD6E0CD5C8F3984B86CA0D5
        95A8DD9EA5DA977CB1636EA250699C4C8FC17EB7EFB4C0F7BD689A4C578B37B1
        EEA9B1F0ACBDFABBC6FDC457923C7FC672B1FFB3C0FFCDC4FFC5BCFFC4C1FFC5
        C0FFC7BFFFC3BAF1B890B28055494A575D589BB38A808E57777C487D60486050
        53474D4F692F318A3834913E349440329D49379642349C5854DCC7C7FFFFFFFF
        FFFFFFFFFFF9FAF85B883579AC5F95C983A5D99AA8DC9BA1D89495C9839DD28F
        B3E9AAB8EBB361974265994AB2F0AEB3F1B0C1FEC5BEFABEA5DE9A4C842EA7EA
        A0B3F6B2B5F8B3ABECA4A3E39B9EDD939ADB8DAAEBA4C4FFC8A4E6AA4D4E5055
        5A5795D59682C37260A145E2E6E2727072575A5AD7D0D0FDFCFCF6F2F2F0E7E7
        E9DDDDEEE5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75995373A6568ABD
        74A3D798A1D594A5D999A9DDA0AFE1A4ABE0A3578A386FA457B5F1AFB7F1B1C4
        FFC7C5FFC6C3FCC56CA05173AC59B6F5B3B7FAB4B0F1ABABEAA4A4E29A9CDA90
        94D08689C4789ADA8D9ED69E4C4C4D7F7C816669657A83786E7A657D7E7E7676
        775B5B5BE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFB3C5A15F923C7AAE60A0D394A0D493A1D593A9DD9DA0D592
        52852F7AB067B7F0B6BAF3B6C9FFCAC7FFC7CBFFCCBAF0B450812AA6E69EB6F3
        B1B9F6B7B1EEABAAE7A2A3DF9A9DD79195CE868EC77D85BE7090CA8252605459
        5A596769677F8080948F95969697969596484848E8E8E8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE5D65081276FA2
        5086BA7199CD8AA5D89991C57F4D7E2886BC74B7EDB2BDF4B9C9FFCBC6FEC6C7
        FEC5D5FFD78DC27E689F4CB5F4B2BDFDBDB8F2B4B1EBA9AAE5A2A3DC999BD58E
        94CD858DC57B87BD7282B868BBF1B795C98C71A05F4F7A2ED1D2D1D6D6D6CECE
        CED8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF7F9F6598530679B4561943C75A85874A65742771B91C37D
        B3E7A9B8F0B5C4FBC5C1F8C0C0F8C0C2FBC1CAFDCA538732A1D893B8F4B5C4FF
        C6B6EFB1AFE8A8A8E19DA1DA969CD28D94CA828DC37A86BC7379AB60A4DB9898
        CF898DC27987A76BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88A66C588C
        3265984352842A45771C97CA85AEE3A7B7EDB2BFF6BCBDF4BABDF4BABEF5BBC8
        FDC898CD8A609642B6F0B1C0FABFC9FFC8BEF8BBABE3A2A6DE9AA1D79498D089
        91C7808ABF7784B86C78AD5F92C78088BD74699B4AD2DDCAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB4C7A3497C1F4A7D214B7D2097CC88A9DE9FB4EAAE
        B9F0B5B7EEB2B7EEB3B8EFB4B6EEB1BAF1B8598A3792CA83BAF1B5C9FFCAC7FF
        C9CCFFCABAF1B6A2D9949AD08A92C6808CC17782B86E76AB5D85BC7293C7858C
        BF776A9048FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5EBDF688D
        463F72139CD08DA2D6949FD390B5EBAFB4EAAEB3EAADB3EBADB0E8ABA9E1A082
        B76B598D35B6EDAEC1FCBECAFFCBC8FFC8C6FDC7C7FDC7BDF4B9A1DA9993C983
        8BBE7688BB7392C47FB4E8A882B76C73A556B1C4A1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86A46B79AD609BD08D9ACF8AB0E6A9
        B0E6A8AFE6A8AEE4A59FD6939CD18C51853088BE75BCF1B5C7FECCC6FCC5C4FB
        C3C2F8BFBFF5BEC1F8BEC0F7BEBDF3BBB9F0B3B9F1B4C3F8BF9FD39386B86F60
        8F3EEFF3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F9F6688D4681B66B96CA85A9DE9EAEE4A4ABE1A3AAE0A093C88279AD6051
        832CB2E7AABBF3B8C4FBC3C0F7BFC0F6BDBEF5BCBFF7BEBEF3B8B9F0B5B9EFB3
        B8EFB3B6ECB1B9EFB482B76C7AAD6089A76EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF1EA5F893C84B86D90C47B
        A7DC9BA8DE9FAAE19F9CD18E53842F78AC60B5EAACBEF5BDBEF6BCBDF4BABCF4
        B8B3EAACA8DE9EB2E8ADB7EEB2B5EBAFB3E8ADB6EBAFA6DA9A7EB165679A48CE
        D9C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFDEE6D855823081B56A8BBF75A5DA99A6DE9CA3D79650812DA5
        D999B4EAAEBEF5BCBBF1B7BAF1B6B6EDAFA6DB9A91C57C88BE74B3EAABB3E8AB
        B0E5A8B7EAB08ABD7379AC5F6C924AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAD7C053832D
        7DB1648ABD74AADF9E75A95C6FA052AFE2A5B8EEB5BAEFB4B8EDB2B7EDB0AFE3
        A69BD08C8ABE7576A958A3D897B1E6A9B1E3A6AADD9F79AD5E70A555ACC09AFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB1C3A1578A337AAD5E8CC07855873093C880AD
        E1A1B8EFB4B7ECB1B4E9AEB4EAADA4D7988FC47D7EB36473A455A8DD9CACE0A2
        AEE3A692C57F77AA5B5C8A35F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        92AD7A62954060933E659844A7DD9B9BCF8BAEE2A5B4E9AFB1E5AAB3E7A9A9DD
        9E8DC0797AB06092C67EAFDFA4A9DC9EA9DFA07BAF6276AA5884A467FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81A1624072156C9F4EA3D6949B
        D08AA0D293B0E3A7B1E5ABAEE1A4ADDFA2A8DCA0A9DB9CAADE9FA6D99AA6DA9C
        9ACC8A74A7575D8F38D5DFCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF9FAF8688C453F71124D822A77A95C94C68093C67F9ACD8AA7DB9CADDE
        A1AADC9EA7DA9BA2D796A2D695A5D89A7FB16672A5546B9348FBFCFBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F4ED5B853351852B42
        75144C7D2672A65684B76C86BA7090C37BA1D391A5D998A3D594A3D6969DD08E
        70A353669945AEC29DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDDE6D642731359842FE1E8DBA1B78D5986346C9F4E78AD
        5D7AAD5E88BC729ACC8889BC7373A6556FA2505D8B36EDF1E9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4DECAE9
        EEE4FFFFFFFFFFFFF4F7F2A2B98E628D3E61943E6FA2516FA25065984261943D
        5C8F3783A265FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9
        F6B0C39F648C3F51852A60943C649741487A1CD2DDC8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9BCCCAD628A3D487B1C
        5D8634FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB7C9A7C3D2B4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object RxLabel1: TRxLabel
      Left = 8
      Top = 3
      Width = 90
      Height = 21
      Caption = 'FINANCEIRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ShadowColor = 4194304
      ShadowPos = spRightBottom
      Transparent = True
    end
    object RxLabel2: TRxLabel
      Left = 8
      Top = 22
      Width = 257
      Height = 19
      Caption = 'Empr'#233'stimos Banc'#225'rios (Capital de Giro).'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      Layout = tlCenter
      ParentFont = False
      ShadowColor = 4194304
      ShadowPos = spRightBottom
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 49
    Width = 576
    Height = 376
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 2
    object StaticText6: TStaticText
      Left = 6
      Top = 97
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Banco'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cBanco: TRxDBLookupCombo
      Left = 126
      Top = 97
      Width = 443
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Banco'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Conta;Nome'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsBancos
      ParentFont = False
      TabOrder = 6
    end
    object StaticText2: TStaticText
      Left = 6
      Top = 350
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade Parcelas'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 281
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Principal'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 143
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Class.Financeira (Rec)'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cClassificacaoR: TRxDBLookupCombo
      Left = 126
      Top = 143
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Classificacao_R'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = dsClassificacaoR
      ParentFont = False
      TabOrder = 8
    end
    object StaticText5: TStaticText
      Left = 6
      Top = 235
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Centro Custo'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cCentroCusto: TRxDBLookupCombo
      Left = 126
      Top = 235
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Centro_custo'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsCentroCusto
      ParentFont = False
      TabOrder = 12
    end
    object StaticText7: TStaticText
      Left = 270
      Top = 5
      Width = 43
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText10: TStaticText
      Left = 6
      Top = 51
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cProcesso: TRxDBLookupCombo
      Left = 126
      Top = 51
      Width = 129
      Height = 21
      DropDownCount = 8
      DataField = 'Processo'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Processo'
      LookupDisplay = 'Processo'
      LookupSource = Dados.dsProcessosDOC
      ParentFont = False
      TabOrder = 4
      OnChange = cProcessoChange
    end
    object lForma: TStaticText
      Left = 6
      Top = 258
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Tipo de Documento'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText8: TStaticText
      Left = 6
      Top = 5
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Empr'#233'stimo n'#186
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cCodigo: TDBEdit
      Left = 174
      Top = 5
      Width = 93
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Numero'
      DataSource = Dados.dsEmprestimos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = cCodigoChange
    end
    object StaticText11: TStaticText
      Left = 6
      Top = 120
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Banco (Cliente)'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 31
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cBancoCliente: TRxDBLookupCombo
      Left = 126
      Top = 120
      Width = 443
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Banco_Cliente'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Nome; CNPJ'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsClientes
      ParentFont = False
      TabOrder = 7
      OnChange = cBancoClienteChange
    end
    object StaticText12: TStaticText
      Left = 6
      Top = 189
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Banco (Fornecedor)'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cBancoFornecedor: TRxDBLookupCombo
      Left = 126
      Top = 189
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Banco_Fornecedor'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Nome; CNPJ'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsFornecedores
      ParentFont = False
      TabOrder = 10
    end
    object StaticText13: TStaticText
      Left = 6
      Top = 304
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Juros'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 33
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText14: TStaticText
      Left = 6
      Top = 327
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Total'
        Color = $00666600
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 34
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText1: TStaticText
      Left = 281
      Top = 304
      Width = 60
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Taxa Juros'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 35
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText15: TStaticText
      Left = 6
      Top = 74
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 36
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 126
      Top = 74
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Cliente'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Nome; CNPJ'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsClientes
      ParentFont = False
      TabOrder = 5
    end
    object StaticText16: TStaticText
      Left = 6
      Top = 212
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Class.Financeira (Pgto)'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 37
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cClassificacaoP: TRxDBLookupCombo
      Left = 126
      Top = 212
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Classificacao_P'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsClassificacaoFinanceira
      ParentFont = False
      TabOrder = 11
    end
    object StaticText17: TStaticText
      Left = 353
      Top = 258
      Width = 77
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Documento n'#186
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 38
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit2: TDBEdit
      Left = 432
      Top = 258
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Numero_Documento'
      DataSource = Dados.dsEmprestimos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object cValorPrincipal: TDBEdit
      Left = 126
      Top = 281
      Width = 153
      Height = 21
      DataField = 'Valor_Principal'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnChange = cValorPrincipalChange
    end
    object cValorJuros: TDBEdit
      Left = 126
      Top = 304
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_Juros'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnChange = cValorJurosChange
    end
    object cParcelas: TDBEdit
      Left = 126
      Top = 350
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Qtde_Parcelas'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object DBEdit7: TDBEdit
      Left = 343
      Top = 304
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Taxa_Juros'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object cDataCG: TDBDateEdit
      Left = 315
      Top = 5
      Width = 113
      Height = 21
      DataField = 'Data'
      DataSource = Dados.dsEmprestimos
      CheckOnExit = True
      DialogTitle = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkCustom
      Glyph.Data = {
        D2080000424DD208000000000000360000002800000026000000130000000100
        1800000000009C08000000000000000000000000000000000000171717151515
        1515151515151515151515151515151515151515151515151515151515151515
        1515151515151515151515151515151516161617171715151515151515151515
        1515151515151515151515151515151515151515151515151515151515151515
        15151515151515151516161600005A5A5A555555565656555555555555565656
        5656565757575858585858585757575757575555555555555555555555555555
        555555555959595A5A5A55555556565655555555555556565656565657575758
        5858585858575757575757555555555555555555555555555555555555595959
        0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
        A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
        B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
        B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
        E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
        FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
        F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
        6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
        D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
        FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
        FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
        ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
        DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
        4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
        FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
        FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
        FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
        FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
        FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
        EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
        F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
        C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
        00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
        282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
        C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
        FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
        F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
        F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
        F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
        F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
        C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
        4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
        C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
        2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
        C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
        B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
        75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
        43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
        A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
        6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
        7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
        2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
        15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
        6868687676768686866969696262625D5D5D61616122222200000C10093F391D
        473A0050410045380068655D4946394F4000776300705D007360007D67004F45
        11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
        28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
        3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
        464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
        00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
        4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
        00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
        594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
        2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
        10108181811717172222223E3E3E2B2B2B1B1B1B0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      YearDigits = dyFour
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 126
      Top = 258
      Width = 224
      Height = 21
      DropDownCount = 8
      DataField = 'Tipo_Documento'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsTiposDocumentos
      ParentFont = False
      TabOrder = 13
    end
    object StaticText18: TStaticText
      Left = 6
      Top = 28
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Garantia'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 39
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cGarantia: TRxDBComboBox
      Left = 126
      Top = 28
      Width = 443
      Height = 21
      DataField = 'Garantia'
      DataSource = Dados.dsEmprestimos
      EnableValues = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
    end
    object StaticText21: TStaticText
      Left = 173
      Top = 350
      Width = 103
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vencimento em dias'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 40
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText22: TStaticText
      Left = 325
      Top = 350
      Width = 116
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vencimento em dia fixo'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 41
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cVencimentoDias: TDBEdit
      Left = 278
      Top = 350
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Vencimento_Dias'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object cDiaFixo: TDBEdit
      Left = 443
      Top = 350
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Vencimento_Fixo'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object cTotal: TCurrencyEdit
      Left = 126
      Top = 327
      Width = 153
      Height = 21
      AutoSize = False
      Color = 16764108
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object StaticText20: TStaticText
      Left = 6
      Top = 166
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Forma Recebimento'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 42
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cForma: TDBComboBox
      Left = 126
      Top = 166
      Width = 443
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Forma_Tipo'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 13
      Items.Strings = (
        'CHEQUE'
        'CART'#195'O DE CR'#201'DITO'
        'CART'#195'O DE D'#201'BITO'
        'TRANSFER'#202'NCIA ON-LINE'
        'DOC'
        'BOLETO BANC'#193'RIO'
        'D'#201'BITO EM CONTA'
        'DINHEIRO')
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit3: TDBEdit
      Left = 126
      Top = 5
      Width = 46
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Tipo'
      DataSource = Dados.dsEmprestimos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cCodigoChange
    end
  end
  object StaticText19: TStaticText
    Left = 582
    Top = 49
    Width = 275
    Height = 19
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Parcelas'
        Color = $00666600
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object GradeParcelas: TRxDBGrid
    Left = 582
    Top = 68
    Width = 275
    Height = 513
    Color = 13828095
    DataSource = Dados.dsEmprestimosParcelas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeParcelasDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Parcela'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Vencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Vencto.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Baixa'
        Title.Alignment = taCenter
        Title.Caption = 'Bx'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end>
  end
  object RxDBGrid1: TRxDBGrid
    Left = 4
    Top = 428
    Width = 574
    Height = 152
    DataSource = Dados.dsEmprestimos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 26
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
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Banco_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Principal'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtde_Parcelas'
        Title.Alignment = taCenter
        Title.Caption = 'Parc'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 34
        Visible = True
      end>
  end
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 280
    Top = 8
  end
  object tGarantia: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 312
    Top = 8
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 344
    Top = 8
  end
  object ClassificacaoR: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ClassificacaoFinanceira'
        '  (Codigo, Descricao, Tipo, Relatorio, Custo, Provisao_ContaD, P' +
        'rovisao_ContaC, Provisao_Historico, Pagamento_Historico, Adianta' +
        'mento, Tipo_Lancamento, Pagamento_Conta, Cambio, Somente_Faturam' +
        'ento, Devolucao, Titulo, Aliquota_PIS, Aliquota_COFINS, CST_PIS,' +
        ' CST_COFINS, Nivel, BCCredito, Baixa_Automatica, Despesa_Fixa, D' +
        'esativada, Transferencia, Nota_Referencia, Modalidade_Importacao' +
        ', Fechamento_Processo, Processo_Obrigatorio, Custo_Seletivo, Cus' +
        'to_Entrada, Natureza_Receita, Custo_Outros)'
      'VALUES'
        '  (:Codigo, :Descricao, :Tipo, :Relatorio, :Custo, :Provisao_Con' +
        'taD, :Provisao_ContaC, :Provisao_Historico, :Pagamento_Historico' +
        ', :Adiantamento, :Tipo_Lancamento, :Pagamento_Conta, :Cambio, :S' +
        'omente_Faturamento, :Devolucao, :Titulo, :Aliquota_PIS, :Aliquot' +
        'a_COFINS, :CST_PIS, :CST_COFINS, :Nivel, :BCCredito, :Baixa_Auto' +
        'matica, :Despesa_Fixa, :Desativada, :Transferencia, :Nota_Refere' +
        'ncia, :Modalidade_Importacao, :Fechamento_Processo, :Processo_Ob' +
        'rigatorio, :Custo_Seletivo, :Custo_Entrada, :Natureza_Receita, :' +
        'Custo_Outros)')
    SQLDelete.Strings = (
      'DELETE FROM ClassificacaoFinanceira'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ClassificacaoFinanceira'
      'SET'
        '  Codigo = :Codigo, Descricao = :Descricao, Tipo = :Tipo, Relato' +
        'rio = :Relatorio, Custo = :Custo, Provisao_ContaD = :Provisao_Co' +
        'ntaD, Provisao_ContaC = :Provisao_ContaC, Provisao_Historico = :' +
        'Provisao_Historico, Pagamento_Historico = :Pagamento_Historico, ' +
        'Adiantamento = :Adiantamento, Tipo_Lancamento = :Tipo_Lancamento' +
        ', Pagamento_Conta = :Pagamento_Conta, Cambio = :Cambio, Somente_' +
        'Faturamento = :Somente_Faturamento, Devolucao = :Devolucao, Titu' +
        'lo = :Titulo, Aliquota_PIS = :Aliquota_PIS, Aliquota_COFINS = :A' +
        'liquota_COFINS, CST_PIS = :CST_PIS, CST_COFINS = :CST_COFINS, Ni' +
        'vel = :Nivel, BCCredito = :BCCredito, Baixa_Automatica = :Baixa_' +
        'Automatica, Despesa_Fixa = :Despesa_Fixa, Desativada = :Desativa' +
        'da, Transferencia = :Transferencia, Nota_Referencia = :Nota_Refe' +
        'rencia, Modalidade_Importacao = :Modalidade_Importacao, Fechamen' +
        'to_Processo = :Fechamento_Processo, Processo_Obrigatorio = :Proc' +
        'esso_Obrigatorio, Custo_Seletivo = :Custo_Seletivo, Custo_Entrad' +
        'a = :Custo_Entrada, Natureza_Receita = :Natureza_Receita, Custo_' +
        'Outros = :Custo_Outros'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
        'SELECT ClassificacaoFinanceira.Codigo, ClassificacaoFinanceira.D' +
        'escricao, ClassificacaoFinanceira.Tipo, ClassificacaoFinanceira.' +
        'Relatorio, ClassificacaoFinanceira.Custo, ClassificacaoFinanceir' +
        'a.Provisao_ContaD, ClassificacaoFinanceira.Provisao_ContaC, Clas' +
        'sificacaoFinanceira.Provisao_Historico, ClassificacaoFinanceira.' +
        'Pagamento_Historico, ClassificacaoFinanceira.Adiantamento, Class' +
        'ificacaoFinanceira.Tipo_Lancamento, ClassificacaoFinanceira.Paga' +
        'mento_Conta, ClassificacaoFinanceira.Cambio, ClassificacaoFinanc' +
        'eira.Somente_Faturamento, ClassificacaoFinanceira.Devolucao, Cla' +
        'ssificacaoFinanceira.Titulo, ClassificacaoFinanceira.Aliquota_PI' +
        'S, ClassificacaoFinanceira.Aliquota_COFINS, ClassificacaoFinance' +
        'ira.CST_PIS, ClassificacaoFinanceira.CST_COFINS, ClassificacaoFi' +
        'nanceira.Nivel, ClassificacaoFinanceira.BCCredito, Classificacao' +
        'Financeira.Baixa_Automatica, ClassificacaoFinanceira.Despesa_Fix' +
        'a, ClassificacaoFinanceira.Desativada, ClassificacaoFinanceira.T' +
        'ransferencia, ClassificacaoFinanceira.Nota_Referencia, Classific' +
        'acaoFinanceira.Modalidade_Importacao, ClassificacaoFinanceira.Fe' +
        'chamento_Processo, ClassificacaoFinanceira.Processo_Obrigatorio,' +
        ' ClassificacaoFinanceira.Custo_Seletivo, ClassificacaoFinanceira' +
        '.Custo_Entrada, ClassificacaoFinanceira.Natureza_Receita, Classi' +
        'ficacaoFinanceira.Custo_Outros FROM ClassificacaoFinanceira'
      'WHERE ClassificacaoFinanceira.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo,'
      '       Descricao,'
      '       Tipo,'
      '       Nivel,'
      '       Baixa_Automatica'
      'FROM ClassificacaoFinanceira '
      'ORDER BY Descricao')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 424
    Top = 8
    object ClassificacaoRCodigo: TStringField
      DisplayWidth = 8
      FieldName = 'Codigo'
      Origin = 'ClassificacaoFinanceira.Codigo'
      Size = 15
    end
    object ClassificacaoRDescricao: TStringField
      DisplayWidth = 44
      FieldName = 'Descricao'
      Origin = 'ClassificacaoFinanceira.Descricao'
      Size = 60
    end
    object ClassificacaoRTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'ClassificacaoFinanceira.Tipo'
      FixedChar = True
      Size = 1
    end
    object ClassificacaoRNivel: TSmallintField
      FieldName = 'Nivel'
      Origin = 'ClassificacaoFinanceira.Nivel'
    end
    object ClassificacaoRBaixa_Automatica: TBooleanField
      FieldName = 'Baixa_Automatica'
      Origin = 'ClassificacaoFinanceira.Baixa_Automatica'
    end
  end
  object dsClassificacaoR: TDataSource
    DataSet = ClassificacaoR
    Left = 455
    Top = 8
  end
end
