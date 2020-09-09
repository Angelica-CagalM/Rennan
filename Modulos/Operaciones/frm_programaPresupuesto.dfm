object frmProgramPres: TfrmProgramPres
  Left = 195
  Top = 166
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Programa Presupuesto'
  ClientHeight = 557
  ClientWidth = 1241
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
    Width = 1241
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1241
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 678
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 678
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
          ExplicitLeft = 401
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Height = 31
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
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Programa Presupuesto'
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
      Width = 200
    end
  end
  object Panel5: TPanel
    Left = 158
    Top = 35
    Width = 1083
    Height = 522
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 523
      Height = 520
      Align = alClient
      TabOrder = 0
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 208
        Width = 521
        Height = 8
        AlignSplitter = salBottom
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 521
        Height = 207
        Align = alClient
        TabOrder = 1
        object grid_ordenes: TcxGrid
          Left = 1
          Top = 1
          Width = 519
          Height = 205
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
            DataController.DataSource = ds_programPres
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.UnderscoreWildcard = '%'
            DataController.Filter.AutoDataSetFilter = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$,0.00'
                Kind = skSum
              end
              item
                Format = '$ ,0.00'
                Kind = skSum
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
            object cxVistaCodigo: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Actividad'
            end
            object cxVistaNumeroOrden: TcxGridDBColumn
              Caption = 'Proyecto'
              DataBinding.FieldName = 'sNumeroOrden'
              Visible = False
            end
            object cxVistaDescrip: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'Descripcion'
            end
            object cxVistaCantidad: TcxGridDBColumn
              DataBinding.FieldName = 'Cantidad'
            end
            object cxVistaUnidad: TcxGridDBColumn
              Caption = 'Unidad'
              DataBinding.FieldName = 'Tipo'
            end
            object cxVistaPrecioUnidad: TcxGridDBColumn
              Caption = 'Precio Unidad'
              DataBinding.FieldName = 'Venta'
            end
            object cxVistaCantTotal: TcxGridDBColumn
              Caption = 'Cantidad Total'
              DataBinding.FieldName = 'Venta'
            end
          end
          object cxgrdlvlGrid1Level1: TcxGridLevel
            GridView = cxVistaOrdenes
          end
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 216
        Width = 521
        Height = 268
        Align = alBottom
        TabOrder = 2
        object dxLayoutControl1: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 519
          Height = 266
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object Nivel: TcxDBCurrencyEdit
            Left = 86
            Top = 158
            DataBinding.DataField = 'Nivel'
            DataBinding.DataSource = ds_programPres
            ParentFont = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0'
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
            Width = 121
          end
          object Costo: TcxDBCurrencyEdit
            Left = 86
            Top = 187
            DataBinding.DataField = 'Costo'
            DataBinding.DataSource = ds_programPres
            ParentFont = False
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
            Width = 121
          end
          object Actividad: TcxDBTextEdit
            Left = 86
            Top = 11
            DataBinding.DataField = 'Actividad'
            DataBinding.DataSource = ds_programPres
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
            Width = 173
          end
          object Descripcion: TcxDBMemo
            Left = 86
            Top = 40
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = ds_programPres
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
            Height = 54
            Width = 580
          end
          object IdMedida: TcxDBLookupComboBox
            Left = 86
            Top = 100
            DataBinding.DataField = 'IdMedida'
            DataBinding.DataSource = ds_programPres
            ParentFont = False
            Properties.KeyFieldNames = 'IdMedida'
            Properties.ListColumns = <
              item
                Caption = 'Medidas'
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
            TabOrder = 3
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 145
          end
          object Fecha_inicio: TcxDBDateEdit
            Left = 86
            Top = 129
            DataBinding.DataField = 'Fecha_Inicio'
            DataBinding.DataSource = ds_programPres
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
            Width = 121
          end
          object Tipo: TcxDBComboBox
            Left = 243
            Top = 100
            DataBinding.DataField = 'Tipo'
            DataBinding.DataSource = ds_programPres
            ParentFont = False
            Properties.Items.Strings = (
              'ACTIVIDAD'
              'PAQUETE')
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
          object Cantidad: TcxDBCurrencyEdit
            Left = 409
            Top = 100
            DataBinding.DataField = 'Cantidad'
            DataBinding.DataSource = ds_programPres
            ParentFont = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0'
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
          object Fecha_Fin: TcxDBDateEdit
            Left = 344
            Top = 129
            DataBinding.DataField = 'Fecha_Fin'
            DataBinding.DataSource = ds_programPres
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
            Width = 121
          end
          object Venta: TcxDBCurrencyEdit
            Left = 327
            Top = 187
            DataBinding.DataField = 'Venta'
            DataBinding.DataSource = ds_programPres
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
            Width = 121
          end
          object Ponderado: TcxDBCurrencyEdit
            Left = 336
            Top = 158
            DataBinding.DataField = 'Ponderado'
            DataBinding.DataSource = ds_programPres
            ParentFont = False
            Properties.DisplayFormat = ',0.00%;-,0.00%'
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
            Width = 121
          end
          object cxsNumeroOrden: TcxDBLookupComboBox
            Left = 353
            Top = 11
            DataBinding.DataField = 'sNumeroOrden'
            DataBinding.DataSource = ds_programPres
            ParentFont = False
            Properties.KeyFieldNames = 'sNumeroOrden'
            Properties.ListColumns = <
              item
                FieldName = 'sIdFolio'
              end>
            Properties.ListSource = dsOrdenTrabajo
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
            Width = 145
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object Nivell: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Nivel:'
            Control = Nivel
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Costo:'
            Control = Costo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Actividad:'
            Control = Actividad
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Descripci'#243'n:'
            Control = Descripcion
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Medida:'
            Control = IdMedida
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Fecha Inicio:'
            Control = Fecha_inicio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tipo:'
            Control = Tipo
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Cantidad:'
            Control = Cantidad
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Fecha Termino:'
            Control = Fecha_Fin
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Venta:'
            Control = Venta
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 5
            AutoCreated = True
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Ponderado:'
            Control = Ponderado
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 4
            AutoCreated = True
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'N'#250'mero Orden'
            Control = cxsNumeroOrden
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
        end
      end
      object pnlBtn2: TPanel
        Left = 1
        Top = 484
        Width = 521
        Height = 35
        Align = alBottom
        TabOrder = 3
        inline frmBarraH21: TfrmBarraH2
          Left = 331
          Top = 1
          Width = 189
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 331
          ExplicitTop = 1
          ExplicitWidth = 189
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Left = 3
            Width = 186
            Height = 33
            Align = alRight
            ExplicitLeft = 3
            ExplicitWidth = 186
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              Left = 11
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnPostClick
              ExplicitLeft = 11
              ExplicitTop = 1
              ExplicitHeight = 31
            end
            inherited btnCancel: TcxButton
              Left = 98
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnCancelClick
              ExplicitLeft = 98
              ExplicitTop = 1
              ExplicitHeight = 31
            end
          end
        end
      end
    end
    object PanelDetalle: TPanel
      Left = 530
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
          ClientRectBottom = 444
          ClientRectLeft = 2
          ClientRectRight = 546
          ClientRectTop = 30
          object cxTabSheet3: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 210
              Width = 544
              Height = 204
              Align = alClient
              TabOrder = 0
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
            object cxSplitInforme: TcxSplitter
              Left = 0
              Top = 204
              Width = 544
              Height = 6
              AlignSplitter = salTop
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
        end
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 548
          Height = 35
          Align = alTop
          TabOrder = 1
          DesignSize = (
            548
            35)
          object cxNuevoDetalle: TcxButton
            Left = 370
            Top = 3
            Width = 81
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Nuevo'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxEditaDetalle: TcxButton
            Left = 457
            Top = 3
            Width = 81
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Editar'
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
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
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
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
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 524
      Top = 1
      Width = 6
      Height = 520
      AlignSplitter = salRight
    end
  end
  object PanelTipo: TPanel
    Left = 0
    Top = 35
    Width = 152
    Height = 522
    Align = alLeft
    TabOrder = 2
    object Grid_Bitacora: TcxGrid
      Left = 1
      Top = 1
      Width = 150
      Height = 520
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
        DataController.DataSource = dsOrdenTrabajo
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object BView_filtroColumn2: TcxGridDBColumn
          Caption = 'Proyecto/Presupuesto'
          DataBinding.FieldName = 'sIdFolio'
        end
      end
      object Grid_BitacoraLevel1: TcxGridLevel
        GridView = BView_filtro
      end
    end
  end
  object cxSplitTipo: TcxSplitter
    Left = 152
    Top = 35
    Width = 6
    Height = 522
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
  object zProgramPres: TUniQuery
    Connection = connection.Uconnection
    Left = 368
    Top = 144
  end
  object ds_medida: TDataSource
    DataSet = zMedida
    Left = 328
    Top = 96
  end
  object ds_programPres: TDataSource
    DataSet = zProgramPres
    Left = 240
    Top = 136
  end
  object zMedida: TUniQuery
    Connection = connection.Uconnection
    Left = 496
    Top = 120
  end
  object ds_moneda: TDataSource
    DataSet = zMoneda
    Left = 432
    Top = 80
  end
  object zMoneda: TUniQuery
    Connection = connection.Uconnection
    Left = 552
    Top = 80
  end
  object zOrdenTrabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 96
    Top = 208
  end
  object dsOrdenTrabajo: TDataSource
    DataSet = zOrdenTrabajo
    Left = 88
    Top = 152
  end
end
