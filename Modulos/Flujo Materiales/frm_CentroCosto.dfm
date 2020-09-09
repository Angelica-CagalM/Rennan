object frmCentroCosto: TfrmCentroCosto
  Left = 195
  Top = 166
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Centro de Costo'
  ClientHeight = 565
  ClientWidth = 1241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1241
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1241
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 678
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 678
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
          OnClick = btnExportaClick
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Listado de Centro de  Costo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object cxLabel1: TcxLabel
      Left = 355
      Top = 8
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
    object cxProgressBar1: TcxProgressBar
      Left = 447
      Top = 11
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
      Width = 200
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 35
    Width = 1241
    Height = 530
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1089
      Height = 528
      Align = alClient
      TabOrder = 0
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 150
        Width = 1087
        Height = 8
        AlignSplitter = salBottom
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 1087
        Height = 149
        Align = alClient
        TabOrder = 1
        object grid_ordenes: TcxGrid
          Left = 1
          Top = 1
          Width = 1085
          Height = 147
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupPrincipal
          TabOrder = 0
          object cxVistaOrdenes: TcxGridDBTableView
            OnDblClick = cxVistaOrdenesDblClick
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
            Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellClick = cxVistaOrdenesCellClick
            DataController.DataSource = ds_ordenesdetrabajo
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.UnderscoreWildcard = '%'
            DataController.Filter.AutoDataSetFilter = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$,0.00'
                Kind = skSum
                Column = cxVistaOrdenesColumn5
              end
              item
                Format = '$ ,0.00'
                Kind = skSum
                Column = cxVistaOrdenesColumn4
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            Styles.OnGetContentStyle = cxVistaOrdenesStylesGetContentStyle
            object cxColId: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'sNumeroOrden'
              Visible = False
              VisibleForCustomization = False
              Width = 75
            end
            object cxColCodigo: TcxGridDBColumn
              Caption = 'Centro Costo'
              DataBinding.FieldName = 'sIdFolio'
              Width = 69
            end
            object cxVistaOrdenesPO: TcxGridDBColumn
              Caption = 'PO'
              DataBinding.FieldName = 'sPO'
              Visible = False
              Width = 46
            end
            object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
              Caption = 'Fecha Inicio'
              DataBinding.FieldName = 'dFiProgramado'
              Width = 63
            end
            object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
              Caption = 'Fecha Termino'
              DataBinding.FieldName = 'dFfProgramado'
              Width = 56
            end
            object cxVistaOrdenesEmb: TcxGridDBColumn
              Caption = 'Embarcaci'#243'n'
              DataBinding.FieldName = 'Embarcaciones'
              Visible = False
              Width = 46
            end
            object cxVistaOrdenesColumnDes: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'mDescripcion'
            end
            object cxVistaOrdenesResponsable: TcxGridDBColumn
              Caption = 'Responsable'
              DataBinding.FieldName = 'NombreCompleto'
              Visible = False
              Width = 73
            end
            object cxVistaOrdenesColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Cliente'
              Visible = False
              Width = 133
            end
            object Grid_coloficio: TcxGridDBColumn
              Caption = 'Ubicaci'#243'n'
              DataBinding.FieldName = 'sUbicacion'
              Visible = False
              Width = 90
            end
            object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'Estatus'
              Width = 97
            end
            object cMonto: TcxGridDBColumn
              Caption = 'Monto'
              DataBinding.FieldName = 'cMonto'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object cxVistaOrdenesColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'Periodo'
              Visible = False
              GroupIndex = 0
              SortIndex = 0
              SortOrder = soDescending
            end
            object cxVistaOrdenesColumn5: TcxGridDBColumn
              Caption = 'Total Costo'
              DataBinding.FieldName = 'TotalCosto'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Visible = False
              Width = 88
            end
            object cxVistaOrdenesColumn4: TcxGridDBColumn
              Caption = 'Precio Total'
              DataBinding.FieldName = 'TotalPrecio'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Visible = False
              Width = 100
            end
            object cxVistaOrdenesComPres: TcxGridDBColumn
              Caption = 'Comentarios'
              DataBinding.FieldName = 'sComentarios'
              Width = 61
            end
            object cxVistaOrdenesComProy: TcxGridDBColumn
              Caption = 'Comentarios'
              DataBinding.FieldName = 'mComentarios'
              Width = 60
            end
            object cxVistaOrdenesColEstatus: TcxGridDBColumn
              DataBinding.FieldName = 'cIdStatus'
              Visible = False
            end
          end
          object cxgrdlvlGrid1Level1: TcxGridLevel
            GridView = cxVistaOrdenes
          end
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 158
        Width = 1087
        Height = 333
        Align = alBottom
        TabOrder = 2
        object layout: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 1085
          Height = 331
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object sNumeroOrden: TcxDBTextEdit
            Left = 140
            Top = 11
            DataBinding.DataField = 'sNumeroOrden'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Style.Color = clWindow
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
            Width = 40
          end
          object mDescripcion: TcxDBMemo
            Left = 140
            Top = 69
            DataBinding.DataField = 'mDescripcion'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            OnEnter = Editar1Click
            OnExit = SalidaControl
            Height = 44
            Width = 582
          end
          object sIdFolio: TcxDBTextEdit
            Left = 400
            Top = 11
            DataBinding.DataField = 'sIdFolio'
            DataBinding.DataSource = ds_ordenesdetrabajo
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
            Width = 77
          end
          object dFechaInicio: TcxDBDateEdit
            Left = 140
            Top = 119
            DataBinding.DataField = 'dFiProgramado'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 247
          end
          object dFechaFin: TcxDBDateEdit
            Left = 468
            Top = 119
            DataBinding.DataField = 'dFfProgramado'
            DataBinding.DataSource = ds_ordenesdetrabajo
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
            Width = 237
          end
          object edtDescripcionCorta: TcxDBTextEdit
            Left = 140
            Top = 40
            DataBinding.DataField = 'sDescripcionCorta'
            DataBinding.DataSource = ds_ordenesdetrabajo
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
          object cxComentarios: TcxDBMemo
            Left = 140
            Top = 177
            DataBinding.DataField = 'mComentarios'
            DataBinding.DataSource = ds_ordenesdetrabajo
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
            Height = 45
            Width = 233
          end
          object cIdStatus: TcxDBLookupComboBox
            Left = 140
            Top = 148
            DataBinding.DataField = 'cIdStatus'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'cIdStatus'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = ds_estatus
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
            Width = 235
          end
          object iOrden: TcxDBTextEdit
            Left = 644
            Top = 11
            DataBinding.DataField = 'iOrden'
            DataBinding.DataSource = ds_ordenesdetrabajo
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
            Width = 47
          end
          object cxTipoProyecto: TcxDBComboBox
            Left = 471
            Top = 40
            DataBinding.DataField = 'TipoProyecto'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.Items.Strings = (
              'CENTRO_COSTO')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 121
          end
          object cxGroupBox2: TcxGroupBox
            Left = 697
            Top = 11
            Caption = 'Monto Asignado'
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
            TabOrder = 13
            Height = 302
            Width = 394
            object dxLayoutControl3: TdxLayoutControl
              AlignWithMargins = True
              Left = 6
              Top = 19
              Width = 382
              Height = 270
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 365
              object cxGridMonto: TcxGrid
                Left = 10
                Top = 46
                Width = 567
                Height = 194
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object cxGridMontoDBTable: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = ds_monto
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.Editing = False
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object colFechaInicio: TcxGridDBColumn
                    Caption = 'Fecha Inicio'
                    DataBinding.FieldName = 'FechaInicio'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Width = 150
                  end
                  object col_fechaTermino: TcxGridDBColumn
                    Caption = 'Fecha Termino'
                    DataBinding.FieldName = 'FechaTermino'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Width = 150
                  end
                  object colMonto: TcxGridDBColumn
                    DataBinding.FieldName = 'Monto'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Width = 150
                  end
                  object col_Homologado: TcxGridDBColumn
                    DataBinding.FieldName = 'Homologado'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Width = 150
                  end
                end
                object cxGridMontoLevel1: TcxGridLevel
                  GridView = cxGridMontoDBTable
                end
              end
              object Panel6: TPanel
                Left = 10
                Top = 246
                Width = 548
                Height = 35
                Color = 14803425
                ParentBackground = False
                TabOrder = 2
                object cxCancelar: TcxButton
                  Left = 463
                  Top = 1
                  Width = 84
                  Height = 33
                  Align = alRight
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
                  OnClick = cxCancelarClick
                  ExplicitLeft = 243
                end
                object cxGuarda: TcxButton
                  Left = 376
                  Top = 1
                  Width = 87
                  Height = 33
                  Align = alRight
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
                  OnClick = cxGuardaClick
                  ExplicitLeft = 156
                end
              end
              object PanelDetalleT: TPanel
                Left = 10
                Top = 10
                Width = 742
                Height = 30
                Color = 14803425
                ParentBackground = False
                TabOrder = 0
                object cxEliminar: TcxButton
                  Tag = 12
                  Left = 660
                  Top = 1
                  Width = 81
                  Height = 28
                  Align = alRight
                  Caption = 'Eliminar'
                  OptionsImage.ImageIndex = 4
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 0
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  OnClick = cxEliminarClick
                  ExplicitLeft = 246
                end
                object cxEdita: TcxButton
                  Tag = 11
                  Left = 579
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
                  OnClick = cxEditaClick
                  ExplicitLeft = 165
                end
                object cxNuevo: TcxButton
                  Tag = 10
                  Left = 498
                  Top = 1
                  Width = 81
                  Height = 28
                  Align = alRight
                  Caption = 'Nuevo'
                  OptionsImage.ImageIndex = 0
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  OnClick = cxNuevoClick
                  ExplicitLeft = 84
                end
                object labelSeleccion: TcxLabel
                  Left = 1
                  Top = 1
                  Align = alClient
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -16
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.TextColor = clHighlight
                  Style.IsFontAssigned = True
                  Transparent = True
                  ExplicitWidth = 83
                end
              end
              object dxLayoutControl3Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutControl3Group_Root
                Control = cxGridMonto
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem9: TdxLayoutItem
                Parent = dxLayoutControl3Group_Root
                AlignHorz = ahClient
                CaptionOptions.Visible = False
                Control = Panel6
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutControl3Group_Root
                AlignHorz = ahClient
                CaptionOptions.Visible = False
                Control = PanelDetalleT
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
          object lcbMonedas: TcxDBLookupComboBox
            Left = 140
            Top = 228
            DataBinding.DataField = 'IdMoneda'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'IdMoneda'
            Properties.ListColumns = <
              item
                FieldName = 'FK_Moneda'
              end>
            Properties.ListSource = dsMoneda
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
            Width = 145
          end
          object cxUsuario: TcxDBLookupComboBox
            Left = 140
            Top = 257
            DataBinding.DataField = 'sIdUsuario'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'sIdUsuario'
            Properties.ListColumns = <
              item
                FieldName = 'NombreU'
              end>
            Properties.ListSource = dsUsuario
            Style.HotTrack = False
            TabOrder = 12
            Width = 145
          end
          object cxPlanta: TcxDBLookupComboBox
            Left = 520
            Top = 228
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'IdPlanta'
            Properties.ListColumns = <
              item
                FieldName = 'Numero'
              end
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsPlanta
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
            Width = 84
          end
          object layoutGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'C'#243'digo:'
            Visible = False
            Control = sNumeroOrden
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Descripci'#243'n:'
            Control = mDescripcion
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'C'#243'digo/Centro Costo:'
            Control = sIdFolio
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem18: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Fecha Inicial:'
            Control = dFechaInicio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem19: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Fecha Termino:'
            Control = dFechaFin
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Titulo:'
            Control = edtDescripcionCorta
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem34: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Comentarios:'
            Control = cxComentarios
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Estatus:'
            Control = cIdStatus
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutItem17: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'Ordenar:'
            Control = iOrden
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem16: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Clasificaci'#243'n:'
            Control = cxTipoProyecto
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox2'
            CaptionOptions.Visible = False
            Control = cxGroupBox2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Moneda:'
            Control = lcbMonedas
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            CaptionOptions.Text = 'Usuario Centro Costo:'
            Visible = False
            Control = cxUsuario
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Planta:'
            Control = cxPlanta
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            LayoutDirection = ldHorizontal
            Index = 6
            AutoCreated = True
          end
        end
      end
      object pnlBtn2: TPanel
        Left = 1
        Top = 491
        Width = 1087
        Height = 36
        Align = alBottom
        TabOrder = 3
        inline frmBarraH21: TfrmBarraH2
          Left = 897
          Top = 1
          Width = 189
          Height = 34
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 897
          ExplicitTop = 1
          ExplicitWidth = 189
          ExplicitHeight = 34
          inherited Panel1: TPanel
            Left = 13
            Width = 176
            Height = 34
            Align = alRight
            Alignment = taRightJustify
            AutoSize = True
            ExplicitLeft = 13
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
    end
    object PanelDetalle: TPanel
      Left = 1096
      Top = 1
      Width = 144
      Height = 528
      Align = alRight
      TabOrder = 1
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 142
        Height = 526
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 36
          Width = 140
          Height = 454
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = cxTabSheet3
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          ClientRectBottom = 452
          ClientRectLeft = 2
          ClientRectRight = 138
          ClientRectTop = 30
          object cxTabSheet3: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 210
              Width = 136
              Height = 212
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 134
                Height = 210
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object cxGrid1DBChartView1: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'Periodo'
                  Categories.DisplayText = 'Periodo'
                  DiagramColumn.Active = True
                  Title.Text = 'Gr'#225'fica de Movimientos Salidas'
                  object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
                    DataBinding.FieldName = 'TotalSalida'
                    DisplayText = 'Total Mantenimientos'
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBChartView1
                end
              end
            end
            object cxSplitInforme: TcxSplitter
              Left = 0
              Top = 204
              Width = 136
              Height = 6
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 136
              Height = 204
              Align = alTop
              TabOrder = 2
              object dxLayoutControl2: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 128
                Height = 196
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object opcionImprimir: TcxRadioGroup
                  Left = 11
                  Top = 11
                  Caption = 'Tipo de Informe'
                  ParentFont = False
                  Properties.Items = <
                    item
                      Caption = 'Imprimir datos filtrados'
                      Value = '1'
                    end>
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Height = 105
                  Width = 495
                end
                object btnImpInforme: TcxButton
                  Left = 11
                  Top = 122
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
                object dxLayoutItem21: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  CaptionOptions.Text = 'cxRadioGroup1'
                  CaptionOptions.Visible = False
                  Control = opcionImprimir
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem22: TdxLayoutItem
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
          Width = 140
          Height = 35
          Align = alTop
          TabOrder = 1
          DesignSize = (
            140
            35)
          object cxNuevoDetalle: TcxButton
            Left = -38
            Top = 3
            Width = 81
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Nuevo'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxEditaDetalle: TcxButton
            Left = 49
            Top = 3
            Width = 81
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Editar'
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            Visible = False
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
            Caption = 'Informes'
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
          Top = 490
          Width = 140
          Height = 35
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            140
            35)
          object cxCancelarDetalle: TcxButton
            Left = 55
            Top = 3
            Width = 84
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'Cancelar'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxGuardarDetalle: TcxButton
            Left = -38
            Top = 3
            Width = 87
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'Guardar'
            OptionsImage.ImageIndex = 2
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            Visible = False
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
    object cxSplitterOpciones: TcxSplitter
      Left = 1090
      Top = 1
      Width = 6
      Height = 528
      AlignSplitter = salRight
    end
  end
  object ds_estatus: TDataSource
    AutoEdit = False
    DataSet = Estatus
    Left = 1096
    Top = 211
  end
  object ds_tiposdeorden: TDataSource
    AutoEdit = False
    DataSet = TiposdeOrden
    Left = 1112
    Top = 258
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = OrdenesdeTrabajo
    Left = 332
    Top = 96
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
      OnClick = Editar1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Activo1: TMenuItem
      Tag = 1
      Caption = '&Activo'
      ShortCut = 16456
      OnClick = Activo1Click
    end
    object Inactivo1: TMenuItem
      Tag = 1
      Caption = '&Inactivo'
      ShortCut = 16462
      OnClick = Inactivo1Click
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
    object N3: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
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
  object ds_Plataformas: TDataSource
    AutoEdit = False
    DataSet = Plataformas
    Left = 1168
    Top = 99
  end
  object ds_Pernoctan: TDataSource
    AutoEdit = False
    DataSet = pernoctan
    Left = 1128
    Top = 299
  end
  object ds_convenios: TDataSource
    AutoEdit = False
    DataSet = zConvenios
    Left = 968
    Top = 66
  end
  object OrdenesdeTrabajo: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 242
    Top = 96
    object OrdenesdeTrabajosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object OrdenesdeTrabajosIdFolio: TStringField
      FieldName = 'sIdFolio'
      Required = True
      Size = 80
    end
    object OrdenesdeTrabajosNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object OrdenesdeTrabajosOficioAutorizacion: TStringField
      FieldName = 'sOficioAutorizacion'
      Required = True
      Size = 50
    end
    object OrdenesdeTrabajosDescripcionCorta: TStringField
      FieldName = 'sDescripcionCorta'
      Size = 150
    end
    object OrdenesdeTrabajomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object OrdenesdeTrabajosIdPlataforma: TStringField
      FieldName = 'sIdPlataforma'
      Size = 30
    end
    object OrdenesdeTrabajosIdPernocta: TStringField
      FieldName = 'sIdPernocta'
      Required = True
      Size = 10
    end
    object OrdenesdeTrabajosIdPlataforma_nota: TStringField
      FieldName = 'sIdPlataforma_nota'
      Size = 50
    end
    object OrdenesdeTrabajodFiProgramado: TDateField
      FieldName = 'dFiProgramado'
      Required = True
    end
    object OrdenesdeTrabajodFfProgramado: TDateField
      FieldName = 'dFfProgramado'
      Required = True
    end
    object OrdenesdeTrabajocIdStatus: TStringField
      FieldName = 'cIdStatus'
      Required = True
      FixedChar = True
      Size = 2
    end
    object OrdenesdeTrabajomComentarios: TMemoField
      FieldName = 'mComentarios'
      BlobType = ftMemo
    end
    object OrdenesdeTrabajosFormato: TStringField
      FieldName = 'sFormato'
      Required = True
      Size = 30
    end
    object OrdenesdeTrabajoiConsecutivo: TIntegerField
      FieldName = 'iConsecutivo'
      Required = True
    end
    object OrdenesdeTrabajoiConsecutivoTierra: TIntegerField
      FieldName = 'iConsecutivoTierra'
      Required = True
    end
    object OrdenesdeTrabajoiJornadas: TIntegerField
      FieldName = 'iJornadas'
    end
    object OrdenesdeTrabajoiOrden: TIntegerField
      FieldName = 'iOrden'
      Required = True
    end
    object OrdenesdeTrabajosCsu: TStringField
      FieldName = 'sCsu'
      Size = 11
    end
    object OrdenesdeTrabajosUbicacion: TStringField
      FieldName = 'sUbicacion'
      Size = 50
    end
    object OrdenesdeTrabajolAplicaJornada: TStringField
      FieldName = 'lAplicaJornada'
      FixedChar = True
      Size = 2
    end
    object OrdenesdeTrabajosIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Size = 5
    end
    object OrdenesdeTrabajoTipoProyecto: TStringField
      FieldName = 'TipoProyecto'
      FixedChar = True
      Size = 11
    end
    object OrdenesdeTrabajoNombreResponsable: TStringField
      FieldName = 'NombreResponsable'
      Size = 150
    end
    object OrdenesdeTrabajoIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
    end
    object OrdenesdeTrabajoIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object OrdenesdeTrabajoMargenContribucion: TFloatField
      FieldName = 'MargenContribucion'
    end
    object OrdenesdeTrabajoCostoFijo: TFloatField
      FieldName = 'CostoFijo'
    end
    object OrdenesdeTrabajoFinanciamiento: TFloatField
      FieldName = 'Financiamiento'
    end
    object OrdenesdeTrabajoPTU_AntesImpuesto: TFloatField
      FieldName = 'PTU_AntesImpuesto'
    end
    object OrdenesdeTrabajoPTU_ISR: TFloatField
      FieldName = 'PTU_ISR'
    end
    object OrdenesdeTrabajoPTU_Neto: TFloatField
      FieldName = 'PTU_Neto'
    end
    object OrdenesdeTrabajoIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object OrdenesdeTrabajosIdUsuario: TStringField
      FieldName = 'sIdUsuario'
      Size = 10
    end
    object OrdenesdeTrabajosEstatus: TStringField
      FieldName = 'sStatus'
      FixedChar = True
      Size = 10
    end
    object OrdenesdeTrabajoAutorizaPresupuesto: TStringField
      FieldName = 'AutorizaPresupuesto'
      Size = 10
    end
    object OrdenesdeTrabajoIdPersonalResponsable: TIntegerField
      FieldName = 'IdPersonalResponsable'
    end
    object OrdenesdeTrabajoSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 80
    end
    object OrdenesdeTrabajoPuestoSolicitante: TStringField
      FieldName = 'PuestoSolicitante'
      Size = 100
    end
    object OrdenesdeTrabajosDossierEntregado: TStringField
      FieldName = 'sDossierEntregado'
      FixedChar = True
      Size = 9
    end
    object OrdenesdeTrabajosEstatusAdmin: TIntegerField
      FieldName = 'sEstatusAdmin'
    end
    object OrdenesdeTrabajosIdEmbarcacion: TIntegerField
      FieldName = 'sIdEmbarcacion'
    end
    object OrdenesdeTrabajosPO: TStringField
      FieldName = 'sPO'
      Size = 50
    end
    object OrdenesdeTrabajoEstatus: TStringField
      FieldName = 'Estatus'
      ReadOnly = True
      Size = 50
    end
    object OrdenesdeTrabajoCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 150
    end
    object OrdenesdeTrabajoEmbarcaciones: TStringField
      FieldName = 'Embarcaciones'
      ReadOnly = True
      Size = 100
    end
    object OrdenesdeTrabajoEstatusAdmin: TStringField
      FieldName = 'EstatusAdmin'
      ReadOnly = True
      Size = 50
    end
    object OrdenesdeTrabajoTotalCosto: TFloatField
      FieldName = 'TotalCosto'
      ReadOnly = True
    end
    object OrdenesdeTrabajoTotalPrecio: TFloatField
      FieldName = 'TotalPrecio'
      ReadOnly = True
    end
    object OrdenesdeTrabajoNombreCompleto: TStringField
      FieldName = 'NombreCompleto'
      ReadOnly = True
      Size = 242
    end
    object OrdenesdeTrabajocMonto: TFloatField
      FieldName = 'cMonto'
    end
    object OrdenesdeTrabajoIdPlanta: TIntegerField
      FieldName = 'IdPlanta'
    end
    object OrdenesdeTrabajoPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
  end
  object zPuestos: TUniQuery
    Connection = connection.Uconnection
    Left = 627
    Top = 61
  end
  object dsPuestos: TDataSource
    DataSet = zPuestos
    Left = 587
    Top = 101
  end
  object Plataformas: TUniQuery
    Connection = connection.Uconnection
    Left = 1167
    Top = 154
    object PlataformassIdPlataforma: TStringField
      FieldName = 'sIdPlataforma'
      Required = True
      Size = 50
    end
    object PlataformassDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
  end
  object pernoctan: TUniQuery
    Connection = connection.Uconnection
    Left = 1183
    Top = 306
    object pernoctansIdPernocta: TStringField
      FieldName = 'sIdPernocta'
      Required = True
      Size = 10
    end
    object pernoctansDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
  end
  object Estatus: TUniQuery
    Connection = connection.Uconnection
    Left = 1097
    Top = 148
    object EstatuscIdStatus: TStringField
      FieldName = 'cIdStatus'
      Required = True
      FixedChar = True
      Size = 1
    end
    object EstatussDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
  end
  object TiposdeOrden: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from tiposdeorden order by sIdTipoOrden')
    Left = 1097
    Top = 92
    object TiposdeOrdensIdTipoOrden: TStringField
      FieldName = 'sIdTipoOrden'
      Required = True
      Size = 4
    end
    object TiposdeOrdensDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
  end
  object zConvenios: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from convenios where sContrato =:Contrato')
    Left = 905
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end>
    object zConveniossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object zConveniossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object zConveniossIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object zConveniossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 30
    end
    object zConveniosdFecha: TDateField
      FieldName = 'dFecha'
      Required = True
    end
    object zConveniosdFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object zConveniosdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object zConveniosdDuracion: TFloatField
      FieldName = 'dDuracion'
      Required = True
    end
    object zConveniosiNumeroGerencial_inicio: TIntegerField
      FieldName = 'iNumeroGerencial_inicio'
      Required = True
    end
    object zConveniosiNumeroGerencial_termino: TIntegerField
      FieldName = 'iNumeroGerencial_termino'
      Required = True
    end
    object zConveniosiGerencialFinal: TIntegerField
      FieldName = 'iGerencialFinal'
    end
    object zConveniossHorarioInicio: TStringField
      FieldName = 'sHorarioInicio'
      Size = 10
    end
    object zConveniosiGerencialInicio: TIntegerField
      FieldName = 'iGerencialInicio'
    end
    object zConveniossHorarioFinal: TStringField
      FieldName = 'sHorarioFinal'
      Size = 10
    end
    object zConvenioslAvanceFisico: TStringField
      FieldName = 'lAvanceFisico'
      Required = True
      FixedChar = True
      Size = 5
    end
    object zConvenioslAplicaPeriodo: TStringField
      FieldName = 'lAplicaPeriodo'
      FixedChar = True
      Size = 2
    end
    object zConveniosdFechaPeriodo_Inicio: TDateField
      FieldName = 'dFechaPeriodo_Inicio'
    end
    object zConveniosdFechaPeriodo_Fin: TDateField
      FieldName = 'dFechaPeriodo_Fin'
    end
    object zConveniosdMontoMN: TFloatField
      FieldName = 'dMontoMN'
      Required = True
    end
    object zConveniosdMontoDLL: TFloatField
      FieldName = 'dMontoDLL'
      Required = True
    end
    object zConveniossAnexo: TStringField
      FieldName = 'sAnexo'
      Required = True
      Size = 5
    end
    object zConveniosmComentarios: TMemoField
      FieldName = 'mComentarios'
      BlobType = ftMemo
    end
  end
  object dsMoneda: TDataSource
    DataSet = zMoneda
    Left = 465
    Top = 95
  end
  object zMoneda: TUniQuery
    Connection = connection.Uconnection
    Left = 529
    Top = 87
  end
  object zClientes: TUniQuery
    Connection = connection.Uconnection
    Left = 1187
    Top = 352
  end
  object dsClientes: TDataSource
    DataSet = zClientes
    Left = 1083
    Top = 304
  end
  object uPersonal: TUniQuery
    Connection = connection.Uconnection
    Left = 1092
    Top = 401
  end
  object ds_personal: TDataSource
    DataSet = uPersonal
    Left = 1140
    Top = 353
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 1168
    Top = 192
  end
  object ds_embarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 1096
    Top = 344
  end
  object estatus_admin: TUniQuery
    Connection = connection.Uconnection
    Left = 1144
    Top = 392
  end
  object ds_estatusAdmin: TDataSource
    DataSet = estatus_admin
    Left = 1192
    Top = 392
  end
  object frxProyecto: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43396.478926504630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '        '
      'procedure Memo51OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <Db_proyecto."cIdStatus"> = '#39'A'#39' then'
      '  begin'
      '     memo48.Color := $00FFBFD5;'
      '     memo20.Color := $00FFBFD5;'
      '     memo51.Color := $00FFBFD5;'
      '     memo22.Color := $00FFBFD5;'
      '     memo1.Color := $00FFBFD5;'
      '     memo2.Color := $00FFBFD5;'
      '     memo3.Color := $00FFBFD5;'
      '     memo4.Color := $00FFBFD5;'
      '     memo5.Color := $00FFBFD5;         '
      '  end'
      '  else'
      '  begin'
      '       memo48.Color := clWhite;'
      '       memo20.Color := clWhite;'
      '       memo51.Color := clWhite;'
      '       memo22.Color := clWhite;'
      '       memo1.Color := clWhite;'
      '       memo2.Color := clWhite ;'
      '       memo3.Color := clWhite;'
      '       memo4.Color := clWhite;'
      '       memo5.Color := clWhite;  '
      '  end;            '
      'end;'
      ''
      'Begin'
      ''
      'End.')
    OnReportPrint = 'no '
    Left = 923
    Top = 134
    Datasets = <
      item
        DataSet = ds_proyectos
        DataSetName = 'DB_Proyecto'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clNavy
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 223.000000000000000000
      Left = 613.000000000000000000
      Top = 186.000000000000000000
      Width = 336.000000000000000000
    end
    object ProgramaMantenimiento: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 192.756030000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        Condition = 'DB_proyecto."sContrato"'
        ReprintOnNewPage = True
        object Memo156: TfrxMemoView
          ShiftMode = smDontShift
          Left = 831.496065430000000000
          Width = 148.157463230000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'Comentarios')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          ShiftMode = smDontShift
          Left = 726.047231890000000000
          Width = 105.826827800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'Estatus Administrativo')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          ShiftMode = smDontShift
          Left = 623.244094490000000000
          Width = 102.803149610000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'Responsable')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          ShiftMode = smDontShift
          Left = 441.070866140000000000
          Width = 182.173228346457000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n del Proyecto')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          ShiftMode = smDontShift
          Left = 342.803149606299000000
          Width = 98.267767800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'Embarcaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          ShiftMode = smDontShift
          Left = 129.259842520000000000
          Width = 80.503937007874000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'PO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          ShiftMode = smDontShift
          Left = 30.236240000000000000
          Width = 99.023553700000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'No. PROY')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          ShiftMode = smDontShift
          Width = 30.236220470000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'PDA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Left = 209.763767320000000000
          Width = 133.039323700000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'Periodo')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 260.787570000000000000
        Width = 980.410081999999900000
        DataSet = ds_proyectos
        DataSetName = 'DB_Proyecto'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 129.259842520000000000
          Width = 80.503937010000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[Db_proyecto."sPo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          ShiftMode = smDontShift
          Width = 30.236215590000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          ShiftMode = smDontShift
          Left = 30.236240000000000000
          Width = 99.023553700000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo51OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Db_proyecto."sIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Left = 209.763767320000000000
          Width = 133.039370080000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            
              '[<Db_proyecto."dFIProgramado"> ] al [<Db_proyecto."dFfProgramado' +
              '"> ]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 342.803149610000000000
          Width = 98.267716540000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = ds_proyectos
          DataSetName = 'DB_Proyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[DB_proyecto."Embarcaciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 441.070866140000000000
          Width = 182.173304020000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[DB_proyecto."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 623.244094490000000000
          Width = 102.803174020000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = ds_proyectos
          DataSetName = 'DB_Proyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[DB_proyecto."NombreCompleto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 726.047244090000000000
          Width = 105.826771650000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = ds_proyectos
          DataSetName = 'DB_Proyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[DB_proyecto."EstatusAdmin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 831.496062990000000000
          Width = 148.157480314960600000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[Db_proyecto."sComentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 306.141930000000000000
        Width = 980.410081999999900000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 0.755890870000000000
        Top = 238.110390000000000000
        Width = 980.410081999999900000
        Condition = 'DB_proyecto."sContrato"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 0.755905510000000000
        Top = 374.173470000000000000
        Width = 980.410081999999900000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Memo23: TfrxMemoView
          Left = 235.086614170000000000
          Top = 34.015748030000000000
          Width = 376.062228110000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTROL DE PROYECTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo472: TfrxMemoView
          Left = 611.325403110000000000
          Width = 104.798942380000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Clave: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo474: TfrxMemoView
          Left = 611.325403110000000000
          Top = 34.015755350000000000
          Width = 104.798942380000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Emisi'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo476: TfrxMemoView
          Left = 611.325403110000000000
          Top = 68.031510710000000000
          Width = 104.692913390000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Width = 235.086614170000000000
          Height = 102.047266060000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo119: TfrxMemoView
          Left = 235.086614170000000000
          Width = 376.062228110000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 715.842519690000000000
          Top = 34.015755350000000000
          Width = 263.433070870000000000
          Height = 34.015748030000000000
          DisplayFormat.FormatStr = 'mmmm-yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 715.890230000000000000
          Top = 68.031510710000000000
          Width = 263.433070870000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo122: TfrxMemoView
          Left = 715.890230000000000000
          Width = 150.153302380000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FOR-SIG-76')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 866.512370000000000000
          Width = 70.783172380000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Rev.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 937.322834645669400000
          Width = 41.952765670000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 235.086614170000000000
          Top = 68.031540000000010000
          Width = 376.062228110000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA INTEGRADO DE GESTI'#211'N')
          ParentFont = False
        end
      end
    end
  end
  object ds_proyectos: TfrxDBDataset
    UserName = 'DB_Proyecto'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 1003
    Top = 142
  end
  object Reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 1168
    Top = 256
  end
  object ds_monto: TDataSource
    DataSet = zMonto
    Left = 808
    Top = 96
  end
  object zMonto: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    AfterInsert = zMontoAfterInsert
    Left = 744
    Top = 104
  end
  object dsUsuario: TDataSource
    DataSet = zUsuario
    Left = 465
    Top = 143
  end
  object zUsuario: TUniQuery
    Connection = connection.Uconnection
    Left = 529
    Top = 135
  end
  object zqPlanta: TUniQuery
    Connection = connection.Uconnection
    Left = 746
    Top = 157
  end
  object dsPlanta: TDataSource
    DataSet = zqPlanta
    Left = 698
    Top = 117
  end
end
