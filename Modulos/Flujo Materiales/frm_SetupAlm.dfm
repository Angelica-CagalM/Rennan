object frmSetupAlm: TfrmSetupAlm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n del Modulo de Almac'#233'n'
  ClientHeight = 569
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1029
    Height = 534
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 532
    ClientRectLeft = 2
    ClientRectRight = 1027
    ClientRectTop = 29
    object cxTabSheet1: TcxTabSheet
      Caption = 'Informaci'#243'n Para Reporte'
      ImageIndex = 1
      object Label1: TLabel
        Left = 10
        Top = 3
        Width = 35
        Height = 14
        Caption = 'Label1'
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 22
        Caption = 'Empresa/Direcci'#243'n'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = 14803425
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 151
        Width = 1015
        object dxLayoutControl2: TdxLayoutControl
          Left = 3
          Top = 16
          Width = 1009
          Height = 125
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxTelefono: TcxDBTextEdit
            Left = 64
            Top = 66
            DataBinding.DataField = 'sTelefono'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 121
          end
          object cxDireccion: TcxDBTextEdit
            Left = 64
            Top = 38
            DataBinding.DataField = 'sDireccion1'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 545
          end
          object cxEmpresa: TcxDBTextEdit
            Left = 64
            Top = 10
            DataBinding.DataField = 'sNombreCorto'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 121
          end
          object cxRfc: TcxDBTextEdit
            Left = 211
            Top = 10
            DataBinding.DataField = 'sRFc'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 154
          end
          object cxRazonSocial: TcxDBTextEdit
            Left = 444
            Top = 10
            DataBinding.DataField = 'sNombre'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 475
          end
          object cxCiudad: TcxDBTextEdit
            Left = 712
            Top = 38
            DataBinding.DataField = 'sCiudad'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 171
          end
          object cxCorreo: TcxDBTextEdit
            Left = 356
            Top = 66
            DataBinding.DataField = 'sEmail'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 121
          end
          object cxWeb: TcxDBTextEdit
            Left = 655
            Top = 66
            DataBinding.DataField = 'sWeb'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 121
          end
          object cxImagen: TcxDBImage
            Left = 941
            Top = 10
            DataBinding.DataField = 'bImagen'
            DataBinding.DataSource = connection.ds_setup
            Properties.Caption = '<Dar doble clic para cargar>'
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.GraphicTransparency = gtTransparent
            Style.HotTrack = False
            TabOrder = 8
            OnDblClick = cxImagenDblClick
            Height = 95
            Width = 61
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Telefono'
            Control = cxTelefono
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Direcci'#243'n'
            Control = cxDireccion
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Empresa'
            Control = cxEmpresa
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'RFC'
            Control = cxRfc
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup1
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Reaz'#243'n Social'
            Control = cxRazonSocial
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Ciudad'
            Control = cxCiudad
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup1
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Correo'
            Control = cxCorreo
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup1
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Sitio Web'
            Control = cxWeb
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Logo'
            Control = cxImagen
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            Index = 0
            AutoCreated = True
          end
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 44
        Caption = 'Reportes'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = 14803425
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 74
        Width = 185
        object dxLayoutControl3: TdxLayoutControl
          Left = 3
          Top = 16
          Width = 179
          Height = 48
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxReportesNombre: TcxDBTextEdit
            Left = 90
            Top = 10
            DataBinding.DataField = 'sReportesCIA'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 151
          end
          object dxLayoutControl3Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem13: TdxLayoutItem
            Parent = dxLayoutControl3Group_Root
            CaptionOptions.Text = 'Nomenclatura'
            Control = cxReportesNombre
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 66
        Caption = 'Rutas Acceso/Guardar'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = 14803425
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 74
        Width = 1005
        object dxLayoutControl4: TdxLayoutControl
          Left = 3
          Top = 16
          Width = 999
          Height = 48
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxRutaOCGuarda: TcxDBTextEdit
            Left = 185
            Top = 10
            DataBinding.DataField = 'sFolder'
            DataBinding.DataSource = connection.ds_setup
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 336
          end
          object dxLayoutControl4Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Guarar Ordenes de Compra en:'
            Control = cxRutaOCGuarda
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1025
        Height = 503
        Align = alClient
        TabOrder = 3
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGroupBox3: TcxGroupBox
          Left = 10
          Top = 10
          Caption = 'Empresa/Direcci'#243'n'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = 14803425
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 151
          Width = 1015
          object dxLayoutControl5: TdxLayoutControl
            Left = 3
            Top = 16
            Width = 1009
            Height = 125
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 64
              Top = 66
              DataBinding.DataField = 'sTelefono'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 64
              Top = 38
              DataBinding.DataField = 'sDireccion1'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 545
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 64
              Top = 10
              DataBinding.DataField = 'sNombreCorto'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 210
              Top = 10
              DataBinding.DataField = 'sRFc'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 154
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 436
              Top = 10
              DataBinding.DataField = 'sNombre'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 475
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 705
              Top = 38
              DataBinding.DataField = 'sCiudad'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 171
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 352
              Top = 66
              DataBinding.DataField = 'sEmail'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 649
              Top = 66
              DataBinding.DataField = 'sWeb'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 121
            end
            object cxDBImage1: TcxDBImage
              Left = 931
              Top = 10
              DataBinding.DataField = 'bImagen'
              DataBinding.DataSource = connection.ds_setup
              Properties.Caption = '<Dar doble clic para cargar>'
              Properties.GraphicClassName = 'TJPEGImage'
              Properties.GraphicTransparency = gtTransparent
              Style.HotTrack = False
              TabOrder = 8
              OnDblClick = cxImagenDblClick
              Height = 95
              Width = 61
            end
            object dxLayoutGroup1: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Telefono'
              Control = cxDBTextEdit1
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Direcci'#243'n'
              Control = cxDBTextEdit2
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              CaptionOptions.Text = 'Empresa'
              Control = cxDBTextEdit3
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'RFC'
              Control = cxDBTextEdit4
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup9
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Raz'#243'n Social'
              Control = cxDBTextEdit5
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Ciudad'
              Control = cxDBTextEdit6
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup9
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahClient
              CaptionOptions.Text = 'Correo'
              Control = cxDBTextEdit7
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup9
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahClient
              CaptionOptions.Text = 'Sitio Web'
              Control = cxDBTextEdit8
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutGroup1
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Logo'
              Control = cxDBImage1
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup1
              AlignHorz = ahClient
              Index = 0
              AutoCreated = True
            end
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 10
          Top = 167
          Caption = 'Reportes'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = 14803425
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 74
          Width = 185
          object dxLayoutControl6: TdxLayoutControl
            Left = 3
            Top = 16
            Width = 179
            Height = 48
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 90
              Top = 10
              DataBinding.DataField = 'sReportesCIA'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 151
            end
            object dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Nomenclatura'
              Control = cxDBTextEdit9
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 10
          Top = 247
          Caption = 'Rutas Acceso/Guardar'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = 14803425
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 74
          Width = 1005
          object dxLayoutControl7: TdxLayoutControl
            Left = 3
            Top = 16
            Width = 999
            Height = 48
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 185
              Top = 10
              DataBinding.DataField = 'sFolder'
              DataBinding.DataSource = connection.ds_setup
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 336
            end
            object dxLayoutGroup3: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Guarar Ordenes de Compra en:'
              Control = cxDBTextEdit10
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object togFiltro: TdxDBToggleSwitch
          Left = 20
          Top = 352
          Caption = 'Tipo de Filtro:'
          DataBinding.DataField = 'Filtros'
          DataBinding.DataSource = connection.ds_setup
          ParentFont = False
          Properties.DisplayChecked = 'True'
          Properties.DisplayUnchecked = 'False'
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'Busqueda General '
          Properties.StateIndicator.OnText = 'Por Filtros'
          Properties.StateIndicator.Position = sipInside
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Visible = False
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem24: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'cxGroupBox1'
          CaptionOptions.Visible = False
          Control = cxGroupBox3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem25: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'cxGroupBox2'
          CaptionOptions.Visible = False
          Control = cxGroupBox5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem26: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'cxGroupBox4'
          CaptionOptions.Visible = False
          Control = cxGroupBox6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutGroup5: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Configuraci'#243'n de Filtros'
          ButtonOptions.Buttons = <>
          Index = 3
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutGroup5
          AlignHorz = ahLeft
          CaptionOptions.Text = 'dxDBToggleSwitch1'
          CaptionOptions.Visible = False
          Control = togFiltro
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 534
    Width = 1029
    Height = 35
    Align = alBottom
    TabOrder = 1
    object btnGuardar: TcxButton
      Left = 828
      Top = 1
      Width = 100
      Height = 33
      Align = alRight
      Caption = 'Guardar'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnGuardarClick
    end
    object cxCancelar: TcxButton
      Left = 928
      Top = 1
      Width = 100
      Height = 33
      Align = alRight
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxCancelarClick
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 912
    Top = 128
  end
  object Periodos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select iPeriodo as iItem, sDescripcion from periodos')
    Params = <>
    Left = 348
    Top = 9
  end
end
