object FrmEmbarcacion: TFrmEmbarcacion
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Embarcaciones'
  ClientHeight = 558
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
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCentral: TPanel
    Left = 0
    Top = 0
    Width = 1113
    Height = 440
    Align = alClient
    TabOrder = 0
    object Grid_Guardias: TcxGrid
      Left = 1
      Top = 36
      Width = 1111
      Height = 403
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Grid_GuardiasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsEmbaracacion
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
        object Grid_GuardiasDBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Embarcacion'
          Width = 343
        end
        object Grid_GuardiasDBTableView1Column2: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'sTipo'
          Width = 246
        end
      end
      object Grid_GuardiasLevel1: TcxGridLevel
        GridView = Grid_GuardiasDBTableView1
      end
    end
    object PanelTop: TPanel
      Left = 1
      Top = 1
      Width = 1111
      Height = 35
      Align = alTop
      TabOrder = 1
      inline frmBarraH11: TfrmBarraH1
        Left = 548
        Top = 1
        Width = 562
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 548
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
        Caption = 'Entrada de Material'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
  end
  object PanelDown: TPanel
    Left = 0
    Top = 440
    Width = 1113
    Height = 118
    Align = alBottom
    TabOrder = 1
    Visible = False
    object pnlBtn2: TPanel
      Left = 1
      Top = 77
      Width = 1111
      Height = 40
      Align = alBottom
      Color = 14803425
      ParentBackground = False
      TabOrder = 0
      Visible = False
      inline frmBarraH21: TfrmBarraH2
        Left = 921
        Top = 1
        Width = 189
        Height = 38
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 921
        ExplicitTop = 1
        ExplicitWidth = 189
        ExplicitHeight = 38
        inherited Panel1: TPanel
          Width = 189
          Height = 38
          ExplicitWidth = 189
          ExplicitHeight = 38
          inherited btnPost: TcxButton
            Left = 3
            Top = 1
            OnClick = btnPostClick
            ExplicitLeft = 3
            ExplicitTop = 1
          end
          inherited btnCancel: TcxButton
            Left = 96
            Top = 1
            OnClick = btnCancelClick
            ExplicitLeft = 96
            ExplicitTop = 1
          end
        end
      end
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1111
      Height = 76
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object edtEmbarcacion: TcxDBTextEdit
        Left = 381
        Top = 11
        DataBinding.DataField = 'Embarcacion'
        DataBinding.DataSource = dsEmbaracacion
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 121
      end
      object cbAlmacen: TcxDBLookupComboBox
        Left = 876
        Top = 11
        DataBinding.DataField = 'IdAlmacen'
        DataBinding.DataSource = dsEmbaracacion
        ParentFont = False
        Properties.KeyFieldNames = 'IdAlmacen'
        Properties.ListColumns = <
          item
            FieldName = 'sDescripcion'
          end>
        Properties.ListSource = dsAlmacen
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 145
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 60
        Top = 11
        DataBinding.DataField = 'Codigo'
        DataBinding.DataSource = dsEmbaracacion
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object cbEdtTipo: TcxDBTextEdit
        Left = 636
        Top = 11
        DataBinding.DataField = 'sTipo'
        DataBinding.DataSource = dsEmbaracacion
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 121
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nombre Embarcacion'
        Control = edtEmbarcacion
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Almacen'
        Visible = False
        Control = cbAlmacen
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'digo:'
        Control = cxDBTextEdit2
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Tipo'
        Control = cbEdtTipo
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select m.*,'
      
        '(Select a.sDescripcion from alm_almacenes as  a where a.IdAlmace' +
        'n = m.IdAlmacen) as Almacen'
      'from master_embarcaciones  as m')
    Left = 200
    Top = 144
  end
  object dsEmbaracacion: TDataSource
    DataSet = zEmbarcacion
    Left = 224
    Top = 232
  end
  object Almacen: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from alm_almacenes')
    Left = 856
    Top = 128
  end
  object dsAlmacen: TDataSource
    DataSet = Almacen
    Left = 960
    Top = 136
  end
end
