object Controle_Fretes: TControle_Fretes
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Controle de Fretes'
  ClientHeight = 758
  ClientWidth = 1449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 62
    Width = 1449
    Height = 648
    Align = alClient
    DataSource = DM.dsFretes
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA'
        Title.Caption = 'Empresa'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESTINO'
        Title.Caption = 'Destino'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSPORTE'
        Title.Caption = 'Transporte'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEDAGIO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Pedagio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMBUSTIVEL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Combustivel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFEICOES'
        Title.Alignment = taRightJustify
        Title.Caption = 'Refei'#231#245'es'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA_FISCAL'
        Title.Caption = 'Nota Fiscal'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_FRETE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor de Frete'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LUCRO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Lucro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAGAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Pago Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAGTO_TERCEIRO'
        Title.Alignment = taCenter
        Title.Caption = 'Pago Terceiro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 751
    Width = 1449
    Height = 7
    Panels = <>
  end
  object Panel5: TPanel
    Left = 0
    Top = 710
    Width = 1449
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      1449
      41)
    object BitBtn2: TBitBtn
      Left = 1357
      Top = 8
      Width = 84
      Height = 30
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      DisabledImageIndex = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Images = ImageList1
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 6
      Top = 8
      Width = 105
      Height = 30
      Caption = '&Inserir Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      Images = ImageList1
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1449
    Height = 62
    Align = alTop
    BevelEdges = [beLeft, beBottom]
    TabOrder = 3
    DesignSize = (
      1449
      62)
    object GroupBox2: TGroupBox
      Left = 6
      Top = 10
      Width = 122
      Height = 46
      Caption = 'Status'
      TabOrder = 0
      object cbx_tpPesquisa: TComboBox
        Left = 8
        Top = 16
        Width = 105
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Todos'
        Items.Strings = (
          'Todos'
          'Pendente'
          'Pago')
      end
    end
    object GroupBox1: TGroupBox
      Left = 1063
      Top = 9
      Width = 378
      Height = 47
      Anchors = [akTop, akRight]
      Caption = 'Per'#237'odo:'
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 20
        Width = 32
        Height = 14
        Caption = 'In'#237'cio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 147
        Top = 20
        Width = 22
        Height = 14
        Caption = 'Fim:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 259
        Top = 18
        Width = 15
        Height = 16
        DisabledImageIndex = 0
        ImageIndex = 3
        Images = ImageList1
        Enabled = False
        SelectedImageIndex = 0
      end
      object SpeedButton2: TSpeedButton
        Left = 121
        Top = 18
        Width = 15
        Height = 16
        DisabledImageIndex = 0
        ImageIndex = 3
        Images = ImageList1
        Enabled = False
        SelectedImageIndex = 0
      end
      object MaskEdit1: TMaskEdit
        Left = 46
        Top = 17
        Width = 67
        Height = 22
        Alignment = taCenter
        EditMask = '!99/99/99;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        Text = '  /  /  '
      end
      object MaskEdit2: TMaskEdit
        Left = 175
        Top = 17
        Width = 73
        Height = 22
        Alignment = taCenter
        EditMask = '!99/99/99;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 1
        Text = '  /  /  '
      end
      object BitBtn1: TBitBtn
        Left = 288
        Top = 13
        Width = 84
        Height = 26
        Caption = '&Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
          73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
          8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
          9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
          A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
          AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
          BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
          D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
          E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
          F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
          424242424242424242422B39180B42424242424242424242424243443C180B42
          4242424242424242424242444438180B42424242424242424242424244433918
          0A424242424242424242424242444335004201101A114242424242424242453D
          05072F343434291942424242424242221A2D34343437403E0442424242424206
          231C303437404146284242424242421B210F30373A414140310D42424242421F
          20032434373A3A37321342424242421D25030F2D37373737311042424242420D
          2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
          4227312D21252314424242424242424242420E141B1B42424242}
        ParentFont = False
        TabOrder = 2
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 134
      Top = 10
      Width = 324
      Height = 46
      Caption = ' Tipo de Pesquisa '
      Columns = 4
      Items.Strings = (
        'Empresa'
        'Destino'
        'Transporte'
        'Nota Fiscal')
      TabOrder = 2
    end
    object edt_Pesquisa: TEdit
      Left = 464
      Top = 26
      Width = 503
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 973
      Top = 24
      Width = 84
      Height = 26
      Anchors = [akTop, akRight]
      Caption = '&Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
        73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
        8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
        9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
        A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
        AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
        BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
        D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
        E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
        F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
        424242424242424242422B39180B42424242424242424242424243443C180B42
        4242424242424242424242444438180B42424242424242424242424244433918
        0A424242424242424242424242444335004201101A114242424242424242453D
        05072F343434291942424242424242221A2D34343437403E0442424242424206
        231C303437404146284242424242421B210F30373A414140310D42424242421F
        20032434373A3A37321342424242421D25030F2D37373737311042424242420D
        2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
        4227312D21252314424242424242424242420E141B1B42424242}
      ParentFont = False
      TabOrder = 4
    end
  end
  object ImageList1: TImageList
    Left = 1216
    Top = 144
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFF00EEEFEF00D7D8D900D3D3
      D400D0D0D100CDCDCE00CCCCCD00CBCCCD00CACBCC00CBCCCD00CCCDCE00CECF
      D000D1D2D300D4D5D600E9E9EA00FFFFFF0000000000DEDFDF009DA2A0008B90
      8E008B908E008B908E008A8F8D008A8F8D000D0DA2000000A4000000A4000D0D
      A2009A9E9C00DCDEDD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00938F87009E988E009D97
      8F009D998F009E9890009D9990009D988F009D988F009D9890009D988F009D98
      8F009D978D009D968E00908C8400FFFFFF00000000009EA3A100EBEDEC00FEFF
      FE00FEFFFF00FEFFFF0000000000000000000000A4003B3BCB003B3BCB000000
      A400EEEFEF009AA09E00FEFEFE00000000000000000000000000FBFBFE005555
      C3005555C300FBFBFE0000000000000000000000000000000000FBFBFE005555
      C3005555C300FBFBFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00ACA69C00CDC3B500C9BF
      B100D0C5BA00D1C7BD00CEC2B600D2C8BC00D2C8BC00CEC2B600D1C7BD00D0C5
      BA00C9BFB100CDC3B500ADA79D00FFFFFF00000000008F959200FEFEFE00EAED
      EC00EAEDEC00EBEEED00ECEFEE00EDEFEE000000A4004343CB004343CB000000
      A400FEFFFF008D929000FBFBFB000000000000000000FBFBFE004E4EC1001D1D
      B2001D1DB2004E4EC100FBFBFE000000000000000000FBFBFE004E4EC1001D1D
      B2001D1DB2004E4EC100FBFBFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF00B3ADA500C6BAAC00E2DD
      D500CFC6BB00CFC6BB00E4E1D900CFC7BC00CFC7BC00E4E1D900CFC6BB00CFC6
      BB00E2DDD500C6BAAC00B3ADA500FEFFFF000000000091969400FDFEFE00E7EA
      E900E6EAE8001616AB000000A4000000A4000C0CAA004949CF004949CF000C0C
      AA000000A4000000A4001818AC0000000000000000005B5BC5002121B5003B3B
      C8003B3BC8002121B6005151C300FBFBFE00FBFBFE005151C3002121B6003C3C
      C8003B3BC8002121B6005B5BC500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFEFF00B9B4AD00CDC5B800CAC2
      B600C7BDB200C8BFB100CCC4B900C8BEB200C8BEB200CCC4B900C8BFB100C7BD
      B200CAC2B600CDC5B800B9B4AD00FDFEFF000000000092989600FDFEFD00E4E8
      E700C1C5C3000000A4004F4FD3004F4FD3004F4FD3004F4FD3004F4FD3004F4F
      D3004F4FD3004F4FD3000000A40000000000000000005D5DC7002626B8004545
      CD004141CC004646CD002626B8005353C3005353C3002626B8004646CD004242
      CC004545CD002626B8005D5DC700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFE00BEBBB400D3C9BE00D5CC
      C300CCC4B800CCC4B900D5CEC500CCC4B900CCC4B900D5CEC500CCC4B900CCC4
      B800D5CCC300D3C9BE00BEBBB400FDFDFE0000000000949A9700FDFDFD00E1E6
      E300DFE4E2000000A4006767DB006767DB006767DB006969DB006969DB006767
      DB006767DB006767DB000000A4000000000000000000FBFBFE005656C6002B2B
      BC005050D1004A4AD0005050D1003030BE003030BE005050D1004A4AD0005050
      D1002B2BBC005656C600FBFBFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFD00C6C1BB00D5CDC300F3F1
      ED00DAD4CC00DBD5CC00F3F1EF00DBD4CC00DBD4CC00F3F1EF00DBD5CC00DAD4
      CC00F3F1ED00D5CDC300C6C1BB00FCFCFD0000000000969B9900FDFDFD00DDE3
      E000BBBFBE001213A8000000A4000000A4000A0AA8006767DD006969DD000B0B
      A9000000A4000000A4001818AD00000000000000000000000000FBFBFE005858
      C7003232BD005959D6005252D4005B5BD7005B5BD7005353D4005959D6003232
      BD005858C700FBFBFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFC00CAC8C300DDD6CD00D9D2
      CB00D2CAC100D3CAC200DAD4CD00D3CAC200D3CAC200DAD4CD00D3CAC200D2CA
      C100D9D2CB00DDD6CD00CAC8C300FBFCFC0000000000979D9B00FDFDFD00DAE0
      DD00D8DEDB00D9DFDC00D9DFDC00D9DFDC000000A4006A6ADE006A6ADE000000
      A400FEFEFE00959B9900FBFBFB0000000000000000000000000000000000FBFB
      FE005A5AC8003A3AC3006565DB006363DB006363DB006565DB003A3AC3005A5A
      C800FBFBFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00D1CECB00DED4CB00DCD2
      C700D2C6BA00D2C7BA00DED4CA00D2C6BA00D2C6BA00DED4CA00D2C7BA00D2C6
      BA00DCD2C700DED4CB00D1CECB00FBFBFB0000000000999F9D00FDFDFD00D9DF
      DC00B6BBBA00B6BCB900B5BBB900B5BBB9000000A4006A6AE0006C6CE0000000
      A400FEFEFE00979D9A00FBFBFB0000000000000000000000000000000000FBFB
      FE005D5DCB004040C6006E6EDF006A6ADF006A6ADF006E6EDF004141C6005D5D
      CB00FBFBFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFB00D8D6D300DDD1C500E0D0
      C200CFBFAD00CFBFAD00E1D3C500CFBFAD00CFBFAD00E1D3C500CFBFAD00CFBF
      AD00E0D0C200DDD1C500D8D6D300FAFAFB00000000009BA19E00FDFDFD00DAE0
      DC00D7DDDA00D6DDDA00D5DCD900D5DBD8001415AA000000A4000000A4001415
      AA00FEFEFE00999E9C00FBFBFB00000000000000000000000000FBFBFE005F5F
      CC004040C7007676E3006A6AE1007777E4007777E4006969E1007676E3004040
      C7005F5FCC00FBFBFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9FA00E1E0D800F6F1E500DFD3
      C200E3D7C800E3D7C700E1D5C600E3D7C700E3D7C700E1D5C600E3D7C700E3D7
      C800DFD3C200F6F1E500E1E0D800F9F9FA00000000009CA2A000FDFDFD00DCE3
      E000BABFBC00B8BEBB00B7BDBA00B6BBB900B4BAB800B2B9B500AFB4B100C6CC
      C800D9DBDA009BA19F00FDFDFD000000000000000000FBFBFE006262CD004343
      C9007E7EE6007171E4007F7FE6004848CB004848CB007F7FE6007272E4007E7E
      E6004444CA006262CD00FBFBFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00494B7500666A8C00666B
      8E00666B8E00666B8E00666B8E00666B8E00666B8E00666B8E00666B8E00666B
      8E00666B8E00666A8C00494B7500FFFFFF00000000009EA4A200FDFDFD00E1E6
      E400DEE3E100DDE2DF00DBE1DE00D9E0DC00D7DEDB00BBC1BE00AAAFAC00B1B3
      B200D8DAD900BABFBD000000000000000000000000006D6DD1004949CB008686
      E7007878E5008888E7004A4ACB006565CF006565CF004A4ACB008888E7007979
      E5008787E7004949CB006E6ED100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00020A8B002930C500272F
      C3002830C0002830C0002830C0002830C0002830C0002830C0002830C0002830
      C000272FC3002930C500020A8B00FFFFFF0000000000A0A6A300FDFEFD00E5E9
      E700C0C5C200BFC3C100BDC2BF00BBC0BE00BABFBC00B5B9B70000000000FCFC
      FC00ABAFAD00E6E7E7000000000000000000000000007070D3004F4FCD008F8F
      E9009090E9005050CD006767D100FCFCFE00FCFCFE006767D1005050CD009090
      E9008F8FE9004F4FCD007070D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF001825AA004451D500404B
      B4003B49DA003B49D7003B49D7003B49D7003B49D7003B49D7003B49D7003B49
      DA00404BB4004451D5001825AA00FFFFFF0000000000A1A7A500FEFEFE00E9EC
      EB00E5E9E700E3E8E500E1E6E300DEE4E100DFE5E200D7D9D900FDFDFD00BCC0
      BE00D2D5D30000000000000000000000000000000000FCFCFE006969D2005252
      CD005353CD006969D200FCFCFE000000000000000000FCFCFE006A6AD2005454
      CE005454CD006A6AD200FCFCFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF004D58BD0022319C00727B
      B7003445C5003849C3003849C3003849C3003849C3003849C3003849C3003445
      C500727BB70022319C004D58BD00FFFFFF0000000000AEB3B100EDEFEE000000
      000000000000000000000000000000000000F9F9F900E7E9E800AFB4B100D2D5
      D400000000000000000000000000000000000000000000000000FCFCFE007474
      D6007575D600FCFCFE0000000000000000000000000000000000FCFCFE007575
      D6007575D600FCFCFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FDFBEF00DAD8
      D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DAD8D000FDFBEF00FFFFFF00FFFFFF0000000000E3E5E400AFB5B200A6AC
      AA00A6ACA900A5ABA900A5ABA800A5ABA800A6ACAA00BFC3C100E6E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008003FFFF000000008301C3C30000
      0000800181810000000080018001000000008001800100000000800180010000
      00008001C003000000008001E007000000008001E007000000008001C0030000
      0000800180010000000080038001000000008023800100000000800781810000
      00009F0FC3C300000000801FFFFF000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 1368
    Top = 376
    object AlterarLanamento1: TMenuItem
      Caption = '&1 - Alterar Lan'#231'amento'
    end
    object ExcluirLanamento1: TMenuItem
      Caption = '&2 - Excluir Lan'#231'amento'
      OnClick = ExcluirLanamento1Click
    end
  end
end
