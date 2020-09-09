object frmVisualizaComprobanteFD: TfrmVisualizaComprobanteFD
  Left = 255
  Top = 73
  BorderIcons = [biSystemMenu]
  Caption = 'Comprobante Fiscal Digital'
  ClientHeight = 471
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 882
    Height = 436
    Align = alClient
    TabOrder = 0
    object PanelDatos: TPanel
      Left = 1
      Top = 1
      Width = 880
      Height = 434
      Align = alClient
      TabOrder = 0
      object cxPageControl1: TcxPageControl
        Left = 1
        Top = 1
        Width = 878
        Height = 432
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabHistorial
        Properties.CustomButtons.Buttons = <>
        OnChange = cxPageControl1Change
        ClientRectBottom = 430
        ClientRectLeft = 2
        ClientRectRight = 876
        ClientRectTop = 30
        object cxTabDatosCFDI: TcxTabSheet
          Caption = 'Datos del CFDI'
          ImageIndex = 0
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 874
            Height = 81
            Align = alTop
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxRFC: TcxTextEdit
              Left = 238
              Top = 11
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 121
            end
            object cxRazonSocial: TcxTextEdit
              Left = 446
              Top = 11
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
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
            object cxCFDI: TcxTextEdit
              Left = 75
              Top = 11
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 121
            end
            object dFecha: TcxDateEdit
              Left = 446
              Top = 40
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
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
            object cxFolio: TcxTextEdit
              Left = 238
              Top = 40
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 121
            end
            object cxSerie: TcxTextEdit
              Left = 75
              Top = 40
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = True
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 121
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'RFC:'
              Control = cxRFC
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Raz'#243'n Social:'
              Control = cxRazonSocial
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Tipo CFDI:'
              Control = cxCFDI
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Fecha:'
              Control = dFecha
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Folio:'
              Control = cxFolio
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahLeft
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Serie:'
              Control = cxSerie
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
          object dxLayoutControl4: TdxLayoutControl
            Left = 0
            Top = 264
            Width = 874
            Height = 136
            Align = alBottom
            TabOrder = 1
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxUUID: TcxMemo
              Left = 92
              Top = 69
              Lines.Strings = (
                'cxUUID')
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 2
              Height = 35
              Width = 400
            end
            object cxFormaPago: TcxTextEdit
              Left = 92
              Top = 11
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 325
            end
            object cxSubtotal: TcxCurrencyEdit
              Left = 532
              Top = 40
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 110
            end
            object cxDescuentos: TcxCurrencyEdit
              Left = 532
              Top = 69
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 149
            end
            object cxTraslados: TcxCurrencyEdit
              Left = 532
              Top = 98
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 118
            end
            object cxRetenciones: TcxCurrencyEdit
              Left = 751
              Top = 11
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 118
            end
            object cxTotal: TcxCurrencyEdit
              Left = 751
              Top = 69
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 9
              Width = 118
            end
            object cxTotalCambio: TcxCurrencyEdit
              Left = 751
              Top = 98
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 10
              Width = 118
            end
            object cxUso: TcxTextEdit
              Left = 532
              Top = 11
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 121
            end
            object cxMetodoPago: TcxTextEdit
              Left = 92
              Top = 40
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 129
            end
            object cxTipoCambio: TcxCurrencyEdit
              Left = 751
              Top = 40
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 6
              Properties.DisplayFormat = ',0.000000;-,0.000000'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 8
              Width = 131
            end
            object dxLayoutControl4Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl4Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl4Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl4Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'UUID:'
              Control = cxUUID
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Forma Pago:'
              Control = cxFormaPago
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Subtotal:'
              Control = cxSubtotal
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Descuentos:'
              Control = cxDescuentos
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Traslados:'
              Control = cxTraslados
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Retenciones:'
              Control = cxRetenciones
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Total:'
              Control = cxTotal
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Total Cambio:'
              Control = cxTotalCambio
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem27: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Uso CFDI:'
              Control = cxUso
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Metodo Pago:'
              Control = cxMetodoPago
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahClient
              CaptionOptions.Text = 'Tipo Cambio:'
              Control = cxTipoCambio
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
          object cxGridComprobante: TcxGrid
            Left = 0
            Top = 81
            Width = 874
            Height = 183
            Align = alClient
            TabOrder = 2
            object view_VisualizaCFD: TcxGridDBTableView
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
              DataController.DataSource = dsConceptos
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.AutoDataSetFilter = True
              DataController.Filter.TranslateBetween = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
              FilterRow.Visible = True
              FilterRow.ApplyChanges = fracImmediately
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Indicator = True
              object view_VisualizaCFDColumn1: TcxGridDBColumn
                Caption = 'Cant'
                DataBinding.FieldName = 'Cantidad'
                Width = 77
              end
              object view_VisualizaCFDColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'Unidad'
                Width = 208
              end
              object view_VisualizaCFDColumn3: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 210
              end
              object view_VisualizaCFDColumn4: TcxGridDBColumn
                Caption = 'Precio Unit'
                DataBinding.FieldName = 'PrecioUnit'
                Width = 228
              end
              object view_VisualizaCFDColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'Importe'
                Width = 191
              end
            end
            object cxGridComprobanteLevel1: TcxGridLevel
              GridView = view_VisualizaCFD
            end
          end
        end
        object cxTabDescuento: TcxTabSheet
          Caption = 'Descuentos y/o Devoluciones'
          ImageIndex = 1
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 874
            Height = 400
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxDBCurrencyEdit10: TcxDBCurrencyEdit
              Left = 203
              Top = 36
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 206
            end
            object cxDBCurrencyEdit11: TcxDBCurrencyEdit
              Left = 203
              Top = 65
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 121
            end
            object cxDBCurrencyEdit12: TcxDBCurrencyEdit
              Left = 203
              Top = 123
              ParentFont = False
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
            object cxDBCurrencyEdit9: TcxDBCurrencyEdit
              Left = 203
              Top = 94
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 121
            end
            object cxDBCurrencyEdit13: TcxDBCurrencyEdit
              Left = 203
              Top = 152
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
            object cxCheckBox1: TcxCheckBox
              Left = 11
              Top = 11
              Caption = 'C'#225'lculo Autom'#225'tico'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
            end
            object dxLayoutGroup1: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'Monto a Devolver '
              Control = cxDBCurrencyEdit10
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = '% de Tasa de Descuento'
              Control = cxDBCurrencyEdit11
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'Total Descuento y/o Devoluciones'
              Control = cxDBCurrencyEdit12
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'Monto del Descuento'
              Control = cxDBCurrencyEdit9
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'Neto a Pagar'
              Control = cxDBCurrencyEdit13
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'C'#225'lculo Automatico'
              CaptionOptions.Visible = False
              Control = cxCheckBox1
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabHistorial: TcxTabSheet
          Caption = 'Historial de Pagos'
          ImageIndex = 2
          object cxGridHistorial: TcxGrid
            Left = 0
            Top = 49
            Width = 874
            Height = 263
            Align = alClient
            TabOrder = 0
            object cxView_Historial: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Visible = True
              Navigator.Buttons.PriorPage.Visible = True
              Navigator.Buttons.Prior.Visible = True
              Navigator.Buttons.Next.Visible = True
              Navigator.Buttons.NextPage.Visible = True
              Navigator.Buttons.Last.Visible = True
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Visible = True
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Visible = True
              Navigator.Buttons.Cancel.Visible = True
              Navigator.Buttons.Refresh.Visible = True
              Navigator.Buttons.SaveBookmark.Visible = True
              Navigator.Buttons.GotoBookmark.Visible = True
              Navigator.Buttons.Filter.Visible = True
              DataController.DataSource = dsHistorial
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'Monto'
                  Column = cxView_HistorialColumn5
                  DisplayText = 'Total Abonos:'
                end>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxView_HistorialColumn1: TcxGridDBColumn
                Caption = 'Fecha Pago'
                DataBinding.FieldName = 'FechaPago'
                Width = 120
              end
              object cxView_HistorialColumn3: TcxGridDBColumn
                Caption = 'Forma Pago'
                DataBinding.FieldName = 'FormaPago'
                Width = 120
              end
              object cxView_HistorialColumn5: TcxGridDBColumn
                Caption = 'Cantidad Abonada'
                DataBinding.FieldName = 'MontoComp'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.00;-,0.00'
                Width = 120
              end
              object cxView_HistorialColumn6: TcxGridDBColumn
                DataBinding.FieldName = 'Sucursal'
              end
              object cxView_HistorialColumn4: TcxGridDBColumn
                Caption = 'Cuenta'
                DataBinding.FieldName = 'CuentaBanco'
                Width = 120
              end
              object cxView_HistorialColumn7: TcxGridDBColumn
                DataBinding.FieldName = 'CLABE'
              end
              object cxView_HistorialColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'Referencia'
                Width = 120
              end
            end
            object cxGridHistorialLevel1: TcxGridLevel
              GridView = cxView_Historial
            end
          end
          object dxLayoutControl3: TdxLayoutControl
            Left = 0
            Top = 312
            Width = 874
            Height = 88
            Align = alBottom
            TabOrder = 1
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxTotalAbonos: TcxCurrencyEdit
              Left = 113
              Top = 11
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 195
            end
            object cxSaldoFinalCFDI: TcxCurrencyEdit
              Left = 113
              Top = 40
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 195
            end
            object dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem35: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Total Abonos:'
              Control = cxTotalAbonos
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Saldo Final CFDI:'
              Control = cxSaldoFinalCFDI
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
          object dxLayoutControl6: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 874
            Height = 49
            Align = alTop
            TabOrder = 2
            Visible = False
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxCFDITotal: TcxCurrencyEdit
              Left = 78
              Top = 11
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Properties.ReadOnly = True
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 195
            end
            object dxLayoutGroup3: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CFDI Total:'
              Control = cxCFDITotal
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabNotasCredito: TcxTabSheet
          Caption = 'Notas de Cr'#233'dito/D'#233'bito'
          ImageIndex = 3
          object cxGrid_Notas: TcxGrid
            Left = 0
            Top = 0
            Width = 874
            Height = 400
            Align = alClient
            TabOrder = 0
            object gridView_NotasCredito: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsNotaCredito
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object gridView_NotasCreditoFolio: TcxGridDBColumn
                DataBinding.FieldName = 'Folio'
              end
              object gridView_NotasCreditoSerie: TcxGridDBColumn
                DataBinding.FieldName = 'Serie'
              end
              object gridView_NotasCreditoColumn2: TcxGridDBColumn
                Caption = 'Tipo Comprobante'
                DataBinding.FieldName = 'TipoComprobante'
              end
              object gridView_NotasCreditoColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'TipoRelacion'
              end
              object gridView_NotasCreditoColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'Total'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '$,0.00;-$,0.00'
              end
              object gridView_NotasCreditoColumn4: TcxGridDBColumn
                Caption = 'Tipo de Cambio'
                DataBinding.FieldName = 'TipoCambio'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = ',0.00;-,0.00'
              end
              object gridView_NotasCreditoColumn5: TcxGridDBColumn
                Caption = 'Total Cambio'
                DataBinding.FieldName = 'TotalCambio'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = ',0.00;-,0.00'
              end
            end
            object cxGrid_NotasLevel1: TcxGridLevel
              GridView = gridView_NotasCredito
            end
          end
        end
        object cxCFDIRelacionados: TcxTabSheet
          Caption = 'CFDI Relacionados'
          ImageIndex = 4
          object cxGrid_Relacionados: TcxGrid
            Left = 0
            Top = 0
            Width = 874
            Height = 400
            Align = alClient
            TabOrder = 0
            object girdView_Relacionados: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsRelacionado
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object girdView_RelacionadosFecha: TcxGridDBColumn
                Caption = 'Fecha'
                DataBinding.FieldName = 'FechaFactura'
                Width = 40
              end
              object girdView_RelacionadosSerie: TcxGridDBColumn
                DataBinding.FieldName = 'Serie'
                Width = 30
              end
              object girdView_RelacionadosFolio: TcxGridDBColumn
                DataBinding.FieldName = 'Folio'
                Width = 30
              end
              object girdView_RelacionadosRFC: TcxGridDBColumn
                Caption = 'RFC'
                DataBinding.FieldName = 'RFC_Emisor'
                Width = 60
              end
              object girdView_RelacionadosMoneda: TcxGridDBColumn
                DataBinding.FieldName = 'Moneda'
                Width = 30
              end
              object girdView_RelacionadosTipoCambio: TcxGridDBColumn
                Caption = 'Tipo Cambio'
                DataBinding.FieldName = 'TipoCambio'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = ',0.0000;-,0.0000'
                Properties.EditFormat = ',0.0000;-,0.0000'
                Width = 35
              end
              object girdView_RelacionadosTotal: TcxGridDBColumn
                DataBinding.FieldName = 'Total'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '$,0.00;-$,0.00'
                Width = 40
              end
              object girdView_RelacionadosConversion: TcxGridDBColumn
                Caption = 'Total MXN'
                DataBinding.FieldName = 'Conversion'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '$,0.00;-$,0.00'
                Properties.EditFormat = '$,0.00;-$,0.00'
                Width = 40
              end
              object girdView_RelacionadosProyecto: TcxGridDBColumn
                DataBinding.FieldName = 'Proyecto'
                Width = 50
              end
              object girdView_RelacionadosCotizacion: TcxGridDBColumn
                Caption = 'Cotizaci'#243'n'
                DataBinding.FieldName = 'Cotizacion'
                Width = 50
              end
              object girdView_RelacionadosOrdenCompra: TcxGridDBColumn
                Caption = 'Orden Compra'
                DataBinding.FieldName = 'OrdenCompra'
                Width = 50
              end
            end
            object cxGrid_RelacionadosLevel1: TcxGridLevel
              GridView = girdView_Relacionados
            end
          end
        end
        object cxTabCancelacion: TcxTabSheet
          Caption = 'Cancelaci'#243'n'
          ImageIndex = 5
          object dxLayoutControl5: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 874
            Height = 400
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cdFecha: TcxDateEdit
              Left = 140
              Top = 11
              EditValue = 0d
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWindow
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
            object btnAceptar: TcxButton
              Left = 328
              Top = 164
              Width = 89
              Height = 30
              Caption = 'Aceptar'
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = frmrepositorio.IconosBarra
              TabOrder = 3
              OnClick = btnAceptarClick
            end
            object cxUsuario: TcxTextEdit
              Left = 140
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clWindow
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 206
            end
            object mMotivo: TcxMemo
              Left = 140
              Top = 69
              Lines.Strings = (
                'mMotivo')
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 2
              Height = 89
              Width = 277
            end
            object dxLayoutControl5Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Fecha'
              Control = cdFecha
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              AlignHorz = ahRight
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnAceptar
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              CaptionOptions.Text = 'Usuario'
              Control = cxUsuario
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Motivo de Cancelaci'#243'n'
              Control = mMotivo
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxTabCuentasPorPagar: TcxTabSheet
          Caption = 'Cuentas por Pagar'
          ImageIndex = 5
          object dxLayoutControl7: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 874
            Height = 400
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object grid_comprobantes: TcxGrid
              Left = 11
              Top = 135
              Width = 693
              Height = 173
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object cxView_Comprobantes: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellClick = cxView_ComprobantesCellClick
                DataController.DataSource = dsCuentasPorPagar
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Filter.TranslateBetween = True
                DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    Column = cxView_FechaFactura
                    DisplayText = 'CFDI:'
                  end
                  item
                    Kind = skSum
                    Column = cxView_Total
                    DisplayText = 'Total:'
                  end
                  item
                    Kind = skSum
                    Column = cxView_Saldo
                    DisplayText = 'Total:'
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsSelection.MultiSelect = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxView_FechaFactura: TcxGridDBColumn
                  Caption = 'Fecha'
                  DataBinding.FieldName = 'FechaFactura'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                  Width = 50
                end
                object cxView_FechaEntrega: TcxGridDBColumn
                  Caption = 'Fecha Entrega'
                  DataBinding.FieldName = 'FechaEntrega'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object cxView_DiasCredito: TcxGridDBColumn
                  Caption = 'D'#237'as Cr'#233'dito'
                  DataBinding.FieldName = 'DiasC'
                  Options.Editing = False
                  Width = 50
                end
                object cxView_FechaPago: TcxGridDBColumn
                  Caption = 'Fecha Pago'
                  DataBinding.FieldName = 'FechaPago'
                  Options.Editing = False
                end
                object cxView_DiasVencidos: TcxGridDBColumn
                  Caption = 'D'#237'as Vencidos'
                  DataBinding.FieldName = 'DiasV'
                  Options.Editing = False
                  Width = 30
                end
                object cxView_Series: TcxGridDBColumn
                  DataBinding.FieldName = 'Serie'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                  Width = 50
                end
                object cxView_Folio: TcxGridDBColumn
                  DataBinding.FieldName = 'Folio'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                  Width = 50
                end
                object cxView_RFC: TcxGridDBColumn
                  DataBinding.FieldName = 'RFC'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                  Width = 120
                end
                object cxView_RazonSocial: TcxGridDBColumn
                  Caption = 'Raz'#243'n Social'
                  DataBinding.FieldName = 'RazonSocial_Emisor'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                  Width = 120
                end
                object cxView_Total: TcxGridDBColumn
                  Caption = 'Monto'
                  DataBinding.FieldName = 'Total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 2
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  Options.Editing = False
                  Width = 30
                end
                object cxView_TipoCambio: TcxGridDBColumn
                  Caption = 'Tipo Cambio'
                  DataBinding.FieldName = 'TipoCambio'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = ',0.0000;-,0.0000'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object cxView_TotalMXN: TcxGridDBColumn
                  Caption = 'Total MXN'
                  DataBinding.FieldName = 'Conversion'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 2
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object cxView_Abonos: TcxGridDBColumn
                  Caption = 'Abonos'
                  DataBinding.FieldName = 'MontoComp'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object cxView_Saldo: TcxGridDBColumn
                  DataBinding.FieldName = 'Saldo'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 2
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                  Width = 80
                end
                object cxView_FolioUUID: TcxGridDBColumn
                  Caption = 'UUID'
                  DataBinding.FieldName = 'Folio_UUID'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                  Width = 61
                end
                object cxView_Proyecto: TcxGridDBColumn
                  DataBinding.FieldName = 'Proyecto'
                  Options.Editing = False
                  Width = 50
                end
                object cxView_Cotizacion: TcxGridDBColumn
                  Caption = 'Cotizaci'#243'n'
                  DataBinding.FieldName = 'Cotizacion'
                  Options.Editing = False
                  Width = 50
                end
                object cxView_Estatus: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'Estatus'
                  Visible = False
                  VisibleForCustomization = False
                  Width = 79
                end
                object cxView_OrdenCompra: TcxGridDBColumn
                  Caption = 'Orden Compra'
                  DataBinding.FieldName = 'OrdenCompra'
                  Options.Editing = False
                  Width = 50
                end
              end
              object grid_comprobantesLevel1: TcxGridLevel
                GridView = cxView_Comprobantes
              end
            end
            object dxLayoutControl8: TdxLayoutControl
              Left = 11
              Top = 11
              Width = 874
              Height = 118
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxProyecto: TcxLookupComboBox
                Left = 106
                Top = 38
                ParentFont = False
                Properties.KeyFieldNames = 'sNumeroOrden'
                Properties.ListColumns = <
                  item
                    Caption = 'Proyecto'
                    FieldName = 'sIdFolio'
                  end>
                Properties.ListSource = ds_OrdenesdeTrabajo
                Properties.OnChange = cxProyectoPropertiesChange
                Properties.OnEditValueChanged = cxProyectoPropertiesEditValueChanged
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 145
              end
              object cxCotizacion: TcxTextEdit
                Left = 365
                Top = 11
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 3
                Width = 121
              end
              object cxOC: TcxLookupComboBox
                Left = 365
                Top = 40
                ParentFont = False
                Properties.KeyFieldNames = 'IdOrdenCompra'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'Codigo'
                  end
                  item
                    Caption = 'Proyecto'
                    FieldName = 'sIdFolio'
                  end
                  item
                    Caption = 'Total O.C'
                    FieldName = 'dMontoMN'
                  end>
                Properties.ListSource = ds_anexo_pedidos
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 5
                Width = 444
              end
              object btnDoctoCotizacion: TcxButton
                Left = 788
                Top = 11
                Width = 21
                Height = 14
                OptionsImage.ImageIndex = 4
                OptionsImage.Images = frmrepositorio.IconosBarra
                TabOrder = 4
                OnClick = btnDoctoCotizacionClick
              end
              object cxDiasCredito: TcxCalcEdit
                Left = 106
                Top = 11
                EditValue = 0.000000000000000000
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 0
                Width = 121
              end
              object cxMonto: TcxCurrencyEdit
                Left = 106
                Top = 67
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 2
                Width = 121
              end
              object btnAceptarCPP: TcxButton
                Left = 627
                Top = 69
                Width = 89
                Height = 30
                Caption = 'Aceptar'
                OptionsImage.ImageIndex = 8
                OptionsImage.Images = frmrepositorio.IconosBarra
                TabOrder = 6
                OnClick = btnAceptarCPPClick
              end
              object btnCancelarCPP: TcxButton
                Left = 722
                Top = 69
                Width = 87
                Height = 30
                Hint = 'Cancelar cambios (F12)'
                Caption = 'Cancelar'
                OptionsImage.ImageIndex = 2
                OptionsImage.Images = frmrepositorio.IconosBarra
                TabOrder = 7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = btnCancelarCPPClick
              end
              object dxLayoutGroup5: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem33: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Proyecto:'
                Control = cxProyecto
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem34: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahClient
                CaptionOptions.Text = 'Cotizaci'#243'n:'
                Control = cxCotizacion
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem37: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahClient
                CaptionOptions.Text = 'Orden de Compra:'
                Control = cxOC
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutGroup5
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem38: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Visible = False
                Control = btnDoctoCotizacion
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup5
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem32: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                CaptionOptions.Text = 'D'#237'as de Cr'#233'dito:'
                Control = cxDiasCredito
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutGroup5
                AlignHorz = ahLeft
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem39: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Monto:'
                Control = cxMonto
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem31: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup9
                AlignHorz = ahRight
                AlignVert = avTop
                CaptionOptions.Visible = False
                Control = btnAceptarCPP
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem44: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup9
                AlignHorz = ahRight
                AlignVert = avClient
                CaptionOptions.Visible = False
                Control = btnCancelarCPP
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup5
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
            end
            object dxLayoutControl9: TdxLayoutControl
              Left = 11
              Top = 314
              Width = 734
              Height = 74
              TabOrder = 2
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxCPPTotalAbonos: TcxCurrencyEdit
                Left = 113
                Top = 11
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '$,0.00;-$,0.00'
                Properties.ReadOnly = True
                Style.Color = clWhite
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Width = 195
              end
              object cxCPPSaldoF: TcxCurrencyEdit
                Left = 113
                Top = 40
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DecimalPlaces = 2
                Properties.DisplayFormat = '$,0.00;-$,0.00'
                Properties.ReadOnly = True
                Style.Color = clWhite
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 195
              end
              object dxLayoutControl9Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem41: TdxLayoutItem
                Parent = dxLayoutControl9Group_Root
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'Total Abono:'
                Control = cxCPPTotalAbonos
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem42: TdxLayoutItem
                Parent = dxLayoutControl9Group_Root
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'Saldo Final CFDI:'
                Control = cxCPPSaldoF
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutGroup4
              Control = grid_comprobantes
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutGroup4
              Control = dxLayoutControl8
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem40: TdxLayoutItem
              Parent = dxLayoutGroup4
              Control = dxLayoutControl9
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
      end
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 882
    Height = 35
    Align = alTop
    TabOrder = 1
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Comprobante Fiscal Digital'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxNuevoDetalle: TcxButton
      Left = 531
      Top = 2
      Width = 81
      Height = 28
      Caption = 'Nuevo'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxNuevoDetalleClick
    end
    object cxEliminar: TcxButton
      Left = 691
      Top = 2
      Width = 81
      Height = 28
      Caption = 'Eliminar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxEliminarClick
    end
    object cxEditaDetalle: TcxButton
      Left = 612
      Top = 2
      Width = 81
      Height = 28
      Caption = 'Editar'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 3
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxEditaDetalleClick
    end
  end
  object frxOrdenCompra: TfrxDBDataset
    UserName = 'frxOrdenCompra'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 952
    Top = 229
  end
  object styleGrid: TcxStyleRepository
    Scalable = True
    Left = 148
    Top = 200
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
  object cxmglst1: TcxImageList
    FormatVersion = 1
    DesignInfo = 11011016
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 1072
    Top = 112
  end
  object datasetfrximgfirmas: TfrxDBDataset
    UserName = 'datasetfrximgfirmas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'bimagen14=bimagen14'
      'bimagen16=bimagen16'
      'bImagen14Sello=bImagen14Sello')
    BCDToCurrency = False
    Left = 896
    Top = 144
  end
  object zComprobante: TUniQuery
    Connection = connection.Uconnection
    Left = 481
    Top = 20
  end
  object dsDocumento: TDataSource
    DataSet = zComprobante
    Left = 273
    Top = 164
  end
  object zTipoComprobante: TUniQuery
    Connection = connection.Uconnection
    Left = 777
    Top = 28
  end
  object dsComprobante: TDataSource
    DataSet = zComprobante
    Left = 593
    Top = 65532
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 449
    Top = 176
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
  end
  object dsTipoComprobante: TDataSource
    DataSet = zTipoComprobante
    Left = 548
    Top = 123
  end
  object mConceptos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 76
    Top = 275
    object mConceptosCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object mConceptosUnidad: TStringField
      DisplayWidth = 50
      FieldName = 'Unidad'
      Size = 50
    end
    object mConceptosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object mConceptosPrecioUnit: TCurrencyField
      FieldName = 'PrecioUnit'
    end
    object mConceptosImporte: TCurrencyField
      FieldName = 'Importe'
    end
  end
  object dsConceptos: TDataSource
    DataSet = mConceptos
    Left = 116
    Top = 235
  end
  object XML: TXMLDocument
    Left = 908
    Top = 336
    DOMVendorDesc = 'MSXML'
  end
  object zHistorial: TUniQuery
    Left = 676
    Top = 51
  end
  object dsHistorial: TDataSource
    DataSet = zHistorial
    Left = 636
    Top = 35
  end
  object zNotaCredito: TUniQuery
    Left = 492
    Top = 299
  end
  object dsNotaCredito: TDataSource
    DataSet = zNotaCredito
    Left = 548
    Top = 259
  end
  object dsRelacionado: TDataSource
    DataSet = zRelacionado
    Left = 364
    Top = 339
  end
  object zRelacionado: TUniQuery
    Left = 396
    Top = 251
  end
  object zCuentasPorPagar: TUniQuery
    Connection = connection.Uconnection
    Left = 684
    Top = 219
  end
  object dsCuentasPorPagar: TDataSource
    DataSet = zCuentasPorPagar
    Left = 740
    Top = 203
  end
  object zOrdenesdeTrabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 769
    Top = 253
  end
  object ds_OrdenesdeTrabajo: TDataSource
    DataSet = zOrdenesdeTrabajo
    Left = 681
    Top = 261
  end
  object zAnexo_pedidos: TUniQuery
    Connection = connection.Uconnection
    Left = 689
    Top = 301
  end
  object ds_anexo_pedidos: TDataSource
    DataSet = zAnexo_pedidos
    Left = 777
    Top = 293
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 411
    Top = 69
  end
end
