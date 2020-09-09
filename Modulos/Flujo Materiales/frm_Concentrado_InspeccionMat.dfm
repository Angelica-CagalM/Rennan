object FrmConcentrado_InspeccionMat: TFrmConcentrado_InspeccionMat
  Left = 0
  Top = 0
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  BorderStyle = bsSingle
  Caption = 'Concentrado de RIMS'
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
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          Enabled = False
          OnClick = btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          Enabled = False
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
      Caption = 'Concentrado de Reportes Inspecci'#243'n'
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
      Left = 236
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
      Left = 313
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
      Width = 695
      Height = 517
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 344
        Width = 693
        Height = 172
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
          Top = 135
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
          Height = 134
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
          ClientRectBottom = 132
          ClientRectLeft = 2
          ClientRectRight = 689
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
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
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 336
        Width = 693
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_requsicion: TcxGrid
        Left = 1
        Top = 1
        Width = 693
        Height = 335
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
          object col_Reporte: TcxGridDBColumn
            Caption = 'No. Reporte'
            DataBinding.FieldName = 'Codigo'
            Width = 68
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
            DataBinding.FieldName = 'dCantidad'
            Width = 48
          end
          object col_Unidad: TcxGridDBColumn
            Caption = 'Unidad'
            DataBinding.FieldName = 'Medida'
            Width = 48
          end
          object col_Descripcion: TcxGridDBColumn
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'MaterialColada'
            Width = 196
          end
          object col_OC: TcxGridDBColumn
            Caption = 'O.C.'
            DataBinding.FieldName = 'CodigoOC'
            Width = 49
          end
          object col_Factura: TcxGridDBColumn
            Caption = 'Factura'
            DataBinding.FieldName = 'NumeroFactura'
            Width = 47
          end
          object col_Certificado: TcxGridDBColumn
            Caption = 'Certificado'
            DataBinding.FieldName = 'Certificados'
            Width = 32
          end
          object col_Parametro: TcxGridDBColumn
            Caption = 'Param. Insp.'
            DataBinding.FieldName = 'Parametros'
            Width = 57
          end
          object col_Resultado: TcxGridDBColumn
            Caption = 'Resultado'
            DataBinding.FieldName = 'sStatus'
            Width = 30
          end
          object col_Fecha: TcxGridDBColumn
            Caption = 'F. Liberacion'
            DataBinding.FieldName = 'FechaLiberacion'
            Options.Editing = False
            Width = 64
          end
          object col_Estado: TcxGridDBColumn
            DataBinding.FieldName = 'Estado'
            Width = 38
          end
          object col_Proveedor: TcxGridDBColumn
            DataBinding.FieldName = 'Proveedor'
            Width = 61
          end
          object col_estatus: TcxGridDBColumn
            DataBinding.FieldName = 'sStatus'
            Width = 29
          end
          object col_Notas: TcxGridDBColumn
            DataBinding.FieldName = 'Observaciones'
            Width = 74
          end
          object cxView_RequsicionColumn1: TcxGridDBColumn
            Caption = 'Planta'
            DataBinding.FieldName = 'NombrePlanta'
            Width = 50
          end
          object col_Requisicion: TcxGridDBColumn
            Caption = 'MR'
            DataBinding.FieldName = 'sNumFolio'
            Width = 49
          end
          object cxView_RequsicionColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Complemento'
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
            Caption = 'Documentos'
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
          object tabInformes: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 189
              Width = 445
              Height = 157
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 443
                Height = 155
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
              Width = 445
              Height = 12
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 445
              Height = 177
              Align = alTop
              TabOrder = 2
              object dxLayoutControl3: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 437
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
                  Left = 282
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
              DataBinding.DataField = 'DireccionRed'
              DataBinding.DataSource = dsInspeccionMaterial
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
    Left = 113
    Top = 240
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
      OnClick = Imprimir1Click
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
    Left = 120
    Top = 193
  end
  object frxDBRequisicion: TfrxDBDataset
    UserName = 'frxDBRequisicion'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 200
    Top = 253
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
    ReportOptions.LastChange = 43558.695293703710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo6OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 72
    Top = 197
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
      Orientation = poLandscape
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 3
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.354323390000000000
        Top = 374.173470000000000000
        Width = 1556.410454000000000000
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Top = 7.559059999999476000
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
          Left = 1364.410330000000000000
          Top = 7.559059999999988000
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
            'seabed-to-surface')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 129.252010000000000000
        Top = 18.897650000000000000
        Width = 1556.410454000000000000
        object Picture2: TfrxPictureView
          Left = 1360.674578200000000000
          Top = 3.779530000000001000
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
        object Memo11: TfrxMemoView
          Top = 3.779530000000001000
          Width = 264.566929133858000000
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
          Top = 15.118120000000000000
          Width = 1548.095274170000000000
          Height = 19.945599750000000000
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
          Top = 35.802455550000000000
          Width = 1548.095274170000000000
          Height = 19.945599750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Concentrado de Reportes de Inspeccion de Materiales (RIMs)')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 1427.527927640000000000
          Top = 71.810991890000000000
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
          Left = 1360.630800000000000000
          Top = 71.810991890000000000
          Width = 67.275590550000000000
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
          Left = 633.826627640000000000
          Top = 71.810974800000000000
          Width = 370.393861890000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Del [Fecha_I] al [Fecha_F]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = 'mm/dd/yyyy'
              Kind = fkDateTime
            end
            item
            end>
        end
        object Memo24: TfrxMemoView
          Left = 566.929500000000000000
          Top = 71.810974800000000000
          Width = 67.275590550000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Periodo:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 52.157494960000000000
        Top = 260.787570000000000000
        Width = 1556.410454000000000000
        DataSet = frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 294.803205750000000000
          Width = 52.913371180000000000
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
          Left = 347.716589130000000000
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
            '[frxDBRequisicion."Material"] [frxDBRequisicion."LoteColada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 86.929190000000000000
          Width = 79.370105590000000000
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
            '[frxDBRequisicion."NumeroMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 234.330769690000000000
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
          Left = 650.079218984896000000
          Width = 71.810962195104400000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
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
          Left = 721.890238990000000000
          Width = 64.251905810000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
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
          Left = 786.142126493077000000
          Width = 71.811039486923100000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
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
          Left = 857.954006003421100000
          Width = 127.593984686579000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
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
          Left = 985.457783530000000000
          Width = 78.460337160000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
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
          Left = 1063.607330680000000000
          Width = 101.137630010000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
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
        object Memo20: TfrxMemoView
          Width = 86.929165590000000000
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
            '[frxDBRequisicion."NumReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 166.299320000000000000
          Width = 68.031515590000000000
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
            '[frxDBRequisicion."NumeroMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 1164.095606140000000000
          Width = 74.680894550000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Estado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 1238.906787319470000000
          Width = 97.357963370534200000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            ' Proveedor: [frxDBRequisicion."Proveedor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 1335.953986140000000000
          Width = 74.680894550000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
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
        object Memo51: TfrxMemoView
          Left = 1410.765389679950000000
          Width = 142.712101010048000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Observaciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.283944850000000000
        Top = 207.874150000000000000
        Width = 1556.410454000000000000
        Condition = 'frxDBRequisicion."sContrato"'
        object Memo45: TfrxMemoView
          Left = 86.929190000000000000
          Width = 79.370105590000000000
          Height = 30.283944850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'No. DE TRAZABILIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 294.803205750000000000
          Width = 52.913371180000000000
          Height = 30.154382290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 347.716589130000000000
          Width = 302.344500700000000000
          Height = 30.252105370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 234.330769690000000000
          Width = 60.472455590000000000
          Height = 30.283944850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 650.078793860000000000
          Width = 71.810962195104400000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'O.C.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 721.889815040000000000
          Width = 64.251905810000000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 786.141778660000000000
          Width = 71.811039486923100000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'CERTIFICADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 857.953310000000000000
          Width = 127.593984686579000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'PARAMETRO INSPECCI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 985.457330000000000000
          Width = 78.460337160000000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'RESULTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 1063.606990000000000000
          Width = 101.137630012280000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA LIBERACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Width = 86.929165590000000000
          Height = 30.283944850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'No. DE REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 166.299320000000000000
          Width = 68.031515590000000000
          Height = 30.283944850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'PARTIDA OC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 1164.095240000000000000
          Width = 74.680894550000000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 1238.906310000000000000
          Width = 97.357963370534200000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'PROVEEDOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 1335.953620000000000000
          Width = 74.680894550000000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 1410.764690000000000000
          Width = 142.712101010048000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
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
    Left = 752
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
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 280
    Top = 256
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 795
    Top = 344
  end
  object zRuta: TUniQuery
    Left = 568
    Top = 248
  end
  object dsRuta: TDataSource
    DataSet = zRuta
    Left = 488
    Top = 264
  end
end
