object frmFolios: TfrmFolios
  Left = 353
  Top = 73
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n Autofolios'
  ClientHeight = 546
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
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
  object Panel2: TPanel
    Left = 0
    Top = 240
    Width = 1061
    Height = 306
    Align = alBottom
    ParentBackground = False
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1053
      Height = 263
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
        Top = 11
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
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 235
        Width = 1033
        object dxLayoutControl4: TdxLayoutControl
          Left = 3
          Top = 17
          Width = 1027
          Height = 208
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxEmpresa: TcxDBLookupComboBox
            Left = 109
            Top = 11
            DataBinding.DataField = 'IdEmpresa'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Properties.KeyFieldNames = 'IdEmpresa'
            Properties.ListColumns = <
              item
                FieldName = 'Empresa'
              end>
            Properties.ListSource = ds_empresa
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 364
          end
          object cxPrincipal: TdxDBToggleSwitch
            Left = 896
            Top = 153
            Caption = 'Aplicar'
            DataBinding.DataField = 'Aplicar'
            DataBinding.DataSource = ds_folios
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
            TabOrder = 12
            Transparent = True
          end
          object cxTabla: TcxDBLookupComboBox
            Left = 109
            Top = 40
            DataBinding.DataField = 'Tabla'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Properties.KeyFieldNames = 'Tablas'
            Properties.ListColumns = <
              item
                FieldName = 'Tablas'
              end>
            Properties.ListSource = ds_tablas
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 128
          end
          object cxCNombre: TcxDBTextEdit
            Left = 109
            Top = 69
            DataBinding.DataField = 'CampoNombre'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 152
          end
          object cxInicia: TcxDBTextEdit
            Left = 109
            Top = 125
            DataBinding.DataField = 'IniciarEn'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 10
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 143
          end
          object cxPrefijo: TcxDBTextEdit
            Left = 109
            Top = 96
            DataBinding.DataField = 'Prefijo'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 173
          end
          object cxDepartamento: TcxDBLookupComboBox
            Left = 462
            Top = 11
            DataBinding.DataField = 'IdDepartamento'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Properties.KeyFieldNames = 'IdDepartamento'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = ds_depatamento
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
            Width = 285
          end
          object cbEmbarcacion: TcxDBLookupComboBox
            Left = 832
            Top = 11
            DataBinding.DataField = 'IdEmbarcacion'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Properties.KeyFieldNames = 'IdEmbarcacion'
            Properties.ListColumns = <
              item
                FieldName = 'Embarcacion'
              end>
            Properties.ListSource = dsEmbarcacion
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 182
          end
          object cxTNombre: TcxDBTextEdit
            Left = 560
            Top = 40
            DataBinding.DataField = 'TablaNombre'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 454
          end
          object cxCampo: TcxDBTextEdit
            Left = 567
            Top = 69
            DataBinding.DataField = 'Campo'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 447
          end
          object cxNDig: TcxDBTextEdit
            Left = 430
            Top = 96
            DataBinding.DataField = 'NumDig'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 287
          end
          object cxComplemento: TcxDBTextEdit
            Left = 838
            Top = 96
            DataBinding.DataField = 'complemento'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 9
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 176
          end
          object cxValor: TcxDBTextEdit
            Left = 510
            Top = 125
            DataBinding.DataField = 'ValorActual'
            DataBinding.DataSource = ds_folios
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 11
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 504
          end
          object dxLayoutControl4Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Empresa:'
            Control = cxEmpresa
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'Aplicar'
            CaptionOptions.Visible = False
            Control = cxPrincipal
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tabla:'
            Control = cxTabla
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Nombre Campo:'
            Control = cxCNombre
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Iniciar en:'
            Control = cxInicia
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Prefijo:'
            Control = cxPrefijo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem13: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Departamento'
            Control = cxDepartamento
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Embarcacion'
            Control = cbEmbarcacion
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Nombre Tabla:'
            Control = cxTNombre
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Campo:'
            Control = cxCampo
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup5
            AlignVert = avClient
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'N'#250'mero de D'#237'gitos'
            Control = cxNDig
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Complemento Final'
            Control = cxComplemento
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Valor Actual:'
            Control = cxValor
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
        end
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
        Index = 0
      end
    end
    object pnlBtn2: TPanel
      Left = 1
      Top = 270
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
            Top = 2
            OnClick = btnPostClick
            ExplicitTop = 2
          end
          inherited btnCancel: TcxButton
            Top = 2
            OnClick = btnCancelClick
            ExplicitTop = 2
          end
        end
      end
    end
  end
  object grid_folios: TcxGrid
    Left = 0
    Top = 35
    Width = 1061
    Height = 197
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object grid_foliosDBTableView1: TcxGridDBTableView
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
      OnCellClick = grid_foliosDBTableView1CellClick
      DataController.DataSource = ds_folios
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
      object grid_foliosDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Tabla'
        Width = 153
      end
      object grid_foliosDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Campo'
        Width = 93
      end
      object grid_foliosDBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'Prefijo'
        Width = 116
      end
      object grid_foliosDBTableView1Column4: TcxGridDBColumn
        Caption = 'N'#250'mero de D'#237'gitos'
        DataBinding.FieldName = 'NumDig'
        Width = 134
      end
      object grid_foliosDBTableView1Column9: TcxGridDBColumn
        Caption = 'Complemento'
        DataBinding.FieldName = 'complemento'
        Width = 98
      end
      object grid_foliosDBTableView1Column5: TcxGridDBColumn
        Caption = 'Iniciar En'
        DataBinding.FieldName = 'IniciarEn'
        Width = 82
      end
      object grid_foliosDBTableView1Column6: TcxGridDBColumn
        Caption = 'Valor Actual'
        DataBinding.FieldName = 'ValorActual'
        Width = 91
      end
      object grid_foliosDBTableView1Column8: TcxGridDBColumn
        DataBinding.FieldName = 'Empresa'
        Width = 102
      end
      object grid_foliosDBTableView1Column10: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'IdDepartamento'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'IdDepartamento'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = ds_depatamento
        Width = 117
      end
      object grid_foliosDBTableView1Column7: TcxGridDBColumn
        DataBinding.FieldName = 'Aplicar'
        Width = 61
      end
    end
    object grid_foliosLevel1: TcxGridLevel
      GridView = grid_foliosDBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 232
    Width = 1061
    Height = 8
    AlignSplitter = salTop
    Control = Panel2
  end
  object ds_folios: TDataSource
    AutoEdit = False
    DataSet = zqFolios
    Left = 32
    Top = 144
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 313
    Top = 136
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
  object zqFolios: TUniQuery
    Connection = connection.Uconnection
    Left = 30
    Top = 195
  end
  object zqTablas: TUniQuery
    Connection = connection.Uconnection
    Left = 88
    Top = 192
  end
  object ds_tablas: TDataSource
    AutoEdit = False
    DataSet = zqTablas
    Left = 88
    Top = 144
  end
  object zqEmpresa: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select e.IdEmpresa, e.FK_Titulo as Empresa from master_empresa a' +
        's e where e.Activo = '#39'Si'#39)
    Left = 144
    Top = 192
  end
  object ds_empresa: TDataSource
    AutoEdit = False
    DataSet = zqEmpresa
    Left = 144
    Top = 144
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    Left = 216
    Top = 192
  end
  object dsEmbarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 216
    Top = 144
  end
  object ds_depatamento: TDataSource
    DataSet = zDepartamento
    Left = 384
    Top = 144
  end
  object zDepartamento: TUniQuery
    Connection = connection.Uconnection
    Left = 384
    Top = 192
  end
end
