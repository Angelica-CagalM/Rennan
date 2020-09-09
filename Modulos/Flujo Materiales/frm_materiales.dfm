object frmMateriales: TfrmMateriales
  Left = 195
  Top = 55
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Insumos / Materiales'
  ClientHeight = 540
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
  Position = poDesigned
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
    TabOrder = 0
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
    Top = 103
    Width = 1061
    Height = 437
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object PanelTipo: TPanel
      Left = 1
      Top = 1
      Width = 152
      Height = 435
      Align = alLeft
      TabOrder = 0
      object Grid_Bitacora: TcxGrid
        Left = 1
        Top = 1
        Width = 150
        Height = 433
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object BView_filtro: TcxGridDBTableView
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
          OnCellClick = BView_filtroCellClick
          DataController.DataSource = ds_catalogo
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnFilterRecord = BView_empresaDataControllerFilterRecord
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object BView_filtroColumn1: TcxGridDBColumn
            Caption = 'Tipo'
            Visible = False
            GroupIndex = 0
          end
          object BView_filtroColumn2: TcxGridDBColumn
            Caption = 'Producto/Servicio'
            DataBinding.FieldName = 'Nombre'
          end
        end
        object Grid_BitacoraLevel1: TcxGridLevel
          GridView = BView_filtro
        end
      end
    end
    object cxSplitTipo: TcxSplitter
      Left = 153
      Top = 1
      Width = 6
      Height = 435
    end
    object Panel1: TPanel
      Left = 159
      Top = 1
      Width = 307
      Height = 435
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Panel2: TPanel
        Left = 1
        Top = 76
        Width = 305
        Height = 358
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object pnlBtn2: TPanel
          Left = 1
          Top = 321
          Width = 303
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 113
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 113
            ExplicitTop = 1
            ExplicitWidth = 189
            ExplicitHeight = 34
            inherited Panel1: TPanel
              Width = 189
              Height = 34
              ExplicitWidth = 189
              ExplicitHeight = 34
              inherited btnPost: TcxButton
                Left = 3
                Top = 2
                OnClick = btnPostClick
                ExplicitLeft = 3
                ExplicitTop = 2
              end
              inherited btnCancel: TcxButton
                Left = 96
                Top = 1
                OnClick = btnCancelClick
                ExplicitLeft = 96
                ExplicitTop = 1
              end
            end
          end
        end
        object cxGroupBox1: TcxGroupBox
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'Informaci'#243'n Material'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 320
          Width = 303
          object dxLayoutControl1: TdxLayoutControl
            Left = 3
            Top = 17
            Width = 297
            Height = 293
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxCodigo: TcxDBTextEdit
              Left = 83
              Top = 40
              DataBinding.DataField = 'Codigo'
              DataBinding.DataSource = ds_Insumos
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
              Width = 117
            end
            object cxMaterial: TcxDBMemo
              Left = 83
              Top = 71
              DataBinding.DataField = 'Material'
              DataBinding.DataSource = ds_Insumos
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 4
              Height = 64
              Width = 357
            end
            object cxMedida: TcxDBLookupComboBox
              Left = 83
              Top = 211
              DataBinding.DataField = 'IdMedida'
              DataBinding.DataSource = ds_Insumos
              ParentFont = False
              Properties.KeyFieldNames = 'IdMedida'
              Properties.ListColumns = <
                item
                  Caption = 'Medida'
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = ds_medida
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
              Width = 134
            end
            object cxMarca: TcxDBLookupComboBox
              Left = 83
              Top = 240
              DataBinding.DataField = 'IdMarca'
              DataBinding.DataSource = ds_Insumos
              ParentFont = False
              Properties.KeyFieldNames = 'IdMarca'
              Properties.ListColumns = <
                item
                  FieldName = 'Marca'
                end>
              Properties.ListSource = ds_marca
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
              Width = 205
            end
            object cxFecha: TcxDBDateEdit
              Left = 379
              Top = 11
              DataBinding.DataField = 'dFecha'
              DataBinding.DataSource = ds_Insumos
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
              Width = 102
            end
            object cxProducto: TcxDBLookupComboBox
              Left = 307
              Top = 40
              DataBinding.DataField = 'IdProducto'
              DataBinding.DataSource = ds_Insumos
              ParentFont = False
              Properties.KeyFieldNames = 'IdProducto'
              Properties.ListColumns = <
                item
                  Caption = 'Producto/Servicio'
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsProducto
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
              Width = 501
            end
            object cxFamilia: TcxDBLookupComboBox
              Left = 301
              Top = 211
              DataBinding.DataField = 'IdFamilia'
              DataBinding.DataSource = ds_Insumos
              ParentFont = False
              Properties.KeyFieldNames = 'IdFamilia'
              Properties.ListColumns = <
                item
                  Caption = 'Familia'
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = ds_familia
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 8
              OnEnter = EnterControl
              OnExit = cxFamiliaExit
              OnKeyUp = GlobalKeyUp
              Width = 244
            end
            object cxSubFamilia: TcxDBLookupComboBox
              Left = 430
              Top = 211
              DataBinding.DataField = 'IdSubFamilia'
              DataBinding.DataSource = ds_Insumos
              ParentFont = False
              Properties.KeyFieldNames = 'IdSubFamilia'
              Properties.ListColumns = <
                item
                  Caption = 'Sub Familia'
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = ds_subfamilia
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
              Width = 261
            end
            object cxTalla: TcxDBTextEdit
              Left = 439
              Top = 240
              DataBinding.DataField = 'dTalla'
              DataBinding.DataSource = ds_Insumos
              ParentFont = False
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
              Width = 116
            end
            object cxModelo: TcxDBTextEdit
              Left = 247
              Top = 240
              DataBinding.DataField = 'sModelo'
              DataBinding.DataSource = ds_Insumos
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
              OnKeyUp = GlobalKeyUp
              Width = 262
            end
            object cxAgregaMedida: TcxButton
              Left = 223
              Top = 211
              Width = 25
              Height = 23
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 7
              OnClick = cxAgregaMedidaClick
            end
            object cxAgregaFamilia: TcxButton
              Left = 327
              Top = 211
              Width = 25
              Height = 23
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 9
              OnClick = cxAgregaFamiliaClick
            end
            object cxAgregaSubFamilia: TcxButton
              Left = 456
              Top = 211
              Width = 25
              Height = 23
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 11
              OnClick = cxAgregaSubFamiliaClick
            end
            object btnAgregaMarca: TcxButton
              Left = 170
              Top = 240
              Width = 25
              Height = 23
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 13
              OnClick = btnAgregaMarcaClick
            end
            object cxDescription: TcxDBMemo
              Left = 83
              Top = 141
              DataBinding.DataField = 'Description'
              DataBinding.DataSource = ds_Insumos
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
              Height = 64
              Width = 357
            end
            object btnAgregarServicio: TcxButton
              Left = 458
              Top = 40
              Width = 23
              Height = 25
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 3
              OnClick = btnAgregarServicioClick
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahParentManaged
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'C'#243'digo'
              Control = cxCodigo
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'Descripci'#243'n'
              Control = cxMaterial
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Medida'
              Control = cxMedida
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              CaptionOptions.Text = 'Marca'
              Control = cxMarca
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahRight
              CaptionOptions.Text = 'Fecha'
              Control = cxFecha
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Producto/Servicio'
              Control = cxProducto
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Familia'
              Control = cxFamilia
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Sub Familia'
              Control = cxSubFamilia
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 5
              AutoCreated = True
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Numero #'
              Control = cxTalla
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Modelo'
              Control = cxModelo
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = cxAgregaMedida
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = cxAgregaFamilia
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = cxAgregaSubFamilia
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem41: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = btnAgregaMarca
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem50: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'Description'
              Control = cxDescription
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem51: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnAgregarServicio
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 68
        Width = 305
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_materiales: TcxGrid
        Left = 1
        Top = 1
        Width = 305
        Height = 67
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_Materiales: TcxGridDBTableView
          OnKeyUp = cxView_MaterialesKeyUp
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
          OnCellClick = cxView_MaterialesCellClick
          OnCellDblClick = cxView_MaterialesCellDblClick
          DataController.DataSource = ds_Insumos
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxView_MaterialesDataControllerFilterChanged
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.OnBeforeChange = cxView_MaterialesDataControllerFilterBeforeChange
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
          object cxView_MaterialesColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Width = 20
          end
          object cxView_MaterialesColumn3: TcxGridDBColumn
            Tag = 7
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'Material'
            Width = 84
          end
          object cxView_MaterialesColumnTR: TcxGridDBColumn
            Caption = 'Tipo de Recurso'
            DataBinding.FieldName = 'GruposMaterial'
            Width = 64
          end
          object cxView_MaterialesColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Medida'
            Width = 20
          end
          object cxView_MaterialesColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Familia'
            Width = 20
          end
          object cxView_MaterialesColumn8: TcxGridDBColumn
            Caption = 'Sub Familia'
            DataBinding.FieldName = 'SubFamilia'
            Width = 20
          end
          object cxView_MaterialesColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Marca'
            Width = 20
          end
          object cxView_MaterialesColumn6: TcxGridDBColumn
            Caption = 'Modelo'
            DataBinding.FieldName = 'sModelo'
            Width = 20
          end
          object cxView_MaterialesColumn13: TcxGridDBColumn
            Caption = 'Reservados'
            DataBinding.FieldName = 'Reservado'
            Width = 20
          end
          object cxView_MaterialesColumn7: TcxGridDBColumn
            Caption = 'Talla'
            DataBinding.FieldName = 'dTalla'
            Width = 20
          end
          object cxView_MaterialesColumn9: TcxGridDBColumn
            Caption = 'Existencia'
            DataBinding.FieldName = 'dExistencia'
            Width = 20
          end
          object cxView_MaterialesColumn11: TcxGridDBColumn
            DataBinding.FieldName = 'Stock'
            Width = 27
          end
          object cxView_MaterialesColumn10: TcxGridDBColumn
            Tag = 8
            Caption = 'Costo'
            DataBinding.FieldName = 'dCosto'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '$,0.00;-$,0.00'
            OnGetProperties = cxView_MaterialesColumn10GetProperties
            Width = 20
          end
          object cxView_MaterialesColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'Moneda'
            Visible = False
            Options.Editing = False
          end
        end
        object grid_materialesLevel1: TcxGridLevel
          GridView = cxView_Materiales
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 466
      Top = 1
      Width = 6
      Height = 435
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 472
      Top = 1
      Width = 588
      Height = 435
      Align = alRight
      TabOrder = 4
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 586
        Height = 433
        Align = alClient
        TabOrder = 0
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 584
          Height = 35
          Align = alTop
          TabOrder = 0
          DesignSize = (
            584
            35)
          object cxNuevoDetalle: TcxButton
            Left = 327
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
            OnClick = cxNuevoDetalleClick
          end
          object cxEditaDetalle: TcxButton
            Left = 414
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
            OnClick = cxEditaDetalleClick
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
          object cxEliminar: TcxButton
            Left = 501
            Top = 2
            Width = 81
            Height = 26
            Caption = 'Eliminar'
            TabOrder = 3
            OnClick = cxEliminarClick
          end
        end
        object PanelDown: TPanel
          Left = 1
          Top = 397
          Width = 584
          Height = 35
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            584
            35)
          object cxCancelarDetalle: TcxButton
            Left = 491
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
            Left = 398
            Top = 6
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
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 36
          Width = 584
          Height = 361
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Properties.ActivePage = cxTabInforme
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          OnChange = cxPageDetalleChange
          ClientRectBottom = 359
          ClientRectLeft = 2
          ClientRectRight = 582
          ClientRectTop = 30
          object cxPageExistencia: TcxTabSheet
            Caption = 'Existencias'
            ImageIndex = 59
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGridExistencia: TcxGrid
              Left = 0
              Top = 0
              Width = 580
              Height = 190
              Align = alClient
              TabOrder = 0
              object cxGridExistenciaDBTableView1: TcxGridDBTableView
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
                DataController.DataSource = dsExistencia
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Total: 0.0'
                    Kind = skSum
                    Column = ColExist
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.Indicator = True
                object ColMaterial: TcxGridDBColumn
                  DataBinding.FieldName = 'Almacen'
                  Width = 286
                end
                object colMaximo: TcxGridDBColumn
                  Caption = 'M'#225'ximo'
                  DataBinding.FieldName = 'Maximo'
                  Width = 82
                end
                object colMinimo: TcxGridDBColumn
                  Caption = 'M'#237'nimo'
                  DataBinding.FieldName = 'Minimo'
                  Width = 88
                end
                object ColExist: TcxGridDBColumn
                  Caption = 'Existencia'
                  DataBinding.FieldName = 'dExistencia'
                  HeaderAlignmentHorz = taCenter
                  Width = 110
                end
              end
              object cxGridExistenciaLevel1: TcxGridLevel
                GridView = cxGridExistenciaDBTableView1
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 196
              Width = 580
              Height = 133
              Align = alBottom
              TabOrder = 1
              Visible = False
              object dxLayoutControl8: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 578
                Height = 131
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxMaximo: TcxDBCalcEdit
                  Left = 65
                  Top = 40
                  DataBinding.DataField = 'Maximo'
                  DataBinding.DataSource = dsExistencia
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
                object cxAlmacen: TcxDBLookupComboBox
                  Left = 65
                  Top = 11
                  DataBinding.DataField = 'IdAlmacen'
                  DataBinding.DataSource = dsExistencia
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdAlmacen'
                  Properties.ListColumns = <
                    item
                      FieldName = 'sDescripcion'
                    end>
                  Properties.ListSource = dsAlmacen
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 145
                end
                object cxMinimo: TcxDBCalcEdit
                  Left = 344
                  Top = 40
                  DataBinding.DataField = 'Minimo'
                  DataBinding.DataSource = dsExistencia
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 223
                end
                object dxLayoutGroup2: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem43: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup11
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'M'#225'ximo'
                  Control = cxMaximo
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem48: TdxLayoutItem
                  Parent = dxLayoutGroup2
                  CaptionOptions.Text = 'Almac'#233'n'
                  Control = cxAlmacen
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem47: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup11
                  AlignVert = avClient
                  CaptionOptions.Text = 'M'#237'mino'
                  Control = cxMinimo
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup2
                  LayoutDirection = ldHorizontal
                  Index = 1
                  AutoCreated = True
                end
              end
            end
            object cxSplitter6: TcxSplitter
              Left = 0
              Top = 190
              Width = 580
              Height = 6
              AlignSplitter = salBottom
              Visible = False
            end
          end
          object cxPageTransitos: TcxTabSheet
            Caption = 'Tr'#225'nsitos'
            ImageIndex = 71
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 580
              Height = 329
              Align = alClient
              TabOrder = 0
              object cxGridDBTableView1: TcxGridDBTableView
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
                DataController.DataSource = dsExistencia
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Total: 0.0'
                    Kind = skSum
                    Column = cxGridDBColumn4
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.Indicator = True
                object cxGridDBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Almacen'
                  Width = 248
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Destino'
                  Width = 223
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'dTransito'
                  HeaderAlignmentHorz = taCenter
                  Width = 95
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
          end
          object cxPageImagen: TcxTabSheet
            Caption = 'Imagen'
            ImageIndex = 53
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object PanelDown2: TPanel
              Left = 0
              Top = 168
              Width = 580
              Height = 161
              Align = alBottom
              TabOrder = 0
              object dxLayoutControl6: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 578
                Height = 159
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object bImagen: TImage
                  Left = 279
                  Top = 12
                  Width = 287
                  Height = 163
                  Stretch = True
                end
                object cxVisualizarImg: TcxButton
                  Left = 12
                  Top = 12
                  Width = 149
                  Height = 25
                  Caption = 'Visualizar Imagen'
                  TabOrder = 0
                  OnClick = cxVisualizarImgClick
                end
                object btnAgregar: TcxButton
                  Left = 12
                  Top = 44
                  Width = 101
                  Height = 25
                  Caption = 'Cargar Imagen'
                  TabOrder = 1
                  OnClick = btnAgregarClick
                end
                object cxImgActivo: TdxDBToggleSwitch
                  Left = 12
                  Top = 76
                  Caption = 'Activo'
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
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 2
                end
                object dxLayoutGroup1: TdxLayoutGroup
                  AlignHorz = ahParentManaged
                  AlignVert = avParentManaged
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem9: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  AlignHorz = ahRight
                  AlignVert = avClient
                  Control = bImagen
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup1
                  AlignHorz = ahClient
                  AlignVert = avTop
                  Index = 1
                  AutoCreated = True
                end
                object dxLayoutItem17: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'cxButton2'
                  CaptionOptions.Visible = False
                  Control = cxVisualizarImg
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem16: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  CaptionOptions.Text = 'cxButton1'
                  CaptionOptions.Visible = False
                  Control = btnAgregar
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem12: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'dxDBToggleSwitch1'
                  CaptionOptions.Visible = False
                  Visible = False
                  Control = cxImgActivo
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
              end
            end
            object cxSplit2: TcxSplitter
              Left = 0
              Top = 162
              Width = 580
              Height = 6
              AlignSplitter = salBottom
              Visible = False
            end
            object cxGridImagen: TcxGrid
              Left = 0
              Top = 0
              Width = 580
              Height = 162
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object cxGridViewImagen: TcxGridDBTableView
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
                OnCellClick = cxGridViewImagenCellClick
                DataController.DataSource = ds_imagenes
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
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object cxGridViewImagenColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Nombre'
                  Width = 392
                end
                object cxGridViewImagenColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Activo'
                  Width = 86
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxGridViewImagen
              end
            end
          end
          object cxPageCertificados: TcxTabSheet
            Caption = 'Certificados'
            ImageIndex = 61
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGridCertificado: TcxGrid
              Left = 0
              Top = 0
              Width = 580
              Height = 116
              Align = alClient
              TabOrder = 0
              object cxGridCertificados: TcxGridDBTableView
                PopupMenu = mCerts
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
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
                OnCellDblClick = cxGridCertificadosCellDblClick
                DataController.DataSource = dsCertificado
                DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object colCodigo: TcxGridDBColumn
                  DataBinding.FieldName = 'Codigo'
                  Width = 79
                end
                object colNombre: TcxGridDBColumn
                  Caption = 'Certificado'
                  DataBinding.FieldName = 'Documento'
                  Width = 320
                end
                object colActivo: TcxGridDBColumn
                  Caption = 'Electr'#243'nico'
                  DataBinding.FieldName = 'DocumentoDigital'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.DefaultImageIndex = 9
                  Properties.Images = connection.cxIconos16
                  Properties.Items = <>
                  Width = 68
                end
              end
              object cxGridCertificadoLevel1: TcxGridLevel
                GridView = cxGridCertificados
              end
            end
            object cxSplitter5: TcxSplitter
              Left = 0
              Top = 116
              Width = 580
              Height = 8
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelDown7: TPanel
              Left = 0
              Top = 147
              Width = 580
              Height = 182
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl7: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 578
                Height = 180
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxButton1: TcxButton
                  Left = 343
                  Top = 67
                  Width = 121
                  Height = 25
                  Caption = 'Cargar PDF'
                  OptionsImage.ImageIndex = 26
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 4
                  OnClick = cxButton1Click
                end
                object cxDocumento: TcxDBLookupComboBox
                  Left = 81
                  Top = 11
                  DataBinding.DataField = 'IdDocumento'
                  DataBinding.DataSource = dsCertVP
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdDocumento'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Documento'
                    end>
                  Properties.ListSource = dsCatalogo_docto
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 352
                end
                object cxActivoDocumento: TdxDBToggleSwitch
                  Left = 352
                  Top = 40
                  Caption = 'Activo'
                  DataBinding.DataField = 'Activo'
                  DataBinding.DataSource = dsCertVP
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
                  TabOrder = 3
                end
                object edtFecha: TcxDBDateEdit
                  Left = 81
                  Top = 40
                  DataBinding.DataField = 'FechaRegistro'
                  DataBinding.DataSource = dsCertVP
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 117
                end
                object btnAgregarDocto: TcxButton
                  Left = 439
                  Top = 11
                  Width = 25
                  Height = 23
                  OptionsImage.ImageIndex = 0
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 1
                  OnClick = btnAgregarDoctoClick
                end
                object dxLayoutControl7Group_Root: TdxLayoutGroup
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem37: TdxLayoutItem
                  Parent = dxLayoutControl7Group_Root
                  AlignHorz = ahRight
                  AlignVert = avTop
                  CaptionOptions.Text = 'cxButton1'
                  CaptionOptions.Visible = False
                  Control = cxButton1
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutItem24: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup4
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Documento'
                  Control = cxDocumento
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem36: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup10
                  AlignHorz = ahRight
                  CaptionOptions.Text = 'dxDBToggleSwitch1'
                  CaptionOptions.Visible = False
                  Control = cxActivoDocumento
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem35: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup10
                  AlignVert = avClient
                  CaptionOptions.Text = 'Fecha'
                  Control = edtFecha
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl7Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 1
                  AutoCreated = True
                end
                object dxLayoutItem38: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup4
                  AlignVert = avClient
                  CaptionOptions.Text = 'cxButton2'
                  CaptionOptions.Visible = False
                  Control = btnAgregarDocto
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl7Group_Root
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
              end
            end
            object vPDF: TcxGroupBox
              Left = 0
              Top = 124
              Align = alBottom
              ParentFont = False
              TabOrder = 3
              Height = 23
              Width = 580
            end
          end
          object cxPageCostos: TcxTabSheet
            Caption = 'Costos'
            ImageIndex = 27
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGridCostos: TcxGrid
              Left = 0
              Top = 0
              Width = 580
              Height = 153
              Align = alClient
              TabOrder = 0
              object cxGridCostosDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Enabled = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Enabled = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = True
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsCostos
                DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.NoDataToDisplayInfoText = '< No se han registrado '#243'rdenes de compras con este material >'
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object colOrdenCompra: TcxGridDBColumn
                  Caption = 'Orden de Compra'
                  DataBinding.FieldName = 'Codigo'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Options.Editing = False
                  Width = 123
                end
                object colProveedor: TcxGridDBColumn
                  DataBinding.FieldName = 'Proveedor'
                  Width = 102
                end
                object ColPrecio: TcxGridDBColumn
                  Caption = 'Precio'
                  DataBinding.FieldName = 'dCosto'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  OnGetProperties = ColPrecioGetProperties
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 146
                end
                object ColFecha: TcxGridDBColumn
                  Caption = 'Fecha'
                  DataBinding.FieldName = 'dIdFecha'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 101
                end
                object ColMoneda: TcxGridDBColumn
                  DataBinding.FieldName = 'Moneda'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 94
                end
              end
              object cxGridCostosLevel1: TcxGridLevel
                GridView = cxGridCostosDBTableView1
              end
            end
            object cxSplitter4: TcxSplitter
              Left = 0
              Top = 153
              Width = 580
              Height = 8
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelDonw6: TPanel
              Left = 0
              Top = 161
              Width = 580
              Height = 168
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl5: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 578
                Height = 166
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxDBCurrencyEdit2: TcxDBCurrencyEdit
                  Left = 110
                  Top = 11
                  DataBinding.DataField = 'dCostoBaseMN'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 107
                end
                object cxDBCurrencyEdit3: TcxDBCurrencyEdit
                  Left = 110
                  Top = 39
                  DataBinding.DataField = 'dFleteMN'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 107
                end
                object cxDBCurrencyEdit4: TcxDBCurrencyEdit
                  Left = 110
                  Top = 67
                  DataBinding.DataField = 'dDerechosMN'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 107
                end
                object cxDBCurrencyEdit5: TcxDBCurrencyEdit
                  Left = 110
                  Top = 95
                  DataBinding.DataField = 'dMermasMN'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  Width = 107
                end
                object cxDBCurrencyEdit6: TcxDBCurrencyEdit
                  Left = 110
                  Top = 123
                  DataBinding.DataField = 'dPrecioMN'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 4
                  Width = 107
                end
                object cxDBCurrencyEdit7: TcxDBCurrencyEdit
                  Left = 320
                  Top = 11
                  DataBinding.DataField = 'dCostoBaseDLL'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 5
                  Width = 105
                end
                object cxDBCurrencyEdit8: TcxDBCurrencyEdit
                  Left = 320
                  Top = 39
                  DataBinding.DataField = 'dFleteDLL'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 6
                  Width = 105
                end
                object cxDBCurrencyEdit9: TcxDBCurrencyEdit
                  Left = 320
                  Top = 67
                  DataBinding.DataField = 'dDerechosDLL'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 7
                  Width = 105
                end
                object cxDBCurrencyEdit10: TcxDBCurrencyEdit
                  Left = 320
                  Top = 95
                  DataBinding.DataField = 'dMermasDLL'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 8
                  Width = 105
                end
                object cxDBCurrencyEdit11: TcxDBCurrencyEdit
                  Left = 320
                  Top = 123
                  DataBinding.DataField = 'dPrecioDLL'
                  DataBinding.DataSource = dsCostos
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 9
                  Width = 113
                end
                object dxLayoutControl5Group_Root: TdxLayoutGroup
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem25: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup8
                  CaptionOptions.Text = 'Costos Base MN'
                  Control = cxDBCurrencyEdit2
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem23: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup8
                  CaptionOptions.Text = 'Flete MN'
                  Control = cxDBCurrencyEdit3
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem26: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup8
                  CaptionOptions.Text = 'Derechos MN'
                  Control = cxDBCurrencyEdit4
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutItem27: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup8
                  CaptionOptions.Text = 'Mermas MN'
                  Control = cxDBCurrencyEdit5
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutItem28: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup8
                  CaptionOptions.Text = 'Precio MN'
                  Control = cxDBCurrencyEdit6
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object dxLayoutItem29: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup9
                  CaptionOptions.Text = 'Costo Base DLL'
                  Control = cxDBCurrencyEdit7
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl5Group_Root
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutItem30: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup9
                  CaptionOptions.Text = 'Flete DLL'
                  Control = cxDBCurrencyEdit8
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl5Group_Root
                  Index = 1
                  AutoCreated = True
                end
                object dxLayoutItem31: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup9
                  CaptionOptions.Text = 'Derechos DLL'
                  Control = cxDBCurrencyEdit9
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutItem32: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup9
                  CaptionOptions.Text = 'Mermas DLL'
                  Control = cxDBCurrencyEdit10
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutItem33: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup9
                  CaptionOptions.Text = 'Precio DLL'
                  Control = cxDBCurrencyEdit11
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
              end
            end
          end
          object cxPageSerie: TcxTabSheet
            Caption = 'No. Serie'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGridSerie: TcxGrid
              Left = 0
              Top = 0
              Width = 580
              Height = 155
              Align = alClient
              TabOrder = 0
              object cxGridSerieDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Enabled = False
                Navigator.Buttons.Delete.Enabled = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Enabled = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Enabled = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsSerie
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
                OptionsView.Indicator = True
                object colAlmacen: TcxGridDBColumn
                  DataBinding.FieldName = 'Almacen'
                  Width = 101
                end
                object colNumSerie: TcxGridDBColumn
                  Caption = 'No.Serie'
                  DataBinding.FieldName = 'sNumeroSerie'
                  Width = 105
                end
                object colLote: TcxGridDBColumn
                  Caption = 'Lote'
                  DataBinding.FieldName = 'sLote'
                  Width = 94
                end
                object colCantidad: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 155
                end
              end
              object cxGridSerieLevel1: TcxGridLevel
                GridView = cxGridSerieDBTableView1
              end
            end
            object cxSplitter3: TcxSplitter
              Left = 0
              Top = 155
              Width = 580
              Height = 8
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelDown5: TPanel
              Left = 0
              Top = 163
              Width = 580
              Height = 166
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl4: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 578
                Height = 164
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxDBTextEdit1: TcxDBTextEdit
                  Left = 112
                  Top = 40
                  DataBinding.DataField = 'sNumeroSerie'
                  DataBinding.DataSource = dsSerie
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 3
                  Width = 121
                end
                object cxDBTextEdit2: TcxDBTextEdit
                  Left = 112
                  Top = 67
                  DataBinding.DataField = 'sLote'
                  DataBinding.DataSource = dsSerie
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 4
                  Width = 121
                end
                object lcbAlmaceb: TcxDBLookupComboBox
                  Left = 112
                  Top = 11
                  DataBinding.DataField = 'IdAlmacen'
                  DataBinding.DataSource = dsSerie
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdAlmacen'
                  Properties.ListColumns = <
                    item
                      FieldName = 'sDescripcion'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Properties.ListSource = dsAlmacen
                  Style.HotTrack = False
                  TabOrder = 0
                  Width = 137
                end
                object cxDBTextEdit3: TcxDBTextEdit
                  Left = 112
                  Top = 94
                  DataBinding.DataField = 'dCantidad'
                  DataBinding.DataSource = dsSerie
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 5
                  Width = 121
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 112
                  Top = 121
                  DataBinding.DataField = 'NumeroEconomico'
                  DataBinding.DataSource = dsSerie
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 6
                  Width = 121
                end
                object lcbFabricante: TcxDBLookupComboBox
                  Left = 391
                  Top = 13
                  DataBinding.DataField = 'IdFabricante'
                  DataBinding.DataSource = dsSerie
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdFabricante'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Fabricante'
                    end>
                  Properties.ListSource = dsFabricante
                  Style.HotTrack = False
                  TabOrder = 1
                  Width = 145
                end
                object btnAgregarFabricante: TcxButton
                  Left = 542
                  Top = 11
                  Width = 25
                  Height = 23
                  OptionsImage.ImageIndex = 0
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 2
                  OnClick = btnAgregarFabricanteClick
                end
                object dxLayoutControl4Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Visible = False
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem18: TdxLayoutItem
                  Parent = dxLayoutControl4Group_Root
                  CaptionOptions.Text = 'No. Serie'
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem21: TdxLayoutItem
                  Parent = dxLayoutControl4Group_Root
                  CaptionOptions.Text = 'Lote'
                  Control = cxDBTextEdit2
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutItem22: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup7
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Almacen'
                  Control = lcbAlmaceb
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem34: TdxLayoutItem
                  Parent = dxLayoutControl4Group_Root
                  CaptionOptions.Text = 'Cantidad'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutItem39: TdxLayoutItem
                  Parent = dxLayoutControl4Group_Root
                  CaptionOptions.Text = 'Num. Econ'#243'mico'
                  Control = cxDBTextEdit4
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object dxLayoutItem40: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup7
                  AlignVert = avBottom
                  CaptionOptions.Text = 'Fabricante'
                  Control = lcbFabricante
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl4Group_Root
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutItem42: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup7
                  AlignVert = avClient
                  CaptionOptions.Visible = False
                  Control = btnAgregarFabricante
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
              end
            end
          end
          object cxPageMovimientos: TcxTabSheet
            Caption = 'Movimientos'
            ImageIndex = 22
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGridMovimiento: TcxGrid
              Left = 0
              Top = 0
              Width = 580
              Height = 170
              Align = alClient
              PopupMenu = PopupMovimientos
              TabOrder = 0
              object cxGridMovimientos: TcxGridDBTableView
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
                DataController.DataSource = dsMovimientos
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
                OptionsView.Indicator = True
                object colDescripcion: TcxGridDBColumn
                  Caption = 'Fecha'
                  DataBinding.FieldName = 'FechaMov'
                  Width = 126
                end
                object colTipo: TcxGridDBColumn
                  DataBinding.FieldName = 'Folio'
                  Width = 131
                end
                object cxGridMovimientosColumn4: TcxGridDBColumn
                  Caption = 'Trazabilidad'
                  Width = 85
                end
                object cxGridMovimientosColumn1: TcxGridDBColumn
                  Caption = 'Tipo de Movimiento'
                  DataBinding.FieldName = 'Tipo'
                  Width = 147
                end
                object cxGridMovimientosColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Cantidad'
                  Width = 74
                end
                object cxGridMovimientosColumn3: TcxGridDBColumn
                  Caption = 'Destino'
                  Width = 100
                end
              end
              object cxGridMovimientoLevel1: TcxGridLevel
                GridView = cxGridMovimientos
              end
            end
            object cxSplitter2: TcxSplitter
              Left = 0
              Top = 170
              Width = 580
              Height = 5
              AlignSplitter = salBottom
              Visible = False
            end
            object Panel4: TPanel
              Left = 0
              Top = 175
              Width = 580
              Height = 154
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl3: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 578
                Height = 152
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cbClasificacion: TcxDBComboBox
                  Left = 88
                  Top = 38
                  DataBinding.DataField = 'sClasificacion'
                  DataBinding.DataSource = dsMovimientos
                  ParentFont = False
                  Properties.Items.Strings = (
                    'Entrada'
                    'Salida'
                    'Traspaso Salida'
                    'Traspaso Entrada')
                  Style.HotTrack = False
                  TabOrder = 1
                  Width = 121
                end
                object edtDescripcion: TcxDBTextEdit
                  Left = 88
                  Top = 11
                  DataBinding.DataField = 'sDescripcion'
                  DataBinding.DataSource = dsMovimientos
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 0
                  Width = 354
                end
                object dxLayoutControl3Group_Root: TdxLayoutGroup
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem19: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  CaptionOptions.Text = 'Clasificaci'#243'n'
                  Control = cbClasificacion
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem20: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  CaptionOptions.Text = 'Descripci'#243'n'
                  Control = edtDescripcion
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
              end
            end
          end
          object cxTabInforme: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            OnShow = cxTabInformeShow
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 580
              Height = 305
              Align = alTop
              TabOrder = 0
              object dxLayoutControl2: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 572
                Height = 297
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                DesignSize = (
                  572
                  297)
                object opcionImprimir: TcxRadioGroup
                  Left = 11
                  Top = 11
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Tipo de Informe'
                  ParentFont = False
                  Properties.Items = <
                    item
                      Caption = 'Imprimir Datos Filtrados'
                      Value = '1'
                    end
                    item
                      Caption = 'Imprimir Datos Filtrados con Costos'
                      Value = '2'
                    end
                    item
                      Caption = 'Imprimir Datos Filtrados con Existencias'
                      Value = '3'
                    end
                    item
                      Caption = 'Imprimir Datos Filtrados con Movimientos'
                      Value = '4'
                    end>
                  Properties.OnChange = opcionImprimirPropertiesChange
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Height = 190
                  Width = 550
                  object cbAlm: TcxLookupComboBox
                    Left = 263
                    Top = 115
                    ParentFont = False
                    Properties.KeyFieldNames = 'Id'
                    Properties.ListColumns = <
                      item
                        FieldName = 'Nombre'
                      end>
                    Properties.ListSource = dsComboReporte
                    TabOrder = 4
                    Width = 209
                  end
                  object cbTipoMov: TcxLookupComboBox
                    Left = 263
                    Top = 156
                    ParentFont = False
                    Properties.KeyFieldNames = 'Id'
                    Properties.ListColumns = <
                      item
                        FieldName = 'Nombre'
                      end>
                    Properties.ListSource = dsComboReporte
                    TabOrder = 5
                    Width = 209
                  end
                end
                object cxImprimeInventario: TcxButton
                  Left = 11
                  Top = 269
                  Width = 150
                  Height = 25
                  Caption = 'Inventario'
                  OptionsImage.ImageIndex = 35
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 3
                  OnClick = cxImprimeInventarioClick
                end
                object cxImprimeMaximos: TcxButton
                  Left = 11
                  Top = 238
                  Width = 150
                  Height = 25
                  Caption = 'M'#225'ximos/M'#237'nimos'
                  OptionsImage.ImageIndex = 41
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 2
                  OnClick = cxImprimeMaximosClick
                end
                object btnImpInforme: TcxButton
                  Left = 399
                  Top = 207
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
                object dxLayoutItem44: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  CaptionOptions.Text = 'cxRadioGroup1'
                  CaptionOptions.Visible = False
                  Control = opcionImprimir
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem46: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'cxButton2'
                  CaptionOptions.Visible = False
                  Control = cxImprimeInventario
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutItem49: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'cxButton3'
                  CaptionOptions.Visible = False
                  Control = cxImprimeMaximos
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutItem45: TdxLayoutItem
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
      end
    end
  end
  object PanelProgreso: TPanel
    Left = 0
    Top = 35
    Width = 1061
    Height = 22
    Align = alTop
    TabOrder = 2
    Visible = False
    object progreso: TcxProgressBar
      Left = 105
      Top = 1
      Align = alClient
      ParentFont = False
      Properties.AssignedValues.Max = True
      TabOrder = 0
      Width = 955
    end
    object LabelProceso: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = '  Progreso'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 104
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 57
    Width = 1061
    Height = 46
    Align = alTop
    TabOrder = 3
    object dxLayoutControl9: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1059
      Height = 44
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxImportar: TcxButton
        Left = 174
        Top = 11
        Width = 107
        Height = 30
        Hint = 'Refrescar Datos'
        Caption = 'Importar Excel'
        OptionsImage.ImageIndex = 71
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxImportarClick
      end
      object btnRefresh: TcxButton
        Left = 62
        Top = 11
        Width = 106
        Height = 30
        Hint = 'Refrescar Datos'
        Caption = 'Actualiza BD'
        OptionsImage.ImageIndex = 72
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnRefreshClick
      end
      object btnExpandir: TcxButton
        Left = 11
        Top = 11
        Width = 45
        Height = 28
        OptionsImage.ImageIndex = 65
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        OnClick = btnExpandirClick
      end
      object cxRepetidos: TcxButton
        Left = 287
        Top = 11
        Width = 130
        Height = 30
        Hint = 'Refrescar Datos'
        Caption = 'Eliminar Repetidos'
        OptionsImage.ImageIndex = 71
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxRepetidosClick
      end
      object cxButton2: TcxButton
        Tag = 13
        Left = 423
        Top = 11
        Width = 122
        Height = 29
        Caption = 'Existencias En 0'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0006000000090000000A0000000A0000000A0000000A0000000A0000000A0000
          000A0000000A0000000A0000000A0000000A0000000600000002000000067D53
          45BDAE7360FFAD735FFFAE735FFFAD725EFFAD725EFFAC715DFFAC715DFFAC70
          5DFFAB705CFFAC705CFFAC705BFFAC6F5CFF7B5042BE0000000600000008AF76
          63FFF6EEE9FFF6EFE9FFF6EFE8FFF6EEE8FFF6EEE7FFF6EEE8FFF5EEE8FFF5ED
          E8FFF6EDE8FFF6ECE7FFF5EDE7FFF5EDE7FFAC705DFF0000000900000008B278
          65FFF9F0EBFFF4EAE3FFF4EAE3FFF9F4F1FFF9F4F1FFF4E9E2FFF4E9E3FFF4EA
          E2FFF4EAE3FFF9F4F1FFF9F4F0FFF7EFE9FFAD725EFF0000000900000007B37A
          67FFF9F3EFFFF4EBE5FF6D4332FF6D4232FFF4EAE5FFF6EAE3FFF4EBE3FFF4EA
          E3FF6C4131FF6B4130FFF9F4F2FFF9F1ECFFAE7460FF0000000800000007B57D
          6AFFFAF5F1FFF6EBE7FF6F4534FFFAF5F2FFF6EBE6FFF6EDE6FFF6EBE6FFF6EB
          E6FFF6EDE6FF6D4332FFFAF5F2FFFAF3EFFFB07662FF0000000800000006B67F
          6DFFFBF7F5FFF7EDE9FF724835FFFBF6F4FFF6EEE9FFF6EEE7FFF6EEE7FFF7ED
          E7FFF6EDE7FF704633FFFAF6F3FFFAF6F2FFB17864FF0000000700000006B882
          70FFFCF9F7FFF7EEEAFF754936FFFBF7F4FFF7EFEAFFF7EEE9FFF7EEEAFFF7EE
          EAFFF7EEE9FF714736FFFAF6F4FFFBF7F5FFB37A67FF0000000700000005BA85
          73FFFDFAF9FFF7EFEBFF754B3AFFFBF7F5FFF8F0EBFFF7EFEBFFF7EFEAFFF8EF
          EBFFF7EFEBFF754936FFFBF6F5FFFCF9F7FFB47D6AFF0000000600000005BC88
          76FFFDFBFBFFF8F0EDFF794F3AFFFBF7F6FFFBF7F6FFF8F0EEFFF7F0EDFFF8F0
          EDFFF8EFEDFF764C39FFFBF7F6FFFDFAFAFFB67F6DFF0000000600000004BE8A
          78FFFEFDFCFFF8F2EFFF7B513CFF7A503DFFF8F2EFFFFAF2EFFFF8F2EEFFF8F2
          EFFF794F3CFF794D3AFFF8F2EEFFFDFCFBFFB88270FF0000000500000004BF8D
          7BFFFEFEFDFFFAF3F0FFFAF2F0FFFAF2EFFFF8F3EFFFFAF2F0FFFAF3F0FFF8F2
          EFFFFAF3F0FFFAF3F0FFF8F2EFFFFEFDFCFFBA8473FF0000000500000003C08F
          7DFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFFEFEFDFFBB8775FF0000000400000002906A
          5EBFC2907FFFC1907EFFC18F7EFFC18F7EFFC08E7DFFC08E7CFFBF8D7CFFBF8D
          7BFFBF8C7AFFBF8B7AFFBE8B79FFBD8A79FF8C6659BF00000002000000000000
          0002000000020000000300000003000000030000000300000003000000030000
          0003000000030000000300000003000000030000000200000001}
        TabOrder = 4
        OnClick = cxButton2Click
      end
      object dxLayoutGroup3: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem52: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Visible = False
        Control = cxImportar
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem53: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Visible = False
        Control = btnRefresh
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem54: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahLeft
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnExpandir
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem55: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = cxRepetidos
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem56: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.ShowBorder = False
        Index = 4
      end
    end
  end
  object ds_Insumos: TDataSource
    AutoEdit = False
    DataSet = zqInsumos
    Left = 16
    Top = 320
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 113
    Top = 176
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
    object CopiarMedida: TMenuItem
      Caption = 'Copiar Unidad de Medida'
      ImageIndex = 60
      OnClick = CopiarMedidaClick
    end
    object CopiarFamilia: TMenuItem
      Caption = 'Copiar Familia'
      ImageIndex = 60
      OnClick = CopiarFamiliaClick
    end
    object Opcionesespeciales1: TMenuItem
      Caption = 'Opciones especiales'
      object SeleccionarMovimientosMat: TMenuItem
        Caption = 'Seleccionar Movimientos Material'
        ImageIndex = 60
        OnClick = SeleccionarMovimientosMatClick
      end
      object PegarMovimientosMat: TMenuItem
        Caption = 'Pegar Movimientos Material'
        Enabled = False
        ImageIndex = 59
        OnClick = PegarMovimientosMatClick
      end
    end
    object PegarMedida: TMenuItem
      Caption = 'Pegar Unidad de Medida'
      Enabled = False
      ImageIndex = 59
      OnClick = PegarMedidaClick
    end
    object PegarFamilia: TMenuItem
      Caption = 'Pegar Familia'
      Enabled = False
      ImageIndex = 59
      OnClick = PegarFamiliaClick
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
  object ds_TipoSub: TDataSource
    AutoEdit = False
    DataSet = zqTipoSub
    Left = 176
    Top = 120
  end
  object zqInsumos: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 73
    Top = 319
  end
  object zqTipoSub: TUniQuery
    Connection = connection.Uconnection
    Left = 230
    Top = 119
  end
  object ds_subfamilia: TDataSource
    AutoEdit = False
    DataSet = zqSubfamilia
    Left = 349
    Top = 118
  end
  object zqSubfamilia: TUniQuery
    Connection = connection.Uconnection
    Left = 286
    Top = 119
  end
  object ds_catalogo: TDataSource
    AutoEdit = False
    DataSet = catalogo
    Left = 16
    Top = 176
  end
  object catalogo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 67
    Top = 176
  end
  object ds_familia: TDataSource
    AutoEdit = False
    DataSet = zqFamilia
    Left = 16
    Top = 424
  end
  object zqFamilia: TUniQuery
    Connection = connection.Uconnection
    Left = 70
    Top = 421
  end
  object ds_medida: TDataSource
    AutoEdit = False
    DataSet = zqMedida
    Left = 16
    Top = 368
  end
  object zqMedida: TUniQuery
    Connection = connection.Uconnection
    Left = 70
    Top = 367
  end
  object frxReport1: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43261.028344548610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 778
    Top = 248
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxDatos
        DataSetName = 'frxDatos'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' Financiero'
        Value = Null
      end
      item
        Name = 'EquipoTotalMN'
        Value = 
          '<TotalEquipo>*IIF(<DBOrdenesdeTrabajo."lGeneraEquipo"> = '#39'Si'#39',<D' +
          'BEquipos."dVentaMN">,0)'
      end
      item
        Name = 'EquipoTotalDLL'
        Value = 
          '<TotalEquipo>*IIF(<DBOrdenesdeTrabajo."lGeneraEquipo"> = '#39'Si'#39',<D' +
          'BEquipos."dVentaDLL">,0)'
      end
      item
        Name = 'PersonalTotalMN'
        Value = 
          '<TotalPersonal>*IIF(<DBOrdenesdeTrabajo."lGeneraPersonal"> = '#39'Si' +
          #39',<BDPersonal."dVentaMN">,0)'
      end
      item
        Name = 'PersonalTotalDLL'
        Value = 
          '<TotalPersonal>*IIF(<DBOrdenesdeTrabajo."lGeneraPersonal"> = '#39'Si' +
          #39',<BDPersonal."dVentaDLL">,0)'
      end
      item
        Name = 'ConsumiblesTotalMN'
        Value = 
          '<TotalConsumuble>*IIF(<DBOrdenesdeTrabajo."lGeneraConsumibles"> ' +
          '= '#39'Si'#39',<DBComsumibles."dVentaMN">,0)'
      end
      item
        Name = 'ConsumiblesTotalDLL'
        Value = 
          '<TotalConsumuble>*IIF(<DBOrdenesdeTrabajo."lGeneraConsumibles"> ' +
          '= '#39'Si'#39',<DBComsumibles."dVentaDLL">,0)'
      end
      item
        Name = 'TotalEquipo'
        Value = '<DBEquipos."dCantidad">*<DBEquipos."iJornada">'
      end
      item
        Name = 'TotalPersonal'
        Value = '<BDPersonal."dCantidad">*<BDPersonal."iJornada">'
      end
      item
        Name = 'TotalConsumuble'
        Value = '<DBComsumibles."dCantidad">*<DBComsumibles."iJornada">'
      end>
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
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 143.622140000000000000
        Top = 18.897650000000000000
        Width = 978.898270000000000000
        object Memo1: TfrxMemoView
          Left = 2.000000000000000000
          Top = 0.102350000000001300
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 157.299320000000000000
          Top = 3.102350000000001000
          Width = 579.047620000000000000
          Height = 67.031540000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6160640
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 6.897650000000000000
          Top = 3.102350000000001000
          Width = 143.842610000000000000
          Height = 67.811070000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo46: TfrxMemoView
          Left = 2.000000000000000000
          Top = 83.251956300000000000
          Width = 271.393940000000000000
          Height = 52.157480310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE MAXIMOS Y MINIMOS MATERIALES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 271.173470000000000000
          Top = 83.251956300000000000
          Width = 467.173470000000000000
          Height = 52.157480310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[Contrato."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 15.118120000000000000
        ParentFont = False
        Top = 393.071120000000000000
        Width = 978.898270000000000000
        AllowSplit = True
        DataSet = frxDatos
        DataSetName = 'frxDatos'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo21: TfrxMemoView
          Left = 443.472428740000000000
          Width = 49.133846932857130000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataSetName = 'insumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 39.685039370000000000
          Width = 90.708649210000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDatos."Codigo"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 130.393688580000000000
          Width = 313.700787400000000000
          Height = 15.118120000000000000
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
            '[frxDatos."Material"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 639.520100000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataSetName = 'insumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatos."Minimo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 560.015777320000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataSetName = 'insumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."Maximo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 492.118430000000000000
          Width = 68.031540000000010000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataSetName = 'insumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatos."dExistencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 1.889763780000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
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
        end
        object Memo16: TfrxMemoView
          Left = 715.331170000000000000
          Width = 260.787570000001100000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataSetName = 'insumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatos."Minimo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 40.897650000000000000
        Top = 525.354670000000100000
        Width = 978.898270000000000000
        object Memo2: TfrxMemoView
          Left = 291.023810000000000000
          Top = 18.897650000000000000
          Width = 449.764070000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Setup."sSlogan"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 18.897649999999770000
          Width = 275.905690000000000000
          Height = 22.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 430.866420000000000000
        Width = 978.898270000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.633593060000000000
        ParentFont = False
        Top = 347.716760000000000000
        Width = 978.898270000000000000
        Condition = 'frxDatos."sContrato"'
        ReprintOnNewPage = True
        object Memo17: TfrxMemoView
          Left = 130.393688580000000000
          Width = 313.700990000000000000
          Height = 22.633593060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 443.472428740000000000
          Width = 49.133889999999990000
          Height = 22.633593060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 39.685039370000000000
          Width = 90.708720000000000000
          Height = 22.633593060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 560.015777320000000000
          Width = 79.370130000000000000
          Height = 22.633593060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 639.520100000000000000
          Width = 75.590600000000000000
          Height = 22.633593060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'DIFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 492.118430000000000000
          Width = 68.031540000000010000
          Height = 22.633593060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'EXISTENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 1.889763780000000000
          Width = 37.795300000000000000
          Height = 22.633593060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 715.331170000000000000
          Width = 260.787570000000000000
          Height = 22.633593060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'COMENTARIOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 464.882190000000000000
        Width = 978.898270000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 978.898270000000000000
        Condition = 'frxDatos."IdAlmacen"'
        object Memo12: TfrxMemoView
          Left = 1.779530000000000000
          Width = 975.874171970001400000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 13421772
          Memo.UTF8W = (
            'ALMACEN :  [frxDatos."Almacen"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 264.567100000000000000
        Width = 978.898270000000000000
        Condition = 'frxDatos."IdFamilia"'
        object Memo7: TfrxMemoView
          Left = 1.779530000000000000
          Width = 975.874171970001400000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 13421772
          Memo.UTF8W = (
            'FAMILIA :  [frxDatos."Familia"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 978.898270000000000000
        Condition = 'frxDatos."IdSubFamilia"'
        object Memo10: TfrxMemoView
          Left = 1.779530000000000000
          Width = 975.874171970001400000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 13421772
          Memo.UTF8W = (
            'SUBFAMILIA :  [frxDatos."SubFamilia"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object ds_filtro: TDataSource
    AutoEdit = False
    DataSet = filtro
    Left = 16
    Top = 224
  end
  object filtro: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 65
    Top = 224
  end
  object ds_marca: TDataSource
    AutoEdit = False
    DataSet = zqMarca
    Left = 16
    Top = 128
  end
  object zqMarca: TUniQuery
    Connection = connection.Uconnection
    Left = 63
    Top = 128
  end
  object Proveedores: TUniQuery
    Connection = connection.Uconnection
    Left = 74
    Top = 272
  end
  object dsProveedores: TDataSource
    AutoEdit = False
    DataSet = Proveedores
    Left = 16
    Top = 272
  end
  object OpenPicture: TOpenPictureDialog
    Left = 987
    Top = 439
  end
  object QryBusca: TUniQuery
    Connection = connection.Uconnection
    Left = 1010
    Top = 59
  end
  object zProducto: TUniQuery
    Connection = connection.Uconnection
    Left = 744
    Top = 376
  end
  object dsProducto: TDataSource
    DataSet = zProducto
    Left = 688
    Top = 377
  end
  object zImagen: TUniQuery
    Connection = connection.Uconnection
    Left = 794
    Top = 375
  end
  object zMovimientos: TUniQuery
    Connection = connection.Uconnection
    Left = 423
    Top = 165
  end
  object dsMovimientos: TDataSource
    DataSet = zMovimientos
    Left = 369
    Top = 213
  end
  object zSerie: TUniQuery
    Connection = connection.Uconnection
    Left = 931
    Top = 91
  end
  object dsSerie: TDataSource
    DataSet = zSerie
    Left = 937
    Top = 108
  end
  object zAlmacen: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT * FROM alm_almacenes;')
    Left = 337
    Top = 214
  end
  object dsAlmacen: TDataSource
    DataSet = zAlmacen
    Left = 358
    Top = 166
  end
  object zCostos: TUniQuery
    Connection = connection.Uconnection
    Left = 262
    Top = 348
  end
  object dsCostos: TDataSource
    DataSet = zCostos
    Left = 313
    Top = 348
  end
  object zExistencia: TUniQuery
    Connection = connection.Uconnection
    Left = 857
    Top = 68
  end
  object dsExistencia: TDataSource
    DataSet = zExistencia
    Left = 782
    Top = 100
  end
  object zCatalogo_docto: TUniQuery
    Connection = connection.Uconnection
    Left = 426
    Top = 117
  end
  object dsCatalogo_docto: TDataSource
    DataSet = zCatalogo_docto
    Left = 204
    Top = 286
  end
  object zCertificado: TUniQuery
    Connection = connection.Uconnection
    Left = 503
    Top = 212
  end
  object dsCertificado: TDataSource
    DataSet = zCertificado
    Left = 565
    Top = 212
  end
  object dlgSavePDF: TSaveDialog
    Left = 899
    Top = 439
  end
  object dlgPDF: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 939
    Top = 439
  end
  object zImagenes: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select im.IdInsumoImg, im.IdInsumo, im.FechaRegistro, im.Activo,' +
        ' '#39#39' as Nombre'
      'from alm_insumos_imagen im'
      'where im.IdInsumo =:IdInsumo'
      'Order by Activo, im.FechaRegistro;')
    OnCalcFields = zImagenesCalcFields
    Left = 179
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdInsumo'
        Value = nil
      end>
    object zImagenesNombre: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nombre'
      Calculated = True
    end
    object zImagenesIdInsumoImg: TIntegerField
      FieldName = 'IdInsumoImg'
    end
    object zImagenesIdInsumo: TIntegerField
      FieldName = 'IdInsumo'
      Required = True
    end
    object zImagenesFechaRegistro: TDateField
      FieldName = 'FechaRegistro'
    end
    object zImagenesActivo: TStringField
      FieldName = 'Activo'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object ds_imagenes: TDataSource
    DataSet = zImagenes
    Left = 242
    Top = 215
  end
  object zUpImg: TUniQuery
    Connection = connection.Uconnection
    Left = 364
    Top = 349
  end
  object mCerts: TPopupMenu
    Images = connection.cxIconos16
    Left = 920
    Top = 328
    object VerDocumento1: TMenuItem
      Caption = 'Vista Previa'
      ImageIndex = 9
      OnClick = VerDocumento1Click
    end
    object btnDescargar: TMenuItem
      Caption = 'Descargar PDF'
      Visible = False
      OnClick = btnDescargarClick
    end
  end
  object zCertVP: TUniQuery
    Connection = connection.Uconnection
    Left = 999
    Top = 60
  end
  object dsCertVP: TDataSource
    DataSet = zCertVP
    Left = 1009
    Top = 19
  end
  object zFabricante: TUniQuery
    Connection = connection.Uconnection
    Left = 625
    Top = 212
  end
  object dsFabricante: TDataSource
    DataSet = zFabricante
    Left = 709
    Top = 132
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 676
    Top = 288
  end
  object zComboReporte: TUniQuery
    Connection = connection.Uconnection
    Left = 581
    Top = 261
  end
  object dsComboReporte: TDataSource
    DataSet = zComboReporte
    Left = 499
    Top = 262
  end
  object PopupMovimientos: TPopupMenu
    Images = frmrepositorio.IconosTodos16
    OnPopup = PopupMovimientosPopup
    Left = 520
    Top = 368
    object popmenuSelecciona: TMenuItem
      Caption = 'Seleccionar Movimientos Material'
      ImageIndex = 25
      OnClick = popmenuSeleccionaClick
    end
    object popmenuAplica: TMenuItem
      Caption = 'Aplicar Movimientos Seleccionados'
      Enabled = False
      ImageIndex = 143
      OnClick = popmenuAplicaClick
    end
  end
  object frxDatos: TfrxDBDataset
    UserName = 'frxDatos'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 979
    Top = 406
  end
  object Moneda: TUniQuery
    Connection = connection.Uconnection
    Left = 416
    Top = 272
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 412
    Top = 321
  end
  object OpenXLS: TOpenDialog
    OnClose = OpenXLSClose
    DefaultExt = 'XLS'
    Filter = 
      'Archivo de Microsoft Excel 2003|*.XLS|Archivo de Microsoft Excel' +
      ' |*.XLSX'
    OnFolderChange = OpenXLSFolderChange
    OnSelectionChange = OpenXLSSelectionChange
    Left = 536
    Top = 130
  end
  object ExcelWorkbook1: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 664
    Top = 64
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 736
    Top = 48
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 816
    Top = 32
  end
  object zCorreo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select cc.* from master_cnf_correo cc'
      'inner join usuarios u on (u.sIdusuario = cc.sIdUsuario)'
      'where '
      '(cc.sContrato = :Contrato)  and'
      '(cc.IdEmpresa = :Empresa) AND (cc.sIdUsuario =:Usuario);')
    Left = 56
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        Value = nil
      end>
  end
  object zqEnviados: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select distinct pc.Correo  from master_proveedor_contacto pc')
    Left = 288
    Top = 279
  end
  object zMensaje: TUniQuery
    Connection = connection.Uconnection
    Left = 512
    Top = 439
  end
  object ds_mensaje: TDataSource
    Left = 568
    Top = 439
  end
  object zDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 624
    Top = 440
  end
  object ds_destino: TDataSource
    DataSet = zDestino
    Left = 662
    Top = 432
  end
  object PopupMateriales: TPopupMenu
    Left = 457
    Top = 106
    object btnExistencia: TMenuItem
      Caption = 'Existencia Por Centro de Costo'
      OnClick = btnExistenciaClick
    end
  end
  object zAjustes: TUniQuery
    Connection = connection.Uconnection
    Left = 384
    Top = 16
  end
  object salida_almacen: TUniQuery
    Connection = connection.Uconnection
    Left = 320
    Top = 8
  end
  object zReq: TUniQuery
    Connection = connection.Uconnection
    Left = 272
    Top = 8
  end
  object zCentro_costos: TUniQuery
    Connection = connection.Uconnection
    Left = 432
  end
  object zMaterialCosto: TUniQuery
    Connection = connection.Uconnection
    Left = 224
    Top = 8
  end
  object Entrada_almacen: TUniQuery
    Connection = connection.Uconnection
    Left = 176
    Top = 8
  end
end
