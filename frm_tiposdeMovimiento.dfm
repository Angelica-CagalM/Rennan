object frmTiposdeMovimiento: TfrmTiposdeMovimiento
  Left = 582
  Top = 278
  BorderIcons = [biSystemMenu]
  Caption = 'Catalogo de Tipos de Movimiento'
  ClientHeight = 473
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 563
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 563
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
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1126
    Height = 438
    Align = alClient
    TabOrder = 1
    object cxSplitTipo: TcxSplitter
      Left = 1
      Top = 1
      Width = 6
      Height = 436
    end
    object Panel1: TPanel
      Left = 7
      Top = 1
      Width = 797
      Height = 436
      Align = alClient
      TabOrder = 1
      object Panel2: TPanel
        Left = 1
        Top = 150
        Width = 795
        Height = 285
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = 248
          Width = 793
          Height = 36
          Align = alBottom
          TabOrder = 0
          ExplicitLeft = 3
          inline frmBarraH21: TfrmBarraH2
            Left = 603
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 603
            ExplicitTop = 1
            ExplicitWidth = 189
            ExplicitHeight = 34
            inherited Panel1: TPanel
              Width = 189
              Height = 34
              ExplicitWidth = 189
              ExplicitHeight = 34
              inherited btnPost: TcxButton
                Left = 1
                Top = 1
                Width = 94
                Height = 32
                Align = alLeft
                OnClick = btnPostClick
                ExplicitLeft = 1
                ExplicitTop = 5
                ExplicitWidth = 94
                ExplicitHeight = 32
              end
              inherited btnCancel: TcxButton
                Left = 101
                Top = 1
                Height = 32
                Align = alRight
                OnClick = btnCancelClick
                ExplicitLeft = 101
                ExplicitTop = 1
                ExplicitHeight = 32
              end
            end
          end
        end
        object dxLayoutControl1: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 793
          Height = 247
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          ExplicitLeft = 3
          ExplicitTop = -2
          object cxDescripcion: TcxDBTextEdit
            Left = 126
            Top = 40
            DataBinding.DataField = 'sDescripcion'
            DataBinding.DataSource = ds_tiposdemovimiento
            ParentFont = False
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
            Width = 121
          end
          object cxTipoMov: TcxDBTextEdit
            Left = 126
            Top = 11
            DataBinding.DataField = 'sIdTipoMovimiento'
            DataBinding.DataSource = ds_tiposdemovimiento
            ParentFont = False
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
            Width = 121
          end
          object cxOrden: TcxDBComboBox
            Left = 126
            Top = 127
            DataBinding.DataField = 'iOrden'
            DataBinding.DataSource = ds_tiposdemovimiento
            ParentFont = False
            Properties.Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8.9'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '21'
              '22'
              '23'
              '24'
              '25'
              '26'
              '27'
              '28'
              '29'
              '30')
            Properties.OnChange = cxOrdenPropertiesChange
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
            Width = 121
          end
          object cxVentaMN: TcxDBCurrencyEdit
            Left = 126
            Top = 156
            DataBinding.DataField = 'dVentaMN'
            DataBinding.DataSource = ds_tiposdemovimiento
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
            Width = 121
          end
          object cxVentaDLL: TcxDBCurrencyEdit
            Left = 510
            Top = 156
            DataBinding.DataField = 'dVentaDLL'
            DataBinding.DataSource = ds_tiposdemovimiento
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
            Width = 121
          end
          object dxImprimir: TdxDBToggleSwitch
            Left = 642
            Top = 11
            Caption = 'Impresi'#243'n:'
            DataBinding.DataField = 'lImprimeCeros'
            DataBinding.DataSource = ds_tiposdemovimiento
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
            TabOrder = 1
          end
          object cxTipo: TcxDBTextEdit
            Left = 126
            Top = 69
            DataBinding.DataField = 'sTipo'
            DataBinding.DataSource = ds_tiposdemovimiento
            ParentFont = False
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
            Width = 121
          end
          object cxColor2: TcxDBColorComboBox
            Left = 126
            Top = 185
            DataBinding.DataField = 'iColor'
            DataBinding.DataSource = ds_tiposdemovimiento
            ParentFont = False
            Properties.CustomColors = <>
            Properties.OnChange = cxColor2PropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 10
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object cxClasificacion: TcxDBComboBox
            Left = 126
            Top = 98
            DataBinding.DataField = 'sClasificacion'
            DataBinding.DataSource = ds_tiposdemovimiento
            ParentFont = False
            Properties.Items.Strings = (
              'Tiempo en Operaci'#243'n'
              'Recursos'
              'Tiempo Muerto'
              'Notas'
              'Movimiento de Barco'
              'Clasificaci'#243'n de Pernoctas'
              'Tiempo de Actividades'
              'Tarifa Diaria')
            Properties.OnChange = cxClasificacionPropertiesChange
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
            Width = 121
          end
          object cxMedida: TcxDBTextEdit
            Left = 511
            Top = 98
            DataBinding.DataField = 'sIdMedida'
            DataBinding.DataSource = ds_tiposdemovimiento
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
            Width = 121
          end
          object dxGrafica: TdxDBToggleSwitch
            Left = 659
            Top = 127
            Caption = 'Gr'#225'fica:'
            DataBinding.DataField = 'lGrafica'
            DataBinding.DataSource = ds_tiposdemovimiento
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
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Descripci'#243'n:'
            Control = cxDescripcion
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tipo de Movimiento:'
            Control = cxTipoMov
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Orden:'
            Control = cxOrden
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            LayoutDirection = ldHorizontal
            Index = 4
            AutoCreated = True
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Venta en MN:'
            Control = cxVentaMN
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Venta en DLL:'
            Control = cxVentaDLL
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            LayoutDirection = ldHorizontal
            Index = 5
            AutoCreated = True
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'dxDBToggleSwitch2'
            CaptionOptions.Visible = False
            Control = dxImprimir
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tipo:'
            Control = cxTipo
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Color:'
            Control = cxColor2
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Clasificaci'#243'n:'
            Control = cxClasificacion
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Medida:'
            Control = cxMedida
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'Gr'#225'fica:'
            CaptionOptions.Visible = False
            Control = dxGrafica
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxSplitterMedio: TcxSplitter
        Left = 1
        Top = 142
        Width = 795
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_tiposdemovimiento: TcxGrid
        Left = 1
        Top = 1
        Width = 795
        Height = 141
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_tiposdemovimiento: TcxGridDBTableView
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
          DataController.DataSource = ds_tiposdemovimiento
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
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
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxView_Tipodemovimiento: TcxGridDBColumn
            Caption = 'Tipo de Movimiento'
            DataBinding.FieldName = 'sIdTipoMovimiento'
          end
          object cxView_Tipo: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'sTipo'
          end
          object cxView_Descripcion: TcxGridDBColumn
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'sDescripcion'
          end
          object cxView_Clasificacion: TcxGridDBColumn
            Caption = 'Clasificaci'#243'n'
            DataBinding.FieldName = 'sClasificacion'
          end
        end
        object grid_tiposdemovimientoLevel1: TcxGridLevel
          GridView = cxView_tiposdemovimiento
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 804
      Top = 1
      Width = 6
      Height = 436
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 810
      Top = 1
      Width = 315
      Height = 436
      Align = alRight
      TabOrder = 3
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 313
        Height = 434
        Align = alClient
        TabOrder = 0
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 311
          Height = 35
          Align = alTop
          TabOrder = 0
          DesignSize = (
            311
            35)
          object cxNuevoDetalle: TcxButton
            Left = 134
            Top = 2
            Width = 81
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Nuevo'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxEditaDetalle: TcxButton
            Left = 221
            Top = 2
            Width = 81
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Editar'
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxLeyenda2: TcxLabel
            Left = 1
            Top = 1
            Align = alLeft
            Caption = 'Tabla...Agregando Datos'
            ParentColor = False
            ParentFont = False
            Style.Color = clNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHighlight
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clHighlight
            Style.IsFontAssigned = True
            Transparent = True
          end
        end
        object PanelDown: TPanel
          Left = 1
          Top = 398
          Width = 311
          Height = 35
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            311
            35)
          object cxCancelarDetalle: TcxButton
            Left = 218
            Top = 3
            Width = 84
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'Cancelar'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxGuardarDetalle: TcxButton
            Left = 125
            Top = 4
            Width = 87
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'Guardar'
            OptionsImage.ImageIndex = 2
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object ds_tiposdemovimiento: TDataSource
    AutoEdit = False
    DataSet = zTiposdeMov
    Left = 424
    Top = 32
  end
  object PopupPrincipal: TPopupMenu
    Left = 113
    Top = 96
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16457
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16453
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
    end
    object Can1: TMenuItem
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
      OnClick = Copy1Click
    end
    object Paste1: TMenuItem
      Tag = 1
      Caption = 'Pegar'
      ImageIndex = 12
      ShortCut = 16470
      OnClick = Paste1Click
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
  object TiposdeMovimiento: TZQuery
    Connection = connection.zConnection
    AfterScroll = TiposdeMovimientoAfterScroll
    BeforePost = TiposdeMovimientoBeforePost
    SQL.Strings = (
      
        'select * from tiposdemovimiento where sContrato = :contrato Orde' +
        'r by iOrden, sIdTipoMovimiento')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    object TiposdeMovimientosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object TiposdeMovimientosIdTipoMovimiento: TStringField
      FieldName = 'sIdTipoMovimiento'
      Required = True
      Size = 10
    end
    object TiposdeMovimientosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 100
    end
    object TiposdeMovimientosClasificacion: TStringField
      FieldName = 'sClasificacion'
      Required = True
      Size = 26
    end
    object TiposdeMovimientosMedida: TStringField
      FieldName = 'sMedida'
      Size = 10
    end
    object TiposdeMovimientosTipo: TStringField
      FieldName = 'sTipo'
      Required = True
      Size = 12
    end
    object TiposdeMovimientoiOrden: TStringField
      FieldName = 'iOrden'
      Required = True
      Size = 1
    end
    object TiposdeMovimientolGrafica: TStringField
      FieldName = 'lGrafica'
      Required = True
      Size = 2
    end
    object TiposdeMovimientoiColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
    object TiposdeMovimientodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      OnSetText = TiposdeMovimientodVentaMNSetText
    end
    object TiposdeMovimientodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      OnSetText = TiposdeMovimientodVentaDLLSetText
    end
    object TiposdeMovimientolGenera: TStringField
      FieldName = 'lGenera'
      Required = True
      Size = 2
    end
    object TiposdeMovimientoiIdEstimacionContrato: TIntegerField
      FieldName = 'iIdEstimacionContrato'
      Required = True
    end
    object TiposdeMovimientodCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
  end
  object zTiposdeMov: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    BeforePost = zTiposdeMovBeforePost
    AfterScroll = zTiposdeMovAfterScroll
    Left = 208
    Top = 24
  end
end
