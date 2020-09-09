object FrmCopiarPartidas: TFrmCopiarPartidas
  Left = 0
  Top = 0
  Caption = 'Copiar Partidas de Presupuesto'
  ClientHeight = 279
  ClientWidth = 362
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 362
    Height = 279
    Align = alClient
    Caption = 'pnl1'
    TabOrder = 0
    ExplicitLeft = 168
    ExplicitTop = 48
    ExplicitWidth = 105
    ExplicitHeight = 137
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 360
      Height = 277
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      ExplicitLeft = 2
      ExplicitTop = 2
      object cxfolio: TcxLabel
        Left = 10
        Top = 28
        Caption = 'cxFolio'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxNombre: TcxMemo
        Left = 10
        Top = 52
        Lines.Strings = (
          'cxNombre')
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 89
        Width = 185
      end
      object lcbPresupuesto: TcxLookupComboBox
        Left = 10
        Top = 185
        ParentFont = False
        Properties.KeyFieldNames = 'sNumeroOrden'
        Properties.ListColumns = <
          item
            FieldName = 'sIdFolio'
          end
          item
            FieldName = 'mDescripcion'
          end>
        Properties.ListSource = dsOrdenesTrabajo
        Style.HotTrack = False
        TabOrder = 2
        Width = 145
      end
      object btnCopiar: TcxButton
        Left = 208
        Top = 232
        Width = 142
        Height = 25
        Caption = 'Copiar Partidas'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000006714F44BE9E6D5DFF9E6C5DFF9D6C
          5CFF9D6B5BFF9C6B5BFF9C6B5BFF9C6A5AFF9B6959FF704B41BE000000000000
          000000000000000000000000000000000009DCC8BFFFF8F1ECFFF7EEE9FFCCAB
          9FFFF7EEEAFFF7EEE9FFCCAB9FFFF7EEE9FFF7EEE9FF9D6C5CFF000000000000
          0000000000000000000000000000000000095B997BFFE4E0D9FFF8F0EBFFDCC3
          BAFFF7EEEAFFF7EEEAFFCCACA0FFF8EEEAFFF9F2EFFF9F7061FF000000000000
          000000000000000000000000000000000008137248FF184E30FFA4AFA2FFF8F0
          EBFFEADBD4FFD1B3A7FFCEADA2FFCDADA2FFD9BFB6FFA37464FF000000000000
          0000000000000000000103190C5C052D17AD147449FF2ECA96FF126B45FF4F6F
          58FFE4E0D9FFF8F0EBFFDCC5BCFFF8F0EBFFFAF4F1FFA67969FF000000070000
          000B0000000C052714861F8259FF30AF82FF3CD4A3FF3EDDABFF3BDCA8FF2EA8
          7DFF1B5033FFA4B0A2FFDDC6BDFFF8F0ECFFF9F3F1FFAA7E6FFF856053BEE3CD
          C3FFA2B8A7FF2B8A64FF6CECC7FF69EBC6FF6EEBC7FF4DE4B5FF5DE7BFFF4AC3
          9BFF2D8860FFAEC6B4FFDEC6BEFFD0B2A7FFDBC4BAFFAE8274FFBB8978FFF8F0
          ECFF5C8D70FF4BB68FFF2A8E64FF298E63FF197A4EFF6BE4C1FF359E76FF61A0
          81FFE5E6DEFFF8F0EBFFDDC6BDFFF8F0EDFFFAF5F2FFB28879FFBE8E7EFFF8F0
          ECFF45946EFF8AB89EFFD4DDD1FFF8F0EBFF1B7D4FFF348F66FFB1CBB9FFF8F0
          EBFFF9F2EDFFFAF5F1FFDCC5BDFFFAF5F2FFFAF4F2FFB68D7FFFC19383FFF1E5
          E0FF90B69DFFEEE1DBFFDDC8C0FFF8F0EBFF66A685FFE6E7DEFFF3E9E3FFCFB2
          A7FFBC9487FFBB9487FFBB9385FFBA9285FFBA9184FF8A6C61C0C59A89FFF9F2
          EEFFF8F0ECFFDCC6BDFFF8EFEBFFF8F0ECFFEDE1DCFFF8F2EDFFFAF6F4FFDCC7
          BEFF0000000B0000000300000004000000040000000300000002C89E8FFFF9F4
          F2FFF8F0EDFFC6A599FFF7F0ECFFF8F0EDFFC5A499FFF8F0ECFFF9F3F1FFC397
          87FF000000070000000000000000000000000000000000000000C48F63FFDBB5
          8FFFCF9F71FFCF9E6FFFCF9D6EFFCF9D6EFFCE9B6EFFCE9A6CFFDAB089FFC28B
          5FFF000000070000000000000000000000000000000000000000C79469FFEEDA
          B8FFE9CEA3FFCDA381FFE8CEA3FFE8CEA3FFCCA27EFFE8CDA3FFEED9B7FFC491
          65FF000000060000000000000000000000000000000000000000CA9A6EFFEFDA
          B9FFEEDAB8FFDBBA9EFFEEDAB8FFEEDAB8FFDAB89BFFEEDAB8FFEEDAB8FFC897
          6BFF000000050000000000000000000000000000000000000000987655BFCC9E
          71FFCC9D71FFCC9C70FFCB9B6FFFCA9A6EFFC9986DFFC9986CFFCC9C70FF9774
          53C0000000030000000000000000000000000000000000000000}
        TabOrder = 3
        OnClick = btnCopiarClick
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Presupuesto seleccionado:'
        CaptionOptions.Layout = clTop
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        Control = cxfolio
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxMemo1'
        CaptionOptions.Visible = False
        Control = cxNombre
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Traer Partidas del Presupuesto No.:'
        CaptionOptions.Layout = clTop
        Padding.Top = 20
        Padding.AssignedValues = [lpavTop]
        Control = lcbPresupuesto
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Padding.Top = 20
        Padding.AssignedValues = [lpavTop]
        Control = btnCopiar
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
  end
  object zOrdenesTrabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 289
    Top = 65
  end
  object dsOrdenesTrabajo: TDataSource
    DataSet = zOrdenesTrabajo
    Left = 185
    Top = 73
  end
  object zPresupuestoOrigen: TUniQuery
    Connection = connection.Uconnection
    Left = 49
    Top = 56
  end
  object zPresupuestoDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 49
    Top = 113
  end
  object zPresMargenOrigen: TUniQuery
    Connection = connection.Uconnection
    Left = 33
    Top = 185
  end
  object zPresMargenDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 33
    Top = 225
  end
end
