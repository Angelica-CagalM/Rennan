object frmPresupuesto: TfrmPresupuesto
  Left = 195
  Top = 166
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Presupuesto'
  ClientHeight = 557
  ClientWidth = 1256
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
    Width = 1256
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1256
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 693
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 693
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
      Caption = 'Listado de Presupuesto'
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
      Width = 215
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 35
    Width = 1256
    Height = 522
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 696
      Height = 520
      Align = alClient
      TabOrder = 0
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 136
        Width = 694
        Height = 8
        AlignSplitter = salBottom
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 694
        Height = 135
        Align = alClient
        TabOrder = 1
        object grid_ordenes: TcxGrid
          Left = 1
          Top = 1
          Width = 692
          Height = 133
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
            OnFocusedRecordChanged = cxVistaOrdenesFocusedRecordChanged
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
              Caption = 'Folio/Proyecto'
              DataBinding.FieldName = 'sIdFolio'
              Width = 69
            end
            object cxVistaOrdenesPO: TcxGridDBColumn
              Caption = 'PO'
              DataBinding.FieldName = 'sPO'
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
              Width = 46
            end
            object cxVistaOrdenesColumnDes: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'mDescripcion'
            end
            object cxVistaOrdenesResponsable: TcxGridDBColumn
              Caption = 'Responsable'
              DataBinding.FieldName = 'NombreCompleto'
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
              Caption = 'Estatus Operacion'
              DataBinding.FieldName = 'Estatus'
              Width = 97
            end
            object cxVistaOrdenesColumn1: TcxGridDBColumn
              Caption = 'Estatus Admin'
              DataBinding.FieldName = 'EstatusAdmin'
              Width = 97
            end
            object colStatus: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'sStatus'
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
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
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
        Top = 144
        Width = 694
        Height = 340
        Align = alBottom
        TabOrder = 2
        object layout: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 692
          Height = 338
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
            Left = 41
            Top = 11
            DataBinding.DataField = 'sNumeroOrden'
            DataBinding.DataSource = ds_ordenesdetrabajo
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
            Width = 40
          end
          object mDescripcion: TcxDBMemo
            Left = 41
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
          object sIdPlataforma: TcxDBLookupComboBox
            Left = 41
            Top = 148
            DataBinding.DataField = 'sIdPlataforma'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'sIdPlataforma'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = ds_Plataformas
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
            Width = 70
          end
          object sIdFolio: TcxDBTextEdit
            Left = 173
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
          object btnPlataformas: TcxButton
            Left = 161
            Top = 148
            Width = 25
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
            TabOrder = 9
            OnClick = btnPlataformasClick
          end
          object dFechaInicio: TcxDBDateEdit
            Left = 41
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
            Left = 406
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
            Left = 41
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
            TabOrder = 4
            OnEnter = EnterControl
            OnExit = edtDescripcionCortaExit
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object sIdPernocta: TcxDBLookupComboBox
            Left = 284
            Top = 148
            DataBinding.DataField = 'sIdPernocta'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'sIdPernocta'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = ds_Pernoctan
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
            Width = 70
          end
          object btnPernocta: TcxButton
            Left = 406
            Top = 148
            Width = 25
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
            TabOrder = 11
            OnClick = btnPernoctaClick
          end
          object sEstatusAdmin: TcxDBLookupComboBox
            Left = 156
            Top = 241
            DataBinding.DataField = 'sEstatusAdmin'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'IdEstatusAdmin'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = ds_estatusAdmin
            Properties.OnChange = sEstatusAdminPropertiesChange
            Properties.OnEditValueChanged = sEstatusAdminPropertiesEditValueChanged
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 23
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 100
          end
          object sIdEmbarcacion: TcxDBLookupComboBox
            Left = 519
            Top = 148
            DataBinding.DataField = 'sIdEmbarcacion'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'IdEmbarcacion'
            Properties.ListColumns = <
              item
                FieldName = 'Embarcacion'
              end>
            Properties.ListSource = ds_embarcacion
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
            Width = 70
          end
          object cxButton1: TcxButton
            Left = 639
            Top = 148
            Width = 25
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
            TabOrder = 13
            OnClick = cxButton1Click
          end
          object cxComentarios: TcxDBMemo
            Left = 41
            Top = 270
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
            TabOrder = 27
            OnEnter = EnterControl
            OnExit = SalidaControl
            Height = 45
            Width = 233
          end
          object lcbClientes: TcxDBLookupComboBox
            Left = 41
            Top = 179
            DataBinding.DataField = 'IdCliente'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'IdCliente'
            Properties.ListColumns = <
              item
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
            TabOrder = 14
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 89
          end
          object cxButton2: TcxButton
            Left = 148
            Top = 179
            Width = 25
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
            TabOrder = 15
            OnClick = cxButton2Click
          end
          object edtSolicitante: TcxDBTextEdit
            Left = 41
            Top = 210
            DataBinding.DataField = 'Solicitante'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 18
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 20
          end
          object cmbLookResponsable: TcxDBLookupComboBox
            Left = 445
            Top = 210
            DataBinding.DataField = 'IdPersonalResponsable'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'IdPersonal'
            Properties.ListColumns = <
              item
                Caption = 'Listado de Personal'
                FieldName = 'NombreCompleto'
              end>
            Properties.ListSource = ds_personal
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 20
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 145
          end
          object edtPuestoSolicitante: TcxDBTextEdit
            Left = 194
            Top = 210
            DataBinding.DataField = 'PuestoSolicitante'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 19
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object cIdStatus: TcxDBLookupComboBox
            Left = 307
            Top = 179
            DataBinding.DataField = 'cIdStatus'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'cIdStatus'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = ds_estatus
            Properties.OnChange = cIdStatusPropertiesChange
            Properties.OnEditValueChanged = cIdStatusPropertiesEditValueChanged
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 16
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 66
          end
          object sUbicacion: TcxDBTextEdit
            Left = 454
            Top = 241
            DataBinding.DataField = 'sUbicacion'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 25
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 95
          end
          object lcbPuesto: TcxDBLookupComboBox
            Left = 41
            Top = 241
            DataBinding.DataField = 'IdPuesto'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.KeyFieldNames = 'IdPuesto'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsPuestos
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 22
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 145
          end
          object sPO: TcxDBTextEdit
            Left = 363
            Top = 11
            DataBinding.DataField = 'sPO'
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
            Width = 121
          end
          object iOrden: TcxDBTextEdit
            Left = 617
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
            TabOrder = 3
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 47
          end
          object cxDBComboBox1: TcxDBComboBox
            Left = 533
            Top = 241
            DataBinding.DataField = 'sDossierEntregado'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Properties.Items.Strings = (
              'ENTREGADO'
              'N/A'
              'PENDIENTE')
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 26
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 131
          end
          object FechaEstatusOpe: TcxDBDateEdit
            Left = 533
            Top = 179
            DataBinding.DataField = 'FechaEstatusOperacion'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 17
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 131
          end
          object FechaEstatusAdm: TcxDBDateEdit
            Left = 315
            Top = 241
            DataBinding.DataField = 'FechaEstatusAdmin'
            DataBinding.DataSource = ds_ordenesdetrabajo
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 24
            Width = 121
          end
          object btnEmpleado: TcxButton
            Left = 639
            Top = 210
            Width = 25
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
            TabOrder = 21
            OnClick = btnEmpleadoClick
          end
          object layoutGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'C'#243'digo:'
            Visible = False
            Control = sNumeroOrden
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Descripci'#243'n:'
            Visible = False
            Control = mDescripcion
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Sitio Trabajo:'
            Control = sIdPlataforma
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Folio/Proyecto:'
            Control = sIdFolio
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 4
            AutoCreated = True
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Visible = False
            Control = btnPlataformas
            ControlOptions.ShowBorder = False
            Index = 1
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
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Titulo:'
            Control = edtDescripcionCorta
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Sitio Pernoctan:'
            Control = sIdPernocta
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem15: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btnPernocta
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem35: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Estatus Admin:'
            Control = sEstatusAdmin
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem32: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Embarcaci'#243'n:'
            Control = sIdEmbarcacion
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutItem33: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutItem34: TdxLayoutItem
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Comentarios:'
            Control = cxComentarios
            ControlOptions.ShowBorder = False
            Index = 8
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Cliente:'
            Control = lcbClientes
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem37: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'cxButton2'
            CaptionOptions.Visible = False
            Control = cxButton2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 5
            AutoCreated = True
          end
          object dxLayoutItem20: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Solicitante:'
            Control = edtSolicitante
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem24: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Responsable'
            Control = cmbLookResponsable
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 6
            AutoCreated = True
          end
          object dxLayoutItem31: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Puesto Solicitante:'
            Control = edtPuestoSolicitante
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Estatus de Operaci'#243'n:'
            Control = cIdStatus
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Ubicaci'#243'n: / Unidad'
            Control = sUbicacion
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = layoutGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 7
            AutoCreated = True
          end
          object dxLayoutItem23: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Puesto'
            Control = lcbPuesto
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem39: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'PO:'
            Control = sPO
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem17: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'Ordenar:'
            Control = iOrden
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem36: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Dossier:'
            Control = cxDBComboBox1
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignVert = avClient
            CaptionOptions.Text = 'Fecha de Estatus de Op:'
            Control = FechaEstatusOpe
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Fecha de Estatus Adm:'
            Control = FechaEstatusAdm
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem13: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignVert = avClient
            CaptionOptions.Visible = False
            Control = btnEmpleado
            ControlOptions.ShowBorder = False
            Index = 3
          end
        end
      end
      object pnlBtn2: TPanel
        Left = 1
        Top = 484
        Width = 694
        Height = 35
        Align = alBottom
        TabOrder = 3
        inline frmBarraH21: TfrmBarraH2
          Left = 504
          Top = 1
          Width = 189
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 504
          ExplicitTop = 1
          ExplicitWidth = 189
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Width = 189
            Height = 33
            ExplicitWidth = 189
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              Left = 14
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnPostClick
              ExplicitLeft = 14
              ExplicitTop = 1
              ExplicitHeight = 31
            end
            inherited btnCancel: TcxButton
              Left = 101
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnCancelClick
              ExplicitLeft = 101
              ExplicitTop = 1
              ExplicitHeight = 31
            end
          end
        end
      end
    end
    object PanelDetalle: TPanel
      Left = 703
      Top = 1
      Width = 552
      Height = 520
      Align = alRight
      TabOrder = 1
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 550
        Height = 518
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 36
          Width = 548
          Height = 446
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
          OnClick = cxPageDetalleClick
          ClientRectBottom = 444
          ClientRectLeft = 2
          ClientRectRight = 546
          ClientRectTop = 30
          object cxTabSheet3: TcxTabSheet
            Caption = 'Margen y Utilidad'
            ImageIndex = 27
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 544
              Height = 414
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxGroupBox1: TcxGroupBox
                Left = 11
                Top = 11
                Caption = 'Margen y Utilidad'
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
                TabOrder = 0
                Height = 318
                Width = 514
                object dxLayoutControl4: TdxLayoutControl
                  AlignWithMargins = True
                  Left = 6
                  Top = 19
                  Width = 502
                  Height = 286
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  object crrMargenContribucion: TcxDBCurrencyEdit
                    Left = 149
                    Top = 39
                    DataBinding.DataField = 'MargenContribucionM'
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
                    Width = 276
                  end
                  object crrPTU_Neto: TcxDBCurrencyEdit
                    Left = 149
                    Top = 180
                    DataBinding.DataField = 'PTUNet'
                    DataBinding.DataSource = ds_ordenesdetrabajo
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
                    Width = 84
                  end
                  object crrTotal: TcxDBCurrencyEdit
                    Left = 149
                    Top = 237
                    DataBinding.DataField = 'Total'
                    DataBinding.DataSource = ds_ordenesdetrabajo
                    Enabled = False
                    ParentFont = False
                    Style.Color = clWindow
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    StyleDisabled.BorderColor = clWindowFrame
                    StyleDisabled.Color = clWindow
                    StyleDisabled.TextColor = clWindowText
                    TabOrder = 10
                    Width = 117
                  end
                  object cxDBCurrencyEdit4: TcxDBCurrencyEdit
                    Left = 371
                    Top = 238
                    DataBinding.DataField = 'TotalPrecio'
                    DataBinding.DataSource = ds_ordenesdetrabajo
                    Enabled = False
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    StyleDisabled.BorderColor = clWindowFrame
                    StyleDisabled.Color = clWindow
                    StyleDisabled.TextColor = clWindowText
                    TabOrder = 12
                    Width = 117
                  end
                  object crrIVAP: TcxDBCurrencyEdit
                    Left = 149
                    Top = 209
                    DataBinding.DataField = 'IVAP'
                    DataBinding.DataSource = ds_ordenesdetrabajo
                    ParentFont = False
                    Properties.DisplayFormat = ',0.00,%;-,0.00,%'
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
                    Width = 140
                  end
                  object lcbMonedas: TcxDBLookupComboBox
                    Left = 149
                    Top = 10
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
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 0
                    OnEnter = EnterControl
                    OnExit = SalidaControl
                    OnKeyUp = GlobalKeyUp
                    Width = 340
                  end
                  object crrFinanciamientoM: TcxDBCurrencyEdit
                    Left = 149
                    Top = 95
                    DataBinding.DataField = 'CostoAdicional'
                    DataBinding.DataSource = ds_ordenesdetrabajo
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
                    Width = 117
                  end
                  object crrIVAM: TcxDBCurrencyEdit
                    Left = 365
                    Top = 209
                    DataBinding.DataField = 'IVA'
                    DataBinding.DataSource = ds_ordenesdetrabajo
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
                    Width = 124
                  end
                  object crrPTU_ISR: TcxDBCurrencyEdit
                    Left = 365
                    Top = 153
                    DataBinding.DataField = 'ISR'
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
                    Width = 124
                  end
                  object crrCostoFijoM: TcxDBCurrencyEdit
                    Left = 372
                    Top = 66
                    DataBinding.DataField = 'CostoFijoM'
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
                    Width = 117
                  end
                  object crrCostoFijoP: TcxDBCurrencyEdit
                    Left = 149
                    Top = 66
                    DataBinding.DataField = 'CostoFijoP'
                    DataBinding.DataSource = ds_ordenesdetrabajo
                    ParentFont = False
                    Properties.DisplayFormat = ',0.00,%;-,0.00,%'
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
                    Width = 144
                  end
                  object crrPTU_ISRP: TcxDBCurrencyEdit
                    Left = 149
                    Top = 153
                    DataBinding.DataField = 'PTUP'
                    DataBinding.DataSource = ds_ordenesdetrabajo
                    ParentFont = False
                    Properties.DisplayFormat = ',0.00,%;-,0.00,%'
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
                    Width = 66
                  end
                  object crrPTU_antesImp: TcxDBCurrencyEdit
                    Left = 149
                    Top = 124
                    DataBinding.DataField = 'PTUAImpuesto'
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
                    OnEnter = EnterControl
                    OnExit = SalidaControl
                    OnKeyUp = GlobalKeyUp
                    Width = 116
                  end
                  object dxLayoutGroup1: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avTop
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem44: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Text = 'Margen de Contribuci'#243'n:'
                    Control = crrMargenContribucion
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem45: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'PTU Neto:'
                    Control = crrPTU_Neto
                    ControlOptions.ShowBorder = False
                    Index = 6
                  end
                  object dxLayoutItem46: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup15
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Text = 'Costo Total:'
                    Control = crrTotal
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 1
                  end
                  object dxLayoutItem47: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup16
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Text = 'Precio Total:'
                    Visible = False
                    Control = cxDBCurrencyEdit4
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup17
                    LayoutDirection = ldHorizontal
                    Index = 7
                    AutoCreated = True
                  end
                  object dxLayoutItem48: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup15
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Text = 'IVA %:'
                    Control = crrIVAP
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup14
                    AlignHorz = ahClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup14
                    AlignHorz = ahClient
                    Index = 1
                    AutoCreated = True
                  end
                  object dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup1
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem49: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Text = 'Moneda:'
                    Control = lcbMonedas
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem50: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Financiamiento $:'
                    Control = crrFinanciamientoM
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                  object dxLayoutItem51: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup16
                    AlignHorz = ahRight
                    AlignVert = avTop
                    CaptionOptions.Text = 'IVA $:'
                    Control = crrIVAM
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem52: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup19
                    AlignHorz = ahRight
                    AlignVert = avClient
                    CaptionOptions.Text = 'ISR de PTU $:'
                    Control = crrPTU_ISR
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem53: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup18
                    AlignHorz = ahRight
                    AlignVert = avTop
                    CaptionOptions.Text = 'Costo Fijo $:'
                    Control = crrCostoFijoM
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem54: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup18
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Text = 'Costo Fijo %:'
                    Control = crrCostoFijoP
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 2
                    AutoCreated = True
                  end
                  object dxLayoutItem55: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup19
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Text = 'ISR de PTU %:'
                    Control = crrPTU_ISRP
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignVert = avClient
                    LayoutDirection = ldHorizontal
                    Index = 5
                    AutoCreated = True
                  end
                  object dxLayoutItem56: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'PTU Antes Impuestos:'
                    Control = crrPTU_antesImp
                    ControlOptions.ShowBorder = False
                    Index = 4
                  end
                end
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem42: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                CaptionOptions.Visible = False
                Control = cxGroupBox1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
          object cxTabSheet1: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            object cxSplitInforme: TcxSplitter
              Left = 0
              Top = 204
              Width = 544
              Height = 6
              AlignSplitter = salTop
            end
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 210
              Width = 544
              Height = 204
              Align = alClient
              TabOrder = 1
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 542
                Height = 202
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
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 544
              Height = 204
              Align = alTop
              TabOrder = 2
              object dxLayoutControl2: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 536
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
                  Left = 380
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
          object cxTabSheet2: TcxTabSheet
            Caption = 'Documentos'
            ImageIndex = 69
            object cxGridDocumentos: TcxGrid
              Left = 0
              Top = 0
              Width = 544
              Height = 218
              Hint = 'Doble Clic para Visualizar el Archivo'
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxViewDocumento: TcxGridDBTableView
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
                FilterBox.Visible = fvNever
                DataController.DataSource = dsDocumento
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Filter.TranslateLike = True
                DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'USD   $ #,00.00'
                    Kind = skSum
                    FieldName = 'dMontoDLL'
                  end
                  item
                    Format = 'Total Folio'
                    Kind = skCount
                    DisplayText = 'Total Folio'
                  end
                  item
                    Format = 'MN   $ #,00.00'
                    Kind = skSum
                    FieldName = 'dMontoMN'
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object cxGridDBColumn8: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 128
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  Caption = 'Nombre Documento'
                  DataBinding.FieldName = 'NombreDocto'
                  Options.Editing = False
                  Width = 188
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  DataBinding.FieldName = 'Comentario'
                  Width = 214
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxViewDocumento
              end
            end
            object cxSplit4: TcxSplitter
              Left = 0
              Top = 218
              Width = 544
              Height = 8
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelDown4: TPanel
              Left = 0
              Top = 226
              Width = 544
              Height = 188
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl3: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 536
                Height = 180
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxCargarDocumento: TcxButton
                  Left = 391
                  Top = 135
                  Width = 134
                  Height = 25
                  Caption = 'Cargar PDF'
                  OptionsImage.ImageIndex = 26
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 2
                  OnClick = cxCargarDocumentoClick
                end
                object cxCodigo: TcxDBTextEdit
                  Left = 85
                  Top = 11
                  DataBinding.DataField = 'Codigo'
                  DataBinding.DataSource = dsDocumento
                  ParentFont = False
                  Properties.ReadOnly = True
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 121
                end
                object cxComentariosDocumento: TcxDBMemo
                  Left = 85
                  Top = 40
                  DataBinding.DataField = 'Comentario'
                  DataBinding.DataSource = dsDocumento
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Height = 89
                  Width = 185
                end
                object dxLayoutGroup2: TdxLayoutGroup
                  AlignHorz = ahParentManaged
                  AlignVert = avParentManaged
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem16: TdxLayoutItem
                  Parent = dxLayoutGroup2
                  AlignHorz = ahRight
                  CaptionOptions.Text = 'cxButton2'
                  CaptionOptions.Visible = False
                  Control = cxCargarDocumento
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutItem6: TdxLayoutItem
                  Parent = dxLayoutGroup2
                  CaptionOptions.Text = 'C'#243'digo:'
                  Control = cxCodigo
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem25: TdxLayoutItem
                  Parent = dxLayoutGroup2
                  CaptionOptions.Text = 'Comentario:'
                  Control = cxComentariosDocumento
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
          Width = 548
          Height = 35
          Align = alTop
          TabOrder = 1
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
          object PanelM: TPanel
            Left = 296
            Top = 1
            Width = 251
            Height = 33
            Align = alRight
            Caption = 'PanelM'
            TabOrder = 1
            object cxNuevoDetalle: TcxButton
              Tag = 10
              Left = 7
              Top = 1
              Width = 81
              Height = 31
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
              Tag = 11
              Left = 88
              Top = 1
              Width = 81
              Height = 31
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
            object btnEliminarDetalle: TcxButton
              Tag = 12
              Left = 169
              Top = 1
              Width = 81
              Height = 31
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
              OnClick = btnEliminarDetalleClick
            end
          end
        end
        object PanelDown: TPanel
          Left = 1
          Top = 482
          Width = 548
          Height = 35
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            548
            35)
          object cxCancelarDetalle: TcxButton
            Left = 463
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
            Left = 370
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
      Left = 697
      Top = 1
      Width = 6
      Height = 520
      AlignSplitter = salRight
    end
  end
  object ds_estatus: TDataSource
    AutoEdit = False
    DataSet = Estatus
    Left = 1096
    Top = 451
  end
  object ds_tiposdeorden: TDataSource
    AutoEdit = False
    DataSet = TiposdeOrden
    Left = 1120
    Top = 66
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
    Left = 744
    Top = 475
  end
  object ds_convenios: TDataSource
    AutoEdit = False
    DataSet = zConvenios
    Left = 1000
    Top = 65522
  end
  object OrdenesdeTrabajo: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 218
    Top = 88
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
    object OrdenesdeTrabajoMargenContribucionM: TFloatField
      FieldName = 'MargenContribucionM'
    end
    object OrdenesdeTrabajoCostoFijoP: TFloatField
      FieldName = 'CostoFijoP'
    end
    object OrdenesdeTrabajoCostoFijoM: TFloatField
      FieldName = 'CostoFijoM'
    end
    object OrdenesdeTrabajoCostoAdicional: TFloatField
      FieldName = 'CostoAdicional'
    end
    object OrdenesdeTrabajoPTUAImpuesto: TFloatField
      FieldName = 'PTUAImpuesto'
    end
    object OrdenesdeTrabajoPTUP: TFloatField
      FieldName = 'PTUP'
    end
    object OrdenesdeTrabajoISR: TFloatField
      FieldName = 'ISR'
    end
    object OrdenesdeTrabajoIVAP: TFloatField
      FieldName = 'IVAP'
    end
    object OrdenesdeTrabajoTotal: TFloatField
      FieldName = 'Total'
    end
    object OrdenesdeTrabajoIVA: TFloatField
      FieldName = 'IVA'
    end
    object OrdenesdeTrabajoPTUNet: TFloatField
      FieldName = 'PTUNet'
    end
    object OrdenesdeTrabajoFechaEstatusOperacion: TDateField
      FieldName = 'FechaEstatusOperacion'
    end
    object OrdenesdeTrabajoFechaEstatusAdmin: TDateField
      FieldName = 'FechaEstatusAdmin'
    end
    object OrdenesdeTrabajoPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
  end
  object zPuestos: TUniQuery
    Connection = connection.Uconnection
    Left = 611
    Top = 213
  end
  object dsPuestos: TDataSource
    DataSet = zPuestos
    Left = 555
    Top = 213
  end
  object Plataformas: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select sIdPlataforma, sDescripcion'
      'from plataformas'
      'where lStatus = '#39'Activa'#39
      'order by sDescripcion')
    Left = 1199
    Top = 98
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
    SQL.Strings = (
      
        'Select sIdPernocta, sDescripcion from pernoctan order by sDescri' +
        'pcion')
    Left = 1207
    Top = 330
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
    SQL.Strings = (
      '')
    Left = 713
    Top = 436
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
    Left = 1217
    Top = 212
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
    Left = 1001
    Top = 65526
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
    Left = 473
    Top = 151
  end
  object zMoneda: TUniQuery
    Connection = connection.Uconnection
    Left = 585
    Top = 207
  end
  object zClientes: TUniQuery
    Connection = connection.Uconnection
    Left = 1219
    Top = 384
  end
  object dsClientes: TDataSource
    DataSet = zClientes
    Left = 811
    Top = 472
  end
  object uPersonal: TUniQuery
    Connection = connection.Uconnection
    Left = 1124
    Top = 465
  end
  object ds_personal: TDataSource
    DataSet = uPersonal
    Left = 860
    Top = 489
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 920
    Top = 480
  end
  object ds_embarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 1080
    Top = 480
  end
  object estatus_admin: TUniQuery
    Connection = connection.Uconnection
    Left = 1032
    Top = 472
  end
  object ds_estatusAdmin: TDataSource
    DataSet = estatus_admin
    Left = 976
    Top = 480
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
    ReportOptions.LastChange = 43445.803015138890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo51OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <Db_proyecto."cIdStatus"> = '#39'A'#39' then'
      '  begin'
      '     memo48.Color := $00FEC6BA;'
      '     memo20.Color := $00FEC6BA;'
      '     memo51.Color := $00FEC6BA;'
      '     memo22.Color := $00FEC6BA;'
      '     memo1.Color :=  $00FEC6BA;'
      '     memo2.Color :=  $00FEC6BA;'
      '     memo3.Color := $00FEC6BA;'
      '     memo4.Color := $00FEC6BA;'
      '     memo5.Color :=  $00FEC6BA;'
      '  end'
      '  else'
      '   if <Db_proyecto."cIdStatus"> = '#39'C'#39' then'
      '  begin'
      '     memo48.Color := $00FEE7BA;'
      '     memo20.Color := $00FEE7BA;'
      '     memo51.Color := $00FEE7BA;'
      '     memo22.Color := $00FEE7BA;'
      '     memo1.Color := $00FEE7BA;'
      '     memo2.Color := $00FEE7BA;'
      '     memo3.Color := $00FEE7BA;'
      '     memo4.Color := $00FEE7BA;'
      '     memo5.Color := $00FEE7BA;'
      '  end'
      '  else'
      '      if <Db_proyecto."cIdStatus"> = '#39'CE'#39' then'
      '  begin'
      '     memo48.Color := $00D7FDBB;'
      '     memo20.Color := $00D7FDBB;'
      '     memo51.Color := $00D7FDBB;'
      '     memo22.Color := $00D7FDBB;'
      '     memo1.Color := $00D7FDBB;'
      '     memo2.Color := $00D7FDBB;'
      '     memo3.Color := $00D7FDBB;'
      '     memo4.Color := $00D7FDBB;'
      '     memo5.Color := $00D7FDBB;'
      '  end'
      '    else'
      '      if <Db_proyecto."cIdStatus"> = '#39'PC'#39' then'
      '  begin'
      '     memo48.Color := $00BAFEC9;'
      '     memo20.Color := $00BAFEC9;'
      '     memo51.Color := $00BAFEC9;'
      '     memo22.Color := $00BAFEC9;'
      '     memo1.Color := $00BAFEC9;'
      '     memo2.Color := $00BAFEC9;'
      '     memo3.Color := $00BAFEC9;'
      '     memo4.Color := $00BAFEC9;'
      '     memo5.Color := $00BAFEC9;'
      '  end'
      '   else'
      '      if <Db_proyecto."cIdStatus"> = '#39'PE'#39' then'
      '  begin'
      '     memo48.Color := $00BBFDF4;'
      '     memo20.Color := $00BBFDF4;'
      '     memo51.Color := $00BBFDF4;'
      '     memo22.Color := $00BBFDF4;'
      '     memo1.Color := $00BBFDF4;'
      '     memo2.Color := $00BBFDF4;'
      '     memo3.Color := $00BBFDF4;'
      '     memo4.Color := $00BBFDF4;'
      '     memo5.Color := $00BBFDF4;'
      '  end'
      '    else'
      '      if <Db_proyecto."cIdStatus"> = '#39'SE'#39' then'
      '  begin'
      '     memo48.Color := $00BAE1FE;'
      '     memo20.Color := $00BAE1FE;'
      '     memo51.Color := $00BAE1FE;'
      '     memo22.Color := $00BAE1FE;'
      '     memo1.Color := $00BAE1FE;'
      '     memo2.Color := $00BAE1FE;'
      '     memo3.Color := $00BAE1FE;'
      '     memo4.Color := $00BAE1FE;'
      '     memo5.Color := $00BAE1FE;'
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
      '       memo5.Color := clWhite;'
      '  end;'
      'end;'
      ''
      'Begin'
      ''
      'End.')
    OnReportPrint = 'no '
    Left = 1067
    Top = 78
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.Db_proyecto
        DataSetName = 'Db_proyecto'
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
        Condition = 'Db_proyecto."sContrato"'
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
            'Estatus Tecnico')
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
        DataSet = frmrepositorio.Db_proyecto
        DataSetName = 'Db_proyecto'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 129.259842520000000000
          Width = 80.503937010000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
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
          Width = 99.023553699999990000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo51OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
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
          DataSet = frmDiarioTurno2.dsGeneradorFolio
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
          DataSet = frmrepositorio.Db_proyecto
          DataSetName = 'Db_proyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[Db_proyecto."Embarcaciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 441.070866140000000000
          Width = 182.173304020000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
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
            '[Db_proyecto."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 623.244094490000000000
          Width = 102.803174020000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.Db_proyecto
          DataSetName = 'Db_proyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[Db_proyecto."NombreCompleto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 726.047244090000000000
          Width = 105.826771650000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.Db_proyecto
          DataSetName = 'Db_proyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[Db_proyecto."Estatus"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 831.496062990000000000
          Width = 148.157480310000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
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
        Condition = 'Db_proyecto."sContrato"'
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
          Top = 68.031510710000010000
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
          Top = 68.031510710000010000
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
          Left = 937.322834645669000000
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
  object zDocumento: TUniQuery
    Connection = connection.Uconnection
    Left = 924
    Top = 255
  end
  object dsDocumento: TDataSource
    DataSet = zDocumento
    Left = 964
    Top = 279
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 670
    Top = 231
  end
end
