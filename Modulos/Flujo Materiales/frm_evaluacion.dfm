object frmEvaluacion: TfrmEvaluacion
  Left = 353
  Top = 73
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Evaluaci'#243'n Inicial'
  ClientHeight = 499
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1061
    Height = 35
    Align = alTop
    TabOrder = 1
    inline frmBarraH11: TfrmBarraH1
      Left = 498
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 498
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
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
      Caption = 'Tabla...Agregando Datos'
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
  object Panel2: TPanel
    Left = 0
    Top = 240
    Width = 1061
    Height = 259
    Align = alBottom
    ParentBackground = False
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1053
      Height = 216
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxGDatos: TcxGroupBox
        Left = 11
        Top = 39
        Caption = 'Calidad de los Servicios'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = 14803425
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 130
        Width = 1016
        object dxLayoutControl4: TdxLayoutControl
          Left = 3
          Top = 16
          Width = 1010
          Height = 104
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxTResp: TcxDBTextEdit
            Left = 138
            Top = 10
            DataBinding.DataField = 'TiempoR'
            DataBinding.DataSource = ds_eserv
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
          object cxPEntrega: TcxDBTextEdit
            Left = 636
            Top = 10
            DataBinding.DataField = 'pEntrega'
            DataBinding.DataSource = ds_eserv
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
          object dxSGC: TdxDBToggleSwitch
            Left = 10
            Top = 38
            Caption = 
              #191'Cuenta con un Sistema de Calidad que gestione sus  productos o ' +
              'servicios en base a ISO 9001 o similar?'
            DataBinding.DataField = 'SGC'
            DataBinding.DataSource = ds_eserv
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
            TabOrder = 2
            Transparent = True
          end
          object cxDescripcion1: TcxDBTextEdit
            Left = 712
            Top = 38
            DataBinding.DataField = 'sDescripcion'
            DataBinding.DataSource = ds_eserv
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 121
          end
          object dxCert1: TdxDBToggleSwitch
            Left = 10
            Top = 65
            Caption = #191'Est'#225' certificado?'
            DataBinding.DataField = 'sCertificado'
            DataBinding.DataSource = ds_eserv
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
            TabOrder = 4
            Transparent = True
          end
          object cxNoCert1: TcxDBTextEdit
            Left = 323
            Top = 65
            DataBinding.DataField = 'NoCertificado'
            DataBinding.DataSource = ds_eserv
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
          object cxDate1: TcxDBDateEdit
            Left = 724
            Top = 65
            DataBinding.DataField = 'Vigencia'
            DataBinding.DataSource = ds_eserv
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
          object dxLayoutControl4Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tiempo de Respuesta:'
            Control = cxTResp
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Plazo de Entrega:'
            Control = cxPEntrega
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            CaptionOptions.Text = 'dxDBToggleSwitch1'
            CaptionOptions.Visible = False
            Control = dxSGC
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl4Group_Root
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = #191'Cu'#225'l?'
            Control = cxDescripcion1
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl4Group_Root
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl4Group_Root
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'dxDBToggleSwitch2'
            CaptionOptions.Visible = False
            Control = dxCert1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'N'#250'mero de Certificado:'
            Control = cxNoCert1
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Vigencia:'
            Control = cxDate1
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
      object cxGSeg: TcxGroupBox
        Left = 11
        Top = 175
        Caption = 'Seguridad y Salud en el Trabajo'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = 14803425
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 130
        Width = 1016
        object dxLayoutControl2: TdxLayoutControl
          Left = 3
          Top = 16
          Width = 1010
          Height = 104
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object dxSGS: TdxDBToggleSwitch
            Left = 10
            Top = 10
            Caption = 
              #191'Cuenta con un Sistema que gestione los peligros y riesgos a los' +
              ' que se expone el personal en base a OHSAS 14001 o similar?'
            DataBinding.DataField = 'SGS'
            DataBinding.DataSource = ds_eseg
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
            TabOrder = 0
            Transparent = True
          end
          object cxDescripcion2: TcxDBTextEdit
            Left = 826
            Top = 10
            DataBinding.DataField = 'sDescripcion'
            DataBinding.DataSource = ds_eseg
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
          object dxCert2: TdxDBToggleSwitch
            Left = 10
            Top = 37
            Caption = #191'Est'#225' certificado?'
            DataBinding.DataField = 'sCertificado'
            DataBinding.DataSource = ds_eseg
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
            TabOrder = 2
            Transparent = True
          end
          object cxNoCert2: TcxDBTextEdit
            Left = 323
            Top = 37
            DataBinding.DataField = 'NoCertificado'
            DataBinding.DataSource = ds_eseg
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 121
          end
          object cxDate2: TcxDBDateEdit
            Left = 724
            Top = 37
            DataBinding.DataField = 'Vigencia'
            DataBinding.DataSource = ds_eseg
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 121
          end
          object dxDBToggleSwitch6: TdxDBToggleSwitch
            Left = 10
            Top = 64
            Caption = 
              #191'Cuenta con procedimientos escritos sobre acciones para mantener' +
              ' la seguridad y salud de los trabajadores?'
            DataBinding.DataField = 'Procedimiento'
            DataBinding.DataSource = ds_eseg
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
            TabOrder = 5
            Transparent = True
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'dxDBToggleSwitch2'
            CaptionOptions.Visible = False
            Control = dxSGS
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = #191'Cu'#225'l?'
            Control = cxDescripcion2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'dxDBToggleSwitch3'
            CaptionOptions.Visible = False
            Control = dxCert2
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group_Root
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem13: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'N'#250'mero de Certificado:'
            Control = cxNoCert2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group_Root
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Vigencia:'
            Control = cxDate2
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem15: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            CaptionOptions.Text = 'dxDBToggleSwitch6'
            CaptionOptions.Visible = False
            Control = dxDBToggleSwitch6
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
      object cxGP: TcxGroupBox
        Left = 11
        Top = 311
        Caption = 'Protecci'#243'n Ambiental'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = 14803425
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 130
        Width = 1016
        object dxLayoutControl3: TdxLayoutControl
          Left = 3
          Top = 16
          Width = 1010
          Height = 104
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object dxSGA: TdxDBToggleSwitch
            Left = 10
            Top = 10
            Caption = 
              #191'Cuenta con un Sistema que gestione los impactos ambientales de ' +
              'las actividades que proporciona en base a ISO 14001 o similar?'
            DataBinding.DataField = 'SGA'
            DataBinding.DataSource = ds_eamb
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
            TabOrder = 0
            Transparent = True
          end
          object cxDescripcion3: TcxDBTextEdit
            Left = 846
            Top = 10
            DataBinding.DataField = 'sDescripcion'
            DataBinding.DataSource = ds_eamb
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
          object dxCert3: TdxDBToggleSwitch
            Left = 10
            Top = 37
            Caption = #191'Est'#225' certificado?'
            DataBinding.DataField = 'sCertificado'
            DataBinding.DataSource = ds_eamb
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
            TabOrder = 2
            Transparent = True
          end
          object cxNoCert3: TcxDBTextEdit
            Left = 323
            Top = 37
            DataBinding.DataField = 'NoCertificado'
            DataBinding.DataSource = ds_eamb
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 121
          end
          object dxDBToggleSwitch5: TdxDBToggleSwitch
            Left = 10
            Top = 64
            Caption = 
              #191'Cuenta con planes de manejo o acciones espec'#237'ficas que se gener' +
              'en con motivo de sus acciones, productos o servicios?'
            DataBinding.DataField = 'Planes'
            DataBinding.DataSource = ds_eamb
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
            TabOrder = 5
            Transparent = True
          end
          object cxDate3: TcxDBDateEdit
            Left = 724
            Top = 37
            DataBinding.DataField = 'Vigencia'
            DataBinding.DataSource = ds_eamb
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 121
          end
          object dxLayoutControl3Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem17: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'dxDBToggleSwitch1'
            CaptionOptions.Visible = False
            Control = dxSGA
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem18: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = #191'Cu'#225'l?'
            Control = cxDescripcion3
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem19: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahLeft
            CaptionOptions.Text = 'dxDBToggleSwitch4'
            CaptionOptions.Visible = False
            Control = dxCert3
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl3Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem20: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'N'#250'mero de Certificado:'
            Control = cxNoCert3
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl3Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem22: TdxLayoutItem
            Parent = dxLayoutControl3Group_Root
            AlignHorz = ahClient
            CaptionOptions.Text = 'dxDBToggleSwitch5'
            CaptionOptions.Visible = False
            Control = dxDBToggleSwitch5
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem21: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Vigencia:'
            Control = cxDate3
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
      object cxProveedor: TcxDBLookupComboBox
        Left = 73
        Top = 11
        DataBinding.DataField = 'IdProveedor'
        DataBinding.DataSource = ds_evalua
        ParentFont = False
        Properties.KeyFieldNames = 'IdProveedor'
        Properties.ListColumns = <
          item
            FieldName = 'Proveedores'
          end>
        Properties.ListSource = ds_proveedor
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 145
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemControlAreaAlignment = catOwn
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'cxGroupBox1'
        CaptionOptions.Visible = False
        Control = cxGDatos
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxGroupBox1'
        CaptionOptions.Visible = False
        Control = cxGSeg
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxGroupBox1'
        CaptionOptions.Visible = False
        Control = cxGP
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem23: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Proveedor'
        Control = cxProveedor
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object pnlBtn2: TPanel
      Left = 1
      Top = 223
      Width = 1059
      Height = 35
      Align = alBottom
      TabOrder = 1
      inline frmBarraH21: TfrmBarraH2
        Left = 878
        Top = 1
        Width = 180
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 878
        ExplicitTop = 1
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Height = 33
          ExplicitHeight = 33
          inherited btnPost: TcxButton
            OnClick = btnPostClick
          end
          inherited btnCancel: TcxButton
            OnClick = btnCancelClick
          end
        end
      end
    end
  end
  object grid_evalua: TcxGrid
    Left = 0
    Top = 35
    Width = 1061
    Height = 205
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object grid_evaluaDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellClick = grid_evaluaDBTableView1CellClick
      DataController.DataSource = ds_evalua
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.TranslateBetween = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object grid_evaluaDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Proveedor'
      end
      object grid_evaluaDBTableView1Column2: TcxGridDBColumn
        Caption = 'SGC'
        DataBinding.FieldName = 'sgc'
      end
      object grid_evaluaDBTableView1Column3: TcxGridDBColumn
        Caption = 'SGS'
        DataBinding.FieldName = 'sgs'
      end
      object grid_evaluaDBTableView1Column4: TcxGridDBColumn
        Caption = 'SGA'
        DataBinding.FieldName = 'sga'
      end
    end
    object grid_evaluaLevel1: TcxGridLevel
      GridView = grid_evaluaDBTableView1
    end
  end
  object ds_evalua: TDataSource
    AutoEdit = False
    DataSet = zqEvalua
    Left = 64
    Top = 120
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 65
    Top = 224
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
      OnClick = Editar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Tag = 9
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
      OnClick = Registrar1Click
    end
    object Can1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
      OnClick = Can1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
      OnClick = Eliminar1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object zqEvalua: TUniQuery
    Connection = connection.Uconnection
    Left = 62
    Top = 171
  end
  object zqEServ: TUniQuery
    Connection = connection.Uconnection
    Left = 64
    Top = 48
  end
  object zqESeg: TUniQuery
    Connection = connection.Uconnection
    Left = 128
    Top = 48
  end
  object zqEAmb: TUniQuery
    Connection = connection.Uconnection
    Left = 192
    Top = 48
  end
  object ds_eserv: TDataSource
    AutoEdit = False
    DataSet = zqEServ
    Left = 64
    Top = 16
  end
  object ds_eseg: TDataSource
    AutoEdit = False
    DataSet = zqESeg
    Left = 128
    Top = 8
  end
  object ds_eamb: TDataSource
    AutoEdit = False
    DataSet = zqEAmb
    Left = 192
    Top = 8
  end
  object zqProveedor: TUniQuery
    Connection = connection.Uconnection
    Left = 62
    Top = 274
  end
  object ds_proveedor: TDataSource
    AutoEdit = False
    DataSet = zqProveedor
    Left = 65
    Top = 322
  end
end
