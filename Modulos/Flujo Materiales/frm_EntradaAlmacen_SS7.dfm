object frmEntradaAlmacen_SS7: TfrmEntradaAlmacen_SS7
  Left = 221
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entrada de Material'
  ClientHeight = 544
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Entradas: TcxGrid
    Left = 0
    Top = 35
    Width = 480
    Height = 293
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Grid_ViewEntradas: TcxGridDBTableView
      OnKeyUp = Grid_ViewEntradasKeyUp
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
      OnCellClick = Grid_ViewEntradasCellClick
      DataController.DataSource = ds_almacen_entrada
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object Grid_ViewEntradasColumn6: TcxGridDBColumn
        Caption = 'Almacen'
        DataBinding.FieldName = 'sIdAlmacen'
        Width = 87
      end
      object Grid_ViewEntradasColumn1: TcxGridDBColumn
        Caption = 'Folio Entrada'
        DataBinding.FieldName = 'sFolioEntrada'
        Width = 29
      end
      object Grid_ViewEntradasColumn3: TcxGridDBColumn
        Caption = 'Fecha Recep.'
        DataBinding.FieldName = 'dFecha'
        Width = 53
      end
      object Grid_ViewEntradasColumn9: TcxGridDBColumn
        Caption = 'Centro Costo'
        DataBinding.FieldName = 'CentroCosto'
        Width = 67
      end
      object Grid_ViewEntradasColumn2: TcxGridDBColumn
        Caption = 'Tipo Movimiento'
        DataBinding.FieldName = 'Tipo'
        Width = 54
      end
      object Grid_ViewEntradasColumn5: TcxGridDBColumn
        Caption = 'Referencia'
        DataBinding.FieldName = 'Proviene'
        Width = 57
      end
      object Grid_ViewEntradasColumn4: TcxGridDBColumn
        Caption = 'Usuario'
        DataBinding.FieldName = 'sNombre'
        Width = 74
      end
      object Grid_ViewEntradasColumn8: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'sStatus'
        Width = 24
      end
      object Grid_ViewEntradasColumn7: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'Total'
        PropertiesClassName = 'TcxProgressBarProperties'
        Width = 21
      end
    end
    object Grid_EntradasLevel1: TcxGridLevel
      GridView = Grid_ViewEntradas
    end
  end
  object lblEncabezado: TStaticText
    Left = 273
    Top = 261
    Width = 472
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Color = cl3DDkShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1084
    Height = 35
    Align = alTop
    TabOrder = 2
    inline frmBarraH11: TfrmBarraH1
      Left = 521
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 521
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        ExplicitWidth = 562
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          OnClick = frmBarra2btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          OnClick = frmBarra2btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          OnClick = frmBarra2btnDeleteClick
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Height = 31
          OnClick = frmBarra2btnPrinterClick
          ExplicitLeft = 401
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Height = 31
          OnClick = btnDetalleClick
          ExplicitLeft = 481
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          OnClick = frmBarra2btnRefreshClick
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
  object PanelDetalle: TPanel
    Left = 488
    Top = 35
    Width = 596
    Height = 293
    Align = alRight
    Caption = 'PanelDetalle'
    TabOrder = 3
    object PgControl: TcxPageControl
      Left = 1
      Top = 31
      Width = 594
      Height = 226
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = TabSheet2
      Properties.CustomButtons.Buttons = <>
      Properties.Images = frmrepositorio.IconosTodos16
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 224
      ClientRectLeft = 2
      ClientRectRight = 592
      ClientRectTop = 30
      object TabSheet2: TcxTabSheet
        Caption = 'Materiales'
        ImageIndex = 34
        object GridMaterialEntrada: TcxGrid
          Left = 0
          Top = 0
          Width = 590
          Height = 56
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxViewMaterialEntrada: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = cxViewMaterialEntradaCellClick
            OnCellDblClick = cxViewMaterialEntradaCellDblClick
            DataController.DataSource = ds_pEntradas
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
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxColIdInsumo: TcxGridDBColumn
              Caption = 'Insumo'
              DataBinding.FieldName = 'sIdInsumo'
              Width = 63
            end
            object cxColTrazabilidad: TcxGridDBColumn
              Caption = 'Trazabilidad'
              DataBinding.FieldName = 'NumeroSerie'
              Width = 87
            end
            object cxColDescripcion: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'mDescripcion'
              Width = 196
            end
            object cxColFecha: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'dFechaEntrega'
              Width = 65
            end
            object cxColCantidadOC: TcxGridDBColumn
              Caption = 'Solicitado'
              DataBinding.FieldName = 'Cant1'
              Width = 52
            end
            object cxColCantidadE: TcxGridDBColumn
              Caption = 'Recibido'
              DataBinding.FieldName = 'dCantidad'
              Width = 59
            end
            object cxColEstatus: TcxGridDBColumn
              DataBinding.FieldName = 'Pendiente'
              Width = 54
            end
            object cxColTotal: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'dCantidadTotal'
              Visible = False
              Width = 46
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxViewMaterialEntrada
          end
        end
        object PanelMaterial: TPanel
          Left = 0
          Top = 64
          Width = 590
          Height = 130
          Align = alBottom
          TabOrder = 1
          Visible = False
          object dxLayoutControl6: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 588
            Height = 128
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxFechaEntregaMat: TcxDBDateEdit
              Left = 96
              Top = 11
              DataBinding.DataField = 'dFechaEntrega'
              DataBinding.DataSource = ds_pEntradas
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Aril'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 105
            end
            object cxEntregaMaterial: TcxDBMemo
              Left = 398
              Top = 40
              DataBinding.DataField = 'mComentarios'
              DataBinding.DataSource = ds_pEntradas
              ParentFont = False
              Properties.ScrollBars = ssVertical
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
              Height = 73
              Width = 242
            end
            object cxLocalizacion: TcxDBTextEdit
              Left = 96
              Top = 40
              DataBinding.DataField = 'Localizacion'
              DataBinding.DataSource = ds_pEntradas
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 1
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxCantidad: TcxDBCurrencyEdit
              Left = 398
              Top = 11
              DataBinding.DataField = 'dCantidad'
              DataBinding.DataSource = ds_pEntradas
              ParentFont = False
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = ',0.0000;-,0.0000'
              Style.HotTrack = False
              TabOrder = 5
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxNombre: TcxDBTextEdit
              Left = 96
              Top = 69
              DataBinding.DataField = 'NombreImagen'
              DataBinding.DataSource = ds_pEntradas
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 2
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 153
            end
            object btnRuta: TcxButton
              Left = 11
              Top = 98
              Width = 140
              Height = 25
              Caption = 'Cargar Imagen'
              OptionsImage.ImageIndex = 49
              OptionsImage.Images = frmrepositorio.cxIconosMenus16
              OptionsImage.Layout = blGlyphRight
              TabOrder = 3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnRutaClick
            end
            object dxDBToggleSwitch1: TdxDBToggleSwitch
              Left = 157
              Top = 98
              Caption = 'Visualizar Imagen'
              DataBinding.DataField = 'Visualizar'
              DataBinding.DataSource = ds_pEntradas
              ParentFont = False
              Properties.StateIndicator.Kind = sikText
              Properties.StateIndicator.OffText = 'No'
              Properties.StateIndicator.OnText = 'Si'
              Properties.StateIndicator.Position = sipInside
              Properties.ValueChecked = 'Si'
              Properties.ValueUnchecked = 'No'
              Style.HotTrack = False
              TabOrder = 4
            end
            object dxLayoutControl6Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem40: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahClient
              CaptionOptions.Text = 'Fecha entrega'
              Control = cxFechaEntregaMat
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem35: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahClient
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'Nota:'
              Control = cxEntregaMaterial
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Localizaci'#243'n'
              Control = cxLocalizacion
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl6Group_Root
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Cantidad'
              Control = cxCantidad
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl6Group_Root
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Nombre'
              Control = cxNombre
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Visible = False
              Control = btnRuta
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignVert = avClient
              CaptionOptions.Text = 'Visualizar Imagen'
              CaptionOptions.Visible = False
              Control = dxDBToggleSwitch1
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
        object cxSplitMaterial: TcxSplitter
          Left = 0
          Top = 56
          Width = 590
          Height = 8
          AlignSplitter = salBottom
          Visible = False
        end
      end
      object TabInforme: TcxTabSheet
        Caption = 'Informes'
        ImageIndex = 62
        object PanelSuperiorInforme: TPanel
          Left = 0
          Top = 0
          Width = 590
          Height = 194
          Align = alClient
          TabOrder = 0
          object dxLayoutControl4: TdxLayoutControl
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 582
            Height = 186
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object opcionImprimir: TcxRadioGroup
              Left = 11
              Top = 11
              Caption = 'Tipo de Reporte'
              ParentFont = False
              Properties.Items = <
                item
                  Caption = 'Imprimir datos filtrados'
                  Value = '1'
                end
                item
                  Caption = 'Imprimir datos filtrados con detalles'
                  Value = '2'
                end>
              TabOrder = 0
              Height = 105
              Width = 495
            end
            object btnImpInforme: TcxButton
              Left = 409
              Top = 122
              Width = 145
              Height = 25
              Caption = 'Imprimir'
              TabOrder = 1
              OnClick = btnImpInformeClick
            end
            object FechaInicio: TcxDateEdit
              Left = 86
              Top = 153
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 2
              Width = 115
            end
            object FechaFin: TcxDateEdit
              Left = 280
              Top = 153
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxComprasxProveedor: TcxButton
              Left = 11
              Top = 182
              Width = 174
              Height = 35
              Caption = 'Costos de Entrada'
              OptionsImage.ImageIndex = 27
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 4
              OnClick = cxComprasxProveedorClick
            end
            object dxLayoutGroup1: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxRadioGroup1'
              CaptionOptions.Visible = False
              Control = opcionImprimir
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem31: TdxLayoutItem
              Parent = dxLayoutGroup1
              AlignHorz = ahRight
              AlignVert = avTop
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnImpInforme
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Fecha Inicio:'
              Control = FechaInicio
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fecha Final:'
              Control = FechaFin
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutGroup1
              AlignHorz = ahLeft
              CaptionOptions.Visible = False
              Control = cxComprasxProveedor
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
      end
    end
    object PanelTopDetalle: TPanel
      Left = 1
      Top = 1
      Width = 594
      Height = 30
      Align = alTop
      TabOrder = 1
      object cxEditaDetalle: TcxButton
        Tag = 11
        Left = 353
        Top = 1
        Width = 80
        Height = 28
        Align = alRight
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
        OnClick = cxEditaDetalleClick
      end
      object cxNuevoDetalle: TcxButton
        Tag = 10
        Left = 273
        Top = 1
        Width = 80
        Height = 28
        Align = alRight
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
        OnClick = cxNuevoDetalleClick
      end
      object cxEliminarDetalle: TcxButton
        Tag = 12
        Left = 433
        Top = 1
        Width = 80
        Height = 28
        Align = alRight
        Caption = 'Eliminar'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = EliminarClick
      end
      object cxAlmacenamiento: TcxButton
        Tag = 10
        Left = 513
        Top = 1
        Width = 80
        Height = 28
        Align = alRight
        Caption = 'Adjuntos'
        OptionsImage.ImageIndex = 69
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxAlmacenamientoClick
      end
    end
    object PanelDownDetalle: TPanel
      Left = 1
      Top = 257
      Width = 594
      Height = 35
      Align = alBottom
      TabOrder = 2
      Visible = False
      inline frmBarraH21: TfrmBarraH2
        Left = 413
        Top = 1
        Width = 180
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 413
        ExplicitTop = 1
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Left = 4
          Width = 176
          Height = 33
          Align = alRight
          AutoSize = True
          ExplicitLeft = 4
          ExplicitWidth = 176
          ExplicitHeight = 33
          inherited btnPost: TcxButton
            Left = 1
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 31
          end
          inherited btnCancel: TcxButton
            Left = 88
            Top = 1
            Height = 31
            Align = alRight
            OnClick = frmBarra2btnCancelClick
            ExplicitLeft = 88
            ExplicitTop = 1
            ExplicitHeight = 31
          end
        end
      end
    end
  end
  object cxSplitterDetalle: TcxSplitter
    Left = 480
    Top = 35
    Width = 8
    Height = 293
    AlignSplitter = salRight
    AutoSnap = True
  end
  object PanelDown: TPanel
    Left = 0
    Top = 336
    Width = 1084
    Height = 208
    Align = alBottom
    TabOrder = 5
    Visible = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1082
      Height = 171
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxFolioEntrada: TcxDBTextEdit
        Left = 131
        Top = 11
        DataBinding.DataField = 'sFolioEntrada'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Properties.ReadOnly = False
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
        Width = 262
      end
      object tmComentarios: TcxDBMemo
        Left = 131
        Top = 129
        DataBinding.DataField = 'mComentarios'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 12
        OnEnter = EnterControl
        OnExit = SalidaControl
        Height = 45
        Width = 906
      end
      object cxEntrega: TcxDBTextEdit
        Left = 131
        Top = 98
        DataBinding.DataField = 'sEntrega'
        DataBinding.DataSource = ds_almacen_entrada
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
        Width = 584
      end
      object cxFirma: TcxDBLookupComboBox
        Left = 359
        Top = 98
        DataBinding.DataField = 'IdFirma'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Properties.KeyFieldNames = 'IdFirma'
        Properties.ListColumns = <
          item
            Caption = 'Firmante'
            FieldName = 'sDescripcion'
          end>
        Properties.ListSource = dsFirma
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
        Width = 390
      end
      object cxButton1: TcxButton
        Left = 755
        Top = 98
        Width = 26
        Height = 25
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 10
        OnClick = cxButton1Click
      end
      object tsFolioMovimiento: TcxDBLookupComboBox
        Left = 466
        Top = 40
        DataBinding.DataField = 'iFolioMovimiento'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Properties.KeyFieldNames = 'Folio'
        Properties.ListColumns = <
          item
            Caption = 'Folios'
            FieldName = 'Detalle'
          end>
        Properties.ListSource = ds_FolioCompra
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 5
        OnEnter = EnterControl
        OnExit = tsFolioMovimientoExit
        OnKeyUp = GlobalKeyUp
        Width = 214
      end
      object cxFechaEntrada: TcxDBDateEdit
        Left = 338
        Top = 11
        DataBinding.DataField = 'dFecha'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyUp = GlobalKeyUp
        Width = 137
      end
      object cxAlmacen: TcxDBLookupComboBox
        Left = 535
        Top = 11
        DataBinding.DataField = 'IdAlmacen'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Properties.KeyFieldNames = 'IdAlmacen'
        Properties.ListColumns = <
          item
            Caption = 'Seleccione un almac'#233'n'
            FieldName = 'sDescripcion'
          end>
        Properties.ListSource = ds_almacen
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
        Width = 519
      end
      object tsTipoMovimiento: TcxLookupComboBox
        Left = 131
        Top = 40
        ParentFont = False
        Properties.KeyFieldNames = 'IdTipo'
        Properties.ListColumns = <
          item
            FieldName = 'sDescripcion'
          end>
        Properties.ListSource = ds_tipomovimiento
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        OnEnter = EnterControl
        OnExit = tsTipoMovimientoExit
        OnKeyUp = GlobalKeyUp
        Width = 231
      end
      object cbInspeccion: TcxDBComboBox
        Left = 933
        Top = 98
        DataBinding.DataField = 'Inspeccion'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Properties.Items.Strings = (
          'ACEPTADO'
          'DETENIDO'
          'RECHAZADO')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 11
        Width = 121
      end
      object cbEdoMaterial: TcxDBComboBox
        Left = 131
        Top = 69
        DataBinding.DataField = 'EstadoMaterial'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Properties.Items.Strings = (
          'BUENO'
          'FUERA DE NORMA')
        Style.HotTrack = False
        TabOrder = 4
        Width = 231
      end
      object cxNumeroOrden: TcxDBLookupComboBox
        Left = 748
        Top = 40
        DataBinding.DataField = 'sNumeroOrden'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Properties.KeyFieldNames = 'sNumeroOrden'
        Properties.ListColumns = <
          item
            Caption = 'Proyecto'
            FieldName = 'sIdFolio'
          end>
        Properties.ListSource = ds_ordenes_trabajo
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
        Width = 306
      end
      object cxDestino: TcxDBTextEdit
        Left = 466
        Top = 69
        DataBinding.DataField = 'Destino'
        DataBinding.DataSource = ds_almacen_entrada
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 6
        Width = 223
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
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
        CaptionOptions.Text = 'No. Entrada'
        Control = cxFolioEntrada
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.AlignVert = tavTop
        CaptionOptions.Text = 'Comentarios / Notas'
        Control = tmComentarios
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nombre Entrega'
        Control = cxEntrega
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Firma'
        Control = cxFirma
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Folio Movimiento'
        Control = tsFolioMovimiento
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Fecha Recepci'#243'n'
        Control = cxFechaEntrada
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Almac'#233'n'
        Control = cxAlmacen
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        CaptionOptions.Text = 'Tipo Movimiento'
        Control = tsTipoMovimiento
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignVert = avTop
        CaptionOptions.Text = 'Resultado de Inspecci'#243'n:'
        Control = cbInspeccion
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'Estado Material'
        Control = cbEdoMaterial
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        Index = 0
        AutoCreated = True
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Proyecto'
        Control = cxNumeroOrden
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Destino'
        Control = cxDestino
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        Index = 1
        AutoCreated = True
      end
    end
    object pnlBtn2: TPanel
      Left = 1
      Top = 172
      Width = 1082
      Height = 35
      Align = alBottom
      TabOrder = 1
      inline frmBarraH22: TfrmBarraH2
        Left = 892
        Top = 1
        Width = 189
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 892
        ExplicitTop = 1
        ExplicitWidth = 189
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Left = 13
          Width = 176
          Height = 33
          Align = alRight
          AutoSize = True
          ExplicitLeft = 13
          ExplicitWidth = 176
          ExplicitHeight = 33
          inherited btnPost: TcxButton
            Left = 1
            Top = 1
            Height = 31
            Align = alRight
            OnClick = frmBarraH22btnPostClick
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 31
          end
          inherited btnCancel: TcxButton
            Left = 88
            Top = 1
            Height = 31
            Align = alRight
            OnClick = frmBarraH22btnCancelClick
            ExplicitLeft = 88
            ExplicitTop = 1
            ExplicitHeight = 31
          end
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 328
    Width = 1084
    Height = 8
    AlignSplitter = salBottom
    Visible = False
  end
  object ds_almacen_entrada: TDataSource
    AutoEdit = False
    DataSet = almacen_entrada
    Left = 144
    Top = 195
  end
  object frxEntrada: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41904.429600810200000000
    ReportOptions.LastChange = 43686.831544305560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo6OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBEntradas."UsuarioValido"> = '#39#39' then'
      '       Memo6.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo6.Text :=  <frxDBEntradas."sFicha4"> +#13+ <frxDBEntr' +
        'adas."UsuarioValido"> +'#39' '#39'+DateTimeToStr(<frxDBEntradas."FechaVa' +
        'lido">);'
      '    end;'
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBEntradas."UsuarioAutorizo"> = '#39#39' then'
      '       Memo7.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo7.Text :=  <frxDBEntradas."sFicha3"> +#13+ <frxDBEntr' +
        'adas."UsuarioAutorizo"> +'#39' '#39'+DateTimeToStr(<frxDBEntradas."Fecha' +
        'Autorizo">);'
      '    end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 288
    Top = 101
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxDBEntradas
        DataSetName = 'frxDBEntradas'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 171.535523390000000000
        Top = 529.134199999999900000
        Width = 740.409927000000000000
        object Memo92: TfrxMemoView
          Left = 590.451490160000000000
          Top = 150.425196850394000000
          Width = 143.077172790000000000
          Height = 16.813067030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 49.133890000000290000
          Width = 246.425196850000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."sFicha1"] '
            ''
            ''
            '[frxDBEntradas."sEntrega"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          Left = 246.425196850000000000
          Top = 49.133890000000400000
          Width = 245.669291340000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."sFicha2"]'
            ''
            ''
            '[frxDBEntradas."sRecibe"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo43: TfrxMemoView
          Left = 492.118430000000000000
          Top = 49.133889999999950000
          Width = 247.937007870000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Resultado de la inspecci'#243'n'
            ''
            '[frxDBEntradas."Inspeccion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Top = 150.425196850394000000
          Width = 246.425196850000000000
          Height = 18.897613390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Anexo 5.0 CMMI-ALM-01 Rev.  0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Top = 128.503937007874000000
          Width = 740.031496060000000000
          Height = 21.921254960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '1. Aceptado   2. Detenido   3. Rechazado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 241.889920000000000000
          Height = 37.795300000000000000
          OnBeforePrint = 'Memo6OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxDBEntradas."sFicha4"]: [frxDBEntradas."UsuarioValido"], [frx' +
              'DBEntradas."FechaValido"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000022000
          Width = 219.212740000000000000
          Height = 37.795300000000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxDBEntradas."sFicha3"]: [frxDBEntradas."UsuarioAutorizo"], [f' +
              'rxDBEntradas."FechaAutorizo"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 65.000000000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture2: TfrxPictureView
          Left = 7.602838200000000000
          Top = 3.779530000000001000
          Width = 156.507503940000000000
          Height = 52.593669910000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 155.426335630000000000
        Top = 143.622140000000000000
        Width = 740.409927000000000000
        Condition = 'contrato."sContrato"'
        ReprintOnNewPage = True
        object Memo9: TfrxMemoView
          Left = 585.827150000000000000
          Top = 99.779527559999990000
          Width = 154.204346060000000000
          Height = 21.921259842519700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Vale de entrada de almac'#233'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 44.409453090000000000
          Width = 113.385826770000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 22.677167800000010000
          Width = 113.385826770000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 113.385826770000000000
          Top = 44.409453090000000000
          Width = 331.086614173228000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 113.385826770000000000
          Top = 22.677167800000010000
          Width = 331.086614173228000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo57: TfrxMemoView
          Top = 66.141738390000000000
          Width = 113.385826770000000000
          Height = 33.070875300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 113.385826770000000000
          Top = 66.141738390000000000
          Width = 331.086614173228000000
          Height = 33.070875300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo59: TfrxMemoView
          Top = 99.874023679999990000
          Width = 113.385826770000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Requisici'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 113.385826770000000000
          Top = 99.874023679999990000
          Width = 139.842390310000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."Requisicion"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo63: TfrxMemoView
          Left = 585.602564820000000000
          Top = 44.409453090000000000
          Width = 154.050978490000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."dFechaEntrega"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 585.602564820000000000
          Top = 22.677167800000010000
          Width = 154.050978490000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."sFolioEntrada"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo66: TfrxMemoView
          Left = 585.602564820000000000
          Top = 66.141738390000000000
          Width = 154.050978490000000000
          Height = 33.070875300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."Proyecto"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo68: TfrxMemoView
          Left = 253.228346456693000000
          Top = 99.874023679999990000
          Width = 191.846278490000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 444.472440944882000000
          Top = 22.677167800000010000
          Width = 141.732295670000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'No. ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 444.472440944882000000
          Top = 44.409453090000000000
          Width = 141.732295670000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 444.472440944882000000
          Top = 66.141738390000000000
          Width = 141.732295670000000000
          Height = 33.070875300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Proyecto asignado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 444.472440940000000000
          Top = 99.874023679999990000
          Width = 141.732295670000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'No. de factura:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 121.606370000000000000
          Width = 113.385826770000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Orden Compra:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 113.385826770000000000
          Top = 121.606370000000000000
          Width = 139.842390310000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."OrdenCompra"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 338.267562760000000000
          Top = 121.606370000000000000
          Width = 401.385980550000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."RazonSocial"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 253.228217090000000000
          Top = 121.606370000000000000
          Width = 85.039345670000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Proveedor:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 29.478053280000000000
        Top = 374.173470000000000000
        Width = 740.409927000000000000
        DataSet = frmrepositorio.frxDBEntradas
        DataSetName = 'frxDBEntradas'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 113.385575350000000000
          Width = 58.960620160000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."CantidadRecibida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 172.346456692913000000
          Width = 43.464566930000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."sMedida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 37.795275590551200000
          Width = 75.590551180000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."sIdInsumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 215.561013550000000000
          Width = 370.376040700000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBEntradas."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Width = 37.795275590000000000
          Height = 29.478053280000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 585.826771650000000000
          Width = 154.051024550000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntradas."ComentarioMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.283944850000000000
        Top = 321.260050000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBEntradas."iFolioEntrada"'
        object Memo45: TfrxMemoView
          Width = 37.795275590000000000
          Height = 30.283944850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Part.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 37.795275590000000000
          Width = 75.590551180000000000
          Height = 30.154382290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 172.346456692913000000
          Width = 43.464566930000000000
          Height = 30.252105370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'U.M.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 215.433136770000000000
          Width = 370.376040700000000000
          Height = 30.252105370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n del Producto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 113.385575350000000000
          Width = 58.960620160000000000
          Height = 30.252113510000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 585.826771653543000000
          Width = 154.051024550000000000
          Height = 30.207661840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Observaciones')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 41.574803150000000000
        Top = 464.882190000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo53: TfrxMemoView
          Left = 113.385826770000000000
          Width = 626.645669290000000000
          Height = 41.574803150000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBEntradas."mComentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Width = 113.385875590000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTAS:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object ds_FolioCompra: TDataSource
    AutoEdit = False
    DataSet = FolioCompra
    Left = 382
    Top = 197
  end
  object ds_almacen: TDataSource
    AutoEdit = False
    DataSet = Almacen
    Left = 240
    Top = 198
  end
  object ds_pEntradas: TDataSource
    AutoEdit = False
    DataSet = pEntradas
    Left = 304
    Top = 202
  end
  object ds_tipomovimiento: TDataSource
    AutoEdit = False
    DataSet = zq_tipomovimiento
    Left = 398
    Top = 418
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 33
    Top = 200
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
    end
    object Editar1: TMenuItem
      Tag = 1
      Caption = '&Editar'
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
    object Copiar1: TMenuItem
      Caption = '&Copiar'
      ShortCut = 16451
    end
    object Pegar1: TMenuItem
      Caption = '&Pegar'
      ShortCut = 16470
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 1
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object Refresh1: TMenuItem
      Tag = 1
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
      Tag = 1
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object dsReferencia: TDataSource
    AutoEdit = False
    DataSet = QReferencia
    Left = 520
    Top = 160
  end
  object pEntradas: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 316
    Top = 148
  end
  object zq_tipomovimiento: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from '
      'movimientosdealmacen '
      
        'where sClasificacion = '#39'Entrada'#39' or sclasificacion='#39'Traspaso Ent' +
        'rada'#39)
    Left = 636
    Top = 148
  end
  object FolioCompra: TUniQuery
    Connection = connection.Uconnection
    Left = 380
    Top = 148
  end
  object QReferencia: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from('
      
        '(select CONV(hex(scontrato), 16, 10) as ID, scontrato, " " as sN' +
        'umeroOrden,-1 as ipadre from contratos'
      ')'
      'UNION'
      '('
      
        'select CONV(hex(o.sNumeroOrden), 16, 10) as Id, o.sContrato,o.sN' +
        'umeroOrden, CONV(hex(o.scontrato), 16, 10) as ipadre from ordene' +
        'sdetrabajo o'
      'inner join contratos c on (c.sContrato=o.sContrato))'
      ''
      ')t'
      'order by t.sContrato,t.snumeroorden')
    Left = 516
    Top = 84
  end
  object almacen_entrada: TUniQuery
    FilterOptions = [foCaseInsensitive]
    AfterOpen = almacen_entradaAfterOpen
    Left = 148
    Top = 140
  end
  object Almacen: TUniQuery
    Connection = connection.Uconnection
    Left = 44
    Top = 252
  end
  object QFile: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select * from con_files where iIdFolio=:Folio and sTipoMovimient' +
        'o=:Movimiento and sTipoFile=:TipoFile')
    Left = 247
    Top = 141
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Movimiento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TipoFile'
        Value = nil
      end>
  end
  object ordenes_trabajo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select * from ordenesdetrabajo where cIdStatus = '#39'P'#39' and sContra' +
        'to like :Contrato')
    Left = 40
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end>
    object ordenes_trabajosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ordenes_trabajosIdFolio: TStringField
      FieldName = 'sIdFolio'
      Required = True
      Size = 80
    end
    object ordenes_trabajosNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object ordenes_trabajosOficioAutorizacion: TStringField
      FieldName = 'sOficioAutorizacion'
      Required = True
      Size = 50
    end
    object ordenes_trabajomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ordenes_trabajosIdPlataforma: TStringField
      FieldName = 'sIdPlataforma'
      Size = 30
    end
    object ordenes_trabajosIdPernocta: TStringField
      FieldName = 'sIdPernocta'
      Required = True
      Size = 10
    end
    object ordenes_trabajosIdPlataforma_nota: TStringField
      FieldName = 'sIdPlataforma_nota'
      Size = 50
    end
    object ordenes_trabajodFiProgramado: TDateField
      FieldName = 'dFiProgramado'
      Required = True
    end
    object ordenes_trabajodFfProgramado: TDateField
      FieldName = 'dFfProgramado'
      Required = True
    end
    object ordenes_trabajocIdStatus: TStringField
      FieldName = 'cIdStatus'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ordenes_trabajomComentarios: TMemoField
      FieldName = 'mComentarios'
      BlobType = ftMemo
    end
    object ordenes_trabajosFormato: TStringField
      FieldName = 'sFormato'
      Required = True
      Size = 30
    end
    object ordenes_trabajoiConsecutivo: TIntegerField
      FieldName = 'iConsecutivo'
      Required = True
    end
    object ordenes_trabajoiConsecutivoTierra: TIntegerField
      FieldName = 'iConsecutivoTierra'
      Required = True
    end
    object ordenes_trabajoiJornadas: TIntegerField
      FieldName = 'iJornadas'
    end
    object ordenes_trabajoiOrden: TIntegerField
      FieldName = 'iOrden'
      Required = True
    end
    object ordenes_trabajosCsu: TStringField
      FieldName = 'sCsu'
      Size = 11
    end
    object ordenes_trabajosUbicacion: TStringField
      FieldName = 'sUbicacion'
      Size = 50
    end
    object ordenes_trabajolAplicaJornada: TStringField
      FieldName = 'lAplicaJornada'
      FixedChar = True
      Size = 2
    end
    object ordenes_trabajosIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Size = 5
    end
    object ordenes_trabajosDescripcionCorta: TStringField
      FieldName = 'sDescripcionCorta'
      Size = 255
    end
  end
  object ds_ordenes_trabajo: TDataSource
    AutoEdit = False
    DataSet = ordenes_trabajo
    Left = 40
    Top = 146
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 496
    Top = 424
  end
  object dsFirma: TDataSource
    DataSet = zFirma
    Left = 440
    Top = 200
  end
  object zFirma: TUniQuery
    Left = 443
    Top = 147
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 624
    Top = 344
  end
  object dglPicture: TOpenPictureDialog
    Left = 1011
    Top = 119
  end
end
