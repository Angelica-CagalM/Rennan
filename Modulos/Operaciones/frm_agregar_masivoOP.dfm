object frmAgregarMasivoOP: TfrmAgregarMasivoOP
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Material'
  ClientHeight = 479
  ClientWidth = 924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel5: TPanel
    Left = 0
    Top = 129
    Width = 692
    Height = 350
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 314
      Width = 690
      Height = 35
      Align = alBottom
      TabOrder = 0
      object cxActualiza: TcxButton
        Left = 481
        Top = 1
        Width = 104
        Height = 33
        Align = alRight
        Caption = 'Agregar'
        OptionsImage.ImageIndex = 6
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxActualizaClick
      end
      object dtbCancelar: TcxButton
        Left = 585
        Top = 1
        Width = 104
        Height = 33
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
        OnClick = dtbCancelarClick
      end
      object btnAceptar: TcxButton
        Left = 386
        Top = 1
        Width = 95
        Height = 33
        Align = alRight
        Caption = 'Guardar'
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnAceptarClick
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 690
      Height = 126
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object View_Grid_Materiales: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = View_Grid_MaterialesCellClick
        OnCellDblClick = View_Grid_MaterialesCellDblClick
        DataController.DataSource = ds_materiales
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object View_Grid_MaterialesRequisicion: TcxGridDBColumn
          Caption = 'Requisici'#243'n'
          DataBinding.FieldName = 'sNumReq'
          Options.Editing = False
          Width = 31
        end
        object View_Grid_MaterialesCentroCosto: TcxGridDBColumn
          Caption = 'Centro Costo'
          DataBinding.FieldName = 'CentroCosto'
          Visible = False
          Width = 40
        end
        object View_Grid_MaterialesCodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Options.Editing = False
          Width = 42
        end
        object View_Grid_MaterialesItem: TcxGridDBColumn
          Caption = 'Item'
          DataBinding.FieldName = 'iItem'
          Width = 30
        end
        object View_Grid_MaterialesTrazabilidad: TcxGridDBColumn
          Caption = 'Trazabilidad'
          DataBinding.FieldName = 'NumeroMaterial'
          Width = 36
        end
        object View_Grid_MaterialesInsumo: TcxGridDBColumn
          Caption = 'Material'
          DataBinding.FieldName = 'Insumo'
          Options.Editing = False
          Width = 162
        end
        object View_Grid_MaterialesMedida: TcxGridDBColumn
          DataBinding.FieldName = 'Medida'
          Options.Editing = False
          Width = 22
        end
        object View_Grid_MaterialesCantidad: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'dCantidad'
          Options.Editing = False
          Width = 34
        end
        object View_Grid_MaterialesRecibido: TcxGridDBColumn
          Caption = 'Recibido'
          DataBinding.FieldName = 'dCantidadRecibida'
          Options.Editing = False
          Width = 30
        end
        object View_Grid_MaterialesExistencia: TcxGridDBColumn
          Caption = 'Existencia'
          DataBinding.FieldName = 'dExistencia'
          Options.Editing = False
          Width = 30
        end
        object View_Grid_MaterialesCantSalida: TcxGridDBColumn
          Caption = 'Cantidad Salida '
          DataBinding.FieldName = 'CantSalida'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          Width = 40
        end
        object View_Grid_MaterialesReservados: TcxGridDBColumn
          Caption = 'Reservados'
          DataBinding.FieldName = 'Reservado'
          Options.Editing = False
          Width = 42
        end
        object View_Grid_MaterialesDisponible: TcxGridDBColumn
          DataBinding.FieldName = 'Disponible'
          Options.Editing = False
          Width = 45
        end
        object View_Grid_MaterialesFechaCosto: TcxGridDBColumn
          Caption = 'Fecha Costo'
          DataBinding.FieldName = 'dFecha'
          PropertiesClassName = 'TcxDateEditProperties'
          Options.Editing = False
          Width = 29
        end
        object View_Grid_MaterialesCosto: TcxGridDBColumn
          Caption = #218'ltimo Costo'
          DataBinding.FieldName = 'dCosto'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Width = 31
        end
        object View_Grid_MaterialesFaltante: TcxGridDBColumn
          Caption = 'Faltante'
          DataBinding.FieldName = 'dCantidadPendiente'
          Options.Editing = False
          Width = 32
        end
        object View_Grid_MaterialesMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Options.Editing = False
          Width = 32
        end
        object View_Grid_MaterialesEstado: TcxGridDBColumn
          DataBinding.FieldName = 'Estado'
          Options.Editing = False
          Width = 20
        end
      end
      object cxViewMateriales: TcxGridLevel
        GridView = View_Grid_Materiales
      end
    end
    object PanelNuevoMaterial: TPanel
      Left = 1
      Top = 127
      Width = 690
      Height = 187
      Align = alBottom
      TabOrder = 2
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Datos para recurso nuevo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 185
        Width = 688
        object dxLayoutControl1: TdxLayoutControl
          Left = 3
          Top = 17
          Width = 682
          Height = 158
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cmbMedida: TcxLookupComboBox
            Left = 306
            Top = 83
            ParentFont = False
            Properties.KeyFieldNames = 'IdMedida'
            Properties.ListColumns = <
              item
                Caption = 'Listado de Medidas'
                FieldName = 'Nombre'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = ds_medidas
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 214
          end
          object cxCodigo: TcxTextEdit
            Left = 112
            Top = 11
            Enabled = False
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
          object cxDescripcion: TcxMemo
            Left = 112
            Top = 40
            Lines.Strings = (
              'cxDescripcion')
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 37
            Width = 578
          end
          object cbSubFamilia: TcxLookupComboBox
            Left = 508
            Top = 11
            ParentFont = False
            Properties.KeyFieldNames = 'IdSubFamilia'
            Properties.ListColumns = <
              item
                Caption = 'Sub Familia:'
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsSubFamilia
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 163
          end
          object cbFamilia: TcxLookupComboBox
            Left = 286
            Top = 11
            ParentFont = False
            Properties.KeyFieldNames = 'IdFamilia'
            Properties.ListColumns = <
              item
                Caption = 'Familia:'
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsFamilia
            Properties.OnEditValueChanged = cbFamiliaPropertiesEditValueChanged
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 145
          end
          object cbMarca: TcxLookupComboBox
            Left = 520
            Top = 83
            ParentFont = False
            Properties.KeyFieldNames = 'IdMarca'
            Properties.ListColumns = <
              item
                FieldName = 'Marca'
              end>
            Properties.ListSource = dsMarca
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 145
          end
          object cbProducto: TcxLookupComboBox
            Left = 112
            Top = 83
            ParentFont = False
            Properties.KeyFieldNames = 'IdProducto'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsProducto
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 142
          end
          object edtModelo: TcxTextEdit
            Left = 306
            Top = 112
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 214
          end
          object edtNumero: TcxTextEdit
            Left = 520
            Top = 111
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 9
            Width = 151
          end
          object cxCantidad: TcxCalcEdit
            Left = 112
            Top = 112
            EditValue = 0.000000000000000000
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 121
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
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Medida'
            Control = cmbMedida
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'C'#243'digo'
            Control = cxCodigo
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 1
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            CaptionOptions.Text = 'Descripci'#243'n'
            Control = cxDescripcion
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
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahRight
            AlignVert = avClient
            CaptionOptions.Text = 'Sub Familia'
            Control = cbSubFamilia
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Familia'
            Control = cbFamilia
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignVert = avClient
            CaptionOptions.Text = 'Marca'
            Control = cbMarca
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignVert = avClient
            CaptionOptions.Text = 'Producto/Servicio'
            Control = cbProducto
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Modelo'
            Control = edtModelo
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            Index = 1
            AutoCreated = True
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Numero'
            Control = edtNumero
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Cantidad'
            Control = cxCantidad
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
    end
  end
  object cxSplitterDetalle: TcxSplitter
    Left = 692
    Top = 129
    Width = 8
    Height = 350
    AlignSplitter = salRight
  end
  object PanelDetalle: TPanel
    Left = 700
    Top = 129
    Width = 224
    Height = 350
    Align = alRight
    TabOrder = 2
    Visible = False
    object cxPageCostos: TcxPageControl
      Left = 1
      Top = 1
      Width = 222
      Height = 348
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabcosto_PU
      Properties.CustomButtons.Buttons = <>
      OnChange = cxPageCostosChange
      ClientRectBottom = 346
      ClientRectLeft = 2
      ClientRectRight = 220
      ClientRectTop = 30
      object cxTabCosto_OC: TcxTabSheet
        Caption = 'Costo por O.C.'
        ImageIndex = 0
        OnShow = cxTabCosto_OCShow
        object cxGridDetalle: TcxGrid
          Left = 0
          Top = 0
          Width = 218
          Height = 316
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridDetalleDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_costos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxColumnD3: TcxGridDBColumn
              Caption = 'O.C.'
              DataBinding.FieldName = 'Codigo'
              Width = 69
            end
            object cxColumnD1: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'dFecha'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 74
            end
            object cxColumnD2: TcxGridDBColumn
              Caption = 'Costo'
              DataBinding.FieldName = 'dCosto'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 73
            end
          end
          object cxGridDetalleLevel1: TcxGridLevel
            GridView = cxGridDetalleDBTableView1
          end
        end
      end
      object cxTabcosto_PU: TcxTabSheet
        Caption = 'Costo por P.U.'
        ImageIndex = 1
        OnShow = cxTabcosto_PUShow
        object cxGridPU: TcxGrid
          Left = 0
          Top = 0
          Width = 218
          Height = 316
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsCostoPU
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Proyecto'
              DataBinding.FieldName = 'sIdFolio'
              Width = 83
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'Costo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 94
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object cxTabProyectos: TcxTabSheet
        Caption = 'Proyectos'
        ImageIndex = 2
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 218
          Height = 316
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsExistencia
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGrid2DBTableView1Column1: TcxGridDBColumn
              Caption = 'Centro Costo'
              DataBinding.FieldName = 'CentroCosto'
            end
            object cxGrid2DBTableView1Column2: TcxGridDBColumn
              Caption = 'Almac'#233'n'
              DataBinding.FieldName = 'Almacen'
            end
            object cxGrid2DBTableView1Column3: TcxGridDBColumn
              DataBinding.FieldName = 'Existencia'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 33
    Align = alTop
    TabOrder = 3
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 922
      Height = 33
      Align = alTop
      TabOrder = 0
      object cxLabel3: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Agregar Material'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
      object layer: TcxLabel
        Left = 698
        Top = 9
        ParentFont = False
        Transparent = True
        Visible = False
      end
      inline frmBarraH11: TfrmBarraH1
        Left = 358
        Top = 1
        Width = 563
        Height = 31
        Align = alRight
        AutoSize = True
        TabOrder = 2
        ExplicitLeft = 358
        ExplicitTop = 1
        ExplicitWidth = 563
        ExplicitHeight = 31
        inherited Panel1: TPanel
          Width = 563
          Height = 31
          Align = alRight
          ExplicitWidth = 563
          ExplicitHeight = 31
          inherited btnAdd: TcxButton
            Width = 113
            Height = 29
            Caption = 'Nuevo Material'
            OnClick = btnAddClick
            ExplicitLeft = 1
            ExplicitWidth = 113
            ExplicitHeight = 29
          end
          inherited btnEdit: TcxButton
            Left = 114
            Width = 111
            Height = 29
            Caption = 'Editar Material'
            OnClick = frmBarraH11btnEditClick
            ExplicitLeft = 114
            ExplicitWidth = 111
            ExplicitHeight = 29
          end
          inherited btnDelete: TcxButton
            Left = 225
            Width = 47
            Height = 29
            Visible = False
            ExplicitLeft = 225
            ExplicitWidth = 47
            ExplicitHeight = 29
          end
          inherited btnPrinter: TcxButton
            Left = 402
            Height = 29
            Visible = False
            ExplicitLeft = 402
            ExplicitHeight = 29
          end
          inherited btnDetalle: TcxButton
            Left = 482
            Height = 29
            OnClick = btnDetalleClick
            ExplicitLeft = 482
            ExplicitHeight = 29
          end
          inherited btnRefresh: TcxButton
            Left = 272
            Width = 56
            Height = 29
            Visible = False
            ExplicitLeft = 272
            ExplicitWidth = 56
            ExplicitHeight = 29
          end
          inherited btnExporta: TcxButton
            Left = 328
            Width = 74
            Height = 29
            Visible = False
            ExplicitLeft = 328
            ExplicitWidth = 74
            ExplicitHeight = 29
          end
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 33
    Width = 924
    Height = 53
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object dxLayoutControl3: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 922
      Height = 51
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxLabel2: TcxLabel
        Left = 62
        Top = 11
        Caption = 'Tipo de Recurso'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxGuardias: TcxLookupComboBox
        Left = 166
        Top = 11
        ParentFont = False
        Properties.KeyFieldNames = 'IdTiporecurso'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = ds_Recurso
        Properties.OnChange = cxGuardiasPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 289
      end
      object cxLabel4: TcxLabel
        Left = 461
        Top = 11
        Caption = 'Cantidad'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object edtCantidad: TcxCalcEdit
        Left = 522
        Top = 11
        EditValue = 0.000000000000000000
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 81
      end
      object btnExpandir: TcxButton
        Left = 11
        Top = 11
        Width = 45
        Height = 25
        OptionsImage.ImageIndex = 65
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        OnClick = btnExpandirClick
      end
      object cxLabelOrigen: TcxLabel
        Left = 609
        Top = 11
        Caption = '-'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -19
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
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
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'cxLabelTipo'
        CaptionOptions.Visible = False
        Control = cxLabel2
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        Control = cxGuardias
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabel4
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutGroup1
        Control = edtCantidad
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem21: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Visible = False
        Control = btnExpandir
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = cxLabelOrigen
        ControlOptions.ShowBorder = False
        Index = 5
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 86
    Width = 924
    Height = 43
    Align = alTop
    TabOrder = 5
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 922
      Height = 41
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cbAdicional: TcxComboBox
        Left = 73
        Top = 10
        ParentFont = False
        Properties.Items.Strings = (
          '10'
          '15')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 104
      end
      object cbFinanciamiento: TcxComboBox
        Left = 281
        Top = 10
        ParentFont = False
        Properties.Items.Strings = (
          '3'
          '6'
          '9')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 104
      end
      object cxLabel1: TcxLabel
        Left = 10
        Top = 10
        Caption = 'Adicional'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 183
        Top = 10
        Caption = 'Financiamiento'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahRight
        AlignVert = avTop
        Control = cbAdicional
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahRight
        Control = cbFinanciamiento
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = cxLabel5
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  object mnuPop: TPopupMenu
    Tag = 9
    Images = connection.cxIconos16
    Left = 441
    Top = 80
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
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object zAnterior: TUniQuery
    Connection = connection.Uconnection
    Left = 792
    Top = 96
  end
  object materiales: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    FilterOptions = [foCaseInsensitive]
    Left = 784
    Top = 104
  end
  object ds_materiales: TDataSource
    DataSet = materiales
    Left = 848
    Top = 104
  end
  object zRecurso: TUniQuery
    Connection = connection.Uconnection
    Left = 504
    Top = 80
  end
  object ds_Recurso: TDataSource
    DataSet = zRecurso
    Left = 752
    Top = 48
  end
  object uCostos: TUniQuery
    Connection = connection.Uconnection
    Left = 608
    Top = 80
  end
  object ds_costos: TDataSource
    DataSet = uCostos
    Left = 600
    Top = 120
  end
  object zAsigna: TUniQuery
    Connection = connection.Uconnection
    Left = 536
    Top = 248
  end
  object uMedidas: TUniQuery
    Connection = connection.Uconnection
    Left = 728
    Top = 232
  end
  object ds_medidas: TDataSource
    DataSet = uMedidas
    Left = 736
    Top = 272
  end
  object dsFamilia: TDataSource
    DataSet = zFamilia
    Left = 792
    Top = 48
  end
  object zFamilia: TUniQuery
    Connection = connection.Uconnection
    Left = 696
    Top = 72
  end
  object dsSubFamilia: TDataSource
    DataSet = zSubFamilia
    Left = 552
    Top = 80
  end
  object zSubFamilia: TUniQuery
    Connection = connection.Uconnection
    Left = 848
    Top = 64
  end
  object zMarca: TUniQuery
    Connection = connection.Uconnection
    Left = 568
    Top = 104
  end
  object dsMarca: TDataSource
    DataSet = zMarca
    Left = 632
    Top = 104
  end
  object zproducto: TUniQuery
    Connection = connection.Uconnection
    Left = 688
    Top = 40
  end
  object dsProducto: TDataSource
    DataSet = zproducto
    Left = 640
    Top = 40
  end
  object zInsumos: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    Left = 512
    Top = 88
  end
  object zCostoPU: TUniQuery
    Connection = connection.Uconnection
    Left = 779
    Top = 206
  end
  object dsCostoPU: TDataSource
    DataSet = zCostoPU
    Left = 787
    Top = 262
  end
  object Entradas: TUniQuery
    Connection = connection.Uconnection
    Left = 744
    Top = 97
  end
  object zExistenciaEntrada: TUniQuery
    Connection = connection.Uconnection
    Left = 800
    Top = 329
  end
  object zInsumoCC: TUniQuery
    Left = 172
    Top = 294
  end
  object dsInsumoCC: TDataSource
    DataSet = zInsumoCC
    Left = 172
    Top = 342
  end
  object ProcExistenCC: TUniStoredProc
    StoredProcName = 'CreaTablaExistenciaCC'
    SQL.Strings = (
      'CALL CreaTablaExistenciaCC(:Contrato)')
    Connection = connection.Uconnection
    Left = 484
    Top = 363
    ParamData = <
      item
        DataType = ftString
        Name = 'Contrato'
        ParamType = ptInput
        Size = 20
        Value = nil
      end>
    CommandStoredProcName = 'CreaTablaExistenciaCC'
  end
  object zExistencia: TUniQuery
    Left = 617
    Top = 256
  end
  object dsExistencia: TDataSource
    DataSet = zExistencia
    Left = 585
    Top = 232
  end
end
