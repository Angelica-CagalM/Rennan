object FrmInspeccionMateriales: TFrmInspeccionMateriales
  Left = 0
  Top = 0
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  BorderStyle = bsSingle
  Caption = 'Inspecci'#243'n de Materiales'
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
      Caption = 'Inspecci'#243'n de Materiales'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
    object LabelProceso: TcxLabel
      Left = 204
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
      Left = 281
      Top = 8
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
      Width = 152
    end
    object btnConcentrado: TcxButton
      Left = 491
      Top = 1
      Width = 110
      Height = 33
      Hint = 'Imprimir en Pantalla'
      Align = alRight
      Caption = 'Concentrado'
      OptionsImage.ImageIndex = 59
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 4
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnConcentradoClick
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
      Width = 446
      Height = 517
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 358
        Width = 444
        Height = 158
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
          Top = 121
          Width = 442
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 252
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 252
            ExplicitTop = 1
            ExplicitWidth = 189
            ExplicitHeight = 34
            inherited Panel1: TPanel
              Left = 13
              Width = 176
              Height = 34
              Align = alRight
              AutoSize = True
              ExplicitLeft = 13
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
          Width = 442
          Height = 120
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
          ClientRectBottom = 118
          ClientRectLeft = 2
          ClientRectRight = 440
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Informaci'#243'n RIM'
            ImageIndex = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 438
              Height = 88
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxCodigo: TcxDBTextEdit
                Left = 100
                Top = 11
                DataBinding.DataField = 'Codigo'
                DataBinding.DataSource = dsInspeccionMaterial
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
                Width = 230
              end
              object mObservaciones: TcxDBMemo
                Left = 100
                Top = 42
                DataBinding.DataField = 'Observaciones'
                DataBinding.DataSource = dsInspeccionMaterial
                ParentFont = False
                Properties.ScrollBars = ssVertical
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
                Height = 31
                Width = 499
              end
              object dFecha: TcxDBDateEdit
                Left = 166
                Top = 11
                DataBinding.DataField = 'Fecha'
                DataBinding.DataSource = dsInspeccionMaterial
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
                Width = 195
              end
              object cxFirma2: TcxDBLookupComboBox
                Left = 230
                Top = 11
                DataBinding.DataField = 'IdFirma'
                DataBinding.DataSource = dsInspeccionMaterial
                ParentFont = False
                Properties.KeyFieldNames = 'IdFirma'
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
                Style.HotTrack = True
                Style.IsFontAssigned = True
                TabOrder = 2
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 307
              end
              object cxButton1: TcxButton
                Left = 543
                Top = 11
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
                TabOrder = 3
                TabStop = False
                OnClick = cxButton1Click
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                AllowFloating = True
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem7: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup8
                AlignHorz = ahClient
                CaptionOptions.Text = 'Reporte No.'
                Control = cxCodigo
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem8: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Observaciones'
                Control = mObservaciones
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup8
                AlignHorz = ahClient
                CaptionOptions.Text = 'Fecha'
                Control = dFecha
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup8
                AlignHorz = ahLeft
                CaptionOptions.Text = 'Firma'
                Control = cxFirma2
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup8
                AlignHorz = ahLeft
                CaptionOptions.Visible = False
                Control = cxButton1
                ControlOptions.ShowBorder = False
                Index = 3
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 350
        Width = 444
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_requsicion: TcxGrid
        Left = 1
        Top = 1
        Width = 444
        Height = 349
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_Requsicion: TcxGridDBTableView
          OnKeyDown = cxView_RequsicionKeyDown
          OnKeyUp = cxView_RequsicionKeyUp
          OnMouseDown = cxView_RequsicionMouseDown
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
          DataController.DataSource = dsInspeccionMaterial
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
          object col_Codigo: TcxGridDBColumn
            Caption = 'No. Reporte'
            DataBinding.FieldName = 'Codigo'
            Width = 68
          end
          object col_Contrato: TcxGridDBColumn
            DataBinding.FieldName = 'Contrato'
            Visible = False
            VisibleForCustomization = False
            Width = 150
          end
          object col_Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Width = 65
          end
          object col_OC: TcxGridDBColumn
            Caption = 'PO'
            DataBinding.FieldName = 'OrdenCompra'
            Width = 78
          end
          object col_Proveedor: TcxGridDBColumn
            DataBinding.FieldName = 'Proveedor'
            Width = 76
          end
          object col_Recibe: TcxGridDBColumn
            Caption = 'Recibe'
            DataBinding.FieldName = 'CreaRim'
            Width = 61
          end
          object col_estatus: TcxGridDBColumn
            Caption = 'Estado RIM'
            DataBinding.FieldName = 'Estado'
            Width = 42
          end
          object col_status: TcxGridDBColumn
            Caption = 'Estatus'
            DataBinding.FieldName = 'sStatus'
            Width = 40
          end
        end
        object grid_requsicionLevel1: TcxGridLevel
          GridView = cxView_Requsicion
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 447
      Top = 1
      Width = 8
      Height = 517
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 455
      Top = 1
      Width = 702
      Height = 517
      Align = alRight
      TabOrder = 2
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 700
        Height = 515
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 31
          Width = 698
          Height = 322
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = cxTabMaterial
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          ClientRectBottom = 320
          ClientRectLeft = 2
          ClientRectRight = 696
          ClientRectTop = 29
          object cxTabMaterial: TcxTabSheet
            Caption = 'Materiales'
            ImageIndex = 13
            object cxGridMateriales: TcxGrid
              Left = 0
              Top = 0
              Width = 694
              Height = 291
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxView_Materiales: TcxGridDBTableView
                PopupMenu = PopupPrincipal
                OnMouseDown = cxView_MaterialesMouseDown
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
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = dsInspeccionDetalle
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
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxView_MaterialesColumn6: TcxGridDBColumn
                  DataBinding.FieldName = 'Codigo'
                end
                object cxView_MaterialesColumn1: TcxGridDBColumn
                  Caption = 'Numero Material'
                  DataBinding.FieldName = 'NumeroMaterial'
                  Width = 96
                end
                object cxView_MaterialesColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Material'
                  Width = 200
                end
                object cxView_MaterialesColumn3: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'dCantidad'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 2
                  Properties.DisplayFormat = '0.0'
                  Width = 61
                end
                object cxView_MaterialesColumn4: TcxGridDBColumn
                  DataBinding.FieldName = 'Medida'
                  Width = 58
                end
                object cxView_MaterialesColumn7: TcxGridDBColumn
                  Caption = 'Resultado'
                  DataBinding.FieldName = 'sStatus'
                  Width = 70
                end
                object cxView_MaterialesColumn5: TcxGridDBColumn
                  Caption = 'Fecha'
                  DataBinding.FieldName = 'FechaLiberacion'
                  Width = 66
                end
              end
              object cxGridMaterialesLevel1: TcxGridLevel
                GridView = cxView_Materiales
              end
            end
          end
          object cxTabManoObra: TcxTabSheet
            Caption = 'Mano de Obra'
            ImageIndex = 28
            TabVisible = False
            object cxGridManoObra: TcxGrid
              Left = 0
              Top = 0
              Width = 694
              Height = 291
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxViewManoObra: TcxGridDBTableView
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
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = dsOrdenCompra
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
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn1: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sIdInsumo'
                  Width = 91
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'sDescripcion'
                  Width = 289
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Width = 63
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 53
                end
                object cxGridDBColumn5: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Width = 60
                end
              end
              object cxGridManoObraLevel: TcxGridLevel
                GridView = cxViewManoObra
              end
            end
          end
          object cxTabConsumibles: TcxTabSheet
            Caption = 'Consumibles'
            ImageIndex = 21
            TabVisible = False
            object cxGrid2: TcxGrid
              Left = 0
              Top = 0
              Width = 694
              Height = 291
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
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = dsOrdenCompra
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
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn6: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sIdInsumo'
                  Width = 91
                end
                object cxGridDBColumn7: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'sDescripcion'
                  Width = 289
                end
                object cxGridDBColumn8: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Width = 63
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 53
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Width = 60
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
          end
          object cxTabMaquinaria: TcxTabSheet
            Caption = 'Maquinaria'
            ImageIndex = 50
            TabVisible = False
            object cxGridMquinaria: TcxGrid
              Left = 0
              Top = 0
              Width = 694
              Height = 291
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGridViewMaquinaria: TcxGridDBTableView
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
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = dsOrdenCompra
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
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn11: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sIdInsumo'
                  Width = 91
                end
                object cxGridDBColumn12: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'sDescripcion'
                  Width = 289
                end
                object cxGridDBColumn13: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Width = 63
                end
                object cxGridDBColumn14: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 53
                end
                object cxGridDBColumn15: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Width = 60
                end
              end
              object cxGridMaquinariaLevel: TcxGridLevel
                GridView = cxGridViewMaquinaria
              end
            end
          end
          object cxTabTercerias: TcxTabSheet
            Caption = 'Tercerias'
            ImageIndex = 44
            TabVisible = False
            object cxGridTercerias: TcxGrid
              Left = 0
              Top = 0
              Width = 694
              Height = 291
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGridViewTercerias: TcxGridDBTableView
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
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = dsOrdenCompra
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
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn16: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sIdInsumo'
                  Width = 91
                end
                object cxGridDBColumn17: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'sDescripcion'
                  Width = 289
                end
                object cxGridDBColumn18: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Width = 63
                end
                object cxGridDBColumn19: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 53
                end
                object cxGridDBColumn20: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Width = 60
                end
              end
              object cxGridTerceriasLevel: TcxGridLevel
                GridView = cxGridViewTercerias
              end
            end
          end
          object cxTabLogistica: TcxTabSheet
            Caption = 'Gastos Logisticos'
            ImageIndex = 27
            TabVisible = False
            object cxGridLogistica: TcxGrid
              Left = 0
              Top = 0
              Width = 694
              Height = 291
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGridLogisticaView: TcxGridDBTableView
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
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = dsOrdenCompra
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
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn21: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sIdInsumo'
                  Width = 91
                end
                object cxGridDBColumn22: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'sDescripcion'
                  Width = 289
                end
                object cxGridDBColumn23: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Visible = False
                  Width = 63
                end
                object cxGridDBColumn24: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 53
                end
                object cxGridDBColumn25: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Width = 60
                end
              end
              object cxGridLogisticasLevel: TcxGridLevel
                GridView = cxGridLogisticaView
              end
            end
          end
          object cxTabRecurso: TcxTabSheet
            Caption = 'Recursos'
            ImageIndex = 43
            TabVisible = False
            object cxGridRecursos: TcxGrid
              Left = 0
              Top = 0
              Width = 694
              Height = 291
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGridViewRecurso: TcxGridDBTableView
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
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = dsOrdenCompra
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
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn26: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sIdInsumo'
                  Width = 91
                end
                object cxGridDBColumn27: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'sDescripcion'
                  Width = 289
                end
                object cxGridDBColumn28: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Visible = False
                  Width = 63
                end
                object cxGridDBColumn29: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 53
                end
                object cxGridDBColumn30: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Width = 60
                end
              end
              object cxGridRecursoLevel: TcxGridLevel
                GridView = cxGridViewRecurso
              end
            end
          end
          object tabInformes: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            TabVisible = False
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 189
              Width = 694
              Height = 102
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 692
                Height = 100
                Align = alClient
                TabOrder = 0
                object cxGrid1DBChartView1: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'Periodo'
                  Categories.DisplayText = 'Periodo'
                  DataController.DataSource = dsGrafica
                  DiagramColumn.Active = True
                  Title.Text = 'Gr'#225'fica de Movimientos Salidas'
                  object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
                    DataBinding.FieldName = 'TotalSalida'
                    DisplayText = 'Total Requisicion'
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBChartView1
                end
              end
            end
            object cxSplitInforme: TcxSplitter
              Left = 0
              Top = 177
              Width = 694
              Height = 12
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 694
              Height = 177
              Align = alTop
              TabOrder = 2
              object dxLayoutControl3: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 686
                Height = 169
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
                      Caption = 'Imprimir datos filtrados con detalles.'
                      Value = '2'
                    end>
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Height = 111
                  Width = 495
                end
                object btnImpInforme: TcxButton
                  Left = 531
                  Top = 127
                  Width = 145
                  Height = 25
                  Caption = 'Imprimir'
                  OptionsImage.ImageIndex = 5
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 1
                  OnClick = btnImpInformeClick
                end
                object dxLayoutGroup1: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem18: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  CaptionOptions.Text = 'cxRadioGroup1'
                  CaptionOptions.Visible = False
                  Control = opcionImprimir
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem27: TdxLayoutItem
                  Parent = dxLayoutGroup1
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
          Width = 698
          Height = 30
          Align = alTop
          TabOrder = 1
          object cxNuevoDetalle: TcxButton
            Left = 454
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
            Left = 535
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
            Left = 616
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
          Width = 698
          Height = 35
          Align = alBottom
          TabOrder = 2
          object btnGuardar: TcxButton
            Left = 523
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
            Left = 610
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
        object PanelMaterial: TPanel
          Left = 1
          Top = 361
          Width = 698
          Height = 118
          Align = alBottom
          TabOrder = 3
          Visible = False
          object dxLayoutControl2: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 696
            Height = 116
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            ExplicitLeft = -23
            ExplicitTop = -39
            object cxCertificado_det: TcxDBTextEdit
              Left = 104
              Top = 11
              DataBinding.DataField = 'Certificados'
              DataBinding.DataSource = dsInspeccionDetalle
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
              Width = 225
            end
            object cxParametro_det: TcxDBTextEdit
              Left = 104
              Top = 40
              DataBinding.DataField = 'Parametros'
              DataBinding.DataSource = dsInspeccionDetalle
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
              Width = 121
            end
            object cxFactura_det: TcxDBTextEdit
              Left = 246
              Top = 11
              DataBinding.DataField = 'NumeroFactura'
              DataBinding.DataSource = dsInspeccionDetalle
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
              Width = 121
            end
            object cxResultado_det: TcxDBComboBox
              Left = 328
              Top = 40
              DataBinding.DataField = 'sStatus'
              DataBinding.DataSource = dsInspeccionDetalle
              ParentFont = False
              Properties.Items.Strings = (
                'PENDIENTE'
                'ACEPTABLE'
                'RECHAZADO')
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
              Width = 121
            end
            object cxFechaLiberacion_det: TcxDBDateEdit
              Left = 585
              Top = 40
              DataBinding.DataField = 'FechaLiberacion'
              DataBinding.DataSource = dsInspeccionDetalle
              ParentFont = False
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
              Width = 100
            end
            object cxColada_det: TcxDBTextEdit
              Left = 585
              Top = 11
              DataBinding.DataField = 'LoteColada'
              DataBinding.DataSource = dsInspeccionDetalle
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
              Width = 100
            end
            object cxComplemento: TcxDBComboBox
              Left = 458
              Top = 11
              DataBinding.DataField = 'Complemento'
              DataBinding.DataSource = dsInspeccionDetalle
              ParentFont = False
              Properties.Items.Strings = (
                'LOTE'
                'COLADA'
                'CAT'#193'LOGO')
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
            object cxFuenteSize: TcxDBCalcEdit
              Left = 104
              Top = 69
              DataBinding.DataField = 'FuenteSize'
              DataBinding.DataSource = dsInspeccionDetalle
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 89
            end
            object cxCantidad: TcxDBTextEdit
              Left = 255
              Top = 69
              DataBinding.DataField = 'dCantidad'
              DataBinding.DataSource = dsInspeccionDetalle
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxItem: TcxDBCurrencyEdit
              Left = 412
              Top = 69
              DataBinding.DataField = 'iItem'
              DataBinding.DataSource = dsInspeccionDetalle
              ParentFont = False
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = ',0;-,0'
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxSerie: TcxDBTextEdit
              Left = 574
              Top = 69
              DataBinding.DataField = 'Serie'
              DataBinding.DataSource = dsInspeccionDetalle
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahClient
              CaptionOptions.Text = 'Certificados'
              Control = cxCertificado_det
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahClient
              CaptionOptions.Text = 'Par'#225'metro'
              Control = cxParametro_det
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Factura'
              Control = cxFactura_det
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Resultado'
              Control = cxResultado_det
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Fecha Liberaci'#243'n'
              Control = cxFechaLiberacion_det
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              Control = cxColada_det
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              CaptionOptions.Text = 'Complemento'
              Control = cxComplemento
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tama'#241'o Fuente'
              Control = cxFuenteSize
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cantidad'
              Control = cxCantidad
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Item'
              Control = cxItem
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Serie'
              Control = cxSerie
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
          end
        end
        object cxSplitMaterial: TcxSplitter
          Left = 1
          Top = 353
          Width = 698
          Height = 8
          AlignSplitter = salBottom
          Visible = False
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
  object dsOrdenCompra: TDataSource
    DataSet = uOrdenCompra
    Left = 29
    Top = 254
  end
  object uOrdenCompra: TUniQuery
    Connection = connection.Uconnection
    Left = 32
    Top = 304
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 17
    Top = 168
    object CopiarFactura1: TMenuItem
      Caption = 'Copiar Factura'
      OnClick = CopiarFactura1Click
    end
    object CopiarColada1: TMenuItem
      Caption = 'Copiar Colada'
      OnClick = CopiarColada1Click
    end
    object CopiarResultado1: TMenuItem
      Caption = 'Copiar Resultado'
      OnClick = CopiarResultado1Click
    end
    object PegarFactura1: TMenuItem
      Caption = 'Pegar Factura'
      Enabled = False
      OnClick = PegarFactura1Click
    end
    object PegarColada1: TMenuItem
      Caption = 'Pegar Colada'
      Enabled = False
      OnClick = PegarColada1Click
    end
    object PegarResultado1: TMenuItem
      Caption = 'Pegar Resultado'
      Enabled = False
      OnClick = PegarResultado1Click
    end
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 160
    Top = 81
  end
  object frxDBRequisicion: TfrxDBDataset
    UserName = 'frxDBRequisicion'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 208
    Top = 85
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
    ReportOptions.LastChange = 43648.565633437500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo6OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBRequisicion."UsuarioValido"> = '#39#39' then'
      '       Memo6.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo6.Text :=  <frxDBRequisicion."sFicha4"> +#13+ <frxDBR' +
        'equisicion."UsuarioValido"> +'#39' '#39'+DateTimeToStr(<frxDBRequisicion' +
        '."FechaValido">);'
      '    end;'
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBRequisicion."UsuarioAutorizo"> = '#39#39' then'
      '       Memo7.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo7.Text :=  <frxDBRequisicion."sFicha3"> +#13+ <frxDBR' +
        'equisicion."UsuarioAutorizo"> +'#39' '#39'+DateTimeToStr(<frxDBRequisici' +
        'on."FechaAutorizo">);'
      '    end;'
      'end;'
      ''
      'procedure Memo18OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure MasterData3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '   Memo14.Font.Size := <frxDBRequisicion."FuenteSize">;'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 112
    Top = 85
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxDBRequisicion
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
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 132.283523150000000000
        Top = 464.882190000000000000
        Width = 980.410082000000000000
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 3.779530000000000000
          Top = 102.047244094488000000
          Width = 147.401574800000000000
          Height = 30.236213150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'FO-MEX-QMI-029-S Rev. 0'
            #169'Copyright Subsea 7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 789.921770000000000000
          Top = 102.047236770000000000
          Width = 188.220189290000000000
          Height = 30.236213150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<Page>] de [TotalPages#]'
            'seabed-to-surface')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          Left = 75.929190000000000000
          Top = 45.354359999999900000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFirmante1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 75.929190000000000000
          Top = 2.000000000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REVIS'#211)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.000000000000000000
          Width = 263.055108350000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'APROB'#211)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 642.520100000000000000
          Top = 45.354359999999900000
          Width = 263.055108350000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFirmante2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 642.520100000000000000
          Top = 64.252010000000000000
          Width = 263.055108350000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuesto2"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 75.929190000000000000
          Top = 64.252010000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuesto1"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baCenter
          ShiftMode = smDontShift
          Left = 459.968848600000000000
          Top = 102.047244094488000000
          Width = 60.472384800000000000
          Height = 30.236213150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '28-10-2013')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 155.377004370000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Condition = 'contrato."sContrato"'
        ReprintOnNewPage = True
        object Picture2: TfrxPictureView
          Left = 832.540378200000000000
          Width = 145.889736930000000000
          Height = 56.373199910000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo64: TfrxMemoView
          Left = 87.929138740000000000
          Top = 128.401574800000000000
          Width = 177.637795280000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."NumReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 1.000000000000000000
          Top = 128.401657800000000000
          Width = 86.929138740000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Reporte No.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 1.000000000000000000
          Top = 3.779529999999970000
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
            'Sistema de Gesti'#243'n del Negocio  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 1.000000000000000000
          Top = 52.913420000000000000
          Width = 977.386244170000000000
          Height = 25.511815300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Departamento de Control de Calidad')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 1.000000000000000000
          Top = 79.370130000000000000
          Width = 977.386244170000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de Inspeccion de Materiales')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 378.952755910000000000
          Top = 128.401670000000000000
          Width = 188.976377950000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."ContratoR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 265.566929130000000000
          Top = 128.401670000000000000
          Width = 113.385826770000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Contrato No. ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 857.818897640000000000
          Top = 103.944881890000000000
          Width = 120.944881890000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 790.921770000000000000
          Top = 103.944881890000000000
          Width = 63.496060550000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Hoja:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 857.818897640000000000
          Top = 128.401574800000000000
          Width = 120.944881890000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaInspeccion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 790.921770000000000000
          Top = 128.401574800000000000
          Width = 63.496060550000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 662.417750000000000000
          Width = 149.669266930000000000
          Height = 56.692950000000000000
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000011E00
            00007E0806000000F24A7E380000000467414D410000B18F0BFC610500000009
            70485973000017110000171101CA26F33F0000B5EE4944415478DAECBD07731C
            579626FAA52B5FA882F70440EFAD448A1229DFAD36D36F7A666777DEFFDB88B7
            F1DE989D99366A75CB5394445134A2B7004178EFCAA7DB73CEBD595580483567
            A63BA6231E2E238942A1AA32F3D63DDFFD8E37421AF8938CF039BF1BFA71A81F
            1BCFF85BF40E439E4118A8E7C3E79CC308D55BBF771E537ECA1DD17F61FD7975
            18061FCDEF33EA8FBC2D77B0F5D4069A4EF98CD78572F53C02C89406A15C035D
            0D4CFA8365A8F323A46B0C0C7E997E73A8EE27FA74A3F93E9BCF6A343DF78C8B
            091B3F02B3F11CBF5C8E3FCD97BC3DB6C79F64187F5AE009FFC8DF9E25BEE1A6
            7709F4D405179B3FD3089B8EC63BB478932C9BFA4CE6A63334439FCF0709BDE7
            ABC3E79F742E8FC02EA0F3126CC0E79F01E39F3A0F0386692AF0601031C1BF1B
            B0E849CBA29F1660D3E1D0DF6C28F833B7CC8819DD3D7DAEA9815123A4069EA6
            7BDC0ACC46F4D86C7A7EEB3C364034341AB32EAFDC069EEDF117365E18787EE8
            454D4B7ECB3BC24DEF0E9FB1FCB78A59249C24FD5A30D16001F2C75049AE6603
            81808E25A0E3D263662E011A84223AF8F98A0B944B40A1A88E123DAE94AB2857
            CA70DD0A0112838F0F8F10C9F7357361A0310C01189B10C6B614E038310BC944
            828E2452A9383269A0858E4C124810FA385BEE31BA378B7E8921C29A67814FD3
            551BCD77A081279A424617A319601BCC6EEB3C6F83CEF6F84B1B7F26E0791608
            35FFD578E66733DB11CEB20978B4D089DC1975F0098D88E98838CBAB085750A1
            833005852AB05108B0562861BD50A1A34A878BF50D1F6BEB01FD2D44B9ECA34A
            C0532134F2DC2AB11C9F580E810E030F3FD69F6E12D030C3B189D6D8B6099B1E
            3B0E034F1CC96402E97402F94C0CAD399B0E07B96C1C597A2E934C2195B6904E
            012942A20414E8586862614DEAD6D67934849F45306A7C6FB636339FE6DFCD2D
            BF37A972DB637BFC058C3F03F03C1B749A7F0B36094163878E388C19869B298B
            A21D4D060BA3AE36D5F8A05FCA5E880201C65A39C01281CAFC928799B935CCCC
            2F616E691DCB2B45019F42C92586E3A3520B086C7C041E311B6637AC5BC9118A
            8A15FD53C063D4D52DA562411F0A8C12711BE9780C99540CD94C022DD914DAF2
            2D686F6B4757672BBABB1C74B61968CD1AC8C64C2409BC62A60220F31933A5A0
            43298F863E420D40C673BF89EF0351182A50360C73CB99B6C7F6F8AF1DFF2EE0
            D96C8BD9FA58BFA2AE3AF043525D020533A665D55FB9095344C40CFD3B3D2255
            8705CE8E84285462E8CBFE6F887611092C911A2C12F24CCE03E3D30B7842C7CC
            D2069689D92CAFFB585A29D1CF02D64B35946B9EB2EB20B2EB10A3E127F86248
            31B20C3A239D4BD43CA8D3866A8204F31423896C3ECA8A64D0FD99F4D866D58A
            5910DB7C188C481D4BC41C022102A0D61C814F1A1DED09B4B5D8E8EB6CC1487F
            3BFA7BE268612684863D88191B133DBEBF98A1785C64B50A42BAF2C0A5EB0431
            AEE81D8132C41B5BED3FF47A9FD5457ABF198365C7A13E757B6C8FBF8CF1EF06
            9E6799889F073C4A750994378984858DB7F267662C66A40E6C069E90E0C52461
            B28CCD6A03BF860593194EB10CAC6D9430BB5A24C071313A59C1D8C422C62617
            30B7BC466A16018D1BA242C052634B32D3134207CB89C1746C393F41A2A854EC
            02324909B28C044D86D5504E9A8047014ED0A4FAA94381125DAB19CA35C37789
            45D5C45E14B8AEC06522414C289D418640289B8E13F064B167B803BB8672E8EB
            49A0BB2D494C28496CC910C334F41D3B4D772F9042C06310F0D8860238019DC0
            A34BF2B5ED597BECB4DD27F0096889CD99A603DB4902F54FDF1EDBE3BF7EBC10
            F0E8BDB5F1266C011EF984400B67F39361DD3ECCA0E3BA1EEDE8240C960DD376
            4850140BDA2CCEA1F673290B87DF74A6123DBDB00C3C1E5BC5EDFB4F716F7402
            933345AC1643021A8B0E4300A74A60479A14DC40732B451394EB894088198BA8
            2EE25922810C097410A74BB6D1F0246DE5784D3C4DC048A965FC59023C629BA2
            FBF36A023E011DCC5018231CBAD7782C86B86321E50462806ECF39E8EF6DC5D0
            602F768FF46264471EBD9D2632B6363EEBB3F10C3108D9CC7EE8BCE235933F32
            A8BB74788A79F17B2C43A9550CECA15214798E0DC341C3B2B43DB6C77FFDF8B3
            024FA80DC54ACC43A1FE010B2B018F61DB624A668F35BBB319987CA21901EFDC
            96122EFE283616AF9296313D53C1E3F1193C78BC8047043C4FA7D7B0B0B2818D
            92879ACBA131A452386992DA04B1154B002BA46B08445B6363746427091BD72A
            2C2146424AA21E6C31FB3ECBAD1D313AFE5B18D4E38DC4C56E34A93E213329F6
            D53323F11450D161856C4FAA123ED5080743E4D229B4B7E53130D081DD436DD8
            BFB31DBB06DB31DC1B475B42015034EF76D870D72B2614885A0A6D9B124EC8B6
            28E889E3E795518A0EFB19DFDAF6D81EFF75E3CF083C4AD5127586ED156C08D1
            D61931936A03B127CC8440870FFADD6795CC522A15B39785B24B80E3E2FA8D49
            3AEEE2D1E853AC155D02AE3412C916FAC804AA446F4A1516726635313E996255
            AC629986000EDB48C25079AD9490865A281D7ADE9663132B30C267CFC456E069
            7687B31DC86876BED139097CD8DE127804407CC8CB2D01088BD5243AE244485A
            B3710CF777E3E0DE419C3CD4857DBB12E82156948E59628856AC47AB5EA172CB
            ABC7613DFE50451D842A50890D59FC026179F636E66C8FBFA8F1C2C0D30C3ECD
            0EDBFA0B223B883C5471369EE7C2ADD5C41D1D8B933A63D875B061236A7300AF
            C88EA90CACCB2433A3B3C083A7ABB83336817B0FE6F1E4E902319C7594ABA4C6
            B0A7C68A914CC549CD892324F0F088E5B0872A60A1A31DDE20D5860DDA06830F
            1BB9997DB04D44802710CC312C259401215DC0A065985B04F419E1C13AB66713
            0005918F4D4D0C330F53820DD5DF1BE0C3AFA57312C3628B8E58B7485D8257A1
            9F3524084D5A33310CF6267070671B8EECD981E30707B067C8461ECA301E9DCA
            605C091A8676D6264DAB097CC4E80C65DF8A90707B6C8FBF90F127069E6675C4
            20B6C3064E4F80C789C5C547230C87FE633165466269612172834AD5C752A586
            3B53657C7DBB846B0F16F0706C12933333F06A1598C91492E90CBDCF41D50D50
            ABBA723A339E8445C0C66E718F808901C47062C268C4E6A1550F053C511A83A1
            3C6DA6A9A265B4D1BB3922FAD979094DE90CA656C144DDF1B5EA857A4C8E61AA
            E04356B3020620D1FB18741234138E44403B6C2332187CCA708BCBA81557607A
            4574E73338B86718AF9C18C6A92379ECEDCFA3A33D8DA4764E315E3112191A7C
            6C669596B62D1B4DF141A6517F6E7B6C8FBF94F1A7059E2D713C6118998949C4
            4C4B84BB4A54878187DF6C931AC1768B2ABD6E71993D54CB7838B1844B77E6F1
            ED830D4CAD84A8F8062A5E8DB4078FD42B4BBC52FC59A1A1BD6162BF3125A050
            308F190F5F9D69D5AF342226758D48AEC814810C4DE5E1E27F9B6E2AD4C0F33C
            813522498742ADC06F808FD85E22D7BB7AAD5C034184652689A9A515CB723D51
            C76256406CC787E597E057D6E095D6E00455E4530EBA5A6318E849E1CCD17D78
            EDCC51EC1C8A23417A971D28C663865BBE0F43DDA3649C302072A4B5BDCD78B6
            C75FD6F8B3024FDD5D1E46066652BFC404A10CB2866DA2420C67726E99D4A927
            B872E311BEBB3F855B63043A1B0E02B31556B60DB1640296632A97BCCEB15480
            019557E5FB5AC8B43D23D43A9C189A742C908E0732349331431D0BC32F31E9FD
            ACBB6CC9017BB6B436256B6A0F52340946180522EA24B0E6940F6661043CA611
            A72346C060AB404502543BAC11FFA9211656E97119260190E11681DA0681D02A
            014C153B77F4E0ECA9833879A407BB867A31D8D3893662450C427205C1E6CB0F
            B5C15ED43E6B1B78B6C75FD6F833028F16DC40D93A83C8EB6299F504800ABD6C
            6E611D77EE8FE3C68DDBB8FADD1D3C185FC44239819AD38D9A99836BC404502C
            623B96E308E3F189CDB824E49EAF9239E574CC703846C7D2595292721119919A
            33BB75A67AD3352BD0F1B7246B3607303E4B050B23FD4CA974DAA3C46A5C5867
            403ADF8BEFDD50AE6DB6F1B0CA1585068ACEE49608644A043065C4CC1A12B64F
            2A952740145637101200394615BD1D591CDE3782D3A78EE2C49103181EEC403A
            A9AFC60F959DC730BE8F31DBA0B33DFEC2C69F1978CC86092454F606DE7DC53E
            4AFFAD578099F9353C7E3285B1D1718C4FCD6061B58A8A9125E069C32A6DFAB3
            4BEB585A5D47B15C11B6245E28875DE604481C9F627150609CD8131B992D9D8E
            11362EB67E6D411389898CAF3A8143678A9B4D713B8D3CB0E82EB7E43FB11A19
            68AF169DD724F6661AEA88DCE762580E1A865EC9EB64F011FB974B6A15034E99
            FE5013BD4900870E56BBD2B110F9A485B68C8D5CD2848D8AE47B0D0FF4E0F0C1
            3D38B067183D5D59C46D1DA8E9F91235ED58CAAEA5E1F5BF7A7D6D8FEDF1CCF1
            EF069EAD62587FC1F792449B85549B41A0848F41C7254250AA12F814CB58DB28
            60838E72D54595D800EDF9D8F06C2C1332CD2C2C11382D636EB180E535171B25
            1F457A5FB966A2EA13F3E1C40206213326A0A45C3B9676951B757051C0E347A9
            EFA8EB260C2F44C90C6D3389847533F034A2A88366300A23C6C449A416943265
            34C55A87DAA8CD49A72E3C366E733C91C9CFD5E8BCCA93954EC5D19A4BA33D9F
            406BC64226E12197023AD27174B765D1D59A26D031880D05C86592E8E868416B
            368D645CDB8E02E596B7E83A3883DE3434304A643583E17F3E5DE279E932DB63
            7BFC47C67F388EC78CFEF0BD9F4D768D261525D0E125AE3EFCBA194805F6714E
            57940659F14D943C22032450558FC1C6C5E28A4700E4636AAE403F57304B40B4
            B05A2170AA495C4F99038539C38BF3928805719022AB68A1C4F1840A74223750
            044051990D061ECE6B0AD8F6B3056C420D2346038C24534BA781A8644C08A29A
            927E11EAD81A4EFD50690EA24E11D00421870210E0901AC559EBADB90CBADBF3
            2A91B4238F9E4EFABD2341400310DE2043EC254DEA639C0EC754713C9C196F9B
            DA551F452D739C0F7B08D9646E28E0E3EC7A4F58902391D30DB07CE62A68FA43
            545A63F3F7FFBDB7A86FB5E93136BD7F7B6C8F1F1A2F083CEA5F400B3D90C448
            2E0DE134129A9AD51AA1353A4D413B96247647038F179946A08B67598D5894E8
            423C7D444B981F73A98B950D6071953D606B985F2B6266A98CA7D315499B985D
            D8A0E70B12C95CF54895316C04A68DD0B695C74B90D257D22BFE677DC186663E
            CC0E188F38C64F00C450CC298C0431D4366A6D5416608B29ADADAAB34FE14802
            A7C1F3542BC12FAD11CA1689D5B8C8A76DE47331B4B526D0D69E40774F163D3D
            ADE8EDCCA23D97450BE77265E36821C0C92501FA2191CBCDA99F11CB54AAAA27
            EA5A48AC89C1C621908D71D0A43676F3F7E47BA1C40B591C29FE2C0F5D7318C4
            96F8A5E63CF8ADC923804E92ADF3BF469A8BA1CB946C8FEDF143E30580A79EF0
            008F1639830F53F798199708DC7A29CF2884C7D3B94C9C5E1D3322FBB24422D7
            EDC0CF38E44C3A062F92ED68B9FB3A415442574275D4E81C6BE51093730126A7
            4B043ECB187B3A8F89A9552CAD5425437DAD504389E895C7948073C362C48462
            0C46862A0F6AE8686B53AB62A28591E8F8CC1DF4BD85915805DA31A66C3A9286
            C007DF7B2D90F770DE9708A25785512BC2743790B16BE8C95BD8D9D782A1FE3C
            4686DA3134D886BEDE1C81501CD914A9509612D7681A2520109BB3ABCCA6E74D
            FDBDD09D09F0B01D89D52C6636463384730A8A6F4A790CB33EA7CD5F6D0429D1
            C437263F68029F005B47A8537B83FACFE8CA8DFA556EB39EEDF1FCF102C02379
            DC72849276A00454A915B604C2C98A66A9894259B86C04810E9B5E783019A8A1
            51D798976414FE1F2DD17A1599B089EC6B4330C39E1B7279526DC8557C443121
            5F55135C2F56B0B052C2C40CB1A0A9321E8C2EE1C1D814266697486D23E14866
            E0A4730862714922E583D530D3642657A56BAF896A6610A09A1CE417D8E22912
            97371B898DB001527CD1929AC0CF31A36017B9839000C8AF5460B915E4E221FA
            3BD2D83398C381E116EC1E48A1A73D89CE563AF249E45B4C2475EE5524DC11D3
            0B9AE6A9D9B666A339572B8297A8E06B54FE55BDC194C455430556EB10253372
            EED5FF8B6A1079CA1625C5A1D943678BDD2A40A314D9A6450368D009F4CF2895
            D7DAF2AD6E8FEDF1ECF142C0E3EB7FD0E656CF7569ADFAC47A1CA2F809514978
            5765C6225E6C5E7B043A4512F8E5420525AE8543ACC3D3817E523A940F8B0DA6
            CA1313D36A570C8DC3A85F4108B18E70C433D7CC312DF1E058C6E6FAC6CC88D6
            2A20B52BC4A3274B78F86412A3930B985E7231B3EE6171DDC50AA962653632F1
            7527D370E271299A1A781501364E1835C3B8C4DB88074AECC3AE1887C5FB446A
            93D8B10922FC4A99EED917B5CB22B52B4D3F5BE20E319C0476F6A771606707F6
            0F7561D7401ADD79201D532490EF8D6D36CD75999B8F7A1D7834F88880121BE5
            5D7570C90B3F50066406418FF458D7E59C37C57C326983D814DDA2AD124CADA6
            C07229F521C4A6097838168A3F8BF45F89FAE6EFF439C0230B6753A1B208789A
            39D936F06C8FE78F3F0A3CAA428E8AEC8D5E58D36542D9A6106301969AC78DD0
            19CF50252C1E4FADE3D6FD29CCAD10256177B764A5737D180731AE59CC47DC44
            8A8435957090E6DA35F4389F34C5CE11331A6CA8297AA66E45D8AC7AA8C1025A
            A58BE12A83EB952A16365CDC9F70F1CD8D097CF3DD2302A345144A0480B13C8C
            540EB1640A313A3707F2552A2EBC722025324C3B45979C106F55406CC8AD16E9
            9E0B248F55C4E201C927014FAD008F0ECE3ACF266318E8EAC0C19D3B70EC401F
            F6EF6EC18EAE185AE99ED2A495C63935427C70065B8234676B9E670D30A132BE
            D7B44AA989A4D4205A5E0356D76B2814CAC4F2AAA8BABE64F6D76813A8565DD4
            AA1E5D9F836C4B0BBA3AB2E8EF72B0A3C300112F29BB5A3F89AFD88AA99D7F6A
            C7707515329D686B2A488FD4AD672D12EB7B551137D750DA1EDBE379E3058007
            BAF066A3A804BB8599C35BACF670098A50ED8CBC8D321014E8783C5FC467971E
            E38B4B773031B70E239E92C44E160CCBB1696D9B88C7B8529F41A0632193B248
            78E3C826E26865F732496B269690225A6D2D395251B89E3190A1CFE67A7ABA14
            960C152CCCC17A5CFFC6876DB3602B3D8FAF85B42F52BD9671E3C1046E3D5C23
            F0A9627CB62A0C8893432D028D18E7927102A7CFCA4C0201D11A5639545E05E7
            7871818E757ABC4127DBA0F39411B76BC8A76C52A95AB073A00DFB76F612CBE9
            91D216BDEDA61888C5764380E3A144ACA402272490B5B2B00DE77B735DA2FB58
            2FB001BD8685B575ACD02F05024FAE9EB84148BEB41610F854B1B651469140B2
            E6878215CC04CB951A6A74F03567723974B467E93AD23877BC1BA70FE4D111D5
            01937A652AB2DA71981D194A8564E009429D83E668BDAC111810AD85E8813207
            3DC3AD590FB8DC069EEDF1FCF1E2EEF4B051765CDEA8D715A72CD4822861C894
            5DFAC94A0517AF4CE083CF6FE3DAED31CCAD92D03A695A9371E529928255B453
            9A1E6C3A621C34472C224960948A31434812E86488FDA4086C5AD1D7D185E1FE
            3C06FB1222D0AD0452699BD99685B8A954341170AFCCD6208972668F934F3058
            13A54831A1F55A80F1B910D7EE6EE0F2B549DCBE3F8399F975AC174BA41EDA70
            E89CB1043121CEA52256E279ACC2F8C2F90CA34AD75AA44F5C43E8AED0B57918
            ECCDE2C0482F0EED19C0E1BDBDD8D5DF82F616B30E8CD1DC85A8D02714E17A2E
            7D461C293327AE6FE97A51E1B8249700C6C3CA1AD78A662FDD0A2666E749655C
            C60A834C99608B2850A912D06B4955ACF97059E52410E7BA46013DAE08E3A94A
            CD238BD447AE033DD493C2CFDFD88B5FBCB9177B7A6304788A2172A992806815
            1BB5131A7864EBA8B7DC8932F5CD46D66933AF692638D14D6E8D58DFC69DEDF1
            03E3C54A9F869B731FA5A484DDB03DF87A4FAC101A4D2ED6F0F5AD197C7CF11E
            AEDC9EC4FC9A4F3B7902BE91A457B14846E6D41ABD910029203A023A4885316C
            8F76600B098718088194456C24460B3F9B48A22397462FE90C031D19F4B5B5A0
            978EFEAE3C1D6974B71313125D822FD2852AA5ACCAABF2A17B57D4DDF2B3ABC0
            A3F10DDC79B88A9BB76771EBDE18A617574898E3C4C47230632D045E2901C99A
            472A18A9599EBF81B855424BCA2596E363D7401E2F1D1EC1B17D8324E0A4D674
            24D11E87E659CC42E8F095AA6412B032C82A97B32380B84AB73C395DC3C4C402
            A6E6E60870D6B1BC5A15556A79956B4597C460CE45E96BC4C45CDF90A04B2F34
            2542DB72F85A1352CE95BF10BECE5AAD46C445D7FC09AA68C91A78F5682F7E7A
            7E0F5E3ED48BC12E62908EAAE103895B0A243B9E8B335A960E31F73DFD25DBBA
            8E4FC47CCC1F5C1FF507CF6B38B83DB647D37831E0F11B8754BC900253DA4B65
            3552A2A68B212E5E7D8ADF7D7617576E3DC51CA90681D34E471BADF3243C8353
            1D38F9935DBC3502B212BDB1A80E5245187CB88C281B9DC5E142D2EB97AB5240
            2BCE00144FA0359944674E81CF705F2B76EDC863476F1C3D1D0E01500EADAD09
            492388A28FB8D7160BADAFE52752D10A812AA37AFFD12A2EDF78826BF7263031
            B34E6A4E995808B1093B49EC272505CB6A9C4B1516D1DA6260E78E1CA953AD38
            B1BF0FC776EFC0704F1A5912E6BA87CA55001D6A3754A8ECD328D3731CEC3847
            2AD40C9D6362AE8627131B78323E8BE9D939029B02311A62329E41AAAC2100C3
            89A44AED89090313FF157BD16C474AC74AB13353D510E294144F023155090EDF
            2D236114D193F370726F07CE9FDE8733C70824BBE248436313B11E9B5E1B979E
            613ABFCC731500F1CE520F3C6C8ACD6976413E3FB2701B78B6C70F8E3F0E3C91
            9BA5D9BD616A23323FB654CBDC352230DF3D5AC1AF3EBC828F2EDEC4D4920BD7
            22C0B10978AC3C014F8A76EA24BD3E2E9E93D0E430FF0A01100B351D043CA659
            23E0F16547E6486629DE43F4C5A0C71609140B8943AA4F8C2E2A4D2A0217CDE2
            62E91DB9187A3B33D8BF6B0807F7EFC0E0401C2D19E5F552F57F54E80D6B6066
            D3EDF0ADAD95028CCE5471FDC132AEDF19C777B747F1E4E99CB4C231ED9864C6
            67337174B4253032D486A307FA70F2701FF6ED6845171B8EB5274EB08E3ED4AD
            E8F42D851720ED88CE018CD339EE8E4EE2E6E8533C9C5EC2F472196BC59AF4FC
            2A9599A5B1B72E265D21B8403BE7A131C8406C4D3129E72AED6A0C5574474AC5
            4A8131AF9E0B663A96AA652D066317A6BB065467415A2A5E3DB50F3F7EFD084E
            1DE84677CAD689A5C4BFE873585DB59B8DCC81DE5DCCE6608726E0F9C1158517
            7BDDF6F8FFF57871E0690E2ED1876091C56E7390F06EE0D36F1EE2DF3EFC1AD7
            EE3E45D5C821D63208D7CC930A9315C603B6F1D8315DBE82D5B32A09134B6A99
            2EA4482C9DF889A1B3BA5915806E17C369001C4BC345D4AB1504157A8F5B1535
            214DF4863D61AD9924BADAF318DED181BD3BDBB17F773786075BD1416A58C268
            C4D2AABBE5E86B9FC0C2173FD346E8607289D8CFE422BEBDFE18972FDFC59D7B
            8FB0BE51403A9BC2FEFD3B71F2C47E1C3B30803D0438C31CFC67476A952FB659
            BB5E6A439DA34273B2B042F342AC863D6977E9B8373985D1F925CC96CAD8E08A
            84A6166E36349B8E18C425362A3455E179061B3B2E4679E8981C435517532911
            5C50DEAB2977383F1DE386830DE009AA6B70D726912015F1F09E41BC7BEE04CE
            BDB41F0706D368E19ACE61A3A305D745924E194104C9D8FC656F03CFF6F8138E
            1753B534E848409DD47851B574206EF310E30B557C79ED213EFAF21A2EDD7C8C
            B9757A43A20376A61F9ED982AA9F22E6C151BE4E5301723EBB8E8DD1E023F90A
            520E546DE20C3C9CCDAEEA58A912A221A709C8E10913B20D6E8E670A38F9AE4B
            420652BB5A7164DF0E1C3F3C8823FBD318EA89A135150311142564A2B410E8D1
            512521778D243D72B0C6003AB1866BD71FE1EAB5DB989B9D453215C7B1E30770
            F6F4311C2230CB91B43A1A8DF9A725B367AA48E740C5D82CD3073D9DAEE1D6FD
            22BEBB338FBB8FA731B9B088E55A0925BA804A8254A6A4A9CA78B0078E8127E4
            D2AD3A1641105DDB551874D8DE22B65B9DB6CA2E6F23D415155DF1BAF1A429F7
            B8EA30C1B96121D7F429AF12A094D09E8DE3E8BE5D38F7F2719C3B4900DA6F21
            A7CD367C0F322FA19AE77A25C5A8AAD8D634881F02956DC0D91E2F305E8CF1E8
            075ECD835B539500E3C998ACB19952155FDF9CC26F3EBD82AFAEDDC1CC9A2BA0
            E3DB39F80EA9585606AE9F20506081D285B34CDD952FAA83C38611062143E7FE
            844A7F13D5225409135CA94F4CC6862E228628339BD4328F0E970491FB48D18E
            6DD32D71F5BE1DDD1CC497C7F1FD3D38B2A70F3B0713E8CE71133DBE296E0758
            D3BDBAE8FA886DF019363CAE11B481A9A925ACAF15A45531B7A1191EE84467D2
            9228DD1ACAC2381C838DE031A92CC858B14A9ACD93890A6EDF5BC4AD7B0BB8F7
            781593F3252C6FB8C40003783113B524F1BC389D2416E83064CD6ED8681C3625
            92E9748D7A1E45D0E4358A5237C2C8F8E6A97932A2BC2B151468D2BCC645FF2B
            4B4131B68D9D397E083F79F3205E39DA81BEB40A7FE08F7202153765EAF3087E
            44A55D814DF916E10F80CB36EE6C8F17192F043C2A1734448D40A7EAD28226E0
            71E24A506F3C5DC7BFFEE10A7E7FF106C667D750315270325DF0AC3431890441
            458C34274E3F30EB99DEBA1F8C2E5111D5CA09B44C191262077E8FD4BC71C543
            235E3002294392CE4DB9067E65C0B12CB540C0C73262925DEE964A44C50A1291
            DCD512C3EE016240BBBB70627F070EEFCE60A43B8BF6168780C31357798504BD
            AAC3E1EA49983AFD83C9453C52AB48B8BDB02AD063110B89212985E757AAC4FA
            A65671FBC12A6EDC59C1BD47EB783A53C0C27A553A65045C983E9D8449ECC98B
            D1F94C022E83EF49BB0905534D5D5F282E2D7AE44699F18891CA6FC4D8445F4A
            33C84406B8B0A9FC07010FDF51820BA8D11C56D6576010E31AECCEE39DD78EE0
            E7EF1CC1D1E104B24D91CD0C3C76D4B52202B8A87E91FEBD114CD89CD4D1B4A0
            B6AB006D8F17182F144018D9956B3A5F8AABE9B9742C1293FFECDB69FCC36F2F
            E2FADD09DAD593A2B6F81687CA660867E2020C61E49EADC785A011FB513F7B53
            D42BEFFC81A5FE6EE80EE9464DA962A6A75BD344651E0C9598CACC206A022399
            A49C575085ED5788E194D196F0B1BB2F23DEA8334787709080A8BF93C0C731EA
            E9167CA6A8815E64568D9235797824C06E5053F962664C4E335FF0706B74115F
            5E79826FBF9BC4E3C9120A55BA6F93981E4153856B4C4BEE1ABD27CE7921BE80
            4EC0F713EAF0643F6CB8080578884DDABACF9717AA56CB125ED3E4D236B6824F
            53C267A880478CF2F41CDB6F1C7AAEB6B14C446F03C7F68DE06F7EF62ADE39D3
            87A10E20A9EF950148E02E4A936B2E3DB4E9D85A7B29D4DFA0AA66BD0D3EDBE3
            8F8D17021E9689283B5CBA43D0B14A6FBBF1601DEF7FFA041F7D7913E3332B08
            632D243459222B49848EAA0828B608DD756253170AB161EA2D145166B725DE1B
            D9FD7DA8D75B7A07375D053ED0ED15EA9D40B53AC29F512F081657F572B8D326
            311F149680F20AF2C43686BAB238B1AF1F2F1D1EC6B1837DE8EFCB229755CE22
            1E2C7C71ED1A174DD0D3F60E8B33DA037155BBC4DCD60A2E9ECE2FE3DAA3295C
            BA3589AB77E7313EEF629D40C7705AA4B9A0612788F9992A185AD7DC3098BD91
            0A14EA2C7711D450D975549B2EABEEB9528C47C7D748290E55BD5059C88326E0
            41BD858D04661ABAC11FF74F27966AD1EB335C32B6BC4ECC6781D4CD0CB19E63
            F8E57B0770E6700E2D3A1C42705D6B8062FFB71A6B40415BD8C476B6820F502F
            A2BF0D3DDBE38F8C17021E1675560C9A33A7C7965D7CF0C923FCFEB3877838B9
            82A5B52AB101028F541E563243F2A2230EA3907C096EF1F44F34025DF82015C3
            D2A9A10C56F55DB55E1650331F53DB3344FDF21B05DDB94DAF64542B3734E785
            898032EBA95560B865D86E098E5740CC23F693B6B0A7BF13470F0CE1F891411C
            3EC47571E292CFC4C013F514E59E3B6155352934B8AB5EC2105BD2CC6201DF3D
            9CC2E53BA3B878E3116E3F59C272997843A60F41A28DC0C981CFEF65FF3D276A
            B1FB8803253960B256D355D098FDC4543C8E94D750C67B2E5C5F2F5A14EA867D
            DCFCD030EAC2AFFEA6E7320200019F4671335555249458283E1FAB5C314E8625
            C663BA45EC1968C35FBF77127FF5EE510C77C6A469209339F9CAB4DDBBDE4403
            0DA6136EE13ED12A894AAD9ABA34C636F06C8F1F1A2F063CA12ACC1E11917592
            A16FEFACE17FFFEA6B5CFCF6110A6E0C25CF4685D0C94C65E02493A8D6AA2AA8
            C56E32203384299FB07872B8191F775CE0C30862E227F26967F74937600758BD
            4E0E0FD35411D350AA89EA2C01C51A624A80953758AB750C4CD58AB89BD91E94
            4AD824FF2E6AEBCB7037D690B142F4B5A771FAE40EFCE2270771E6781F728084
            E939A1D944F54275C90CA0844CB542806BB7C7F1FEC59BF8F2C663DC189DC31C
            C73FB60C22D9358220DE42D8E2ABACF5144118870A737E5765457D207BF76A8E
            6A996C3AD254D090F2A4104091F7F9ECA257356F388B9DB3F939AEC9756BAA57
            BA804FA333AA02A040B54B4654603E501503425564DE3139BD24204DB5848DA5
            69A48941BE71F618FEFE97E7F1EAA941F4E662CA26AD3AE2E89E608D355007BD
            67E4D2378AC42AEFDE36F06C8F3F365ECCC613EA425EB4960AB5100F9EACE223
            623A1F7C7C198F9E2EC24E7612CB69A7BF136BC866914C2775FD9E2A2DFA1AB8
            8A72E0574948AA22382A4EC794A44CCF352414858809CAD510652E81CA0C2161
            28FA21FDABD8029AA05D3846C0608B9C796EA04B70D8301349D2B062BA3C84AF
            A4863FB45C94803883B3DE3349717F57D656505A5A8643D7D1D912C75912BAFF
            FE8BC378F325061E6D94A5EBB248E531A5970ED4C11422CE0505037C7B6B0AFF
            F6E93D7CFAED3DDC995C401119D81DC3B05BFBE94E6DF1FCC9EB1974E2F499E5
            593A1621BD8A63ADC4C0D208197C447755A01109BA309CC0D3F3E449F9542B54
            51C50C3216B19998A5923B639CE4C925456C539543B54229891AD9673868C0A3
            FBA8899B9FDE4BC06B11EB5A9D7F8AF2EA2C7674B7E1A76FBF8CBFFAC9691CDF
            DB8B64AC51884C3EE27BF69D68A934077635038FB50D3CDBE385C60BC5F1A865
            A67A9B2FAE7BF8E6DA437C7AE13BDC7D348DA26B2399E946264F0B37DB8A74AE
            05A94C0A7162188E1392A6E58A5DC3F7CB840115C283AA04BED52A1ECA74948A
            2E36D6AB72AC6DD051AD6135ACA1483BB21F6A56C30B9980276EA5A5F2A141C0
            E07B06A976A69438057799E0EC7262363EAB2552745875E714232B6DE1AC3A84
            846E6E619DD42E1FBD6DAD38B0B317AF9DEAC79BA7BB7170907D54558906B65C
            47DCE48E616D061E477DECE4A28B8BDF2DE1C34B7770F9DE38660A40C9CA899A
            E59142C3AC4DB4480650CE0E2BCDD11B89F564D2A48A76100AA409880840CBBA
            B84EA043092C9EAF407AAA736A2BBBC34DEEBB45CFA50864322947985B92002C
            93E4E8ECA4FC4C11C3E4D222F1982340C4B14F9C4E11D075943DAE5154C346B1
            4CA7A910A856515A9DC7CAFC246A1B2BD837D2879FBE7B0E675FDA2F655745C5
            8C92D49BFC00E1F7568406CC7A256AE51830B681677BBCC078A1D2A72A0DD453
            29061B2E6EDC19C5BD4713F04838D3F976D8F10C62C916245229E9916EC51C69
            C0C7C21E93A8615FB9C52500D093D6C67C54482561F0D9289260ACBB582F7958
            2549992AADE3E9CA12E65756B1BCBC81B5D50D544BBC63731E56460ECB4C89AB
            DE0D6D546957F7486509E231021F4720924B6418562064498A76D50A24FBCBD2
            BFAA33DF861307F7E18D9777E2F4913C7675C6904B72247359D41DCB8F13C8C5
            C43C15014FA0EBE4F0CF1A3D3FB91CE2CABD057C7C791C976E4E608CD0A766A4
            6165DAE9C81299E1F8A292029C90C0274E6F4CB2ED2945404417553155FB61E9
            10E1CAFC304324BE24EA558600A6B52581B66C927E26D1D791143B542E632111
            B308701CA90194A0B94E10DB8BDBB6D45DB60D25F40C3A3E210777692D7A2E31
            55629D9E27A01654CB585B5AC1CC3847351B3875EC208E1C1C2260DB522DF939
            F5E10D5DA5A9B95A4FA31098029FED889EEDF143E3852A1036CCCBCA4B32BBB8
            864239404B5B175A5AF375AF57544021DA0FB576522FD6654AA89D3EB15EB252
            B88BB5119279EE2C41A4075385024617E63131BF84999945CC4D2D6269760385
            D51A2A6CA3F51CD23CE2A44624895DB0E7881E931AE63A8ECA969714021286B8
            C164885803319DF20ACCDA3A5AD3160EEF1EC1F9970FE1F593BDD8DD6FEBA449
            5F75F394A485B884CFF8A456DA9240A96C1F559D71CECE33F654CDAF015F5D5F
            C6FB9FDCC3575746850D9A990E38F90E022182BB6A49456673066992F3AB7CB9
            49830BEFB88614666715C9B1D9F80B622D065AD226DA7316BA3B5252E7A7B7A3
            155DED39F47571E95453AA0A32307107D1C808DE9C5115B56B9634377AC235F5
            81CD05D4F8D2966797E1D284B6E733E86CCB487DA488AB84BAFEF2B3F340C37A
            456603CDAEFCE6CAD0DBC0B33D9E3F5E10786A3AB541E505D538288E043E9E68
            91DDAD22AF088564474BAEA19D448DF29A93BD80AD61F82C189C50C959DC1C3D
            BC463B7491D4B242B182D5A52AE6A70B98185FC493277398982436B45842B16A
            4A64B49D6923C1CEA24CAA57810DB07C1E6E796CAB7C30835887E517D09D7370
            68572F5E3DB987984E3FF6F591AA62AB7B6455920539A9F771EE5AB1BA5A452A
            95457B6B1C8984B275710E163B9D38DC866F617C36C0179717F0D185FBB8757F
            022B8C35891CC25852B2BBB92C07E771788607AFB4C10578100B0C09D433A56F
            3A814D268ECE762E06DF2189A83B871CF477DB684B72454652A5E23612716522
            8A234AFBF8E3E2CD33AEBE1B35F351BD66A369D27D9A67CFAD8A6D28EE3862C8
            662F1A1BE44DCB7A66D9D3A8D8BC116D31F52514C5696D5720DC1E3F3C5E4CD5
            E2762D6E857E546597B362B4FC1D0E3BB3A44467C50F4418B94C2897B4B0F4FB
            A260BCCDC6C8E6113549D1FDB642556F86ADAC86D93072B2AD96B42E4C4DAF61
            747C0E8FC7E73136B98209029F3962412B152EFA6E0B5FF1E8BAD8AB26AD8E83
            2ABCC2227DC00AD2311FC7F6F4E2ED570EE1CDD3C3D83F9040DE8A0223550709
            4ED3F4E9426616D671EDBBC79236916FEBC0D123C3D8B5AB0D19BAA02283A3AB
            028B391E90B417029F105F5E99C46717EEE0DAADA758DA20352495473CD749B4
            242DAA59A95C44505E27AA5144DAF6D09EB2D0DB96467F4F2BFAFB7218E86BC1
            605F2706FB73E8EF05F276A3B68F21D51F95B74A1252B990BB11350ED43133A1
            E21FF25C93CCB337B2AAC3806C1D851CFA81946B65173B73CE5261036E9566CF
            4948C90DF6B4999C43A6DB417F4FD50A814641D40878A23A3CCDC5C3B6C7F678
            F678B10A840C2CDC42B8E22A436D320E8BB6E048557A5E27820878EA4B706BE5
            3A3DA20E0B4D5537246EB039A39CC1873B886E10E5582295667AB9827BC47CAE
            3F9AC18D0753189B5945B96623CCB4239EC993D0985227B9B6B640D750C24E52
            55CE9FDC891F9DDD8FD3073AD09B61F610AA0682815647E83C1353457C73E521
            3EBFF02D26A667D0DED981D75F3F8173E70F62B8332BF134BEBE17763B330361
            C11E7B5AC2675F8EE1771F5E95CA865590EA92EB25752F8B422D40B1521195AA
            355E454FAA823DBD691CD93F802307863034DC8A8E56AE3F6D89B7CA361B6C26
            1438F12447CCD40A6A04384A793575BF0765EA6DCE278FA63C629F91BAAB72BB
            3CEDC2F7699ED8F0ECC392B2B471F1224A43C4664ED5BC4AC2A62F66535D4A34
            552EDC069EEDF1FCA180E73980505F6B6C54753D5AA081F413B04975E09AC9D1
            928B40860532A2F6912AC0E13B120DAB6BBE58D6F72F22AA6458DF370369E620
            DEF44D060C9D3759A5E737E8244F575CDC1E5FC1CDB125DC1D5DC0FDB1794C2E
            9709401CF1FD736F72872E608818C5B9E34378E7CC304EED6DC720D189B441EC
            2D50AE7A4E2C90CA842BC037D7E7F0FB4FBEC697DF5CC6D2DA0A726D799C7CE9
            10CEBD7A042F1FDE41CC24879451BF1C093AE49F9C9375EBD10A7EFBFB6BF8E4
            8B7B989E27B6656411386914D83C462A4C6F6F1B8EEDCAE1E4700287879318D9
            D186BE9E76E45A243B4D4342A02B3AAA1E146228979A85AC2AA9D63E8DB3372C
            70F598EEA85AA4CE2AB175BDA0483D6B245DA836CADC314480DE341B3578747F
            F7A665827AA256F3C208A36F4FE7DAC168A85A46B34AFDFC11BED0ABFE7DE38F
            7D6688FFD8F9FE63EF0B1B73F79FB9C93FE544FD3BAFE53F7BE9CF1A46C83D52
            9ACA55320E719129D531D3A8DF2B2F275ED8AC6654B587A7EC05A8B287CA5701
            7355FA7D8DD40CAE0D2C951B384FA91C4AFC608C76F2B863486E141F569C00CC
            3161C7B9F03B1F317A0DD4A162F5E4B0A23CC4B089D19B8AA930582C94E8D800
            9ECC15F1EDAD315CBAF1084F2616B030B702B75846774707CE9D398A9FBD7308
            678F90A06758005DD84185D40DAE5B9C90EA7E4F56035CBCBA868FB864EBDD5B
            985898418D5DD924BD9DEDADD8B36707CE919A76EEE408F674C744ED6A8600FE
            B958F671F5E624FEF0C95D7CFDCD03624FCB524295D5B5A11D03D8BFBB0FA70F
            F5E1D4FE360CF5289B4D141D23AC4FCFBD6447D4155625DA557A45B94AEC841B
            14FA2A2EA7E2A9839B165608792AA4F7B2F1DBD36D864C02039EF334CD331BAF
            93F43845AC2A15B3484DB424109C3B9F6653317A7EEBE2D24D0C435F17766F4E
            DC8A8028BA3ABF0E3CA18E48379EA37285F5FC3C43657F34FD2DD0FDDEF95C72
            4489F1CF59F511598F363F63EB6786EA33A1DDFD720F4D9559B7CA7288C69351
            06FED6FAD2CD97D210C8502A3F42CF9351BF60AD1E871A9065CA02C95D34CCA8
            76D3B3DE07DDCF4D45A49B4DC5F32396B0E9B5E1E66B827E5F341FDF9F38755E
            E991C7AF311BE76EAA81B0E91EFF54C013B5633242CFD7D15FEAE6FC2090FABD
            3C516C600C8C86DF82AB2373ADE085551232527596D68B522C6BBD5042B150C6
            7A890ECEC8AE301871C6782036139E78DB526A04D754E6EE0631029C643A8E6C
            96053387B6B636B4E633923745BFA22DD368E36B470B80B3C539F191AB17DA4A
            E46B92830ED069314E2874F5EE537C7BED01AE5DBF8BE585758C0CEDC47BEF9C
            C75BE77761CF802509910CA156589326336C24DFF00C5C20D0F97FFEED3B7C7E
            E501D689B7592D09BA7F1395B57504E52AF2ED79BC74E400DE7B653FDE38DE81
            914E696558F7DE057A7E568A357C7D791CBFF9F517B876E50EB2C914CE9C3A86
            B75E3D85DD3B48C5E3A67EEDA6AA2AAAAF45168121913B9B3A78462CA622655A
            AB989E59C30A7D011B45172BEB653A4A34E715E9385121AAC3DE41561795AD4C
            197F13740F5C183F6985E235CB67E2C867D94D9F45674B2BBA5AF3E86C75D092
            54362BAE59C4872540E0934055E4732CD3D0ED911B70ABD6BB27AAA018E8E53B
            5249BED251C46C061EF59323B0FD40C7857209DC264D8E7BBD730028AF15DB32
            F522859C5B3C6C51CA9F16F4306C342190CF63BB97D9D47A3950FDC682407744
            E16685910C874DE082864304811636A3F1198AC8199B04308CEA23C975D16640
            32C3E789C56CB1750A18E96E8A020092240D893EE762FBB694AEB5E47DAA4FA5
            2D55170438A5F4B527D1F9863433B0C4EE26F71B28693425E25DA1AC2FE56EA1
            AF25026F68474153C26F13927057169F0BC9F1EB3875C76CB88036056E993F0C
            3CCFC4358DE0C633BA02084961E00D5D4F27F6A88831FEE27917E5C7DCADC1A3
            2B5FA69D7C727103D32B152CAE07985DAC626EAE80C5D50DACAE6F48F9CE0DD2
            270A24A095AA27DD19FC20DAFD200B906FCCD20651A50218023E19DA6A73F92C
            5A49005AF329021E0BED6D21BA3B6DF490F0F7E673F4338DD624D7D1D1C66A76
            97CB6C345B96D8BB666176B582078F27719598CFC4E4327ABAFB70F695A3C436
            DAC415CD95423989326EF9A2B82C150DDC1D2BE0379F4CE3579FDCC6A3E93970
            D5F654778EEEDF4699EED1E3A6ED8E8DE1AE1EBC7E68277E7276042F1F4A93E0
            AA0E17D0A0538312D8F1D902BEB87013F76E3F467B3A81D74EEE9723CF16634F
            37D0E315612BC852850B2DB1E2F0677021D8E5A24FAADF3AA96C2BE2619B9D2F
            12F854B0B6EE4A82EACA7A0DAB1B0C3A1E010E3733B6A469A2A49CC866A1F42D
            EEC4912441B0430F8EE9822E07E9B8897C3A89EE7C3BFA3ADAD1D39A42472686
            CE5C12033D59F4751338A515630A83B2D443B2EBC06369B741C4C822453950BB
            B1AFEA0B898D2834B4109875100A3418844DEC44052B9A52E388372C1640161A
            7ECC4268B1C3C28C5856D0483A0E9B7CA5468335D4F98694875575A8F9F34DCD
            3ACC262C6CDED13709DD16E031CDCD2191CDC0C33F259D854BF33AAA57BD000F
            C7AD913CF1BC192AA00C35526DB9BD90E3C4657DB12032703090F07DCB7573A9
            172E74C79E4F131A904C955BEDABDC453E87611AFA39053CA64EC48E58A35C73
            1869310A00E55A4C05965C384F569E1393E78228773BAC4F4F44D49A00376CB0
            31A873D68BCF35CD8DFA3EC23AB334745915BE5FC5781878A24F35552B989AF0
            7405186CB3B93D5EC0C7DF3CC677F717B042AA13471833D3299408685C4F0CBF
            AA0302EF36AA40B920321723D78B4E26228CA8A62FD5042525002A5626C6498C
            A46371ED9B643220F08961B0AB057B76F4E2E0602FB1952C06DA2CB4C64C4968
            6C2453E9DD5604D7919F2E7D69338B454CCE6C2046DBF7D08E36E4D2B64C2CE7
            93B1DD83D59C1ACDFBAD8705FCF6D3317CFCD50C9E2CD5B0416CCA4DD182894B
            7ABCA475843555132743BFEFEFC8E3ECA15D78FB95419C381893C26281060B57
            8B23176D9F9B2316B8C1AD8C2D0CB4A748C813CA46C591DB5C4C8DC120A57CF2
            6C022A734FAD6A201EB13902F8A7B32B78FC74060F4627303E312F819BDCA5C3
            F56D51ABAAC4D26A6CC722210F2D878EB80A9E347566BBA6B4A6041586522224
            F08B74360212BF4240E42345DF53369192A6831D9914867BDB71EC00576EECA3
            79B768CE14A7E41C302B4A3CE59495D0A96F85A16E711DEAB009AE876468D580
            19AFB07906124B451089A0D0AE2DF8AB17B1ECEA8EBDA9C5B238EA7DA59648D7
            58D579503101AE3CE938228C41B4AC9B54ACEF01441392D45B87459A6253D9A1
            67A9196153F23F9A9E97F3D419981628BE7F515B4C0148DF7385B5B07032C8F0
            3C08E3E382759602A8C8C41A36E5A7F06BA2FB5680A7985F43FD3214901B0A2C
            82A880C256D39CBE4606264F72FC94E661463713E8CDC230EB61A07ED8B41934
            8174343F02F45E200D3D55E359538051AE396C7C0311B39460D3487DAE977511
            E0F143445D42197878A7D15F16AB595CC4FDF3EBF3F85FBFBA8C2FAF4F12ED8F
            CB82E71E5181EE655E6F4969AA7E56A24798962E4DA127CA6A0A2C0BA232A69E
            AAC4AE132355B5411F3187D4829409D20A68174E60674F2B8EECEAC2613A76F7
            77A2BBCD468E03E938374916BD327A730A05274472590B16E6D5929AF974D210
            754DCAF4F82A008FC9D8CC5C808F2F4EE1FFFDD50D5CB9BB8430DB01A7338D92
            5520305D57A903F1B4440C86A4D218C4EEDAE85EF6F6B4E347AFEDC2CFDF1DC2
            A191B808644D1FD122E06F88B5410649A96D1C40EF46BEECF84CFB65C7A3A797
            584D9CF1706F6C11F7C7663136B948C0C91D2F8AD2E2A620C5E04329991186CA
            8BC589B02127999AAA768FD43E926E14A41ED773CC74867F54D3884BCC9A74F8
            55012293C92E1FD51A811030D899C7A9C32378FD953D78F5543B867B6202E5FC
            CF94B8235E16AAA05BC458E43446B46C4361B562899026882AA850361EDD9934
            D4769740339268954B89DB26D069F67036EFB855BA565EE44E4CA9725EA0EC14
            6A278F9888B285584D2C6593232E623B1108A1D14E7A6BDFFAC848DFDC6E3A12
            C46737FC51B693283A9F1F0BF0708C94EEDA118ABA19C82294B9B1545F595F83
            88608A8072A0CECDB22374242A8F62D64154B5B13634337ABEEAE36B95CF321B
            762E3E19B3325FD6895537AD009BE7E5D977D9C46CD0B00DD7C9645DEDD3362D
            7D1F91AD506C3C82560299A614208F8C751CA333BD1AE0838B4FF03FFFF5322E
            DF2635C4A12D3E9E52484C7A46E838A23204753F6EE4D98056567DBD826C5D0C
            CC56942F5465360D4F4FA8A7F56171F30642EF7DAF048BA87E6BCA407F5B1A23
            7D6DD83DD889BDC37CE431D89B416BCE103B9004CBD1E7318E46BA7CB4AE25A6
            88351B4DC359159C9BF770FDE622FE70610C1F5D7A82A72BA496B477C1694FA2
            6CAC13EBD3C0134B8A7007E51ACC4209895A05AD7680970E76E3173F3E80F3A7
            FBD1958F236E1A2ABE9B908D418D8DB7511C8EAFBCD792BE61E98E9E6C185F2C
            10F82D9630FAB4887B8F5671EBC1021E3D9DC5F4DCAA34F8E3F98AA5D234DD49
            A1C2BEEF0A5B94B937550F79E85220011F5C8E2360FA4EEC4E7A1FF342F5A496
            516871CE9A477B02DB3B3C29ECCEC6E580E85379751541719DD459070777F5E2
            ED57F7E2A76F0DE3D8EE16B1894981B4C871B5A5167C181D4D8B55A5D8B87AC3
            B1EBCB37D0DE3665CC6CAC7FA97E507545D0B8C81B67F7B3BA9148A8FCB328C2
            5B2A25B8BEBCCE762C053C4D3B7E63238F6C1C467D1D34338108543C5D43DCB6
            748BA040AB284613008668949DD6EF3337A15923A6AA592C45A0FD8805286332
            B33EEEBC0BD9003D8D232AAF8E4586EF9BED5C4ECC166CF10964F95CB1B85A49
            5C36C55037563F538D264092920DE5ACB1ACCD57D28C33F529082216A2BAB9F0
            3919786C47A96FF597E9B9147550544235D1FC5DB053C214F6646E526F37039E
            3A8F9AD7B0BE3E42711C100F133D58408F76242E5C05C54D8AF4E48389127EF3
            F928FEF90FF7706B942425D10A279581CD15F5E84239313330799905628C0CB5
            41ADBE3AEB57A49DEE86D2FDB993824D3FAD880DF8BAC87BE8EBB62D8A433886
            4B425D951A32965F4286E8C32E029F978FEDC5CB277663FF2E368ED297A3FB57
            712F71B62FF14D3A969A38978D793441495BED2C0BCB2EAE5E59C2279F3F907A
            D14F574D94131DF012497831AE8FBC81C0AE6A3B82296E77068E245D6FD2ABC1
            28ADA2B725C02BC77BF1E337F6E1F4B121FA5DAA1BD342A889D8C5687773B401
            D6D746D0C8BEC07736BE0A5CBD5DC0B7379EE0DEFD494C926AB65A2445C8B308
            BC2C29361615FFE2BC37012D6EFD63064DC5BE646949AD662E411F849C5E4EEA
            56181395378C40C0AAA98A870C3896EAE06AC9FCC42407A4BCB68ADADA121234
            D7233D39BC717A277EF9DE1E9C39D42E067E897A16A9D7E6A94890A3FDC56838
            BAD40F95DB2781A096E2316A01EA5E819659175E29B3B25EC2E2D2124AA592A8
            26E54A455E9FCD66904EA78901DBD2E4319E88C3E19C34DB56DD620DA5E297CB
            6554E83DBCE3B26A6F7353487A2D8396D82E022D80FA9CA6AC9300EB1B457A5F
            55803C521592C9949C9759B14BCF714FFA4AB92A0C5F117C4B5A64B3AAC10D14
            C5AE238E139BD4775B1B9755C495DA2014CBE3D7168B459584AC0DCDC211D989
            C3EC95FE954A6554E97571021AFE2CA9ACC0DFA4AD002B628B36CD458A362476
            D2D448765757D6512896E45E1D0DD4CA93A6CB049BA6B6AD2AC8E5246D9E8F4C
            86732B93DA606D4A8C5E04B835F69AD2DC94CA25B96E3EAAD5AACC115F5B324E
            F34BF2924824D45CD3EF3162A1F616E06BA8BA0ACA420D5E06EDA0A118830578
            149AF262E0E5B2462CE4EADD45FCFAD3517C7869068F6769278AE76133E3B1C5
            8D2095F458D191667261538775A91EA83B4A68F5AA5E7550EC63341981CE6566
            20D2DB8B04CC31923290B8651278623D9C6EE07100E31AEDD005B4246C0CF776
            E3F0DE1D3876A01787F676616430432A9872BFBBAA430E122C2D5CF253BC03EC
            D9B164621F8D15F0FBDF3DC4AF7F770D779E1202B40D23D6BD0BAB0450059776
            7FBB043319AA455B25BA5CE3F73BC825D3E0E6C6E585290485690C759AC40C0E
            E1AFDF3B4DAA60A734C6F30357BBC46D51FB2208E65B2FD27F4BC4209FCC2FE3
            E6E3755CB9B582EBB708746616096C08A8D2ED04EAED34F929D5179D6E44F2BB
            24739D03FC5C5A30AE78910C4445D542658712BB4B8C75433A77526A1C49BA06
            BD97412790A41655FD90535F8445901AC90BDAAB94A54E91E515D19535F1EAB1
            7EFCDDCF0EE28D937DA45A2A41E5140F4489F4919B762BF0985B80C750AC2CF2
            2C9952B0CD9275E6928ABD51286269651573730B989D9DC5D2F2324AB4C01948
            5868B3D92C09588A048CB3F2E3686F6FC7607F3FFAFA7A914AC6490D2D626272
            06131313585E5EA1CF742553BFBDA31D433B6833E8ED9156CE51876DA38911AD
            AEAD63ECC938A6A6A645A0F8BD2C38030303D8B97304F9961694AB15BAB6794C
            4E4E61796545D816835F8CAE878164A35010E0E1541316B81409613ED7820C81
            653A93466B5B1E6DAD6DC27416161671F7EE5DBACF1965ECB6A2C68CB60009CF
            4B99BE872A093B1BD313F299DCC480D46C4F65DA85DA389FC9E630B863078687
            07C530FCF8F128EE3F7824C0CD6129FC5E56413C5DBB49584CA09899219E2517
            2D747D432343E8EF1F14708FDCE9AC31AC6D6CD0FDAE62893683E5A5657ABC8C
            3562C50A387D0159BED7644A8134DF63676727BABB3A91CFE7043823C62320D3
            542B9C3716918F30F0426E26A78AE23190A8C85C5EC64B44E12E5C9EC0AF3E1E
            C5D7B75731B96A4BF708EE8DC5DE8CC0888A6570CA41A8438E4D5D490AFA67B4
            B5053AC00475659A998419018F18CF94CA174FA724BEA7B6B18A72614DA84B3C
            9314C1468D1649A928768916DA5D7674B7E2F8FE219C39B103A78EA4D0D7AD68
            2AD7618E914AC44D027D4989E05A3EAA31CDA3476BF8FD0777F12B011E52A95A
            7712F0EC24E00950E26CF2588D645F5143EE641A547D69EE97A55D26415F6671
            7E12EECA38FA5B43BC77FE00FEDBCFCEE2A5C383743DD11E0E611C1E942AC042
            59A007E3A4DE5DB93B876F6E8CE2CEE81C6639076DA546A043D74C801ECF7492
            6A9723B663D16D6A1B184FA49806D846C31E2636F7EBB45C5FD53652E826D595
            A5ECAB612468F1C665310B83E4EC7756B9A276425EB561BFE2D417B6C7701E59
            6D1D59B38413FBDBF13F7E7E1C3F7D6D177A6C956FC78D97991D059E2E7D6146
            C6656D8FD106016116A18E45D72EF02A090F0B4C8CDB2ED36EC973B2B8B84402
            3386472434D333336AA19370AFD302670F11B31CDE45C5281D06F273707010A7
            5F7A09A75F7E091DED6D9822B0FAFAD26562AFD7081C2605B0382C63CF9EDD78
            E5955770E4C851E432F14D51F591676862721A972F7F8BEBD7AF91802D0B63CA
            E5723871E204CE9E3D4BE71AC006092083C5952B573136FE8476FFAA081BEFF2
            EC9D2AD0DF5990F95A5920E304246DADAD74E409FCDA304C82BD7FFF3EF47475
            636C6C1CBFFBE003F9ACA2B0135AD3F439CC5062F4D3E652C161E46EF655B02D
            AB9D95928071A09B2CB20ADAD9DD8313A74EE2FCF9F322E857AF5EC3C79F7C86
            99B959F95E52F1847C315C8C8F019FD999EFA9DABAB63658F71378BF4CF378F2
            E409028D6E61451C93B7B0B882F1A713784AC7D4D4247D4F8B582346CCD7C073
            C4D7C740C2AC8F3704AE8ED0DDD54573BE07470E1FC608DD733E9FD700AF5864
            A48E353F6704043CAC9AA85EE386D86A02CD78664A2EFE70E101FEF5C3C7F86E
            B48C85721A9E9355360F43EFC6B223EB2DC5361AC0538FFAD38A7D647ED7E54A
            0DB57CEBD55BCC30B2C9D045C5587D3324BB5B9AD6D102B4E970A47D6920E53C
            CD9A0B8B762A06828EB48DA37BDAF193B74670EECC20BADA0D8988B108740CE9
            E6100A1BA07D44C0607ABA82CBDF4CE0F79FDCC6A55B339829938A95EA423596
            4290E0E046DA291C4FC5B1B081D0530168DCBFCBAA96E1AECEA1C52AE1E8AE36
            FCE4F58378FB957D3830DC263958BA58B4004FCDB7240687F16066AD822FAF8E
            E30F171F108B9C964EA2B520861A373AB45274CE1C61464ED80E77E5F083A6E8
            39298816C5856BD622C0A3FB25FB915F591BF04347189A782BB84221833E4FB0
            D4280995C1899FB3389135A9F4EA2AA9D19555BABF05EC1FCAE0EFFFEA24FEFA
            CD43184AD342D699FBEC06E4026E0C6C62AF03EA2E5868FF82FAEAF539B4BBB7
            5A53B14A31EEF54EEBA350A9E101EDD0DF5EB9823B77EE081BE0EE25AC625508
            3C983D2479D7A47BAFD27365A2FB2CE83B0677E0DDB7DFC2BBEFBE23AC67767E
            115F7F75095F7EF9251E3E7C2840D1D1D18143870EE16D7ADD4B2F9DA2CD225E
            B7D584F578171050CDE0B3CF3EC3E79F7F8E19023E660BFCDEF3E75FC77B3FFE
            1176ED1C2656B4862B57AFCB6B6E130031C34A67B2C46832A272B1F198E3D258
            908B746E662BCCCC32C426DADA5B3134B443AEE1C4B163989B5FC03FFFF3FFC6
            A79F5DC02A812BBB45E202388EA88D9C17C720E470AE9C589AD9C65945B954A0
            CF2D2BB6C8A11274033DBD7D78E5D5B378EFBDF7E89ADB71E99B6FF0DBF73FC0
            53627E9E5C93FA6E0424A0BD885C1685D98AA554D1DD3B77E22D9AA3D7E8735A
            89B194CA1502F23962814FF180E672F4F1639997428141CF536CA9294E48792D
            E93B2312C0ECF0F889E3387FEE751C3D72181D9DEDF5F333D0F0FB2C1D77548F
            F1F17C4E91B444D7D435C7EBB93D136B55FCFAA35BF8970FEFE3CE8487353F87
            20D602536A4D4047B6EA002B5D804B7DAEEE48192A45238A89AC132E6DEB906C
            201DA12A567CFDCFA545EB86DA28CD3494F45046C4B0E42A6F914D348F2B0FD2
            82F45616619457B1B73F8DBFFDE951FCF54F0F61A48F0D764CF74B22AC2AA389
            E948423A3F140B2626A70BB87475021F7E398A2F6F13FB2890E464DB61B76661
            C658795445C1C41BC761020C80743E93C03063BAA45A11E8BCBA1B6FBD3482DD
            0339B467B89C464D099C4C88832ABBBE7DA5018D2D14F0FEC7D7F19B8F6FE0DE
            9355ACBB44A513AD747F59F85CD603AAF4AB3216C71A9668E5E2403D39429AF7
            E9308250597B8D50B9360DA1B0AC7A29BD47E05D579E956F826315128E62A712
            FF60AB73B1312C2440AB92DA599CC5708F83BFFBC951FCED3B47B0A78D544C62
            4A0E472AB915FA6CF650B19F3D21F3A21A6484A23E29B623BB99B26E59CAFBE5
            2B37A92C3E9FFECE80F12DB194AFBEFA0AA3A3A3042C55387125B06CBBC8D142
            4E9200735CCFC6EA1A01C08A804A17EDACE75F7B0DAFBFF13ABA88DA2F2EAD08
            83E0CFB9FFE03E319002318D0E1C3C70006FD06B4E9D3A41401013F521B23233
            F8D84427A66717F1C9279F08F870E346562358957BE3CD37F1D39FBC875D2383
            58592775F8CA757ACD05DCBEC3C05342965811AB167C1E6648AC56F1E6B8343F
            2782BABEBA22EB2649ACBDADAD15274920DFA6CFE4A0C2CF2E7C81ABD7AEA354
            28097039043C3C334502BDC24651549018D7B2E260472390AFC592FAD796B045
            95B3E812A8B5E3C8D16378EDB55765CE2E7DF32D3EF8F0234C4E4C0ACBB1994D
            117027B9401C5D1F8722B86C8F12FB922176B01102C573E7CF0928B2DAC72CE7
            EA773708741E617C7C1CD35353A24AB25AC90CA69DEE2543A0CB4C47A494BE63
            6641FC3A1E478F1EC61BAFBF21ACA7AD2DAF959CA00E7EA68EE58B988FE17A15
            5AA796EC6091D3C2D52EC4F1C50AFEE5836BF8E70F6FE3DE6C80AAD14A8B374F
            3B7342E9EF4683BD08F040056C851C98A4A322D900AD4EA88DA14654CF5096A4
            5A0CBA307CA8C3F4458513A5DC52AA00AB04A40EA2E88A4AC1690EEC6501A961
            FEFA12F29687970E74E1EF7E7A00EFBD3E24BDC203836D2D4561084AF3630E14
            9703411CC55A8847E3057C72E9297EF5F9435C1B5D45C569819DCD22B4D9105A
            93AB649D9999835F2E222CAC2265FAD8D3DF8E1F9FDD859F9F1FC4B11D2D48C7
            4C899591A68381AB3D7B31698F5C531E654CAE97F1E9570FF0EB0F6FE2DA9D59
            2C974995C8B493FC66E0D242A9723F305F8386842738AADDB3A9439C25E4C053
            802E6A8DB6A34586660E2AE3BE63865F7761B2019F1DE226312FB716D0790C29
            4626CC967E67AC911AD0F1B852E7FC8200CF407B805FBEBD1F7FF3F6011CE823
            0132B9312017352BE95D29A50E0E5A94AE1B81AA7AC8AE7E4FB774E68DC15234
            A81E484AF352A49DF5D1E818BEB8F81509F515028F6559F82D0436232323D8B5
            8BD4BB9E6EC469DE79D116D614F0ACD1CF4C2643AACB7E623407A5F2E2F4EC3C
            2E91AAF5D5575FE3F1D8A8A8021D2494FBF6ED27A17A4DD4260E50ADB981EE48
            ABD6285FC7E4F43C3EFDF453614B4BDAB0CD4072EEDC39613C3B8707B14AC073
            F5EA0D5CB8F82531B48772ED39029DEEEE5E3AC75EEC2695AE9D543BDEF567A7
            A771F7CE6DDCBF77973E6F416274D8D0BC6FEF3E625F6F936AD38FA99969CC13
            F311F62C6A565CB2042649ED7BF8E8B1A8359EA7B21673D91406FABB31D0D783
            5612FC38C99C479B45D5ADCAE39EBE3EECD9BB4776FAAF88F57D48AAD6D4F424
            A9E82E1271B687B5A17FA00FBDBDBD481398FB12CCA8E2E6785E3BDADA71F0E0
            010CD0DFD788D55C2175EDE297B4113C7922F6ACE286029DEEEE6E626E43A2E6
            3223E4CF96300A925B56359F1248B1017A9880EC1881E1C8F0308171B26EE3F1
            9B820D2D9D9A2147CD2B85D29D41030F830E0B0B6FB4E37315FCD3FB97F18F1F
            DEC2C3255A774E1BEDDE2DAAD4A8DE61251641A2172D9553C2C2C31E809AAA02
            C32E7745B34271950A4BD2A9907EE8E94A383A9049ECD051B4848E0B726881DB
            69299C2595C264874E2821DC5886515AC1AE8E14DE3EBD0B7FFDEE084E1F6E41
            DE510634D3A8888DC788CE28FDC8B9F6724238508136F1EB63ABF8974FC6F0C1
            A5094CAE5451E156C2B4238A538977A57842C161794380A73F1FC33BA45AFDCD
            8F0FE0CC9E2C3A235FBE78545453BD308A02374C6DF101564895B843E0F6DB4F
            1EE00F9FDF95B975D204E4C4E83833DEB7D4EB5D9D0AA02CB576230C21341A2A
            95F61028D05160638AC7CB135B10FB183962D6227692B668C7F31DDA65AB126E
            60B121917642DFA36BABD0CC70453352818C38B15E069EB50974B6D4F07FBDB5
            077FF7A34338B4238B0EDB4592030082A20E3461552B29D7E8727B430981E0E8
            68476D10ECADE4B009D3AAC7EF448323DD6FDEBE834F3EBD801B376F49B027DB
            4C18545E7EF965BCF9C61B1818E895C5CA065F56332ADA6BC5EB28DF9A47071D
            0C6513536CE3F946548D272430ACAAF1CEBC7BF75E52995E23C6734A80879D27
            96AD5CDEBA798718A53FFBEC5302AE4B046AEB023C7C0D67CFBE8A1FFFF85DEC
            1CD92106E8ABA46A7D4982CDB6A80D663C2DADE81BE8C799D32FD1F132BADA32
            52497361610957BEBD8A2F2E7C4E40F294D4455B0208070607F0F65B6FE31831
            0B56A958DDE1F82DDED01C7A4D95D6F1FD0763F8EAEB4BB877EF3ED6D6574585
            1BE8EBC6A9E34788911C21B5B24F0CDFACB2B21B9E377256D358C5D928910A4F
            C0CB2ADCC4E484CC539A54C19191611C397208FBF7EE453BCD573D372B0CC530
            1E27D0EB22358DE7E43181C7175F7C89CBDF5E21363A2F9B16830E832A6F06FB
            F71F90CF63B52EA1BD66BCCA59B55C5E56F6B17436834E6681C48A628E56AB22
            ADBB9E2F8767034FC476AADAF53B3655C63FFCE66BFCF3A7B73156208A1E6F57
            7601662291B158877F323D740CED9DD2E8CA4646613BA64E3964BB90309A5058
            8D6F6E314ACB6B0DA18AECF5F2D9DBC67A0AA923605731D79F6021949280B45D
            171791F2D7716A77277EF1FA11BC7BA617BB7A6D2478D727C66559BED4AE5179
            4F013742E6BD86F669479230D9B4315B09F0C58D65FCEAC238BEBEFE14E3F36B
            8471341FF4C532B3E39D8B6B11B10DA4351EE2E57D5DF8E5BBFBF0EE2B43E84D
            A85000BFAA8C76B1B81141828AA9D638C14483AD32CB85101F5F9AC13FFCFA1A
            AEDE99272E46EA152D4283BB6AC4480DA12F4C0A60F881EE1EC12ECEA85D8FAD
            D44DD16D34F309985379E2E9523DC7D8DD5911EF15178BB70944D3C44C4C2F8E
            72A106866087767533D34220972416440C90BB5DD0E74B905A7503C1F213E433
            65FCEC8DDDF81F3F398C63BB73E88A07043C65C2B92274CB0DD5BF0C863481AE
            89978D73D7E262C097668C9AB949A83F74DA040330EDA4376FDEC61F3EFA04B7
            6EDD1676C82A010BD2891327F1D65B6F6278A05B542FC734EA797081B60DF00F
            472FEAC9E939311033F08C8E8D0940E5F3AD222CAFBF7E1EA7CFBC8C1C31A328
            4456991A954A3849A0F5E9A79F085B5A65E329014F9680E7D5D714E319D949C0
            B3B281EBD7BF23C1FE0AF7EE3FC00A01512A93C3C08E41522B5EC35BE75F9594
            18A945BE51C6E54BDFE2A38F3EC238B12F5B6C400A787EFCE3F7F0CAD9D3F4F9
            A97AEA40A8CC62B22E6EDD1925B5EF5301E2E5D56501DB217ADFEBAFBE82D7E8
            7D6CE866977D2D72459B6A2EF91B58289605783EFFFC0B3C7D3A4E2A69413C6A
            FB0870CEBE7206A74E1E475FAB567DF4C1C0C3E0C1DE2F0E63B8728DD45E02F0
            070F1F8B4A9B4C2485650D137B6156B467F76E614ED94C5A396E9AE3B8C458DC
            145018AAE8EDAD6EF5C8B26F68BB25014F9980C7966E0D510202CB37C724DD7F
            5CC03FBC7F11BFFEEA2EA66A0438894E652915D780EAD78450A5347227043B50
            4DE424FE80A34BE904B19825E0C216F39A5F93E445DFD24053AF95A10F515148
            5848FD4898242CAB255A10F479990E209D57C6531138A22AB535BAD0457425CB
            04023BF1F73F398D332379E4E2A11842430EB6D34CCC100F930AF00BB4178D69
            B70D155333BBEEE3931BB3F8A7DF70CB1AD26D890D2099819548A9DCA28D555A
            246552E7FAF0DF7E7418EF9EEEC2EEF6A4944CADD164B9555FEC06C994CA5F72
            B51998E750CC54DC0659971FBD7CBF8CFFEF370FF1FB0BA3985929C0662F4926
            4173EE4A063AA7E78B31905DA8CC22C4B3939005EB573D29D825BDB9E8EF5CC1
            D026A6630BF05425A133084A0240A6194A190DDB2360ABD14EEB717D8C240CDA
            0D0356EF8C342DE40C7D85C480A4CD10CD4BAD047F6D1A6DE90ADE3A3388BF7D
            6F3F5E3992474FDA905C2F23E0D6CD3AC353E76AF9023CCC7B7C01F418B14933
            B464D390B9A7836D35FC1EDE9C585DB97BFF213EFCF8136213DFC97DB2DB3C4E
            E0D3D6D641947D90D49C1DA4C6ECC210A90AF696B55B0B548B6576394FCDCCE1
            9B6FBEC5C5AFBF26C6332E80CDF68881FE7E52995E25F6F20AF2C4786433D55F
            067BD5D807C2210C0C3C5F5CBC282A4E89D80CB3A9F3E7CE1350FC083B76B057
            AB88DBC4CE2ED26BBE235058A0DD3D438C6764E708DE7AE375BC79FE2CDA928E
            00E3D4D23ABE21B5EF02319ED1470F250993375D560D7FFEF3BFC2E9D3C791B0
            CC4D51D1865E7FD76F3EC2871F7E44ACEA11B1AA22D6D7D7D0D7DB4DC0760EAF
            BFF60A76D03C586890DD48EEF9B945623CCC962E5CF802E3E34F85BD715CCDAE
            DDBB70EED557E938834E6223F5F9D3EF8F7294C79E3E2515EB4B51B5A6693ED9
            DEC62109AC629D3A7552C0ABBFBB93D676B25EFAC6F5543476CCDA1C362809CA
            C4CA4C532583EB22BA8DCCF7A6B006A3EA9642B623849AF188A35657D9BB75BF
            807F7CFF02DEBF7C07B35E1A61AA5382D564C7255D5385E472C225517AFA42B3
            44C352ECFAB69507489AC8491C45800AD1E68AEF4AB5C22AFD5E26D02AD3E794
            E8A87ADA3BA38DB289580649EEBBBEE1497C4BD8D2092F91150A0A122E299E5E
            5DA245B984DD5DC02FDF3988FFFEDE4B38D89216F21F93FC2253D228D68B9C54
            498047BB7082262F93A17DD96EB44F88C2E16F2D94F04FBF7D80F709109E2C14
            48B1504C8303C76CBAD7AEB6047EF1E67EFCDF3F3D8423FD9624ACC6A42E7320
            018A9C9C493C036BB4805D9AE114E9E81CC0C6E748D03796D1A77CB0E8E3FD2F
            56F18FBFBB8BEB77C7496B4921DB9A25B5AF44E05353F95BA64A49918A25A602
            CA90237639B98C809D9D533CC72987E32954A90B2ECDEA381CEBC30CC853AAAD
            44261388554231B995080CD6E928B85CFC8C184F984560E6C4DB27AA127B522A
            2BE8CAF8387BBC07BF786704E74EE6D097B3B43989C0CCD4CB9FAF49B42A4FA0
            C7D77C92598FC9018D1237A2F2C63C1DCD6D4B526420DE93CF89DA5FBCF895C4
            B570A676229556D1B7B4B3F7F6F4E0E081BDE216EFEDEAA41DBC052D2D1905DE
            BE52CC79E14FCFCC927A70155F92E08D8D3D11BB43AE25271EAFD70878CEBFF6
            AA000F5761AC543C59F0715A8FDCD2796A7699D493CF49C5B880B9B93971C5B3
            71996D3C6C9361E029129BB873F72EBDE60B5CFFEE0656484DCCE5DBC4E6F112
            09E531F6E0B424B0426AECE89331DCA4D7DCBF7F576C466C57619670E2F871BC
            42C23BB2A3B71E4C1A099F3813E9F7ABD7EE10F07C2CAA12871EACACAE92DAD2
            8637CE9DC5F9B3673048C01337CDBAE3270220663CCB65069E6F08782E8A0B9C
            831019783A69DE58CD3A7AE420FA3A3BC4BB5465AF16A96C1DA442751018F1E7
            3C187D4C6CEB33B93FB6ED5469734B2553E8EF1FC01B6FBC46CCF11CF2C9443D
            874BAA57D47C31C5B03B5DA7D0A9D0135FC90203AE63EBEADD7A0D37229875C2
            6DA5560C556339A71E62C3E0C3DE989BF78BA46A7D86DF7E7513731E9D3CDD21
            A1F9A67462E0B2123E528443EDF4E576B7B6A0BF3D8FEEB63C5A49E8D2447163
            966AC2276D7F0570B8868F8F8D2AE9868512E657D731BBB2864542E975FAE26B
            D227DC146131AA1C694C3B61B61B7EA21525621515A28121B7328E73E1E365E4
            521B78794F167FF3E601BC77663F7624D83354D605AF92723FB71F4EE3FA8D71
            DA6981A1913E1C38D8839ED6A40E0757B954123A40ABF312A95CBFFBF209BEA2
            D78FCDAD13F82A81E9EF6AC5CB4746F0B3733B71FE680E3B32BAC7784DE56AF3
            6B160B1EEE3C59C08DFBA3B008198E9FD84F3B77BBBC8EAD2169BD39CC125E5F
            BAE7E37FFDE61EFE70E1360AC498D2B9B4B88B3D420A56314C87AB04903813E5
            F655757BC9958A1390735679472E43478AE6398D5C9675FDA464F6E7F309A488
            7571FC872785DB5CE97C5A2B7BB4A8D63139BF84A9C5552CAC95F17FD87B0FFF
            38AE2B4BF85455476480C800411024989398A344894A5618693CF6CECE7AD3FF
            B6936DCB966C058A94C4283188390710200102444EDDE85CB5F7DEF75E75A109
            5074D8D9DF7E1F4A6E034477577855EFBC73D3B933E9305D5F39013B4765583C
            9F008E734872B368ACB2B17B4B2BDE7BA3130776906951ABA8BD3473B574300D
            3A71D036098A052DF31E92DE5AE2FB337A879C02E179E2E3600763329D250671
            0BA7097C6EDDBA2589836C8A89DF23A4F2772ACBE9FA6A6B69D2B54B8EC8DA35
            0442CD0DC25624B3961EFEA7043C57AFDDC0851F2FA2E7E123A43369097577B0
            29F4DA211C2253A89A2621FBD073395D46C195EE0C3CC4784E9E3A8D1F68B51F
            19199124428E54EDD9BD5B2262ECD3E050F20D623ACC8A6EDFB98B14017F5575
            8D849F97B7B7A195009227183BC89F107318E8675367464087CF79C78E9D125E
            6EA6E787B37DC5042F14CB2E229A055FBE76075F7FFD0D7A1F3F16E099999941
            1381C56B07C9D4DA4BA6565BAB2CEE0B02CF5C4680E7D4E9D3023C0C30ECAB62
            50E0715C56534DBF3B2A378A56A72EBA2E8E64AD59D121E771F7610F8E7E7D4C
            8087A3589C24C9E0BD72253DEBC4E8F6ECD9892ADACF1C2B54DAAAD64B6AED74
            8D94A9E0B074C94941979D38A60A5757CD33EBE50548E500390C3CCAC7A35A00
            6BE482CAB2BD7A7B0AFFF6FBE3F8E2F48F184E135D2FAB95ACE56ABAB09665F4
            4036D660455319962FE32AED7242FF0AD4D1AB4A92AC6CA5FAA05378C435E129
            6D9939BA81D384D4E374A16333490C4D253130CC7904B318199EC2043D14E999
            34AD7E95885435231FAEA19B4E2C801E2C3BCCDD2368926647B1A2D1C37BFB56
            E16F0E75635B671DEAD879272DF52C6989CCC7FAFAC42D7CF6F9458C8CA5B06D
            FB3ABCF5D6366C5E57EB9F5B48331E2E401F9A7271EADA303EFBE60E4E5F7A80
            4902C5304D807DBBD6E1C3B7B6E2B52D0DE8A8056A432A1D86DD4C612DFA7EA7
            7F0A9F1EBF89E3677E442581C0C71FBD4DAB5527AA0905D9248BE98785601EF7
            A7807FFEAA07FFFAE935BAEE595AD1E312D9619354E9CBB892C3914F27C5C4A9
            2210AF2536D7DC5089CEF665E86AAB456B7D8C4CA298003C879ECBE9F7CA7262
            9971E502CBEBC0A2AB0AEB313D93105381A54C46673304FAC41846C85C799AC5
            D0D02CA6266691E3B2836C92D85D047B5E5989F7DFECC681DDF5E8A85319DFA6
            5DBB105D5392E7981C231726881FACA1500F9DA735633C95C24FAFD1F149DCBD
            FF4818C5DD7BF730F87450C2CA96663D8E96896020E128174F980D1BD660E3DA
            35A8ADAE16E6D33730846BD76F92C976093D3D3D041409C9C2EDE21C95C3AF92
            A9B51B953436E9402D97A9627FD2FF0CA70978CE9199C60C851DD9CC78B66FDF
            4EE6D60174AF59852401CFE52BD724DAD3F3A857164F3609D9E4E7C9CC19CB7C
            5D09021BCEEC4DA7E7E45EB4B6B462D3A68DD8BD6B9724105695477CDF5FCEA4
            55B135AF35BF2FDFBA87A35F1DC7BD073D922D9D22D6DC46A6D6A1037BB09F80
            A79D8027F613C0C320CAE0C71BFBCCD869CFE16E962D4E67E6E895420D8D1B33
            B523AFBF811D5BB70831B87EFB0EBEFCF228AE93499926F0E545829330D7AE5D
            8B0364A66DD9BC9118504C34B6D86F130DAB4548BAB01414988742966F3EFA95
            5256E07728F2C18C488C7436C1B3B9B427B53E9CE56A176B89A6531E7EBC3680
            7FFFFD517C4B9389F34E2A97B5A0911E82CEE58D58BF7A39367477A0BB83A86D
            AD85AA30FB326CE84A0A5DF0A987C8528E63DFB9A5CD398EBF64E9619C20EBA9
            7F288F878F26E8063FC540DF104606696526F3672ACD4A835552AAE14808929F
            9C599AF4A3D8DA5D8D5F7DB0036FEF5E8E26A214653089E596DCDC219AE09F7E
            7E15FFFE3BBA2903E3D8B8650DDE7F6F1F5E3FD841A0E9885EB2A78DCFB03880
            2D5C7F3287DF1FEBC5275F9EC7A3C7036826DAFEE17B3BF1F1CFD6615B87F2EB
            44B5E83A87BED9F73B43A8F5CDB987F85FBFFB1E27CF5F4703ADCC7FF7B7EFE1
            83B737615593837ADF23A2AE7F805EBF3DDD8F7FFAE416EEDC1F96502FEBB3F0
            64E5BAA03CB75DA6191EA77D37D75762D58A46AC5E5E8F156DD5E8EAA843474B
            19D9ED40995474ABEA642396CA116C637A0BE09BDC2C017F4F7C6C9C453D3269
            A1EF49060FEED398F73CC393BE110C0F4D60944C9FB2A88BDDDBBBE9BAB7E1D0
            DE36743444E02B91B8CAD2E6C54CD28C1C5345E9EA7209E5002F681F474827B3
            F1A4CDE695AF87337D79E3AA7BCEE9B947C0C389846C2EB17F8343CA224CC54C
            5927BEC5E8E1DFB8611DDE79EB08766CD92C4EFFDEA723B874F93201CF65C93D
            999B4BA2B2B24A80E730319E5DBBB64B425F8AEE0F4BAF7023029311F5F8B14A
            2064E0992413838FC90C8B43F0AF1E3A4880B15A727B2E5D22E0F9814CB9BE3E
            62A5792973E0E8120F064786D86C6027324BC8F2F9F2B571B4A995CC2C4E205C
            BD7A95FCE49C1EF603164CDDB4061EDEAEDC2113FFCB63B8453FD9C99D25F061
            96738826FEBEBDBBD0DECEC0E3FC04E3392363C0001A16C91065DE708D623697
            21469726765C892D3476870E1C14333146E0799518DD575F7D4DC7BE2B7E304E
            E4E471D8B8613D0E1ED88BCD9B364832278FA19857BA005B34835CE548661639
            AF3433003A3E08A1F8BE62CF059EFA2A81D0D5DF679B786C3A8F4B577AF0E917
            C770E9EA6DA2693558B77E1B9DF83AACEB260ADC5A2DE615111C99F0517350F5
            98A1402B679E2E960780CD072B5C06D337A1A8A2537478CDD0A84E4D156445EE
            7F92C0DD3B63B49AF5E24EEF30861344EFCA96215E592D01352F374337228543
            DB5BF03F7FFE0AF6AFAB5349B905E5AB6676450B386EF515F0F9B15BF8EA9BF3
            784C2B5C735B03F6EDDE880F7FB6068776D4A331EA080DE7253C2A9D1BC2189C
            F370E2C214FEE9372770EBDE43ACA115F6E71FEDC1EBFB1AB1B24215DBB1FEB4
            2425D2A49A23FBF156EF243E397E0DBF3F7E090F9F0CA3A9B519AF1EDC8E8FDF
            D988039B8931843563D040304CBF7E776F12BF3BDA23C2F2FCE08B79E23AE29C
            E3A67CB5D595686DACC3FA35CDD8B6A9196B5754A0A9268ABACA30780165F32D
            A44753052B1D290C343E2BB3C21AB0F7027FE3B16717342DE8989924B3773241
            0F6D02D7AF3DC3B9B357303335480F5C273E7C9F1EFC3D5DE8688E17A5AF5D2D
            A666404EF22BB536B4ABC087CD36A9CDD2C5937EFA635EB59D66B32AACEA24C5
            9738363E8D67CF06C541DCDBDB8BFEFE27627E71D6B2D115E2B47FF65BECDDBD
            93CC8F3D12621E23F39193E72E5EBC28DF61F05051AD4E893AED24E089113824
            E920DCEE99C3BC2673B97F6004DF7EFBAD000FE708B129C2A0B57DFB0E614BEB
            D67513839A2560E3A8D6055A10394F282BCF324B5C302B68696A26865546E391
            25B0C84869C1E4C41852041E11BAEE18D14F3E975788453168D6D45449A67E41
            5B005CD8CCF7EAEADDFBF8E28BE3B871F30E12049EB96C1A1D64CA1DDABF9718
            CF2E2C5FDE266A07816A231F78C6197808181978FA0878D857C5F564B5340EEC
            20E6444B06C39C84D0236222AEED5E25FBE748EC4D3AF6D7C78ED1B16F4BB759
            4E49A8A479B661FD5ABC46A6EAF6EDDB50118D482A86720E5B2A8D46A388D2F6
            F154BE30F4A2A793358D4C86E328E61BD43AB2DC42CE33FAB8061058946A622A
            4728D8879367CE63687088584E0776BEB2836EC82AB43513BBD083266D69D24A
            08331A768576714D5081A85D219BF66D774BB7C361DB50BA5C7AAA3CC35C806B
            1581922C2FF4F42671F5D613A2A103B8F5785A224F2CEFC9752E61BB80152DCB
            F0FEEBDDF84F3FEBC2A6967293C42BAB309B4D0F060A38759913047B71EDCE43
            5A5947E93D17AD4D5578EFCDF5F8FB0F3761639B32802CF657B1D0951DA601B6
            71B7DFC5277FBC80DB779F1065EEC65B6F6CC4EA8E089645D4C0F2EA26A84FAB
            5F4F7F0A5F9DBA87DF7F7B03571F3E1543AFBEA1162BDAABF1DE6B6BF0B76FAC
            C3C66ACD18E8E6118103A790DD19CFE1CCA567F8FAF839DCB876139954569CEA
            5574D3DB1A5BD1DDB51C6BBBEAB1BE7B19567756A1A55601BCE3B33451E01779
            0B4B2A9C23BA08B0A81B63C0BD80F920E4EA444DF6C644A1DA114D1012DDBA31
            8D33A7AFE2C9E31EBA8638F6EE598F6DDB56A3ADA902BEB8855E724D299E021E
            577542956EA8A66D635136C1E4CE789A79B99E022DDB2C421ACCB8946060A05F
            6AB81880D8F7C221720E2A24930959C4DADB5A245AB39B00889F21AED53A73F6
            7B3AE73E79E095FFA55DA25A7BF6EE44394DC2B9744EA22CCC3884A989737912
            C78F1F2750F95E42C8ECE361DFCCEEDDBB71E4CD37B0667527B1AF042E5F25C6
            73F69C9411CCCD71BE4AA5F882366E5C8F2D9B366119810987A799513CE91FC0
            CDEBD7E8DC1F2141DFE5BFF1E4DFB57B97D47F7575AD903E69053D6FC25AB7FB
            1A03CF971A7892EA7B1D0436AFEEDB2BA6D6F28EF9C0635EF380E794021E3637
            3988C2897C5B89DDAC5FBF4EFC3C22CA46175F5E164335B1051E17BE0F776871
            FD8600F8FACD9B98A27366E089D338AC22C0E431DC4BE7CE3E45A5096E842794
            875C65416B265FD0CA035ABAC013F3DA1532CC55F48E5DCCEBD1426039A5AFA8
            75780CF0CC265D0C0C8E91FDFD909EEF0CB6AEEDC49A95ED643F86110A84E8BD
            8272DCB1F3883368795561AD6278055D6EAF5638F135E455CC5FD2C2B53DE0B9
            C5322EB998901AD404D1A091A90CEEF62571F1F630CEDF7C827B0FFB890D3D45
            05995C7BB66FC52FDFDB8EB7F792095267AB28BB2E32E308FCE57B29FCE1E410
            4E5D798AA7E3131235CA66660969E7B0EF954EFCD78FF6E3F08E463159625286
            E0CA8461E6314194EFFB738FE9419A46F7EA666CDAD844949D3EC761F190CA55
            60A6349AB270FAC7417CF2D5259CBAD44BDFB311AFAAA59BEBA022C221693ACE
            87BBB07B45B998687C8244A8304EE331E1B1FAE12C7EF3C9173876F45B246752
            686E5A8EF56B37E095CD5BB165E34AAC5D1941736D08E551CBEF12A1FC282621
            ABA081464D7643C3CD026200C7F2BFA7D5F2B8A5337F9740366A87C5FFC49F9D
            9CF630D03F8167C3C34867A7896154D0642133B6B6A628C8A5975CDBF8C76CA5
            00C0D146A93C66D071C202E296061D25750A5F4728784EC18E6BD20195984722
            919204BF070F1EE2FEBDBB783A304066F78864DC7201E6AB870EE0DD77DE1247
            EF851FAFD0C43981FBF7EF4BFA04FB311A9919EDDD8703C418D8099F0F087E99
            49DBD73F82E3C78EE3C285F392799B6531B4F20AECDFBF0F6FBDF52656763463
            6A36896BD76EE0F4E91FA458944D2F8E6AB511B0EDDBB383C064171AAB2AC584
            65B6D74BE7FCFDD9B3B4905C53C59504A45C3AB17EFD7A1C20F366DBD62D68A8
            ABF627B1A9A5BE7EEF018E1EFD06376FDD5520984EA1834CAD83043CFB34F070
            8438083CD0CFC35832A3C2E90C3C7D4F30333B23512966EAFCDD57B66D414B43
            9D161A53D1C0903E2E03FEBD7B0F842D5DBD7E83C8C614995AB400C6CBE9596C
            22B3731B76EDDC894E3E7E44B1F6BCBE4FA6EF9D2FA0666EAAB9AF9EAE15E3E7
            2454041EA94194D29EAC061EA7083C59DDAE7796D0749AE82C8B5CADA425371A
            D146A9594A8BD2BBFEC683C32555B3B359A5ABC2C5D5C40CA49AD50949D7039E
            C4E1600A805E9E5D9D316D9237F8CFA334C3EF0CA470E6F2639CF9FE267EBC78
            9D568A108E1C3C847FF81B5AD53646B1AC421D58C08DCE67967E3F7B33817F3B
            7A9F584F3FA65269112CCB17D2C8CE8CA0BDBE1C1F1CDA828FDFEA968E0F75A2
            279493810A49CD5A98585E0AB3C4B2EA97C5505B1791688474DB1421740B13F4
            EF6B7D097CFAED3D7C7EE23A7A0688A6C5EB11A58797BB9686BC291C78A503BF
            2273E58DCDCBD01C5370CF91BD19BAF9DCE4EFC1701AFFF4CFBFC5E77F388A3C
            0DFAA64DDB7168DF41ECDAB101ABD9B4AA54AB9AA43968F3866F41CC9AEF3362
            B3897B8E71142E57B0411C56DA17AB921502CB98FA4E5CAF92EA01CA8B6FC821
            F32EAC9BFD291D164836ECE4EC8808882D237BBF2A5EA53D48360CCEB06B4756
            6C7176710D5D56D16B4EF074987D2959CF6C5E85583D9DD3C57542ECEB496754
            494D5979DCBFC6C0AD478AF67FF7DE239AC8DFE3F2A54B5229CDEC896527F6EF
            DB83F7DE7F4FC2E6376F3DC031622E57AE5E152D9BF2B232C9E5E188D2A14307
            D1B5BCF1B95CA04932996EDCB82B2513376EDC10BF089F2BB325FECE1B47DE40
            7B532D261373B879E38E84AA6FDEBC210CA88AF6CDE60AB381C364CED5897CAD
            DE2F992AA74E9E96F37D363484E1916141BC151D1D3870F020F6ECDE83E56D4D
            7E58DDB8466EDCE56BF80EB76FDF13E04913F0B4B7348B49B96F8F069E705162
            C5000F5FD75842F978D851CE059ECC7858AA82B38DF71AE0A92DC7621B2752FE
            C8D9D9045E3DC432D97FC5F55DA68465D3E6CDD8B06E2D9995F5B4983ABEA967
            1632FE9DBBCB14F24AA02E1C51150C8A4C144B256CA364A0235D45E0D12B51DE
            534E56BF491F3F609E7ED8CD120575544F870339F4CEE1EE243D4CE334599F8D
            E630323625BA1E2C4911A727BFAA922E86D0BF221A96562AE5441FAACBC2A8AE
            88A0326EC9430C04F66FA93035F72E9DA4FDDFEF4FD0EAD68B93A77E44626A16
            7BB7EFC4476FEEC1E62E62175A264FB48F3D66221EBEB9368A7F3976033F5CE1
            48019915955C631641767612F1EC1CB676D4E3E76F6FC1076FAC45671D4794B2
            444753D2B72A6295D15C726482B16F94D13D2F4F0AF18AB072E43E2036C66516
            BFFBF62E2E11234B64CBA46FBAE8E22686096467B0637D137E7E781BDEDBBD1C
            EB9AA3327E72A334763F1A49E193DF7F81EFCF9CA3558A69FE3E326F7661EDAA
            3A1A136D561936A82321217D03B9FE2841E33D9DCC63649A3B7EA431932A20C3
            75595E04052B22939C75AC2B2A2D5457DAA8A7575DCC41353D1C711AF0A85564
            516695E231E71288548EEF5D1691108B3B198F92A3728AF2AA603E228F8D4A18
            3532189CADCC09A9EC8C13113616A2E72C76CB11E0C910388E8C4D4AB21AE72A
            313BE1547C11D8A28529463B65509BA545ABAF6F001758BAE2F2650C0D0D4AA4
            AB9A18C6EE5D3BF0D6BBEF90F9DF86BE2723F8E63BCE40FE5EF2507845E789B3
            7EFD069978EBD776A3A6AADCBFC60C9DD3E3C70392FFF323ED9B7D436CC27134
            8CEB91989970E261636D9900CFAD5BF770E6CC595CBF7E1DD3D3B3A824E06B6B
            6991DC9C03070EA0ADA14A9523D0750E3C7B86F3E72EE2067DF6D9F0336269A3
            12A1E309BC9FCCC39DBB7691A9D8ECCB9C9AE7E1C61D053C5C32C1217CD6E569
            6B6EC27E7A16F691E9C73945513DE983C0C3CFC73803CF0F17A490954DADE45C
            92E65A9524106EDDBA0DEB5996A36919CD4155C1CD4EE16C362F21EDF2784400
            A3A7F7098DE109FC70E18268A973E48ECF9B019CCF9D19DBEAAE9574AFEA552E
            96E4684172C538F1928B7339545E49265CFDB25AC4233A3527D0F2C7986426F2
            E58BBD7B9A8A298A4EEC47ABC41952E3603EE8F08E5372E1C093E11C1EF68FA2
            F7E9289E3C9BC1C4348110A1D15C262708CA9E70BEC832EEEFE4144445B0A126
            8A956DCBB0B6AB9556A56544E76945F6C1876C435769B8700D538E56D0E99CEA
            DE708193190746B1AA7D05318AB5E86A094B5F71AD878D49BA8047E373F8FCE2
            23FCFAD455DCBEDB4F0340B4BFAA0156AC8A2C029AF6F4E0B7D08D7867CF46FC
            E2FD57F0CABA725497D3559319C60EDA8817D7B9287A29E6FA2B5EEA09740A34
            28B3AE85733D63F8F7AF6FE3EB1F1E63708ADDFDB4FF283D84EC109D7D4A1369
            0A6B9797E3EDDD6BF0D1A135D8BDA61EE57AE935F2B90323699CFDE122FA1E3D
            421D4DBEAD5B3762F5EA0ED455AAD52DAFE576A442597B7799283C1BA7B1A0F1
            7E343088FE91290C4E2669B5CD61567A9E85C4CF9473435276C2650755F1101A
            AA23686F88A2B385ECF7E66A7434569119174565241014D0DE3FEE59912578E4
            D440F5A02B4543061F2E04E58724AC55366C91D850A6AA2C46E254B495E8BC80
            908AAE88EE30CDB45162D0B7EF3C944A6876AA3734D4D38ABE9C56D86A29D2E4
            D02D773F606D1E0EB1F73DEEC3E0C0538C8F8F0923E5B4FD5D043C6F93A9B592
            CC91C1B184F878CE7E7F5640642E95926A6C4E8063FF46B71472D66A55407A66
            33191100BB79E3A6F891B8C4804D7F4EF6DBB061A3F878C4111C773046A6D68D
            9B7705786EDEBC299FADAEA99688D5B66DDBC874DA8686653512469F9D9E9673
            E5FDB230D7349D3F47D93842C4A1F5BDFBF66123FD6CA073318C27A4238ED76F
            DFC75132FBEEDEBDEF0BA1B537378B7F87190FE725BD0878BEFFDEF8789E8843
            9CF377387B7B7577B744C76AAA2BC5CF225ACFF98230BCAACA4A02EE76343737
            626A26899364227E7B922542D482606AE358E0AB7345273A5776A2B1A9519407
            55C2A027CE7CF6CB71DE112F1A2BE933EC94AE23A0CF49DA4541EEBD13109897
            F219019EBCCA495499855C3FC5D12D47265841D7B748174BDBF2D3AC79C51E49
            BA78F46C1AB77B2671935E0FFA26F1782441372B2BD29D1CA2E7962BDC578B97
            48D152F632B48F0C014F01CBCA6DB437561080D413F83462CDCA3AACEEA843CB
            B27254DAAABB413EA7EAABD889CB99C15C6B3E3030898991499A4CE5E868A845
            7D791891B025D12E7EB246B2055C7A348CDF9EBE82CF2FDC20F695845DCE3DCC
            EB6842C460E5E8064C101DCDE5B1BDAB1D1F1CD98823871AD1DD4A66A0C85AD0
            7516C2C538744E4F2A76F0441C2985784CD7F8D5855EFCEBD11BB874779A80B1
            1156449593B0B317E91102A041B4D4E4F0EAD615F8F91B9B70786B27EACBE087
            255842747A3A8FA78343B44ACDA2BA9680A095E82CF7F3B214F32CE8281DB341
            66954334BE4F06E670EFD10C6EDDEFC7C32744E7A7E730C52D925D5B72AFD25C
            E52E19E021753E054EA524138580B6B1DAA2310F61751B318215F5584FE3BEAA
            AD160DB531E8A8B72C3E5CBC9BB7F234049C91EC8A1B1AA6C68DEBC70A0A78C4
            E1CC6C87D508C44EB27C9D5E061E8EFA71A1ADA1DCBC0D8F4D486ECCB7B4423F
            7CF0508A1F5B5A5BC99CAD23E0A99149C3CFE10C4DE44956BE9B9E902811BF62
            519500B76FFF1E613D8D34A9A7C8AEE764C4F3172EE2CE9DDB9285CCCEDEB894
            60D4D12ADD24939F8FC3E16ECECD19191DC1E8C888E40DF1DF38FAB46EED3A01
            07CE5B696E5C26A1EE11623897AE5C27367146F69D925AB01A79B5D1393300B1
            59C37A410C8CC3434F3136328AA9C92989C8F164E3C9C8A264BB0940DAC944E3
            89EB0680877FBF42E0F6C5175F4A922287D3D9A1BE9CCCC843FBF7E1C0BEFD12
            8E8F44EC058167229115E03D71E294944CB0139E4180AF99F39258A9D1D6BDBF
            0ABADD0ED701323031C8B2DF897580EE13589E2716788B58172B3A8E115BE3A4
            566682BC2F1ECB0A62521C5A77747B9C742A2D59D63C2E3C0E9CB7F4FAE1C392
            702BBDDD7CE0B17DE0370D1D7DE08156FEF7A4C99A2569FF5C94967355284C1C
            4496F2270C4DBAB8717F1CE7AE3DC4A51B8FD0F3741AB32907D9708D54AF731B
            16CE988576348A5444764E1C902C381EA75794F852A840AB8DC5E50874E357B5
            61CFF6B5D2E560756B1CD55AA9816DC29CE58B7D2AE714E75330407061224707
            389F25A23C664F89D11CBF7217FF76FC1CCE5EEFC18C578E48C34A1AEC4AE412
            501A3464929413E56FAB8CE2E0F6567CF45E27F66FA1071FAA9382C3A063C22D
            F9AC523AE72E77E110A668C02F3F1AC3EF4EDCC567A71F12DBA3CF95B7D3C056
            718939A215654467A7911D7F886A7B12BB37B4E0EFDEDC8A77F7ACC5F21AF88D
            0945C78BDB8EF08340C0E6B0535EC7578D189B093FF2503EEC9BC6B98BFDB875
            E7197A9F8C13FB9BC4E41C810399411E81708E4CA244413763E48DE53CC26574
            2D64C264F252F611F1665116A255B83C87154D95D8B0AA15DB377462D3DA762C
            6F2913DF1B0F2FA7D6172C623B76568A792D3140C35289C5A5B55C35E1E805C9
            E2BA31061E7E38224A3F8881C6953A3995D29ACDEB667FB43195BF7BF7AE24BC
            B1360DFB24A4489440C5D6B54C9CA3C38F695E56DE396140BCAF159D2B7090CC
            1B36735A5B1A25D2C3D5FC034323B871EB8EF86BFA88C54CD30ACC40C549746C
            1AF0E461D0E20088D16716934CAB0996575460CB962DB2EF952B978B3637E3E8
            D0C4247EFCF10A4E10F03CB87F4F98027FD6911E5DAA1E2922405910A691A5FD
            464321AD3D6349944C9CBC0468CC7AAA68729AAA6DE322E547E1CAF5DBF8F28B
            2F44F387B593D304641CEE7EEDE02111EA6213301A758A9D328A86072667D3C4
            78CEE1C4A993784C4C8EAF2D128EA8DA2A1E1FBA3F299D1B2495ED50A52BAB57
            ADC2EBAFBF2EFEB2BAFA5A02EB1C7AFB07718598286731F73F51FE22398ED1D1
            E1340811125395A219ADC9CC4F693D31D7570F1DC2BBEFBC4DCF52A3DF45441B
            5BF344E715F0D04C366D4545314E7AF5A812072EC863A6E16895B5891CF7D84A
            E2D2AD615CBEF9047738CA34C2B28805A5CF52B10CA1F23AD1CBE1DE51AAA752
            48D88E97CFB05D27B53E61AE25CAA7904B4D239F991587737D5D0D3ADBEAA583
            C4BECD84C69B3AB0B24115724AC1A5D40959BE83544C919CAA1F92E840585D5C
            0F0DD6AFBF398FDF1CBB807B03334813D3B1AB96D3F12B5098E3594D93C77310
            A39B10CECD60DD8A387EF9371BF0E16B9D68E53A584FE18C27D2A30555F3C4AB
            0DA7BCD30D18C81470FCFC43FCF6F86D9CBF3D4A939F267E8C180FCBA25B51C2
            DD0A7A1093C84DF4214CAC674347057EF1D636FCFCF52DE86EB28529F80DCF2D
            F80DCDF9CFDC09D4EF4CA3C1677CD6939EF0E72F3DC1A5AB0364624D63264166
            15D760715D9414B3B23224B131CF95B6CB820C2C47128A21C205A0B4E3FCEC0C
            0AA919226D2C149522B33747001441774733B66F5E85837B3AB0695D2DAAA0BA
            75705E8EC86D58AE8080CA06778CBC188CA88078DD7511A8D026915BF5FC8826
            74E6B29181E389D1DF3F80EBD76FE0E6AD5B229EC560C079306C06315BE1079C
            C5F259CC2A4680CF55E3AC05B366CD1A91BA60F3291E29BA8CE7C8FE7C363C26
            A613BF789F6CA631B3E1C923B964525764FB3D9ED879CAB940ACB1DC4C66CDAA
            55ABE9B5924C6E9562C10EF167A3635232C19A3F1C22E76B623178064466342A
            D151A543738A054FC81A32196BC91CAB2196C0C2655D2B5712F8AC155F961267
            F4FC3E737CD3D9C97E874CAC33679955DD157D63663D9D1D1D3291776CDF8E86
            7A2ED28CCA3C0CE6E67192E6C4C4B484C239978945D5B8568B131BB933050322
            038F88C8A753023C1CE061C05DB5AA0B3B77EE923C9DD6D666191B5E207A8935
            B1AF899311879F0D13A3515A4846EC5D4848D8111F9014C5D04F2EF2E5B1E47B
            C3ACA7B9B1DEEF561128642F613C823B1A788C98974E6F5652BE21E4E8A4D8C7
            7263208B6F2F3CC3A973F7D0D3FB58242CAD68197D26468015956890158EA9BA
            2F2E979789EBCB54D384570D7A6DFD13BE00983AAB7C368572A780BD9B57E0A3
            235B71604B0D1A6A54A6242F9931BA98A8098B6A8143D34DA7A0FD43B7C767F0
            BF3E3B813F7C7B0DC3091ACC501DBD57479F2526E6C6455E832506421E998433
            4368A975F1F13B5BF0CB77D7635D8B25E2E6619E38A98C3A7F620E76342C5122
            3631EF8DE7F1BB63D7F1D9B7B7D0F78C6EAA5741EF11E8D8F40A97C366553937
            056F6E04981DC0F23A0F3F3FB209FFF0CE766CEAA0D5D50E000F94CF96DD2644
            C224E2E5E9E652EC3F1B4DE471F5CE04CE9E7B88CBD7E9411821FB3F1B120540
            D78A8A62A1CBB21D9C83C5F5592CBC6FD378DABA9739D99FB130195A8466D999
            59910A89C5097843F440A66788844E4BAD5D677B23DE3CD88D770EAFC286D64A
            FA8E6A19E4F82E654FEAF22C3FF83DBF35B11B78B42CE5E8296AEBEA466EB64E
            5F65FA3E35392D119FA1A16762F2A8877B46564F8E4C71BB16612422DC5E4BC0
            D08A36320DD80FC33E070622275019CDC7E0540DF63570EE0F3BA259A07D78F8
            99F891B81797011F36B9F827030F9B1B2BBBBA68DFAD62E6B17017F42ACD62F4
            2AAFE8297A7A1ECA249416C59C87A3DBBDCC6F2CA53A3AC4E331D15D66D0E11C
            1E064C9E983CB173BA736748B32266810C0A838383041A3D52F2C0A2F53CC1F9
            5A39CB98FD2BA224480C261C9E1F9F637064B36EE8D933F93EB39424178946E3
            749E61BFED0C9F6B4EF7F9E2E332F03435358A1F8CFD47ECDC570D17559BA129
            1A331E47D6C2E6E8DC08995D9C51CE8B8648E070EB261A474E4864473E9B747C
            BE1DC4CC9A08C499D9D9BA5798DF80D0901DD3629906D3F3FF6CE937E0F99A1B
            ECF319A455F7FA9314CEDC99C6F91B43B871A7179374321266A9A88613894B24
            4349F3E84E96AE0215CB0E4862428190B22174408E57440EFF8AA4F09C485E70
            FDD7ABDB96E3F08E0E6C5D5B8FE63A955ECEA0C3F21B2A4B5F3794D36541468A
            E22A31827FF9F4048E9EBE8189740485D032FA4C2D1D83A30FAA09B22D8582B4
            BA12F05491D9F1E6DE35C44AD661D7DA32B4C72DC96BF1E8E6CB4ACED2ABF4A0
            488340AE5FEBCBE1DF3FFF115F9FBA89F12433A11A3205CB8819968B5EB2A8F9
            B1A07A6692EC8A01D457E6F0C1C135F8D53B5BB16335AD86514D65721AECD92F
            625B02347C8CAC663FC3C4522ED2589FF8BE0FD76F3FC5E03051F91C171A12B8
            39E522EA2EDD5375374D36895CD63762D0B18DCE003F2474FE2C53C1ED4739A5
            9F358638344B8C339B4A90F53B4BE66E1EEB572EC3E1BDDD38B27B059960D5A8
            0F417B7614008913D9E451E8BC78DD3B5404313C55A515C8F7F17CF1FEA0E425
            3F5FCC1438439B8B3A79E2B199C22BAAD40A71716B5E55BA33E3E149CBD9C82C
            6ACE6C8327ADAA842EE8CE154A78DCE4E5F3A4E524539E280C44ECD3C9481B1A
            E5E40C6B11F97209196B87769952CC738D54A76E3AC7E7C9A16D664D49115C77
            7DD6644C10257267EB6B53FAC251917155AD794CC988B96E011E4709A4491609
            6B4D13E0F2311252A4A9DAE8B0A64E0D8121838E2A3D71E61D9B8FC326AD4A5E
            CC082B619F18130665BA46B54357F30CF6DDE9DEF40C90626296970B08454555
            B008E4FC59061976A6F37E792C794CB35A3CDE08FFF158F23DA9AEAE927B648A
            53F95CE7818C31BB8B07D0C053DAF734700273B4925CE94BE08F3F3CC5C96BC3
            78329A945475B667599AD322AACF1ACC9E0E9FFAAD1C7509BC021ECF079EE266
            92DE840BE9A8498198480AF1C234DAAA3CECDAD08E2307BAB17F5B03DACA43BA
            5EC89350AE103D5D1EE16A36C211AD0B77C6F19B2F4EE2C4853B98CED079451A
            884510F070BD17311E4F0AD238CA9221D36B5C12FD76AC69C487AF76E38D5D4D
            58DB10910C61550959D00A80CAA9FC74CEC3D96B33F8F5171770FAE23D622931
            22390DC408CBC4EC71EDA800956822B35ED0CC20AACAD2788B00F41FDEDC8CFD
            1B9BD052A53324751AA8F4E9E0D530C4B93D9638D093F4F5DBFDB3F8ECEB2B38
            71F6364627D9D75246A75149E35C2E4C87DBD9B011E4EAE6D64A2E36C876B4F6
            A1A7B26344525FB79BB12D0D17F4993C995FD959EEA995C5DA150D78F7D57578
            EBC06A623EF440459452B56A4D6CC04C8BFB6BD071458AAC083C0E021D284DDA
            BC569D5B7C5393922786ABBB6C1A81709EB866F206B7BC6E656CB47CE73DD87A
            5340126CAC079FF998153EF8AC4B87077DBE469CFCCFD9CC3ECCEFC1496800CB
            D452FD29C7089EA3AD59A415B8EE9C64D45B0B8E57E97ECC5898712A3DB7E267
            5D617F727F0CD30B5C6348AB09F098966EF3CED5B6E71F3B083CF306C253457D
            13891C4E5C1BC0BF7C7513A7AE3FC3ACCB29DF2AB9C50EB34A5F99008F944148
            6B62CFD74DB04CDF67A8F6B6CAC4024C132609B50AF08424922625F6EE1C0AC4
            44C2B971AC6C8A4BFB181671DFD6D9A027818AA8F891774F9B2AF4FBE02C70FA
            CA137C72EC0C7EB8DE8344BE8280B181E65D0DEDBF920622AA85D0799A70DB9A
            49945949AC6A8CE1ED7D9D22F7B9BDAB0A4A36C95069358DD885767F248B6304
            C0BF3B7A09576E3F413E44AB7075339938AC6D139609A8DA37B390FA0C01CF10
            E2A1040EAC6FC62FDFD8883777AE405743DC089BE89BEA92A9A615086925E29C
            A53E3ACEE94B7DF8E3B1F3B87AAB17391AF368593D3115626D765CC64B7491A0
            5ACE8ADB48F29E14F8E87825D402C00F5248DAF388F8BA9B57C2F5850C22362F
            0804C06476B9C971D4C608EC37ADC4FBAF6F25B6B91C5D8D71C5FE7CE029F89A
            D90A782CDDB35E010F50023C250FBAD97E6AB23DDF8F69F1CFBCEC3E5F660BEE
            F32FD95FB0BB42707FA5CC2F789D2F733CC3C80C2B33C0FC976CAAFD8DEBFBE4
            8285BD7F8DF1F44A161E1FDC3D7DF5064D7913B4A7472999CE60683C89AFCFF7
            E01F3FBF827377C7E0C5EA102EAB811D89FA62E45E28AC1E407622E695EFC6D2
            4989C619A3540A0DF0E8347F83B8D2F8CE5635475E1A85C430907846AB70127B
            362FC7DF7FB89FD848379A6B888D58CA04B07406ADB4810DAB68DBA3D12C8ED3
            B97EFAED795CBE3F809455053BDE485FA812A650E030B916E2113D422E367567
            D15496C7EB3B97E397EF6EC5FE4DF5A812126112D4D5CA3E4BDFBBDA33833F9E
            7C882F4FDEC4FD27E3C4A66A11AB6A82CB0DF8B8C05342329CE5C7F1F239019E
            B03B8D6D1DD5F8BBC31BF0E1A13558DF5E4D84282F09673C3E9CBF296DD7A221
            E459552F019CBDF2145F7C770517AF3FC0D8748AC6BA1AE1680D9955717A8555
            2D94A7B2AB3C18E051C59AAAC7197C56021D5AB7A594DC52C093A173CBA468BC
            F360ADB27256344B4DC24A4FA0A3A10A47F66DC4476F6E122618577B5469023E
            F0A8789B029EA2A925BAD39E5E64E461B3E7B1DC52B0588C8A9B89503A3183AF
            174DA0E03ECD047DD1A433136EA17358E83DF3BED982E7641CEBE61CCCBF0D3B
            2835698AA64B91111836E7045A04979E57E91804AF37786EA59F293DBE19E360
            0FACE0B99482F142FB30B8613E537AACE0D8E4A4C79A5B041EFE87717EB1D033
            2FF42C833838318763171EE19FBFBC8AF3F726E112F0442B97C1894425D190C3
            ED052933705481A0E981CE196FF2A0ABF62B8AF198696238903E21F153287F8F
            ED65C9944ACA24601F4C7B6D146F1FD88A0F8F6CC38E750D68892BAD6411952F
            A888B71DB50478EE0CCCE28BB30FF0C5A9ABB8D9378234995876AC9E80B19C8E
            416696E4E678BEFF895B22470AB3A8719238B0B90D7FFFFE2EBCF64A236A1953
            2D053CCA9CB025A2778E18DFA7DFDCC529622383E369029C6A89E2B9A138B21E
            8F45412DF9AC1944A69C37330C8758D55A62391F1D5C8B5FBEBD11DB56D6C3E2
            C1CFE7658CB8C481D9A21BB631E371A57B8E18D5457C75F20246A63364CAD511
            F0549165164586CE3FEF99744EDB9FFCC26D2C33B29A501A8F8BF4577774BB21
            45153939D3CA1147CCA7112690ACA908219C9F8547A6674B4D1CAFED5A2BC0B3
            735DB3061E1481C788F2CC031ECD71746B1B0BA607B98D1799F10B018F59D583
            9131F3FEBCF628819FE6E10F824F29F02C34694AD943E98433E7E1687DA0D2F3
            F6BB27949865C1C91AF41B058F117C3F785E661EF24FE3845E0C704B01BA748C
            5E34CE0B9DEB42F727B8FF20A098F1089A5FA5FB2EBDDE79C0634C2D4FABCF0B
            F04494479C6DE3B1641EDF5D7A827FFAE232CEDCA0C9EC5411E3A916F38A6B82
            A4D52EA7D14B03B990420271CA1ACD0457CB9ACE071E053EE6A7EA21AD16D202
            E26197984212C9F17E4472B3D8BAAA151F1D7905EFBDBA01EB5BE22A91911D75
            1CC9E5873B6223E1312399C41F4F3FC0D73FDCC6DDA753C8705E1101A5C75D11
            2CCD760A8A26F104E11CDF483E81587E1ABBD6B5E0EFDFDB4BCCA7190D646BC5
            43BA025DF2874218A579FADDF9C7F8FDB19BB87C77145329F66D10A0C52A0934
            A2D29923CF0E5887C3EF7C93B37013E370884974D0C47E6F6F377EF5C116EC5D
            D324C76673C762A5414F0103779A783C9DC5890BCFF0EB3F9CC1F757EEA010AA
            404D5307BC7099804E464EDD183281870B2A0DC2EF23EC9792DACAF4E3CD7796
            DBD2F75E14B6F373B0F329C41C3A97CC14A285243676B5E1DDD75E21D6B312DD
            AD65DAD452793BA5C0031F782CFF7CCC3DF65B1EBDC07C59E8BDE0845EE8812F
            9D48C1BF977EBF74C22E74FCC5CC9D85DE0B82A2F95B291B5A08984AD9DA8BCC
            C4E0642F0591C598DE62FE99858065B1639532C3D27BF022F337F85EE9F90781
            3378BEF380C7301E2324C41B87797FB83D867F24C673EC423F26521CC989D32A
            1C93952ECBDA2BEC64614733B736CE6BA52323E06EC2E650B65110788213C797
            2CB33CC9440E1363484F8FC09D1D456B79083FDBBF09FFF9FD7DD8B3BE1AE53C
            5745A7D9532B7AC8C10C1DE2C77BE3F88C4CA1E3171FE0C14802B9702D014F95
            725C5BBA8E36AF68124F7E164A8DE493B0895D6DE96AC02FDEDD8B237B96A38D
            BE5615CB8913D6951CEA10866681AF08D47E77F43AEEF4CE20ED715A78198103
            993F34B973ECA865A77288AE513A7F9249939A22E099463301E35BDB57E27F7C
            BC0DAF6E6C51FE0F021E4F225121517F641FD58F0FC6F1C957B788EDDC44DFF0
            14DC6815CA6AC8940BC7241B396F1AB1CE376034E038DA916C5EDAFCD11D3F55
            FD451ECA0DC50A7A5CF2407BCDCEA0303781CCF4306A622EDE3AB00DBFFCE020
            B19D5AD4C48B3A4B0A788CB9E53FC6CAC11DF0E83881B30BAE9A0B4DEEC526C6
            8B7C1EA593C54CFA177DBEF467A929F6539B3966D08431DF5D88412CC4D64A4D
            B1D2F158C844349B79AF146C4BC7CF44BD829F5D6CDC5F3496C17BF1A23159E8
            33A52C2908D0F3F61DF4F1F8E1BE802DCA4374B53F89DF7CF3007F3CD383DE67
            0901239640F508680ADC87CAD51D0CB807154B5F989EDF41D93A14998F5A314B
            367301BA391D271B7AD904BCE4242AC8247A6DD36AFC970F0EE1F0F67A345570
            A26C3E20EC62639A01F2D6283E3DD1836F2FF7A1673C854284184F945DC52A92
            25E7C0A098535A1CBC9A877373C44CC6B0BEA3161FBFB50BEF1C588DCE66D0A4
            2B88DB94FD29197A0DCC009F7F7B17BF2100BEFF640E79BB8640A35C2259CC56
            72769E002827C0233E1EF62165120865E6B08CAEEDF0E60EFC4F029E375E6915
            27B997CD107BC9CA185AA12868F7387AA60FFFF4C9055CB9378AB4C50D65B8E7
            564CF4553D2ECEF3C7CE8CA9B9DB9684CC8DDFC7F7FF584AFBD84FEE13F9C08C
            68B63A8E8BCA38677ECF11E83C437A6A98CCAC087EFEB3DDF8CF1F1FC0DAE6A8
            A4F48711A8D5F302623CE6D025C063389799300B3D84C1095ACA0C820C62A148
            55E964FBA9C9510A04A53E9752132AB8DFA04394E746A9B9F4B2CEEFE0359746
            7A94655128A607E8107DF0BC1632A9163AF6628CB014F816DB4AFD568B8DF1CB
            82F542913C7F1F0678CC85F3E6989BAF3FF860328FA3E747F0E9C907B872B71F
            E38934C2F13238DC6BDC8AD04A6C2916142BD3FA54796D360540C7673E413D3C
            A8DF8D4FC2B09E825E9DF9B33479237353D8D1D9825FBCB587984F1B56353B88
            F0E4E69074489DE714FDF3CCB511FCF69B1E9CBCDA8FBE2902AE5835016299B6
            150ABA09564EE5D0E4B9E29E98552E2DDD48BB5BABF0E191ED22DED5DD61A136
            A26A1B14E3B131408CE70FDFDCC3AFFF780DF7FA92040435D2EF8B4DCC0CB31D
            9B6CD730ED3B5C50C7E25C9E5C8AF69F43351DF6C0FAE5F81F1F6DC5DBBB5B45
            9B279F4D13C3CC4869038F1DCB7FFCFEE83DFCE36FCFA26F248F786D0BA6B316
            66589F44E71279B6099307C65492AF6C011B053EB468B821783EF040B1C27854
            8D733A09CC4D8313102A8949B249994B8CC2CECC62755B3501CF0E7CF4CE562C
            AF5029FA21FDF219CF738B86E5038F4C129D58B79069F12253A774B297BE6FFE
            FE2296B2903F62212028F58998EF32B804C3C4C1F74AFD46C1BF078FB7D0F905
            194B905D047D4A41136E2147F762E354EA4F0A5EF7428CAA946D2D14EA2E5D14
            82FB2BBD3E039A0BA5352C66AEF9C0531A0DB0CC89E9BAAD41B203CEDF4B119B
            7888EFCEDFC2D3D1699ACF15043E95925392E1C67BDC142E56219340018F0194
            C580275079627C06E6825CD72FE1E089E2CC4E607D63B568E87CF45A27B6AD8E
            4BE9949775A55482BF37491F3F716918BF3ED68353043C4F390C55C68C27AEF6
            17D289755237E64A67D218D79E10037067A7B0AAA506EFBDFE0ADE7FBD13EB3A
            6DD4B060BAF44E50756243345FFFF86D0F7EFD879BB8D343E6895345C05B2999
            DD1962377987D84B844122A7F2780A6901390EFD97D3B1F674B7E2BF7DB805EF
            EE6F452DE71FD17139518E758232C49AFA27804FBFBE8F7FFBEC070C8CE551B6
            AC95CCB9081239AE9BB2A4EDB0009A69866EFC2D32948E069E500078420A782C
            27D0B78CC62B9F25F32A414331875888BD572978E929D41308EDD8B0428A660F
            B18675D4F69BCE1581C75B1078FC208124A9CDCFAF59C86FF053C060FC290B4D
            94C54CB1203308BEBF90B3B57433ACA31478F8DC5F04640B45D1160A992FE697
            7A91EFC9FC5C2832B4D8DF17F20D05FD2E417261CEB7D4A95EEAA72935E54A81
            37083C0B45E182E7366FCCE94BDE73769E9FF8C5CF339931AE8D3B431E3E3BD1
            8B3F7E73193D036308C5CB0978AAE87361CC65E9E036ADCA0C3C1CDDCABB01E0
            41B132F239E0F18A0FB3CF7AA0D4ABC437417F4F9011323D89AEEA32620BDDF8
            C59B2BB1775395A8F2B1D5201FA5539EA4E31DBB308C7F3DDA8333D79F629485
            791878227165E20913D14C8ABDB4590F519AAC11AED89D9BC5AAB63ABCFB3A31
            9E575BB06E85854A9A695940273802C304BE5F9EE823E0B9875B0FA691B7CAC8
            DCACA0F171902E90D914A29389B38F27AF44B1F269B9DE108D473CEB60675713
            7EF5C166029E16D4734A8DA712E5F26226DA78F89481ED113EFBFA227A9ECE20
            54D1402F32E79CB0F41D2B68C7B55CC33C7D419DC8C4D21F86F11060B1148848
            53B0883C3F57196E9343DC8D00855514C31EFD3B33236C071902DEF66578F3E0
            36FCECB575D8BCA692C0D1F281A7184303B010530F3C678B8599CD7B8BF93EE6
            2D7C2F00A42030052756F0B38B4DEAD2D06F29A0958243D04C5B28A970B1907F
            F058262C5E7A3E0BF98B82FB2D4D6634FE9BE0182E14355AC8242B35C14AC7B2
            743C1702C1D2712D0593D2FBB610739DF73E3B974DB8CF3C0CC59D7A6A62D193
            F5740E3876FE193EF9EA1AAEDD191041252F54468CA39C2C9E109447845659D3
            6EB710602D3236067882AF20F0E80B642730EB33F37ED8E49A99869548607965
            1CAF6DE9C07F7ABB038777D6A282337D734ABD824B6CA6E87C8E9E1FC2BF7CFD
            1817EE8D6132E96AFF4844CD9C98AB262D3BA5D97CC930F0D84484E846CE25B0
            6645233E7C7B077E76A81E5DCD90E43AC6274E82E4B2A051FADAD7A79FE2379F
            F5E0FADD49224D118463E5727DA97C52014F1917676A5060A0E0DA1832EBA2D9
            3076AF69C57FFFDB8D78675F136AACA21F84A7C138E1D4ED3EE0AB934FF0E5C9
            2B78F0789C985A0DFDAF1E21325FB9B480FD41528A2F665C0EBE82B2A581A750
            023CFC62B6C3F956FC99644258981D0F1116DB88791958994964268724837BDB
            7A1ADB8F0EE3ADFD2BD15AA71A16F266B4965F167816DB5EE4745D8C11FCD4FE
            16FAF74F39A617029EC5CCB7D289BC50D8FCA78E65C2F18B45BE785B2C5727C8
            1C4BCDBB854CB2D2732E8D28BDCCFD598C85BDE8F30B2D143FF53731B5161F40
            CF97A398A6EF5EB83F8B3F7CD32345A203C32348BBC41838A7275E231891A199
            EA32C360BF8A896ED9761178E6995C01F0F17D4150A025C013513D8093646A65
            32682E8FD2E46DC02FDF5A8EB7F737605958D736E545AD42327EBF38FB14FF76
            EC096E3E49627AAE8054DA15530834D9642671334096B948E784F14468A2DA9C
            A69F9C437767033E7AE7155AF11BB1B2494D38C627D32E861BF11D3B338CDF7F
            DE8B1B7727902D840878CAC46F9422D3A51036C0A3A35A0CE02C3A369B459881
            8726F67F63E0D95F8F1ADBAF2B946D8C3E76E53E034F1FBE3B770B7D4304B6B1
            1AD8E53592712CF53BCCBFC45C348CC7B09EF98CC7F281272C8999AA070D0F54
            46B295791F2102E018373ECCCF02739388B8491CD8B91AFFE5EF5EC3BEAD8D52
            C86A94099F031EE0CF069FC51EC2FFC8EDCFC978FE73CFF92FB9D6974943F8A9
            48DEFFAD317E99CD772E2FB699C79B6B95EE8FE769624CE00B32B7AEDDBE8D04
            3DC7B1DA263865B5C81108A51978A45EA94C178A6A46E3059DCCA5CED10580C7
            5219D1BAC33C1C7AD5D13F377554E3E33756E0BDD75AB1A20A7E2705DE06E95C
            3EFDF6317E73AC170F863248E62C01423137B8049BF52E78D2161878F2F2C508
            4D589B184F2195168DDD370F6EC4076FB461EB6A9B452EC4D4B2F5B53F248BE4
            AB5323F8FADB87B8DF3B03EED0CE49945CA2902E240970B304167C3C826AD6D5
            E0067D1902B8990CEC8C8D8D9D1DF8E8CD2D64CA2D4357A3C24163740ED0B99F
            FD710E5F91297BF17A2F8667C824223077C365021E9E28FCE5156313E009301E
            4F65285BA238A83C3296CBC0C3652821E5DB61D6C94E75061E2F8D889313E0F1
            E6C610A77FAF6CA9C69BAF6EC2CFDED88CF5EDF1626168C9EB85C0E33F51FFB7
            1FE9A5EDFF85EDA5818727E128CDC02B0F72F8ECE8797C77F6474CCCE610AEAC
            8717AD24B3264EA6894D248757587A742331C576F2A6FD83F6F3BC10782CE50C
            F5FC588A7CD74E73E1681A9DF5311CD9D381770EADC4BACE9834BC1369013AC6
            43A2249F9FECC1D1B37DE81F6705BD280ACC0478C567BD592E0B10A76F4EB773
            643F87D2F7E59EE4D565716CEC6EC55B07DAF0EAEE5A74542BA690A5CF0D4EE7
            718DAEFBDBEFFB71E1CA638C8C7363B73229FD67C1AC1C732F021D2BCA1A4469
            3AE59CCE16B654EBD4948BD6EA7AECDDB496F6DF8A1D9B2268AEB2C54C6465C1
            7B43699CFC7E1027CF3D41CFC02492F910EC5895E8268B6120DE7E7DFE96B443
            2C8EA3A75AF915C3E921EEBB238C474C2DA66C42AF94C3DB7653888572881412
            484F0CA0A1C2C19103DBF0DE9B5BB1754D1D9A2A1D23111448455C029EA5EDAF
            BBFD24F0989A647EDC592FA66F9C4C9AE357F1F9B18BE81D9C429E26A017AD42
            2E54812CD1FD3C4B8B325B89951379A187DFF46CB55E003C262FC50A028FA3B2
            8DD92C4BCDC149CDA08E58CBD6EE061CD8DE89755DACCB121151A6B199593C18
            98C0851B03B8FE7002132947FC4FC29AB8445FDA21B03F24A743F5AE388742EC
            E3F194A815F7D55A5661E39575F538B4BB1DEB3B1B093B4398225AF7B07F0237
            EF8DE3F2AD11F40ED084CD46118E9611A9E3B63E1914C884B3CBC8A68EB2A6ED
            1C912ACD95F8FC592868CE4505FDDED5544FA0D3846D9B6BB1A2B58A2E95F79F
            C3CD87C3387FF9116E13AD9A495B92B16C87CBD4A932ACC454432F8F188BE715
            81C7D2512DCB24101A9EE2A92252011E5523214E758BBECB899911CC49494A66
            6A086B96D7E11FFEF6303E787323DAAA1CC41C937E58F443CDCF93FEEB985C4B
            DBFFBFB797071E1DF11EA767FEFB1FFB0978AEE1C79B8F3096E0307235F2E12A
            5ADC43442698DE2B738B05C1943BC7D3C585A5A013041E13D97274A82AAC5670
            9E7DC478303783A8979224B7553459DA9B6A505E1E9190F4D8D40C9E8E4EE2E9
            D81C26E62C328DE2727C8F655743AA38525D450EA691971008512FA4159ECF33
            9791B201EE63B5694D1356AD68403412C6F8CC1C9E0C4E4A8FF3C1910CA6E6C2
            22FA158AA86E546E618E8E430CA89C0182402397425E3A607236778CB03422AD
            5923296255110B6D0D71B4B795A3A5B9423A524ECE66D1F37814BD4F46309920
            7088561343AB246C641F514EB29A1D6ED74A009ACFD2B1D8C9AC01DC94269496
            4AF0B8797EE12674352D2BE4B98887C81CCC4C203F334CA394C4DEAD2BF1ABBF
            7B0D47F675A04A071519881DAB54EE2BF0D0985F96806769FB33B79F041EBFE5
            8D2E76E628F5A3FE399C38FF08C7CF5CC1EDDE219A5771623C95645144E0B206
            30B320F614587A1536F93C7EE6EB42C063365B45B46C5D5BC5354D9C7B9223D6
            436C22C662F1F4769C267144C4C55D24698226E89561A76AB8427C231E4D7A51
            E7B303934F1FCFD2C58CAE44F3B8050C9D331D233F3D86983D87866A07B59521
            6112C94C1EB3041CA94204997C19322EEDDB2E131173C9AE66E061C6536E13F0
            38626689E896ABA273B613834DA81D4AA61126C612B5338845338897D1E7094C
            78FFCC7AE6D29C93542145A12E7D27CB0EF0B9AC54953BD5C48E428EB4B6F50A
            39958F33AFCCB6F89BA9D1F20C6C48832395BF1409BB28A75776E619ED7B0C5D
            CD5578E7D52D64666DC4B6557588FB0F85EE12BAD84353FA8725005ADAFEC4ED
            2781470C244F810F2FAC2C019AA005FD7ACF38FE70FC479C3C7F17435359A4C0
            754B95AA362A548EBCEBC8AA2D4E664908327B5380633DC77AF4F1F8B3ECA0B6
            75C1294D340ED4B34EB343A6829B492047A6176B388BA0153B712D55E16D697D
            208B4B0C1C15D5118344BCB89E9C87A5CB380478F2AA28D621F62261C8B95902
            89694489093885940853B10C854DA6A413AFA50F5611F38B49FA0044C295756D
            E6E8B7AC74A1B0E3617535D982F2EF3831D19FE6087B289512C17B3797202C48
            8AD9C7579D93D26F3A46A40CD18A1A623C3476649E655319157DA371B0A331C9
            5C16A0D46527C5BA74739F2CD1E48129180D0091A805104846AC2C01771AD9E9
            6154453238B463033E7E7B17766FAE414B65C48F642933EBF9FD9B7F19B09BC7
            7C4C3A84A73FB1043C4BDB0BB69F041EDEF813A226015D870855497DECCC3DFC
            F1F8355CBDFF1493190BA1F2069A7CB5228C95E5A88A1B5879FD00B2661D023E
            812438732CC9EBD041DC027F3B4FE0E28A20BC63BBC891199349CE492F68A969
            09854586D15427AA0C5F5BD896544E172C1D5C538E564BDEF35422612127F29C
            124963517ACEC32E2411CA4CA3909A553291917202843AB29A6AE86C69DAE695
            140844F62B23C0537089898408F8E21115BE17F90D3E196532B25F3BCCE25BB9
            B4F2D310E8E409B4F29C6FC160188920122B97281917DCE6F39CBEEF490F2B66
            5DDC844D26BAA8079A1BA7788EFA0FA2C5E35AC5795FFC9023DA382C5D6A6566
            2477279C9BC59AE535F8F8ADDDF8F0F5CDE86C54C5A0AA738416CFF71705B543
            0FC5F62A96FF9FB96928D69079FA5E2F01CFD2F682EDA5808737CFD3168BB6FD
            C768DE5EBE3B863F7C7313C7BFBF8EFEF124C2158D64E6542167112BB0225A29
            CFD1D5E728B21E2B083CE6F0A6EEC8F2A3EF221D6EABDA2711F623BA9223D324
            9F2D889670884D19915C75C5F7C18D88854958AA47BBE7DA01F00B4BAB1D4B8A
            4AF9FD9C021F57977C739BE548582AB69DF42CDC5452C0361CE1D2906AB29CC8
            C823BAC7E5217CE6169F13331D37490095510DFFB8A50C9B890C9CCCF60A2AB2
            C5D25D21D625E28E9AFC6D765DD118E4BC82147E5ADC4E45BA7178D2CA45F2AA
            88B5453941913B3FCE26E954091068DF0C3E3C64B6572CAA7535E8880A613021
            D352B9C78E88A715904F4EC04B8EA1A12A8C57B7AFC62FDEDE4C3F5B50E72872
            A9A442E8C5CA8476D00436C0E30B5E0480A7C4545E029EA5ED25B697041E938B
            035FAE94F56F06A7F2F8EEC2637C76FC32AE3F7C264EDD0C58C2212EFD9E38AC
            EE1A27E782C0E316F72D7E0B1561E2159EDD40D2082C541076C05AC22CE1E9E6
            585C8C93F7B856AA42A4560BDCA33D9FA2CF70DFAE8C009030192E5E7575748C
            BB60705987A5225C9E84A60BCA07C2CD54B928304AE6061D38C43DC0321971D0
            3A9C93C4D2A605EE0FE509187161AA152A28C6E311FBF29498B8B01D061EE60F
            CC7672CAC7E2780599D08EDFEDDE119DE582C86EE4A5958C742BE5A2517EF147
            CA2B505E5923E33037490C2C9DD7401B16DA69FBD3DE53FBD100E449474FE347
            53C985AC91C3FA3B6E6A0A5102CA0D5DCD78EFB52D78675F0B36B494A9A25549
            8A6273968EE328917EF8265B51D87D097896B6BFC6F612C0A3E987A753CD2D16
            C0B2A5A7798ADEBAD93B8BAFCE70F1E8033C1A9C4422EB48533F36B75C4904D4
            95D24595165FBBCEF21F5A57038FAE00D0C0130E3BC22C32F93969A76B11CBF1
            44BE3406275A4D93BF0C6E96A33469550D1E4AD16738DD2FA3C5DA7972B0B650
            543519E4DC16B9069D011CD2217C177E31A543CCC4A6C96F8B3F85FD47049EDC
            8B9C87C0569F117663657904889165E4DC791445978873982C8E78455528BDC0
            BEA09C300E56F1E3CF080C3185E310B9C854A43550102312E6E64A9B9C5879A5
            B421CECC10B8650A083B5188FCBA578C37C9E8592C18EF2AC177D365C2D6252B
            E2A0A7FD1668592036D7BEAC0C0789EDBC73682D5E591D4343CC425C6E03C18A
            9B937375647C2C9587E52B1D3A01E0B103D25F4BC0B3B4FDE9DB4B008F061D4F
            E70813EB60FF0D77F7E4676C24EDE2E2DD59FCEEABABF8EEDC354C1159600174
            8E30E5C8D4F01C1DA1D23E02C59C3CA5B9A3FD029EA72AAE2DD3ABC0000FE7E0
            D024CAE4C89CE1E67222714140502093235421BDBCB8A04AA2545C06EE704BDA
            196991638B43956B59C23487620A3CF2B6A82A4A689D27274B5F84548F6FE584
            F5A4A4C292951F9294C75A43053724A6984360604B6B980C0A593A8E47C70973
            1750AE6FE3A66E9E32B3B8468C8057D9549E9ACCAC75CC2FF63B313885636A72
            6692F49914178711983A32E90BB9341D83185598DB8ED0F1B87683CCBC10B11D
            4780C7F29D6DC6C42AD0F5148147B31E28F3CEE3B641E904995865D8B54981CE
            A1EDF5E8A8D28EE49CD2C38E3AAEE81C59A606CC0AA60F1A4177F5B7A0FEE1FC
            B056D0B1BDB42D6D0B6F7F22F0A89887E4EBF05BB462B335D13F057C79EA013E
            3D76118F9E4E13DB29432A1F1267AC1552ED580A12E5098923584846214B2FAE
            B6F2440294536E2C6604AC82284EE590B4B2E5C993A3D5BAC02D6938ECCD4DEC
            98F5F0E4E5499EF3A49BA174FBB4C9DCE2EE0EB46F4B67F43AACF0C7ACC5A573
            C85B5A2F46B302692FAE140C651391B09CCA9616B6E4884E339B8B5CE51D62E0
            E1107E96737566693F1991E5E03E550C3C0509FD39AAE4830157B297554F2ACB
            E54AE5BC4C66C92F0A8B1C1801CF9CAA668FD0F5C6C332BDDD2C014F2AADAC52
            8E6AC93EB88BA7233FC57FA59985EB705F2EC578C4B7656BA730FF6426959800
            38F932EE60EBBA2EBCBE7F0B0EED6847777B58F27624A93CE78AE8573CC48585
            C17C2B607EEE723097D96C4BC0B3B4FDE9DB4B9A5ADA1722CF93EDEBFFF2D3CA
            CDF1D8DF73F37102DFFEF008A75976F4F128A6E73CE98E10229388930AB96CC9
            0AC769FEC644E7279F2616939E91C9629747112D8F880879369990BEEB76284E
            B8A63297D905CBBE5ACF56D12EE98D65E9969BAEF24548CA10FB4BBC8CEE2201
            656A59AAAF94E72969504F799D952261704E99BA271145375123C5643C2D9AAE
            5ACF42181AB31701630BBA5DABA5C1C009E42FD99A9D1404543DA3DE27C7D44E
            2FD700A1AECA6620664D68EE62AA4F91FBC48B703A9F8F24821794E9CA85A802
            3C902EA2302F53C596A11561B817512F819D1BBAF0B3237B70604F3756B756A0
            3CAC4911334BCEBAB2E576C2AFA77BEEA9084427AD1780CB12E62C6D2FB1BDBC
            8FC72DCA56B0C83BE79F704E0F030F7321CE68BEF13081EF7EB88FD3E76FE1E1
            E3717132C72A1A68EE1103CAD82A2746A43E1D99B41E311997A8BDCB2D73D935
            427B2AE498097118598B6E4AA8D652E1622090A362A23A811CA179B92408F842
            3400F882E801AD20F9DD8898EB555EC04279A5FCE3693F887F4C8540C58359DA
            FCB1F5313D13C92B393F4B1FCF9A9F46A012FD5472A32D5CCB12A7303496385A
            FEA09063677B41C6D0E6DC1E965DE5316320E4BFC5A2F47706F604303D88D8EC
            003AEB2338B26F2B01CF2E6CDDD482BA88AD12430B6ADF5176CB592622EE697F
            9E85E7998CFE69C664219059029EA5ED25B697031ECFF439875A652DD55980CB
            28385D8581875DBA43531E6EDC1FC509029FB317EEA07F380127564B264A1DF2
            6E0CD9BC2D32A99C4FE3C4C2C486B8056F9E26CE9C6426DB44F5399785CD1537
            EBE9BE800137A6446D4A16632BF08BEFBF3660110081C0E5CCFFA2012C2F003C
            E6FF161B9A9215DF889879C1C968CF3F1F9DC0A86B355014F1329FF18AB804CD
            2F34B0C9EF56B10F36676B3BAC90C765143448F94C5ADAE5B082BB1D8BCBDFB3
            3313B012CFD055E7E1E096E538B8AD0BDBD7AFC08AF66A623B96DF70838F276C
            C7C8522B2FB9793A603277E65FEF12F02C6D7FD9F6D3C063926ABC60937A2589
            CAD1AD2C4D2AF6D49842EC67D3799CBF368CAFBEBB8A0B977B3099E4E2C93A44
            CBEAE8330C3ED24A0F563402271A9250723E9B94AC5EF197C4E3B2DEBB691512
            1753493B52C58701E8C6757AF3DD0D4170312CC7FCDDF2D98AC9BA9D0746C5D1
            D0DF37FFE7A342C984F2FC3D1513F64AF767CDFBE12741F9F5502ABAE7E95D79
            C1663FFE79A8B15752D4BAF7BC36F7183558549F47C4213330E484C43393932E
            1A1C3A9F4575348F43AF2CC70787D661FBDA1AB4D6C551150F0BC8F0E6EADA5D
            E69621BB78F9BE9CC912F02C6DFF87B697041EAD1EE8EA9F0C0621479CAEDCC8
            8E01C7B5D583C8CCE7C1601627CFF7E19B537770EBFE534C73D0A6AC567C3E1E
            B783B14392C7921787454125FEF1040BA9AC6309A9E7955FC40A80846B995C22
            1467C982FA6501F3C87C28801D96FF19F32F3B701CF3C122107841330EF3DF9B
            B72B043952C9F969E0E10C1CDBB5B4F35AF31ECB641E7BFAD4837221FA7C0A4A
            C7DAE19E67EC544EA5089CD3C21E2B2AAB108BC6904E2691181F97528BB2CA32
            6C5ED386F75F5F8537772FC7AA4648E5B983F99728661C947FE7B9489567CE21
            00D43EC82E01CFD2F6E76F7F4254CB55B2A1FCE2B283B0D245CE31F0142C1124
            9772042829CF7BFD199CBEF014DF5FBC8D3B3D83984979A2531CA95886487915
            018F83B9545AC4C1393A66712F5D2629D2D7BBA05D09DE3C12320F2BAC202359
            F0D28A3E193DC9E755581BAAE2292D1B0B4E0078E6838C276D814B8F5534CD3C
            FFDF5E91272DD0C287C1C6766D845CCE17527E27575757F03FE515CC3AE69769
            11A4B3AC658C3959914187C629128BA0A2AC9CF6E922313686B9894944A36558
            BFBE1B6F1ED88837F7D562E38A106A9D00061A555A28C0914A74152A0BF88DE7
            672EBF087816F2042D6D4BDB8BB63F01780A52292EC023150861098F732166DE
            B5A57249B532566A31D3647FDD7F9AC5856B83387DEE0EAEDCEEC3F8580A3631
            9F8AFA66386595B4301790636729476CA211399AC71218050D6E96A7FD1CA535
            48802F1EE677B5441168CC36CF52F2E6814F11788C5C684081C632BE179D67B4
            00F0C8BF3533990F3CFADFC65FE49F37B1154219069D5081C14745D918B0F3B6
            CE35B42D29765524AC0478841EE5B584695644C8A2F11862E110EC4C1AE97106
            9D0954C4E258B37A1D0EBFBA0187F7B461F30AA0260AE8E0BD72196B971D9354
            36B11CD9B7F2E5A9FCAA051CCB41E00944B59682E94BDB9FB3BD3CF0E8A24A55
            EAEDAAE88DA33B555A2169C59BA5575E2716F2A712F4B147431E4E5DE8C5B193
            3770E3661F319F024295CB10ADAA87178E49166F4EF251426A2567112D3E966D
            3D1FF9798EB278F327B857320D825FF58AC053B4D40CE3516D61E62BD07881D7
            7CE0F1FD4C56F03D0D52960122F7B97365E00913F0845984CC071E1B399BC1C7
            12F3D3955EE756C0C3ACBFEFA8482012D3D2AF2B541613732A4263951A1EC2DC
            E810CAE8339B37ACC7E183BB71785F2BD6765AA80D3F9F8563DC760678A4C7AA
            D4BB1504789E6FA4B730F0044728788B96C06769FBA9EDE580C7D5C0234DF6F4
            536B1E39011F96D954E093712D8978598EAAE69976B983421A27CF0FE2CC7932
            BB1E3CC6582227DA332C661EE216398E92292D987E5AF3E45003E0622D727EB2
            05FD2EA54E62F8FEA2E094B1E6014F58CCA06204CD709922A0A8BF1B1664E6A2
            061FC378ACE0749C3F2D391B3A4CE3139166A32A1FA9207DD31D617D6C7EBA8E
            CEFF1179107DC19238AC8138352BD9CE22AEC8F56BA9196427465041A3BEAEAB
            13475EDD89370EACC6A6CE302A227A185CADAF63CD677C269D481A4D17546E92
            1CD6F1212A10B1336C103E773477C87F98B0043C4BDBCB6D2F0F3CD296D82DAE
            C08605D9966E231C96C02F47AD98F978BA154896DE9E4A030F075CFC78B31F67
            2FDEC75532BB4627922844CA69E5AE85132D17E693F774C4CC0E52FD80CFE5B9
            C892F959BAEE1AE768F1774B3B4B8D4BD7D286871D603CCF038FFABEFCA78168
            1EF3B1E61FBFC88216031E4FCAC3C22EFF5489890C3C79066D7A15E82585A696
            AD9310F564B74DC26341CA2FAC2C8D5D6686D8CF38B19F19D4466D6C5EBD1CAF
            EEDE44E6D52A6C58598E9A888A5AE575395AD8D2ADEC5192370905219E0F3CC6
            57F7D3C053C247978067697BE9EDE5F278E4090E008FC9F495EE0786F5A84799
            4B2398F970870396F092F2259A4349B2D29E0CE770E1C638319FBBB87E97C067
            26430C89ABC2CB45348B0B3265D5E7FA24CB8888E97378FECCB120CB99F7EF92
            974EC82B8A6859AA9ECB3362E9253D8AAC2200F9AFE0F9F8BE90058E6FB9CFFD
            9D5957C8531219B6A732745C0D38059111094375D908369501FC02521A516139
            F904F2C931623B1358566161CBAA76BCBE67030EEEECC0DAF60A541BA693538C
            C4B78A2DE3E731898AFA12F43D56DA44F0830481C146206F6151E001E6E5372F
            6D4BDBA2DBCBC962B8BA479679CCE4E90A389D2DC384D403CA61769E44392E26
            F54C3903810F7DFDF10870E5F630CE5C7C88CB377BF1646812DC48D789562014
            A940CE0ACBBFF3AC2C28FEA3C552F34DB8D7FC6181A853507623083E815A7915
            D6560064997C216863CA3293CB2A46E783E502A5C7F64A8EEB0354312F87532F
            1D1D25E4444CD56A38AC40475E5A32D633C023B90522880637032F3B2B2D87C3
            5E02AD35516C5DD78EC3BB5661FF2BADE86E8DA352ECA63C99AE5A48CC52793F
            B636DBC487AC8FEF485338AB382E224CA672854A061B06788AD9504BC0B3B4FD
            F9DB4B028F610B81BC12BFBE49D72CF95D22345381EADFCDD12EAE9DCCEB49CC
            793ECFC842B87C7B8498CF7D5C22F079363A2BAD71AC509C80274AA013438E35
            934391404574207A154CD80B4EFEE0A59895BC2442554C88D4F21CAE0EDBCB47
            CCE4B234B309281B07C3C8FE2B106E9E9744E8C3953E7411002D96FFB054DD96
            BCE79A9E0EA1C04BC9295A028A5C659F577A4399049959B3A808E7D0DE18C7F6
            F51D38B86335766D6AC4CA661B15963A36EB47DB649639926C68F6A7D401B835
            B554C9D339D9D21ED77E7EFCE681FD7CE369097896B6BFC6F6D2D2A7BCB981C7
            CED60FB9144C08F8B8C5DC1355DA08338958B92F2B0AA3B6145472A6F3F07401
            B7EE4FE1DCE53E5CBEFE088FFB47303B9743D622D08954D1AB0285485C35A583
            358F40F8006707F49C25C151C789E504B57D212D56E183A6673E230E73B5F25B
            C13A2D3F333B18073209893EED29E6FCC83FEDE24B67161BF7AB2BBAB1AE6ACA
            E7998A789D26CC2C925159C8A446734B1D534A42E9DCC2B62B3A3999D909B8E9
            69345647B1B9BB1DDB377760E7A6266CECAA415B9D8DB865C4D95D61469695D3
            61713920CCBBE2A7D2893CAAE4AC3474EE3F1A25BFFF34F02CF97896B697DD5E
            0A78CC0316144A50D344FDB5A89D1CD45036E0E3887839B7D772759D976BA98A
            6ACE68EEED9BC1955B4F70EDE600EEF50C63703C89899C833996D3085728453F
            EEB4A07D48A280E81AF3470383367F82C96F45B348E702E9978740E4CCAFC4CE
            2B87883F6B4C75B95334AD3CBB083C5E80D96929D240E6E0BCC899DF23DB001E
            87B6FCE419558D2EB286D244ABA02BEB955AA1CDF93AB994D4B145ED3C5AEA2A
            B061753B766F2396B3854CAB8E10EA62C576C392D96CBAA059A647B8019E52F3
            C95BE477FFD128F9DD004F31996A097896B63F777BB92E1328F683902F617E9A
            89ED838FF6F9CCAB6DB24492C21500B208809458BA1DB6C4875AC879E264BEFB
            7016172E0FE0D2ED5EDC7D3A8191948D392F2ABA362C4B1AE2024827A224353C
            258FEA8A09A8BB853A0EED332C8C4A267BBE204A86A6B5CBBCC2475B33132ECF
            601954D734CA3345A2DAFC99C77A02D930BC2BD6F9715412A557708BBDE20BAE
            0F1EFEF51BF00ACA6F70857E94AE29AC44E6B9858FC792AB59021A32AB426E16
            6102433B9B44948064EDCA56ECDBB1091BD7AC40676B25BADA43A82F2F828E38
            AB390F47D237F32520AA59E34237D78C89FC3BF099791F9F0F290BB9D317FAE4
            D2B6B42DB6BD34F09897F9B0FDDCCBD559C6458909B790A3575EC4BF6CF6D9B8
            8E061E65028522AABB017F639CD8CFFD47B3B8FE60183FDC1AC2B59E090C4CA6
            25BB39CB1135028170344E0448B5BE71B5F096921B75C411ADD890611A96C691
            803359888AA52BEC2DF99D8187A552197CC49814861290D198D7573310E636FB
            97DD17FD242A3F261031D2269940915868B6666B9684C9B93ECD09B1BC590E5E
            7A06D9D931B8B3A34488D268A888A2A3B18640A61E7BB612CBA1573BA14D190D
            41555C6523ABC37AD29CD0EF5BA6AFD597EFF0CF63B1CD806480152D0A3CF363
            89CF3D500B7D7D695BDA4AB697069EBC7E1923CA5EE8A5BCA5EA1B16B7F3CDC0
            CD6644B347E42EB4209708C0F34FA35AA1F79BCAB2EF07B8FA700AE76F0FE1CE
            93293C1D99C1D0B351CC2612329D19784291B8B00D965B773D65128954078BB1
            8B38B22579449EF10369B0911C15ED38F57401A4C592ABBA1F39FB3E8AC06346
            C0008F361D2DFD626CD56A89D03DCA3DDB9628916404A368FE300362762690CC
            0E73321FC5D7C455F9ACC268736BE12C9C023B8FA711CACFA0B13A8CB59DF5D8
            B96935B6AFEFC2FAAE2632B5C22833E517264FC937E33C75AEBE4EB27F878B8C
            66D1CD8095BDC8FB0B73989F32D096B6A56DB1ED4F061EB395028EFFB81BF0B1
            540B19EE7CA922392631CF91488B48988AF9A5BE12D2EE14223E184B00BD9373
            B8FB38831BF76670EBCE433C7EDC87E9D959623FECA48E88D9057ED95109478B
            B9A545E51938F212B83639C5453FD0FC888D3A4FDB561D277C7F4CB0FAD10B32
            1EEDDBF1548F2B15AAB6FCFC2015185266A7AD85BD54E33FE55F123EC2A0C3E0
            C35F63D9D3CC2C0110EB37CF211E2DA0B52E8A556D75D8D2DD82CDEB9AB09EC0
            67F9B26AD4C61D44E5203A82E819D30EC2EEA4ED0D8F83F139F977D8BC021138
            1FEACD9B01C653DA1F2BB89FA56D69FB2B6D2F053C3A768542F08B08783F9E03
            1EC017BBD2C96FD0215C15650AC924E1C67D05EE7DE5E9E4364BDCA2C28424EC
            4E84E0D1E3027AFA06E8E700FA9E4CE0E9D024C62767309BCC20EB7A92746891
            19E78463D21194C59B05D0B8F2DBB37CD5420BB66F7A9840B7A79DCD96ADEAAD
            BC797941EA84BCA08A21027E6961378E62520C36AE7AF17572B74F4BFB7A78D4
            D8B872B4E9C3FF6277508E7D4FC4766C378B8A888BBAEA0856B4556043573DB6
            AC699516342B5A2BB08CB035264757FE1BCB004F4147CBA4434688AE41775F85
            3DDF160AD67BF977AE1499826901C19CA425E059DAFECF6C2F1DD50ACA7FCB17
            317F313500347F5369FEB082869AF9B68A1C31F8787A52F384E4AEBDAEAED964
            376996FE2F95C963782A8B87BD09DCBD3F889E478FF1E4E930C6A7E790481508
            806CD53C509CBD11C97CF67406B0C58DF2A4836848E9268B8F4539A60B9EE767
            EB4217B7169B03171992FCDBF89D3D1D3163A0D1499562C959A6014C418BBB7B
            927FC32064804789DC7BC4F2140847A3369655C7D0D9B60C6BBA086CBA9BB0AA
            A31CED0D51D4C4C8AC72941F475AE308E8E494135FD201EC40085E271F9A4CCD
            60CA9289D0FF873D51FF81C75ADAFE9FDD5E82F128CE333F1757F756F230AF6A
            C00EE20A7F8B56E402F76AB25DE92261F6A89CB8104662FC26D2ACCFB5B80594
            4844B093C41839FC0D324A304656C9F06802CF46C730383C85FEC1241E110BEA
            ED1FA5BF4D622E9D97224BCEFD7175D5BC6587695EB2D67358C0C71650A2E9EB
            2AF01127B408B96B9F90011ECB0A80903E6FCF008FA7004547AFA487BB789C0A
            52C1CFA2F59E54F2E704846CED93E1CF8509A5CACBA368AAAFC7CA15CDE8EEAA
            45D7F26AB4362E437343196A2B200DF64C009CB594DD5C060E99839190C94972
            D5BB46CA23902418643BC66AFCAB014FC9FD7DE1DF970068697BC1F612C053E4
            3BCA3D6A7A2C8574662D7CE0095A29FC2A700F706E35C36C408047995F96A5FC
            2E32F119C0A4BF774481027F82DBDCF83BB4A54A4942E8508B3C73A724D96283
            2339DCEF1DC3AD7B7DE8E91DC4B3B10412690FA91CBF5C7AE591C91644985E45
            DE957954041935692D693C18F1DB2D9B549DE21CB6941CA94996B6941FC7F2CC
            4FD5888F13FD58AFC8E2303831BD0861413CEAA02C164559248C78C4226009A3
            BDB9066B5676605DF70AAC5E59856555CA19AD6E882AE83439CC8502B76C4E09
            684522E16289839FD458DA72A618575A3011F92FD996806769FB2B6D2F579D2E
            468FCA0FF1FB9073874EA8DEE00B85373C9D2DECEAFF98F9300891A18170C896
            9E59961F78D6E0C36026D9C539E9852E2D5FB8EADD44C2ACA21403436092FE6F
            3251C0D84C42AADDFB0652E81FCA6262268349FADBC8C414C626A731359B4432
            95A6E3ABB630D2A79CD98FC315F52C2E1FA57D4655F33ECF80AD5C058AF56996
            1F3492FE7F0436AE7401CD2AA0E16EA1F4376EC81723E4A8288BA2B6BA0C8DF5
            35686A5886C6BA1AD49159D55A1742676314ADB595A8A92A47A54E000402E90A
            019F99B4C5719577CDD699DA960F3CF029A717385FD36658955DA098DDFD976C
            DE0BDE08028F9FB7F0577D4E97B6FF8F6D7F02F064F44F033CCAFBA07C0DCF7F
            CBA48D48A74B061E323D7206781C0B21272CBDA2A0DBE29A555B92E9E873D22C
            4FCC84903629425A3A838C1A76FA1AA950FD4D764A0FCF320B720968B2989C65
            E0992116348DF1A92426A7D348CCE53097CA100BCA4A6E109B75DCF922970913
            2885E91CD9F14B6728CDF74C4E8C52CCE29A26870033C4A9016C06DA2A4B38EC
            7888456C62352154D0ABAADC414D6598402786FA65E568A8AF46735D2DEA6BAB
            89EDD868A8041AC2CA61CC50A3605939B2CD7FD2CBCB9B1FC49EE7020E628E1F
            8063B80CC6F16C6D1007921EFF92ED85C013A0BB2F12825FDA9636BDFDC98C47
            6D3A0D9F7B5F05A524FE777B57DBA3200C833B26CA7C8BE7FDFFFF78820A97E3
            E5BAAE65738ED30F7CBAD0844866061986C7EE699F360A965047603ECF687BE5
            D210893989449742303B32B6E50CDCDE4B1488F4593B3537D5B1794C6A1CE111
            077077050D6EF36EDF3D94E81655B71E2E573CCA0E3DA112BE2E1728AB0AAA6B
            0DF77B07758D77FB51D4699480073DA3D6468C6CE33EAAC887406941870FAD6D
            1FB00C762627CFE6B837E8BDECE1F36307E7D306CE470D874386DF65600A0D66
            A5A1B0733207388656C3D2064E761C06AF4857BC7D0AB5B992CB18824EDC57AF
            2720E3A817418E622F7206E049FDC6E340629FBD00CF627FD89BC023AF7898E1
            AA5DE829EC25353CCF9419BEC48BD4297E4E36A1FF691B8A56411C6D909C122E
            B3CA246A18690BD561A13E9CDABD007539A64EA60D3A6DF77AC06D578D605343
            83030DA2941D6FB9AA2B45A93BCB4DB1989285949A3A1D5BAFC72508E6E4E5E4
            B0DDE4506CD6604C01BBED0A0FCBEB8CFE204B331F65268E6C6E39340E2E6C0F
            99071E791E920A242471B0C018745C368EF0706E82922000CC18D6EA13636182
            E26C84D262FFD9DEEC241AAB734262F3C56C155F2B75EEAFE99540A9E0BD3F8F
            5998F86A535AA2F8CE04509CFC2B09C09D90D1A160DD05BF4641BCFDCC153CBD
            D26AE23304463DAE60AAA8C4C4234ADDE8615DA9550BDF3393BDF29C16DC59EC
            0DFB057057A83975CBDCF60000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 52.157494960000000000
        Top = 272.126160000000000000
        Width = 980.410082000000000000
        OnBeforePrint = 'MasterData3OnBeforePrint'
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 200.314955750000000000
          Width = 56.692901180000000000
          Height = 52.157494960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 257.007869130000000000
          Width = 302.362204720000000000
          Height = 52.157494960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."Material"]  '
            
              '[frxDBRequisicion."Complemento"]: [frxDBRequisicion."LoteColada"' +
              ']')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          Width = 86.929165590000000000
          Height = 52.153493530000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."NumeroMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 86.929138740000000000
          Width = 52.913395590000000000
          Height = 52.153493530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."ItemMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 139.842519690000000000
          Width = 60.472455590000000000
          Height = 52.153493530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 559.370440000000000000
          Width = 75.590551180000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."CodigoOC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 634.960991180000000000
          Width = 71.811023620000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."NumeroFactura"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 706.772014800000000000
          Width = 75.590551180000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Certificados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 782.363096760000000000
          Width = 70.901343930000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Parametros"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 853.174146140000000000
          Width = 63.342304550000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sStatus"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 916.205686140000000000
          Width = 63.342304550000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."FechaLiberacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.961124850000000000
        Top = 196.535560000000000000
        Width = 980.410082000000000000
        Condition = 'frxDBRequisicion."IdInspeccion"'
        ReprintOnNewPage = True
        object Memo45: TfrxMemoView
          Width = 86.929165590000000000
          Height = 52.913385826771700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'No. de Trazabilidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 200.314955750000000000
          Width = 56.692901180000000000
          Height = 52.913385826771700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'U. Med.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 257.007869130000000000
          Width = 302.344500700000000000
          Height = 52.913385826771700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Material Inspeccionado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 86.929138740000000000
          Width = 52.913395590000000000
          Height = 52.913385826771700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Partida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 139.842519690000000000
          Width = 60.472455590000000000
          Height = 52.913385826771700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Cant. Insp.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 559.370440000000000000
          Width = 222.992125980000000000
          Height = 22.648601840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 559.370073860000000000
          Top = 22.677180000000000000
          Width = 75.590551180000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'O. de C.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 634.960625040000000000
          Top = 22.677180000000000000
          Width = 71.811023620000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Factura (s).')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 706.771648660000000000
          Top = 22.677180000000000000
          Width = 75.590551180000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Cert. (s). Calidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 782.362710000000000000
          Width = 70.901343933317300000
          Height = 52.913385826771700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'param. Insp.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 853.173780000000000000
          Width = 63.342304550000000000
          Height = 52.913385826771700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Result.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 916.205320000000000000
          Width = 63.342304550000000000
          Height = 52.913385826771700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha Liberacion')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 56.692937800000000000
        Top = 385.512060000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo53: TfrxMemoView
          ShiftMode = smDontShift
          Left = 139.842519690000000000
          Width = 419.527559060000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."Observaciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          ShiftMode = smDontShift
          Width = 139.842519690000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 559.370073860000000000
          Width = 420.283464570000000000
          Height = 18.897637795275600000
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Se inspecciona al 100% este material')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Top = 18.897650000000000000
          Width = 559.370073860000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 559.370073860000000000
          Top = 18.897650000000000000
          Width = 420.283464570000000000
          Height = 18.897637800000000000
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'D/N (Que cumple dimensional y visualmente con lo requisitado)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Top = 37.795300000000100000
          Width = 979.653543310000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            ' Proveedor: [frxDBRequisicion."Proveedor"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object OpenXLS: TOpenDialog
    DefaultExt = 'XLS'
    Filter = 'Archivo de Microsoft Excel|*.XLS'
    Left = 688
    Top = 42
  end
  object styleGrid: TcxStyleRepository
    Left = 780
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
  object Qordenes_trabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 717
    Top = 175
  end
  object ds_ordenes_trabajo: TDataSource
    AutoEdit = False
    DataSet = Qordenes_trabajo
    Left = 717
    Top = 231
  end
  object zGrafica: TUniQuery
    Connection = connection.Uconnection
    Left = 442
    Top = 172
  end
  object dsGrafica: TDataSource
    DataSet = zGrafica
    Left = 442
    Top = 220
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 628
    Top = 181
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
    Left = 728
    Top = 48
  end
  object zInspeccionMaterial: TUniQuery
    Left = 357
    Top = 183
  end
  object dsInspeccionMaterial: TDataSource
    DataSet = zInspeccionMaterial
    Left = 261
    Top = 183
  end
  object zInspeccionDetalle: TUniQuery
    Left = 116
    Top = 254
  end
  object dsInspeccionDetalle: TDataSource
    DataSet = zInspeccionDetalle
    Left = 116
    Top = 302
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 272
    Top = 80
  end
  object insumos: TUniQuery
    CachedUpdates = True
    Left = 189
    Top = 255
  end
  object ds_insumos: TDataSource
    DataSet = insumos
    Left = 181
    Top = 303
  end
  object zppedido: TUniQuery
    Connection = connection.Uconnection
    Left = 530
    Top = 180
  end
  object ds_ppedido: TDataSource
    DataSet = zppedido
    Left = 546
    Top = 244
  end
  object ds_proveedores: TDataSource
    AutoEdit = False
    DataSet = Proveedores
    Left = 370
    Top = 430
  end
  object Proveedores: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select RazonSocial as sRazon, IdProveedor as sIdProveedor, Nombr' +
        'e as sVendedor, '#39#39' as sEmail '
      'from master_proveedores '
      'Order by sRazon             ')
    Left = 604
    Top = 344
  end
  object zRequisicion: TUniQuery
    Connection = connection.Uconnection
    Left = 700
    Top = 408
  end
  object dsRequisicion: TDataSource
    DataSet = zRequisicion
    Left = 739
    Top = 377
  end
  object anexo_ppedido: TUniQuery
    Connection = connection.Uconnection
    Left = 810
    Top = 322
  end
  object ds_anexo_ppedido: TDataSource
    Left = 881
    Top = 329
  end
  object anexo_preq: TUniQuery
    Connection = connection.Uconnection
    Left = 938
    Top = 282
  end
  object ds_anexo_preq: TDataSource
    DataSet = anexo_preq
    Left = 746
    Top = 330
  end
end
