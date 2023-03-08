object Fretes: TFretes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Fretes - Cadastro'
  ClientHeight = 220
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 179
    Width = 646
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 156
      Top = 6
      Width = 160
      Height = 30
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF49884B4B994EFBFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47854952CC5B77EE813F
        8741FAFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF4380453CC14560FE6F69FF7858F065328535F8FDF8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF457E4629B3354FE95E78EF8479F28458
        F5674AE7562E8030F7FCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF487D49
        29A33553D75F88E4918EE5969FEAA571E77C4AE7593FD64C29772CF6FBF6FFFF
        FFFFFFFFFFFFFFFFFFFF5E90605EB4676FD1799DDFA398DF9F2D88323A8C3E99
        E5A069DB7439D84931C23D256D28F6F9F6FFFFFFFFFFFFFFFFFFE9F4EA529757
        B5DDBAA9DAAE37933CC4EBC8F9FDF9419B47A5E2AA60D06A28C93722B02F2665
        28F7F9F7FFFFFFFFFFFFFFFFFFEBF6EB439748449449BEE6C0FFFFFFFFFFFFF3
        FBF43C9643B3E3B755C46015B72513A320266429F6F8F6FFFFFFFFFFFFFFFFFF
        ECF8EDCBECCEFFFFFFFFFFFFFFFFFFFFFFFFF4FAF43A8F3FB4DCB751B25A069E
        140B9517306A32EFF3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF4FAF43B8F41B6D7B9529F5A3A99414993514E7D4EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FAF43C9142BAD7
        BD569E5D4B814DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF4FAF4419146538B54FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 322
      Top = 6
      Width = 160
      Height = 30
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000D70D0000D70D00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFE5555C35555C3FBFBFEFFFFFFFF
        FFFFFFFFFFFFFFFFFBFBFE5555C35555C3FBFBFEFFFFFFFFFFFFFFFFFFFBFBFE
        4E4EC11D1DB21D1DB24E4EC1FBFBFEFFFFFFFFFFFFFBFBFE4E4EC11D1DB21D1D
        B24E4EC1FBFBFEFFFFFFFFFFFF5B5BC52121B53B3BC83B3BC82121B65151C3FB
        FBFEFBFBFE5151C32121B63C3CC83B3BC82121B65B5BC5FFFFFFFFFFFF5D5DC7
        2626B84545CD4141CC4646CD2626B85353C35353C32626B84646CD4242CC4545
        CD2626B85D5DC7FFFFFFFFFFFFFBFBFE5656C62B2BBC5050D14A4AD05050D130
        30BE3030BE5050D14A4AD05050D12B2BBC5656C6FBFBFEFFFFFFFFFFFFFFFFFF
        FBFBFE5858C73232BD5959D65252D45B5BD75B5BD75353D45959D63232BD5858
        C7FBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFE5A5AC83A3AC36565DB63
        63DB6363DB6565DB3A3AC35A5AC8FBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFBFE5D5DCB4040C66E6EDF6A6ADF6A6ADF6E6EDF4141C65D5DCBFBFB
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFE5F5FCC4040C77676E36A6AE177
        77E47777E46969E17676E34040C75F5FCCFBFBFEFFFFFFFFFFFFFFFFFFFBFBFE
        6262CD4343C97E7EE67171E47F7FE64848CB4848CB7F7FE67272E47E7EE64444
        CA6262CDFBFBFEFFFFFFFFFFFF6D6DD14949CB8686E77878E58888E74A4ACB65
        65CF6565CF4A4ACB8888E77979E58787E74949CB6E6ED1FFFFFFFFFFFF7070D3
        4F4FCD8F8FE99090E95050CD6767D1FCFCFEFCFCFE6767D15050CD9090E98F8F
        E94F4FCD7070D3FFFFFFFFFFFFFCFCFE6969D25252CD5353CD6969D2FCFCFEFF
        FFFFFFFFFFFCFCFE6A6AD25454CE5454CD6A6AD2FCFCFEFFFFFFFFFFFFFFFFFF
        FCFCFE7474D67575D6FCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFCFCFE7575D67575
        D6FCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 646
    Height = 137
    Align = alClient
    TabOrder = 1
    object Label6: TLabel
      Left = 327
      Top = 43
      Width = 43
      Height = 15
      Caption = 'Destino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 18
      Top = 76
      Width = 72
      Height = 15
      Caption = 'Combust'#237'vel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 129
      Top = 10
      Width = 63
      Height = 15
      Caption = 'Transporte:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 12
      Width = 29
      Height = 15
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 18
      Top = 43
      Width = 54
      Height = 15
      Caption = 'Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 225
      Top = 76
      Width = 59
      Height = 15
      Caption = 'Refei'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 449
      Top = 10
      Width = 79
      Height = 15
      Caption = 'Valor Ped'#225'gio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 178
      Top = 109
      Width = 78
      Height = 15
      Caption = 'Valor do Frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 18
      Top = 109
      Width = 62
      Height = 15
      Caption = 'Nota Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 394
      Top = 76
      Width = 48
      Height = 15
      Caption = 'Valor 3'#176' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 398
      Top = 109
      Width = 34
      Height = 15
      Caption = 'Lucro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edt_Refeicoes: TEdit
      Left = 290
      Top = 74
      Width = 93
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 6
    end
    object edt_Destino: TEdit
      Left = 376
      Top = 41
      Width = 252
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object edt_Combustivel: TEdit
      Left = 96
      Top = 74
      Width = 118
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object edt_Empresa: TEdit
      Left = 78
      Top = 41
      Width = 238
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object edt_Data: TMaskEdit
      Left = 53
      Top = 8
      Width = 65
      Height = 21
      Alignment = taCenter
      CharCase = ecUpperCase
      EditMask = '!99/99/99;1; '
      MaxLength = 8
      TabOrder = 0
      Text = '  /  /  '
    end
    object edt_Transporte: TEdit
      Left = 198
      Top = 8
      Width = 240
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object edt_vlrPedagio: TEdit
      Left = 534
      Top = 8
      Width = 94
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object edt_ValorFrete: TEdit
      Left = 262
      Top = 107
      Width = 125
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
      OnExit = edt_ValorFreteExit
    end
    object edt_NFe: TEdit
      Left = 86
      Top = 107
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object edt_ValorTerceiro: TEdit
      Left = 448
      Top = 74
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 7
    end
    object edt_Lucro: TEdit
      Left = 438
      Top = 107
      Width = 87
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      NumbersOnly = True
      TabOrder = 11
    end
    object check_PagoCliente: TCheckBox
      Left = 536
      Top = 109
      Width = 92
      Height = 17
      Caption = ' Pago ( Cliente )'
      TabOrder = 12
      OnClick = check_PagoClienteClick
    end
    object check_PagoTerceiro: TCheckBox
      Left = 557
      Top = 76
      Width = 71
      Height = 17
      Caption = ' Pago ( 3'#186' )'
      TabOrder = 8
      OnClick = check_PagoTerceiroClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 646
    Height = 42
    Align = alTop
    TabOrder = 2
    object Label12: TLabel
      Left = 243
      Top = 11
      Width = 133
      Height = 17
      Caption = 'N'#186' LAN'#199'AMENTO :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 382
      Top = 12
      Width = 121
      Height = 16
      AutoSelect = False
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clMenuBar
      DataField = 'ID'
      DataSource = DM.dsFretes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
  end
end
