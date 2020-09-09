object FrmProgramarH: TFrmProgramarH
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Programar Horarios '
  ClientHeight = 535
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 344
    Width = 852
    Height = 8
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 352
    Width = 852
    Height = 183
    Align = alBottom
    TabOrder = 0
    Visible = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 850
      Height = 146
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 146
        Top = 11
        DataBinding.DataField = 'EntradaInicio'
        DataBinding.DataSource = dsHorario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 268
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 146
        Top = 40
        DataBinding.DataField = 'SalidaInicio'
        DataBinding.DataSource = dsHorario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 315
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 664
        Top = 69
        DataBinding.DataField = 'RetardoPM'
        DataBinding.DataSource = dsHorario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 396
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 146
        Top = 69
        DataBinding.DataField = 'RetardoAM'
        DataBinding.DataSource = dsHorario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 406
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 146
        Top = 96
        DataBinding.DataField = 'iFactorDiaDescuento'
        DataBinding.DataSource = dsHorario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 406
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 664
        Top = 11
        DataBinding.DataField = 'EntradaTermino'
        DataBinding.DataSource = dsHorario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 396
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 664
        Top = 40
        DataBinding.DataField = 'SalidaTermino'
        DataBinding.DataSource = dsHorario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 396
      end
      object cxImgActivo: TdxDBToggleSwitch
        Left = 882
        Top = 98
        Caption = 'Activar Biometrico'
        DataBinding.DataField = 'BiometricoActivo'
        DataBinding.DataSource = dsHorario
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
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 7
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        CaptionOptions.Text = 'Hora de entrada de  las'
        Control = cxDBTextEdit1
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avClient
        Index = 0
        AutoCreated = True
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avClient
        Index = 1
        AutoCreated = True
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        CaptionOptions.Text = 'Hora de salida de las'
        Control = cxDBTextEdit3
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        CaptionOptions.Text = 'Hora Retardo P.M.'
        Control = cxDBTextEdit6
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Hora Retardo A.M.'
        Control = cxDBTextEdit2
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Dias para descuento'
        Control = cxDBTextEdit7
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        CaptionOptions.Text = 'a la hora'
        Control = cxDBTextEdit4
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        AlignVert = avTop
        CaptionOptions.Text = 'a la hora'
        Control = cxDBTextEdit5
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = cxImgActivo
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 147
      Width = 850
      Height = 35
      Align = alBottom
      Color = 14803425
      ParentBackground = False
      TabOrder = 1
      inline frmBarraH21: TfrmBarraH2
        Left = 669
        Top = 1
        Width = 180
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 669
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 344
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 36
      Width = 850
      Height = 307
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsHorario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.ColumnAutoWidth = True
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Inicio Hora Entrada '
          DataBinding.FieldName = 'EntradaInicio'
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Termino Hora Entrada'
          DataBinding.FieldName = 'EntradaTermino'
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Inicio Hora Salida'
          DataBinding.FieldName = 'SalidaInicio'
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Termino Hora Salida'
          DataBinding.FieldName = 'SalidaTermino'
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Biometrico'
          DataBinding.FieldName = 'bIometricoActivo'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object panelBotones: TPanel
      Left = 1
      Top = 1
      Width = 850
      Height = 35
      Align = alTop
      TabOrder = 1
      object cxLeyenda: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        Caption = 'Tabla...Programar Horarios'
        ParentColor = False
        ParentFont = False
        Style.Color = clNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHighlight
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
      inline frmBarraH11: TfrmBarraH1
        Left = 288
        Top = 1
        Width = 561
        Height = 33
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 288
        ExplicitTop = 1
        ExplicitWidth = 561
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Width = 561
          Height = 33
          ExplicitWidth = 561
          ExplicitHeight = 33
          inherited btnAdd: TcxButton
            Left = 0
            Height = 31
            OnClick = btnAddClick
            ExplicitLeft = 0
            ExplicitHeight = 31
          end
          inherited btnEdit: TcxButton
            Left = 80
            Height = 31
            OnClick = btnEditClick
            ExplicitLeft = 80
            ExplicitHeight = 31
          end
          inherited btnDelete: TcxButton
            Left = 160
            Height = 31
            ExplicitLeft = 160
            ExplicitHeight = 31
          end
          inherited btnPrinter: TcxButton
            Left = 400
            Height = 31
            ExplicitLeft = 400
            ExplicitHeight = 31
          end
          inherited btnDetalle: TcxButton
            Left = 480
            Height = 31
            ExplicitLeft = 480
            ExplicitHeight = 31
          end
          inherited btnRefresh: TcxButton
            Left = 240
            Height = 31
            ExplicitLeft = 240
            ExplicitHeight = 31
          end
          inherited btnExporta: TcxButton
            Left = 320
            Height = 31
            ExplicitLeft = 320
            ExplicitHeight = 31
          end
        end
      end
    end
  end
  object zHorario: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT * FROM configuracion')
    Left = 536
    Top = 128
  end
  object dsHorario: TDataSource
    DataSet = zHorario
    Left = 608
    Top = 128
  end
end
