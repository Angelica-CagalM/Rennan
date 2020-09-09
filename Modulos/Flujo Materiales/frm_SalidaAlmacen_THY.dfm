object frmSalidaAlmacen_THY: TfrmSalidaAlmacen_THY
  Left = 265
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Salida de Almac'#233'n'
  ClientHeight = 514
  ClientWidth = 1154
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelOpciones: TPanel
    Left = 0
    Top = 0
    Width = 1154
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1154
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 591
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 591
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
          OnClick = btnPrinterClick
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
      Caption = ' Salidas de Almac'#233'n'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object LabelProceso: TcxLabel
      Left = 259
      Top = 11
      Caption = 'Procesando'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Visible = False
    end
    object progreso: TcxProgressBar
      Left = 336
      Top = 10
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 34
    end
    object cxSalidaResguardo: TcxButton
      Tag = 10
      Left = 498
      Top = 1
      Width = 93
      Height = 33
      Hint = 'Nuevo Registro'
      Align = alRight
      Caption = 'Resguardo'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxSalidaResguardoClick
    end
    object cxSalidaEPP: TcxButton
      Tag = 10
      Left = 395
      Top = 1
      Width = 103
      Height = 33
      Hint = 'Nuevo Registro'
      Align = alRight
      Caption = 'Entrega EPP'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxSalidaEPPClick
    end
    object cxSolicitudEmb: TcxButton
      Tag = 10
      Left = 239
      Top = 1
      Width = 156
      Height = 33
      Hint = 'Nuevo Registro'
      Align = alRight
      Caption = 'Solicitud de Embarque'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 6
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelDetalle: TPanel
    Left = 591
    Top = 35
    Width = 563
    Height = 479
    Align = alRight
    TabOrder = 1
    object PanelCentro: TPanel
      Left = 1
      Top = 1
      Width = 561
      Height = 477
      Align = alClient
      TabOrder = 0
      object cxPageDetalle: TcxPageControl
        Left = 1
        Top = 31
        Width = 559
        Height = 410
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        Properties.Images = connection.cxIconos16
        OnClick = cxPageDetalleClick
        ClientRectBottom = 408
        ClientRectLeft = 2
        ClientRectRight = 557
        ClientRectTop = 29
        object cxTabSheet2: TcxTabSheet
          Caption = 'Materiales'
          ImageIndex = 13
          object GridPartidas: TcxGrid
            Left = 0
            Top = 0
            Width = 555
            Height = 217
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object GridPartidasView: TcxGridDBTableView
              OnMouseDown = GridPartidasViewMouseDown
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
              OnCellClick = GridPartidasViewCellClick
              OnCellDblClick = GridPartidasViewCellDblClick
              DataController.DataSource = ds_Salida_detalle
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.TranslateBetween = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
              FilterRow.Visible = True
              FilterRow.ApplyChanges = fracImmediately
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'Codigo'
                Width = 90
              end
              object GridPartidasViewColumn2: TcxGridDBColumn
                Caption = 'N'#250'mero Material'
                DataBinding.FieldName = 'NumeroMaterial'
                Width = 102
              end
              object GridPartidasViewColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'Medida'
                Width = 59
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'Material'
                DataBinding.FieldName = 'mDescripcion'
                Width = 228
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = 'Cantidad'
                DataBinding.FieldName = 'dCantidad'
                Width = 62
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = GridPartidasView
            end
          end
          object PanelMaterial: TPanel
            Left = 0
            Top = 225
            Width = 555
            Height = 154
            Align = alBottom
            TabOrder = 1
            Visible = False
            object dxLayoutControl6: TdxLayoutControl
              Left = 1
              Top = 1
              Width = 553
              Height = 152
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxEntregaMaterial: TcxDBMemo
                Left = 108
                Top = 40
                DataBinding.DataField = 'mComentarios'
                DataBinding.DataSource = ds_Salida_detalle
                ParentFont = False
                Properties.ScrollBars = ssVertical
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 2
                Height = 46
                Width = 302
              end
              object cxNumeroMaterial: TcxDBTextEdit
                Left = 108
                Top = 11
                DataBinding.DataField = 'NumeroMaterial'
                DataBinding.DataSource = ds_Salida_detalle
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
              object cxLocalizacion: TcxDBTextEdit
                Left = 359
                Top = 11
                DataBinding.DataField = 'Localizacion'
                DataBinding.DataSource = ds_almacen_salida
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 1
                Width = 121
              end
              object btnImagen: TcxButton
                Left = 395
                Top = 92
                Width = 75
                Height = 25
                Caption = 'Cargar Imagen'
                OptionsImage.ImageIndex = 49
                OptionsImage.Images = frmrepositorio.cxIconosMenus16
                OptionsImage.Layout = blGlyphRight
                TabOrder = 4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = btnImagenClick
              end
              object cxNombre: TcxDBTextEdit
                Left = 108
                Top = 92
                DataBinding.DataField = 'NombreImagen'
                DataBinding.DataSource = ds_Salida_detalle
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 3
                Width = 121
              end
              object dxDBToggleSwitch1: TdxDBToggleSwitch
                Left = 11
                Top = 123
                Caption = 'Visualizar Imagen'
                DataBinding.DataField = 'Visualizar'
                DataBinding.DataSource = ds_Salida_detalle
                ParentFont = False
                Properties.StateIndicator.Kind = sikText
                Properties.StateIndicator.OffText = 'No'
                Properties.StateIndicator.OnText = 'Si'
                Properties.StateIndicator.Position = sipInside
                Properties.ValueChecked = 'Si'
                Properties.ValueUnchecked = 'No'
                Style.HotTrack = False
                TabOrder = 5
              end
              object dxLayoutControl6Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem35: TdxLayoutItem
                Parent = dxLayoutControl6Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Nota:'
                Control = cxEntregaMaterial
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem8: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup11
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'N'#250'mero Material'
                Control = cxNumeroMaterial
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem29: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup11
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Localizacion'
                Control = cxLocalizacion
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl6Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem32: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup12
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Cargar Imagen'
                CaptionOptions.Visible = False
                Control = btnImagen
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem31: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup12
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Nombre'
                Control = cxNombre
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl6Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
              object dxLayoutItem33: TdxLayoutItem
                Parent = dxLayoutControl6Group_Root
                CaptionOptions.Visible = False
                Control = dxDBToggleSwitch1
                ControlOptions.ShowBorder = False
                Index = 3
              end
            end
          end
          object cxSplitMaterial: TcxSplitter
            Left = 0
            Top = 217
            Width = 555
            Height = 8
            AlignSplitter = salBottom
            Visible = False
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'Informes'
          ImageIndex = 31
          OnShow = cxTabSheet3Show
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PanelInferiorInforme: TPanel
            Left = 0
            Top = 176
            Width = 555
            Height = 203
            Align = alBottom
            TabOrder = 0
            object cxGrid1: TcxGrid
              Left = 1
              Top = 1
              Width = 553
              Height = 201
              Align = alClient
              TabOrder = 0
              object cxGrid1DBChartView1: TcxGridDBChartView
                Categories.DataBinding.FieldName = 'Periodo'
                Categories.DisplayText = 'Periodo'
                DataController.DataSource = dsGraficoSalida
                DiagramColumn.Active = True
                Title.Text = 'Gr'#225'fica de Movimientos Salidas'
                object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
                  DataBinding.FieldName = 'TotalSalida'
                  DisplayText = 'Total Salida'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBChartView1
              end
            end
          end
          object cxSplitInforme: TcxSplitter
            Left = 0
            Top = 164
            Width = 555
            Height = 6
            AlignSplitter = salTop
          end
          object PanelSuperiorInforme: TPanel
            Left = 0
            Top = 0
            Width = 555
            Height = 164
            Align = alTop
            TabOrder = 2
            object dxLayoutControl2: TdxLayoutControl
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 547
              Height = 156
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object opcionImprimir: TcxRadioGroup
                Left = 10
                Top = 10
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
                  end
                  item
                    Caption = 'Imprimir Costos de salida'
                    Value = '3'
                  end>
                TabOrder = 0
                Height = 105
                Width = 495
              end
              object btnImpInforme: TcxButton
                Left = 392
                Top = 121
                Width = 145
                Height = 25
                Caption = 'Imprimir'
                OptionsImage.ImageIndex = 5
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 1
                OnClick = btnImpInformeClick
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem12: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                CaptionOptions.Text = 'cxRadioGroup1'
                CaptionOptions.Visible = False
                Control = opcionImprimir
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem13: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahRight
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = btnImpInforme
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
        end
      end
      object PanelTop: TPanel
        Left = 1
        Top = 1
        Width = 559
        Height = 30
        Align = alTop
        AutoSize = True
        TabOrder = 1
        object cxNuevoDetalle: TcxButton
          Left = 315
          Top = 1
          Width = 81
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
        object cxEditaDetalle: TcxButton
          Left = 396
          Top = 1
          Width = 81
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
        object cxLeyenda2: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          Caption = 'Tabla...Agregando..'
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
        object cxEliminarDetalle: TcxButton
          Left = 477
          Top = 1
          Width = 81
          Height = 28
          Hint = 'Eliminar registro (CTRL + D)'
          Align = alRight
          Caption = 'Eliminar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxEliminarDetalleClick
        end
      end
      object PanelDown: TPanel
        Left = 1
        Top = 441
        Width = 559
        Height = 35
        Align = alBottom
        TabOrder = 2
        Visible = False
        DesignSize = (
          559
          35)
        object cxCancelarDetalle: TcxButton
          Left = 472
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
          OnClick = cxCancelarDetalleClick
        end
        object cxGuardarDetalle: TcxButton
          Left = 379
          Top = 3
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
          OnClick = cxGuardarDetalleClick
        end
      end
    end
  end
  object cxSplitterOpciones: TcxSplitter
    Left = 585
    Top = 35
    Width = 6
    Height = 479
    AlignSplitter = salRight
  end
  object PanelDatos: TPanel
    Left = 0
    Top = 35
    Width = 585
    Height = 479
    Align = alClient
    TabOrder = 3
    object Grid_Entradas: TcxGrid
      Left = 1
      Top = 1
      Width = 583
      Height = 149
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Grid_EntradasDBTableView1: TcxGridDBTableView
        PopupMenu = PopupPrincipal
        OnKeyUp = Grid_EntradasDBTableView1KeyUp
        OnMouseDown = Grid_EntradasDBTableView1MouseDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Enabled = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Enabled = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Enabled = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Enabled = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellClick = Grid_EntradasDBTableView1CellClick
        OnCellDblClick = Grid_EntradasDBTableView1CellDblClick
        DataController.DataSource = ds_almacen_salida
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.OnBeforeChange = Grid_EntradasDBTableView1DataControllerFilterBeforeChange
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object Grid_EntradasDBTableView1Column2: TcxGridDBColumn
          Caption = 'Folio Salida'
          DataBinding.FieldName = 'sFolioSalida'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column3: TcxGridDBColumn
          Caption = 'Fecha Salida'
          DataBinding.FieldName = 'dFechaSalida'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column4: TcxGridDBColumn
          Caption = 'Tipo Salida'
          DataBinding.FieldName = 'TipoSalida'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column8: TcxGridDBColumn
          Caption = 'Requisici'#243'n'
          DataBinding.FieldName = 'Requisicion'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column6: TcxGridDBColumn
          DataBinding.FieldName = 'Proyecto'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column10: TcxGridDBColumn
          Caption = 'Almac'#233'n'
          DataBinding.FieldName = 'Almacen'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Destino'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column7: TcxGridDBColumn
          DataBinding.FieldName = 'Referencia'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column5: TcxGridDBColumn
          Caption = 'Estatus'
          DataBinding.FieldName = 'sStatus'
          Width = 140
        end
        object Grid_EntradasDBTableView1Column11: TcxGridDBColumn
          Caption = 'Asignado '
          DataBinding.FieldName = 'NombrePersonal'
          Width = 140
        end
      end
      object Grid_EntradasLevel1: TcxGridLevel
        GridView = Grid_EntradasDBTableView1
      end
    end
    object pnlBtn2: TPanel
      Left = 1
      Top = 442
      Width = 583
      Height = 36
      Align = alBottom
      TabOrder = 1
      inline frmBarraH21: TfrmBarraH2
        Left = 406
        Top = 1
        Width = 176
        Height = 34
        Align = alRight
        AutoSize = True
        TabOrder = 0
        ExplicitLeft = 406
        ExplicitTop = 1
        ExplicitWidth = 176
        ExplicitHeight = 34
        inherited Panel1: TPanel
          Width = 176
          Height = 34
          Align = alRight
          AutoSize = True
          ExplicitWidth = 176
          ExplicitHeight = 34
          inherited btnPost: TcxButton
            Left = 1
            Top = 1
            Height = 32
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 32
          end
          inherited btnCancel: TcxButton
            Left = 88
            Top = 1
            Height = 32
            Align = alRight
            OnClick = btnCancelClick
            ExplicitLeft = 88
            ExplicitTop = 1
            ExplicitHeight = 32
          end
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 150
      Width = 583
      Height = 8
      AlignSplitter = salBottom
      Visible = False
    end
    object pgControl: TcxPageControl
      Left = 1
      Top = 158
      Width = 583
      Height = 284
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      Properties.Images = connection.cxIconos16
      ClientRectBottom = 282
      ClientRectLeft = 2
      ClientRectRight = 581
      ClientRectTop = 30
      object cxTabSheet1: TcxTabSheet
        Caption = 'Datos Salida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ImageIndex = 40
        ParentFont = False
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 579
          Height = 252
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxFecha: TcxDBDateEdit
            Left = 127
            Top = 69
            DataBinding.DataField = 'dFechaSalida'
            DataBinding.DataSource = ds_almacen_salida
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
            Width = 186
          end
          object cxRecibe: TcxDBTextEdit
            Left = 236
            Top = 156
            DataBinding.DataField = 'sNombre'
            DataBinding.DataSource = ds_almacen_salida
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
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object cxTipoSalida: TcxDBLookupComboBox
            Left = 226
            Top = 69
            DataBinding.DataField = 'IdTipo'
            DataBinding.DataSource = ds_almacen_salida
            ParentFont = False
            Properties.KeyFieldNames = 'IdTipo'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = ds_tipomovimiento
            Properties.OnChange = cxTipoSalidaPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            OnEnter = EnterControl
            OnExit = cxTipoSalidaExit
            OnKeyUp = GlobalKeyUp
            Width = 167
          end
          object cxCodigo: TcxDBTextEdit
            Left = 127
            Top = 11
            DataBinding.DataField = 'sFolioSalida'
            DataBinding.DataSource = ds_almacen_salida
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
            Width = 154
          end
          object cxProyecto: TcxDBLookupComboBox
            Left = 127
            Top = 98
            DataBinding.DataField = 'sNumeroOrden'
            DataBinding.DataSource = ds_almacen_salida
            ParentFont = False
            Properties.KeyFieldNames = 'sNumeroOrden'
            Properties.ListColumns = <
              item
                Caption = 'Referencia/Proyecto'
                FieldName = 'sIdFolio'
              end>
            Properties.ListSource = dsReferencia
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
            Width = 154
          end
          object cxPageEquipo: TcxPageControl
            Left = 390
            Top = 11
            Width = 328
            Height = 224
            Color = 14803425
            ParentBackground = False
            ParentColor = False
            TabOrder = 17
            Properties.ActivePage = cxTabSheetEquipo
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 222
            ClientRectLeft = 2
            ClientRectRight = 326
            ClientRectTop = 30
            object cxTabSheetEquipo: TcxTabSheet
              Caption = 'Recibe equipo'
              ImageIndex = 0
              ExplicitWidth = 157
              ExplicitHeight = 221
              object dxLayoutControl3: TdxLayoutControl
                Left = 0
                Top = 0
                Width = 324
                Height = 192
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                ExplicitWidth = 157
                ExplicitHeight = 221
                object cxEmpleado: TcxDBLookupComboBox
                  Left = 135
                  Top = 11
                  DataBinding.DataField = 'IdEmpleado'
                  DataBinding.DataSource = ds_almacen_salida
                  Enabled = False
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdPersonal'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NombreCompleto'
                    end>
                  Properties.ListSource = ds_qPersonal
                  Properties.OnEditValueChanged = cxEmpleadoPropertiesEditValueChanged
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
                  Width = 320
                end
                object cxDireccion: TcxTextEdit
                  Left = 135
                  Top = 39
                  Enabled = False
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  StyleDisabled.BorderColor = clWindowFrame
                  StyleDisabled.Color = clWindow
                  StyleDisabled.TextColor = clWindowText
                  TabOrder = 1
                  Width = 320
                end
                object cxCalzado: TcxTextEdit
                  Left = 373
                  Top = 67
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 4
                  Width = 60
                end
                object cxTalla: TcxTextEdit
                  Left = 274
                  Top = 67
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  Width = 87
                end
                object cxTelefono: TcxTextEdit
                  Left = 135
                  Top = 67
                  Enabled = False
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  StyleDisabled.Color = clWindow
                  StyleDisabled.TextColor = clWindowText
                  TabOrder = 2
                  Width = 100
                end
                object cxButton1: TcxButton
                  Left = 439
                  Top = 67
                  Width = 27
                  Height = 25
                  OptionsImage.Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    00000000000000000002000000070000000C0000001000000012000000110000
                    000E000000080000000200000000000000000000000000000000000000000000
                    000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
                    3AD20F2F21840001011500000005000000010000000000000000000000000000
                    0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
                    80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
                    0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
                    96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
                    3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
                    99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
                    66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
                    A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
                    8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
                    A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
                    A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
                    4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
                    B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
                    8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
                    BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
                    E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
                    B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
                    76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
                    7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
                    7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
                    46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
                    C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
                    0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
                    DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
                    0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
                    C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
                    000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
                    56B00E3226560000000600000002000000000000000000000000}
                  TabOrder = 5
                  OnClick = cxButton1Click
                end
                object dxLayoutControl3Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem14: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Nombre del Personal'
                  Control = cxEmpleado
                  ControlOptions.ShowBorder = False
                  Enabled = False
                  Index = 0
                end
                object dxLayoutItem15: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Direcci'#243'n '
                  Control = cxDireccion
                  ControlOptions.ShowBorder = False
                  Enabled = False
                  Index = 1
                end
                object dxLayoutItem17: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  AlignHorz = ahRight
                  AlignVert = avClient
                  CaptionOptions.Text = 'No. Calzado'
                  Control = cxCalzado
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl3Group_Root
                  AlignVert = avClient
                  LayoutDirection = ldHorizontal
                  Index = 2
                  AutoCreated = True
                end
                object dxLayoutItem16: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.Text = 'Talla'
                  Control = cxTalla
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem18: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  AlignHorz = ahLeft
                  AlignVert = avClient
                  CaptionOptions.Text = 'Telefono'
                  Control = cxTelefono
                  ControlOptions.ShowBorder = False
                  Enabled = False
                  Index = 0
                end
                object dxLayoutItem19: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  AlignHorz = ahRight
                  AlignVert = avClient
                  CaptionOptions.Text = 'cxButton1'
                  CaptionOptions.Visible = False
                  Control = cxButton1
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
              end
            end
            object cxTabSheetAsignacion: TcxTabSheet
              Caption = 'Asignacion'
              ImageIndex = 1
              TabVisible = False
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 157
              ExplicitHeight = 221
              object dxLayoutControl4: TdxLayoutControl
                Left = 0
                Top = 0
                Width = 324
                Height = 192
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                ExplicitWidth = 157
                ExplicitHeight = 221
                object cbEmpleados: TcxDBLookupComboBox
                  Left = 135
                  Top = 11
                  DataBinding.DataField = 'IdEmpleado'
                  DataBinding.DataSource = ds_almacen_salida
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdPersonal'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NombreCompleto'
                    end>
                  Properties.ListSource = ds_qPersonal
                  Properties.OnEditValueChanged = cxEmpleadoPropertiesEditValueChanged
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
                  Width = 338
                end
                object cbEmbarcacion: TcxDBLookupComboBox
                  Left = 135
                  Top = 39
                  DataBinding.DataField = 'IdEmbarcacion'
                  DataBinding.DataSource = ds_almacen_salida
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
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 145
                end
                object dxLayoutGroup1: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem21: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Nombre del Personal'
                  Control = cbEmpleados
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem20: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  CaptionOptions.Text = 'Embarcacion'
                  Control = cbEmbarcacion
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
              end
            end
          end
          object cxNotas: TcxDBMemo
            Left = 127
            Top = 185
            DataBinding.DataField = 'mComentarios'
            DataBinding.DataSource = ds_almacen_salida
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 14
            OnEnter = EnterControl
            OnExit = SalidaControl
            Height = 48
            Width = 453
          end
          object cxButton3: TcxButton
            Left = 356
            Top = 239
            Width = 28
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
            TabOrder = 16
            OnClick = cxButton3Click
          end
          object cxFirma: TcxDBLookupComboBox
            Left = 127
            Top = 239
            DataBinding.DataField = 'IdFirma'
            DataBinding.DataSource = ds_almacen_salida
            ParentFont = False
            Properties.KeyFieldNames = 'idFirma'
            Properties.ListColumns = <
              item
                Caption = 'Firmante'
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = ds_firma
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 15
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 145
          end
          object cxCliente: TcxDBLookupComboBox
            Left = 127
            Top = 156
            ParentFont = False
            Properties.KeyFieldNames = 'IdCliente'
            Properties.ListColumns = <
              item
                Caption = 'Cliente'
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsClientes
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
            Width = 145
          end
          object cxRequisicion: TcxDBLookupComboBox
            Left = 247
            Top = 98
            DataBinding.DataField = 'iFolioRequisicion'
            DataBinding.DataSource = ds_almacen_salida
            ParentFont = False
            Properties.KeyFieldNames = 'iFolioRequisicion'
            Properties.ListColumns = <
              item
                FieldName = 'sNumFolio'
              end>
            Properties.ListSource = dsRequisiciones
            Properties.OnChange = cxRequisicionPropertiesChange
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
            Width = 138
          end
          object cxReferencia: TcxDBTextEdit
            Left = 328
            Top = 156
            DataBinding.DataField = 'Referencia'
            DataBinding.DataSource = ds_almacen_salida
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 13
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 200
          end
          object cxDestino: TcxDBTextEdit
            Left = 271
            Top = 40
            DataBinding.DataField = 'Destino'
            DataBinding.DataSource = ds_almacen_salida
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
            Width = 114
          end
          object cxAlmacen: TcxDBLookupComboBox
            Left = 127
            Top = 40
            DataBinding.DataField = 'IdAlmacen'
            DataBinding.DataSource = ds_almacen_salida
            ParentFont = False
            Properties.KeyFieldNames = 'IdAlmacen'
            Properties.ListColumns = <
              item
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
            TabOrder = 1
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 90
          end
          object cxViaEmbarque: TcxDBComboBox
            Left = 127
            Top = 127
            ParentFont = False
            Properties.Items.Strings = (
              'Maritima'
              'Aerea'
              'Terrestre')
            Style.HotTrack = False
            TabOrder = 7
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 2
          end
          object cxConducto: TcxDBTextEdit
            Left = 247
            Top = 127
            ParentFont = False
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
            Width = 20
          end
          object cxSolicitud: TcxDBLookupComboBox
            Left = 356
            Top = 98
            ParentFont = False
            Properties.KeyFieldNames = 'iFolioSolicitud'
            Properties.ListColumns = <
              item
                FieldName = 'sNumFolio'
              end>
            Properties.ListSource = dsSolicitud
            Properties.OnChange = cxSolicitudPropertiesChange
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
            Width = 87
          end
          object cbEdoMaterial: TcxDBComboBox
            Left = 364
            Top = 69
            DataBinding.DataField = 'EstadoMaterial'
            DataBinding.DataSource = ds_almacen_salida
            ParentFont = False
            Properties.Items.Strings = (
              'BUENO'
              'FUERA DE NORMA')
            Style.HotTrack = False
            TabOrder = 5
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
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Fecha'
            Control = cxFecha
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Recibe Salida'
            Control = cxRecibe
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Tipo Salida'
            Control = cxTipoSalida
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'C'#243'digo'
            Control = cxCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Referencia/Proyecto'
            Control = cxProyecto
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            Control = cxPageEquipo
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Notas'
            Control = cxNotas
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            LayoutDirection = ldHorizontal
            Index = 6
            AutoCreated = True
          end
          object dxLayoutItem22: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahRight
            CaptionOptions.Text = 'cxButton3'
            CaptionOptions.Visible = False
            Control = cxButton3
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Firma'
            Control = cxFirma
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem23: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Cliente'
            Control = cxCliente
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 4
            AutoCreated = True
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Requisici'#243'n'
            Visible = False
            Control = cxRequisicion
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem25: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Referencia'
            Control = cxReferencia
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem24: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Destino'
            Control = cxDestino
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Almac'#233'n'
            Control = cxAlmacen
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem26: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Via Embarque'
            Control = cxViaEmbarque
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem27: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Conducto'
            Control = cxConducto
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem28: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Solicitud'
            Control = cxSolicitud
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem30: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Estado Material'
            Visible = False
            Control = cbEdoMaterial
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
    end
  end
  object ds_almacen_salida: TDataSource
    AutoEdit = False
    DataSet = salida_almacen
    Left = 40
    Top = 126
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
    ReportOptions.LastChange = 43638.139846724540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <frxDBEntrada."UsuarioValido"> = '#39#39' then'
      '       Memo1.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo1.Text :=  <frxDBEntrada."sFicha4"> +#13+ <frxDBEntra' +
        'da."UsuarioValido"> +'#39' '#39'+DateTimeToStr(<frxDBEntrada."FechaValid' +
        'o">);'
      '    end;'
      'end;'
      ''
      'procedure Memo2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBEntrada."UsuarioAutorizo"> = '#39#39' then'
      '       Memo2.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo2.Text :=  <frxDBEntrada."sFicha3"> +#13+ <frxDBEntra' +
        'da."UsuarioAutorizo"> +'#39' '#39'+DateTimeToStr(<frxDBEntrada."FechaAut' +
        'orizo">);'
      '    end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 336
    Top = 190
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxDBEntrada
        DataSetName = 'frxDBEntrada'
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
        Height = 151.181163390000000000
        Top = 457.323130000000000000
        Width = 740.409927000000000000
        object Memo38: TfrxMemoView
          Top = 64.251968499999970000
          Width = 246.803149610000000000
          Height = 30.236203390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sEntrega"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 493.228346460000000000
          Top = 64.251968499999970000
          Width = 246.425196850000000000
          Height = 30.236203390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sNombre"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 246.803149610000000000
          Top = 64.251968499999970000
          Width = 246.425196850000000000
          Height = 30.236203390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sFirmante3"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 245.669450000000000000
          Height = 30.236240000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxDBEntrada."sFicha4"]: [frxDBEntrada."UsuarioValido"], [frxDB' +
              'Entrada."FechaValido"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 468.661720000000000000
          Width = 268.346630000000000000
          Height = 30.236240000000000000
          OnBeforePrint = 'Memo2OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxDBEntrada."sFicha3"]: [frxDBEntrada."UsuarioAutorizo"], [frx' +
              'DBEntrada."FechaAutorizo"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795275590000020000
          Width = 246.803149610000000000
          Height = 26.456673390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sFicha1"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 493.228346460000000000
          Top = 37.795275590551230000
          Width = 246.425196850000000000
          Height = 26.456673390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sFicha2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 246.803149610000000000
          Top = 37.795275590551230000
          Width = 246.425196850000000000
          Height = 26.456673390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sFicha3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 127.488188980000000000
          Width = 740.031496060000000000
          Height = 22.562994800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Anexo 5.0 CMMI-ALM-01 Rev. 0')
          ParentFont = False
          VAlign = vaCenter
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
          Width = 167.846093940000000000
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
        Height = 82.716535430000000000
        Top = 143.622140000000000000
        Width = 740.409927000000000000
        Condition = 'contrato."sContrato"'
        ReprintOnNewPage = True
        object Memo9: TfrxMemoView
          Width = 740.031496060000000000
          Height = 26.342524800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Vale de Salida de EPP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Top = 26.401574799999990000
          Width = 444.472440940000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ' SALIDA                                  REINGRESO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Top = 54.803149609999990000
          Width = 113.385826770000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 113.385826770000000000
          Top = 54.803149609999990000
          Width = 331.086614170000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo63: TfrxMemoView
          Left = 585.602564820000000000
          Top = 26.401574799999990000
          Width = 154.050978490000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."dFechaSalida"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo66: TfrxMemoView
          Left = 585.602564820000000000
          Top = 54.803149609999990000
          Width = 154.050978490000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sIdFolio"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo61: TfrxMemoView
          Left = 444.472440944882000000
          Top = 26.401574799999990000
          Width = 141.732295670000000000
          Height = 28.346456690000000000
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
          Top = 54.803149609999990000
          Width = 141.732295670000000000
          Height = 28.346456690000000000
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
        object Shape1: TfrxShapeView
          Left = 83.000000000000000000
          Top = 28.377860000000000000
          Width = 15.000000000000000000
          Height = 12.000000000000000000
          Fill.BackColor = -1
        end
        object Shape2: TfrxShapeView
          Left = 239.000000000000000000
          Top = 28.377860000000000000
          Width = 15.000000000000000000
          Height = 12.000000000000000000
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 29.478053280000000000
        Top = 302.362400000000000000
        Width = 740.409927000000000000
        DataSet = frmrepositorio.frxDBEntrada
        DataSetName = 'frxDBEntrada'
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
            '[frxDBEntrada."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 172.346456690000000000
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
            '[frxDBEntrada."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 37.795275590000000000
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
            '[frxDBEntrada."Insumo"]')
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
            '[frxDBEntrada."Material"]')
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
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.283944850000000000
        Top = 249.448980000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBEntrada."iFolioSalida"'
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
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Rich1: TfrxRichView
          Width = 740.031496060000000000
          Height = 41.574803150000000000
          StretchMode = smActualHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E6732323533387B5C666F6E7474626C7B5C
            66305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E
            696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C67656E65
            7261746F722052696368656432302031302E302E31373133347D5C766965776B
            696E64345C756331200D0A5C706172645C71635C625C66733136204E4F544153
            3A20205C62305C6631205B6672784442456E74726164612E226D436F6D656E74
            6172696F73225D5C7061720D0A5C7061720D0A0D0A5C706172645C71725C625C
            66305C6673313820466F6C696F3A5C66315C6673313620205B6672784442456E
            74726164612E2273466F6C696F53616C696461225D20202020202020205C7061
            720D0A7D0D0A00}
        end
      end
    end
  end
  object ds_almacen: TDataSource
    AutoEdit = False
    DataSet = Almacen
    Left = 861
    Top = 171
  end
  object ds_Salida_detalle: TDataSource
    AutoEdit = False
    DataSet = salida_detalle
    Left = 512
    Top = 174
  end
  object ds_tipomovimiento: TDataSource
    AutoEdit = False
    DataSet = zq_tipomovimiento
    Left = 104
    Top = 126
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    OnPopup = PopupPrincipalPopup
    Left = 592
    Top = 174
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ValedeResguardo1: TMenuItem
      Caption = 'Vale de Resguardo'
      ImageIndex = 5
      OnClick = ValedeResguardo1Click
    end
    object Registrar1: TMenuItem
      Tag = 9
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
    end
    object Can1: TMenuItem
      Tag = 9
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
    object N3: TMenuItem
      Caption = '-'
    end
    object InsertarNumeroMaterial1: TMenuItem
      Caption = 'Asignar C'#243'digo Material'
      ImageIndex = 61
      OnClick = InsertarNumeroMaterial1Click
    end
    object LimpiarCdigoMaterial1: TMenuItem
      Caption = 'Limpiar C'#243'digo Material'
      ImageIndex = 64
      OnClick = LimpiarCdigoMaterial1Click
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
  object dsReferencia: TDataSource
    AutoEdit = False
    DataSet = QReferencia
    Left = 256
    Top = 136
  end
  object dsRequisiciones: TDataSource
    AutoEdit = False
    DataSet = QRequisiciones
    Left = 184
    Top = 128
  end
  object salida_almacen: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 36
    Top = 179
  end
  object QRequisiciones: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 188
    Top = 171
  end
  object QReferencia: TUniQuery
    Connection = connection.Uconnection
    Left = 255
    Top = 183
  end
  object zq_tipomovimiento: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 104
    Top = 168
  end
  object Almacen: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 812
    Top = 171
  end
  object salida_detalle: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = salida_detalleAfterScroll
    Left = 436
    Top = 171
  end
  object ds_qPersonal: TDataSource
    AutoEdit = False
    DataSet = QPersonal
    Left = 868
    Top = 232
  end
  object QPersonal: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 812
    Top = 232
  end
  object zGrafico: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select sNumeroActividad from actividadesxanexo '
      
        'where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoA' +
        'ctividad = '#39'Actividad'#39
      'order by iItemOrden ')
    Left = 1020
    Top = 171
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        Value = nil
      end>
  end
  object ds_grafico: TDataSource
    AutoEdit = False
    DataSet = zGrafico
    Left = 952
    Top = 174
  end
  object GraficoSalida: TUniQuery
    Connection = connection.Uconnection
    Left = 1024
    Top = 235
  end
  object dsGraficoSalida: TDataSource
    DataSet = GraficoSalida
    Left = 952
    Top = 243
  end
  object filtro: TUniQuery
    Connection = connection.Uconnection
    Left = 344
    Top = 133
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    Left = 817
    Top = 312
  end
  object dsEmbarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 889
    Top = 312
  end
  object ds_firma: TDataSource
    DataSet = zFirma
    Left = 440
    Top = 368
  end
  object zFirma: TUniQuery
    Left = 392
    Top = 368
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
    Left = 1114
    Top = 251
  end
  object ds_Presupuesto: TfrxDBDataset
    UserName = 'ds_Presupuesto'
    CloseDataSource = False
    DataSet = zSalida_alm_costo
    BCDToCurrency = False
    Left = 392
    Top = 128
  end
  object zSalida_alm_costo: TUniQuery
    Connection = connection.Uconnection
    Left = 571
    Top = 136
  end
  object zClientes: TUniQuery
    Connection = connection.Uconnection
    Left = 75
    Top = 360
  end
  object dsClientes: TDataSource
    DataSet = zClientes
    Left = 75
    Top = 416
  end
  object zSolicitud: TUniQuery
    Connection = connection.Uconnection
    Left = 643
    Top = 248
  end
  object dsSolicitud: TDataSource
    DataSet = zSolicitud
    Left = 707
    Top = 264
  end
  object dglPicture: TOpenPictureDialog
    Left = 907
    Top = 239
  end
end
