object frmMantenimiento: TfrmMantenimiento
  Left = 0
  Top = 0
  Caption = 'Catalogo de Equipos de Mantenimiento'
  ClientHeight = 531
  ClientWidth = 1118
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1118
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1118
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 561
      Top = 1
      Width = 556
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 561
      ExplicitTop = 1
      ExplicitWidth = 556
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 556
        Height = 33
        ExplicitWidth = 556
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = -5
          Height = 31
          Visible = False
          ExplicitLeft = -5
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 75
          Height = 31
          Visible = False
          ExplicitLeft = 75
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 155
          Height = 31
          Visible = False
          ExplicitLeft = 155
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
          Left = 235
          Height = 31
          ExplicitLeft = 235
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 315
          Height = 31
          ExplicitLeft = 315
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Catalogo de Equipos de Mantenimiento'
      ParentColor = False
      ParentFont = False
      Style.Color = clNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
    object LabelProceso: TcxLabel
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
    object progreso: TcxProgressBar
      Left = 447
      Top = 12
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      TabOrder = 3
      Visible = False
      Width = 59
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1118
    Height = 496
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 613
      Height = 494
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 457
        Width = 611
        Height = 36
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
          Top = -1
          Width = 609
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 419
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 419
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
                Top = 1
                ExplicitLeft = 3
                ExplicitTop = 1
              end
              inherited btnCancel: TcxButton
                Left = 96
                Top = 1
                ExplicitLeft = 96
                ExplicitTop = 1
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 449
        Width = 611
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_mantenimiento: TcxGrid
        Left = 1
        Top = 1
        Width = 611
        Height = 448
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_mantenimiento: TcxGridDBTableView
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
          OnCellDblClick = cxView_mantenimientoCellDblClick
          DataController.DataSource = dsMaterial
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.TranslateBetween = True
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
          object cxView_mantenimientoColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Width = 50
          end
          object cxView_mantenimientoColumn2: TcxGridDBColumn
            Tag = 7
            DataBinding.FieldName = 'Insumo'
            PropertiesClassName = 'TcxMemoProperties'
            Width = 351
          end
          object cxView_mantenimientoColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Fabricante'
            Width = 35
          end
          object cxView_mantenimientoColumn7: TcxGridDBColumn
            Caption = 'N'#250'mero Econ'#243'mico'
            DataBinding.FieldName = 'NumEconomico'
            Width = 24
          end
          object cxView_mantenimientoColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'SubFamilia'
            Visible = False
            GroupIndex = 2
            Width = 79
          end
          object cxView_mantenimientoColumn8: TcxGridDBColumn
            Caption = 'Indicador'
            DataBinding.FieldName = 'Img'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Images = cxImageList1
            Properties.Items = <
              item
                ImageIndex = 0
                Value = 0
              end
              item
                ImageIndex = 1
                Value = 1
              end
              item
                ImageIndex = 2
                Value = 2
              end
              item
                ImageIndex = 3
                Value = 3
              end>
            Width = 28
          end
          object cxView_mantenimientoColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Estado'
            Width = 46
          end
          object cxView_mantenimientoColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'Familia'
            Visible = False
            GroupIndex = 1
          end
          object cxView_mantenimientoColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
            Visible = False
            GroupIndex = 0
          end
        end
        object grid_mantenimientoLevel1: TcxGridLevel
          GridView = cxView_mantenimiento
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 614
      Top = 1
      Width = 6
      Height = 494
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 620
      Top = 1
      Width = 497
      Height = 494
      Align = alRight
      TabOrder = 2
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 495
        Height = 492
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 63
          Width = 493
          Height = 393
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          OnChange = cxPageDetalleChange
          ClientRectBottom = 391
          ClientRectLeft = 2
          ClientRectRight = 491
          ClientRectTop = 29
          object cxTabSheet2: TcxTabSheet
            Caption = 'Calibraciones'
            ImageIndex = 11
            OnShow = cxTabSheet2Show
            object cxGridMto: TcxGrid
              Left = 0
              Top = 0
              Width = 489
              Height = 362
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxView_Mto: TcxGridDBTableView
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
                DataController.DataSource = dsMtoDetalle
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
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxView_MtoColumn1: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  Width = 107
                end
                object cxView_MtoColumn5: TcxGridDBColumn
                  DataBinding.FieldName = 'Fecha'
                  Width = 135
                end
                object cxView_MtoColumn2: TcxGridDBColumn
                  Caption = 'Fecha Pr'#243'xima'
                  DataBinding.FieldName = 'FechaProxima'
                  Width = 123
                end
                object cxView_MtoColumn6: TcxGridDBColumn
                  Caption = 'Observaci'#243'n'
                  DataBinding.FieldName = 'Observaciones'
                  Width = 144
                end
              end
              object cxGridMtoLevel1: TcxGridLevel
                GridView = cxView_Mto
              end
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'Listado de Fallas'
            ImageIndex = 9
            OnShow = cxTabSheet4Show
            object cxGrid2: TcxGrid
              Left = 0
              Top = 0
              Width = 489
              Height = 362
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
                Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsFallas
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
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn1: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  Width = 182
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Fecha'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.ShowTime = False
                  Width = 128
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  Caption = 'Observaciones'
                  DataBinding.FieldName = 'Observacion'
                  Width = 327
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
          end
          object cxTabSheet1: TcxTabSheet
            Caption = 'Documentos'
            ImageIndex = 13
            object cxGridCertificado: TcxGrid
              Left = 0
              Top = 0
              Width = 489
              Height = 167
              Align = alClient
              TabOrder = 0
              object cxGridCertificados: TcxGridDBTableView
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
              Top = 167
              Width = 489
              Height = 6
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelDown7: TPanel
              Left = 0
              Top = 173
              Width = 489
              Height = 189
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl7: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 487
                Height = 187
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxDocumento: TcxDBLookupComboBox
                  Left = 113
                  Top = 38
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
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 312
                end
                object btnAgregarDocto: TcxButton
                  Left = 431
                  Top = 38
                  Width = 25
                  Height = 23
                  OptionsImage.ImageIndex = 0
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 2
                end
                object edtCertificado: TcxDBTextEdit
                  Left = 113
                  Top = 10
                  DataBinding.DataField = 'NombreDocto'
                  DataBinding.DataSource = dsCertVP
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
                  Width = 336
                end
                object edtFechaVigencia: TcxDBDateEdit
                  Left = 333
                  Top = 67
                  DataBinding.DataField = 'FechaVigencia'
                  DataBinding.DataSource = dsCertVP
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
                  Width = 100
                end
                object cxActivoDocumento: TdxDBToggleSwitch
                  Left = 318
                  Top = 95
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
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 5
                end
                object cxButton1: TcxButton
                  Left = 312
                  Top = 122
                  Width = 121
                  Height = 25
                  Caption = 'Cargar PDF'
                  OptionsImage.ImageIndex = 26
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 6
                  OnClick = cxButton1Click
                end
                object edtFecha: TcxDBDateEdit
                  Left = 113
                  Top = 67
                  DataBinding.DataField = 'FechaRegistro'
                  DataBinding.DataSource = dsCertVP
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
                  OnExit = edtFechaExit
                  OnKeyUp = GlobalKeyUp
                  Width = 128
                end
                object dxLayoutControl7Group_Root: TdxLayoutGroup
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
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
                  Index = 1
                  AutoCreated = True
                end
                object dxLayoutItem1: TdxLayoutItem
                  Parent = dxLayoutControl7Group_Root
                  CaptionOptions.Text = 'No. de Certificado'
                  Control = edtCertificado
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem2: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup2
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Fecha Vigencia'
                  Control = edtFechaVigencia
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem36: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup1
                  AlignHorz = ahRight
                  CaptionOptions.Text = 'dxDBToggleSwitch1'
                  CaptionOptions.Visible = False
                  Control = cxActivoDocumento
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl7Group_Root
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  Index = 2
                  AutoCreated = True
                end
                object dxLayoutItem37: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup1
                  AlignHorz = ahRight
                  AlignVert = avTop
                  CaptionOptions.Text = 'cxButton1'
                  CaptionOptions.Visible = False
                  Control = cxButton1
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutItem35: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup2
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.Text = 'Fecha'
                  Control = edtFecha
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutAutoCreatedGroup1
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
              end
            end
          end
          object cxTabSheetMovimientos: TcxTabSheet
            Caption = 'Movimientos'
            ImageIndex = 21
            object cxGridMovimiento: TcxGrid
              Left = 0
              Top = 0
              Width = 489
              Height = 362
              Align = alClient
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
                OnCellDblClick = cxGridMovimientosCellDblClick
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
                object cxGridMovimientosColumn1: TcxGridDBColumn
                  Caption = 'Tipo de Movimiento'
                  DataBinding.FieldName = 'Tipo'
                  Width = 147
                end
                object cxGridMovimientosColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Cantidad'
                  Width = 74
                end
              end
              object cxGridMovimientoLevel1: TcxGridLevel
                GridView = cxGridMovimientos
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 210
              Width = 489
              Height = 152
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 487
                Height = 150
                Align = alClient
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
              Width = 489
              Height = 6
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 489
              Height = 204
              Align = alTop
              TabOrder = 2
              object dxLayoutControl2: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 481
                Height = 196
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object opcionImprimir: TcxRadioGroup
                  Left = 10
                  Top = 10
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
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Height = 105
                  Width = 495
                end
                object btnImpInforme: TcxButton
                  Left = 326
                  Top = 121
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
                object dxLayoutItem14: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  CaptionOptions.Text = 'cxRadioGroup1'
                  CaptionOptions.Visible = False
                  Control = opcionImprimir
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem15: TdxLayoutItem
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
          Width = 493
          Height = 35
          Align = alTop
          TabOrder = 1
          DesignSize = (
            493
            35)
          object cxNuevoDetalle: TcxButton
            Left = 235
            Top = 3
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
            Left = 322
            Top = 3
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
          object cxEliminarDetalle: TcxButton
            Left = 409
            Top = 3
            Width = 81
            Height = 26
            Hint = 'Eliminar registro (CTRL + D)'
            Align = alCustom
            Anchors = [akTop, akRight]
            Caption = 'Eliminar'
            OptionsImage.ImageIndex = 4
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 3
            Visible = False
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
          Top = 456
          Width = 493
          Height = 35
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            493
            35)
          object cxCancelarDetalle: TcxButton
            Left = 408
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
            Left = 315
            Top = 3
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
        object Panel4: TPanel
          Left = 1
          Top = 36
          Width = 493
          Height = 27
          Align = alTop
          TabOrder = 3
          object cxLeyenda3: TcxLabel
            Left = 1
            Top = 1
            Align = alClient
            Caption = 'Seleccionado: '
            ParentColor = False
            ParentFont = False
            Style.Color = clNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHighlight
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clHighlight
            Style.IsFontAssigned = True
            Transparent = True
          end
        end
      end
    end
  end
  object zMaterial: TUniQuery
    AfterScroll = zMaterialAfterScroll
    Left = 49
    Top = 244
  end
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 49
    Top = 188
  end
  object zMtoDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 536
    Top = 206
  end
  object dsMtoDetalle: TDataSource
    DataSet = zMtoDetalle
    Left = 536
    Top = 150
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 20185561
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E505557333E4042000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000333E40423E50
          5557000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004A656C702BC5EBFF50909FA82429
          2A2B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000024292A2B50909FA82BC5EBFF4A65
          6C70000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002B3133343DCAEDFF39C9ECFF40CA
          ECFE5086949B1D20212100000000000000000000000000000000000000000000
          000000000000000000001D2021215086949B40CAECFE39C9ECFF3DCAEDFF2B31
          3334000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001011111149C8E7F745CCEEFF47CD
          EEFF39C9EDFF42C6E7F84F7D898F161718180000000000000000000000000000
          0000161718184F7D898F42C6E7F839C9EDFF47CDEEFF45CCEEFF49C8E7F71011
          1111000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000050B3CBD841CBEEFF4ACE
          EFFF4ACEEFFF46CDEEFF38C9EDFF45C2E1F14D737D820A0B0B0B0A0B0B0B4D73
          7D8245C2E1F138C9EDFF46CDEEFF4ACEEFFF4ACEEFFF41CBEEFF50B3CBD80000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005597A9B13CCAEDFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF45CCEEFF38C9EDFF4EBBD7E44EBBD7E438C9
          EDFF45CCEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF3CCAEDFF5597A9B10000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004F757F8439C9ECFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF43CCEEFF43CCEEFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF39C9ECFF4F757F840000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000405156583AC9ECFF49CD
          EEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF49CDEEFF3AC9ECFF405156580000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000282D2E2F41CBEDFF47CC
          EDFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF47CCEDFF41CBEDFF282D2E2F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C0D0D0D4BC3E0F044CC
          EDFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF44CCEDFF4BC3E0F00C0D0D0D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000052ADC5D040CB
          EDFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF40CBEDFF52ADC5D0000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000043585D6041C4E4F547CD
          EEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF47CDEEFF41C4E4F543585D600000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000465E646738C8ECFF45CCEEFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF45CCEEFF38C8ECFF465E
          6467000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004660676A37C8ECFF45CCEEFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF45CCEEFF37C8
          ECFF4660676A0000000000000000000000000000000000000000000000000000
          000000000000000000004A686F7336C8ECFF46CCEEFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF46CC
          EEFF36C8ECFF4A686F7300000000000000000000000000000000000000000000
          0000000000004A6A727637C8ECFF46CCEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF46CCEEFF37C8ECFF4A6A7276000000000000000000000000000000000000
          00004D71797E34C7ECFF47CDEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF47CDEEFF34C7ECFF4D71797E00000000000000000E0F0F0F5181
          8E942BC5EBFF3FCBEDFF46CDEEFF48CDEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF48CDEEFF46CDEEFF3FCBEDFF2BC5EBFF51828F950C0D0D0D38484C4E5394
          A4AC52A6BBC64EB9D5E247C9E9FA3FCBEEFF3AC9EDFF39C9EDFF3BCAEDFF3FCB
          EEFF42CCEEFF49CDEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF49CDEEFF42CCEEFF3FCBEEFF3BCAEDFF39C9EDFF3AC9
          EDFF3FCBEEFF47C9E9FA4EB9D5E252A6BBC65395A5AD34424547000000000000
          00000000000005050505191B1C1C2E3638394255595C4E737C81538F9EA653A9
          BEC94DBCD9E743CCEEFF49CDEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF49CDEEFF43CCEEFF4DBCD9E753A9BEC9538F9EA64E737C814255
          595C2E363839191B1C1C05050505000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000050505055185929939C9ECFF4ACEEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEEFF39C9ECFF51859299050505050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001617181843C8E9FA45CCEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF45CCEEFF43C8E9FA16171818000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005483909637C8ECFF4ACEEEFF4ACEEFFF4ACEEFFF4ACE
          EEFF37C8ECFF5483909600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000017191A1A41C9EAFC45CCEEFF4ACEEFFF4ACEEFFF45CC
          EEFF41C9EAFC17191A1A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000005287949B38C8ECFF4ACEEFFF4ACEEFFF38C8
          ECFF5287949B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001B1D1E1E42C8E9FB46CCEEFF46CCEEFF42C8
          E9FB1B1D1E1E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005389969D38C8ECFF38C8ECFF5389
          969D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B1D1E1E3ECAEDFF3ECAEDFF1B1D
          1E1E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000539DB0B9539DB0B90000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000021252627212526270000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002C353C3E3A668D95237AC6D51585E6F91585E6F9237A
          C6D53A668D952C353C3E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001D20
          22233E607D832C7DC4D21A86E3F51789ECFF1889ECFF198AEDFF198AEDFF1889
          ECFF1789ECFF1A86E3F52C7DC4D23E607D831D20222300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000111213133D688E960E82
          E8FC027EEBFF0E84ECFF1688ECFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF1688ECFF0E84ECFF027EEBFF0E82E8FC3D688E96111213130000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000343F494B1A7FD6E7017EEAFF1487
          ECFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF1487ECFF017EEAFF1A7FD6E7343F
          494B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003F566B6F037EEAFF0E84EBFF1A8AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF1A8AEDFF0E84EBFF037E
          EAFF3F566B6F0000000000000000000000000000000000000000000000000000
          000000000000000000003F566A6E007CEAFF1487ECFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF1487
          ECFF007CEAFF3F566A6E00000000000000000000000000000000000000000000
          000000000000313B4446027EEAFF1387ECFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF1387ECFF027EEAFF313B4446000000000000000000000000000000000000
          00000E0E0F0F1B81DBED0D83EBFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF0D83EBFF1B81DBED0E0E0F0F0000000000000000000000000000
          00003F698F97017DEAFF1A8AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF1A8AEDFF017DEAFF3F698F97000000000000000000000000191B
          1D1D0D83EAFE1487ECFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF1487ECFF0D83EAFE191B1D1D00000000000000004061
          7E84017EEAFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF017EEAFF40617E8400000000000000002E80
          C7D50D83EBFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF0D83EBFF2D80C9D700000000303A43451C86
          E4F61588ECFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF1588ECFF1A87E6F92A313839386E9EA71888
          EBFE1989ECFF198AEDFF198AEDFF198AEDFF198AEDFF1889EDFF1889ECFF1889
          ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889
          ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889EDFF198A
          EDFF198AEDFF198AEDFF198AEDFF1989ECFF1788ECFF3C688F971D80D8E81889
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF1A8AEDFF0B83EBFF047FEBFF047F
          EBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF047F
          EBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF0B83EBFF1A8A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF1889ECFF237CCBD91687EBFE198A
          EDFF198AEDFF198AEDFF198AEDFF1889ECFF0B82EBFF73B7F3FFBCDDF9FFBCDD
          F9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDD
          F9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FF73B7F3FF0B82
          EBFF1889ECFF198AEDFF198AEDFF198AEDFF198AEDFF1586E8FB1687EBFE198A
          EDFF198AEDFF198AEDFF198AEDFF1889ECFF0B82EBFF73B7F3FFBCDDF9FFBCDD
          F9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDD
          F9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FFBCDDF9FF73B7F3FF0B82
          EBFF1889ECFF198AEDFF198AEDFF198AEDFF198AEDFF1586E8FB1D80D8E81889
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF1A8AEDFF0B83EBFF047FEBFF047F
          EBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF047F
          EBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF047FEBFF0B83EBFF1A8A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF1889ECFF237CCBD9386E9EA71888
          EBFE1989ECFF198AEDFF198AEDFF198AEDFF198AEDFF1889EDFF1889ECFF1889
          ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889
          ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889ECFF1889EDFF198A
          EDFF198AEDFF198AEDFF198AEDFF1989ECFF1788ECFF3C688F97303A43451C86
          E4F61588ECFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF1588ECFF1A87E6F92A313839000000002E80
          C7D50D83EBFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF0D83EBFF2D80C9D700000000000000004061
          7E84017EEAFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF017EEAFF40617E840000000000000000191B
          1D1D0D83EAFE1487ECFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF1487ECFF0D83EAFE191B1D1D00000000000000000000
          00003F698F97017DEAFF1A8AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF1A8AEDFF017DEAFF3F698F970000000000000000000000000000
          00000E0E0F0F1B81DBED0D83EBFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF0D83EBFF1B81DBED0E0E0F0F0000000000000000000000000000
          000000000000313B4446027EEAFF1387ECFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF1387ECFF027EEAFF313B4446000000000000000000000000000000000000
          000000000000000000003F566A6E007CEAFF1487ECFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF1487
          ECFF007CEAFF3F566A6E00000000000000000000000000000000000000000000
          00000000000000000000000000003F566B6F037EEAFF0E84EBFF1A8AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF1A8AEDFF0E84EBFF037E
          EAFF3F566B6F0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000343F494B1A7FD6E7017EEAFF1487
          ECFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF198AEDFF198AEDFF198AEDFF1487ECFF017EEAFF1A7FD6E7343F
          494B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000111213133D688E960E82
          E8FC027EEBFF0E84ECFF1688ECFF198AEDFF198AEDFF198AEDFF198AEDFF198A
          EDFF198AEDFF1688ECFF0E84ECFF027EEBFF0E82E8FC3D688E96111213130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001D20
          22233E607D832C7DC3D01C85E2F31888EAFD1889ECFF198AEDFF198AEDFF1889
          ECFF1888EAFD1C85E2F32C7DC3D03E607D831D20222300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000313C4749376C9BA41D7ED4E41686E8FB1686E8FB1D7E
          D4E4376C9BA4313C474900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000080808080707070707070707070707070707070707070707070707070707
          0707070707070808080806060606000000000000000000000000000000000000
          000000000000000000000000000000000000000000003B44364F4F753C9F0000
          00000000000000000000000000000000000000000000000000004649636B525E
          B7D44E5CC3E5515EC4E5515EC4E5515EC4E5515EC4E5515EC4E5515EC4E5515E
          C4E5515EC4E5515DC4E54855C1E4525887960101010100000000000000000000
          000000000000000000000000000000000000000000004A5B416F528E33D20000
          00000000000000000000000000000000000000000000000000003D4ED4FF4152
          D5FF4354D5FF4353D5FF4353D5FF4353D5FF4353D5FF4353D5FF4353D5FF4353
          D5FF4353D5FF4354D5FF3D4ED3FF4555D5FF1010111100000000000000000000
          000000000000000000000000000000000000000000004A5C4170518E32D30000
          00000000000000000000000000000000000000000000000000004959D6FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4A58CCF21212131300000000000000000000
          000000000000000000000000000000000000000000004A5C4170528F33D30000
          00000000000000000000000000000000000000000000000000004A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4B59CDF21212131300000000000000000000
          000000000000000000000000000000000000000000004A5C4170528F33D30000
          00000000000000000000000000000000000000000000000000004A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4B59CDF21212131300000000000000000000
          00000000000000000000000000000000000000000000495B416E528E33D20000
          00000000000000000000000000000000000000000000000000004A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4B59CDF21212131300000000000000000000
          0000000000000000000000000000000000000000000046563E67518D33D00000
          00000000000000000000000000000000000000000000000000004A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4B59CDF21212131300000000111111125189
          35C84E8D2ED3528F33D3528F33D3528F33D3528E33D24F982CE64D9E25F7528E
          33D2528F33D3528F33D3528F33D3518F33D3528E34D24F753D9F4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4B59CDF21212131300000000080808084756
          3F684A5C41714A5C41704A5C41704A5C41704A5C4170568041AF4F972CE64A5C
          41704A5C41704A5C41704A5C41704A5C41704B5C42703B44364F4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4B59CDF21212131300000000000000000000
          0000000000000000000000000000000000000000000045543E64518C34CF0000
          00000000000000000000000000000000000000000000000000004A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4B59CDF21212131300000000000000000000
          000000000000000000000000000000000000000000004A5C4170528F33D30000
          00000000000000000000000000000000000000000000000000004A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4B59CDF21212131300000000000000000000
          000000000000000000000000000000000000000000004A5C4170528F33D30000
          00000000000000000000000000000000000000000000000000004555D5FF4959
          D6FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5AD7FF4A5A
          D7FF4A5AD7FF4A5AD7FF4455D5FF4957CFF51213141400000000000000000000
          000000000000000000000000000000000000000000004A5C4170528F33D30000
          00000000000000000000000000000000000000000000000000004A58C7EB3B4C
          D3FF3A4BD3FF3A4CD3FF3A4CD3FF3A4CD3FF3A4CD3FF3A4CD3FF3A4CD3FF3A4C
          D3FF3A4CD3FF3A4CD3FF3244D1FF4757CDF30A0A0B0B00000000000000000000
          000000000000000000000000000000000000000000004B5E4173509130D90000
          00000000000000000000000000000000000000000000000000001A1B1D1E4E53
          758053598998555B8897555B8897555B8897555B8897555B8897555B8897555B
          8897555B8897555B899850568696373843470000000000000000000000000000
          0000000000000000000000000000000000000000000047573F69518A35C90000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000070707070F0F0F100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000808
          0808111313131213131312131313121313131213131312131313121313131213
          1313121313131213131311121212000000000000000000000000000000000000
          00000A0A0A0A1413131413121213131212131312121313121213131212131312
          1213131212131312121313121213121111120000000000000000496B73784FB8
          D4E148C3E2F24BC4E3F24BC4E3F24BC4E3F24BC4E3F24BC4E3F24BC4E3F24BC4
          E3F24BC4E3F24AC4E3F240C1E1F1538D9BA30202020200000000000000004440
          3C48C59B73E7CFA279F2D0A47BF2D0A47BF2D0A47BF2D0A47BF2D0A47BF2D0A4
          7BF2D0A47BF2D0A47BF2CFA47BF2CB9E74F088766696000000003CCAEDFF42CC
          EEFF45CCEEFF44CCEEFF44CCEEFF44CCEEFF44CCEEFF44CCEEFF44CCEEFF44CC
          EEFF44CCEEFF44CCEEFF3ECAEDFF45CCEEFF1112121200000000000000008F7C
          6B9FD49F6EFFD9A87BFFD8A87BFFD8A87BFFD8A87BFFD8A87BFFD8A87BFFD8A8
          7BFFD8A87BFFD8A87BFFD8A87BFFD6A476FFCFA47CF20505050549CDEEFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4AC3E2F21213131300000000000000008A78
          6898D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC69F7BE5070707074ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4BC4E3F21213131300000000000000008978
          6897D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC6A07CE5070707074ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4BC4E3F21213131300000000000000008978
          6897D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC6A07CE5070707074ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4BC4E3F21213131300000000000000008978
          6897D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC6A07CE5070707074ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4BC4E3F21213131300000000000000008978
          6897D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC6A07CE5070707074ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4BC4E3F21213131300000000000000008978
          6897D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC6A07CE5070707074ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4BC4E3F21213131300000000000000008978
          6897D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC6A07CE5070707074ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4BC4E3F21213131300000000000000008978
          6897D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC6A07CE5070707074ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF4BC4E3F21213131300000000000000008978
          6897D6A374FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC6A07CE50707070744CCEEFF49CD
          EEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF44CCEEFF49C7E6F61214141400000000000000008D7B
          6A9CD5A273FFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFDAAB7FFFD8A77AFFC9A17CE9070707074EB4CDDA49CC
          EDFD49CDEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF4ACEEFFF42CBEDFF4FB8D3E10A0A0A0A00000000000000007569
          5D80D5A274FED9AA7EFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFD9AA7EFFD7A678FFB89777D302020202212526274EB4
          CDDA44CCEEFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACEEFFF4ACE
          EFFF4ACEEFFF49CDEEFF3BC7EBFD48686F740000000000000000000000001A1A
          191BC59C76E6D8A87BFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB7FFFDAAB
          7FFFDAAB7FFFDAAB7FFFD9AA7EFFD3A274FC5F564E6600000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFA66846FFA76A49FA0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008566
          55B0A4623EFFA96D4BFFAA6C4AFFAA6C4AFFA96D4BFFA86946FFA66B4AFB6166
          6D77576169695760686957606869576068695760686957606869576068695760
          68695760686957606869576068695760686957606869576068695861696A4C54
          5A5B0C0C0C0C0000000000000000000000000000000000000000000000008566
          55B0A3623EFFAD6A45FFB1683FFFB06840FFAF6941FFAA6A46FFA76D4CFD96C0
          E8FF93CDFFFF94C9FAFF94C9FAFF94C9FAFF94C9FAFF94C9FAFF94C9FAFF94C9
          FAFF94C9FAFF94C9FAFF94C9FAFF94C9FAFF94C9FAFF94C9FAFF94C9FAFF8FC7
          F9FF8DB1D3D70E0E0E0E00000000000000000000000000000000000000008566
          55B0A75F38FFA27155FF7092A6FF6699B6FF907D72FFAF663DFFA76D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FAFF8FC7F9FF4B51575800000000000000000000000000000000000000008565
          54B0A66038FF649AB9FF44B0EBFF48ADE5FF4CABDFFF9A745EFFAC6944FD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9CCDFBFF9ECEFBFFA2D0FBFFA2D0FBFFA2D0FBFFA2D0FBFFA0CF
          FAFF97CAFAFF3336393900000000000000000000000000000000000000008764
          51B09D6647FF50A8D9FF4FA9DBFF52A7D6FF46AEE9FF858280FFAF673FFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9ECEFBFF96CAFAFF77BDF8FF77BDF7FF78BEF8FF77BDF8FF72B7
          F0F8637A8D900000000000000000000000000000000000000000000000008565
          54B0A75F37FF6898B2FF44B0ECFF47AEE7FF4EA9DBFF9D7259FFAC6A45FD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9ECEFBFF95CAFAFF75BCF7FF75BCF7FF76BDF8FF76BDF8FF76BA
          F2F975ABD9DF74A4CCD133373A3A000000000000000000000000000000008566
          55B0A66039FFA66F50FF778E9BFF6C95ACFF95796AFFAF663DFFA76D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9CCDFBFF9ECEFBFFA2D0FBFFA2D0FBFFA2D0FBFFA2D0FBFFA1CF
          FBFF9ECEFBFF94C9F9FF92BADFE3050505050000000000000000000000008566
          55B0A3623EFFAC6B47FFB1683FFFB1683FFFAF6942FFA96A46FFA76D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9CCDFBFF9DCEFBFF9FCFFBFF9FCFFBFF9FCFFBFF9FCF
          FBFFA0CFFBFF9CCCFAFF9BCCFAFF0C0C0C0C0000000000000000000000008566
          55B0A4623EFFA96D4BFFAA6C4AFFAA6C4AFFA96D4BFFAA6A46FFA86D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9DCEFBFF9CCDFAFF94CAFAFF92C9FAFF93C9FAFF93C9
          FAFF91C8F9FE8CC2F3F964707C7D000000000000000000000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA86D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9ECEFBFF96CAFAFF67B6F6FF64B5F6FF65B6F7FF65B6
          F7FF62B3F5FE64A6DBE2566F83863A4045460000000000000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA86D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9DCEFBFF9CCDFAFF99CCFAFF98CBFAFF98CCFAFF98CC
          FAFF98CCFAFF97CBFAFF8BC5F9FF8AC4F9FF474D525300000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA86D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9CCDFBFF9DCEFBFF9FCEFBFF9FCFFBFF9FCFFBFF9FCF
          FBFF9FCFFBFF9FCFFBFF9FCFFBFF95C9FAFF839DB6B900000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA86D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9CCDFBFF9DCEFBFFA1CFFBFFA1CFFBFFA1CFFBFFA1CF
          FBFFA1CFFBFFA1D0FBFF9CCDFAFF8CC5F9FF6876838500000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA86D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9ECEFBFF97CBFAFF72BBF7FF6FBAF7FF71BBF7FF71BB
          F7FF71BBF7FF6CB5F2FA6CA1CDD355626D6F0606060600000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA86D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9ECEFBFF99CCFAFF7FC1F8FF7DC0F8FF7EC0F8FF7EC0
          F8FF7EC0F8FF7BBDF5FC77AEDDE3464C52530000000000000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA86D4CFD9CC2
          E6FC9CD2FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9DCEFBFF9CCDFBFF9DCEFBFFA2D0FBFFA2D0FBFFA2D0FBFFA2D0
          FBFFA2D0FBFFA2D0FBFF9BCCFAFF99CBFAFF1616171700000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA76D4CFD9CC1
          E6FD9BD1FFFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCE
          FBFF9DCEFBFF9CCDFAFF9CCDFAFF9CCDFAFF9CCDFAFF9CCDFAFF9CCDFAFF9CCD
          FAFF9CCDFAFF9CCDFBFF99CCF9FF95CAFAFF1D1E1F1F00000000000000008566
          55B0A4623EFFAA6D4BFFAA6D4BFFAA6D4BFFAA6D4BFFAA6A46FFA76D4CFD97C0
          E8FF93CEFFFF96CAFAFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9DCEFBFF9CCD
          FAFF9DCEFBFF98CBFAFF95CAFAFF95CAFAFF95CAFAFF95CAFAFF95CAFAFF95CA
          FAFF95CAFAFF94C9FAFF90C7F9FF718394960000000000000000000000008C67
          53BF9B542CFFA25F3AFFA25F3AFFA25F3AFFA25F3AFFA05B35FFA2603BFF5255
          58614F575E5E819CB5B894C9FAFF9CCDFAFF9DCEFBFF9DCEFBFF9DCEFBFF9CCD
          FAFF97CAFAFF6A798789474D5152474D5152474D5152474D5152474D5152474D
          5152474D5152474C51523336393900000000000000000000000000000000433C
          394C5B4D466F5D50496F5D50496F5D50496F5D50496F5C4F476F5B4E476D0000
          000000000000000000006674828493C8F9FF9CCDFAFF9DCEFBFF9DCEFBFF9CCD
          FAFF92C8F9FF5E69737400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000086A4C1C495CAF9FF9DCEFBFF9DCEFBFF9DCE
          FBFF95CAFAFF839FB9BC00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C40434495C9F9FF9CCDFAFF9DCEFBFF9DCE
          FBFF98CBFAFF93BBE0E404040404000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000303030393BDE1E698CBF9FF9DCEFBFF9DCE
          FBFF9ACCFAFF98C7F2F715151616000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007F98AFB295CAFAFF9DCEFBFF9DCE
          FBFF9BCDFAFF9ACAF7FD1E1F2020000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006B7A888A93C8FAFF9DCEFBFF9DCE
          FBFF9ACCFAFF9ACAF6FB1B1C1D1D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005B656F7092C8FAFF9DCEFBFF9DCE
          FBFF99CCFAFF97C5F0F412131313000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000545C646593C8FAFF9DCEFBFF9DCE
          FBFF98CBFAFF92BBE1E503030303000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000050575E5F93C8F9FF9DCEFBFF9DCE
          FBFF94C9F9FF839EB8BB00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E42464793C8F9FF9CCDFAFF9BCC
          FAFF91C7F9FF3C40444500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000E0E0E0E92BBE0E498CBF9FF94C6
          F4F9677683850000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000535C64658DC2F4F96D7E
          8F91000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object dsCertVP: TDataSource
    DataSet = zCertVP
    Left = 952
    Top = 208
  end
  object zCertVP: TUniQuery
    Connection = connection.Uconnection
    Left = 956
    Top = 159
  end
  object zCertificado: TUniQuery
    Connection = connection.Uconnection
    Left = 755
    Top = 159
  end
  object dsCertificado: TDataSource
    DataSet = zCertificado
    Left = 842
    Top = 159
  end
  object dsCatalogo_docto: TDataSource
    DataSet = zCatalogo_docto
    Left = 788
    Top = 206
  end
  object zCatalogo_docto: TUniQuery
    Connection = connection.Uconnection
    Left = 701
    Top = 207
  end
  object dlgPDF: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 939
    Top = 439
  end
  object OpenPicture: TOpenPictureDialog
    Left = 980
    Top = 439
  end
  object dlgSavePDF: TSaveDialog
    Left = 899
    Top = 439
  end
  object ReporteMto: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43219.589841377310000000
    ReportOptions.LastChange = 43284.029103888900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = ReporteMtoGetValue
    OnReportPrint = 'no '
    Left = 722
    Top = 264
    Datasets = <
      item
        DataSetName = 'registros_detalles'
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 529.134200000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[registros_detalles."CC"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 657.638220000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 529.134200000000000000
          Top = 18.897650000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[registros_detalles."Fecha"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 529.134200000000000000
          Top = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 113.385900000000000000
          Height = 56.692950000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Width = 362.834880000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6108695
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'SERVICIOS SIANI S.A. DE C.V.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 362.834880000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 476.220780000000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Clave:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 52.913385826771700000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Emisi'#243'n:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 476.220780000000000000
          Top = 37.795300000000000000
          Width = 52.913385826771700000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 600.945270000000000000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Rev:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 695.433520000000000000
        Width = 718.110700000000000000
        object Memo30: TfrxMemoView
          Left = 7.559060000000000000
          Width = 702.992580000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            
              'Este documento es propiedad intelectual de Servicios SIANI, S.A.' +
              ' de C.V. Queda prohibida la reproducci'#243'n parcial o total de este' +
              ' sin consentimiento por escrito de la empresa.'
            
              'S'#243'lo el personal autorizado en el Sistema Integrado de Gesti'#243'n p' +
              'odr'#225' emitir copias controladas.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            'Reponsable:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 49.133890000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            'Grupo:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 49.133890000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            'Sub-Grupo:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 49.133890000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            'Secci'#243'n:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 143.622140000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."Responsable"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 143.622140000000000000
          Top = 18.897650000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."headerg"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."Subgrupo"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 143.622140000000000000
          Top = 56.692950000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."seccion"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 124.724490000000000000
          Width = 325.039580000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          HAlign = haCenter
          Memo.UTF8W = (
            'CUMPLIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 325.039580000000000000
          Top = 124.724490000000000000
          Width = 68.031540000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          HAlign = haCenter
          Memo.UTF8W = (
            'CUMPLE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 559.370440000000000000
          Top = 124.724490000000000000
          Width = 158.740260000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          HAlign = haCenter
          Memo.UTF8W = (
            'ACCI'#211'N APLAZADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 393.071120000000000000
          Top = 124.724490000000000000
          Width = 166.299222360000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          HAlign = haCenter
          Memo.UTF8W = (
            'ACCI'#211'N INMEDIATA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        Condition = 'registros_detalles."Grupo"'
        KeepTogether = True
        object Memo7: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            '[registros_detalles."Grupo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 480.000310000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        DataSetName = 'registros_detalles'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 325.039580000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."Descripciones"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 325.039580000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[registros_detalles."Cumple"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 393.071120000000000000
          Width = 173.858380000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[registros_detalles."AccionInmediata"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[registros_detalles."AccionAplazada"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 128.504020000000000000
        Top = 506.457020000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Left = 275.905690000000000000
          Top = 105.826840000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nombre y Firma')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 83.149660000000000000
          Width = 551.811380000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 49407
          HAlign = haCenter
          Memo.UTF8W = (
            
              'NOTA: En caso de que un cumplimiento no sea aprobado se requerir' +
              #225' la '
            'elaboraci'#243'n de un Reporte de Mantenimiento (FOR-SIG-30).')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBMantenimiento: TfrxDBDataset
    UserName = 'ds_Mantenimiento'
    CloseDataSource = False
    DataSet = zReporteMto
    BCDToCurrency = False
    Left = 794
    Top = 216
  end
  object zReporteMto: TUniQuery
    Connection = connection.Uconnection
    Left = 642
    Top = 248
  end
  object zReporteMtoDetAmp: TUniQuery
    Connection = connection.Uconnection
    Left = 538
    Top = 254
  end
  object frxDBMtoVolt: TfrxDBDataset
    UserName = 'ds_MtoVolt'
    CloseDataSource = False
    DataSet = zReporteMtoDetVolt
    BCDToCurrency = False
    Left = 826
    Top = 294
  end
  object frxDBDMtoAmp: TfrxDBDataset
    UserName = 'ds_MtoAmp'
    CloseDataSource = False
    DataSet = zReporteMtoDetAmp
    BCDToCurrency = False
    Left = 794
    Top = 262
  end
  object zReporteMtoDetVolt: TUniQuery
    Connection = connection.Uconnection
    Left = 682
    Top = 286
  end
  object zFallas: TUniQuery
    Connection = connection.Uconnection
    Left = 543
    Top = 393
  end
  object dsFallas: TDataSource
    DataSet = zFallas
    Left = 543
    Top = 441
  end
  object frxDBFallas: TfrxDBDataset
    UserName = 'ds_fallas'
    CloseDataSource = False
    DataSet = zReporteFallas
    BCDToCurrency = False
    Left = 607
    Top = 388
  end
  object zReporteFallas: TUniQuery
    Connection = connection.Uconnection
    Left = 608
    Top = 440
  end
  object ReporteFallas: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43215.679208460650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <ds_fallas."MotivoFalla">='#39'MALA OPERACI'#211'N'#39' then'
      '  begin'
      '       Memo17.Text := '#39'X'#39';'
      '  end else if <ds_fallas."MotivoFalla">='#39'FALLA DEL EQUIPO'#39' then'
      '  begin'
      '       Memo18.Text := '#39'X'#39';'
      '  end else if <ds_fallas."MotivoFalla">='#39'OTRO'#39' then'
      '  begin'
      '       Memo19.Text := '#39'X'#39';'
      '  end;'
      ''
      '  if <ds_fallas."Prioridad">='#39'Normal'#39' then'
      '  begin'
      '       Memo24.Font.Color := clWhite;'
      '       Memo24.Color := clRed;'
      '  end else if <ds_fallas."Prioridad">='#39'Alta'#39' then'
      '  begin'
      '       Memo32.Font.Color := clWhite;'
      '       Memo32.Color := clRed;'
      '  end;'
      ''
      'end;'
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = ReporteFallasGetValue
    OnReportPrint = 'no '
    Left = 655
    Top = 396
    Datasets = <
      item
        DataSet = frxDBFallas
        DataSetName = 'ds_fallas'
      end
      item
        DataSet = frxDBFallas
        DataSetName = 'ds_fallas'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
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
    object ReporteDeFallas: TfrxReportPage
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
        Height = 102.047214800000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Shape1: TfrxShapeView
          Width = 740.787880000000000000
          Height = 79.370130000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
        end
        object Picture1: TfrxPictureView
          Top = 3.779530000000001000
          Width = 113.385900000000000000
          Height = 71.811070000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo52: TfrxMemoView
          Left = 502.677165354331000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."FechaEmision"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 502.677165354331000000
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
        object Memo55: TfrxMemoView
          Left = 713.953217000000000000
          Width = 26.456710000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 679.937447000000000000
          Width = 34.015770000000000000
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
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 581.669667000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PMP-SSI-04')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 502.677165354331000000
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
          Left = 113.385826770000000000
          Top = 39.685039370000000000
          Width = 389.291590000000000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE FALLAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 113.385826770000000000
          Width = 389.291590000000000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 113.385826770000000000
          Top = 79.149608740000000000
          Width = 389.291338580000000000
          Height = 22.677165350000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."NombreUsuario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = -0.377953000000000000
          Top = 79.149608740000000000
          Width = 113.385826770000000000
          Height = 22.677165350000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Asignado a:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 582.047620000000000000
          Top = 79.149608740000000000
          Width = 158.740260000000000000
          Height = 22.677165350000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."Ubicacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 502.677490000000000000
          Top = 79.149608740000000000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Ubicaci'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 786.142240000000000000
        Width = 740.409927000000000000
        object Rich1: TfrxRichView
          Width = 740.787880000000000000
          Height = 34.015770000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C6663686172736574302043616C69627269
            3B7D7B5C66315C666E696C5C666368617273657430205461686F6D613B7D7D0D
            0A7B5C636F6C6F7274626C203B5C72656438395C677265656E38395C626C7565
            38393B5C726564305C677265656E305C626C75653235353B7D0D0A7B5C2A5C67
            656E657261746F722052696368656432302031302E302E31363239397D5C7669
            65776B696E64345C756331200D0A5C706172645C77696463746C7061725C7163
            5C7471635C7478343235325C7471725C7478383530345C6366315C66305C6673
            31365C6C616E673330383220507269766164612042616C6C656E61202334204B
            6D2E20392E3520436172722E204361726D656E202D2050756572746F20526561
            6C2E204672616363696F6E616D69656E746F2048616369656E64612064656C20
            4D61722E2043642E2064656C204361726D656E2C2043616D70656368652E2043
            2E502E2032343135375C7061720D0A54656C2E202B3532202839333829203131
            38203632203131202020204C6164612073696E20636F73746F20303120383030
            2038342031352038313120202020207C20202020456D61696C3A207B5C636630
            5C667332327B5C6669656C647B5C2A5C666C64696E73747B48595045524C494E
            4B20226D61696C746F3A636F72706F72617469766F407369616E692E636F6D2E
            6D7822207D7D7B5C666C6472736C747B5C756C5C6366325C6366325C756C5C66
            73313620636F72706F72617469766F407369616E692E636F6D2E6D787D7D7D7D
            5C66305C667331362020205C6366305C66315C6C616E67323035385C7061720D
            0A7D0D0A00}
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 77.527830000000000000
        Top = 646.299630000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Left = 0.220470000000000000
          Top = 32.173469999999960000
          Width = 514.015748030000000000
          Height = 34.015770000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."NombreUsuario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 514.016080000000000000
          Top = 32.173469999999960000
          Width = 226.393847000000000000
          Height = 34.015770000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 9.496290000000159000
          Width = 513.637648820000000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Nombre (participantes):')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 513.637648820000000000
          Top = 9.496290000000159000
          Width = 226.393368820000000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Firma')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 395.126470000000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        DataSet = frxDBFallas
        DataSetName = 'ds_fallas'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baLeft
          Top = 163.889919999999000000
          Width = 740.409448820000000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Estado del Equipo (Indique cuales son los accesorios faltantes):')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 0.456710000000000000
          Top = 186.567099999999000000
          Width = 740.409927000000000000
          Height = 68.031540000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."EstadoEquipo"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 255.165739999999000000
          Width = 226.393368820000000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Motivo de la falla:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 226.393368820000000000
          Top = 255.165739999999000000
          Width = 513.637648820000000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Observaciones:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 0.677180000000000000
          Top = 277.842919999998900000
          Width = 226.393847000000000000
          Height = 86.929190000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 226.448980000000000000
          Top = 277.842919999998900000
          Width = 514.015748030000000000
          Height = 86.929190000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."Observacion"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 4.456710000000000000
          Top = 286.559369999999000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Mala Operaci'#243'n:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 4.456710000000000000
          Top = 313.016079999999000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Falla del Equipo:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 4.456710000000000000
          Top = 339.472789999998900000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Otro')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 129.181200000000000000
          Top = 286.559369999999000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 129.181200000000000000
          Top = 313.016079999999000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 129.181200000000000000
          Top = 339.472789999998900000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Top = 114.133889999999200000
          Width = 740.409448820000000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Servicio Requerido:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = -0.220470000000000000
          Top = 45.543290000000040000
          Width = 740.409927000000000000
          Height = 68.031540000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."FallaReportada"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Align = baLeft
          Top = 22.866109999999990000
          Width = 740.409448820000000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            'Falla Reportada:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = -0.220470000000000000
          Top = 136.929189999999000000
          Width = 740.409927000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."ServicioRequerido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 113.385826770000000000
          Width = 389.291338580000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."NoEconomico"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          Left = -0.377953000000000000
          Width = 113.385826770000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'No. Econ'#243'mico:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 582.047620000000000000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Normal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 502.677490000000000000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Prioridad:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 661.417750000000000000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Alta')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo22: TfrxMemoView
          Left = 113.944886770000000000
          Top = -0.000065909999989344
          Width = 389.291338580000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[ds_fallas."NomInsumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 0.181107000000000000
          Top = -0.000065909999989344
          Width = 113.385826770000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Equipo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 582.606680000000000000
          Top = -0.000065909999989344
          Width = 158.740260000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_fallas."Tiempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 503.236550000000000000
          Top = -0.000065909999989344
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tiempo:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object zMovimientos: TUniQuery
    Connection = connection.Uconnection
    Left = 999
    Top = 245
  end
  object dsMovimientos: TDataSource
    DataSet = zMovimientos
    Left = 945
    Top = 293
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 1050
    Top = 194
  end
  object rDiario: TfrxReport
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
    ReportOptions.LastChange = 43282.779924710650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    OnReportPrint = 'no '
    Left = 888
    Top = 240
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxDBEntrada
        DataSetName = 'frxDBEntrada'
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Picture1: TfrxPictureView
          Width = 166.299212600000000000
          Height = 75.590551180000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 166.299320000000000000
          Width = 808.819420000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 83.149660000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'VALE DE SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 105.826840000000000000
          Width = 975.118605750000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Datos del Vale de Salida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Top = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Folio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 381.732530000000000000
          Top = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 589.606680000000000000
          Top = 124.724490000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'N'#176' de Proyecto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 79.370130000000000000
          Top = 124.724490000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBEntrada."sFolioSalida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 461.102660000000000000
          Top = 124.724490000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Fecha]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 687.874460000000000000
          Top = 124.724490000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBEntrada."sIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 309.921460000000000000
        Width = 980.410082000000000000
        DataSet = frmrepositorio.frxDBEntrada
        DataSetName = 'frxDBEntrada'
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 45.354360000000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."Insumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 117.165430000000000000
          Width = 49.133890000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 393.071120000000000000
          Width = 582.047620000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBEntrada."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 336.378170000000000000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 260.787570000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sModelo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 166.299320000000000000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."Marca"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 164.425316460000000000
        Top = 389.291590000000000000
        Width = 980.410082000000000000
        object Memo89: TfrxMemoView
          Left = 672.756340000000000000
          Top = 55.267780000000020000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBI'#211)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 672.756340000000000000
          Top = 108.181200000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE Y FIRMA DE QUIEN RECIBE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 672.756340000000000000
          Top = 74.165430000000010000
          Width = 302.362400000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RECIBE_FIRMA]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo92: TfrxMemoView
          Left = 786.142240000000000000
          Top = 147.417440000000000000
          Width = 188.966981390000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 55.267780000000020000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTREG'#211)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 108.181200000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE Y FIRMA DE QUIEN ENTREGA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Top = 74.165430000000010000
          Width = 302.362400000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENTREGA_FIRMA]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 18.897650000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[<frxDBEntrada."mComentarios">]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 786.142240000000000000
          Top = 128.504020000000000000
          Width = 188.966981390000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Formato: PGCA.001.FO.05.R1')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 37.795278030000000000
        Top = 249.448980000000000000
        Width = 980.410082000000000000
        object Memo27: TfrxMemoView
          Top = 3.779529999999994000
          Width = 45.354360000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Item')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 393.071120000000000000
          Top = 3.779529999999994000
          Width = 582.047620000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n del Producto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 166.299320000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 260.787570000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 45.354360000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Parte')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxReporteValida: TfrxDBDataset
    UserName = 'frxDBRequisicion'
    CloseDataSource = False
    DataSet = reporte
    BCDToCurrency = False
    Left = 1058
    Top = 247
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    DataSet = reporte
    BCDToCurrency = False
    Left = 1008
    Top = 317
  end
end
