object frmMedicos: TfrmMedicos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'M'#233'dicos'
  ClientHeight = 417
  ClientWidth = 734
  Color = 16446931
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 41
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object btnEdit: TcxButton
      Left = 573
      Top = 1
      Width = 80
      Height = 39
      Align = alRight
      Caption = 'Modificar'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000B8824DFFB882
        4DFFB7814DFE3828184E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B7814CFDB882
        4DFF855E38B806040208271C1036000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000AD7A48F0855E
        38B8060402085C412780B7814DFE4E37216C0000000000000000000000000000
        00000000000000000000000000000000000000000000000000003E2C1A560604
        02085C412780B8824DFFB8824DFFB7814DFE4E37216C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000002B1E
        123BB8824DFFB8824DFFB8824DFFB8824DFFB7814DFE4E37216C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000543C2375B8824DFFB8824DFFB8824DFFB8824DFFB7814DFE4E37216C0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000543C2375B8824DFFB8824DFFB8824DFFB8824DFFB7814DFE4E37
        216C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000543C2375B8824DFFB8824DFFB8824DFFB8824DFFB781
        4DFE4E37216C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000543C2375B8824DFFB8824DFFB8824DFFB882
        4DFFB7814DFE4E37216C00000000000000000000000000000000000000000000
        000000000000000000000000000000000000543C2375B8824DFFB8824DFFB882
        4DFFB8824DFFB7814DFE4E37216C000000000000000000000000000000000000
        00000000000000000000000000000000000000000000543C2375B8824DFFB882
        4DFFB8824DFFB8824DFF5C41267F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000543C2375B882
        4DFFB8824DFF5C41267F0000000064472A8B4E37216C00000000000000000000
        000000000000000000000000000000000000000000000000000000000000543C
        23755C41267F0000000065472A8CB8824DFFB7814DFE4E37216C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000065472A8CB8824DFFB8824DFFB8824DFF6A4B2C93000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000543C2375B8824DFFB8824DFF6B4B2D9401010001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000543C23756B4B2D940101000100000000}
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnEditClick
      ExplicitHeight = 31
    end
    object btnDelete: TcxButton
      Left = 653
      Top = 1
      Width = 80
      Height = 39
      Align = alRight
      Caption = 'Eliminar'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
        76E4120852AD06031B4D0000000E000000030000000000000000000000000000
        000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
        C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
        03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
        D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
        5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
        BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
        A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
        CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
        BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
        CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
        D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
        D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
        DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
        DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
        D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
        A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
        79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
        BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
        050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
        EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
        000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
        EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
        000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
        B5D040437D951212223000000004000000010000000000000000}
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnDeleteClick
      ExplicitHeight = 31
    end
    object btnNew: TcxButton
      Left = 493
      Top = 1
      Width = 80
      Height = 39
      Align = alRight
      Caption = 'Nuevo'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
        82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
        59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
        45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
        44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
        D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
        3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
        3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
        5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnNewClick
      ExplicitHeight = 31
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      AutoSize = False
      Caption = 'M'#233'dicos'
      ParentColor = False
      ParentFont = False
      Style.Color = 12582911
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -29
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitHeight = 32
      Height = 39
      Width = 492
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 734
    Height = 231
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 33
    ExplicitHeight = 239
    object cxGridPaciente: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'Buscar...'
      DataController.DataSource = dsMedico
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridPacienteColumn1: TcxGridDBColumn
        Caption = 'Nombre del M'#233'dico'
        DataBinding.FieldName = 'NombreCompleto'
        Width = 160
      end
      object cxGridPacienteColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Especialidad'
        Width = 100
      end
      object cxGridPacienteColumn3: TcxGridDBColumn
        Caption = 'Tel'#233'fono'
        DataBinding.FieldName = 'Telefono'
        Width = 100
      end
      object cxGridPacienteColumn4: TcxGridDBColumn
        Caption = 'Direcci'#243'n'
        DataBinding.FieldName = 'Direccion'
        Width = 100
      end
      object cxGridPacienteColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Ciudad'
        Width = 100
      end
      object cxGridPacienteColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'Estado'
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGridPaciente
    end
  end
  object PanelButton: TPanel
    Left = 0
    Top = 272
    Width = 734
    Height = 145
    Align = alBottom
    Caption = 'PanelButton'
    TabOrder = 2
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 732
      Height = 112
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object txtNombre: TcxDBTextEdit
        Left = 127
        Top = 11
        DataBinding.DataField = 'NombreCompleto'
        DataBinding.DataSource = dsMedico
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 121
      end
      object lcbEspecialidad: TcxDBLookupComboBox
        Left = 127
        Top = 42
        DataBinding.DataField = 'IdEspecialidad'
        DataBinding.DataSource = dsMedico
        ParentFont = False
        Properties.KeyFieldNames = 'IdEspecialidad'
        Properties.ListColumns = <
          item
            Caption = 'Especialidad'
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsEspecialidad
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object lcbCiudad: TcxDBLookupComboBox
        Left = 347
        Top = 42
        DataBinding.DataField = 'IdCiudad'
        DataBinding.DataSource = dsMedico
        ParentFont = False
        Properties.KeyFieldNames = 'IdCiudad'
        Properties.ListColumns = <
          item
            Caption = 'Ciudades'
            FieldName = 'FK_Ciudad'
          end>
        Properties.ListSource = dsCiudad
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object lcbestado: TcxDBLookupComboBox
        Left = 559
        Top = 42
        DataBinding.DataField = 'IdEstado'
        DataBinding.DataSource = dsMedico
        ParentFont = False
        Properties.KeyFieldNames = 'IdEstado'
        Properties.ListColumns = <
          item
            FieldName = 'Estado'
          end>
        Properties.ListSource = dsEstado
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object txtDireccion: TcxDBTextEdit
        Left = 127
        Top = 73
        DataBinding.DataField = 'Direccion'
        DataBinding.DataSource = dsMedico
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 4
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 121
      end
      object mTelefono: TcxDBMaskEdit
        Left = 561
        Top = 73
        DataBinding.DataField = 'Telefono'
        DataBinding.DataSource = dsMedico
        ParentFont = False
        Properties.EditMask = '!\(999\)000-0000;1;_'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 5
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 160
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
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nombre del M'#233'dico:'
        Control = txtNombre
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Especialidad'
        Control = lcbEspecialidad
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Ciudad'
        Control = lcbCiudad
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Estado'
        Control = lcbestado
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Direcci'#243'n'
        Control = txtDireccion
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Tel'#233'fono'
        Control = mTelefono
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 113
      Width = 732
      Height = 31
      Align = alBottom
      ParentBackground = False
      TabOrder = 1
      object btnCancel: TcxButton
        Left = 651
        Top = 1
        Width = 80
        Height = 29
        Align = alRight
        Caption = 'Cancelar'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000B000000120000001300000013000000140000001400000014000000140000
          0014000000140000001500000015000000140000000D000000030000000B1C11
          6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
          93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
          9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
          D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
          A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
          BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
          A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
          CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
          ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
          B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
          B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
          BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
          C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
          D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
          D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
          A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
          DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
          BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
          DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
          F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
          A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
          DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
          0002000000030000000400000004000000040000000400000004000000040000
          0004000000040000000400000005000000050000000300000001}
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelClick
      end
      object btnSave: TcxButton
        Left = 571
        Top = 1
        Width = 80
        Height = 29
        Align = alRight
        Caption = 'Guardar'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000562D
          4580AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FF562D45800000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FF00000000B8824DFFB882
          4DFF0000000000000000B8824DFFB8824DFF251A0F330000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000B8824DFFB882
          4DFF0000000000000000251A0F33B8824DFFB8824DFF251A0F3300000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF00000000000000000000
          00000000000000000000251A0F33B8824DFFB8824DFF251A0F33000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B8824DFFB8824DFF251A0F3300000000}
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnSaveClick
      end
    end
  end
  object dsMedico: TDataSource
    DataSet = Medico
    Left = 112
    Top = 112
  end
  object Medico: TUniQuery
    Left = 48
    Top = 112
  end
  object dsEspecialidad: TDataSource
    DataSet = Especialidad
    Left = 248
    Top = 128
  end
  object dsEstado: TDataSource
    DataSet = Estado
    Left = 440
    Top = 128
  end
  object dsCiudad: TDataSource
    DataSet = Ciudad
    Left = 336
    Top = 128
  end
  object Ciudad: TUniQuery
    Left = 336
    Top = 192
  end
  object Estado: TUniQuery
    Left = 440
    Top = 184
  end
  object Especialidad: TUniQuery
    Left = 248
    Top = 184
  end
end
