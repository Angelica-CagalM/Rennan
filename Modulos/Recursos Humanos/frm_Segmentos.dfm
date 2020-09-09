object FrmSegmentos: TFrmSegmentos
  Left = 0
  Top = 0
  Caption = 'Segmentos'
  ClientHeight = 489
  ClientWidth = 1113
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCentral: TPanel
    Left = 0
    Top = 43
    Width = 1113
    Height = 446
    Align = alClient
    TabOrder = 0
    ExplicitTop = 296
    ExplicitWidth = 1105
    ExplicitHeight = 193
    object GridSegmentos: TcxGrid
      Left = 1
      Top = 1
      Width = 1111
      Height = 267
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 6
      ExplicitWidth = 1103
      ExplicitHeight = 255
      object GridSegmentosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSegmento
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object GridSegmentosDBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
        end
        object GridSegmentosDBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Concepto'
        end
        object GridSegmentosDBTableView1Column3: TcxGridDBColumn
          Caption = 'Observaciones'
          DataBinding.FieldName = 'Observacio'
        end
      end
      object GridSegmentosLevel1: TcxGridLevel
        GridView = GridSegmentosDBTableView1
      end
    end
    object PanelDonw: TPanel
      Left = 1
      Top = 268
      Width = 1111
      Height = 177
      Align = alBottom
      TabOrder = 1
      Visible = False
      ExplicitLeft = 80
      ExplicitTop = 104
      ExplicitWidth = 1009
      object pnlBtn2: TPanel
        Left = 1
        Top = 136
        Width = 1109
        Height = 40
        Align = alBottom
        Color = 14803425
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1007
        inline frmBarraH21: TfrmBarraH2
          Left = 31
          Top = 1
          Width = 1077
          Height = 38
          Align = alRight
          TabOrder = 0
          ExplicitLeft = -71
          ExplicitTop = 1
          ExplicitWidth = 1077
          ExplicitHeight = 173
          inherited Panel1: TPanel
            Left = 888
            Width = 189
            Height = 38
            Align = alRight
            ExplicitLeft = 888
            ExplicitWidth = 189
            ExplicitHeight = 173
            inherited btnPost: TcxButton
              OnClick = btnPostClick
            end
            inherited btnCancel: TcxButton
              OnClick = btnCancelClick
            end
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 1109
        Height = 133
        Align = alTop
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        ExplicitTop = 312
        ExplicitWidth = 1103
        object edtCodigo: TcxDBTextEdit
          Left = 86
          Top = 10
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsSegmento
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 211
        end
        object edtSegmento: TcxDBTextEdit
          Left = 356
          Top = 10
          DataBinding.DataField = 'Concepto'
          DataBinding.DataSource = dsSegmento
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 301
        end
        object mmObservacion: TcxDBMemo
          Left = 86
          Top = 39
          DataBinding.DataField = 'Observacio'
          DataBinding.DataSource = dsSegmento
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 44
          Width = 571
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Codigo'
          Control = edtCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Segmento'
          Control = edtSegmento
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Observaciones'
          Control = mmObservacion
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1113
    Height = 43
    Align = alTop
    TabOrder = 1
    inline frmBarraH11: TfrmBarraH1
      Left = 742
      Top = 1
      Width = 370
      Height = 41
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 732
      ExplicitTop = 1
      ExplicitWidth = 370
      ExplicitHeight = 41
      inherited Panel1: TPanel
        Width = 370
        Height = 41
        ExplicitHeight = 41
        inherited btnAdd: TcxButton
          OnClick = btnAddClick
        end
        inherited btnEdit: TcxButton
          OnClick = btnEditClick
        end
        inherited btnDelete: TcxButton
          OnClick = btnDeleteClick
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Tabla...Agregando Datos'
      ParentColor = False
      ParentFont = False
      Style.Color = clNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object Segmento: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select * from segmentos')
    Left = 16
    Top = 115
  end
  object dsSegmento: TDataSource
    DataSet = Segmento
    Left = 16
    Top = 171
  end
end
