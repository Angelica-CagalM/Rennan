object FrmMaterialesPO: TFrmMaterialesPO
  Left = 0
  Top = 0
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  BorderStyle = bsSingle
  Caption = 'Seguimiento PO/Change Order'
  ClientHeight = 604
  ClientWidth = 1158
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
    Width = 1158
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1158
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 601
      Top = 1
      Width = 556
      Height = 33
      Align = alRight
      AutoSize = True
      TabOrder = 0
      ExplicitLeft = 601
      ExplicitTop = 1
      ExplicitWidth = 556
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 556
        Height = 33
        Align = alRight
        ExplicitWidth = 556
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          Enabled = False
          Visible = False
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 161
          Height = 31
          Caption = 'Agregar'
          OnClick = btnEditClick
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 81
          Height = 31
          Enabled = False
          Visible = False
          OnClick = btnDeleteClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 395
          Height = 31
          OnClick = btnPrinterClick
          ExplicitLeft = 395
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 475
          Height = 31
          OnClick = btnDetalleClick
          ExplicitLeft = 475
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Tag = 13
          Width = 74
          Height = 31
          OnClick = btnExportaClick
          ExplicitLeft = 321
          ExplicitWidth = 74
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Seguimento PO/Change Order'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
    object LabelProceso: TcxLabel
      Left = 262
      Top = 10
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
      Left = 339
      Top = 9
      Anchors = [akLeft, akRight]
      ParentColor = False
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 104
    end
    object btnAplicarChangeOrder: TcxButton
      Left = 449
      Top = 1
      Width = 152
      Height = 33
      Hint = 'Imprimir en Pantalla'
      Align = alRight
      Caption = 'Aplicar Change Order'
      OptionsImage.ImageIndex = 61
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnAplicarChangeOrderClick
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 85
    Width = 1158
    Height = 519
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 695
      Height = 517
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 168
        Width = 693
        Height = 348
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object pnlBtn2: TPanel
          Left = 1
          Top = 311
          Width = 691
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 514
            Top = 1
            Width = 176
            Height = 34
            Align = alRight
            AutoSize = True
            TabOrder = 0
            ExplicitLeft = 514
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
                OnClick = frmBarraH21btnPostClick
                ExplicitLeft = 1
                ExplicitTop = 1
                ExplicitHeight = 32
              end
              inherited btnCancel: TcxButton
                Left = 88
                Top = 1
                Height = 32
                Align = alRight
                OnClick = frmBarraH21btnCancelClick
                ExplicitLeft = 88
                ExplicitTop = 1
                ExplicitHeight = 32
              end
            end
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 691
          Height = 310
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 308
          ClientRectLeft = 2
          ClientRectRight = 689
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Orden Cambio'
            ImageIndex = 0
            object cxButton1: TcxButton
              Left = 0
              Top = 154
              Width = 23
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
              TabOrder = 0
              TabStop = False
              OnClick = cxButton1Click
            end
            object dxLayoutControl3: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 687
              Height = 278
              Align = alClient
              TabOrder = 1
              AutoSize = True
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxUnidadAnterior: TcxDBLookupComboBox
                Left = 327
                Top = 192
                DataBinding.DataField = 'IdMedidaOrdenCambio'
                DataBinding.DataSource = dsInsumos
                Enabled = False
                ParentFont = False
                Properties.KeyFieldNames = 'IdMedida'
                Properties.ListColumns = <
                  item
                    Caption = 'Medida'
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = dsMedida
                Style.HotTrack = False
                TabOrder = 10
                Width = 226
              end
              object cxUnidad: TcxDBLookupComboBox
                Left = 620
                Top = 192
                DataBinding.DataField = 'IdMedidaOrdenCambio'
                DataBinding.DataSource = dsInsumos
                ParentFont = False
                Properties.KeyFieldNames = 'IdMedida'
                Properties.ListColumns = <
                  item
                    Caption = 'Medida'
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = dsMedida
                Style.HotTrack = False
                TabOrder = 11
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 243
              end
              object cxDescripcionAnterior: TcxDBMemo
                Left = 327
                Top = 221
                DataBinding.DataField = 'Material'
                DataBinding.DataSource = dsInsumos
                Enabled = False
                ParentFont = False
                Properties.ScrollBars = ssVertical
                Style.HotTrack = False
                TabOrder = 12
                Height = 44
                Width = 195
              end
              object cxDescripcion: TcxDBMemo
                Left = 620
                Top = 221
                DataBinding.DataField = 'Material'
                DataBinding.DataSource = dsInsumos
                ParentFont = False
                Properties.ScrollBars = ssVertical
                Style.HotTrack = False
                TabOrder = 13
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Height = 45
                Width = 243
              end
              object cxCodigo: TcxDBTextEdit
                Left = 327
                Top = 11
                DataBinding.DataField = 'Codigo'
                DataBinding.DataSource = dsOrdenCambio
                Enabled = False
                ParentFont = False
                Properties.ReadOnly = False
                Style.HotTrack = False
                TabOrder = 0
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 21
              end
              object cxRevision: TcxDBTextEdit
                Left = 529
                Top = 11
                DataBinding.DataField = 'Revision'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Properties.ReadOnly = False
                Style.HotTrack = False
                TabOrder = 1
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 233
              end
              object cxTituloChangeOrder: TcxDBTextEdit
                Left = 327
                Top = 40
                DataBinding.DataField = 'TituloCambio'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 2
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 196
              end
              object cxTipoCambio: TcxDBComboBox
                Left = 583
                Top = 40
                DataBinding.DataField = 'TipoOrdenCambio'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Properties.Items.Strings = (
                  'COMPRAS'
                  'REQUISICION')
                Style.HotTrack = False
                TabOrder = 3
                Width = 121
              end
              object cxEstatus: TcxDBComboBox
                Left = 742
                Top = 40
                DataBinding.DataField = 'sStatus'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Properties.Items.Strings = (
                  'Aceptado'
                  'Rechazado'
                  'Parcialmente Aceptado')
                Style.HotTrack = False
                TabOrder = 4
                Width = 121
              end
              object cxDocumentosChangeOrder: TcxDBMemo
                Left = 327
                Top = 69
                DataBinding.DataField = 'Documentos'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 5
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Height = 35
                Width = 490
              end
              object cxDescripcionChangeOrder: TcxDBMemo
                Left = 327
                Top = 110
                DataBinding.DataField = 'DescripcionCambio'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 6
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Height = 35
                Width = 453
              end
              object cxAdjuntosChangeOrder: TcxDBMemo
                Left = 660
                Top = 110
                DataBinding.DataField = 'Adjuntos'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 7
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Height = 35
                Width = 203
              end
              object cxCondicionesChangeOrder: TcxDBMemo
                Left = 327
                Top = 151
                DataBinding.DataField = 'CondicionesOrden'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 8
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Height = 35
                Width = 233
              end
              object cxPrecioChangeOrder: TcxDBMemo
                Left = 550
                Top = 151
                DataBinding.DataField = 'CambioPrecio'
                DataBinding.DataSource = dsOrdenCambio
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 9
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Height = 35
                Width = 313
              end
              object dxLayoutControl3Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl3Group_Root
                AlignHorz = ahClient
                AlignVert = avClient
                Index = 6
                AutoCreated = True
              end
              object dxLayoutItem6: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Unidad Medida Anterior:'
                Control = cxUnidadAnterior
                ControlOptions.ShowBorder = False
                Enabled = False
                Index = 0
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Unidad Medida Actual:'
                Control = cxUnidad
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl3Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 5
                AutoCreated = True
              end
              object dxLayoutItem7: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Descripci'#243'n Anterior Mat:'
                Control = cxDescripcionAnterior
                ControlOptions.ShowBorder = False
                Enabled = False
                Index = 0
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Descripci'#243'n Actual Mat :'
                Control = cxDescripcion
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup3
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem9: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'C'#243'digo:'
                Control = cxCodigo
                ControlOptions.ShowBorder = False
                Enabled = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl3Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem10: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Revisi'#243'n:'
                Control = cxRevision
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem11: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup9
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Title of Change Order:'
                Control = cxTituloChangeOrder
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem12: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup9
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Tipo de Cambio:'
                Control = cxTipoCambio
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl3Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem18: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup9
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Estatus:'
                Control = cxEstatus
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem14: TdxLayoutItem
                Parent = dxLayoutControl3Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'The following documents form part of this Change Order:'
                Control = cxDocumentosChangeOrder
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem8: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Description of Change Order:'
                Control = cxDescripcionChangeOrder
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem15: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'The Contract Attachments shall be adjusted as follows:'
                Control = cxAdjuntosChangeOrder
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl3Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 3
                AutoCreated = True
              end
              object dxLayoutItem17: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Conditions of invoicing for Change Order:'
                Control = cxCondicionesChangeOrder
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem16: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Change Order Price:'
                Control = cxPrecioChangeOrder
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl3Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 4
                AutoCreated = True
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 160
        Width = 693
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_requsicion: TcxGrid
        Left = 1
        Top = 1
        Width = 693
        Height = 159
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_Requsicion: TcxGridDBTableView
          PopupMenu = PopupPrincipal
          OnKeyDown = cxView_RequsicionKeyDown
          OnKeyUp = cxView_RequsicionKeyUp
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
          OnCellClick = cxView_RequsicionCellClick
          OnCellDblClick = cxView_RequsicionCellDblClick
          DataController.DataSource = dsInsumos
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxView_RequsicionDataControllerFilterChanged
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.OnBeforeChange = cxView_RequsicionDataControllerFilterBeforeChange
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
          Styles.OnGetContentStyle = cxView_RequsicionStylesGetContentStyle
          object cxView_RequsicionColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Planta'
            Width = 50
          end
          object col_OC: TcxGridDBColumn
            Caption = 'O.C.'
            DataBinding.FieldName = 'OrdenCompra'
            Width = 49
          end
          object col_Codigo: TcxGridDBColumn
            Caption = 'No. Trazabilidad'
            DataBinding.FieldName = 'NumeroMaterial'
            Width = 71
          end
          object col_PartidaOC: TcxGridDBColumn
            Caption = 'Part. OC'
            DataBinding.FieldName = 'iItem'
            Width = 59
          end
          object col_Cantidad: TcxGridDBColumn
            Caption = 'Cant.'
            DataBinding.FieldName = 'dRequisicion'
            Width = 48
          end
          object col_Unidad: TcxGridDBColumn
            Caption = 'Unidad'
            DataBinding.FieldName = 'Medida'
            Width = 48
          end
          object col_Descripcion: TcxGridDBColumn
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'Material'
            Width = 196
          end
          object col_Resultado: TcxGridDBColumn
            Caption = 'Resultado'
            DataBinding.FieldName = 'sStatus'
            Width = 40
          end
          object col_Fecha: TcxGridDBColumn
            Caption = 'F. Entregado'
            DataBinding.FieldName = 'FechaEntrega'
            Options.Editing = False
            Width = 64
          end
          object col_Proveedor: TcxGridDBColumn
            DataBinding.FieldName = 'Proveedor'
            Width = 61
          end
          object col_RequerimientoQA: TcxGridDBColumn
            DataBinding.FieldName = 'Especificaci'#243'nQA'
          end
          object col_TipoOrdenCambio: TcxGridDBColumn
            Caption = 'Change Order'
            DataBinding.FieldName = 'CodigoCO'
            Width = 100
          end
          object col_Notas: TcxGridDBColumn
            Caption = 'Observaciones'
            DataBinding.FieldName = 'ComentarioStatus'
            Width = 74
          end
        end
        object grid_requsicionLevel1: TcxGridLevel
          GridView = cxView_Requsicion
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 696
      Top = 1
      Width = 8
      Height = 517
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 704
      Top = 1
      Width = 453
      Height = 517
      Align = alRight
      TabOrder = 2
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 451
        Height = 515
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 31
          Width = 449
          Height = 377
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = cxTabCarpetas
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          ClientRectBottom = 375
          ClientRectLeft = 2
          ClientRectRight = 447
          ClientRectTop = 29
          object cxTabCarpetas: TcxTabSheet
            Caption = 'Documentos Orden De Cambio'
            ImageIndex = 70
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 445
              Height = 346
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxVentana: TcxShellListView
                Left = 10
                Top = 38
                Width = 425
                Height = 347
                ParentFont = False
                TabOrder = 1
                OnChange = cxVentanaChange
              end
              object cxDirectorio: TdxShellBreadcrumbEdit
                Left = 129
                Top = 10
                Width = 200
                Height = 22
                Properties.Buttons = <>
                Properties.PathEditor.RecentPaths = <>
                ShellListView = cxVentana
                TabOrder = 0
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
                Parent = dxLayoutControl1Group_Root
                Control = cxVentana
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                CaptionOptions.Text = 'Direcci'#243'n Compartida'
                Control = cxDirectorio
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
        end
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 449
          Height = 30
          Align = alTop
          TabOrder = 1
          object cxNuevoDetalle: TcxButton
            Left = 205
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
            Left = 286
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
          object cxEliminarDetalle: TcxButton
            Left = 367
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
          Top = 479
          Width = 449
          Height = 35
          Align = alBottom
          TabOrder = 2
          object btnGuardar: TcxButton
            Left = 274
            Top = 1
            Width = 87
            Height = 33
            Hint = 'Salvar cambios (F10)'
            Align = alRight
            Caption = 'Aceptar'
            OptionsImage.ImageIndex = 8
            OptionsImage.Images = frmrepositorio.IconosBarra
            TabOrder = 0
            OnClick = btnGuardarClick
          end
          object btnCancelar: TcxButton
            Left = 361
            Top = 1
            Width = 87
            Height = 33
            Hint = 'Cancelar cambios (F12)'
            Align = alRight
            Caption = 'Cancelar'
            OptionsImage.ImageIndex = 2
            OptionsImage.Images = frmrepositorio.IconosBarra
            TabOrder = 1
            OnClick = btnCancelarClick
          end
        end
        object cxSplitMaterial: TcxSplitter
          Left = 1
          Top = 408
          Width = 449
          Height = 8
          AlignSplitter = salBottom
          Visible = False
        end
        object PanelMaterial: TPanel
          Left = 1
          Top = 416
          Width = 449
          Height = 63
          Align = alBottom
          TabOrder = 4
          Visible = False
          object dxLayoutControl2: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 447
            Height = 61
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxDireccion: TcxDBShellComboBox
              Left = 135
              Top = 11
              DataBinding.DataField = 'DireccionRedOrdenCambio'
              DataBinding.DataSource = dsInsumos
              ParentFont = False
              Properties.FastSearch = True
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
            object dxLayoutControl2Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Direcci'#243'n de Archivos'
              Control = cxDireccion
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 35
    Width = 1158
    Height = 50
    Align = alTop
    TabOrder = 2
    object dxLayoutControl4: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1156
      Height = 48
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object btnLimpiarF: TcxButton
        Left = 1039
        Top = 11
        Width = 106
        Height = 25
        Caption = 'Limpiar Filtro'
        OptionsImage.ImageIndex = 62
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        OnClick = btnLimpiarFClick
      end
      object btnExpandir: TcxButton
        Left = 11
        Top = 11
        Width = 45
        Height = 25
        OptionsImage.ImageIndex = 65
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
      end
      object cxFiltroRequerido: TcxButton
        Left = 448
        Top = 11
        Width = 71
        Height = 25
        Caption = 'Filtrar'
        OptionsImage.ImageIndex = 63
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        OnClick = cxFiltroRequeridoClick
      end
      object cxLabel2: TcxLabel
        Left = 62
        Top = 14
        Caption = 'Periodo Inspecci'#243'n'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxInicioInspeccion: TcxDateEdit
        Left = 213
        Top = 12
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 100
      end
      object cxFinInspeccion: TcxDateEdit
        Left = 342
        Top = 12
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 3
        Width = 100
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
      object dxLayoutItem22: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnLimpiarF
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem23: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnExpandir
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem24: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxFiltroRequerido
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem25: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabel2
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem26: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Inicio'
        Control = cxInicioInspeccion
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Fin'
        Control = cxFinInspeccion
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 281
    Top = 80
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 1
      Caption = '&Editar'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16453
    end
    object Registrar1: TMenuItem
      Caption = 'Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
    end
    object N1: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object Imprimir1: TMenuItem
      Tag = 1
      Caption = '&Imprimir'
      ImageIndex = 5
    end
    object ImprimirConImportes1: TMenuItem
      Tag = 1
      Caption = 'Imprimir Con Importes'
      ImageIndex = 5
      Visible = False
    end
    object SolicituddeResguardo1: TMenuItem
      Tag = 1
      Caption = 'Solicitud de Resguardo'
      ImageIndex = 5
      Visible = False
    end
    object ExportaraExcel1: TMenuItem
      Tag = 1
      Caption = 'Exportar a Excel'
      ImageIndex = 10
      Visible = False
      OnClick = ExportaraExcel1Click
    end
    object N5: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object SeguimientoMaterialxPartidasdeAnexo1: TMenuItem
      Tag = 1
      Caption = 'Seguimiento Material General'
      ImageIndex = 5
      Visible = False
    end
    object SeguimientoMaterialxPartida1: TMenuItem
      Tag = 1
      Caption = 'Seguimiento Material x Partida'
      ImageIndex = 5
      Visible = False
    end
    object ImprimirSeguimientoMaterial1: TMenuItem
      Tag = 1
      Caption = 'Seguimiento Material x Partida Detalle'
      ImageIndex = 5
      Visible = False
    end
    object N6: TMenuItem
      Tag = 1
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
      Tag = 1
      Caption = '-'
    end
    object ComentariosAdicionales: TMenuItem
      Tag = 1
      Caption = 'Comentarios Adicionales a la Partida'
      ImageIndex = 9
      ShortCut = 112
      Visible = False
    end
    object N3: TMenuItem
      Tag = 1
      Caption = '-'
      Visible = False
    end
    object Copy1: TMenuItem
      Caption = 'Copiar'
      ShortCut = 16451
    end
    object Paste1: TMenuItem
      Caption = 'Pegar'
      ShortCut = 16470
    end
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 328
    Top = 65
  end
  object frxDBRequisicion: TfrxDBDataset
    UserName = 'frxDBRequisicion'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 176
    Top = 77
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
    ReportOptions.CreateDate = 43560.849031932900000000
    ReportOptions.LastChange = 43562.740910243050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo59OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <frxDBRequisicion."sStatus"> = '#39'Aceptado'#39' then'
      '        Memo59.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo63OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <frxDBRequisicion."sStatus"> = '#39'Rechazado'#39' then'
      '        Memo63.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo64OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   if <frxDBRequisicion."sStatus"> = '#39'Parcialmente Aceptado'#39' the' +
        'n'
      '        Memo64.Text := '#39'X'#39';'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 240
    Top = 77
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
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
        Height = 49.133890000000000000
        Top = 759.685530000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Width = 147.401574800000000000
          Height = 45.354333150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'FO'#8211'GL-SCM-046 Rev: 2'
            #169'Copyright Subsea 7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          ShiftMode = smDontShift
          Left = 309.921460000000000000
          Width = 147.401574800000000000
          Height = 45.354333150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Date: [Fecha]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 548.031850000000000000
          Width = 188.220189290000000000
          Height = 45.354333150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<Page>] of [TotalPages#]'
            'seabed-to-surface')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 681.071281100000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 264.566929130000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          Memo.UTF8W = (
            'Business Management System')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 551.811380000000000000
          Width = 187.464566930000000000
          Height = 52.593669910000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Top = 52.913420000000000000
          Width = 740.787880000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CHANGE ORDER Request (COR)')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Top = 94.488250000000000000
          Width = 187.464596220000000000
          Height = 18.897640240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Contract No: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 187.646105530000000000
          Top = 94.488250000000000000
          Width = 171.212595980000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."Contrato"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 359.055144960000000000
          Top = 94.488284170000000000
          Width = 80.881880000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Date:    ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 440.314977720000000000
          Top = 94.488284170000000000
          Width = 125.858279920000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Fecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 566.173257640000000000
          Top = 94.488284170000000000
          Width = 77.480312520000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'COR No.: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 643.653570160000000000
          Top = 94.488188980000000000
          Width = 96.000000000000000000
          Height = 18.897640240000000000
          DisplayFormat.FormatStr = 'dd mmm aaaa'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 113.385900000000000000
          Width = 187.464596220000000000
          Height = 18.897640240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Project Name:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 187.646105530000000000
          Top = 113.385900000000000000
          Width = 171.212595980000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."Proyecto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 359.055144960000000000
          Top = 113.385934170000000000
          Width = 80.881880000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Originator:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 440.314977720000000000
          Top = 113.385934170000000000
          Width = 125.858279920000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sIdUsuario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 566.173257640000000000
          Top = 113.385934170000000000
          Width = 77.480312520000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'COR Rev.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 643.653570160000000000
          Top = 113.385934170000000000
          Width = 96.000000000000000000
          Height = 18.897640240000000000
          DisplayFormat.FormatStr = 'dd mmm aaaa'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Revision"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 132.283550000000000000
          Width = 187.464596220000000000
          Height = 18.897640240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Supplier: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 187.086467720000000000
          Top = 132.283584170000000000
          Width = 552.945169920000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Proveedor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 151.181200000000000000
          Width = 187.464596220000000000
          Height = 18.897640240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Contract Title:  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 187.086467720000000000
          Top = 151.181234170000000000
          Width = 552.945169920000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."TituloContrato"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 170.078850000000000000
          Width = 187.464596220000000000
          Height = 18.897640240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Title of Change Order Request:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 187.086467720000000000
          Top = 170.078884170000000000
          Width = 552.945169920000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."TituloCambio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 188.976500000000000000
          Width = 187.464596220000000000
          Height = 37.795290240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Description of Change Order Request: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 187.086467720000000000
          Top = 188.976534170000000000
          Width = 552.945169920000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."DescripcionCambio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Top = 226.771800000000000000
          Width = 187.464596220000000000
          Height = 45.354350240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'The following documents form part of this Change Order Request: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 187.086467720000000000
          Top = 226.771834170000000000
          Width = 552.945169920000000000
          Height = 45.354350240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Documentos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 272.126160000000000000
          Width = 187.464596220000000000
          Height = 37.795290240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'The Contract Attachments shall be adjusted as follows: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 187.086467720000000000
          Top = 272.126194170000000000
          Width = 552.945169920000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Adjuntos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Top = 309.921460000000000000
          Width = 187.464596220000000000
          Height = 30.236230240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Change Order Request Price:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 187.086467720000000000
          Top = 309.921494170000000000
          Width = 552.945169920000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."CambioPrecio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Top = 340.157700000000000000
          Width = 187.464596220000000000
          Height = 37.795290240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Conditions of invoicing for Change Order Request:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 187.086467720000000000
          Top = 340.157734170000000000
          Width = 552.945169920000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."CondicionesOrden"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 377.953000000000000000
          Width = 740.031918350000000000
          Height = 43.842536770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            
              'The above change to the Works, Price and overall Programme are a' +
              'll inclusive and make provision for any effect on all other area' +
              's of the Award.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Top = 421.417562050000000000
          Width = 740.031918350000000000
          Height = 17.385826770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'For Supplier:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 481.511811020000000000
          Width = 740.031918350000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Acknowledged for Buyer /Request taken into consideration. Buyer ' +
              'to advise back in due course):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 545.007874015748000000
          Width = 740.031918350000000000
          Height = 40.063006770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haBlock
          Memo.UTF8W = (
            'Preliminary feedback from Buyer:'
            '(If accepted, Buyer to formalize through a formal Change Order)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 243.779527560000000000
          Top = 438.803149610000000000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Name and title:     ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Top = 438.803149610000000000
          Width = 244.157595040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Date:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Top = 459.968743150000000000
          Width = 244.157595040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 243.779527560000000000
          Top = 459.968743150000000000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 492.094488190000000000
          Top = 438.803149610000000000
          Width = 247.937007870000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Signature:     ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 492.094488190000000000
          Top = 459.968743150000000000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 243.779527560000000000
          Top = 502.677404570000000000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Name and title:     ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 502.677404570000000000
          Width = 244.157595040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Date:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Top = 523.842519690000000000
          Width = 244.157595040000000000
          Height = 21.165354330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 244.157480310000000000
          Top = 523.842519690000000000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 492.094488188976000000
          Top = 502.677404570000000000
          Width = 247.937007870000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Signature:     ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 492.094488190000000000
          Top = 523.842519690000000000
          Width = 247.937007870000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 244.157480310000000000
          Top = 585.071105350000000000
          Width = 247.937125040000000000
          Height = 32.503946770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 585.071105350000000000
          Width = 244.157595040000000000
          Height = 32.503946770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 492.094488190000000000
          Top = 585.071105350000000000
          Width = 247.937007870000000000
          Height = 32.503946770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 192.756030000000000000
          Top = 593.386210000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo59OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 3.779530000000000000
          Top = 593.386210000000000000
          Width = 130.771695040000000000
          Height = 17.385826770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Accepted')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 245.669450000000000000
          Top = 593.386210000000000000
          Width = 130.771695040000000000
          Height = 17.385826770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Rejected')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 495.118430000000000000
          Top = 593.386210000000000000
          Width = 130.771695040000000000
          Height = 17.385826770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Partly accepted    ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 438.425480000000000000
          Top = 593.386210000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo63OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 684.094930000000000000
          Top = 593.386210000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo64OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Top = 617.196850393701000000
          Width = 244.157595040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Date:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 243.779527560000000000
          Top = 617.196850390000000000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Name and title:     ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 492.094488190000000000
          Top = 617.196850393701000000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Signature:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Top = 637.984251968504100000
          Width = 244.157595040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 243.779527560000000000
          Top = 637.984251970000000000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 492.094488190000000000
          Top = 637.984251968504100000
          Width = 247.937125040000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object OpenXLS: TOpenDialog
    DefaultExt = 'XLS'
    Filter = 'Archivo de Microsoft Excel|*.XLS'
    Left = 696
    Top = 42
  end
  object styleGrid: TcxStyleRepository
    Left = 804
    Top = 48
    PixelsPerInch = 96
    object cxstylBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
    object cxstylRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxstylBlack: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 636
    Top = 125
  end
  object ds_firma: TDataSource
    DataSet = zFirma
    Left = 424
    Top = 80
  end
  object zFirma: TUniQuery
    Left = 376
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    Left = 640
    Top = 40
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
    Left = 752
    Top = 48
  end
  object insumos: TUniQuery
    Connection = connection.Uconnection
    Left = 389
    Top = 87
  end
  object dsInsumos: TDataSource
    DataSet = insumos
    Left = 269
    Top = 135
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 176
    Top = 128
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 795
    Top = 344
  end
  object zMedida: TUniQuery
    Connection = connection.Uconnection
    Left = 58
    Top = 77
  end
  object dsMedida: TDataSource
    DataSet = zMedida
    Left = 98
    Top = 85
  end
  object zOrdenCambio: TUniQuery
    Connection = connection.Uconnection
    Left = 233
    Top = 134
  end
  object dsOrdenCambio: TDataSource
    DataSet = zOrdenCambio
    Left = 497
    Top = 78
  end
  object zUpdatePPedido: TUniQuery
    Connection = connection.Uconnection
    Left = 509
    Top = 125
  end
  object dsUpdatePPedido: TDataSource
    DataSet = zUpdatePPedido
    Left = 573
    Top = 133
  end
end
