object frmOrdenes_Compra: TfrmOrdenes_Compra
  Left = 336
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ordenes de Compra/Servicios'
  ClientHeight = 532
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 532
    Align = alLeft
    TabOrder = 0
    object Grid_OrdenesCompra: TcxGrid
      Left = 1
      Top = 42
      Width = 328
      Height = 489
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
      object BView_OC: TcxGridDBTableView
        OnDblClick = BView_OCDblClick
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
        OnCellClick = BView_OCCellClick
        DataController.DataSource = ds_looktripulacion
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object BView_OCColumn1: TcxGridDBColumn
          Caption = 'O.T.'
          DataBinding.FieldName = 'OT'
          Width = 104
        end
        object BView_OCColumn2: TcxGridDBColumn
          Caption = 'O.C.'
          DataBinding.FieldName = 'OrdenCompra'
          HeaderAlignmentHorz = taCenter
          Width = 74
        end
        object mDescripcion: TcxGridDBColumn
          Caption = 'Proveedor'
          DataBinding.FieldName = 'Nombre'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 136
        end
      end
      object Grid_OrdenesCompraLevel1: TcxGridLevel
        GridView = BView_OC
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 328
      Height = 41
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 7
        Top = 14
        Width = 41
        Height = 15
        Caption = 'F. Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 161
        Top = 14
        Width = 57
        Height = 15
        Caption = 'F. Termino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 330
    Top = 0
    Width = 6
    Height = 532
  end
  object Panel2: TPanel
    Left = 336
    Top = 0
    Width = 788
    Height = 532
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 786
      Height = 51
      Align = alTop
      TabOrder = 0
      DesignSize = (
        786
        51)
      object LabelProceso: TcxLabel
        Left = 5
        Top = 13
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
        Left = 83
        Top = 14
        Anchors = [akLeft, akRight]
        ParentFont = False
        Properties.AssignedValues.Max = True
        TabOrder = 1
        Visible = False
        Width = 64
      end
      object cxImprimir: TcxButton
        Left = 153
        Top = 5
        Width = 133
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Orden de Compra'
        OptionsImage.ImageIndex = 38
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = cxImprimirClick
      end
      object cxNuevo: TcxButton
        Left = 403
        Top = 5
        Width = 87
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Agregar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxNuevoClick
      end
      object cxVer: TcxButton
        Left = 685
        Top = 5
        Width = 81
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Visualizar'
        OptionsImage.ImageIndex = 36
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxVerClick
      end
      object cxEditar: TcxButton
        Left = 496
        Top = 5
        Width = 87
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Ediar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxEditarClick
      end
      object cxBorrar: TcxButton
        Left = 589
        Top = 5
        Width = 87
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Eliminar'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxBorrarClick
      end
    end
    object PanelActa: TPanel
      Left = 1
      Top = 52
      Width = 735
      Height = 479
      Align = alClient
      TabOrder = 1
      Visible = False
      object Panel5: TPanel
        Left = 1
        Top = 437
        Width = 733
        Height = 41
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          733
          41)
        object cxAceptar: TcxButton
          Left = 539
          Top = 4
          Width = 87
          Height = 32
          Anchors = [akTop, akRight]
          Caption = 'Aceptar'
          OptionsImage.ImageIndex = 34
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxAceptarClick
        end
        object cxCancelar: TcxButton
          Left = 632
          Top = 4
          Width = 87
          Height = 32
          Anchors = [akTop, akRight]
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
          OnClick = cxCancelarClick
        end
      end
      object PanelOC: TPanel
        Left = 1
        Top = 1
        Width = 215
        Height = 436
        Align = alClient
        TabOrder = 1
        object cxGrupoOC: TcxGroupBox
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'Datos Orden de Compra'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 193
          Width = 213
          object dxLayoutControl1: TdxLayoutControl
            Left = 3
            Top = 17
            Width = 207
            Height = 166
            Align = alClient
            Anchors = [akRight]
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            DesignSize = (
              207
              166)
            object cxOt: TcxDBLookupComboBox
              Left = 116
              Top = 68
              DataBinding.DataField = 'sContrato'
              DataBinding.DataSource = ds_orden_compra
              ParentFont = False
              Properties.KeyFieldNames = 'sContrato'
              Properties.ListColumns = <
                item
                  FieldName = 'sMascara'
                end>
              Properties.ListSource = ds_contrato
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
              Width = 365
            end
            object cxOrdenCompra: TcxDBTextEdit
              Left = 116
              Top = 11
              DataBinding.DataField = 'OrdenCompra'
              DataBinding.DataSource = ds_orden_compra
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
              Width = 365
            end
            object cxProveedor: TcxDBLookupComboBox
              Left = 116
              Top = 97
              DataBinding.DataField = 'IdProveedor'
              DataBinding.DataSource = ds_orden_compra
              ParentFont = False
              Properties.KeyFieldNames = 'IdProveedor'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = ds_proveedores
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
              Width = 326
            end
            object cxDescripcionOC: TcxDBMemo
              Left = 586
              Top = 11
              Anchors = [akRight]
              DataBinding.DataField = 'Nota'
              DataBinding.DataSource = ds_orden_compra
              ParentFont = False
              Properties.ScrollBars = ssVertical
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
              Height = 110
              Width = 340
            end
            object cxButtonProveedor: TcxButton
              Left = 448
              Top = 97
              Width = 33
              Height = 25
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 4
              OnClick = cxButtonProveedorClick
            end
            object cxFecha: TcxDBDateEdit
              Left = 116
              Top = 39
              DataBinding.DataField = 'Fecha'
              DataBinding.DataSource = ds_orden_compra
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
              Width = 365
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahRight
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'Orden de Trabajo'
              Control = cxOt
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl1Item6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'Orden de Compra'
              Control = cxOrdenCompra
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              Parent = dxLayoutControl1Group2
              AlignHorz = ahClient
              CaptionOptions.Text = 'Proveedor'
              Control = cxProveedor
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahRight
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'Descripcion O.C.'
              Control = cxDescripcionOC
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutControl1Group2
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = cxButtonProveedor
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxLayoutControl1Item9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'Fecha:'
              Control = cxFecha
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxSplitter3: TcxSplitter
          Left = 1
          Top = 194
          Width = 213
          Height = 6
          AlignSplitter = salBottom
        end
        object PanelOpcionesOC: TPanel
          Left = 1
          Top = 200
          Width = 213
          Height = 235
          Align = alBottom
          TabOrder = 2
          object PanelSuperior: TPanel
            Left = 1
            Top = 1
            Width = 211
            Height = 39
            Align = alTop
            TabOrder = 0
            DesignSize = (
              211
              39)
            object cxNuevoDetalle: TcxButton
              Left = -136
              Top = 4
              Width = 76
              Height = 27
              Anchors = [akRight]
              Caption = 'Nuevo'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 0
              OnClick = cxNuevoDetalleClick
            end
            object cxEditarDetalle: TcxButton
              Left = -54
              Top = 4
              Width = 76
              Height = 27
              Anchors = [akRight]
              Caption = 'Editar'
              OptionsImage.ImageIndex = 1
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 1
              OnClick = cxEditarDetalleClick
            end
            object cxEliminarDetalle: TcxButton
              Left = 28
              Top = 4
              Width = 76
              Height = 27
              Anchors = [akRight]
              Caption = 'Eliminar'
              OptionsImage.ImageIndex = 4
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 2
              OnClick = cxEliminarDetalleClick
            end
            object cxDetalleEquipo: TcxButton
              Left = 110
              Top = 4
              Width = 94
              Height = 27
              Anchors = [akRight]
              Caption = 'Detalle EQ'
              OptionsImage.ImageIndex = 20
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 3
              OnClick = cxDetalleEquipoClick
            end
          end
          object PanelInferior: TPanel
            Left = 1
            Top = 40
            Width = 211
            Height = 194
            Align = alClient
            TabOrder = 1
            object cxFolio: TcxGrid
              Left = 1
              Top = 1
              Width = 209
              Height = 192
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitLeft = 4
              ExplicitTop = -2
              object cxViewfolio: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.Visible = fvNever
                DataController.DataSource = ds_Oc_detalle
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                OptionsData.Appending = True
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn1: TcxGridDBColumn
                  Caption = 'Anexo'
                  DataBinding.FieldName = 'sAnexo'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'sAnexo'
                  Properties.ListColumns = <
                    item
                      FieldName = 'sEtiqueta'
                    end>
                  Properties.ListSource = ds_anexos
                  Properties.OnChange = cxGridDBColumn1PropertiesChange
                  Width = 60
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  Caption = 'Partida'
                  DataBinding.FieldName = 'sIdPartidaAnexo'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'IdRecurso'
                  Properties.ListColumns = <
                    item
                      Caption = 'Partida'
                      FieldName = 'IdRecurso'
                    end>
                  Properties.ListSource = ds_partidaAnexo
                  Properties.OnChange = cxGridDBColumn2PropertiesChange
                  HeaderAlignmentHorz = taCenter
                  Width = 51
                end
                object cxViewfolioColumn3: TcxGridDBColumn
                  DataBinding.FieldName = 'Descripcion'
                  Options.Editing = False
                  Width = 271
                end
                object cxViewfolioColumn4: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Options.Editing = False
                  Width = 42
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  DataBinding.FieldName = 'Cantidad'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 31
                end
                object cxViewfolioColumn1: TcxGridDBColumn
                  Caption = 'Costo M.N.'
                  DataBinding.FieldName = 'CostoMN'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = '$,0.00;-$,0.00'
                  Width = 44
                end
                object cxViewfolioColumn2: TcxGridDBColumn
                  Caption = 'Costo USD'
                  DataBinding.FieldName = 'CostoDLL'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = '$,0.00;-$,0.00'
                  Width = 44
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxViewfolio
              end
            end
          end
        end
      end
      object cxSplitDetalle: TcxSplitter
        Left = 216
        Top = 1
        Width = 6
        Height = 436
        AlignSplitter = salRight
        Visible = False
      end
      object PanelOCDetalle: TPanel
        Left = 222
        Top = 1
        Width = 512
        Height = 436
        Align = alRight
        TabOrder = 3
        Visible = False
        object PanelSuperiorDet: TPanel
          Left = 1
          Top = 1
          Width = 510
          Height = 62
          Align = alClient
          TabOrder = 0
          DesignSize = (
            510
            62)
          object cxCatalogoNuevo: TcxButton
            Left = 7
            Top = 14
            Width = 130
            Height = 27
            Anchors = [akLeft]
            Caption = 'Agregar Catalogo'
            OptionsImage.ImageIndex = 6
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
          end
          object cxRentaNuevo: TcxButton
            Left = 267
            Top = 14
            Width = 76
            Height = 27
            Anchors = [akRight]
            Caption = 'Nuevo'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
          end
          object cxRentaEditar: TcxButton
            Left = 349
            Top = 14
            Width = 76
            Height = 27
            Anchors = [akRight]
            Caption = 'Editar'
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 2
          end
          object cxRentaEliminar: TcxButton
            Left = 431
            Top = 14
            Width = 76
            Height = 27
            Anchors = [akRight]
            Caption = 'Eliminar'
            OptionsImage.ImageIndex = 4
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 3
          end
        end
        object PanelInferiorDet: TPanel
          Left = 1
          Top = 63
          Width = 510
          Height = 372
          Align = alBottom
          TabOrder = 1
          object cxPageControl1: TcxPageControl
            Left = 1
            Top = 1
            Width = 508
            Height = 370
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = cxTabSheet1
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 368
            ClientRectLeft = 2
            ClientRectRight = 506
            ClientRectTop = 29
            object cxTabSheet1: TcxTabSheet
              Caption = 'En Renta (A Bordo)'
              ImageIndex = 0
              object cxGrid1: TcxGrid
                Left = 0
                Top = 0
                Width = 504
                Height = 339
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
                  FilterBox.Visible = fvNever
                  DataController.DataSource = ds_Oc_detalle
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  FilterRow.Visible = True
                  OptionsData.Appending = True
                  OptionsData.Inserting = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxGridDBColumn3: TcxGridDBColumn
                    Caption = 'Marca'
                    DataBinding.FieldName = 'sAnexo'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.KeyFieldNames = 'sAnexo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'sEtiqueta'
                      end>
                    Properties.ListSource = ds_anexos
                    Properties.OnChange = cxGridDBColumn1PropertiesChange
                    Width = 55
                  end
                  object cxGridDBColumn5: TcxGridDBColumn
                    Caption = 'Modelo'
                    DataBinding.FieldName = 'sIdPartidaAnexo'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.KeyFieldNames = 'IdRecurso'
                    Properties.ListColumns = <
                      item
                        Caption = 'Partida'
                        FieldName = 'IdRecurso'
                      end>
                    Properties.ListSource = ds_partidaAnexo
                    Properties.OnChange = cxGridDBColumn2PropertiesChange
                    HeaderAlignmentHorz = taCenter
                    Width = 56
                  end
                  object cxGridDBColumn6: TcxGridDBColumn
                    Caption = 'No. Serie'
                    DataBinding.FieldName = 'Descripcion'
                    Options.Editing = False
                    Width = 85
                  end
                  object cxGridDBColumn7: TcxGridDBColumn
                    Caption = 'Medida'
                    DataBinding.FieldName = 'sMedida'
                    Options.Editing = False
                    Width = 59
                  end
                  object cxGridDBColumn8: TcxGridDBColumn
                    DataBinding.FieldName = 'Cantidad'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 43
                  end
                  object cxGridDBColumn9: TcxGridDBColumn
                    Caption = 'Manfiesto'
                    DataBinding.FieldName = 'CostoMN'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.DisplayFormat = '$,0.00;-$,0.00'
                    Width = 63
                  end
                  object cxGridDBColumn10: TcxGridDBColumn
                    Caption = 'Fecha'
                    DataBinding.FieldName = 'CostoDLL'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.DisplayFormat = '$,0.00;-$,0.00'
                    Width = 61
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
            end
            object cxTabSheet2: TcxTabSheet
              Caption = 'Desembarques'
              ImageIndex = 1
              object cxGrid2: TcxGrid
                Left = 0
                Top = 0
                Width = 504
                Height = 339
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object cxGridDBTableView2: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  FilterBox.Visible = fvNever
                  DataController.DataSource = ds_Oc_detalle
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  FilterRow.Visible = True
                  OptionsData.Appending = True
                  OptionsData.Inserting = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxGridDBColumn11: TcxGridDBColumn
                    Caption = 'Marca'
                    DataBinding.FieldName = 'sAnexo'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.KeyFieldNames = 'sAnexo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'sEtiqueta'
                      end>
                    Properties.ListSource = ds_anexos
                    Properties.OnChange = cxGridDBColumn1PropertiesChange
                    Width = 55
                  end
                  object cxGridDBColumn12: TcxGridDBColumn
                    Caption = 'Modelo'
                    DataBinding.FieldName = 'sIdPartidaAnexo'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.KeyFieldNames = 'IdRecurso'
                    Properties.ListColumns = <
                      item
                        Caption = 'Partida'
                        FieldName = 'IdRecurso'
                      end>
                    Properties.ListSource = ds_partidaAnexo
                    Properties.OnChange = cxGridDBColumn2PropertiesChange
                    HeaderAlignmentHorz = taCenter
                    Width = 56
                  end
                  object cxGridDBColumn13: TcxGridDBColumn
                    Caption = 'No. Serie'
                    DataBinding.FieldName = 'Descripcion'
                    Options.Editing = False
                    Width = 85
                  end
                  object cxGridDBColumn14: TcxGridDBColumn
                    Caption = 'Medida'
                    DataBinding.FieldName = 'sMedida'
                    Options.Editing = False
                    Width = 59
                  end
                  object cxGridDBColumn15: TcxGridDBColumn
                    DataBinding.FieldName = 'Cantidad'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 43
                  end
                  object cxGridDBColumn16: TcxGridDBColumn
                    Caption = 'Manfiesto'
                    DataBinding.FieldName = 'CostoMN'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.DisplayFormat = '$,0.00;-$,0.00'
                    Width = 63
                  end
                  object cxGridDBColumn17: TcxGridDBColumn
                    Caption = 'Fecha'
                    DataBinding.FieldName = 'CostoDLL'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.DisplayFormat = '$,0.00;-$,0.00'
                    Width = 61
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = cxGridDBTableView2
                end
              end
            end
          end
        end
      end
    end
    object PanelAnexos: TPanel
      Left = 736
      Top = 52
      Width = 51
      Height = 479
      Align = alRight
      TabOrder = 2
      object cxGridGenerador: TcxGrid
        Left = 1
        Top = 1
        Width = 49
        Height = 477
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object CxGridMoePersonal: TcxGridDBTableView
          OnDblClick = CxGridMoePersonalDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = ds_tablaDatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'USD   $ #,00.00'
              Kind = skSum
              FieldName = 'dMontoDLL'
              Column = CxGridMoePersonalColumn1
            end
            item
              Format = 'Total Folio'
              Kind = skCount
              Column = cxOrdenar
              DisplayText = 'Total Folio'
            end
            item
              Format = 'MN   $ #,00.00'
              Kind = skSum
              FieldName = 'dMontoMN'
              Column = CxColumnCxGridMoePersonalColumn3
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxOrdenar: TcxGridDBColumn
            Caption = 'Anexo'
            DataBinding.FieldName = 'sTitulo'
            Options.Editing = False
            Width = 20
          end
          object CxColumnCxGridMoePersonalColumn1: TcxGridDBColumn
            Caption = 'Desripcion'
            DataBinding.FieldName = 'sAnexoDescripcion'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 67
          end
          object CxGridMoePersonalColumn2: TcxGridDBColumn
            Caption = 'Inlcuye'
            DataBinding.FieldName = 'Incluye'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Properties.OnChange = CxGridMoePersonalColumn2PropertiesChange
            Width = 28
          end
          object CxColumnCxGridMoePersonalColumn3: TcxGridDBColumn
            Caption = 'Monto M.N.'
            DataBinding.FieldName = 'dMontoMN'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 23
          end
          object CxGridMoePersonalColumn1: TcxGridDBColumn
            Caption = 'Monto USD'
            DataBinding.FieldName = 'dMontoDLL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 22
          end
        end
        object CxLevel1: TcxGridLevel
          GridView = CxGridMoePersonal
        end
      end
    end
  end
  object ds_tripulacion: TDataSource
    DataSet = qry_Tripulacion
    Left = 224
    Top = 288
  end
  object qry_Tripulacion: TZQuery
    Connection = connection.zConnection
    AutoCalcFields = False
    Params = <>
    Left = 224
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Images = connection.cxIconos16
    Left = 192
    Top = 112
    object ResstructurarSecciones1: TMenuItem
      Caption = 'Resstructurar Secciones'
      ImageIndex = 21
    end
  end
  object ZLookTripulacion: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select oc.*, p.sContrato as OT, pr.Nombre from rd_ordenes_compra' +
        's oc'
      'inner join rd_proyectos p on (oc.sContrato = p.sContrato)'
      
        'inner join master_proveedores pr on (pr.IdProveedor = oc.IdProve' +
        'edor)')
    Params = <>
    Left = 216
    Top = 176
    object ZLookTripulacionIdOrdenCompra: TIntegerField
      FieldName = 'IdOrdenCompra'
    end
    object ZLookTripulacionOrdenCompra: TStringField
      FieldName = 'OrdenCompra'
      Required = True
      Size = 35
    end
    object ZLookTripulacionFecha: TDateField
      FieldName = 'Fecha'
    end
    object ZLookTripulacionsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ZLookTripulacionIdProveedor: TIntegerField
      FieldName = 'IdProveedor'
      Required = True
    end
    object ZLookTripulacionNota: TMemoField
      FieldName = 'Nota'
      BlobType = ftMemo
    end
    object ZLookTripulacionOT: TStringField
      FieldName = 'OT'
      Required = True
      Size = 15
    end
    object ZLookTripulacionNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
  end
  object ds_looktripulacion: TDataSource
    DataSet = ZLookTripulacion
    Left = 264
    Top = 176
  end
  object ds_Oc_detalle: TDataSource
    AutoEdit = False
    DataSet = zqOcDetalle
    Left = 48
    Top = 120
  end
  object ds_tablaDatos: TDataSource
    DataSet = TablaDatos
    Left = 264
    Top = 216
  end
  object TablaDatos: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sAnexo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'sTitulo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'sAnexoDescripcion'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'dMontoMN'
        DataType = ftFloat
      end
      item
        Name = 'dMontoDLL'
        DataType = ftFloat
      end
      item
        Name = 'Incluye'
        DataType = ftString
        Size = 2
      end>
    Left = 216
    Top = 216
    object TablaDatossAnexo: TStringField
      FieldName = 'sAnexo'
      Size = 10
    end
    object TablaDatossTitulo: TStringField
      FieldName = 'sTitulo'
      Size = 200
    end
    object TablaDatossAnexoDescripcion: TStringField
      FieldName = 'sAnexoDescripcion'
      Size = 200
    end
    object TablaDatosdMontoMN: TFloatField
      FieldName = 'dMontoMN'
    end
    object TablaDatosdMontoDLL: TFloatField
      FieldName = 'dMontoDLL'
    end
    object TablaDatosIncluye: TStringField
      FieldName = 'Incluye'
      Size = 2
    end
  end
  object ds_contrato: TDataSource
    AutoEdit = False
    DataSet = Contrato
    Left = 48
    Top = 176
  end
  object Contrato: TZReadOnlyQuery
    Connection = connection.zConnection
    AutoCalcFields = False
    SQL.Strings = (
      'select * from rd_proyectos where sTipoObra = '#39'ORDEN_TRABAJO'#39)
    Params = <>
    Left = 96
    Top = 176
    object ContratosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ContratosCodigo: TStringField
      FieldName = 'sCodigo'
      Required = True
      Size = 15
    end
    object ContratosMascara: TStringField
      FieldName = 'sMascara'
      Required = True
      Size = 200
    end
    object ContratomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ContratomCliente: TMemoField
      FieldName = 'mCliente'
      Required = True
      BlobType = ftMemo
    end
    object ContratobImagen: TBlobField
      FieldName = 'bImagen'
      Required = True
    end
    object ContratosUbicacion: TStringField
      FieldName = 'sUbicacion'
      Required = True
      Size = 100
    end
    object ContratomComentarios: TMemoField
      FieldName = 'mComentarios'
      Required = True
      BlobType = ftMemo
    end
    object ContratosTipoObra: TStringField
      FieldName = 'sTipoObra'
      Required = True
      Size = 13
    end
    object ContratolStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 9
    end
    object ContratosLicitacion: TStringField
      FieldName = 'sLicitacion'
      Size = 200
    end
    object ContratosTitulo: TMemoField
      FieldName = 'sTitulo'
      BlobType = ftMemo
    end
    object ContratosCliente: TStringField
      FieldName = 'sCliente'
      Size = 400
    end
    object ContratoeLugarOT: TStringField
      FieldName = 'eLugarOT'
      Required = True
      Size = 6
    end
    object ContratosIdAlmacen: TStringField
      FieldName = 'sIdAlmacen'
      Size = 100
    end
    object ContratoIdMsConfDSAI17: TIntegerField
      FieldName = 'IdMsConfDSAI17'
    end
    object ContratoIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
  end
  object ds_proveedores: TDataSource
    AutoEdit = False
    DataSet = zqProveedores
    Left = 48
    Top = 232
  end
  object zqProveedores: TZReadOnlyQuery
    Connection = connection.zConnection
    AutoCalcFields = False
    SQL.Strings = (
      'select * from master_proveedores order by Nombre')
    Params = <>
    Left = 80
    Top = 224
    object zqProveedoresIdProveedor: TIntegerField
      FieldName = 'IdProveedor'
    end
    object zqProveedoresCodigo: TStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object zqProveedoresNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object zqProveedoresRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 250
    end
    object zqProveedoresRFC: TStringField
      FieldName = 'RFC'
      Size = 15
    end
    object zqProveedoresCalle: TStringField
      FieldName = 'Calle'
      Size = 200
    end
    object zqProveedoresInterior: TStringField
      FieldName = 'Interior'
    end
    object zqProveedoresExterior: TStringField
      FieldName = 'Exterior'
    end
    object zqProveedoresColonia: TStringField
      FieldName = 'Colonia'
      Size = 200
    end
    object zqProveedoresCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 5
    end
    object zqProveedoresIdCiudad: TIntegerField
      FieldName = 'IdCiudad'
      Required = True
    end
    object zqProveedoresIdEstado: TIntegerField
      FieldName = 'IdEstado'
      Required = True
    end
    object zqProveedoresCorreo: TStringField
      FieldName = 'Correo'
      Size = 150
    end
    object zqProveedoresContacto: TStringField
      FieldName = 'Contacto'
      Size = 100
    end
    object zqProveedoresTelefono: TStringField
      FieldName = 'Telefono'
      Size = 15
    end
  end
  object zqOcDetalle: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zqOcDetalleCalcFields
    SQL.Strings = (
      
        'select oc.*, "" as Descripcion, "" as sMedida from rd_ordenes_co' +
        'mpras_detalle oc where oc.IdOrdenCompra =:OC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'OC'
        ParamType = ptUnknown
      end>
    Left = 104
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OC'
        ParamType = ptUnknown
      end>
    object zqOcDetalleIdOCDetalle: TIntegerField
      FieldName = 'IdOCDetalle'
    end
    object zqOcDetalleIdOrdenCompra: TIntegerField
      FieldName = 'IdOrdenCompra'
      Required = True
    end
    object zqOcDetallesAnexo: TStringField
      FieldName = 'sAnexo'
      Required = True
      Size = 5
    end
    object zqOcDetallesIdPartidaAnexo: TStringField
      FieldName = 'sIdPartidaAnexo'
      Required = True
      Size = 35
    end
    object zqOcDetallesIdServicio: TStringField
      FieldName = 'sIdServicio'
      Size = 35
    end
    object zqOcDetalleCantidad: TFloatField
      FieldName = 'Cantidad'
      Required = True
    end
    object zqOcDetalleCostoMN: TFloatField
      FieldName = 'CostoMN'
      Required = True
    end
    object zqOcDetalleCostoDLL: TFloatField
      FieldName = 'CostoDLL'
      Required = True
    end
    object zqOcDetalleDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descripcion'
      Size = 100
      Calculated = True
    end
    object zqOcDetallesMedida: TStringField
      FieldKind = fkCalculated
      FieldName = 'sMedida'
      Size = 30
      Calculated = True
    end
  end
  object ds_orden_compra: TDataSource
    AutoEdit = False
    DataSet = orden_compra
    Left = 48
    Top = 88
  end
  object orden_compra: TZQuery
    Connection = connection.zConnection
    AfterScroll = orden_compraAfterScroll
    SQL.Strings = (
      'select oc.* from rd_ordenes_compras oc where IdOrdenCompra =:OC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'OC'
        ParamType = ptUnknown
      end>
    Left = 104
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OC'
        ParamType = ptUnknown
      end>
    object orden_compraIdOrdenCompra: TIntegerField
      FieldName = 'IdOrdenCompra'
    end
    object orden_compraOrdenCompra: TStringField
      FieldName = 'OrdenCompra'
      Required = True
      Size = 35
    end
    object orden_compraFecha: TDateField
      FieldName = 'Fecha'
    end
    object orden_comprasContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object orden_compraIdProveedor: TIntegerField
      FieldName = 'IdProveedor'
      Required = True
    end
    object orden_compraNota: TMemoField
      FieldName = 'Nota'
      BlobType = ftMemo
    end
  end
  object ds_anexos: TDataSource
    AutoEdit = False
    DataSet = Anexos
    Left = 224
    Top = 320
  end
  object Anexos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from anexos order by iOrden')
    Params = <>
    Left = 280
    Top = 296
  end
  object frxGenerador: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 42899.690240659720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  sHora : string;       '
      '  mesCorto: string;'
      
        '  MyPageNum, MyPageNumActa, MyPageNumResum, MyPageNumNota, MyPag' +
        'eNumDesglo, MyPageNumInterf : integer;                          ' +
        '                      '
      ''
      'procedure ObtenerMes(sParamFecha :string);'
      'var'
      '    mes : string;                                     '
      'begin'
      '    mes := copy(sParamFecha,4,2);'
      '    if StrToInt(mes)=1 then'
      '       mes := '#39'ene'#39
      '    else                 '
      '    if StrToInt(mes)=2 then'
      '       mes := '#39'feb'#39
      '    else                 '
      '    if StrToInt(mes)=3 then'
      '       mes := '#39'mar'#39
      '    else                   '
      '    if StrToInt(mes)=4 then        '
      '       mes := '#39'abr'#39
      '    else                 '
      '    if StrToInt(mes)=5 then'
      '       mes := '#39'may'#39
      '    else                 '
      '    if StrToInt(mes)=6 then'
      '       mes := '#39'jun'#39
      '    else                 '
      '    if StrToInt(mes)=7 then'
      '       mes := '#39'jul'#39
      '    else                 '
      '    if StrToInt(mes)=8 then'
      '       mes := '#39'ago'#39
      '    else                 '
      '    if StrToInt(mes)=9 then'
      '       mes := '#39'sep'#39
      '    else                         '
      '    if StrToInt(mes)=10 then'
      '       mes := '#39'oct'#39
      '    else                 '
      '    if StrToInt(mes)=11 then'
      '       mes := '#39'nov'#39
      '    else                 '
      '    if StrToInt(mes)=12 then'
      '       mes := '#39'dic'#39';           '
      '  '
      
        '    mesCorto := copy(sParamFecha,1,2)+'#39'-'#39'+ mes +'#39'-'#39'+copy(sParamF' +
        'echa,9,2);'
      'end;            '
      '    '
      'procedure Memo219OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <dsDatosFolio."sTipoActa"> = '#39'Parcial'#39' then'
      '      Memo219.Text := '#39'X'#39';                           '
      'end;'
      ''
      'procedure Memo220OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsDatosFolio."sTipoActa"> = '#39'Total'#39' then'
      '      Memo220.Text := '#39'X'#39';  '
      'end;'
      ''
      'procedure Memo177OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <dsDesglose."sAnexo"> <> '#39'1'#39' then                '
      
        '     Memo177.Text :=  '#39'IMPORTE '#39' + <dsDesglose."sDescripcionAnex' +
        'o"> + '#39':'#39'            '
      '   else'
      '     Memo177.Text :=  '#39'IMPORTE EMBARCACION: '#39' ;         '
      'end;'
      ''
      'procedure Memo52OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <dsConceptos."sAnexo"> <> '#39'1'#39' then                '
      
        '     Memo52.Text :=  '#39'IMPORTE '#39' + <dsConceptos."sDescripcionAnex' +
        'o"> + '#39':'#39'            '
      '   else'
      '     Memo52.Text :=  '#39'IMPORTE BARCO: '#39' ;  '
      'end;'
      ''
      'procedure Memo256OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsActaFolio."sAnexo"> <> '#39'1'#39' then                '
      '     Memo256.Text :=   <dsActaFolio."sTitulo">            '
      '   else'
      '     Memo256.Text :=  '#39'ANEXO C-1'#39' ;  '
      'end;'
      ''
      'procedure Memo83OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsDatosFolio."mComentarios"> = '#39'*'#39' then'
      '       Memo83.Text := '#39#39';                            '
      'end;'
      ''
      'procedure Memo168OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                     '
      'end;'
      ''
      'procedure Memo198OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <dsDesglose."sAnexo"> = '#39'1'#39' then'
      '   begin               '
      '     Memo198.Visible := True;'
      
        '     Memo232.Visible := False;                                  ' +
        '      '
      '   end             '
      '   else'
      '   begin               '
      '     Memo198.Visible := False;'
      '     Memo232.Visible := True;'
      '   end;                    '
      'end;'
      ''
      'procedure Memo150OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   Memo150.Text := sHora;                                     '
      'end;    '
      ''
      'procedure Memo80OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   ObtenerMes(DateToSTr(<dsConfiguracion."dFechaIFolio">));    '
      
        '   memo80.Text := MesCorto;                                     ' +
        '                      '
      'end;'
      ''
      'procedure Memo81OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   ObtenerMes(DateToSTr(<dsConfiguracion."dFechaFFolio">));    '
      '   memo81.Text := MesCorto;  '
      'end;    '
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   MyPageNumActa := <TotalPages>                 '
      'end;'
      ''
      'procedure PageFooter2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   MyPageNumResum  :=  <TotalPages>  '
      'end;'
      ''
      'procedure PageFooter3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  MyPageNumNota := <TotalPages>;                   '
      'end;'
      ''
      'procedure PageFooter4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  MyPageNumDesglo := <TotalPages>;                 '
      'end;'
      ''
      'procedure GroupHeader10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  MyPageNumInterf := <TotalPages>;                          '
      'end;'
      ''
      'procedure MasterData3OnBeforePrint(Sender: TfrxComponent);'
      'begin              '
      '   if <dsCampoRecursos."sTipo"> = '#39'Horarios'#39' then'
      '   begin'
      '      memo132.Visible := True;'
      '      memo133.Visible := True;'
      '      memo134.Visible := True;'
      '      memo135.Visible := True;'
      '      memo136.Visible := True;'
      '      memo137.Visible := True;'
      '      memo138.Visible := True;'
      '      memo139.Visible := True;'
      '      groupfooter5.Visible := True;'
      
        '      groupheader6.Visible := True;                             ' +
        '                                      '
      ''
      '      memo165.Visible := False;'
      '      memo166.Visible := False;'
      '      memo167.Visible := False;'
      '      memo229.Visible := False;'
      '      memo168.Visible := False;'
      '      memo169.Visible := False;          '
      '      memo170.Visible := False;'
      '      memo171.Visible := False;'
      '      memo172.Visible := False;'
      ''
      '      groupheader7.Visible := False;'
      '      groupfooter4.Visible := False;'
      '      groupfooter6.Visible := False;          '
      '   end                              '
      '   else             '
      '   begin'
      '      memo132.Visible := False;'
      '      memo133.Visible := False;'
      '      memo134.Visible := False;'
      '      memo135.Visible := False;'
      '      memo136.Visible := False;'
      '      memo137.Visible := False;'
      '      memo138.Visible := False;'
      '      memo139.Visible := False;'
      '      groupfooter5.Visible := False;'
      '      groupheader6.Visible := False;          '
      ''
      '      memo165.Visible := True;'
      '      memo166.Visible := True;'
      '      memo167.Visible := True;'
      '      memo229.Visible := True;'
      '      memo168.Visible := True;          '
      '      memo169.Visible := True;'
      '      memo170.Visible := True;'
      '      memo171.Visible := True;'
      '      memo172.Visible := True;'
      ''
      '      if <dsCampoRecursos."sAnexo"> = '#39'1'#39' then'
      '      begin               '
      '         Memo168.Visible := True;'
      
        '         Memo229.Visible := False;                              ' +
        '          '
      '      end             '
      '      else'
      '      begin               '
      '         Memo168.Visible := False;'
      '         Memo229.Visible := True;'
      '      end;           '
      ''
      '      groupheader7.Visible := True;'
      '      groupfooter4.Visible := True;'
      '      groupfooter6.Visible := True;                            '
      '   end;             '
      'end;'
      '  '
      'procedure GroupHeader7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <dsCampoRecursos."sTipo"> = '#39'Horarios'#39' then'
      '   begin'
      '       groupheader7.Visible := False;'
      '       groupheader6.Visible := True;'
      ' //      groupfooter6.Visible := True;           '
      '   end'
      '   else'
      '   begin'
      '      groupheader7.Visible := True;'
      '      groupheader6.Visible := False;'
      ' //     groupfooter6.Visible := False;                  '
      '   end;             '
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsConceptos."sDescripcionAnexo"> = '#39'0'#39' then'
      '    begin'
      '       MasterData2.Visible  := False;  '
      '    end               '
      '    else'
      '    begin                    '
      '       MasterData2.Visible := True;'
      '       //GroupHeader3.Visible := True;           '
      '    end;  '
      'end;'
      ''
      'procedure GroupHeader5OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <dsCampoRecursos."sTipo"> = '#39'Horarios'#39' then    '
      
        '      GroupHeader5.Height := <dsCampoRecursos."iEspActividad"> *' +
        ' 12.5;  '
      'end;'
      ''
      'procedure GroupHeader12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    GroupHeader12.Height := <dsCampoRecursos."iEspRecursos"> * 1' +
        '2.5;'
      'end;'
      '  '
      'procedure GroupHeader13OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsCampoRecursos."sTipo"> = '#39'Horarios'#39' then    '
      
        '       GroupHeader13.Height := <dsCampoRecursos."iEspHorarios"> ' +
        '* 12.5;  '
      'end;'
      ''
      'procedure GroupHeader14OnBeforePrint(Sender: TfrxComponent);'
      'begin    '
      
        '    GroupHeader14.Height := <dsDesglose."iEspRecursos"> * 12.5; ' +
        ' '
      'end;'
      ''
      'procedure MasterData4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsDesglose."sIdRecurso"> = '#39'N/A'#39' then'
      '    begin                '
      
        '       MasterData4.Visible  := False;                           ' +
        '                                             '
      '    end               '
      '    else'
      '    begin                   '
      '       MasterData4.Visible  := True;           '
      '   end;                '
      'end;'
      ''
      'procedure GroupHeader3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsConceptos."sDescripcionAnexo"> = '#39'0'#39' then'
      '    begin'
      '       GroupHeader3.Visible := False;  '
      '    end               '
      '    else'
      '    begin'
      '       GroupHeader3.Visible := True;           '
      '    end;  '
      'end;'
      ''
      'Begin    '
      
        '                                                                ' +
        '                             '
      'End.')
    OnGetValue = frxGeneradorGetValue
    OnReportPrint = 'no '
    Left = 472
    Top = 152
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
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
    object ActaEntrega: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Color = clGray
      ResetPageNumbers = True
      OnBeforePrint = 'ActaEntregaOnBeforePrint'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 710.551640000000000000
        Width = 980.410082000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Memo6: TfrxMemoView
          Left = 344.937230000000000000
          Top = 34.456710000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [MyPageNumActa]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante1"]'
            '[dsConfiguracion."sPuesto1"]'
            'FICHA: [dsConfiguracion."sFicha1"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 657.638220000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante3"]'
            '[dsConfiguracion."sPuesto3"]'
            'FICHA: [dsConfiguracion."sFicha3"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 434.645950000000000000
        Width = 980.410082000000000000
        RowCount = 0
        Stretched = True
        object Memo75: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."sCsu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 83.488188980000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Partidas
          DataSetName = 'Td_Partidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."sIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 189.692913390000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."Plataforma"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 283.803149610000000000
          Width = 90.708658980000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."sUbicacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 374.511808580000000000
          Width = 275.905511810000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsDatosFolio."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 648.827150000000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo80OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd-mmm-yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."dFechaIFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 712.638220000000000000
          Width = 60.472436060000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo81OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd-mmm-yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."dFechaFFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 772.906000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '100.00 %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 838.158010000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo83OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."mComentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader3: TfrxPageHeader
        FillType = ftBrush
        Height = 284.645798660000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Shape1: TfrxShapeView
          Top = 80.551330000000000000
          Width = 978.141732280000000000
          Height = 204.094468660000000000
          Frame.Color = clGray
        end
        object Picture5: TfrxPictureView
          Left = 829.717070000000000000
          Top = 3.779527560000000000
          Width = 143.622091180000000000
          Height = 68.031513150000000000
          Center = True
          DataField = 'bImagenPEP'
          Frame.Color = clNone
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture6: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779527560000000000
          Width = 143.622047240000000000
          Height = 68.031496060000000000
          Center = True
          DataField = 'bImagen'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo85: TfrxMemoView
          Left = 159.740260000000000000
          Top = 37.456710000000000000
          Width = 665.197280000000000000
          Height = 37.795300000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ACTA DE ENTREGA'
            'DE ACTIVIDADES REALIZADAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 158.740260000000000000
          Top = 2.779530000000000000
          Width = 665.197280000000000000
          Height = 37.795300000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sTituloActa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 606.189027640000000000
          Top = 253.960764170000000000
          Width = 111.496082520000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA DE ACTA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 724.157480310000000000
          Top = 241.842644170000000000
          Width = 244.913385830000000000
          Height = 28.346466460000000000
          DisplayFormat.FormatStr = 'dd "de" mmmm "de" yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."dFechaActa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 5.000000000000000000
          Top = 98.252044170000000000
          Width = 142.110236220000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONTRATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 151.291745530000000000
          Top = 90.252044170000000000
          Width = 438.425235910000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sCodigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 5.000000000000000000
          Top = 111.370078740000000000
          Width = 142.110236220000000000
          Height = 39.685039370000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OBRA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 151.181102360000000000
          Top = 112.370078740000000000
          Width = 438.425196850000000000
          Height = 43.464569370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."mDescripcionBarco"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 5.000000000000000000
          Top = 163.401567480000000000
          Width = 142.110236220000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ORDEN DE TRABAJO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 606.102362200000000000
          Top = 168.385797480000000000
          Width = 111.496055670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'No DE ACTA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 151.181102360000000000
          Top = 162.401567480000000000
          Width = 438.425196850000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sLabelContrato"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 723.968650390000000000
          Top = 138.149557480000000000
          Width = 244.913405350000000000
          Height = 69.921296460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDatosFolio."sNumeroActa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 5.000000000000000000
          Top = 209.614143940000000000
          Width = 142.110236220000000000
          Height = 28.346466460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ESPECIALIDAD :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 151.181102362205000000
          Top = 220.952733940000000000
          Width = 438.425196850000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsDatosFolio."sEspecialidad"]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 151.181102360000000000
          Top = 172.724426540000000000
          Width = 438.425196850000000000
          Height = 35.905509370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 5.000000000000000000
          Top = 251.417440000000000000
          Width = 142.110236220000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CENTRO DE PROCESO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 151.181102362205000000
          Top = 251.417440000000000000
          Width = 438.425196850000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsDatosFolio."sCentroProceso"]')
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          Left = 798.535870000000000000
          Top = 88.929190000000000000
          Width = 107.338582680000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'ACTA PARCIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo218: TfrxMemoView
          Left = 798.535870000000000000
          Top = 111.606370000000000000
          Width = 107.338582680000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'ACTA TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          Left = 925.984850000000000000
          Top = 85.929190000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          OnBeforePrint = 'Memo219OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          Left = 925.984850000000000000
          Top = 107.826840000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          OnBeforePrint = 'Memo220OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 362.834880000000000000
        Width = 980.410082000000000000
        Condition = 'dsDatosFolio."sContrato"'
        ReprintOnNewPage = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo107: TfrxMemoView
          Width = 83.149660000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'No. SIPOM '
            'O CSU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 83.488188980000000000
          Width = 105.826840000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PARTIDA/FOLIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 189.771800000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PLATAFORMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 283.921460000000000000
          Width = 90.708658980000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UBICACI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 374.512060000000000000
          Width = 275.905690000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 648.827150000000000000
          Width = 123.968506380000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PERIODO DE '
            'EJECUCI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 648.827150000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 712.637795280000000000
          Top = 26.456710000000000000
          Width = 60.472436060000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#201'RMINO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 772.906000000000000000
          Width = 64.252010000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AVANCE %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 838.158010000000000000
          Width = 139.842610000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES Y/O OFICIOS DE REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 480.000310000000000000
        Width = 980.410082000000000000
        KeepChild = True
      end
      object GroupHeader11: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.362234020000000000
        Top = 517.795610000000000000
        Width = 980.410082000000000000
        Condition = 'dsActaFolio."sContrato"'
        ResetPageNumbers = True
        StartNewPage = True
        object Memo191: TfrxMemoView
          Top = 4.559060000000000000
          Width = 978.141732283465000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '                RESUMEN DE COSTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          Top = 20.456710000000000000
          Width = 202.960629921260000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo199: TfrxMemoView
          Left = 204.094620000000000000
          Top = 20.456710000000000000
          Width = 621.354255040000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCION DEL ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          Left = 825.717070000000000000
          Top = 20.456710000000000000
          Width = 152.692915830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          Top = 39.354360000000000000
          Width = 202.960629921260000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo202: TfrxMemoView
          Left = 204.094620000000000000
          Top = 39.354360000000000000
          Width = 621.354255040000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          Left = 825.826769210000000000
          Top = 39.354360000000000000
          Width = 77.858270160000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'M.N.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          Left = 905.087200000000000000
          Top = 39.354360000000000000
          Width = 73.322405040000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'U.S.D.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter11: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 634.961040000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo213: TfrxMemoView
          Width = 202.960629921260000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo214: TfrxMemoView
          Left = 204.094620000000000000
          Width = 621.354255040000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'TOTALES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo215: TfrxMemoView
          Left = 825.826769210000000000
          Width = 77.858270160000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsActaFolio."dSumSubVentaMN">,MasterData7)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          Left = 905.087200000000000000
          Width = 73.322405040000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsActaFolio."dSumSubVentaDLL">,MasterData7)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 597.165740000000000000
        Width = 980.410082000000000000
        RowCount = 0
        Stretched = True
        object Memo256: TfrxMemoView
          Width = 202.960629921260000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo256OnBeforePrint'
          DataSetName = 'Acta_Costos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsActaFolio."sTitulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo257: TfrxMemoView
          Left = 204.094620000000000000
          Width = 621.354325830000000000
          Height = 15.118120000000000000
          DataSetName = 'Acta_Costos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsActaFolio."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo258: TfrxMemoView
          Left = 825.826769210000000000
          Width = 77.858270160000000000
          Height = 15.118120000000000000
          DataSetName = 'Acta_Costos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsActaFolio."dSumSubVentaMN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo259: TfrxMemoView
          Left = 905.087200000000000000
          Width = 73.322834650000000000
          Height = 15.118120000000000000
          DataSetName = 'Acta_Costos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsActaFolio."dSumSubVentaDLL"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object ResumenCostos: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ResetPageNumbers = True
      OnBeforePrint = 'ResumenCostosOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 245.181243940000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Picture1: TfrxPictureView
          Left = 592.606680000000000000
          Top = 3.779527560000000000
          Width = 143.622091180000000000
          Height = 52.913385830000000000
          Center = True
          DataField = 'bImagenPEP'
          Frame.Color = clNone
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779527560000000000
          Width = 143.622047240000000000
          Height = 52.913385830000000000
          Center = True
          DataField = 'bImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo33: TfrxMemoView
          Left = 149.842610000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 148.842610000000000000
          Top = 27.456710000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESUMEN DE COSTOS POR ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 337.133858270000000000
          Top = 66.141732280000000000
          Width = 192.755905510000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'EMBARCACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 528.755905510000000000
          Top = 66.141732280000000000
          Width = 210.519685040000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."Embarcacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 66.141732280000000000
          Width = 142.110236220000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 142.291745530000000000
          Top = 66.141732280000000000
          Width = 195.779527560000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sCodigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Top = 79.370078740000000000
          Width = 142.110236220000000000
          Height = 39.685039370000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 141.732283460000000000
          Top = 79.370078740000000000
          Width = 597.543307090000000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."mDescripcionBarco"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Top = 118.677148270000000000
          Width = 142.110236220000000000
          Height = 39.685056460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEN DE TRABAJO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1028: TfrxMemoView
          Top = 214.882070390000000000
          Width = 142.110236220000000000
          Height = 28.346466460000000000
          StretchMode = smActualHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PERIODO DE EJECUCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1081: TfrxMemoView
          Left = 142.110219130000000000
          Top = 214.882070390000000000
          Width = 195.779478740000000000
          Height = 28.346466460000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[dsConfiguracion."dFechaIFolio"] AL [dsConfiguracion."dFechaFFol' +
              'io"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1082: TfrxMemoView
          Left = 141.732107720000000000
          Top = 118.677165350000000000
          Width = 597.543485280000000000
          Height = 39.685039370078700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."sContrato"]. -[dsConfiguracion."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Top = 158.740260000000000000
          Width = 142.110236220000000000
          Height = 20.787406460000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PART./FOLIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 141.732107720000000000
          Top = 158.740157480000000000
          Width = 597.543307090000000000
          Height = 55.895394130000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."sDescripcionFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 337.157700000000000000
          Top = 214.882080160000000000
          Width = 104.692918270000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'INSTALACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 633.583026220000000000
          Top = 215.055118110000000000
          Width = 105.826774090000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sActivo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Top = 178.393700790000000000
          Width = 142.110236220000000000
          Height = 36.283464570000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            '[dsConfiguracion."sFolio"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          Left = 442.205010000000000000
          Top = 215.055118110000000000
          Width = 90.708720000000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sPlataformaFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo221: TfrxMemoView
          Left = 532.913730000000000000
          Top = 215.055118110000000000
          Width = 99.779527560000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'ACTIVO:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 619.842920000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'PageFooter2OnBeforePrint'
        object Memo237: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante1"]'
            '[dsConfiguracion."sPuesto1"]'
            'FICHA: [dsConfiguracion."sFicha1"]')
          ParentFont = False
        end
        object Memo238: TfrxMemoView
          Left = 449.764070000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante3"]'
            '[dsConfiguracion."sPuesto3"]'
            'FICHA: [dsConfiguracion."sFicha3"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Top = 34.015770000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[<Page>] de [MyPageNumResum]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'dsConceptos."sNumeroActividad"'
        KeepTogether = True
        ResetPageNumbers = True
        Stretched = True
        object Memo47: TfrxMemoView
          Top = 7.559060000000000000
          Width = 738.519685040000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ACTIVIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Top = 26.456710000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_AvancesPartidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConceptos."sNumeroActividad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 154.960730000000000000
          Top = 26.456710000000000000
          Width = 583.559028270000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_AvancesPartidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConceptos."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 506.457020000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        object Memo59: TfrxMemoView
          Left = 264.567100000000000000
          Top = 24.944881890000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'COSTO TOTAL DE LA ACTIVIDAD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 548.031850000000000000
          Top = 24.944881890000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSetName = 'Td_Distribucion_detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsConceptos."dVentaSumaMN">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 642.520100000000000000
          Top = 24.944881890000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSetName = 'Td_Distribucion_detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsConceptos."dVentaSumaDLL">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 548.031850000000000000
          Top = 5.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'IMP MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 642.520100000000000000
          Top = 5.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'IMP USD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader3OnBeforePrint'
        Condition = 'dsConceptos."sNumeroActividad"'
        object Memo57: TfrxMemoView
          Left = 548.031850000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'IMP MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 642.520100000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'IMP USD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 442.205010000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        RowCount = 0
        Stretched = True
        object Memo51: TfrxMemoView
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_Distribucion_detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConceptos."sDescripcionAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 343.937230000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo52OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'Td_Distribucion_detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE: [dsConceptos."sDescripcionAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 548.031850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_Distribucion_detalle'
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
            '[dsConceptos."dVentaSumaMN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 642.520100000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_Distribucion_detalle'
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
            '[dsConceptos."dVentaSumaDLL"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter10: TfrxGroupFooter
        FillType = ftBrush
        Top = 483.779840000000000000
        Width = 740.409927000000000000
      end
    end
    object NotaCampo: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ResetPageNumbers = True
      OnBeforePrint = 'NotaCampoOnBeforePrint'
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 245.181243940000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Picture3: TfrxPictureView
          Left = 592.606680000000000000
          Top = 3.779527560000000000
          Width = 143.622091180000000000
          Height = 52.913385830000000000
          Center = True
          DataField = 'bImagenPEP'
          Frame.Color = clNone
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779527560000000000
          Width = 143.622047240000000000
          Height = 52.913385830000000000
          Center = True
          DataField = 'bImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo5: TfrxMemoView
          Left = 149.842610000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 148.842610000000000000
          Top = 27.456710000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA DE CAMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 337.133858270000000000
          Top = 66.141732280000000000
          Width = 198.803149606299000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'EMBARCACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 536.314965510000000000
          Top = 66.141732280000000000
          Width = 202.582677165354000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."Embarcacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 66.141732280000000000
          Width = 142.110236220000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 142.291745530000000000
          Top = 66.141732280000000000
          Width = 195.779527560000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sCodigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 79.370078740000000000
          Width = 142.110236220000000000
          Height = 39.685039370000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 141.732283460000000000
          Top = 79.370078740000000000
          Width = 597.165354330709000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."mDescripcionBarco"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Top = 118.677148270000000000
          Width = 142.110236220000000000
          Height = 39.685056460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEN DE TRABAJO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 214.882070390000000000
          Width = 142.110236220000000000
          Height = 28.346466460000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PERIODO DE EJECUCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 142.110219130000000000
          Top = 214.882070390000000000
          Width = 195.779478740000000000
          Height = 28.346466460000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[dsConfiguracion."dFechaIFolio"] AL [dsConfiguracion."dFechaFFol' +
              'io"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 141.732107720000000000
          Top = 118.677165350000000000
          Width = 597.165354330709000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."sContrato"]. -[dsConfiguracion."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 158.740260000000000000
          Width = 142.110236220000000000
          Height = 20.787406460000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PART./FOLIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 141.732107720000000000
          Top = 158.740157480000000000
          Width = 597.165354330709000000
          Height = 55.895394130000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."sDescripcionFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 178.393700790000000000
          Width = 142.110236220000000000
          Height = 36.283464570000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            '[dsConfiguracion."sFolio"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 337.157700000000000000
          Top = 215.055118110000000000
          Width = 100.913388270000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'INSTALACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 629.803496220000000000
          Top = 215.055118110000000000
          Width = 109.606304090000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sActivo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo222: TfrxMemoView
          Left = 438.425480000000000000
          Top = 215.055118110000000000
          Width = 98.645669291338600000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sPlataformaFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo223: TfrxMemoView
          Left = 536.693260000000000000
          Top = 215.055118110000000000
          Width = 92.220467560000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'ACTIVO:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter3: TfrxPageFooter
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 903.307670000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'PageFooter3OnBeforePrint'
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante1"]'
            '[dsConfiguracion."sPuesto1"]'
            'FICHA: [dsConfiguracion."sFicha1"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 449.764070000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante3"]'
            '[dsConfiguracion."sPuesto3"]'
            'FICHA: [dsConfiguracion."sFicha3"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 302.362400000000000000
          Top = 34.015770000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [MyPageNumNota]')
          ParentFont = False
        end
      end
      object GroupHeader6: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 536.693260000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader6OnBeforePrint'
        AllowSplit = True
        Condition = 'dsCampoRecursos."sNumeroActividad"'
        KeepChild = True
        Stretched = True
        object Memo140: TfrxMemoView
          Left = 257.008040000000000000
          Top = 5.440940000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PERIODOS DE EJECUCION DE LA ACTIVIDAD')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Top = 30.236240000000000000
          Width = 111.118110240000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 111.488250000000000000
          Top = 30.236240000000000000
          Width = 75.590551180000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 186.960730000000000000
          Top = 30.236240000000000000
          Width = 75.590551180000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TERMINO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 263.433210000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AFECTACI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 372.803340000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'INTERVALO'
            'TIEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 456.393940000000000000
          Top = 30.236240000000000000
          Width = 94.488188980000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AVANCE'
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 550.543600000000000000
          Top = 30.236240000000000000
          Width = 94.488188980000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AVANCE'
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 644.693260000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AVANCE'
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter5: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.252010000000000000
        Top = 661.417750000000000000
        Width = 740.409927000000000000
        object Memo149: TfrxMemoView
          Top = 0.755905510000000000
          Width = 373.417322830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DURACION TIEMPO EFECTIVO (HRS):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          Left = 372.661417320000000000
          Top = 0.755905510000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."sDuracion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter4: TfrxGroupFooter
        FillType = ftBrush
        Height = 24.566929133858300000
        Top = 733.228820000000000000
        Width = 740.409927000000000000
        object Memo151: TfrxMemoView
          Left = 416.503937010000000000
          Width = 182.551181100000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE [dsCampoRecursos."sDescripcionAnexo"] :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 599.055118110000000000
          Width = 71.433070870000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsCampoRecursos."dVentaSumaMN">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          Left = 670.866141730000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsCampoRecursos."dVentaSumaDLL">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader7: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 445.984540000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader7OnBeforePrint'
        AllowSplit = True
        Condition = 'dsCampoRecursos."sAnexo"'
        KeepChild = True
        Stretched = True
        object Memo154: TfrxMemoView
          Top = 8.559060000000000000
          Width = 739.275590550000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."sDescripcionAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Top = 26.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 476.645950000000000000
          Top = 26.456710000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PU MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 538.236550000000000000
          Top = 26.456710000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PU USD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Left = 598.827150000000000000
          Top = 26.456710000000000000
          Width = 71.433070870000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMP MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 671.047244090000000000
          Top = 26.456710000000000000
          Width = 68.031496062992100000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMP USD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          Left = 354.141930000000000000
          Top = 26.456710000000000000
          Width = 61.984247090000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          Left = 416.503937010000000000
          Top = 26.456710000000000000
          Width = 59.338582680000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo249: TfrxMemoView
          Left = 86.236240000000000000
          Top = 26.456690470000000000
          Width = 269.102362200000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter6: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 805.039890000000000000
        Width = 740.409927000000000000
        KeepChild = True
        object Memo162: TfrxMemoView
          Left = 354.141732280000000000
          Top = 8.456710000000000000
          Width = 244.157480310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO TOTAL DE LA ACTIVIDAD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          Left = 599.055118110000000000
          Top = 8.456710000000000000
          Width = 71.433070870000000000
          Height = 18.897650000000000000
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsCampoRecursos."dVentaSumaMN">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          Left = 670.866141730000000000
          Top = 8.456710000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsCampoRecursos."dVentaSumaDLL">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Height = 50.897650000000000000
        Top = 347.716760000000000000
        Width = 740.409927000000000000
        Condition = 'dsCampoRecursos."sNumeroActividad"'
        Stretched = True
        object Memo173: TfrxMemoView
          Left = 154.960730000000000000
          Top = 12.425170000000000000
          Width = 584.314960630000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ACTIVIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          Top = 32.000000000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_AvancesPartidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."sNumeroActividad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          Left = 154.960730000000000000
          Top = 32.000000000000000000
          Width = 584.314960630000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_AvancesPartidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsCampoRecursos."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Top = 12.425170000000000000
          Width = 154.204751260000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 619.842920000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData3OnBeforePrint'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo132: TfrxMemoView
          Width = 111.118110240000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."dFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 111.488250000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."sInicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 186.960730000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."sFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 263.433210000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."sAfectacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 372.803340000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = 'hh:mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[ IIf((<dsCampoRecursos."sFinal">='#39'24:00'#39') and ( <dsCampoRecurso' +
              's."sInicio">='#39'00:00'#39'),'#39'24:00'#39',FormatDateTime('#39'hh:mm'#39',(iif(<dsCam' +
              'poRecursos."sFinal">='#39'24:00'#39',1,StrToTime(<dsCampoRecursos."sFina' +
              'l">)) - iif(<dsCampoRecursos."sInicio">='#39'00:00'#39',0, iif(<dsCampoR' +
              'ecursos."sInicio">='#39'24:00'#39',1, StrToTime(<dsCampoRecursos."sInici' +
              'o">))))))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 456.393940000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n"%"'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FormatFloat('#39'0.00'#39',<dsCampoRecursos."dAnterior">)]%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 550.543600000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FormatFloat('#39'0.00'#39',<dsCampoRecursos."dActual">)]%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 644.693260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FormatFloat('#39'0.00'#39',<dsCampoRecursos."dAcumulado">)]%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."sIdRecurso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          Left = 87.488250000000000000
          Width = 269.102362200000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsCampoRecursos."sDescripcionRecurso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 354.141930000000000000
          Width = 61.984247090000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."sMedida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          Left = 416.503937010000000000
          Width = 59.338582680000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo168OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.6f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 476.535433070000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsCampoRecursos."dVentaMN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          Left = 538.251968500000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsCampoRecursos."dVentaDLL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          Left = 598.716535430000000000
          Width = 71.433070870000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsCampoRecursos."dVentaSumaMN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 671.047244090000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsCampoRecursos."dVentaSumaDLL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo229: TfrxMemoView
          Left = 416.748300000000000000
          Width = 59.338582680000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCampoRecursos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader5: TfrxGroupHeader
        FillType = ftBrush
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader5OnBeforePrint'
        Condition = 'dsCampoRecursos."sNumeroActividad"'
      end
      object GroupHeader12: TfrxGroupHeader
        FillType = ftBrush
        Top = 423.307360000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader12OnBeforePrint'
        AllowSplit = True
        Condition = 'dsCampoRecursos."sAnexo"'
      end
      object GroupHeader13: TfrxGroupHeader
        FillType = ftBrush
        Top = 514.016080000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader13OnBeforePrint'
        AllowSplit = True
        Condition = 'dsCampoRecursos."sNumeroActividad"'
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Top = 710.551640000000000000
        Width = 740.409927000000000000
      end
      object GroupFooter12: TfrxGroupFooter
        FillType = ftBrush
        Top = 782.362710000000000000
        Width = 740.409927000000000000
      end
    end
    object DesgloceCosto: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ResetPageNumbers = True
      object PageHeader4: TfrxPageHeader
        FillType = ftBrush
        Height = 245.181243940000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Picture7: TfrxPictureView
          Left = 592.606680000000000000
          Top = 3.779527560000000000
          Width = 143.622091180000000000
          Height = 52.913385830000000000
          Center = True
          DataField = 'bImagenPEP'
          Frame.Color = clNone
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture8: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779527560000000000
          Width = 143.622047240000000000
          Height = 52.913385830000000000
          Center = True
          DataField = 'bImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo26: TfrxMemoView
          Left = 149.842610000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 148.842610000000000000
          Top = 27.456710000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESGLOSE DE COSTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 337.133858270000000000
          Top = 66.141732280000000000
          Width = 199.181102360000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'EMBARCACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 536.314965510000000000
          Top = 66.141732280000000000
          Width = 202.582677170000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."Embarcacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Top = 66.141732280000000000
          Width = 142.110236220000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 142.291745530000000000
          Top = 66.141732280000000000
          Width = 195.779527560000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sCodigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Top = 79.370078740000000000
          Width = 142.110236220000000000
          Height = 39.685039370000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 141.732283460000000000
          Top = 79.370078740000000000
          Width = 597.165354330000000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."mDescripcionBarco"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Top = 118.677148270000000000
          Width = 142.110236220000000000
          Height = 39.685056460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEN DE TRABAJO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 214.882070390000000000
          Width = 142.110236220000000000
          Height = 28.346466460000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PERIODO DE EJECUCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 142.110219130000000000
          Top = 214.882070390000000000
          Width = 195.779478740000000000
          Height = 28.346466460000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[dsConfiguracion."dFechaIFolio"] AL [dsConfiguracion."dFechaFFol' +
              'io"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 141.732107720000000000
          Top = 118.677165350000000000
          Width = 597.165354330000000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."sContrato"]. -[dsConfiguracion."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 158.740260000000000000
          Width = 142.110236220000000000
          Height = 20.787406460000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PART./FOLIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 141.732107720000000000
          Top = 158.740157480000000000
          Width = 597.165354330000000000
          Height = 55.895394130000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."sDescripcionFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Top = 178.393700790000000000
          Width = 142.110236220000000000
          Height = 36.283464570000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            '[dsConfiguracion."sFolio"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 336.378170000000000000
          Top = 215.055118110236000000
          Width = 104.692918270000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'INSTALACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 633.070866140000000000
          Top = 215.055118110000000000
          Width = 105.826774090000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sActivo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo224: TfrxMemoView
          Left = 441.425480000000000000
          Top = 215.055118110000000000
          Width = 99.023622050000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sPlataformaFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo225: TfrxMemoView
          Left = 539.693260000000000000
          Top = 215.055118110000000000
          Width = 92.220467560000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'ACTIVO:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter4: TfrxPageFooter
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 653.858690000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'PageFooter4OnBeforePrint'
        object Memo67: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante1"]'
            '[dsConfiguracion."sPuesto1"]'
            'FICHA: [dsConfiguracion."sFicha1"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 449.764070000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante3"]'
            '[dsConfiguracion."sPuesto3"]'
            'FICHA: [dsConfiguracion."sFicha3"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 302.362400000000000000
          Top = 34.015770000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [MyPageNumDesglo]')
          ParentFont = False
        end
      end
      object GroupFooter7: TfrxGroupFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 480.000310000000000000
        Width = 740.409927000000000000
        PrintChildIfInvisible = True
        object Memo177: TfrxMemoView
          Left = 402.897637800000000000
          Width = 192.000000000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo177OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE [dsDesglose."sDescripcionAnexo"]:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 594.897637800000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsDesglose."dVentaSumaMN">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 667.086614170000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsDesglose."dVentaSumaDLL">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader8: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 377.953000000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader8OnBeforePrint'
        Condition = 'dsDesglose."sAnexo"'
        object Memo181: TfrxMemoView
          Top = 1.000000000000000000
          Width = 738.897637800000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDesglose."sDescripcionAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          Left = 94.488250000000000000
          Top = 18.897650000000000000
          Width = 242.645652200000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 463.645950000000000000
          Top = 18.897650000000000000
          Width = 64.251970940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PU MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 527.236550000000000000
          Top = 18.897650000000000000
          Width = 68.031500940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PU USD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 594.897637795276000000
          Top = 18.897650000000000000
          Width = 71.811030940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMP MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 667.086614170000000000
          Top = 18.897650000000000000
          Width = 71.811016300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMP USD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          Left = 337.141930000000000000
          Top = 18.897650000000000000
          Width = 65.763777090000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 403.173470000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter9: TfrxGroupFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 551.811380000000000000
        Width = 740.409927000000000000
        object Memo190: TfrxMemoView
          Left = 337.133858270000000000
          Top = 11.338590000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO TOTAL DE LA ACTIVIDAD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo192: TfrxMemoView
          Left = 594.897637800000000000
          Top = 11.338590000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsDesglose."dVentaSumaMN">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo193: TfrxMemoView
          Left = 667.086614170000000000
          Top = 11.338590000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsDesglose."dVentaSumaDLL">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader9: TfrxGroupHeader
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        Condition = 'dsDesglose."sContrato"'
        ResetPageNumbers = True
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 438.425480000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData4OnBeforePrint'
        RowCount = 0
        Stretched = True
        object Memo194: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDesglose."sIdRecurso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo196: TfrxMemoView
          Left = 94.488250000000000000
          Width = 242.645652200000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsDesglose."sDescripcionRecurso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          Left = 337.141930000000000000
          Width = 65.763777090000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDesglose."sMedida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          Left = 403.062992130000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo198OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.6f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDesglose."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo205: TfrxMemoView
          Left = 463.535433070000000000
          Width = 64.251970940000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsDesglose."dVentaMN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo206: TfrxMemoView
          Left = 527.125984250000000000
          Width = 68.031500940000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsDesglose."dVentaDLL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo207: TfrxMemoView
          Left = 594.897637800000000000
          Width = 71.811030940000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsDesglose."dVentaSumaMN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo208: TfrxMemoView
          Left = 667.086614170000000000
          Width = 71.811021180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsDesglose."dVentaSumaDLL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo232: TfrxMemoView
          Left = 403.409710000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSetName = 'Td_resumenMaterial'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsDesglose."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader14: TfrxGroupHeader
        FillType = ftBrush
        Top = 355.275820000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader14OnBeforePrint'
        Condition = 'dsDesglose."sAnexo"'
      end
      object GroupFooter13: TfrxGroupFooter
        FillType = ftBrush
        Top = 529.134200000000000000
        Width = 740.409927000000000000
        PrintChildIfInvisible = True
      end
    end
    object Interferencias: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ResetPageNumbers = True
      object PageHeader5: TfrxPageHeader
        FillType = ftBrush
        Height = 245.181243940000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Picture9: TfrxPictureView
          Left = 592.606680000000000000
          Top = 3.779527560000000000
          Width = 143.622091180000000000
          Height = 52.913385830000000000
          Center = True
          DataField = 'bImagenPEP'
          Frame.Color = clNone
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture10: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779527560000000000
          Width = 143.622047240000000000
          Height = 52.913385830000000000
          Center = True
          DataField = 'bImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo71: TfrxMemoView
          Left = 149.842610000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 148.842610000000000000
          Top = 27.456710000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESGLOSE DE CONCEPTOS POR INTERFERENCIAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 337.133858270000000000
          Top = 66.141732280000000000
          Width = 199.181102362205000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'EMBARCACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 536.314965510000000000
          Top = 66.141732280000000000
          Width = 202.582677165354000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."Embarcacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Top = 66.141732280000000000
          Width = 142.110236220000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 142.291745530000000000
          Top = 66.141732280000000000
          Width = 195.779527560000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sCodigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Top = 79.370078740000000000
          Width = 142.110236220000000000
          Height = 39.685039370000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 141.732283460000000000
          Top = 79.370078740000000000
          Width = 597.165354330709000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."mDescripcionBarco"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Top = 118.677148270000000000
          Width = 142.110236220000000000
          Height = 39.685056460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEN DE TRABAJO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Top = 214.882070390000000000
          Width = 142.110236220000000000
          Height = 28.346466460000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PERIODO DE EJECUCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 142.110219130000000000
          Top = 214.882070390000000000
          Width = 195.779478740000000000
          Height = 28.346466460000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[dsConfiguracion."dFechaIFolio"] AL [dsConfiguracion."dFechaFFol' +
              'io"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 141.732107720000000000
          Top = 118.677165350000000000
          Width = 597.165354330709000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."sContrato"]. -[dsConfiguracion."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Top = 158.740260000000000000
          Width = 142.110236220000000000
          Height = 20.787406460000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PART./FOLIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 141.732107720000000000
          Top = 158.740157480000000000
          Width = 597.165354330709000000
          Height = 55.895394130000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[dsConfiguracion."sDescripcionFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Top = 178.393700790000000000
          Width = 142.110236220000000000
          Height = 36.283464570000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            '[dsConfiguracion."sFolio"]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Left = 336.378170000000000000
          Top = 215.055118110236000000
          Width = 104.692918270000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'INSTALACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 633.070866141732000000
          Top = 215.055118110000000000
          Width = 105.826774090000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sActivo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          Left = 441.425480000000000000
          Top = 215.055118110000000000
          Width = 99.023622050000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsConfiguracion."sPlataformaFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo228: TfrxMemoView
          Left = 539.693260000000000000
          Top = 215.055118110000000000
          Width = 92.220467560000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'ACTIVO:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter5: TfrxPageFooter
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 631.181510000000000000
        Width = 740.409927000000000000
        object Memo127: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante1"]'
            '[dsConfiguracion."sPuesto1"]'
            'FICHA: [dsConfiguracion."sFicha1"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 449.764070000000000000
          Top = 34.015770000000000000
          Width = 287.244280000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsConfiguracion."sFirmante3"]'
            '[dsConfiguracion."sPuesto3"]'
            'FICHA: [dsConfiguracion."sFicha3"]')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 302.362400000000000000
          Top = 34.015770000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [MyPageNumInterf]')
          ParentFont = False
        end
      end
      object GroupFooter8: TfrxGroupFooter
        FillType = ftBrush
        Height = 91.385900000000000000
        Top = 480.000310000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo235: TfrxMemoView
          Left = 110.740157480000000000
          Top = 9.000000000000000000
          Width = 326.173279610000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TIEMPO DE INTERFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo236: TfrxMemoView
          Left = 437.425248110000000000
          Top = 8.984230000000000000
          Width = 272.126089210000000000
          Height = 18.897650000000000000
          DataSet = frmDiarioTurno2.Td_Distribucion_detalle2
          DataSetName = 'Td_Distribucion_detalle2'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsResumen."sTotalClasificacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader10: TfrxGroupHeader
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader10OnBeforePrint'
        Condition = 'dsResumen."sContrato"'
        Stretched = True
        object Memo227: TfrxMemoView
          Top = 34.015770000000000000
          Width = 111.118110240000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CLASIFICACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo230: TfrxMemoView
          Left = 111.433210000000000000
          Top = 34.015770000000000000
          Width = 325.417374090000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCION DE INTERFERENCIAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo231: TfrxMemoView
          Left = 438.378170000000000000
          Top = 34.015770000000000000
          Width = 272.126160000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TIEMPO DE INTERFERENCIAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 434.645950000000000000
        Width = 740.409927000000000000
        RowCount = 0
        Stretched = True
        object Memo209: TfrxMemoView
          Width = 111.118110240000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Movimientos
          DataSetName = 'Td_Movimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsResumen."sIdClasificacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo210: TfrxMemoView
          Left = 111.433210000000000000
          Width = 325.417374090000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Movimientos
          DataSetName = 'Td_Movimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsResumen."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo211: TfrxMemoView
          Left = 438.378170000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.Td_Movimientos
          DataSetName = 'Td_Movimientos'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsResumen."sSumaClasificacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object ds_partidaAnexo: TDataSource
    AutoEdit = False
    DataSet = zqPartidaAnexo
    Left = 224
    Top = 352
  end
  object zqPartidaAnexo: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 280
    Top = 352
  end
  object ds_recursos: TDataSource
    AutoEdit = False
    DataSet = zqRecursos
    Left = 224
    Top = 384
  end
  object zqRecursos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      '')
    Params = <>
    Left = 280
    Top = 400
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
    Left = 504
    Top = 152
  end
end
