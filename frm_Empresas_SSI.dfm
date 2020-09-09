object frm_Empresa_SSI: Tfrm_Empresa_SSI
  Left = 457
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Empresas'
  ClientHeight = 534
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panelBotones: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 384
      Top = 1
      Width = 568
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 384
      ExplicitTop = 1
      ExplicitWidth = 568
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Left = 6
        Height = 33
        Align = alRight
        ExplicitLeft = 6
        ExplicitWidth = 562
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          OnClick = btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          OnClick = btnDeleteClick
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Height = 31
          ExplicitLeft = 401
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Height = 31
          ExplicitLeft = 481
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Height = 31
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Empresas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 216
    Width = 953
    Height = 318
    Align = alBottom
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 273
      Width = 951
      Height = 44
      Align = alBottom
      TabOrder = 0
      inline frmBarraH22: TfrmBarraH2
        Left = 742
        Top = 1
        Width = 208
        Height = 42
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 742
        ExplicitTop = 1
        ExplicitWidth = 208
        ExplicitHeight = 42
        inherited Panel1: TPanel
          Width = 208
          Height = 42
          BevelEdges = []
          ExplicitWidth = 208
          ExplicitHeight = 42
          inherited btnPost: TcxButton
            Left = 15
            Top = 6
            OnClick = btnPostClick
            ExplicitLeft = 15
            ExplicitTop = 6
          end
          inherited btnCancel: TcxButton
            Left = 108
            Top = 5
            OnClick = btnCancelClick
            ExplicitLeft = 108
            ExplicitTop = 5
          end
        end
      end
    end
    object cxPageControl1: TcxPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 945
      Height = 266
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Properties.ActivePage = cxTabDatos
      Properties.CustomButtons.Buttons = <>
      Properties.Images = connection.cxIconos16
      ClientRectBottom = 264
      ClientRectLeft = 2
      ClientRectRight = 943
      ClientRectTop = 29
      object cxTabDatos: TcxTabSheet
        Caption = 'Datos Generales'
        ImageIndex = 11
        object dxLayoutControl4: TdxLayoutControl
          Left = 10
          Top = -108
          Width = 681
          Height = 412
          TabOrder = 0
          object cxDBTextEdit3: TcxDBTextEdit
            Tag = -1
            Left = 123
            Top = 122
            DataBinding.DataField = 'RegimenFiscal'
            ParentFont = False
            Properties.MaxLength = 100
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 183
          end
          object cxDBButtonEdit3: TcxDBButtonEdit
            Tag = -1
            Left = 123
            Top = 150
            DataBinding.DataField = 'ArchivosEmpresa'
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 511
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Tag = -1
            Left = 123
            Top = 66
            DataBinding.DataField = 'RazonSocial'
            ParentFont = False
            Properties.MaxLength = 150
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 511
          end
          object cxDBMaskEdit3: TcxDBMaskEdit
            Tag = -1
            Left = 123
            Top = 94
            DataBinding.DataField = 'Rfc'
            ParentFont = False
            Properties.MaxLength = 14
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 183
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Tag = -1
            Left = 390
            Top = 94
            DataBinding.DataField = 'RegPatronal'
            ParentFont = False
            Properties.MaxLength = 14
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 227
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Tag = -1
            Left = 123
            Top = 10
            DataBinding.DataField = 'Codigo'
            ParentFont = False
            Properties.MaxLength = 20
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 183
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Tag = -1
            Left = 379
            Top = 122
            DataBinding.DataField = 'RepresentanteLegal'
            ParentFont = False
            Properties.MaxLength = 200
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 227
          end
          object cxDBImage1: TcxDBImage
            Left = 10
            Top = 197
            DataBinding.DataField = 'Logotipo'
            Properties.Caption = '<Dar doble clic para cargar>'
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.GraphicTransparency = gtTransparent
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Height = 225
            Width = 586
          end
          object cxDBImage2: TcxDBImage
            Left = 409
            Top = 197
            DataBinding.DataField = 'Cedula'
            Properties.Caption = '<Dar doble clic para cargar>'
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.GraphicTransparency = gtTransparent
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Height = 180
            Width = 241
          end
          object dxDBToggleSwitch2: TdxDBToggleSwitch
            Left = 539
            Top = 10
            TabStop = False
            Caption = 'Activo:'
            ParentFont = False
            Properties.StateIndicator.Kind = sikText
            Properties.StateIndicator.OffText = 'No'
            Properties.StateIndicator.OnText = 'Si'
            Properties.StateIndicator.Position = sipInside
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Tag = -1
            Left = 123
            Top = 38
            DataBinding.DataField = 'Titulo'
            ParentFont = False
            Properties.MaxLength = 100
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 511
          end
          object dxLayoutGroup3: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            SizeOptions.AssignedValues = [sovSizableVert]
            SizeOptions.SizableVert = True
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem16: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup12
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Regimen Fiscal'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 301
            Control = cxDBTextEdit3
            ControlOptions.AlignHorz = ahLeft
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem17: TdxLayoutItem
            Parent = dxLayoutGroup3
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Guardar Archivo en:'
            Control = cxDBButtonEdit3
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutItem18: TdxLayoutItem
            Parent = dxLayoutGroup3
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Raz'#243'n Social'
            Control = cxDBTextEdit4
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem19: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahLeft
            CaptionOptions.Text = 'RFC:'
            Control = cxDBMaskEdit3
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem20: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Reg. Patronal'
            Control = cxDBTextEdit5
            ControlOptions.AlignHorz = ahLeft
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup3
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem21: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup13
            AlignHorz = ahLeft
            CaptionOptions.Text = 'C'#243'digo:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 322
            Control = cxDBTextEdit6
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem22: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup12
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Rep. Legal'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            Control = cxDBTextEdit7
            ControlOptions.AlignHorz = ahLeft
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup3
            LayoutDirection = ldHorizontal
            Index = 4
            AutoCreated = True
          end
          object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup3
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem23: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup14
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Logotipo:'
            CaptionOptions.Layout = clTop
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            SizeOptions.Height = 206
            SizeOptions.Width = 393
            Control = cxDBImage1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem24: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup14
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'C'#233'dula Fiscal:'
            CaptionOptions.Layout = clTop
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            SizeOptions.Height = 202
            SizeOptions.Width = 247
            Control = cxDBImage2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup3
            AlignVert = avClient
            LayoutDirection = ldHorizontal
            Index = 6
            AutoCreated = True
          end
          object dxLayoutItem25: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup13
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'dxDBToggleSwitch1'
            CaptionOptions.Visible = False
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 320
            Control = dxDBToggleSwitch2
            ControlOptions.AlignHorz = ahRight
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem26: TdxLayoutItem
            Parent = dxLayoutGroup3
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Nombre Empresa:'
            Control = cxDBTextEdit8
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 941
          Height = 235
          Align = alClient
          TabOrder = 1
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxMaskRFC: TcxDBMaskEdit
            Tag = -1
            Left = 123
            Top = 93
            DataBinding.DataField = 'Rfc'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 14
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 220
          end
          object cxtextCodi: TcxDBTextEdit
            Tag = -1
            Left = 123
            Top = 10
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 20
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object dxDBToggleSwitch1: TdxDBToggleSwitch
            Left = 539
            Top = 10
            TabStop = False
            Caption = 'Activo:'
            DataBinding.DataField = 'Activo'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.StateIndicator.Kind = sikText
            Properties.StateIndicator.OffText = 'No'
            Properties.StateIndicator.OnText = 'Si'
            Properties.StateIndicator.Position = sipInside
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
          end
          object cxtextEmpre: TcxDBTextEdit
            Tag = -1
            Left = 123
            Top = 37
            DataBinding.DataField = 'Titulo'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 100
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 361
          end
          object cxtextRazonSo: TcxDBTextEdit
            Tag = -1
            Left = 123
            Top = 65
            DataBinding.DataField = 'RazonSocial'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 150
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 361
          end
          object cxtextRegPat: TcxDBTextEdit
            Tag = -1
            Left = 427
            Top = 93
            DataBinding.DataField = 'RegPatronal'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 14
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 230
          end
          object EdithBtnArchivos: TcxDBButtonEdit
            Tag = -1
            Left = 123
            Top = 149
            DataBinding.DataField = 'ArchivosEmpresa'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 455
          end
          object cxtextRepLeg: TcxDBTextEdit
            Tag = -1
            Left = 427
            Top = 121
            DataBinding.DataField = 'RepresentanteLegal'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 200
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 254
          end
          object cxtextRegFiscal: TcxDBTextEdit
            Tag = -1
            Left = 123
            Top = 121
            DataBinding.DataField = 'RegimenFiscal'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 100
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 209
          end
          object imgEmp: TcxDBImage
            Left = 687
            Top = 29
            DataBinding.DataField = 'Logotipo'
            DataBinding.DataSource = dsEmpresa
            Properties.Caption = '<Dar doble clic para cargar>'
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.GraphicTransparency = gtTransparent
            Style.HotTrack = False
            TabOrder = 9
            OnDblClick = imgEmpDblClick
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Height = 181
            Width = 216
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahParentManaged
            AlignVert = avParentManaged
            SizeOptions.AssignedValues = [sovSizableVert]
            SizeOptions.SizableVert = True
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup15
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'RFC:'
            Control = cxMaskRFC
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignVert = avClient
            CaptionOptions.Text = 'C'#243'digo:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 322
            Control = cxtextCodi
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            CaptionOptions.Text = 'dxDBToggleSwitch1'
            CaptionOptions.Visible = False
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 320
            Control = dxDBToggleSwitch1
            ControlOptions.AlignHorz = ahRight
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Nombre Empresa:'
            Control = cxtextEmpre
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Raz'#243'n Social'
            Control = cxtextRazonSo
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup16
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Reg. Patronal'
            Control = cxtextRegPat
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Guardar Archivo en:'
            Control = EdithBtnArchivos
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup16
            CaptionOptions.Text = 'Rep. Legal'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            Control = cxtextRepLeg
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            Index = 1
            AutoCreated = True
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup15
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Regimen Fiscal'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 301
            Control = cxtextRegFiscal
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Logotipo:'
            CaptionOptions.Layout = clTop
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            SizeOptions.Height = 206
            SizeOptions.Width = 393
            Control = imgEmp
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Direcci'#243'n Empresa/Negocio'
        ImageIndex = 38
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 941
          Height = 235
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxtextColonia: TcxDBTextEdit
            Tag = -1
            Left = 68
            Top = 38
            DataBinding.DataField = 'Colonia'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 50
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 463
          end
          object cxMaskTel: TcxDBMaskEdit
            Tag = -1
            Left = 68
            Top = 66
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.EditMask = '!\(999\)000-0000;1;_'
            Properties.MaxLength = 0
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 252
          end
          object cxtextCalle: TcxDBTextEdit
            Tag = -1
            Left = 68
            Top = 10
            DataBinding.DataField = 'Calle'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 50
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 361
          end
          object cxDBHyperLinkEdit1: TcxDBHyperLinkEdit
            Tag = -1
            Left = 68
            Top = 94
            DataBinding.DataField = 'Web'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.Prefix = ''
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 428
          end
          object cxtextMail: TcxDBTextEdit
            Tag = -1
            Left = 68
            Top = 122
            DataBinding.DataField = 'CorreoElectronico'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 380
          end
          object cbbCiudad: TcxDBLookupComboBox
            Tag = -1
            Left = 68
            Top = 150
            DataBinding.DataField = 'IdCiudad'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.KeyFieldNames = 'IdCiudad'
            Properties.ListColumns = <
              item
                FieldName = 'Fk_Ciudad'
              end>
            Properties.ListSource = ds_ciudad
            Properties.OnEditValueChanged = cbbCiudadPropertiesEditValueChanged
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 491
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Tag = -1
            Left = 384
            Top = 10
            DataBinding.DataField = 'NoExt'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 10
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 55
          end
          object cxtextNoInt: TcxDBTextEdit
            Tag = -1
            Left = 562
            Top = 10
            DataBinding.DataField = 'NoInt'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 10
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 27
          end
          object cxSpinCP: TcxDBSpinEdit
            Tag = -1
            Left = 404
            Top = 66
            DataBinding.DataField = 'CP'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.AssignedValues.DisplayFormat = True
            Properties.AssignedValues.EditFormat = True
            Properties.MaxValue = 99999.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 264
          end
          object cxtextLocalidad: TcxDBTextEdit
            Tag = -1
            Left = 403
            Top = 150
            DataBinding.DataField = 'Localidad'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 50
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 9
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 532
          end
          object cxMapa: TdxMapControl
            Left = 674
            Top = 29
            Width = 321
            Height = 237
            NavigationPanel.Height = 50
            TabOrder = 10
            OnDblClick = cxMapaDblClick
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            object cxMapaImageTileLayer1: TdxMapImageTileLayer
              ProviderClassName = 'TdxMapControlOpenStreetMapImageryDataProvider'
              Provider.Subdomains.Strings = (
                'a'
                'b'
                'c')
              Provider.UrlTemplate = 'http://[subdomain].tile.openstreetmap.org/[z]/[x]/[y].png'
            end
            object cxMapaBingMapGeoCodingDataProvider1: TdxMapControlBingMapGeoCodingDataProvider
              UseLocation = True
              UseMapView = True
              UserMapView.NorthLatitude = 18.270000000000000000
              UserMapView.WestLongitude = 95.130000000000000000
            end
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahParentManaged
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group_Root
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl2Item2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Colonia:'
            Control = cxtextColonia
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Telefono:'
            Control = cxMaskTel
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Calle:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 314
            Control = cxtextCalle
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            CaptionOptions.Text = 'Web:'
            Control = cxDBHyperLinkEdit1
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl2Item7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            CaptionOptions.Text = 'Correo:'
            Control = cxtextMail
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl2Item11: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            CaptionOptions.Text = 'Ciudad:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 284
            Control = cbbCiudad
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'No. Ext:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 174
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup2
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl2Item3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'No. Int:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 154
            Control = cxtextNoInt
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Codigo Postal'
            Control = cxSpinCP
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup2
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxLayoutControl2Item12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Localidad:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 323
            Control = cxtextLocalidad
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup2
            LayoutDirection = ldHorizontal
            Index = 5
            AutoCreated = True
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Ubicaci'#243'n'
            CaptionOptions.Layout = clTop
            Control = cxMapa
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Datos CFDI'
        ImageIndex = 13
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxLayoutControl5: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 941
          Height = 235
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object ImgCedula: TcxDBImage
            Left = 10
            Top = 29
            DataBinding.DataField = 'Cedula'
            DataBinding.DataSource = dsEmpresa
            Properties.Caption = '<Dar doble clic para cargar>'
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.GraphicTransparency = gtTransparent
            Style.HotTrack = False
            TabOrder = 0
            OnDblClick = ImgCedulaDblClick
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Height = 180
            Width = 287
          end
          object EdithBtnCertificado: TcxDBButtonEdit
            Tag = -1
            Left = 105
            Top = 215
            DataBinding.DataField = 'Certificado'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 417
          end
          object EdithBtnKey: TcxDBButtonEdit
            Tag = -1
            Left = 105
            Top = 243
            DataBinding.DataField = 'Llave'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = EdithBtnKeyPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 425
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Tag = -1
            Left = 105
            Top = 271
            DataBinding.DataField = 'ClaveCSD'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.EchoMode = eemPassword
            Properties.MaxLength = 20
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 425
          end
          object dxLayoutGroup2: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem33: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Cedula Fiscal'
            CaptionOptions.Layout = clTop
            Control = ImgCedula
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Ruta Certificado:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 536
            Control = EdithBtnCertificado
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Ruta Llave:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 536
            Control = EdithBtnKey
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Clave CSD'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 536
            Control = cxDBTextEdit2
            ControlOptions.ShowBorder = False
            Index = 3
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Otras Configuraciones'
        ImageIndex = 20
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxLayoutControl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 941
          Height = 235
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          DesignSize = (
            941
            235)
          object cxDBSpinEdit1: TcxDBSpinEdit
            Tag = -1
            Left = 156
            Top = 38
            DataBinding.DataField = 'Decimales'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 356
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Tag = -1
            Left = 156
            Top = 66
            DataBinding.DataField = 'MascaraProveedores'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 10
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 348
          end
          object cxDBMaskEdit2: TcxDBMaskEdit
            Tag = -1
            Left = 156
            Top = 94
            DataBinding.DataField = 'MascaraClientes'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.MaxLength = 10
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 359
          end
          object cxDBColorComboBox1: TcxDBColorComboBox
            Tag = -1
            Left = 156
            Top = 122
            ParentFont = False
            Properties.CustomColors = <>
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 351
          end
          object cxImage3: TcxImage
            Left = 552
            Top = 38
            Anchors = [akLeft]
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000200
              000002000806000000F478D4FA0000000467414D410000B18F0BFC6105000000
              097048597300007A2D00007A2D01600338400000001974455874536F66747761
              7265007777772E696E6B73636170652E6F72679BEE3C1A000031A04944415478
              5EEDDD09945DC57DE77113AFF18927769CC964ECD8C1B18F8D132713DB893D76
              C671BC1D2F9309DA0C6247BBE8BDD5DD6AEDA07DDFD08A36B4A305EDA00D8416
              408004020949A05D42FBCEA21D899AAAE7EEA469FED5DDEFBD7BEFAB5BF7FBCE
              F99CC9B9867E55359CFAFFDEBD75AB3EA69402000009235E0400007E132F0200
              00BF8917010080DFC48B0000C06FE2450000E037F1220000F09B78110000F84D
              BC080000FC265E0400007E132F020000BF8917010080DFC48B0000C06FE24500
              00E037F1220000F09B78110000F84DBC080000FCF6B166799D9B0300E0A9AF49
              C50F7F08000A00004FDD2F153F100000007E230058100000003E230058100000
              003E230058100000003E230058100000003E230058100000003E230058100000
              003E230058100000003E230058100000003E230058100000003E230058100000
              003E230058100000003E230058100000003E230058100000003E230058100000
              003E230058100000003E230058100000003E230058100000003E230058100000
              003E230058100000003E230058100000003E230058100000003E230058100000
              003E230058100000003E230058100000003E230058100000003E230058100000
              003E230058100000003E230058100000003E230058100000003E230058100000
              003E230058100000003E230058100000003E230058243200FC5EB88686FB7D7E
              27F13A1A205FB806204C04000BAF0340597EB99A5C58A41617E5AB75C5EDD5AB
              256DD5819256EA4C690B75BCB4A57AB3A4B57AB1B89D5A55FC809A5754A08615
              96A816F995E2DF4A9AFB4B3BA861436E53F327FD52AD9EF563B569E177D5AE15
              DF5227D67D559D7BF6CBEAD0D35F575B977D476D98F703B574DA4FD5D4B1BF53
              1D7BB4265C19BAC837EDDE51357EB84C359ED841359A51AA1ACD2F51B72E2B56
              B7AE2E52B72E2F568D1696A846B34B55E3291D54E3B165AA49BF0AD5AC986005
              84800060E15500689ED749F528E8A016E882BF5717F7B3BAD0A7CB84834D3A14
              4CD0C1213F5F4FCAC2F7F82AAFB2404D18F51FA9627F5617F9F3CF7D296D0775
              30583AF5DF54AF3EF7A83B0A3B8ADFE3A5C2CEAA496F5DF4277550B73E5155E8
              D3B5AA48359A55AA9A0C2D574DCB090340400800165E0480DBB4D185C5EAA0FE
              752F15F56C6CD461C0DC4990BED717A55DDBA9E71FFF27B1A067E3E83337AB89
              3A50342FF0380898C23FB23CF5AB5E2CEA59683CBD5435ADE48E149025028045
              EC0340DF8252F54686BFF61BCADC155859FC806A97EF57216B5B5EA496CFF849
              EA96BE54C083B277D537D5E041B7FBF578205F17FE8115AAD1D2E00BFF87ACD2
              41604207D5AC037704800C11002C621B00CCEDF94DC56DC5821D9693A52DD5AC
              A282D41D07A94D71715B7E273563FC6FD5A9F55F110B7658B62EFDFBD4DD06A9
              4D71D2B46BA56AB4A0442ED8615951A49A0CF7FB4E1410120280452C03C08305
              1DD4115D8CA5221D85E78BDBA9FB62BA58F0DE9232F5DCFCE06FF737945944D8
              AFFF9D62DBE2A049FF0A75EB4AA14047A4F1D40EA9C70E52DB0088080016B10B
              0066719EB9252F15E628ED2A69AD8A62B648B0A0539EDAB5E216B13047E99C66
              DE1A90DAE8ACFCCEA9D5FA52518E9A79A3A069198F048006220058C4260098DB
              EE4F16E589C538578E95B654BD0AF42FB25A6D75D183BDEF53C7D6DE2C16E45C
              796AF68F55F38218DC49D1BFB8CDAB7C5231CE9965C5A94711627B01D44400B0
              884D0078BC285F2CC2B976428700D7DF1228E9D23E75EB5D2AC2B966F61090DA
              EC1273DB5D2CC2B9F6840E01BC2E08D4870060118B0030A2B0442CBEAED857D2
              5AB574744D80D9D0C7ACC2978AAF2BC68E682CB6DD0566331FB1F83AA2D1E325
              AA59112100A80301C0C2F900D0A9A02CB5FA5E2ABC2ED95CDC36B51191D4875C
              B9BDA052BDB4F0BB62D17589D974A85BCFFBC53EE452933E1562D1758DD92F80
              2D86012B028085D301A095FE551DC6E63E6159529427F62357164CF9B958705D
              7478CDD754DB8A22B11FB9D0B45365EAD53BA9E0BAA8F1A832B11F000800364E
              0780A58E2DFA6B887247D60398F7EDC3DEE02768AB67FD8BD8975C305BF24A85
              D6592B8B54D30A16050202028085B301C0BC62E7C2EB7EE932870B49FD895A2E
              DFF5CF94793DB0BC7B1BB13F516ADAB3A35C641DD7F8D178BC9102448C0060E1
              6C00585FDC5E2CB07190EB57037BF4BA4F2CB07160D62C487D8A4CBEFEF5FF78
              C4BBFC05885703818F200058381900BA14948985352EB697B4C9D976C166BF7D
              734CAF545CE3A24FBFBBC5BE45A1C980782CFCB331470C4BFD02128C0060E164
              0088F3AFFF6AB9BA0B10E75FFFD5362FFA47B16F51887C8FFF1034EDC25D00A0
              060280857301E0EEBC4EB178EDAF3ECB72F446C0A2477F2616D538318B175B74
              88FE97AC59442715D4B8E18D00E043080016CE05800105A562418D1BF3FA62D4
              8F01CCEDFF03ABBF2116D5B81931B499D8C7303519562E16D4B8496D0E24F40F
              48280280857301C09CBB2F15D438EA5C10ED2FB18AEE6DC4621A476BE7FC50EC
              6398CCF373A9A0C6115B0403FF890060E15400B85DCBE531BF419B5B5420F633
              2CB31EF9B5584CE3E8E4BAAFAA3B0A3B8AFD0C45492775EB2AB998C65193A16E
              9F4F0144880060E1540028CD2F170B695CBD52D256EC6758E2B0ED6F3A2A7BB4
              16FB1986B8BEFB6FC39E00C07F2200583815007A1674100B695CED2D89AE8019
              BB567C4B2CA471D5AFFF9D623FC3D06460BC5FFFABADD11C5E0704AA10002C9C
              0A00AE9FFA97AED39A599827F5350CAE1EF99BA9284F096C32D28F0580D51A2D
              2E16FB09241001C0C2A90030B5B0502CA471D622A26382EF292E178B689C9935
              0D525FC3D0F811B78FFD4DDB4A770E5602728C0060E154005854942F16D1382B
              C9AF10FB1AB4824E7962118DB327A7FFABD8D730349EE6CF1B00D59A95F22600
              A011002C9C0A00AB3C7A05B05AD7885E05340BE6A4221A67EB227C15B0D163FE
              0580A695EC08086804000BA702C0020FEF0098530DA5BE062DAFB2402CA271B6
              6CDA4FC5BE86A1F1D40E62118D33F36AA3D45720610800164E0580291EAE01B8
              2FA23500771555884534CE668EFF8DD8D730341EEFD91A8015AC0100AA10002C
              9C0A00C33D7B0BC09C6920F5332CC7D7FEB55848E36AF4F026623FC3D0648467
              6F012CE22D00A00A01C0C2A900F0A067FB00EC8E781F8037967F5B2CA471D5B7
              DF5D623FC310F763806B336B1AA47E02094400B0702A0014E757888534AE3615
              47BB13E00B0BBE2F16D2B82AEFDE46EC67189A3EE4D94E8053D80910A84200B0
              702A0098D3F30E95B4128B691CCD8CF82C8069637F2716D2383AB6F6AFD5ED05
              11AE622FEA947A775E2AA671D46450348B4F81182000583815008CA545796231
              8DA3F2FC680F6429EED25E2CA671B47AD68FC53E86A9D14C7F5E056CD6813700
              802A04000BE702402F4FD601EC2B691DE936C0D576AFF4E33C8041039B8BFD0B
              5393C17E2C046C34B744EC1F905004000BE702C01D799DD4310F8E04367B1A48
              FD0BDBDC89BF120B6A9C9CD9F057EA9EE2683650AAA9A9FED52C15D4B8316F34
              48FD03128A0060E15C0030567BB02360B7887600ACADB2472BB1A8C6C973F3FF
              49EC5B14CCAF67A9A8C6093B00021F4200B070320094E697AB3342518D8BCD11
              AFFEAFEDC505DF130B6B5C747928DAFD136A6AD23BDE6F0398330DA47E010946
              00B0703200182B627C17A0738E7EFD57ABE8DE462CAC71B06E6E74FBFFDBC4F6
              5C8055FCFA070404000B670340FBFC8EA99DF4A402EBB2B5C5EDC5FE44EDA9D9
              3F160BACCBCE3EFB6555D8294FEC4F949A768FE75D80C61378F71F1010002C9C
              0D00C6BCA202B1C8BAEAB416D5E13FF5C9ABCC4F2DA6930AADAB964CFD37B12F
              B910BBE38157E85FFFBCFA07480800164E0780FBF22A53DBE94AC5D645B323DE
              F8A73ED3C7FF562CB42EDABFFA1BAA45A93BCFAF9B567452B73E592C175B0735
              19CACA7FC0820060E17400304AF42FEA38BC16B8A1B87D4EDEFBAF8B69CFDA39
              3F140BAE4B4EADFF8A2AEB96DB859392A60F764C3D57970AAE4B1A4FE2D63F50
              07028085F301C0E85B50EAF45B013B4BDAA87BF2DCBCFD7A7771B9DAF1E4DF8A
              85D715B9D8F4A7A19A0C717B73A046734A55B302B9ED0052080016B10800C6D4
              C242B1F8E6DA91D2962ADF91E7FE360F742C50479EF99A587C736DF6845F8B6D
              7689595C2715DF5C6BB4A458352BE5B93F500F0280456C0280B99DFD98638B02
              0F96B4529505F178F66A4ED63BF8D4D7C5229C2B0BA6FC42FD3E3F06054CFFC2
              36B7D9A5229C2B8D1695F0CA1FD03004008BD804806A430A4BD40907D604BC56
              D256B5CDEF28B6D155ADCB8AD5AB4BFE412CC651326F278C1CD6546CA3CB9A0C
              2B77624D40A359A5AA5909BFFC8106220058C42E0018E694BD7D393C367855F1
              03EA4E479FF9D7E78EC28E6AC5CCFF2316E6281C5EF3B59CEEF497ADA63D3BE6
              F4ED80C68F94A966F972DB0088080016B10C0046ABFC4AF574C4BB051E2E6DA5
              C615168BED899BD1C39BA48AB154A4C3B261DE0F54BB8A42B13D71D2B463A56A
              343BE27D029616AB26FD39E31FC80001C022B601A05AC78272F562713BB16007
              C53C7230EB0FEECDF3EB99AB39716FD623BF5627D77D552CD841318F1DBAF66C
              21B621CECCDD80468F877C78D0725DF84796AB6685721B00D48B006011FB0050
              AD574107B5B5A48D58C03365B6225E5694A7DAC4EC597FBACCDA80A5D37EAA4E
              6FF88A58C033F5C6F26FAB0103EE706E7F8440E5774EFD326FB428E0C7022B8A
              54E3F165ACF207B24700B0F02600542BC8AF50930B8BD42B256D33DA3BE0A82E
              FAE619FFC0825275774C9FF367EAAEA28A54C15E35EB5FD4B1B5378B45BD3E5B
              977D474D1BFB3B55DCC58D3311A2D4B44BA56A3CAA2CF3BB024F14ABC6933BA4
              4E24E4173F10180280857701A0A6D6FA97FBF0C21235BDA8502DD1BFE4D717B7
              4FADDE3F50D24AED2A69AD3615B753AB75B19F5F94AF26EAD0F0504107D53C61
              45DFE6F6824AF560EFFBD4A4D1FF4F3D3EF917A9C385362FFA47B57BE5B7D4A1
              A7BFAEB6E942FFECBC7F56CBA6FD54CD1CFF9BD4AA7E1F9EEF07A56945A56A32
              B842351E5D967A85B0D1CCD23F048365C5A957F8CC89838D1FEDA01A8F2B534D
              8697A7761D64711F100A028085D7010000907804000B020000C06704000B0200
              00C06704000B020000C06704000B020000C06704000B020000C06704000B0200
              00C06704000B020000C06704000B020000C06704000B020000C06704000B0200
              00C06704000B020000C06704000B020000C06704000B020000C06704000B0200
              00C06704000B020000C06704000B020000C06704000B020000C06704000B0200
              00C06704000B020000C06704000B020000C06704000B020000C06704000B0200
              00C06704000B020000C06704000B020000C06704000B020000C06704000B0200
              00C06704000B020000C06704000B020000C06704000B020000C06704000B0200
              00C06704000B020000C06704000B020000C06704000B020000C06704000B0200
              00C06704008B8FAD79E1E5D70000F0D1B32F6FBD432A7ED001E0CCDBEF280000
              3CC51D000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              C06704000B020000C06704000B020000C06704000B020000C06704000B020000
              A05EFB0F1F5713673C19AAD776EC15BF3B4B04000B020000A05E4F6D7845FDFE
              FE874235F3F1A7C4EFCE1201C082000000A8D794D92BC4A21DA4A163E689DF9D
              2502800501000050AF9E83A689453B48153DC68BDF9D2502800501000050AFD6
              C543C4A21DA47BDBF717BF3B4B04000B020000A04E078E1C170B7618F6BD754C
              6C4316080016040000409D36BCB84D2CD661D8B879BBD8862C10002C08000080
              3ACD7AFC69B1588761E1931BC4366481006041000000D4A9FF88D962B10EC3D8
              294BC4366481006041000000D429AF7C8458ACC3D063C0A3621BB24000B02000
              0000AC8E9C3CAD6E6B2117EB30B42B1D2AB6230B04000B020000C0EAC52D3BC5
              421D1613368E9D3A2BB6254304000B020000C06AFED27562A10ED3ABDBF7886D
              C91001C082000000B01A3676BE58A4C3B4E2994D625B324400B020000000AC4A
              BB8E118B7498464F5A24B6254304000B0200004074E2EC39D5BC552FB14887A9
              7D8761627B324400B020000000445BB6EF110B7414B6EF3A20B6290304000B02
              000040347B41743B00D63677F15AB14D1920005810000000A2F2EEE3C4E21C85
              EEFDA6886DCA0001C082000000F8885DFB0F8B85392A77B4EEAD8E9E3A23B62D
              4D04000B020000E023E62C7A462CCC515AB576B3D8B63411002C080000808FE8
              F8D02362518ED20365C3D5F1D359EF0A4800B0200000003E64CFC1A391EEFF5F
              97471F5B21B6310D04000B020000E043A6CD5D2516E35C306B0176EE3924B6B3
              81080016040000C8C2D19367D48C79AB53A7E649FF7BDC98627B679B3E6231CE
              952C8F08CE5900D06DFF8456AEFD95F4BFE71A01000032648A7FE75E135345CA
              EC5EB7F1E51DE23F1717A7CFBFA3BAF699F49102EC82D5EB325E10989300A0DB
              FC77DA2B55EDDFA3391702080000900153FC3BF59CF0A122659E9B8F9DB22488
              856B39B178C5731FEA8F4B5A160C52AFBFB95F6C773D220D00BAAD1FD72AB52B
              D56DAFE25C08200000409ACCEDFEDAC5BFA6FC8A116AD36B6F8AFFAEABF61D3A
              AAEE6DDF5FEC8F2B4C08D8FAC63EB1FD75882C00E8367E53DB58B3CDB5381502
              0800009086FA8A7FB5DB5AF45413673CA14E9C3927FE1DD7F4193A43EC876B5A
              E40F54AFEDD82BF6C122F400A0DB759356A45DAA6E671D9C0901040000682053
              FC2B1B50FC6B2AEA342A75A88EF4F75C70FAFCDB6AE4840562DB5D757FDE00B5
              E5F5DD627F04A10600DD9E9BB5B535DBD7004E8400020000344026C5BFDAED2D
              7BA9A97356AA53E7CE8B7F3B574E9E3DAF068C9C2DB6D975F73ED05FBDD0B045
              97A10500DD8EB6DA7B35DB95869C8700020000D4239BE25F5359B7B16ADB1B19
              2D640BDCB15367D54303A78AED8C0BB3E872C898B96ADF5BC7C43E56093C00E8
              EF36CFFA57D66C4B86721A02080000508754F10F705B5CB3B18D3966F7D4B9B7
              C5EF8BC2E113A71AB48E212EEE6ED73735A627CE8AEB2D020B00FABBBEA14DD7
              AE577F7700721602080000601174F1AFC9ECB59FE16B6D5979E6F957536F2948
              6D8A3BD3AFB5BA7FB5FA9C7500D07FFB6FB447B5200B7F4D390901040000101C
              39115EF1AF66DE1418F4F0636AC7EE83621B826456CE77EB3B596C876FDA140F
              51A3262E54EB36BEA60E1E3DD1462A7EF5D17FE753DA0FB449DAFBE6EF862CF2
              10400000805AA228FE3599203078F4DC6CF7BC1799F7FB878D9D9FFA0EE9BB7D
              D7BC652FB321CF22ADA5F623ED3B9A59B9FF45EDD3A610EAFFF78F34B3735F0B
              6DACB659BBAA897F3344918600020000D4608A7FAE8EC2BDBD654F3574CC3CF5
              EAF63DA9D7F3A4F63584FED5AB56AC7929152AEE6AEBD6BEFE0EBAA6D5DEB52F
              97220B01040000A892CBE25F9B59D8D6B5EF643569E6936ACDB35BD47ECB4A77
              B398F0E8A933EAE56DBBD4B439AB54C707C727F6D7BE47220901040000D05C2A
              FE36E6D9B63974A855E120754FFB7EAA79AB5EE23F072F841E02080000122F55
              FCF52FE75A1330906BA186000200804433EFC453FCE1B0D04200010040A2F51A
              3C5D9A7401976CD36E928A783608000012EDD917B7A5B694AD35E1022EC9682F
              83FA10000024DEC4194F4A932EE082B952F10E02010040E29953FA5C7F030089
              B45FFB53A9780781000000DAAEFD875347CCD69A80815C311B14FD502ADC4121
              00004095A7D6BF2C4DC4402E74948A769008000050C3A8898BA4C91888D22A2D
              F055FFB5110000A086E3A7CFAA922EA3A5491988C209ED7F48053B68040000A8
              65FBAE03EAEEB67DA5C91908D307DAAFA4621D060200000896ADDA284DD04098
              FA4B853A2C040000B0183C6A8E344903617841FB8454A8C3420000008B23274F
              AB761D8649933510A48BDACD52910E13010000EAB07CCD4BD2840D04A9B754A0
              C3460000803A9C3EFF8E2AEB36569AB481209CD43E2715E8B0110000A01ECF6F
              DE2E4DDC4010F2A4E21C0502000034C04303A74A9337908D5D5AA40BFF6A2200
              0040036C7B63BFBAAD454F69120732D5582ACC5121000040030D1E3D579AC481
              4C6C968A7294080000D040ABD66E96267220133DA4A21C2502000034D0FEC3C7
              A5891CC8C4BF4A45394A040000484361E5C3D2640EA4E3B2F669A92847890000
              0069183571A134A127CEDDEDFAAA828A91AA6B9F496AD0A8396AC2F427D4BC25
              6B538F499E5AFFB29ABF74BD9A34F3493574CC3CD5BDDF945470BAB77D7FF16F
              25D05AA920478D0000006958B9769334A17BED8ED6BD55CF41D3D4E2E5CFA54E
              4A345B244B63D310C74E9D556FEC3DA4963FFDA2EA3F7C562A4848DFE9B907A5
              821C35020000A461FF5BC7A409DD3BF7E50D48BDF5B05AFF9A3F7AF28C381641
              3871E69C5AB7F1353572C202D5BA68B0D8160FFD542AC851230000409AEE68D5
              5B9AD463AF45C14035EED1256AE3E6EDEAD4B9F362DFC364B65DDEBC7557EAD1
              41BBD2A1621B3DF135A920478D00000069F26D43A0BBDBF6555366AFC8EAD67E
              D0CC9D81B98BD7AAFBF307886D8EB9AF4B05396A0400004883F9952A4CE8B174
              7BCB5EEAE1090B538F35A4BEBAE0F08953A93B0277B6E923F621A6BE2915E4A8
              110000200D27CF9E9726F4D8E9376CA6DAB1FBA0D84717ED3D74548D18FFB80E
              2D5EDC7DB9452AC851230000401A8E9F3E2B4DE8B151D97382DAFCDA9B62DFE2
              E0F537F7A7DE4890FA16237F2715E4A8110000200D6645BC30A1C78259E077EA
              DCDB62BFE2E6B1856BE2BC16E3EFA5821C35020000A461DFA1A3D284EEB4E6AD
              7AA9252B9F17FB1367E6F5C17BDAF513FBECB81F4B05396A0400004843DC0E04
              6A913F50BDB865A7D8171F9847020F940D17FBEEB08E52418E1A010000D26056
              CD0B13BA934A3A8F56BBF61F16FBE19343474FA6B62496C6C0512BA5821C3502
              0000A421BF628434A13BA7F79019A1EEE0E71AF37686D94D501A0B075DD43E29
              15E528110000A081F61C3C224DE6CE193C6A8E3A7DDE8FC57EE99A3C73B93826
              0EFA895494A344000080067A62F50BD244EE948E0F8E4FBDAA28B53F09CC464D
              7D87CD14C7C631393F10880000000D34F0E1C7A489DC196D4B8638BDAB5F548E
              9E3AA34ABB8E11C7C8212F4845394A0400006800730CAECBBBD0DDD5B68FDAB2
              7D8FD8F624DABDFFB06A5930481C2B87FC4A2ACC512100004003B87C5BF9B616
              0FA9D5EB368BED4EB2975E7DC3F5931B5FD16E928A7314080000508F4DAFBD29
              4DDECE983A67A5D8EE309D7FF73D75E1F26575E5EA3575F5FDF7D5FBD7AFAB1B
              1F7CA0EBCA1F3E1FE8FFFBBABE764DFF6FE69FB978F98A7AFBBD0BE2DF0AD3B2
              551BC5317348733D5C62810E1B010000EAD1B9D74469E27682B9336116BE49ED
              0E9A29E097AE5CD185FD86AE1F997D6EDCB8A12E5FB9AADEB9105D1818F7E852
              71EC1CB14FCBC92B81040000A8C3DAE75F95266D2798E7FE666B62A9DD417AE7
              C2C5D42FFCA03F260CBC77F192F89D413A76EAAC6A5D3C441C434714E8E1108B
              74980800006071E0C871A7B7999D3C6BB9D8EEA0985FFCE6167ED81F132E4CC8
              90DA1094C52B9E13C7D01167B56FEAA1100B7558080000203872F2B42AEB3E4E
              9AAC9D60F6F83F72E2B4D8F66C9D7DE75D75E5DA355D23A2FD98B071EEDDF7C4
              3665CB9C825858F9B038968E38A07D490F8358ACC3400000805A4E9C3DA7BAF7
              9B224DD2CE98B7649DD8F66C99C57DD76F64FE8C3FDB8F594818D662C135CF6E
              11C7D221DBB4CFEB61100B76D00800005083D94277E048B737FC318F254C4891
              DA9F0D731BDEACDECFF5C7B4E0BD4BE1AC0DE8D4738238A60ED9A07D460F8158
              B483440000801AC64E592C4DCA4E59B1E625B1EDD9B870E9B2AE096E7DCC1B07
              525BB361F60690C6D4318BB48FEB21100B7750080000A0ED3D7454F51A3C5D9A
              8C9DD2A1DBD8C05FFB7BF7E2255D0FDCFC5CBC7C596C7336FA0C9D218EAD6336
              6AB7E821108B7710080000126FC9CAE7D5BDEDFB4B93B07356AD0D76C7BFF3EF
              5D70E2B67F5D9FA0DF107865DB6E716C1D7445EBAC7D420F8358C4B341000090
              58BBF61F767EB15F4D77B4EE1DE819FF66B5BF7917DFF58F09286671A2D4874C
              B52D192A8EB1A3CC96C1FF4B0F8558C8334500009038E6C4BCD90BD6A8BBDBF6
              95265B67F51C344DEC4FA6A278C73FA88F7933C10416A91F991833D9FDB51EB5
              5CD3FA6B37EBE1100B7ABA08000012619F2EFA0B9ED8A0BAF499A46E6BE1EEA9
              7E7559BCFC39B16F99303BF0C5ED13E4A2C0E736BD2E8E714C6CD63A6A7FA387
              452CEE0D410000E025B3506EE79E436AFED2F5A9BDFCE35AF4AB9913FF4C8891
              FA9AAEB35A1C6EFDD7FE984701E702BA0B70EADC79755FDE0071AC63E665AD52
              FB8E96D69B03040000B167DE897F6DC7DED4C96FE6353E53F0EF69D74F9A2C63
              ABE383E3C5BE67C2ACAC8FEBE7F2D5AB629F323178F45C71AC63ECB2F692365E
              6BA7FD50FB633D6C040000F167B6E87D71CBCED42FFB61E3E6ABD2AE635C3FF3
              3D10B31E7F5A1C8F7499E7E8AEAFFAAFEF13D482C0A736BC228EB567AE6B3BB4
              995A99F673ED0B7A18090000E2A34B6F732B5F9CE4BCB77DD701714CD215E75F
              FFD59FA0EE021C3D7546DDD9A68F38DE09709000002036DA7518264D64DE33FD
              96C62313611CEB1BF5C7AC5F90FA968907073C2A8E7912100000C446520340D7
              BE93C5F148975940E7CB27A80383464D5C248E7912100000C4465203C0E05173
              C4F148973960C7974F50AF04CE98B75A1CF324200000888DA4068009D39F10C7
              235D57AFC567E39FFA3ED7AF5F17FB98AEA5AB368A639E04040000B191D40030
              6FC95A713CD265CEDAF7E913C4CE80EB5FD82A8E7912100000C4465203405007
              00F9F609E275C0AD3BF789639E04040000B191D40060CEB097C6231DE774B1F4
              ED13C42981878E9E14C73C090800006223A901E0CD7D6F89E3910EB36ADEB78F
              39CF40EA6BBACC298BD2B8FB8E00002036921A008E9F3E2B8E473ADEBD78B1AA
              6CFAF3B97839983701DA27F4BF2B020080D8486200303BD54963912E9F5E01AC
              FE5CBA12CC8E801DBA8D15C7DE77040000B191D43B00474F9E11C7231DEF5EF0
              EF0EC085CB97C5BEA6AB4DF11071DC7D470000101B490D003BF61C14C7231D3E
              AE017837803500A7CFBFAD6E6FD94B1C77DF110000C4465203C0C6977788E391
              0E9FB601AEFEBC7D21FBED80F7BF754C1CF324200000888DA40680156B5E12C7
              235DBE7DCCAB8D523FD3B165FB1E71CC938000002036921A001E5BF88C381EE9
              BA71C3B39D00853EA66BEDF3AF8A639E04040000B191D400307EEA52713CD275
              E5DAB5AAD219FF8F39D658EA63BA162F7F4E1CF324200000888DA4068081231F
              13C7235D66D19C2F9F8B01BD013075CE4A71CC938000002036921A003AF79A28
              8E47BACCE139BE7C823807C018F9C80271CC938000002036921A005A150E52A7
              CFCB6392AE6BEFC7FF48E0EB376E887DCB4497DE13C5314F02020080D8486A00
              305EDEB64B1C93745DB874B9AA8CC6F773E94A305B009B83806E6FD9531CEF24
              200000888D240780C9B3968B63922EB372FE86FE051DD7CF071F7C90DAD340EA
              5BBA96ADDE288E7552100000C44692034051A751E29864C29CA217D74F50BFFE
              8D3E436788639D14040000B191E40060ECDC73481C974C98D7E8E2F6B9A17FFD
              9B858C527FD275ECD4D9D4414BD23827050100406C0C1933573D50365CDDD622
              99CF6D83DA10C8782786870399F50B525F32F1F48657C4314E88C3DA53040000
              B163CEC7DFFAC63EB57AFDCB6AC6BCD56AF0E8B9AABCFB38754FBB7ED264E78D
              A05E07AC16A78D8182DAF8A7DAD031F3C431F6C815ED756DBED65BBB4BFBBEF6
              277A383F661000007865DFA1A36AE3E6ED6AE1931BD4B84797A8EEFDA67873AB
              D7DCF93870E4B8D8EF4C98058171781460162D06B5F0CF3875EEBCBA2F6F8038
              C63174437B499BA89569FF57FBBAF6713D74A9426F430000E03DF3BCD7ECF93E
              6AE2A2D8AF2358F8E4B3621F33650AABCB67049855FFE7DFCBFED4BF9AD6BFB0
              551CDB1839A54DD7EED0BEA887492CF0F5210000489CD7DFDCAF1E5BB826B5B2
              BE6A428D8D76A543538F40A47E65EA6D5D60759D75F2F3EEC58B629BB351D163
              BC38B68E3BA4F5D0FE59BB490F8D58D4D34100009058E656F09CC5CFC46EED40
              908B01AB994581E6D7B62B1FD312F3BAA2D4D66C987523D2983AEC9AD65FFBAC
              1E12B190678A000020F1CCBA81410F3F264DBE4E32CFAFDF3A7652EC4B36CCFE
              FA669BDD5C7FCCEB7EE6AE84D4C66C98C0975F31421C53473DA37D5B0F8958C0
              B3450000802A66F1605C1E0B4C9CF184D8876C99F7EC73795E805994782EA083
              7E6A5BF0C406712C1D745CBB530F8758B883420000801A4E9C3DA77A0E9A264D
              CA4E316F36EC397844EC43102E5EBE12F92381CB57AF06B6D14F6D474F9E491D
              AA248DA5635ED5FE4C0F8758B483440000805A4E9C39A71E1CF0A834393B65D8
              D8F962FB8362DE10304539ECCFD56BD7023BDED766DA9C55E2183AC6BCB7FFE7
              7A48C4821D3402000008CC4A7BB38740AD09DA29665F806D6FEC17DB1F24539C
              C3D834C83C6A08E3597F6D66EF84BBDBF515C7D0213BB5BFD0C32216EB301000
              00C0C2EC1FD0B5CF2469B27686D90131E8D7026DCCEDF9772F5E4A85814C1E0F
              987FE5EAB5F7D57B972E05BAB14F5D4E9F7F5BF51E3C5D1C3B87ECD2FE520F91
              58A8C3420000803A1C3D75C6F9F7C6CD1B0C52DBC3665E1D34FBF39B13FA4C28
              30BFE8CD5B04C6B5F7AFA7AE5DBA72555DB87C59BDABFFD9B09EEFD765D2CC27
              C53173C841EDCB52810E1B010000EA61CE1DB8BDA5DB0710CD9CFF94D8F6245B
              B1E62571AC1CF31F52718E020100001A60CCE4C5D2E4ED8CDB5A3CA49E796E8B
              D8F6247A65DBEE389C01B1522ACC512100004003988D77EECF77FB0019B3D02D
              8A4581AE331B3BB52E1E228E9143CC0E7FB74885392A040000682073104FAD49
              DC390F940D57078F9E10DB9F04664164798F71E2D83866885494A34400008006
              322BCA4BBB8E912673A774E93D31B57851EA83CFCC56BF0347C6624BE713DA7F
              938A72940800009086556B374B13BA734C50D9BDFFB0D8071F1D3A765275EB3B
              591C0B0775960A72D4080000908623274EABE6AD7A4993BA735A140C542F6ED9
              29F6C327E678E7BCF2581DF2F3B752418E1A010000D2E4FA0E8135DDD1AAB75A
              B2F279B11F3E58FBFCAB713BCE79AF548C7381000000699ABF749D34B13B6DEC
              9425EAD4B9B7C5FEC4D5EC054FA7B64396FAEBB0E15231CE05020000A4E9CD7D
              6F4913BBF3CC9D0BF33AA3D4A738312BFD078F9A23F631067E2615E35C200000
              40068A3A8D922677E7B52A1A9C7A9DD1AC9897FAE5B2D3E7DF512BD76E8ADBF3
              FE9ACE6B9F908A712E1000002003A3262E9426F8D828A818A99E5AFFB2D83717
              6DDCBC3D75F091D49718592115E25C210000400626CE70FE909906E9F8D0234E
              BF29B075E73EF5D0C0A962DB63688E548873850000001998316FB534C1C79639
              32D7BC4E27F53517761F38A2868E9917C7457E75992415E25C2100004006E62D
              89DF9B00F531C5B64B9F49BA6F6BD5AE1C6C22B4FFAD636AF1F2E752BFF8CDEB
              8B521B636E84548873850000001930EFD60B13BC57CC6E82D3E6AC52AFEDD82B
              8E411076EE39A41E5BB84655F69CE0DBAF7D496FA910E70A0100003210972D81
              83620E191AF7E852B5E6D92DA9A376F71E3A9AD69B04E61C05F30B7FCBF63DA9
              CD7B26CF5A1EDB3729B2502915E25C21000040069ED1454C98E013C5FC6237AF
              1596751B9B5A43F0F084856ADADC556AC6FCD56AF4A445AACFD019AAA2C778D5
              B66488BABD653CB64F0E59A15488738500000019786CE133D2040FD465A45488
              738500000019E83F62B634C10375D92815E25C2100004006DA950E952678A02E
              973576020480B8DA7FF8B834B9030DF15DA918E702010000D2C4024064A1AD54
              8C7381000000699A326B8534B1030D31512AC6B940000080349813E98A3B27EE
              FD7504E7B0F629A920478D000000693027E8D59AD081743D2015E4A8110000A0
              81CCAFFF922EA3A5091D4887B90BF069A92847890000000DF4F48657A4C91CC8
              44815494A3440000800630BFFECDE138C2440E64E2A8F619A93047850000000D
              600EC1A9358103D92A920A7354080000508F9367CFB3F21F6138AE7D5E2ACE51
              200000403DA6CCE6BD7F846686549CA3400000803ABCF2FA6E8EB245D81A4905
              3A6C040000B03871E69C2AEAC4AD7F84EEA4F6E752910E130100002C264C5F26
              4DD64018E64B453A4C2600FC6F00C0878D99BCB8AD9E946FD49AA4813035970A
              7558C48B0090647A22FEACB6A7C6C40C44E1ACF697D27F9361102F024092E949
              78548D491988D232E9BFC93088170120A9F404FC73ED831A133210B5FBA5FF36
              83265E048024D213EFE7B4833526622017DED6BE22FD371A24F1220024919E74
              27D69884815C5A2DFD371A24F1220024919E7467D69A84815C59A37D4AFAEF34
              28E2450048223DE17E5C230420D74CF1FFACF4DF6890C48B0090547AE2250420
              972229FE86781100924C4FC08400E44264C5DF102F0240D2E989D8A51070595B
              A7F5D5BA68DDB407B59E5A1FAD9F66DA7A4C93FE7DB82FD2E26F88170100390D
              01EF69ABB4AEDA4FB44F4BED93E87FF6162D4F7B5C3BA3497F1F6E89BCF81BE2
              4500C01FE88939CA1060B6822DD50259FDADFFCE4DDA2FB5CD9AF47D49623677
              BAA09DD34E686F697BB51DDA2E2D579B3FE5A4F81BE24500C07FD11374D821C0
              DCE21FA47D5EFAFE6CE9BF6B82C06D5AD2CE37308F44A66977697F218D4D35FD
              BF7F41FB776DA0B651BBA6497F3348392BFE86781100F0617AA20E2304985F9D
              33B4AF4ADF1934FD3D9FD4CCE301F30B586A8F0F3669E5DA3F4863D050FADFFF
              63ED67DA6C2D8CBB03392DFE86781100F0517AC20E32046CD3BE277D4FD8F4F7
              FE89F644553B7C7140BB4DEA6FB6F4DFFDBEF64CD5F70421E7C5DF102F020064
              7AE20E22048CD73E23FDFDA8E8EFFF8436B5AA3D71F68E56A93578A164A6F477
              FC4E7B5D93DAD1504E147F43BC0800B0D31378A621C01CF2D24CFA9BB9A0DB62
              D60698B507525B5D77431BA7D5F96C3F68FAFBCCFFDFB7D232798CE24CF137C4
              8B0080BAE9893CDD10F0A276B3F4B7724DB7AB8316A72390AF6B774B7D898AFE
              FEFFAEADA86A4F433855FC0DF12200A07E7A426F48083085D5FCCAFEA4F4375C
              A1DBD7AEAABDAE33ABF39DB88BA2DB61EEA05454B5496A6B35E78ABF215E0400
              348C9ED8EB0A01A7B4DF48FF9E8B745B97D668BB8BAE68FF2EB53D97749B7EA0
              EDAF6A636D4E167F43BC080068383DC14B21C04CFCFF53FAE75DA5DBFB25CDAC
              53A8D90F575CD47E29B5DB05BA6D7FAACDAD6A6B35678BBF215E0400A4474FF4
              D521C03C9F367BF5FF91F4CFB94EB7DB2C70AB59C45C601EA3FC426AAF6B743B
              DB689734A78BBF215E0400A44F4FF8260464B5018D0B741F566B5221CE958952
              3B5DA5DBFB2DCDE9E26F88170100C9A58BD7CD9A3990482AC65133EB28FE4C6A
              27B2235E0400249B2EBA636B14E15CBA576A1FB2275E0400249B2EBC3FAF5588
              73619DD4360443BC080048365D7CCD7A86D3358A71D4AE6AB7486D4330C48B00
              00E8023CA146418EDA4CA94D088E781100005D847F5DAB2847E94EA94D088E78
              1100005D843FA99DAB5194A3620EFAF9A2D4260447BC080080A10BF1F41A8539
              2A1BA5B62058E24500000C5D8CF36B15E7287493DA826089170100307431FE51
              ADE21C85EF496D41B0C48B000018BA187F5633CFE4A5421D86E3DA4D525B102C
              F1220000D57441DE59A340876D89D406044FBC080040355D946B1F751CA68152
              1B103CF1220000D574512EAB55A4C3D4426A0382275E0400A09A2ECA3FAB55A4
              C3F423A90D089E781100806ABA287FBE56910ED317A4362078E24500006AD285
              797FAD421D8693D277231CE24500006AD2C5F9F15AC53A0CEBA5EF4638C48B00
              00D4A48B73D75AC53A0C8F48DF8D7088170100A84917E7DFD62AD6612895BE1B
              E1102F020050932ECE9FD39A87EC2BD277231CE2450000E037F1220000F09B78
              110000F84DBC080000FC265E0400007E132F020000BF8917010080DFC48B0000
              C06FE2450000E037F1220000F09B78110000F84DBC080000FC265E0400007E13
              2F020000BF8917010080DFC48B0000C06FE2450000E033F5B1FF0F2E00037DDC
              A6CDAF0000000049454E44AE426082}
            Properties.FitMode = ifmProportionalStretch
            Properties.PopupMenuLayout.MenuItems = []
            Style.HotTrack = False
            TabOrder = 7
            Transparent = True
            Height = 109
            Width = 120
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 156
            Top = 10
            DataBinding.DataField = 'IdMoneda'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.KeyFieldNames = 'IdMoneda'
            Properties.ListColumns = <
              item
                FieldName = 'FK_Moneda'
              end>
            Properties.ListSource = dsMoneda
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 364
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit
            Left = 156
            Top = 150
            DataBinding.DataField = 'UtilidadBase'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.DisplayFormat = ',0.00%'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object cxDBCurrencyEdit2: TcxDBCurrencyEdit
            Left = 425
            Top = 150
            DataBinding.DataField = 'UtilidadMinima'
            DataBinding.DataSource = dsEmpresa
            ParentFont = False
            Properties.DisplayFormat = ',0.00%'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'N'#176'. Decimales'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 536
            Control = cxDBSpinEdit1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.ShowAccelChar = False
            CaptionOptions.Text = 'Mascara para Proveedores'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 536
            Control = cxDBMaskEdit1
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Mascara para Clientes:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 536
            Control = cxDBMaskEdit2
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Color de Foco:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 536
            Control = cxDBColorComboBox1
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahLeft
            AlignVert = avTop
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            SizeOptions.Height = 118
            SizeOptions.Width = 151
            Control = cxImage3
            ControlOptions.AutoControlAreaAlignment = False
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahLeft
            AlignVert = avClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem13: TdxLayoutItem
            Parent = dxLayoutGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Moneda:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 536
            Control = cxDBLookupComboBox1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup1
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup11
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Utilidad base: '
            Control = cxDBCurrencyEdit1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem15: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup11
            AlignHorz = ahRight
            CaptionOptions.Text = 'Utilidad m'#237'nima: '
            Control = cxDBCurrencyEdit2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup9
            LayoutDirection = ldHorizontal
            Index = 4
            AutoCreated = True
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Cuentas Bancarias'
        ImageIndex = 28
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGridCuentas: TcxGrid
          Left = 0
          Top = 41
          Width = 543
          Height = 194
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridCuentasDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dsCuentas
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridCuentasDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'Codigo'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 147
            end
            object cxGridCuentasDBTableView1Column2: TcxGridDBColumn
              DataBinding.FieldName = 'Cuenta'
              PropertiesClassName = 'TcxSpinEditProperties'
              Width = 239
            end
          end
          object cxGridCuentasLevel1: TcxGridLevel
            GridView = cxGridCuentasDBTableView1
          end
        end
        object PanelBTN: TPanel
          Left = 0
          Top = 0
          Width = 941
          Height = 41
          Align = alTop
          TabOrder = 1
          DesignSize = (
            941
            41)
          object btnAgregar: TcxButton
            Left = 659
            Top = 6
            Width = 87
            Height = 28
            Hint = 'Nuevo registro (CTRL + Insert)'
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = 'Agregar'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = frmrepositorio.IconosBarra
            ParentBiDiMode = False
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = btnAgregarClick
          end
          object btnEditar: TcxButton
            Left = 752
            Top = 6
            Width = 87
            Height = 28
            Hint = 'Editar registro (CTRL + E)'
            Anchors = [akTop, akRight]
            Caption = 'Editar'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = frmrepositorio.IconosBarra
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = btnEditarClick
          end
          object btnEliminar: TcxButton
            Left = 845
            Top = 6
            Width = 87
            Height = 28
            Hint = 'Eliminar registro (CTRL + D)'
            Anchors = [akTop, akRight]
            Caption = 'Eliminar'
            OptionsImage.ImageIndex = 9
            OptionsImage.Images = frmrepositorio.IconosBarra
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = btnEliminarClick
          end
        end
        object PanelData: TPanel
          Left = 551
          Top = 41
          Width = 390
          Height = 194
          Align = alRight
          TabOrder = 2
          Visible = False
          object dxLayoutControl6: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 388
            Height = 151
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object edtCodigo: TcxDBTextEdit
              Left = 54
              Top = 10
              DataBinding.DataField = 'Codigo'
              DataBinding.DataSource = dsCuentas
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 275
            end
            object edtCuenta: TcxDBTextEdit
              Left = 54
              Top = 38
              DataBinding.DataField = 'Cuenta'
              DataBinding.DataSource = dsCuentas
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 121
            end
            object dxLayoutControl6Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutControl6Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Codigo'
              Control = edtCodigo
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutControl6Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Cuenta'
              Control = edtCuenta
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
          object Panel2: TPanel
            Left = 1
            Top = 152
            Width = 388
            Height = 41
            Align = alBottom
            ParentBackground = False
            TabOrder = 1
            object btnCancelDet: TcxButton
              Left = 293
              Top = 6
              Width = 87
              Height = 30
              Hint = 'Cancelar cambios (F12)'
              Caption = 'Cancelar'
              OptionsImage.ImageIndex = 2
              OptionsImage.Images = frmrepositorio.IconosBarra
              TabOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = btnCancelDetClick
            end
            object btnPostDet: TcxButton
              Left = 200
              Top = 6
              Width = 87
              Height = 30
              Hint = 'Salvar cambios (F10)'
              Caption = 'Aceptar'
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = frmrepositorio.IconosBarra
              TabOrder = 1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = btnPostDetClick
            end
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 543
          Top = 41
          Width = 8
          Height = 194
          AlignSplitter = salRight
          Visible = False
        end
      end
    end
  end
  object cxGrdDatos: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 38
    Width = 947
    Height = 175
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object cxGridDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.InfoPanel.DisplayMask = 'Elemento [RecordIndex] de [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      FindPanel.FocusViewOnApplyFilter = True
      FindPanel.InfoText = 'Buscar coincidencias en grilla'
      DataController.DataSource = dsEmpresa
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.UnderscoreWildcard = '%'
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Haga clic aqu'#205' para filtro personalizado'
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '< Sin registros a mostrar  >'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupRowHeight = 25
      OptionsView.Indicator = True
      object cxCodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 93
      end
      object cxTitulo: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'Titulo'
        Width = 126
      end
      object cxRazon: TcxGridDBColumn
        Caption = 'Raz'#243'n Social'
        DataBinding.FieldName = 'RazonSocial'
        Width = 233
      end
      object cxRfc: TcxGridDBColumn
        Caption = 'RFC'
        DataBinding.FieldName = 'Rfc'
        Width = 139
      end
      object cxRegimen: TcxGridDBColumn
        Caption = 'R'#233'gimen(Persona)'
        DataBinding.FieldName = 'RegimenFiscal'
        Width = 125
      end
      object cxImagen: TcxGridDBColumn
        Caption = 'Imagen'
        DataBinding.FieldName = 'Logotipo'
        PropertiesClassName = 'TcxImageProperties'
        Properties.GraphicClassName = 'TdxPNGImage'
        Width = 120
      end
      object cxActivo: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
        Width = 129
      end
    end
    object cxLvlDatos: TcxGridLevel
      GridView = cxGridDatos
    end
  end
  object dsEmpresa: TDataSource
    DataSet = zEmpresa
    Left = 654
    Top = 452
  end
  object zEmpresa: TUniQuery
    Connection = connection.Uconnection
    Left = 576
    Top = 456
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 553
    Top = 136
  end
  object tDialogo: TOpenDialog
    Left = 464
    Top = 136
  end
  object ciudad: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select    '
      'e.IdCiudad,'
      'e.FK_Ciudad as Ciudad, '
      'concat(e.FK_Ciudad, '#39', '#39', p.Estado) as LeyendaCiudad,    '
      'e.Codigo,    '
      'e.IdEstado,    '
      'e.Activo,    '
      'pa.Pais,'
      'p.Estado  '
      'From    '
      'master_ciudad as e   '
      'inner join master_estado as p   '
      'on(p.IdEstado=e.IdEstado) '
      ''
      'inner join master_pais as pa'
      'on(pa.IdPais = p.IdPais)'
      ''
      'Where   '
      
        '(:IdCiudad = -1 or (:IdCiudad <> -1 and e.IdCiudad = :IdCiudad))' +
        ' and     '
      
        '(:IdEstado = -1 or (:IdEstado <> -1 and e.IdEstado = :IdEstado))' +
        ' and   '
      
        '(:Activo = -1 and e.Activo = '#39'Si'#39' or (:Activo <> -1 and e.Activo' +
        ' = :Activo))   '
      'ORDER BY p.Estado,e.FK_Ciudad Collate utf8_unicode_ci Asc ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdCiudad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdEstado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Activo'
        ParamType = ptUnknown
      end>
    Left = 152
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdCiudad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdEstado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Activo'
        ParamType = ptUnknown
      end>
    object ciudadIdCiudad: TIntegerField
      FieldName = 'IdCiudad'
      Required = True
    end
    object ciudadCiudad: TWideStringField
      FieldName = 'Ciudad'
      Size = 50
    end
    object ciudadLeyendaCiudad: TWideStringField
      FieldName = 'LeyendaCiudad'
      ReadOnly = True
      Size = 102
    end
    object ciudadCodigo: TWideStringField
      FieldName = 'Codigo'
      Required = True
      Size = 45
    end
    object ciudadIdEstado: TIntegerField
      FieldName = 'IdEstado'
    end
    object ciudadActivo: TWideStringField
      FieldName = 'Activo'
      Size = 2
    end
    object ciudadPais: TWideStringField
      FieldName = 'Pais'
      Required = True
      Size = 45
    end
    object ciudadEstado: TWideStringField
      FieldName = 'Estado'
      Size = 50
    end
  end
  object ds_ciudad: TDataSource
    AutoEdit = False
    DataSet = zCiudad
    Left = 48
    Top = 152
  end
  object zMoneda: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select * from master_moneda where Activo='#39'Si'#39)
    Left = 400
    Top = 480
  end
  object dsMoneda: TDataSource
    DataSet = zMoneda
    Left = 296
    Top = 480
  end
  object cuentas: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    AfterInsert = cuentasAfterInsert
    Left = 892
    Top = 380
  end
  object dsCuentas: TDataSource
    DataSet = cuentas
    Left = 908
    Top = 308
  end
  object zCiudad: TUniQuery
    Connection = connection.Uconnection
    Left = 288
    Top = 160
  end
end
