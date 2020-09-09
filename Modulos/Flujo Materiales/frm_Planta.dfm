object frmPlanta: TfrmPlanta
  Left = 353
  Top = 73
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de Plantas'
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
      AutoSize = True
      TabOrder = 0
      ExplicitLeft = 498
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        Align = alRight
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
          Tag = 13
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
    Top = 320
    Width = 1061
    Height = 179
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1053
      Height = 136
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      ExplicitHeight = 133
      object cxGDatos: TcxGroupBox
        Left = 12
        Top = 12
        Caption = 'Datos'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = 14803425
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.TextStyle = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 90
        Width = 1013
        object dxLayoutControl4: TdxLayoutControl
          Left = 3
          Top = 17
          Width = 1007
          Height = 63
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          ExplicitWidth = 1023
          ExplicitHeight = 64
          object cxCodigo: TcxDBTextEdit
            Left = 60
            Top = 11
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = ds_planta
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 193
          end
          object cxNombre: TcxDBTextEdit
            Left = 314
            Top = 11
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = ds_planta
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 320
          end
          object cxPrincipal: TdxDBToggleSwitch
            Left = 897
            Top = 11
            Align = alClient
            Caption = 'Activo:'
            DataBinding.DataField = 'Activo'
            DataBinding.DataSource = ds_planta
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
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            Transparent = True
          end
          object cxNumero: TcxDBTextEdit
            Left = 697
            Top = 11
            DataBinding.DataField = 'Numero'
            DataBinding.DataSource = ds_planta
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 193
          end
          object dxLayoutControl4Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = '|'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'C'#243'digo:'
            Control = cxCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Nombre:'
            Control = cxNombre
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'dxDBToggleSwitch1'
            CaptionOptions.Visible = False
            Control = cxPrincipal
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'N'#250'mero:'
            Control = cxNumero
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
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
        Index = 0
      end
    end
    object pnlBtn2: TPanel
      Left = 1
      Top = 143
      Width = 1059
      Height = 35
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 111
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
            Left = 5
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 5
            ExplicitTop = 1
            ExplicitHeight = 31
          end
          inherited btnCancel: TcxButton
            Left = 92
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnCancelClick
            ExplicitLeft = 92
            ExplicitTop = 1
            ExplicitHeight = 31
          end
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 314
    Width = 1061
    Height = 6
    AlignSplitter = salTop
    Control = Panel2
    ExplicitTop = 346
  end
  object grid_almacen: TcxGrid
    Left = 0
    Top = 35
    Width = 1061
    Height = 279
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitHeight = 286
    object grid_almacenDBTableView1: TcxGridDBTableView
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
      OnCellClick = grid_almacenDBTableView1CellClick
      DataController.DataSource = ds_planta
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.TranslateBetween = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object grid_almacenDBTableView1Column1: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 122
      end
      object grid_almacenDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Width = 369
      end
      object grid_almacenDBTableView1Column3: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'Numero'
        Width = 150
      end
      object grid_almacenDBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
        Width = 186
      end
    end
    object grid_almacenLevel1: TcxGridLevel
      GridView = grid_almacenDBTableView1
    end
  end
  object ds_planta: TDataSource
    AutoEdit = False
    DataSet = zqPlanta
    Left = 32
    Top = 144
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 225
    Top = 144
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
  object zqPlanta: TUniQuery
    Connection = connection.Uconnection
    Left = 30
    Top = 195
  end
end
