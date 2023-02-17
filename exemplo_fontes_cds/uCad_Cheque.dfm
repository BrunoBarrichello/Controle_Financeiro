object Cad_Cheque: TCad_Cheque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastrar Novo Cheque'
  ClientHeight = 153
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 41
    Align = alTop
    TabOrder = 0
    object BitBtn2: TBitBtn
      Left = 286
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
    object BitBtn1: TBitBtn
      Left = 111
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 553
    Height = 111
    Align = alBottom
    TabOrder = 1
    object Label6: TLabel
      Left = 10
      Top = 76
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
      Left = 409
      Top = 42
      Width = 27
      Height = 15
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 374
      Top = 9
      Width = 79
      Height = 15
      Caption = 'Data Dep'#243'sito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 162
      Top = 9
      Width = 103
      Height = 15
      Caption = 'Data Recebimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 42
      Width = 39
      Height = 15
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 9
      Width = 60
      Height = 15
      Caption = 'N'#186' Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edt_numCheque: TEdit
      Left = 76
      Top = 7
      Width = 71
      Height = 22
      TabOrder = 0
    end
    object edt_Destino: TEdit
      Left = 59
      Top = 74
      Width = 488
      Height = 22
      TabOrder = 5
    end
    object edt_Valor: TEdit
      Left = 442
      Top = 40
      Width = 105
      Height = 22
      TabOrder = 4
    end
    object edt_Cliente: TEdit
      Left = 55
      Top = 40
      Width = 339
      Height = 22
      TabOrder = 3
    end
    object MaskEdit1: TMaskEdit
      Left = 271
      Top = 7
      Width = 88
      Height = 22
      Alignment = taCenter
      EditMask = '00/00/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MaskEdit1Exit
      OnKeyPress = MaskEdit1KeyPress
    end
    object MaskEdit2: TMaskEdit
      Left = 459
      Top = 7
      Width = 88
      Height = 22
      Alignment = taCenter
      EditMask = '00/00/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MaskEdit1Exit
      OnKeyPress = MaskEdit1KeyPress
    end
  end
end
