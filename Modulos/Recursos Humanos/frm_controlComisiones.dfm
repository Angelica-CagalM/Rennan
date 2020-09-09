object frmControlComision: TfrmControlComision
  Left = 0
  Top = 0
  Caption = 'Control de Comisiones'
  ClientHeight = 501
  ClientWidth = 984
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
    Width = 984
    Height = 34
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 421
      Top = 1
      Width = 562
      Height = 32
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 421
      ExplicitTop = 1
      ExplicitHeight = 32
      inherited Panel1: TPanel
        Height = 32
        ExplicitWidth = 562
        ExplicitHeight = 32
        inherited btnAdd: TcxButton
          Height = 30
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 30
        end
        inherited btnEdit: TcxButton
          Height = 30
          OnClick = btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 30
        end
        inherited btnDelete: TcxButton
          Height = 30
          OnClick = btnDeleteClick
          ExplicitLeft = 161
          ExplicitHeight = 30
        end
        inherited btnPrinter: TcxButton
          Height = 30
          OnClick = btnPrinterClick
          ExplicitLeft = 401
          ExplicitHeight = 30
        end
        inherited btnDetalle: TcxButton
          Height = 30
          OnClick = btnDetalleClick
          ExplicitLeft = 481
          ExplicitHeight = 30
        end
        inherited btnRefresh: TcxButton
          Height = 30
          OnClick = btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 30
        end
        inherited btnExporta: TcxButton
          Height = 30
          ExplicitLeft = 321
          ExplicitHeight = 30
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Comisiones'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
  end
  object PanelDetalle: TPanel
    Left = 607
    Top = 34
    Width = 377
    Height = 467
    Align = alRight
    TabOrder = 1
    object PanelTopD: TPanel
      Left = 1
      Top = 1
      Width = 375
      Height = 30
      Align = alTop
      TabOrder = 0
      object cxNuevoDetalle: TcxButton
        Tag = 10
        Left = 131
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
        Left = 212
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
        Left = 293
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
      object cxLeyenda2: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Detalles'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
      end
    end
    object PanelTopD2: TPanel
      Left = 1
      Top = 31
      Width = 375
      Height = 27
      Align = alTop
      TabOrder = 1
      object cxLeyenda3: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Seleccionado: '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 433
      Width = 375
      Height = 33
      Align = alBottom
      TabOrder = 2
      inline frmBarraH22: TfrmBarraH2
        Left = 194
        Top = 1
        Width = 180
        Height = 31
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 194
        ExplicitTop = 1
        ExplicitHeight = 31
        inherited Panel1: TPanel
          Height = 31
          ExplicitHeight = 31
          inherited btnPost: TcxButton
            OnClick = btnPostDClick
          end
          inherited btnCancel: TcxButton
            Top = -1
            OnClick = btnCancelDClick
            ExplicitTop = -1
          end
        end
      end
    end
    object cxPageControlCom: TcxPageControl
      Left = 1
      Top = 58
      Width = 375
      Height = 375
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Properties.ActivePage = cxDocumentosC
      Properties.CustomButtons.Buttons = <>
      Properties.Images = frmrepositorio.IconosTodos16
      OnChange = cxPageControlComChange
      ClientRectBottom = 373
      ClientRectLeft = 2
      ClientRectRight = 373
      ClientRectTop = 29
      object cxDocumentosC: TcxTabSheet
        Hint = 'Documentos para comprobar vi'#225'ticos'
        Caption = 'Documentos'
        ImageIndex = 54
        object PanelInfoD: TPanel
          Left = 0
          Top = 232
          Width = 371
          Height = 112
          Align = alBottom
          TabOrder = 0
          object dxLayoutControl1: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 369
            Height = 110
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxFecha: TcxDBDateEdit
              Left = 126
              Top = 10
              DataBinding.DataField = 'Fecha'
              DataBinding.DataSource = ds_muestraDocto
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxNombreDocto: TcxDBTextEdit
              Left = 126
              Top = 38
              DataBinding.DataField = 'NombreDocto'
              DataBinding.DataSource = ds_muestraDocto
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
              Width = 121
            end
            object cxOficioC: TcxTextEdit
              Left = 258
              Top = 10
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              Text = 'cxOficioC'
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxCargarDocumento: TcxButton
              Left = 10
              Top = 66
              Width = 137
              Height = 30
              Caption = 'Cargar PDF'
              OptionsImage.ImageIndex = 26
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 3
              OnClick = cxCargarDocumentoClick
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              CaptionOptions.Text = 'Fecha'
              Control = cxFecha
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Nombre Documento'
              Control = cxNombreDocto
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Oficio'
              Control = cxOficioC
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Visible = False
              Control = cxCargarDocumento
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 371
          Height = 232
          Align = alClient
          TabOrder = 1
          object cxGrid2DBTableView1: TcxGridDBTableView
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
            DataController.DataSource = ds_doctos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxColumnD1: TcxGridDBColumn
              Caption = 'Oficio de Comisi'#243'n'
              DataBinding.FieldName = 'OficioC'
              Visible = False
              GroupIndex = 0
              Width = 82
            end
            object cxColumnD2: TcxGridDBColumn
              DataBinding.FieldName = 'Fecha'
              Width = 121
            end
            object cxColumnD3: TcxGridDBColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'NombreDocto'
              Width = 227
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
  end
  object cxSplitterDetalle: TcxSplitter
    Left = 601
    Top = 34
    Width = 6
    Height = 467
    AlignSplitter = salRight
  end
  object PanelCentro: TPanel
    Left = 0
    Top = 34
    Width = 601
    Height = 467
    Align = alClient
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 599
      Height = 265
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = ds_comision
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
        FilterRow.SeparatorColor = clHighlight
        FilterRow.Visible = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxColumn1: TcxGridDBColumn
          Caption = 'N'#250'mero de Oficio'
          DataBinding.FieldName = 'Codigo'
          Width = 87
        end
        object cxColumn2: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'NombreU'
          Width = 86
        end
        object cxColumn3: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'FechaDoc'
          Width = 85
        end
        object cxColumn4: TcxGridDBColumn
          Caption = 'Proyecto'
          DataBinding.FieldName = 'sIdFolio'
          Width = 87
        end
        object cxColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'Puesto'
          Width = 74
        end
        object cxColumn6: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'Total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 73
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object PanelInfo: TPanel
      Left = 1
      Top = 272
      Width = 599
      Height = 194
      Align = alBottom
      TabOrder = 1
      object PanelDown: TPanel
        Left = 1
        Top = 159
        Width = 597
        Height = 34
        Align = alBottom
        TabOrder = 0
        inline frmBarraH21: TfrmBarraH2
          Left = 416
          Top = 1
          Width = 180
          Height = 32
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 416
          ExplicitTop = 1
          inherited Panel1: TPanel
            ExplicitHeight = 32
            inherited btnPost: TcxButton
              OnClick = btnPostClick
            end
            inherited btnCancel: TcxButton
              OnClick = btnCancelClick
            end
          end
        end
      end
      object LayoutInfo: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 597
        Height = 158
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxOficio: TcxDBTextEdit
          Left = 129
          Top = 10
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = ds_comision
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
        object cxFechaOficio: TcxDBDateEdit
          Left = 129
          Top = 38
          DataBinding.DataField = 'FechaDoc'
          DataBinding.DataSource = ds_comision
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxPuesto: TcxDBTextEdit
          Left = 129
          Top = 94
          DataBinding.DataField = 'Puesto'
          DataBinding.DataSource = ds_comision
          ParentFont = False
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
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxLugar: TcxDBTextEdit
          Left = 129
          Top = 122
          DataBinding.DataField = 'Lugar'
          DataBinding.DataSource = ds_comision
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxFechaIni: TcxDBDateEdit
          Left = 286
          Top = 38
          DataBinding.DataField = 'FechaInicio'
          DataBinding.DataSource = ds_comision
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 6
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxHoraIni: TcxDBTimeEdit
          Left = 286
          Top = 66
          DataBinding.DataField = 'HoraInicio'
          DataBinding.DataSource = ds_comision
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 7
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxFechaFin: TcxDBDateEdit
          Left = 286
          Top = 94
          DataBinding.DataField = 'FechaFin'
          DataBinding.DataSource = ds_comision
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 8
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxMotivo: TcxDBTextEdit
          Left = 286
          Top = 122
          DataBinding.DataField = 'Motivo'
          DataBinding.DataSource = ds_comision
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 9
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cmbProyecto: TcxDBLookupComboBox
          Left = 286
          Top = 10
          DataBinding.DataField = 'sNumeroORden'
          DataBinding.DataSource = ds_comision
          ParentFont = False
          Properties.KeyFieldNames = 'sNumeroORden'
          Properties.ListColumns = <
            item
              FieldName = 'sIdFolio'
            end>
          Properties.ListSource = ds_proyectos
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object cxAplicaV: TdxCheckGroupBox
          Left = 402
          Top = 10
          Caption = 'Aplica Vi'#225'ticos'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.OnChange = cxAplicaVPropertiesChange
          Style.Color = 14803425
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Height = 135
          Width = 221
          object LayoutV: TdxLayoutControl
            Left = 3
            Top = 17
            Width = 215
            Height = 108
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxG: TcxDBCurrencyEdit
              Left = 120
              Top = 10
              DataBinding.DataField = 'Gasolina'
              DataBinding.DataSource = ds_comision
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
            object cxA: TcxDBCurrencyEdit
              Left = 120
              Top = 38
              DataBinding.DataField = 'Alimentacion'
              DataBinding.DataSource = ds_comision
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
            object cxH: TcxDBCurrencyEdit
              Left = 120
              Top = 66
              DataBinding.DataField = 'Hospedaje'
              DataBinding.DataSource = ds_comision
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
              Width = 121
            end
            object cxT: TcxDBCurrencyEdit
              Left = 120
              Top = 94
              DataBinding.DataField = 'Transporte'
              DataBinding.DataSource = ds_comision
              ParentFont = False
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
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxO: TcxDBCurrencyEdit
              Left = 120
              Top = 122
              DataBinding.DataField = 'Otros'
              DataBinding.DataSource = ds_comision
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 4
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxOEsp: TcxDBTextEdit
              Left = 146
              Top = 122
              DataBinding.DataField = 'OtrosEsp'
              DataBinding.DataSource = ds_comision
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 5
              OnEnter = EnterControl
              OnExit = SalidaControl
              Width = 121
            end
            object LayoutVGroup_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = LayoutVGroup_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Vales de Gasolina'
              Control = cxG
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = LayoutVGroup_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Alimentaci'#243'n'
              Control = cxA
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = LayoutVGroup_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Hospedaje'
              Control = cxH
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = LayoutVGroup_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Transporte'
              Control = cxT
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Otros (Especifique)'
              Control = cxO
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = LayoutVGroup_Root
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avTop
              Control = cxOEsp
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxNombre: TcxTextEdit
          Left = 129
          Top = 66
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          Text = 'cxNombre'
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object LayoutInfoGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'N'#250'mero de Oficio'
          Control = cxOficio
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Fecha de Oficio'
          Control = cxFechaOficio
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Puesto'
          Control = cxPuesto
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Lugar'
          Control = cxLugar
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha Inicio'
          Control = cxFechaIni
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = LayoutInfoGroup_Root
          AlignHorz = ahClient
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Hora Inicio'
          Control = cxHoraIni
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = LayoutInfoGroup_Root
          AlignHorz = ahClient
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Fecha Fin'
          Control = cxFechaFin
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Motivo'
          Control = cxMotivo
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Proyecto'
          Control = cmbProyecto
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem24: TdxLayoutItem
          Parent = LayoutInfoGroup_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'dxCheckGroupBox1'
          CaptionOptions.Visible = False
          Control = cxAplicaV
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Nombre Comisionado'
          Control = cxNombre
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object cxSplitterInfo: TcxSplitter
      Left = 1
      Top = 266
      Width = 599
      Height = 6
      AlignSplitter = salBottom
    end
  end
  object uProyectos: TUniQuery
    Left = 96
    Top = 170
  end
  object uComision: TUniQuery
    AfterScroll = uComisionAfterScroll
    Left = 96
    Top = 114
  end
  object ds_comision: TDataSource
    DataSet = uComision
    Left = 152
    Top = 114
  end
  object ds_proyectos: TDataSource
    DataSet = uProyectos
    Left = 152
    Top = 170
  end
  object reporte: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43237.831194236110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Begin'
      ''
      'End.')
    OnReportPrint = 'no '
    Left = 512
    Top = 130
    Datasets = <
      item
        DataSet = frxDBComision
        DataSetName = 'ComisionR'
      end
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
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
    object Comisiones: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Top = 3.779530000000001000
          Width = 113.385900000000000000
          Height = 71.811070000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo51: TfrxMemoView
          Left = 581.669667000000000000
          Top = 52.913420000000000000
          Width = 158.740260000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 502.299537000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 581.669667000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 502.299537000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Emisi'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Width = 740.787880000000000000
          Height = 79.370130000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo55: TfrxMemoView
          Left = 702.614627000000000000
          Width = 37.795300000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 661.039797000000000000
          Width = 41.574830000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Rev.')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 581.669667000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 502.299537000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Clave:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 113.007947000000000000
          Width = 389.291590000000000000
          Height = 79.370130000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Oficio de Comisi'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 1028.032160000000000000
        Width = 740.409927000000000000
        object Rich7: TfrxRichView
          Align = baCenter
          Left = 64.063033500000010000
          Width = 612.283860000000000000
          Height = 26.456710000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302054696D6573204E
            657720526F6D616E3B7D7B5C66315C6673776973735C66707271325C66636861
            727365743020417269616C3B7D7D0D0A7B5C636F6C6F7274626C203B5C726564
            38395C677265656E38395C626C756538393B7D0D0A7B5C2A5C67656E65726174
            6F722052696368656432302031302E302E31373133347D5C766965776B696E64
            345C756331200D0A5C706172645C77696463746C7061725C6C692D3536375C71
            635C7471635C7478343135335C7471725C7478383330365C6366315C66305C66
            7331365C6C616E673130333420507269766164612042616C6C656E6120233420
            4B6D2E20392E3520436172722E204361726D656E202D2050756572746F205265
            616C2E204672616363696F6E616D69656E746F2048616369656E64612064656C
            204D61722E2043642E2064656C204361726D656E2C2043616D70656368652E20
            432E502E2032343135375C7061720D0A0D0A5C706172645C77696463746C7061
            725C7471635C7478343235325C7471725C7478383530342054656C2E202B3532
            20283933382920313138203632203131202020204C6164612073696E20636F73
            746F203031203830302038342031352038313120202020207C20202020456D61
            696C3A20636F72706F72617469766F407369616E692E636F6D2E6D785C636630
            5C667332325C7061720D0A0D0A5C706172645C77696463746C7061725C71725C
            66315C6C616E67333038325C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 559.370440000000000000
        Top = 158.740260000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        object Rich1: TfrxRichView
          Left = 37.417347000000000000
          Top = 30.236240000000010000
          Width = 646.299630000000000000
          Height = 45.354360000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C3B7D
            7B5C66315C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B
            5C2A5C67656E657261746F722052696368656432302031302E302E3137313334
            7D5C766965776B696E64345C756331200D0A5C706172645C77696463746C7061
            725C71725C66305C667332325C6C616E6733303832204E5C2766616D65726F20
            6465206F666963696F3A205B436F6D6973696F6E522E22436F6469676F225D5C
            7061720D0A43642E2064656C204361726D656E2043616D70656368652061205C
            756C205B4461794F6628537472546F44617465283C436F6D6973696F6E522E22
            4665636861446F63223E29295D5C756C6E6F6E6520206465205C756C205B4D6F
            6E74684F6628537472546F44617465283C436F6D6973696F6E522E2246656368
            61446F63223E29295D5C756C6E6F6E65202064656C205C756C205B596561724F
            6628537472546F44617465283C436F6D6973696F6E522E224665636861446F63
            223E29295D5C756C6E6F6E65202E5C66315C667331365C6C616E67323035385C
            7061720D0A7D0D0A00}
        end
        object Rich3: TfrxRichView
          Align = baCenter
          Left = 54.614208500000020000
          Top = 173.858380000000000000
          Width = 631.181510000000000000
          Height = 45.354360000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C3B7D
            7B5C66315C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B
            5C636F6C6F7274626C203B5C726564305C677265656E305C626C7565303B7D0D
            0A7B5C2A5C67656E657261746F722052696368656432302031302E302E313731
            33347D5C766965776B696E64345C756331200D0A5C706172645C77696463746C
            7061725C716A5C66305C667332325C6C616E673330383220506F72206D656469
            6F2064656C2070726573656E7465206C6520696E666F726D6F2C207175652068
            61207369646F2064657369676E61646F2070617261207265616C697A6172206C
            6120636F6D6973695C2766336E2071756520656E207365677569646120736520
            646574616C6C613A5C7061720D0A0D0A5C706172645C6366315C66315C667331
            365C6C616E67323035385C7061720D0A7D0D0A00}
        end
        object Memo75: TfrxMemoView
          Left = 219.212740000000000000
          Top = 219.212740000000000000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ComisionR."Lugar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 68.031540000000000000
          Top = 219.212740000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Lugar:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 219.212740000000000000
          Top = 238.110390000000000000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ComisionR."FechaInicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 68.031540000000000000
          Top = 238.110390000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Fecha de Inicio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 219.212740000000000000
          Top = 257.008040000000100000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'hh:mm am/pm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ComisionR."HoraInicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 68.031540000000000000
          Top = 257.008040000000100000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Hora de Inicio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 219.212740000000000000
          Top = 275.905689999999900000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ComisionR."FechaFin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 68.031540000000000000
          Top = 275.905690000000100000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Fecha de T'#233'rmino:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 219.212740000000000000
          Top = 294.803340000000100000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ComisionR."sIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 68.031540000000000000
          Top = 294.803340000000100000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Proyecto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 219.212740000000000000
          Top = 313.700989999999900000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ComisionR."Motivo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 68.031540000000000000
          Top = 313.700990000000100000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Motivo de embarque:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Rich4: TfrxRichView
          Align = baCenter
          Left = 219.212740000000000000
          Top = 355.275819999999900000
          Width = 301.984447000000000000
          Height = 26.456710000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C3B7D
            7B5C66315C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B
            5C636F6C6F7274626C203B5C726564305C677265656E305C626C7565303B7D0D
            0A7B5C2A5C67656E657261746F722052696368656432302031302E302E313731
            33347D5C766965776B696E64345C756331200D0A5C706172645C77696463746C
            7061725C71635C66305C667332325C6C616E673330383220417369676E616369
            5C2766336E2064652076695C2765317469636F732070617261206C6120636F6D
            6973695C2766336E2E5C6366315C66315C667331365C6C616E67323035385C70
            61720D0A7D0D0A00}
        end
        object Memo11: TfrxMemoView
          Left = 370.582818860000000000
          Top = 423.307360000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[ComisionR."Gasolina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 219.401618860000000000
          Top = 423.307360000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Vales de gasolina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 370.582818860000000000
          Top = 442.205010000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[ComisionR."Alimentacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 219.401618860000000000
          Top = 442.205010000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Alimentacion')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 370.582818860000000000
          Top = 461.102660000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[ComisionR."Hospedaje"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 219.401618860000000000
          Top = 461.102660000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Hospedaje')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 370.582818860000000000
          Top = 480.000310000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[ComisionR."Transporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 219.401618860000000000
          Top = 480.000310000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Transporte')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 370.582818860000000000
          Top = 498.897960000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[ComisionR."Otros"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 219.401618860000000000
          Top = 498.897960000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Otros: Especificar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 370.582818860000000000
          Top = 517.795610000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<ComisionR."Gasolina">+<ComisionR."Alimentacion">+<ComisionR."H' +
              'ospedaje">+<ComisionR."Transporte">+<ComisionR."Otros">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 219.401618860000000000
          Top = 517.795610000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Rich5: TfrxRichView
          Align = baCenter
          Left = 219.023861140000000000
          Top = 400.630180000000000000
          Width = 302.362204720000000000
          Height = 22.677180000000000000
          Fill.BackColor = 16629143
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C6663686172736574302043616C69627269
            3B7D7B5C66315C666E696C5C666368617273657430205461686F6D613B7D7D0D
            0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C7565303B
            7D0D0A7B5C2A5C67656E657261746F722052696368656432302031302E302E31
            373133347D5C766965776B696E64345C756331200D0A5C706172645C77696463
            746C7061725C71635C6366315C625C66305C667332345C6C616E673330383220
            56495C2763315449434F535C62305C66315C667331365C6C616E67323035385C
            7061720D0A7D0D0A00}
        end
        object Memo24: TfrxMemoView
          Left = 37.795300000000000000
          Top = 90.708720000000000000
          Width = 204.094620000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Nombre del Comisionado: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 37.795300000000000000
          Top = 109.606370000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Puesto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 241.889920000000000000
          Top = 90.708720000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[ComisionR."NombreU"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 241.889920000000000000
          Top = 109.606370000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[ComisionR."Puesto"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 181.417440000000000000
        Top = 786.142240000000000000
        Width = 740.409927000000000000
        object Rich6: TfrxRichView
          Align = baCenter
          Left = 66.141775000000030000
          Width = 608.126377000000000000
          Height = 68.031540000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C3B7D
            7B5C66315C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B
            5C636F6C6F7274626C203B5C726564305C677265656E305C626C7565303B7D0D
            0A7B5C2A5C67656E657261746F722052696368656432302031302E302E313731
            33347D5C766965776B696E64345C756331200D0A5C706172645C77696463746C
            7061725C716A5C66305C667332325C6C616E673330383220416C20745C276539
            726D696E6F206465206C6120636F6D6973695C2766336E2C20656E20756E2070
            6C617A6F206E6F206D61796F72206120646F7320645C276564617320685C2765
            3162696C65732C2064656265725C27653120656E74726567617220656C20666F
            726D61746F206465207265706F72746520646520636F6D6973695C2766336E20
            636F6E20656C20656E6361726761646F206465207265637572736F732068756D
            616E6F732C206164656D5C276531732064656C207265706F7274652064652073
            757320676173746F7320636F6E206C6F7320636F6D70726F62616E746573206F
            66696369616C65732070657274696E656E746573207061726120737520726573
            70656374697661206170726F626163695C2766336E20636F6E206C6120476572
            656E6369612041646D696E6973747261746976612E5C7061720D0A0D0A5C7061
            72645C77696463746C7061725C71635C6366315C66315C667331365C6C616E67
            323035385C7061720D0A7D0D0A00}
        end
        object Memo23: TfrxMemoView
          Align = baCenter
          Left = 226.582872320000000000
          Top = 132.283550000000000000
          Width = 287.244182360000000000
          Height = 37.795300000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lic. Lucia Ram'#237'rez Alvarez'
            'Gerencia Administrativa')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 740.787880000000000000
        Width = 740.409927000000000000
        DataSet = frxDBComision
        DataSetName = 'ComisionR'
        RowCount = 0
      end
    end
  end
  object frxDBComision: TfrxDBDataset
    UserName = 'ComisionR'
    CloseDataSource = False
    DataSet = uReporte
    BCDToCurrency = False
    Left = 456
    Top = 130
  end
  object uReporte: TUniQuery
    Connection = connection.Uconnection
    Left = 408
    Top = 130
  end
  object uDoctos: TUniQuery
    Connection = connection.Uconnection
    Left = 96
    Top = 218
  end
  object uMuestraDocto: TUniQuery
    Connection = connection.Uconnection
    Left = 32
    Top = 114
  end
  object ds_doctos: TDataSource
    DataSet = uDoctos
    Left = 152
    Top = 218
  end
  object ds_muestraDocto: TDataSource
    DataSet = uMuestraDocto
    Left = 32
    Top = 162
  end
  object dlgPDF: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 272
    Top = 146
  end
end
