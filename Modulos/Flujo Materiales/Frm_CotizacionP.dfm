object FrmCotizacionesP: TFrmCotizacionesP
  Left = 0
  Top = 0
  Caption = 'Cotizaciones a Presupuestos'
  ClientHeight = 435
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 443
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 443
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
    object cxTitulo: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Listado de Cotizaciones'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object PanelDetalle: TPanel
    Left = 449
    Top = 35
    Width = 557
    Height = 400
    Align = alRight
    TabOrder = 1
    object cxPageDetalle: TcxPageControl
      Left = 1
      Top = 31
      Width = 555
      Height = 368
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabRecursos
      Properties.CustomButtons.Buttons = <>
      Properties.Images = frmrepositorio.IconosTodos16
      OnChange = cxPageDetalleChange
      ClientRectBottom = 366
      ClientRectLeft = 2
      ClientRectRight = 553
      ClientRectTop = 29
      object cxTabRecursos: TcxTabSheet
        Caption = 'Recursos por Cotizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 97
        ParentFont = False
        object gridDetalle: TcxGrid
          Left = 0
          Top = 0
          Width = 551
          Height = 214
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object viewDetalle: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_detalle
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Images = frmrepositorio.IconosTodos16
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            Styles.OnGetContentStyle = viewDetalleStylesGetContentStyle
            object cxColumnD1: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'IdPresupuestoDetalle'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'IdPresupuestoDetalle'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'Codigo'
                end>
              Properties.ListSource = ds_recursosP
              Properties.ReadOnly = True
              Options.Editing = False
              Width = 85
            end
            object cxColumnD2: TcxGridDBColumn
              Caption = 'Recurso'
              DataBinding.FieldName = 'IdPresupuestoDetalle'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'IdPresupuestoDetalle'
              Properties.ListColumns = <
                item
                  Caption = 'Recursos del Presupuesto'
                  FieldName = 'Descripcion'
                end>
              Properties.ListSource = ds_recursosP
              Properties.ReadOnly = True
              Options.Editing = False
              Width = 85
            end
            object cxColumnD3: TcxGridDBColumn
              Caption = 'Fecha Cotizado'
              DataBinding.FieldName = 'FechaCotizado'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ReadOnly = True
              Properties.ShowTime = False
              Width = 92
            end
            object cxColumnD4: TcxGridDBColumn
              DataBinding.FieldName = 'Costo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.EditFormat = ',0.00;-,0.00'
              Properties.ReadOnly = True
              Width = 77
            end
            object cxColumnD5: TcxGridDBColumn
              DataBinding.FieldName = 'Cotizado'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object gridDetalleLevel1: TcxGridLevel
            GridView = viewDetalle
          end
        end
        object PanelCotizarA: TPanel
          Left = 0
          Top = 214
          Width = 551
          Height = 123
          Align = alBottom
          TabOrder = 1
          object dxLayoutControl2: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 549
            Height = 121
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxProveedorD: TcxLookupComboBox
              Left = 121
              Top = 10
              ParentFont = False
              Properties.KeyFieldNames = 'IdProveedor'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end
                item
                  Caption = 'Raz'#243'n Social'
                  FieldName = 'RazonSocial'
                end>
              Properties.ListSource = ds_proveedor
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
              Width = 145
            end
            object cxButton1: TcxButton
              Left = 10
              Top = 38
              Width = 151
              Height = 35
              Caption = 'Cotizar con Proveedor'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000010000000500000008000000090000000900000009000000090000
                000A0000000A0000000A0000000A0000000A0000000A00000006000000000000
                0000000000057D5B4FBCAE7E6DFFAE7C6CFFAD7C6BFFAC7B6AFFAC7A6AFFAB7A
                69FFAB7969FFAB7967FFAA7867FFAA7867FFAA7867FF7A564ABD000000000000
                000000000007B18272FFFAF6F4FFFAF6F3FFF9F6F3FFFAF5F2FFFAF6F1FFF9F5
                F1FFF9F4F1FFF9F4F0FFF8F4F0FFF8F4F0FFF8F3EFFFAA7867FF000000000000
                000000000006B58776FFFBF8F5FFF6F0EBFFF6F0EAFFF6F0EAFFF6F0EAFFF6EF
                EAFFF5EFEAFFF5EFE9FFF5EFE9FFF6EFE8FFF9F5F1FFAC7B6AFF000000050000
                00080000000EB88B7BFFFCFAF8FFF7F1EDFFB48876FFB38776FFB48775FFB286
                75FFB38674FFB28673FFB28573FFF6F0EBFFFBF7F4FFAE7D6DFF886A5FBCBE94
                85FFDBC6BEFFBB8F7FFFFDFCFAFFF8F3F0FFF2E9E3FFF2E8E3FFF1E8E3FFF1E8
                E2FFF1E8E2FFF0E7E2FFF1E7E1FFF7F1EDFFFBF8F6FFB18171FFC09788FFFFFF
                FFFFFBFBFBFFBE9384FFFEFCFCFFFAF5F2FFB68C7BFFB78C7AFFB68A78FFB58A
                79FFB58977FFB48877FFB48776FFF9F4F0FFFCFAF8FFB48575FFC2998BFFFFFF
                FFFFF7F4F2FFC29789FFFEFEFDFFFBF7F4FFFBF6F4FFFAF7F3FFF4ECE7FFF3EC
                E7FFF3EBE6FFF3EBE6FFF2EAE6FFFAF6F2FFFDFCFBFFB78979FFC49C8EFFD4B7
                ACFFE6D8D2FFC49B8EFFFFFEFEFFFCF9F6FFFCF8F5FFFCF8F6FFB88E7DFFB88D
                7CFFB78D7BFFB78C7AFFB68C7AFFFBF7F4FFFEFDFCFFBA8E7EFFC69F92FFFFFF
                FFFFFAF7F6FFC79E90FFFFFFFEFFFDFAF7FFFCFAF8FFFCF9F7FFFCFAF7FFFDF9
                F7FFFCF9F6FFFCF9F7FFFCF8F7FFFCF9F6FFFEFEFDFFBE9283FFC8A295FFFFFF
                FFFFFBF9F8FFC9A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFF
                FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFC09687FFCAA698FFD6BD
                B1FFEADDD7FFD1B0A5FFC9A194FFC9A194FFC9A194FFC8A093FFC79F93FFC89F
                92FFC79E91FFC79E90FFC59E8FFFC59C8EFFC49B8DFF917368BFCCA99BFFFFFF
                FFFFFEFDFBFFFDFCFBFFEADDD8FFFDFCFAFFFDFBFAFFFCFAF9FFE9DCD6FFFCFA
                F9FFFCFAF9FFFDFDFDFFE2D0C8FF000000060000000200000001CEAB9FFFFFFF
                FFFFFFFFFFFFFFFFFFFFD9BEB3FFFFFFFFFFFFFFFFFFFFFFFFFFD7BDB2FFFFFF
                FFFFFFFFFFFFFFFFFFFFCAA698FF0000000300000000000000009A8277BED0AE
                A1FFCFAEA1FFCFAEA0FFCFADA0FFCEAC9FFFCFAC9FFFCEAB9EFFCEAB9EFFCEAB
                9DFFCDAB9DFFCDAB9CFF987D73BF000000020000000000000000000000010000
                0001000000010000000100000002000000020000000200000002000000020000
                0002000000020000000200000001000000000000000000000000}
              TabOrder = 1
              OnClick = cxButton1Click
            end
            object dxLayoutControl2Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Proveedor a Cotizar'
              Control = cxProveedorD
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = cxButton1
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
      object cxTabRecXProv: TcxTabSheet
        Caption = 'Recursos Cotizados'
        ImageIndex = 23
        object grid_recXprov: TcxGrid
          Left = 0
          Top = 0
          Width = 551
          Height = 215
          Align = alClient
          TabOrder = 0
          object view_recXprov: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = view_recXprovCellDblClick
            DataController.DataSource = ds_recxProv
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxColumnRP1: TcxGridDBColumn
              Caption = 'Proveedor'
              DataBinding.FieldName = 'Nombre'
              Visible = False
              GroupIndex = 0
            end
            object cxColumnRP2: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Codigo'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 67
            end
            object cxColumnRP3: TcxGridDBColumn
              Caption = 'Recurso'
              DataBinding.FieldName = 'Descripcion'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 312
            end
            object view_recXprovColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'Costo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 75
            end
            object view_recXprovColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'NombreDoc'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 74
            end
          end
          object grid_recXprovLevel1: TcxGridLevel
            GridView = view_recXprov
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 215
          Width = 551
          Height = 122
          Align = alBottom
          TabOrder = 1
          object dxLayoutControl3: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 549
            Height = 90
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxedtCostoCot: TcxDBCurrencyEdit
              Left = 46
              Top = 10
              DataBinding.DataField = 'Costo'
              DataBinding.DataSource = ds_recxProv
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 0
              Width = 203
            end
            object cxButton4: TcxButton
              Left = 10
              Top = 37
              Width = 75
              Height = 25
              Caption = 'Subir PDF'
              TabOrder = 1
              OnClick = cxButton4Click
            end
            object cxLabel3: TcxLabel
              Left = 255
              Top = 45
              ParentFont = False
              Style.HotTrack = False
            end
            object dxLayoutControl3Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Costo'
              Control = cxedtCostoCot
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxButton4'
              CaptionOptions.Visible = False
              Control = cxButton4
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutControl3Group_Root
              AlignVert = avBottom
              CaptionOptions.Text = 'cxLabel3'
              CaptionOptions.Visible = False
              Control = cxLabel3
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl3Group_Root
              Index = 0
              AutoCreated = True
            end
          end
          object Panel2: TPanel
            Left = 1
            Top = 91
            Width = 549
            Height = 30
            Align = alBottom
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            object cxButton2: TcxButton
              Left = 374
              Top = 1
              Width = 87
              Height = 28
              Align = alRight
              Caption = 'Guardar'
              OptionsImage.ImageIndex = 2
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = cxButton2Click
            end
            object cxButton3: TcxButton
              Left = 461
              Top = 1
              Width = 87
              Height = 28
              Align = alRight
              Caption = 'Cancelar'
              OptionsImage.ImageIndex = 3
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = cxButton3Click
            end
          end
        end
      end
      object cxTabComentarios: TcxTabSheet
        Caption = 'Comentarios'
        ImageIndex = 100
        object gridComentarios: TcxGrid
          Left = 0
          Top = 0
          Width = 551
          Height = 192
          Align = alClient
          TabOrder = 0
          object viewComentarios: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_comentarios
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxColumnC1: TcxGridDBColumn
              Caption = 'Cotizaci'#243'n'
              DataBinding.FieldName = 'Codigo'
              Visible = False
              GroupIndex = 0
            end
            object cxColumnC3: TcxGridDBColumn
              Caption = 'Fecha Comentario'
              DataBinding.FieldName = 'FechaComentario'
              Width = 63
            end
            object cxColumnC2: TcxGridDBColumn
              Caption = 'Recurso'
              DataBinding.FieldName = 'Descripcion'
              Width = 168
            end
            object cxColumnC4: TcxGridDBColumn
              Caption = 'Usuario'
              DataBinding.FieldName = 'sIdUsuario'
              Width = 83
            end
          end
          object gridComentariosLevel1: TcxGridLevel
            GridView = viewComentarios
          end
        end
        object PanelComentarios: TPanel
          Left = 0
          Top = 192
          Width = 551
          Height = 145
          Align = alBottom
          TabOrder = 1
          object PanelbtnsCom: TPanel
            Left = 1
            Top = 114
            Width = 549
            Height = 30
            Align = alBottom
            TabOrder = 0
            Visible = False
            object cxGuardarDetalle: TcxButton
              Left = 374
              Top = 1
              Width = 87
              Height = 28
              Align = alRight
              Caption = 'Guardar'
              OptionsImage.ImageIndex = 2
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = cxGuardarDetalleClick
            end
            object cxCancelarDetalle: TcxButton
              Left = 461
              Top = 1
              Width = 87
              Height = 28
              Align = alRight
              Caption = 'Cancelar'
              OptionsImage.ImageIndex = 3
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = cxCancelarDetalleClick
            end
          end
          object dxLayoutControl1: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 549
            Height = 113
            Align = alClient
            TabOrder = 1
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxCotizacionC: TcxTextEdit
              Left = 77
              Top = 10
              Enabled = False
              ParentFont = False
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
              Width = 121
            end
            object cxFechaC: TcxDBDateEdit
              Left = 337
              Top = 10
              DataBinding.DataField = 'FechaComentario'
              DataBinding.DataSource = ds_comentarios
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxComentarioC: TcxDBMemo
              Left = 77
              Top = 62
              DataBinding.DataField = 'Comentario'
              DataBinding.DataSource = ds_comentarios
              ParentFont = False
              Properties.ReadOnly = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 3
              OnEnter = EnterControl
              OnExit = SalidaControl
              Height = 89
              Width = 185
            end
            object cxRecursoC: TcxTextEdit
              Left = 77
              Top = 36
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 2
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 248
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Cotizaci'#243'n'
              Control = cxCotizacionC
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Fecha'
              Control = cxFechaC
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Comentario'
              Control = cxComentarioC
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Recurso'
              Control = cxRecursoC
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
          end
        end
      end
    end
    object PanelTopD: TPanel
      Left = 1
      Top = 1
      Width = 555
      Height = 30
      Align = alTop
      TabOrder = 1
      object cxNuevoDetalle: TcxButton
        Tag = 10
        Left = 311
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
        Tag = 11
        Left = 392
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
      object btnEliminarDetalle: TcxButton
        Tag = 12
        Left = 473
        Top = 1
        Width = 81
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
        OnClick = btnEliminarDetalleClick
      end
      object cxCreaReq: TcxButton
        Left = 27
        Top = 2
        Width = 278
        Height = 25
        Caption = 'Crear Requisici'#243'n de la Cotizaci'#243'n seleccionada'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000006714F44BE9E6D5DFF9E6C5DFF9D6C
          5CFF9D6B5BFF9C6B5BFF9C6B5BFF9C6A5AFF9B6959FF704B41BE000000000000
          000000000000000000000000000000000009DCC8BFFFF8F1ECFFF7EEE9FFCCAB
          9FFFF7EEEAFFF7EEE9FFCCAB9FFFF7EEE9FFF7EEE9FF9D6C5CFF000000000000
          0000000000000000000000000000000000095B997BFFE4E0D9FFF8F0EBFFDCC3
          BAFFF7EEEAFFF7EEEAFFCCACA0FFF8EEEAFFF9F2EFFF9F7061FF000000000000
          000000000000000000000000000000000008137248FF184E30FFA4AFA2FFF8F0
          EBFFEADBD4FFD1B3A7FFCEADA2FFCDADA2FFD9BFB6FFA37464FF000000000000
          0000000000000000000103190C5C052D17AD147449FF2ECA96FF126B45FF4F6F
          58FFE4E0D9FFF8F0EBFFDCC5BCFFF8F0EBFFFAF4F1FFA67969FF000000070000
          000B0000000C052714861F8259FF30AF82FF3CD4A3FF3EDDABFF3BDCA8FF2EA8
          7DFF1B5033FFA4B0A2FFDDC6BDFFF8F0ECFFF9F3F1FFAA7E6FFF856053BEE3CD
          C3FFA2B8A7FF2B8A64FF6CECC7FF69EBC6FF6EEBC7FF4DE4B5FF5DE7BFFF4AC3
          9BFF2D8860FFAEC6B4FFDEC6BEFFD0B2A7FFDBC4BAFFAE8274FFBB8978FFF8F0
          ECFF5C8D70FF4BB68FFF2A8E64FF298E63FF197A4EFF6BE4C1FF359E76FF61A0
          81FFE5E6DEFFF8F0EBFFDDC6BDFFF8F0EDFFFAF5F2FFB28879FFBE8E7EFFF8F0
          ECFF45946EFF8AB89EFFD4DDD1FFF8F0EBFF1B7D4FFF348F66FFB1CBB9FFF8F0
          EBFFF9F2EDFFFAF5F1FFDCC5BDFFFAF5F2FFFAF4F2FFB68D7FFFC19383FFF1E5
          E0FF90B69DFFEEE1DBFFDDC8C0FFF8F0EBFF66A685FFE6E7DEFFF3E9E3FFCFB2
          A7FFBC9487FFBB9487FFBB9385FFBA9285FFBA9184FF8A6C61C0C59A89FFF9F2
          EEFFF8F0ECFFDCC6BDFFF8EFEBFFF8F0ECFFEDE1DCFFF8F2EDFFFAF6F4FFDCC7
          BEFF0000000B0000000300000004000000040000000300000002C89E8FFFF9F4
          F2FFF8F0EDFFC6A599FFF7F0ECFFF8F0EDFFC5A499FFF8F0ECFFF9F3F1FFC397
          87FF000000070000000000000000000000000000000000000000C48F63FFDBB5
          8FFFCF9F71FFCF9E6FFFCF9D6EFFCF9D6EFFCE9B6EFFCE9A6CFFDAB089FFC28B
          5FFF000000070000000000000000000000000000000000000000C79469FFEEDA
          B8FFE9CEA3FFCDA381FFE8CEA3FFE8CEA3FFCCA27EFFE8CDA3FFEED9B7FFC491
          65FF000000060000000000000000000000000000000000000000CA9A6EFFEFDA
          B9FFEEDAB8FFDBBA9EFFEEDAB8FFEEDAB8FFDAB89BFFEEDAB8FFEEDAB8FFC897
          6BFF000000050000000000000000000000000000000000000000987655BFCC9E
          71FFCC9D71FFCC9C70FFCB9B6FFFCA9A6EFFC9986DFFC9986CFFCC9C70FF9774
          53C0000000030000000000000000000000000000000000000000}
        TabOrder = 3
        OnClick = cxCreaReqClick
      end
    end
  end
  object cxSplitterDetalle: TcxSplitter
    Left = 440
    Top = 35
    Width = 9
    Height = 400
    Hint = 'Deslice a izquierda o derecha para cambiar la visualizaci'#243'n.'
    AlignSplitter = salRight
    ShowHint = True
    ParentShowHint = False
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 440
    Height = 400
    Align = alClient
    TabOrder = 2
    object cxSplitterDatos: TcxSplitter
      Left = 1
      Top = 282
      Width = 438
      Height = 6
      AlignSplitter = salBottom
    end
    object gridDatos: TcxGrid
      Left = 1
      Top = 1
      Width = 438
      Height = 281
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object viewDatos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_cotizacion
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Presupuesto'
          Visible = False
          GroupIndex = 0
        end
        object cxColumn2: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Width = 112
        end
        object cxColumn3: TcxGridDBColumn
          Caption = 'Fecha Creaci'#243'n'
          DataBinding.FieldName = 'FechaCreacion'
          Width = 123
        end
        object cxColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
          Width = 176
        end
        object cxColumn5: TcxGridDBColumn
          Caption = 'Fecha Requerida'
          DataBinding.FieldName = 'FechaRequerida'
          Width = 148
        end
      end
      object gridDatosLevel1: TcxGridLevel
        GridView = viewDatos
      end
    end
    object PanelDatosP: TPanel
      Left = 1
      Top = 288
      Width = 438
      Height = 111
      Align = alBottom
      TabOrder = 2
      inline frmBarraH21: TfrmBarraH2
        Left = 1
        Top = 80
        Width = 436
        Height = 30
        Align = alBottom
        Color = 14803425
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 80
        ExplicitWidth = 436
        ExplicitHeight = 30
        inherited Panel1: TPanel
          Width = 436
          Height = 30
          ExplicitWidth = 436
          ExplicitHeight = 30
          inherited btnPost: TcxButton
            Left = 261
            Top = 1
            Height = 28
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 261
            ExplicitTop = 1
            ExplicitHeight = 28
          end
          inherited btnCancel: TcxButton
            Left = 348
            Top = 1
            Height = 28
            Align = alRight
            OnClick = btnCancelClick
            ExplicitLeft = 348
            ExplicitTop = 1
            ExplicitHeight = 28
          end
        end
      end
      object LayoutDatos: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 436
        Height = 79
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxCodigo: TcxDBTextEdit
          Left = 52
          Top = 10
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = ds_cotizacion
          ParentFont = False
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
          Width = 121
        end
        object cxPresupuesto: TcxDBLookupComboBox
          Left = 252
          Top = 10
          DataBinding.DataField = 'sNumeroOrden'
          DataBinding.DataSource = ds_cotizacion
          ParentFont = False
          Properties.KeyFieldNames = 'sNumeroOrden'
          Properties.ListColumns = <
            item
              Caption = 'Listado de Presupuestos'
              FieldName = 'sIdFolio'
            end>
          Properties.ListSource = ds_presupuesto
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object cxFecha: TcxDBDateEdit
          Left = 373
          Top = 10
          DataBinding.DataField = 'FechaRequerida'
          DataBinding.DataSource = ds_cotizacion
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object LayoutDatosGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = LayoutDatosGroup_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'C'#243'digo'
          Control = cxCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = LayoutDatosGroup_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Presupuesto'
          Control = cxPresupuesto
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = LayoutDatosGroup_Root
          AlignHorz = ahRight
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha Requerida'
          Control = cxFecha
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
  end
  object PanelRecurso: TPanel
    Left = -166
    Top = 107
    Width = 582
    Height = 284
    BorderWidth = 10
    TabOrder = 4
    Visible = False
    inline frmBarraH22: TfrmBarraH2
      Left = 11
      Top = 243
      Width = 560
      Height = 30
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 11
      ExplicitTop = 243
      ExplicitWidth = 560
      ExplicitHeight = 30
      inherited Panel1: TPanel
        Width = 560
        Height = 30
        ExplicitWidth = 560
        ExplicitHeight = 30
        inherited btnPost: TcxButton
          Left = 296
          Top = 1
          Width = 136
          Height = 28
          Align = alRight
          Caption = 'Agregar Recurso'
          OnClick = btnAgregaRecurso
          ExplicitLeft = 296
          ExplicitTop = 1
          ExplicitWidth = 136
          ExplicitHeight = 28
        end
        inherited btnCancel: TcxButton
          Left = 432
          Top = 1
          Width = 127
          Height = 28
          Align = alRight
          Caption = 'Cancelar / Cerrar'
          OnClick = btnCancelaRecurso
          ExplicitLeft = 432
          ExplicitTop = 1
          ExplicitWidth = 127
          ExplicitHeight = 28
        end
      end
    end
    object griRecursos: TcxGrid
      Left = 11
      Top = 11
      Width = 560
      Height = 232
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object viewRecursos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_recursosP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object cxColumnR1: TcxGridDBColumn
          Caption = 'Tipo de Recurso'
          DataBinding.FieldName = 'TipoRecurso'
          Visible = False
          GroupIndex = 0
        end
        object cxColumnR2: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Width = 108
        end
        object cxColumnR3: TcxGridDBColumn
          Caption = 'Recurso'
          DataBinding.FieldName = 'Descripcion'
          Width = 143
        end
        object cxColumnR4: TcxGridDBColumn
          Caption = 'U.Medida'
          DataBinding.FieldName = 'UMedida'
          Width = 143
        end
        object cxColumnR5: TcxGridDBColumn
          Caption = 'Cantidad a Cotizar'
          DataBinding.FieldName = 'Cantidad'
          Width = 143
        end
      end
      object griRecursosLevel1: TcxGridLevel
        GridView = viewRecursos
      end
    end
  end
  object PanelCotizacion: TPanel
    Left = 582
    Top = 149
    Width = 322
    Height = 144
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvLowered
    BorderWidth = 10
    TabOrder = 5
    Visible = False
    inline frmBarraH23: TfrmBarraH2
      Left = 12
      Top = 98
      Width = 294
      Height = 30
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 12
      ExplicitTop = 98
      ExplicitWidth = 294
      ExplicitHeight = 30
      inherited Panel1: TPanel
        Width = 294
        Height = 30
        ExplicitWidth = 294
        ExplicitHeight = 30
        inherited btnPost: TcxButton
          Left = 122
          Top = 1
          Width = 88
          Height = 28
          Align = alRight
          OptionsImage.ImageIndex = 0
          OnClick = frmBarraH23btnPostClick
          ExplicitLeft = 122
          ExplicitTop = 1
          ExplicitWidth = 88
          ExplicitHeight = 28
        end
        inherited btnCancel: TcxButton
          Left = 210
          Top = 1
          Width = 83
          Height = 28
          Align = alRight
          OnClick = frmBarraH23btnCancelClick
          ExplicitLeft = 210
          ExplicitTop = 1
          ExplicitWidth = 83
          ExplicitHeight = 28
        end
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 24
      Caption = 'Fecha Solicitado'
      ParentFont = False
      Transparent = True
    end
    object cbFechaInicio: TcxDateEdit
      Left = 102
      Top = 24
      ParentFont = False
      TabOrder = 2
      Width = 203
    end
    object cxLabel2: TcxLabel
      Left = 11
      Top = 64
      Caption = 'Fecha Requerido'
      ParentFont = False
      Transparent = True
    end
    object cbFechaFinal: TcxDateEdit
      Left = 102
      Top = 64
      ParentFont = False
      TabOrder = 4
      Width = 203
    end
  end
  object uCotizacion: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = uCotizacionAfterScroll
    Left = 40
    Top = 139
  end
  object uPresupuestos: TUniQuery
    Connection = connection.Uconnection
    Left = 40
    Top = 195
  end
  object uDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 654
    Top = 123
    object uDetalleIdCotizacionDetalle: TIntegerField
      FieldName = 'IdCotizacionDetalle'
    end
    object uDetalleIdCotizacion: TIntegerField
      FieldName = 'IdCotizacion'
    end
    object uDetalleIdPresupuestoDetalle: TIntegerField
      FieldName = 'IdPresupuestoDetalle'
    end
    object uDetalleCosto: TFloatField
      FieldName = 'Costo'
      OnChange = uDetalleCostoChange
    end
    object uDetalleFechaCotizado: TDateTimeField
      FieldName = 'FechaCotizado'
    end
    object uDetalleCotizado: TLargeintField
      FieldName = 'Cotizado'
    end
  end
  object uRecursosP: TUniQuery
    Connection = connection.Uconnection
    Left = 654
    Top = 171
  end
  object ds_cotizacion: TDataSource
    DataSet = uCotizacion
    Left = 88
    Top = 139
  end
  object ds_presupuesto: TDataSource
    DataSet = uPresupuestos
    Left = 88
    Top = 195
  end
  object ds_detalle: TDataSource
    DataSet = uDetalle
    Left = 718
    Top = 123
  end
  object ds_recursosP: TDataSource
    DataSet = uRecursosP
    Left = 718
    Top = 171
  end
  object uComentarios: TUniQuery
    Connection = connection.Uconnection
    Left = 649
    Top = 223
  end
  object ds_comentarios: TDataSource
    DataSet = uComentarios
    Left = 713
    Top = 223
  end
  object uProveedor: TUniQuery
    Connection = connection.Uconnection
    Left = 654
    Top = 279
  end
  object ds_proveedor: TDataSource
    DataSet = uProveedor
    Left = 710
    Top = 279
  end
  object uCotizaProveedor: TUniQuery
    Connection = connection.Uconnection
    Left = 580
    Top = 178
  end
  object ds_cotizaProveedor: TDataSource
    DataSet = uCotizaProveedor
    Left = 892
    Top = 138
  end
  object frxReport1: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43378.606831377300000000
    ReportOptions.LastChange = 43475.713877384260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 512
    Top = 194
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = ds_rptCotizaProveedor
        DataSetName = 'rpt_cotizaProveedor'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 3.779481180000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 200.315090000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        Condition = 'rpt_cotizaProveedor."IdProveedor"'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 173.858379999999700000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            #205'tem')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 102.047310000000000000
          Top = 173.858379999999700000
          Width = 502.677490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Material')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 604.724800000000000000
          Top = 173.858379999999700000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181199999999800000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Proveedor: [rpt_cotizaProveedor."Proveedor"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Width = 166.299212600000000000
          Height = 75.590551180000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo8: TfrxMemoView
          Left = 177.637910000000000000
          Width = 521.574847090000100000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149659999999910000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZACI'#211'N DE MATERIALES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Top = 105.826839999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cotizaci'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 102.047310000000000000
          Top = 105.826839999999900000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rpt_cotizaProveedor."Cotizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 245.669450000000000000
          Top = 105.826839999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Presupuesto: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 105.826839999999900000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rpt_cotizaProveedor."Presupuesto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 480.000310000000000000
          Top = 105.826839999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 574.488560000000000000
          Top = 105.826839999999900000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = ds_rptCotizaProveedor
        DataSetName = 'rpt_cotizaProveedor'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 102.047310000000000000
          Width = 502.677490000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[rpt_cotizaProveedor."Descripcion"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rpt_cotizaProveedor."Cantidad"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
    end
  end
  object ds_rptCotizaProveedor: TfrxDBDataset
    UserName = 'rpt_cotizaProveedor'
    CloseDataSource = False
    DataSet = uReporte
    BCDToCurrency = False
    Left = 360
    Top = 98
  end
  object uReporte: TUniQuery
    Connection = connection.Uconnection
    Left = 360
    Top = 35
  end
  object uRecxProv: TUniQuery
    Connection = connection.Uconnection
    Left = 838
    Top = 319
  end
  object ds_recxProv: TDataSource
    DataSet = uRecxProv
    Left = 798
    Top = 311
  end
  object zDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 804
    Top = 95
  end
  object zFolio: TUniQuery
    Connection = connection.Uconnection
    Left = 804
    Top = 143
  end
  object zSub: TUniQuery
    Connection = connection.Uconnection
    Left = 805
    Top = 191
  end
  object uRequisita: TUniQuery
    Connection = connection.Uconnection
    Left = 804
    Top = 255
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 934
    Top = 255
  end
  object dlgSavePDF: TSaveDialog
    DefaultExt = 'pdf'
    Left = 880
    Top = 256
  end
end
