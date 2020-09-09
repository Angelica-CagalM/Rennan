object frmOpcFirmantes: TfrmOpcFirmantes
  Left = 0
  Top = 0
  Caption = 'Opciones Firmantes'
  ClientHeight = 475
  ClientWidth = 787
  Color = clBtnFace
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
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 750
    inline frmBarraH11: TfrmBarraH1
      Left = 224
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 187
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
          Visible = False
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
    object cxTitulo: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Opciones Firmantes'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitWidth = 186
    end
  end
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 35
    Width = 150
    Height = 440
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ActiveGroupIndex = 0
    TabOrder = 1
    View = 17
    ViewStyle.ColorSchemeName = 'Blue'
    OptionsImage.LargeImages = frmrepositorio.IconosTodos32
    OptionsImage.SmallImages = frmrepositorio.IconosTodos16
    OptionsView.Common.ShowGroupCaptions = False
    ExplicitHeight = 348
    object dxFirmantes: TdxNavBarGroup
      Caption = 'Opciones Firmantes'
      LinksUseSmallImages = False
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBar1Item1
        end
        item
          Item = dxNavBar1Separator1
        end
        item
          Item = dxNavBar1Item2
        end>
    end
    object dxNavBar1Item1: TdxNavBarItem
      Caption = 'Firmantes'
      LargeImageIndex = 9
      OnClick = dxNavBar1Item1Click
    end
    object dxNavBar1Item2: TdxNavBarItem
      Caption = 'Puestos'
      LargeImageIndex = 36
      OnClick = dxNavBar1Item2Click
    end
    object dxNavBar1Separator1: TdxNavBarSeparator
      Caption = 'dxNavBar1Separator1'
    end
  end
  object PanelPrincipal: TPanel
    Left = 150
    Top = 35
    Width = 637
    Height = 440
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 600
    ExplicitHeight = 348
    object gridDatos: TcxGrid
      Left = 1
      Top = 1
      Width = 635
      Height = 231
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 598
      object viewDatos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsDatos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxColumnD1: TcxGridDBColumn
          Caption = 'Nombre'
        end
        object cxColumnD2: TcxGridDBColumn
          Caption = 'Relacionado Con'
        end
      end
      object gridDatosLevel1: TcxGridLevel
        GridView = viewDatos
      end
    end
    object PanelDatos: TPanel
      Left = 1
      Top = 240
      Width = 635
      Height = 199
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      inline frmBarraH21: TfrmBarraH2
        Left = 1
        Top = 165
        Width = 633
        Height = 33
        Align = alBottom
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 73
        ExplicitWidth = 596
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Width = 633
          Height = 33
          ExplicitWidth = 596
          ExplicitHeight = 33
          inherited btnPost: TcxButton
            Left = 458
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 421
            ExplicitTop = 1
            ExplicitHeight = 31
          end
          inherited btnCancel: TcxButton
            Left = 545
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnCancelClick
            ExplicitLeft = 508
            ExplicitTop = 1
            ExplicitHeight = 31
          end
        end
      end
      object layoutDatos: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 633
        Height = 164
        Align = alClient
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        ExplicitWidth = 596
        ExplicitHeight = 72
        object cxDescripcion: TcxDBTextEdit
          Left = 76
          Top = 10
          DataBinding.DataSource = dsDatos
          ParentFont = False
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
        object cxRelacionar: TcxCheckBox
          Left = 230
          Top = 10
          Caption = 'cxRelacionar'
          ParentFont = False
          Properties.OnChange = cxRelacionarPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Transparent = True
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
        end
        object cxRelacion: TcxDBLookupComboBox
          Left = 261
          Top = 35
          DataBinding.DataSource = dsDatos
          Enabled = False
          ParentFont = False
          Properties.ListColumns = <>
          Properties.ListSource = dsSub
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
          Width = 145
        end
        object groupImage: TcxGroupBox
          Left = 438
          Top = 10
          Caption = 'Firma Digital (Doble clic para agregar)'
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
          TabOrder = 3
          Height = 140
          Width = 185
          object imgFirma: TcxDBImage
            Left = 24
            Top = 16
            DataBinding.DataField = 'FirmaE'
            DataBinding.DataSource = dsDatos
            Properties.GraphicClassName = 'TJPEGImage'
            TabOrder = 0
            OnDblClick = imgFirmaDblClick
            Height = 100
            Width = 140
          end
        end
        object layoutDatosGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxItemDescripcion: TdxLayoutItem
          Parent = layoutDatosGroup_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Descripci'#243'n'
          Control = cxDescripcion
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxItemCheck: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Relacionar con'
          CaptionOptions.Visible = False
          Control = cxRelacionar
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxItemLook: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Look'
          Control = cxRelacion
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = layoutDatosGroup_Root
          AlignHorz = ahClient
          Index = 1
          AutoCreated = True
        end
        object itemImagen: TdxLayoutItem
          Parent = layoutDatosGroup_Root
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'cxGroupBox1'
          CaptionOptions.Visible = False
          Control = groupImage
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object cxSplitterDatos: TcxSplitter
      Left = 1
      Top = 232
      Width = 635
      Height = 8
      AlignSplitter = salBottom
      Visible = False
      ExplicitWidth = 598
    end
  end
  object uDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 190
    Top = 99
  end
  object dsDatos: TDataSource
    DataSet = uDatos
    Left = 238
    Top = 99
  end
  object uSub: TUniQuery
    Connection = connection.Uconnection
    Left = 190
    Top = 147
  end
  object dsSub: TDataSource
    DataSet = uSub
    Left = 238
    Top = 147
  end
end
