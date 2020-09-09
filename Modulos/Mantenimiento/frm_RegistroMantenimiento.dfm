object frmRegistroMantenimiento: TfrmRegistroMantenimiento
  Left = 0
  Top = 0
  Caption = 'Registro de Mantenimiento'
  ClientHeight = 511
  ClientWidth = 1101
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
    Width = 1101
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1101
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 541
      Top = 1
      Width = 559
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 541
      ExplicitTop = 1
      ExplicitWidth = 559
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 559
        Height = 33
        ExplicitWidth = 559
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = -2
          Height = 31
          Visible = False
          ExplicitLeft = -2
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 78
          Height = 31
          Visible = False
          ExplicitLeft = 78
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 158
          Height = 31
          Visible = False
          ExplicitLeft = 158
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 398
          Height = 31
          OnClick = btnPrinterClick
          ExplicitLeft = 398
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 478
          Height = 31
          OnClick = btnDetalleClick
          ExplicitLeft = 478
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 238
          Height = 31
          ExplicitLeft = 238
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 318
          Height = 31
          ExplicitLeft = 318
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Registro de Mantenimientos'
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
      Left = 441
      Top = 10
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 69
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1101
    Height = 476
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 541
      Height = 474
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 437
        Width = 539
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
          Width = 537
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 347
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 347
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
        Top = 429
        Width = 539
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_mantenimiento: TcxGrid
        Left = 1
        Top = 1
        Width = 539
        Height = 428
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
            MinWidth = 0
            Width = 0
          end
          object cxView_mantenimientoColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Insumo'
            Width = 267
          end
          object cxView_mantenimientoColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Fabricante'
            Width = 20
          end
          object cxView_mantenimientoColumn7: TcxGridDBColumn
            Caption = 'N'#250'mero Econ'#243'mico'
            DataBinding.FieldName = 'NumEconomico'
            Width = 20
          end
          object cxView_mantenimientoColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'SubFamilia'
            Visible = False
            GroupIndex = 2
            Width = 86
          end
          object cxView_mantenimientoColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Estado'
            Width = 41
          end
          object cxView_mantenimientoColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'Familia'
            Visible = False
            GroupIndex = 1
          end
          object cxView_mantenimientoColumn8: TcxGridDBColumn
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
      Left = 542
      Top = 1
      Width = 6
      Height = 474
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 548
      Top = 1
      Width = 552
      Height = 474
      Align = alRight
      TabOrder = 2
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 550
        Height = 472
        Align = alClient
        TabOrder = 0
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 548
          Height = 35
          Align = alTop
          TabOrder = 0
          DesignSize = (
            548
            35)
          object cxNuevoDetalle: TcxButton
            Left = 287
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
            Left = 374
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
            Left = 461
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
          Top = 436
          Width = 548
          Height = 35
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            548
            35)
          object cxCancelarDetalle: TcxButton
            Left = 461
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
            Left = 368
            Top = 4
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
        object cxPageDet: TcxPageControl
          Left = 1
          Top = 63
          Width = 548
          Height = 373
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Properties.ActivePage = cxTabFallas
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          ClientRectBottom = 371
          ClientRectLeft = 2
          ClientRectRight = 546
          ClientRectTop = 30
          object cxTabCalibracion: TcxTabSheet
            Caption = 'Reporte de Calibraci'#243'n'
            ImageIndex = 14
            object cxPageDetalle: TcxPageControl
              Left = 0
              Top = 0
              Width = 544
              Height = 341
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Properties.ActivePage = cxTabSheet2
              Properties.CustomButtons.Buttons = <>
              Properties.Images = connection.cxIconos16
              OnChange = cxPageDetalleChange
              ClientRectBottom = 339
              ClientRectLeft = 2
              ClientRectRight = 542
              ClientRectTop = 30
              object cxTabSheet2: TcxTabSheet
                Caption = 'Calibraci'#243'n'
                ImageIndex = 11
                object cxGridMto: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 540
                  Height = 102
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
                    object cxView_MtoColumn2: TcxGridDBColumn
                      DataBinding.FieldName = 'Fecha'
                      Width = 123
                    end
                    object cxView_MtoColumn5: TcxGridDBColumn
                      Caption = 'Fecha Pr'#243'xima'
                      DataBinding.FieldName = 'FechaProxima'
                      Width = 135
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
                object cxSplitter4: TcxSplitter
                  Left = 0
                  Top = 102
                  Width = 540
                  Height = 6
                  AlignSplitter = salBottom
                  Visible = False
                end
                object PanelDown6: TPanel
                  Left = 0
                  Top = 108
                  Width = 540
                  Height = 201
                  Align = alBottom
                  TabOrder = 2
                  Visible = False
                  object dxLayoutControl5: TdxLayoutControl
                    Left = 1
                    Top = 1
                    Width = 538
                    Height = 199
                    Align = alClient
                    TabOrder = 0
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object dtFecha: TcxDBDateEdit
                      Left = 138
                      Top = 40
                      DataBinding.DataField = 'Fecha'
                      DataBinding.DataSource = dsMtoDetalle
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
                      Width = 167
                    end
                    object mObservacion: TcxDBMemo
                      Left = 138
                      Top = 98
                      DataBinding.DataField = 'Observaciones'
                      DataBinding.DataSource = dsMtoDetalle
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
                      Height = 67
                      Width = 392
                    end
                    object edtCodigo: TcxDBTextEdit
                      Left = 138
                      Top = 11
                      DataBinding.DataField = 'Codigo'
                      DataBinding.DataSource = dsMtoDetalle
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
                      Width = 208
                    end
                    object edtFechaCalibra: TcxDBDateEdit
                      Left = 402
                      Top = 40
                      DataBinding.DataField = 'FechaProxima'
                      DataBinding.DataSource = dsMtoDetalle
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
                      OnKeyUp = GlobalKeyUp
                      Width = 129
                    end
                    object lcbInstrumentoM: TcxDBLookupComboBox
                      Left = 138
                      Top = 69
                      DataBinding.DataField = 'IdInstrumento'
                      DataBinding.DataSource = dsMtoDetalle
                      ParentFont = False
                      Properties.KeyFieldNames = 'IdInsumo'
                      Properties.ListColumns = <
                        item
                          FieldName = 'Insumo'
                        end>
                      Properties.ListOptions.ShowHeader = False
                      Properties.ListSource = dsInstrumento
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
                      Width = 439
                    end
                    object dxLayoutControl5Group_Root: TdxLayoutGroup
                      AlignHorz = ahClient
                      AlignVert = avClient
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutItem14: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup7
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      CaptionOptions.Text = 'Fecha:'
                      Control = dtFecha
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutItem17: TdxLayoutItem
                      Parent = dxLayoutControl5Group_Root
                      AlignHorz = ahClient
                      CaptionOptions.AlignVert = tavTop
                      CaptionOptions.Text = 'Observaciones:'
                      Control = mObservacion
                      ControlOptions.ShowBorder = False
                      Index = 3
                    end
                    object dxLayoutItem7: TdxLayoutItem
                      Parent = dxLayoutControl5Group_Root
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      CaptionOptions.Text = 'C'#243'digo'
                      Control = edtCodigo
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutItem15: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup7
                      AlignHorz = ahClient
                      AlignVert = avClient
                      CaptionOptions.Text = 'Fecha Pr'#243'xima:'
                      Control = edtFechaCalibra
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutControl5Group_Root
                      AlignHorz = ahClient
                      AlignVert = avTop
                      LayoutDirection = ldHorizontal
                      Index = 1
                      AutoCreated = True
                    end
                    object dxLayoutItem18: TdxLayoutItem
                      Parent = dxLayoutControl5Group_Root
                      AlignHorz = ahClient
                      CaptionOptions.Text = 'Instrumento Medicion:'
                      Control = lcbInstrumentoM
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                  end
                end
              end
              object cxTabsheet1: TcxTabSheet
                Caption = 'Pruebas de Amperaje'
                ImageIndex = 50
                OnShow = cxTabsheet1Show
                object cxAmperaje: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 540
                  Height = 165
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object cxAmperajeView: TcxGridDBTableView
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
                    DataController.DataSource = dsAmperaje
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
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.Indicator = True
                    object cxAmperajeViewColumn7: TcxGridDBColumn
                      DataBinding.FieldName = 'Mantenimiento'
                      Width = 92
                    end
                    object cxAmperajeViewColumn1: TcxGridDBColumn
                      Caption = 'Electrodo  '#216
                      DataBinding.FieldName = 'ElectrodoDiametro'
                      HeaderAlignmentHorz = taCenter
                      Width = 69
                    end
                    object cxAmperajeViewColumn2: TcxGridDBColumn
                      Caption = 'Electrodo   Tipo'
                      DataBinding.FieldName = 'Tipo'
                      HeaderAlignmentHorz = taCenter
                      Width = 79
                    end
                    object cxAmperajeViewColumn3: TcxGridDBColumn
                      Caption = 'Par'#225'metros de Prueba   Amp'
                      DataBinding.FieldName = 'PPS_Amp'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      HeaderAlignmentHorz = taCenter
                      Width = 91
                    end
                    object cxAmperajeViewColumn4: TcxGridDBColumn
                      Caption = 'Lectura M'#225'quina   Amp CD'
                      DataBinding.FieldName = 'LM_AmpCD'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      HeaderAlignmentHorz = taCenter
                      Width = 90
                    end
                    object cxAmperajeViewColumn5: TcxGridDBColumn
                      Caption = 'Lectura instrumento de medici'#243'n  1'
                      DataBinding.FieldName = 'LIM_1'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      HeaderAlignmentHorz = taCenter
                      Width = 123
                    end
                    object cxAmperajeViewColumn6: TcxGridDBColumn
                      Caption = '% Variaci'#243'n   Amp CD'
                      DataBinding.FieldName = 'Variacion_AmpCD'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      HeaderAlignmentHorz = taCenter
                      Width = 93
                    end
                  end
                  object cxAmperajeLevel: TcxGridLevel
                    GridView = cxAmperajeView
                  end
                end
                object cxSplitter2: TcxSplitter
                  Left = 0
                  Top = 165
                  Width = 540
                  Height = 6
                  AlignSplitter = salBottom
                  Visible = False
                end
                object PanelDown1: TPanel
                  Left = 0
                  Top = 171
                  Width = 540
                  Height = 138
                  Align = alBottom
                  TabOrder = 2
                  Visible = False
                  object c: TdxLayoutControl
                    Left = 1
                    Top = 1
                    Width = 538
                    Height = 136
                    Align = alClient
                    TabOrder = 0
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object edtElectrodo: TcxDBTextEdit
                      Left = 201
                      Top = 40
                      DataBinding.DataField = 'ElectrodoDiametro'
                      DataBinding.DataSource = dsAmperaje
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
                      Width = 165
                    end
                    object edtPrueba: TcxDBCurrencyEdit
                      Left = 201
                      Top = 69
                      DataBinding.DataField = 'PPS_Amp'
                      DataBinding.DataSource = dsAmperaje
                      ParentFont = False
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = ',0.00;-,0.00'
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
                    object edtLecturaIns: TcxDBCurrencyEdit
                      Left = 201
                      Top = 98
                      DataBinding.DataField = 'LIM_1'
                      DataBinding.DataSource = dsAmperaje
                      ParentFont = False
                      Properties.DecimalPlaces = 3
                      Properties.DisplayFormat = ',0.000;-,0.000'
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
                      Width = 121
                    end
                    object spTipoElectrodo: TcxDBSpinEdit
                      Left = 472
                      Top = 40
                      DataBinding.DataField = 'Tipo'
                      DataBinding.DataSource = dsAmperaje
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
                      Width = 155
                    end
                    object edtLecMaquina: TcxDBCurrencyEdit
                      Left = 472
                      Top = 69
                      DataBinding.DataField = 'LM_AmpCD'
                      DataBinding.DataSource = dsAmperaje
                      ParentFont = False
                      Properties.DecimalPlaces = 3
                      Properties.DisplayFormat = ',0.000;-,0.000'
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
                    object edtVariacion: TcxDBCurrencyEdit
                      Left = 472
                      Top = 98
                      DataBinding.DataField = 'Variacion_AmpCD'
                      DataBinding.DataSource = dsAmperaje
                      ParentFont = False
                      Properties.DecimalPlaces = 3
                      Properties.DisplayFormat = ',0.000;-,0.000'
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
                    object lcbMantenimiento: TcxDBLookupComboBox
                      Left = 201
                      Top = 11
                      DataBinding.DataField = 'IdMantenimiento'
                      DataBinding.DataSource = dsAmperaje
                      ParentFont = False
                      Properties.KeyFieldNames = 'IdMantenimientoDetalle'
                      Properties.ListColumns = <
                        item
                          FieldName = 'Codigo'
                        end>
                      Properties.ListSource = dsMtoDetalle
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
                      Width = 389
                    end
                    object cGroup_Root: TdxLayoutGroup
                      AlignHorz = ahClient
                      AlignVert = avTop
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutItem1: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup1
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      CaptionOptions.Text = 'Electrodo  '#216
                      Control = edtElectrodo
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutItem3: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup1
                      CaptionOptions.Text = 'Par'#225'metros de Prueba:'
                      Control = edtPrueba
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutItem5: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup1
                      CaptionOptions.Text = 'Lectura instrumento de medici'#243'n:'
                      Control = edtLecturaIns
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                    object dxLayoutItem2: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup2
                      AlignVert = avTop
                      CaptionOptions.Text = 'Electrodo   Tipo'
                      Control = spTipoElectrodo
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutAutoCreatedGroup4
                      Index = 0
                      AutoCreated = True
                    end
                    object dxLayoutItem4: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup2
                      CaptionOptions.Text = 'Lectura M'#225'quina:'
                      Control = edtLecMaquina
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutAutoCreatedGroup4
                      AlignHorz = ahClient
                      Index = 1
                      AutoCreated = True
                    end
                    object dxLayoutItem6: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup2
                      AlignVert = avClient
                      CaptionOptions.Text = '% Variaci'#243'n:'
                      Control = edtVariacion
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                    object dxLayoutItem9: TdxLayoutItem
                      Parent = cGroup_Root
                      CaptionOptions.Text = 'Calibraciones:'
                      Control = lcbMantenimiento
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                      Parent = cGroup_Root
                      AlignHorz = ahClient
                      LayoutDirection = ldHorizontal
                      Index = 1
                      AutoCreated = True
                    end
                  end
                end
              end
              object cxTabSheet3: TcxTabSheet
                Caption = 'Pruebas de Voltaje'
                ImageIndex = 36
                OnShow = cxTabSheet3Show
                object cxVoltaje: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 540
                  Height = 165
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object cxVoltajeView: TcxGridDBTableView
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
                    DataController.DataSource = dsVoltaje
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
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.Indicator = True
                    object cxVoltajeViewColumn6: TcxGridDBColumn
                      DataBinding.FieldName = 'Mantenimiento'
                      Width = 110
                    end
                    object cxVoltajeViewColumn1: TcxGridDBColumn
                      Caption = 'Electrodo  '#216
                      DataBinding.FieldName = 'ElectrodoDiametro'
                      HeaderAlignmentHorz = taCenter
                      Width = 89
                    end
                    object cxVoltajeViewColumn2: TcxGridDBColumn
                      Caption = 'Electrodo  Tipo'
                      DataBinding.FieldName = 'ElectrodoTipo'
                      HeaderAlignmentHorz = taCenter
                      Width = 108
                    end
                    object cxVoltajeViewColumn3: TcxGridDBColumn
                      Caption = 'Lectura M'#225'quina   Volt CD'
                      DataBinding.FieldName = 'LM_VoltCD'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      HeaderAlignmentHorz = taCenter
                      Width = 139
                    end
                    object cxVoltajeViewColumn4: TcxGridDBColumn
                      Caption = 'Lectura instrumento de medici'#243'n   Volt CD'
                      DataBinding.FieldName = 'LIM_VoltCD'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      HeaderAlignmentHorz = taCenter
                      Width = 124
                    end
                    object cxVoltajeViewColumn5: TcxGridDBColumn
                      Caption = '% Variaci'#243'n Volt CD'
                      DataBinding.FieldName = 'Variacion_VoltCD'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      HeaderAlignmentHorz = taCenter
                      Width = 67
                    end
                  end
                  object cxVoltajeLevel: TcxGridLevel
                    GridView = cxVoltajeView
                  end
                end
                object PanelDown2: TPanel
                  Left = 0
                  Top = 171
                  Width = 540
                  Height = 138
                  Align = alBottom
                  TabOrder = 1
                  Visible = False
                  object dxLayoutControl1: TdxLayoutControl
                    Left = 1
                    Top = 1
                    Width = 538
                    Height = 136
                    Align = alClient
                    TabOrder = 0
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object edtelectroTipo: TcxDBSpinEdit
                      Left = 458
                      Top = 40
                      DataBinding.DataField = 'ElectrodoTipo'
                      DataBinding.DataSource = dsVoltaje
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
                      OnKeyUp = GlobalKeyUp
                      Width = 155
                    end
                    object edtVariacionVolt: TcxDBCurrencyEdit
                      Left = 402
                      Top = 98
                      DataBinding.DataField = 'Variacion_VoltCD'
                      DataBinding.DataSource = dsVoltaje
                      ParentFont = False
                      Properties.DecimalPlaces = 3
                      Properties.DisplayFormat = ',0.000;-,0.000'
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
                    object edtInsMedicion: TcxDBCurrencyEdit
                      Left = 201
                      Top = 69
                      DataBinding.DataField = 'LIM_VoltCD'
                      DataBinding.DataSource = dsVoltaje
                      ParentFont = False
                      Properties.DecimalPlaces = 3
                      Properties.DisplayFormat = ',0.000;-,0.000'
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
                      Width = 155
                    end
                    object cbMaterial: TcxDBLookupComboBox
                      Left = 201
                      Top = 11
                      DataBinding.DataField = 'IdMantenimiento'
                      DataBinding.DataSource = dsVoltaje
                      ParentFont = False
                      Properties.KeyFieldNames = 'IdMantenimientoDetalle'
                      Properties.ListColumns = <
                        item
                          FieldName = 'Codigo'
                        end>
                      Properties.ListSource = dsMtoDetalle
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
                      Width = 389
                    end
                    object edtMaquinaLEc: TcxDBCurrencyEdit
                      Left = 201
                      Top = 98
                      DataBinding.DataField = 'LM_VoltCD'
                      DataBinding.DataSource = dsVoltaje
                      ParentFont = False
                      Properties.DecimalPlaces = 3
                      Properties.DisplayFormat = ',0.000;-,0.000'
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
                    object edtElectrodoVolt: TcxDBTextEdit
                      Left = 201
                      Top = 40
                      DataBinding.DataField = 'ElectrodoDiametro'
                      DataBinding.DataSource = dsVoltaje
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
                      Width = 160
                    end
                    object dxLayoutGroup1: TdxLayoutGroup
                      AlignHorz = ahClient
                      AlignVert = avTop
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutItem11: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup8
                      AlignHorz = ahClient
                      AlignVert = avTop
                      CaptionOptions.Text = 'Electrodo  Tipo:'
                      Control = edtelectroTipo
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutItem13: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup5
                      AlignHorz = ahClient
                      AlignVert = avTop
                      CaptionOptions.Text = '% Variaci'#243'n:'
                      Control = edtVariacionVolt
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutItem10: TdxLayoutItem
                      Parent = dxLayoutGroup1
                      AlignHorz = ahClient
                      AlignVert = avTop
                      CaptionOptions.Text = 'Lectura instrumento de medici'#243'n:'
                      Control = edtInsMedicion
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                    object dxLayoutItem16: TdxLayoutItem
                      Parent = dxLayoutGroup1
                      CaptionOptions.Text = 'Mantenimiento'
                      Control = cbMaterial
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutItem12: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup5
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      CaptionOptions.Text = 'Lectura M'#225'quina:'
                      Control = edtMaquinaLEc
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutGroup1
                      AlignHorz = ahClient
                      AlignVert = avTop
                      LayoutDirection = ldHorizontal
                      Index = 3
                      AutoCreated = True
                    end
                    object dxLayoutItem8: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup8
                      AlignHorz = ahLeft
                      AlignVert = avClient
                      CaptionOptions.Text = 'Electrodo  '#216
                      Control = edtElectrodoVolt
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutGroup1
                      AlignVert = avTop
                      LayoutDirection = ldHorizontal
                      Index = 1
                      AutoCreated = True
                    end
                  end
                end
                object cxSplitter3: TcxSplitter
                  Left = 0
                  Top = 165
                  Width = 540
                  Height = 6
                  AlignSplitter = salBottom
                  Visible = False
                end
              end
            end
          end
          object cxTabFallas: TcxTabSheet
            Caption = 'Reporte de Falla'
            ImageIndex = 9
            OnShow = cxTabFallasShow
            object cxPageDetalle2: TcxPageControl
              Left = 0
              Top = 0
              Width = 544
              Height = 341
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Properties.ActivePage = cxTabSheet4
              Properties.CustomButtons.Buttons = <>
              Properties.Images = connection.cxIconos16
              ClientRectBottom = 339
              ClientRectLeft = 2
              ClientRectRight = 542
              ClientRectTop = 30
              object cxTabSheet4: TcxTabSheet
                Caption = 'Fallas'
                ImageIndex = 11
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 540
                  Height = 53
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
                object cxSplitter5: TcxSplitter
                  Left = 0
                  Top = 53
                  Width = 540
                  Height = 6
                  AlignSplitter = salBottom
                  Visible = False
                end
                object PanelDownF1: TPanel
                  Left = 0
                  Top = 59
                  Width = 540
                  Height = 250
                  Align = alBottom
                  TabOrder = 2
                  Visible = False
                  object dxLayoutControl2: TdxLayoutControl
                    Left = 1
                    Top = 1
                    Width = 538
                    Height = 248
                    Align = alClient
                    TabOrder = 0
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object mObservacionF: TcxDBMemo
                      Left = 124
                      Top = 190
                      DataBinding.DataField = 'Observacion'
                      DataBinding.DataSource = dsFallas
                      ParentFont = False
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
                      Height = 40
                      Width = 503
                    end
                    object edtCodigoF: TcxDBTextEdit
                      Left = 124
                      Top = 11
                      DataBinding.DataField = 'Codigo'
                      DataBinding.DataSource = dsFallas
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
                      Width = 208
                    end
                    object dtFechaF: TcxDBDateEdit
                      Left = 389
                      Top = 11
                      DataBinding.DataField = 'Fecha'
                      DataBinding.DataSource = dsFallas
                      ParentFont = False
                      Properties.ShowTime = False
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
                      Width = 208
                    end
                    object mFallaReportada: TcxDBMemo
                      Left = 124
                      Top = 69
                      DataBinding.DataField = 'FallaReportada'
                      DataBinding.DataSource = dsFallas
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
                      Height = 40
                      Width = 503
                    end
                    object mEstadoEquipo: TcxDBMemo
                      Left = 124
                      Top = 144
                      DataBinding.DataField = 'EstadoEquipo'
                      DataBinding.DataSource = dsFallas
                      ParentFont = False
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
                      Height = 40
                      Width = 503
                    end
                    object cbServicioReq: TcxDBComboBox
                      Left = 124
                      Top = 115
                      DataBinding.DataField = 'ServicioRequerido'
                      DataBinding.DataSource = dsFallas
                      ParentFont = False
                      Properties.Items.Strings = (
                        'MANTENIMIENTO PREVENTIVO'
                        'MANTENIMIENTO CORRECTIVO')
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
                    object cbMotivo: TcxDBComboBox
                      Left = 463
                      Top = 115
                      DataBinding.DataField = 'MotivoFalla'
                      DataBinding.DataSource = dsFallas
                      ParentFont = False
                      Properties.Items.Strings = (
                        'MALA OPERACI'#211'N'
                        'FALLA DEL EQUIPO'
                        'OTRO')
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
                    object edtTiempo: TcxDBTextEdit
                      Left = 389
                      Top = 40
                      DataBinding.DataField = 'Tiempo'
                      DataBinding.DataSource = dsFallas
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
                      Width = 121
                    end
                    object edtUbicacion: TcxDBTextEdit
                      Left = 124
                      Top = 40
                      DataBinding.DataField = 'Ubicacion'
                      DataBinding.DataSource = dsFallas
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
                    object cbPrioridad: TcxDBComboBox
                      Left = 246
                      Top = 115
                      DataBinding.DataField = 'Prioridad'
                      DataBinding.DataSource = dsFallas
                      ParentFont = False
                      Properties.Items.Strings = (
                        'Normal'
                        'Alta')
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -12
                      Style.Font.Name = 'Arial'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 6
                      Width = 121
                    end
                    object dxLayoutGroup2: TdxLayoutGroup
                      AlignHorz = ahClient
                      AlignVert = avClient
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutItem21: TdxLayoutItem
                      Parent = dxLayoutGroup2
                      AlignHorz = ahClient
                      CaptionOptions.AlignVert = tavTop
                      CaptionOptions.Text = 'Observaciones:'
                      Control = mObservacionF
                      ControlOptions.ShowBorder = False
                      Index = 4
                    end
                    object dxLayoutItem22: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup3
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      CaptionOptions.Text = 'C'#243'digo'
                      Control = edtCodigoF
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutItem20: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup11
                      AlignHorz = ahClient
                      AlignVert = avClient
                      CaptionOptions.Text = 'Fecha:'
                      Control = dtFechaF
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutGroup2
                      AlignVert = avTop
                      LayoutDirection = ldHorizontal
                      Index = 0
                      AutoCreated = True
                    end
                    object dxLayoutItem19: TdxLayoutItem
                      Parent = dxLayoutGroup2
                      AlignHorz = ahClient
                      CaptionOptions.Text = 'Falla Reportada:'
                      Control = mFallaReportada
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutItem23: TdxLayoutItem
                      Parent = dxLayoutGroup2
                      AlignHorz = ahClient
                      CaptionOptions.Text = 'Estado del Equipo:'
                      Control = mEstadoEquipo
                      ControlOptions.ShowBorder = False
                      Index = 3
                    end
                    object dxLayoutItem24: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup10
                      AlignHorz = ahClient
                      CaptionOptions.Text = 'Servicio Requerido:'
                      Control = cbServicioReq
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutItem25: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup10
                      AlignHorz = ahClient
                      AlignVert = avClient
                      CaptionOptions.Text = 'Motivo de Falla:'
                      Control = cbMotivo
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                    object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutGroup2
                      LayoutDirection = ldHorizontal
                      Index = 2
                      AutoCreated = True
                    end
                    object dxLayoutItem27: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup11
                      AlignHorz = ahClient
                      AlignVert = avTop
                      CaptionOptions.Text = 'Tiempo:'
                      Control = edtTiempo
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutAutoCreatedGroup9
                      AlignHorz = ahClient
                      Index = 1
                      AutoCreated = True
                    end
                    object dxLayoutItem26: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup3
                      AlignHorz = ahClient
                      AlignVert = avTop
                      CaptionOptions.Text = 'Ubicaci'#243'n:'
                      Control = edtUbicacion
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutAutoCreatedGroup9
                      AlignHorz = ahLeft
                      Index = 0
                      AutoCreated = True
                    end
                    object dxLayoutItem28: TdxLayoutItem
                      Parent = dxLayoutAutoCreatedGroup10
                      CaptionOptions.Text = 'Prioridad:'
                      Control = cbPrioridad
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                  end
                end
              end
            end
          end
          object cxTabMantenimiento: TcxTabSheet
            Caption = 'Reporte de Mantenimiento'
            ImageIndex = 10
            TabVisible = False
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 36
          Width = 548
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
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 49
    Top = 188
  end
  object zMaterial: TUniQuery
    AfterScroll = zMaterialAfterScroll
    Left = 49
    Top = 244
  end
  object zVoltaje: TUniQuery
    Connection = connection.Uconnection
    Left = 1002
    Top = 102
  end
  object dsVoltaje: TDataSource
    DataSet = zVoltaje
    Left = 946
    Top = 110
  end
  object zAmperaje: TUniQuery
    Connection = connection.Uconnection
    Left = 618
    Top = 214
  end
  object dsAmperaje: TDataSource
    DataSet = zAmperaje
    Left = 578
    Top = 158
  end
  object zMtoDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 488
    Top = 206
  end
  object dsMtoDetalle: TDataSource
    DataSet = zMtoDetalle
    Left = 488
    Top = 150
  end
  object zInstrumentos: TUniQuery
    Connection = connection.Uconnection
    Left = 413
    Top = 143
  end
  object dsInstrumento: TDataSource
    DataSet = zInstrumentos
    Left = 405
    Top = 191
  end
  object frxDBDMtoAmp: TfrxDBDataset
    UserName = 'ds_MtoAmp'
    CloseDataSource = False
    DataSet = zReporteMtoDetAmp
    BCDToCurrency = False
    Left = 986
    Top = 302
  end
  object zReporteMto: TUniQuery
    Connection = connection.Uconnection
    Left = 994
    Top = 216
  end
  object zReporteMtoDetAmp: TUniQuery
    Connection = connection.Uconnection
    Left = 938
    Top = 302
  end
  object zReporteMtoDetVolt: TUniQuery
    Connection = connection.Uconnection
    Left = 938
    Top = 262
  end
  object frxDBMtoVolt: TfrxDBDataset
    UserName = 'ds_MtoVolt'
    CloseDataSource = False
    DataSet = zReporteMtoDetVolt
    BCDToCurrency = False
    Left = 986
    Top = 262
  end
  object ReporteMto: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43205.730839270840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = ReporteMtoGetValue
    OnReportPrint = 'no '
    Left = 938
    Top = 216
    Datasets = <
      item
        DataSet = frxDBMantenimiento
        DataSetName = 'ds_Mantenimiento'
      end
      item
        DataSet = frmMantenimiento.frxDBMantenimiento
        DataSetName = 'ds_Mantenimiento'
      end
      item
        DataSet = frxDBDMtoAmp
        DataSetName = 'ds_MtoAmp'
      end
      item
        DataSet = frxDBDMtoAmp
        DataSetName = 'ds_MtoAmp'
      end
      item
        DataSet = frxDBMtoVolt
        DataSetName = 'ds_MtoVolt'
      end
      item
        DataSet = frxDBMtoVolt
        DataSetName = 'ds_MtoVolt'
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
    object ConcentradoEmpleados: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 350.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 348.378170000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape1: TfrxShapeView
          Width = 740.787880000000000000
          Height = 79.370130000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
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
          Formats = <
            item
            end
            item
            end>
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_Mantenimiento."FechaEmision"]')
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
            'FOR-SIG-06')
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
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'REGISTRO DE VERIFICACI'#211'N DE VOLTAJE Y AMPERAJE DE M'#193'QUINA DE SOL' +
              'DAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Top = 223.653680000000000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            'DATOS DEL INSTRUMENTO DE MEDICI'#211'N DE REFERENCIA')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Top = 246.330860000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Econ'#243'mico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          Top = 265.228510000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 340.157626770000000000
          Top = 246.330860000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. de Serie')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 340.157626770000000000
          Top = 265.228510000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Align = baRight
          Left = 453.165832510000000000
          Top = 246.330860000000000000
          Width = 287.244094490000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."NumSerieInst"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Align = baRight
          Left = 453.165832510000000000
          Top = 265.228510000000000000
          Width = 287.244094490000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."FabricanteInst"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 113.385985430000000000
          Top = 246.330860000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."NumEcoInst"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 113.385985430000000000
          Top = 265.228510000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."MarcaInst"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Top = 284.126160000000000000
          Width = 154.960656770000000000
          Height = 37.795300000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha de ultima calibraci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 340.157626770000000000
          Top = 284.126160000000000000
          Width = 143.622066770000000000
          Height = 37.795300000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Numero de Certificado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Align = baLeft
          Left = 483.779693540000000000
          Top = 284.126160000000000000
          Width = 257.007874020000000000
          Height = 37.795300000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."FechaProximaInst"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 154.960815430000000000
          Top = 284.126160000000000000
          Width = 185.196823540000000000
          Height = 37.795300000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."FechaInst"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 60.472480000000000000
          Top = 98.267780000000000000
          Width = 679.937447000000000000
          Height = 18.897650000000000000
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
        object Memo76: TfrxMemoView
          Align = baLeft
          Top = 98.267780000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Sitio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Align = baLeft
          Top = 117.165430000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha de calibraci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 340.157700000000000000
          Top = 117.165430000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha de pr'#243'xima calibraci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."Fecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Align = baRight
          Left = 540.094966370000100000
          Top = 117.165430000000000000
          Width = 200.314960630000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."FechaProxima"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Align = baLeft
          Top = 136.063080000000000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            'DATOS DE LA MAQUINA DE SOLDAR')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Align = baLeft
          Top = 158.740260000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' No. Econ'#243'mico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Align = baLeft
          Top = 177.637910000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' Marca')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 340.157626770000000000
          Top = 158.740260000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' No. de Serie')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 340.157626770000000000
          Top = 177.637910000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' Modelo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Align = baRight
          Left = 453.165832510000000000
          Top = 158.740260000000000000
          Width = 287.244094490000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."sNumeroSerie"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Align = baRight
          Left = 453.165832510000000000
          Top = 177.637910000000000000
          Width = 287.244094490000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."sModelo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 113.385985430000000000
          Top = 158.740260000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."NumeroEconomico"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 113.385985430000000000
          Top = 177.637910000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."Marca"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 536.693260000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDMtoAmp
        DataSetName = 'ds_MtoAmp'
        RowCount = 0
        object Memo95: TfrxMemoView
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5847042
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoAmp."ElectrodoDiametro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 105.826840000000000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 1193991
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoAmp."PPS"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 211.653680000000000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoAmp."LM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 317.480520000000000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoAmp."LIM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 423.307360000000000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoAmp."Variacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 52.913420000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5847042
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoAmp."ElectrodoTipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 529.134200000000000000
          Width = 211.653543310000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 1122.520410000000000000
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 427.086890000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Align = baLeft
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
          HAlign = haCenter
          Memo.UTF8W = (
            'RESULTADOS DE PRUEBA EN AMPERAJE')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 528.756247000000000000
          Top = 22.677179999999620000
          Width = 211.653680000000000000
          Height = 64.252010000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Resultado final'
            '(Cumple/No Cumple)'
            '% Variaci'#243'n aceptable '#177'5%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 22.677179999999620000
          Width = 105.826771650000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Electrodo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 105.826840000000000000
          Top = 22.677179999999620000
          Width = 105.826771650000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Par'#225'metros de Prueba'
            'Seleccionados')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 211.653680000000000000
          Top = 22.677179999999620000
          Width = 105.826771650000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Lectura M'#225'quina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 317.480520000000000000
          Top = 22.677179999999620000
          Width = 105.826771650000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Lectura instrumento de medici'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 423.307360000000000000
          Top = 22.677179999999620000
          Width = 105.826771650000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            '% Variaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Top = 68.031539999998460000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            #216)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 105.826840000000000000
          Top = 68.031539999998460000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Amp')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 211.653680000000000000
          Top = 68.031539999998460000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Amp CD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 317.480520000000000000
          Top = 68.031539999998460000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Amp CD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 423.307360000000000000
          Top = 68.031539999998460000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Amp CD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 52.913420000000000000
          Top = 68.031539999998460000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 578.268090000000000000
        Width = 740.409927000000000000
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 113.385900000000000000
        Top = 608.504330000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 26.456710000000160000
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
          HAlign = haCenter
          Memo.UTF8W = (
            'RESULTADOS DE PRUEBA EN VOLTAJE')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baRight
          Left = 528.756247000000000000
          Top = 49.133890000000180000
          Width = 211.653680000000000000
          Height = 64.252010000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Resultado final'
            '(Cumple/No Cumple)'
            '% Variaci'#243'n aceptable '#177'5%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 49.133890000000180000
          Width = 132.283464570000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Electrodo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 132.283550000000000000
          Top = 49.133890000000180000
          Width = 132.283464570000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Lectura M'#225'quina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 264.567100000000000000
          Top = 49.133890000000180000
          Width = 132.283464570000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Lectura instrumento de medici'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 396.850650000000000000
          Top = 49.133890000000180000
          Width = 132.283464570000000000
          Height = 45.354330710000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            '% Variaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 94.488249999999770000
          Width = 66.141732280000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            #216)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 132.283550000000000000
          Top = 94.488249999999770000
          Width = 132.283464570000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Volt CD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 65.763779530000000000
          Top = 94.488249999999770000
          Width = 66.141732280000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Top = 94.488249999999770000
          Width = 132.283464570000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Volt CD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 396.850650000000000000
          Top = 94.488249999999770000
          Width = 132.283464570000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'Volt CD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 275.905690000000000000
        Top = 786.142240000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Align = baCenter
          Left = 9.449064090000020000
          Top = 21.779530000000360000
          Width = 721.511798820000000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baCenter
          Left = 9.449057990000020000
          Top = 44.456710000000040000
          Width = 721.511811020000000000
          Height = 94.488188980000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_Mantenimiento."Observaciones"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Top = 184.299320000000000000
          Width = 283.464566929134000000
          Height = 22.677180000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          HAlign = haBlock
          Memo.UTF8W = (
            'Calibr'#243)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 206.976500000000000000
          Width = 283.464566929134000000
          Height = 56.692888980000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_Mantenimiento."NombreUsuario"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 744.567410000000000000
        Width = 740.409927000000000000
        DataSet = frxDBMtoVolt
        DataSetName = 'ds_MtoVolt'
        RowCount = 0
        object Memo21: TfrxMemoView
          Width = 64.251975830000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5847042
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoVolt."ElectrodoDiametro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 64.252010000000000000
          Width = 68.031471650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5847042
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoVolt."ElectrodoTipo"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 132.283550000000000000
          Width = 132.283481650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoVolt."LM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 264.567100000000000000
          Width = 132.283481650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoVolt."LIM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 396.850650000000000000
          Width = 132.283481650000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_MtoVolt."Variacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 529.134200000000000000
          Width = 211.653543310000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
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
    Left = 1002
    Top = 160
  end
  object dsFallas: TDataSource
    DataSet = zFallas
    Left = 415
    Top = 425
  end
  object zFallas: TUniQuery
    Connection = connection.Uconnection
    Left = 415
    Top = 377
  end
  object zReporteFallas: TUniQuery
    Connection = connection.Uconnection
    Left = 560
    Top = 440
  end
  object frxDBFallas: TfrxDBDataset
    UserName = 'ds_fallas'
    CloseDataSource = False
    DataSet = zReporteFallas
    BCDToCurrency = False
    Left = 503
    Top = 324
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
    ReportOptions.LastChange = 43209.990686597220000000
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
    Left = 567
    Top = 340
    Datasets = <
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
        Height = 658.299630000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
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
        object Memo12: TfrxMemoView
          Align = baLeft
          Top = 260.653680000000000000
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
          Top = 192.063080000000000000
          Width = 740.409927000000000000
          Height = 68.031540000000010000
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
          Top = 169.385900000000000000
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
        object Memo3: TfrxMemoView
          Align = baLeft
          Top = 310.409710000000000000
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
          Top = 333.086890000000000000
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
        object Memo2: TfrxMemoView
          Top = 283.448980000000000000
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
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 402.134200000000000000
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
          Top = 402.134200000000000000
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
          Top = 424.811380000000000000
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
          Left = 225.771800000000000000
          Top = 424.811380000000000000
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
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 512.181510000000000000
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
        object Memo13: TfrxMemoView
          Left = 0.220470000000000000
          Top = 534.858690000000000000
          Width = 514.015748030000100000
          Height = 34.015770000000010000
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
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 513.637648820000000000
          Top = 512.181510000000000000
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
        object Memo11: TfrxMemoView
          Left = 514.016080000000000000
          Top = 534.858690000000000000
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
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 433.527830000000000000
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
          Left = 3.779530000000000000
          Top = 459.984540000000000000
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
          Left = 3.779530000000000000
          Top = 486.441250000000000000
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
          Left = 128.504020000000000000
          Top = 433.527830000000000000
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
          Left = 128.504020000000000000
          Top = 459.984540000000000000
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
          Left = 128.504020000000000000
          Top = 486.441250000000000000
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
        object Memo20: TfrxMemoView
          Left = 113.385826770000000000
          Top = 124.724409448818900000
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
          Top = 124.724409448818900000
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
            'No. Econ'#243'mico:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 113.385826770000000000
          Top = 102.047244090000000000
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
            '[ds_fallas."NomInsumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = -0.377953000000000000
          Top = 102.047244090000000000
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
            'Equipo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 113.385826770000000000
          Top = 79.370078740000000000
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
          Top = 79.370078740000000000
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
        object Memo24: TfrxMemoView
          Left = 582.047620000000000000
          Top = 124.724409448818900000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
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
          Top = 124.724409448818900000
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
            'Prioridad:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 582.047620000000000000
          Top = 102.047244094488200000
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
            '[ds_fallas."Tiempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 502.677490000000000000
          Top = 102.047244094488200000
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
            'Tiempo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 582.047620000000000000
          Top = 79.370078740000000000
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
          Top = 79.370078740000000000
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
        object Memo32: TfrxMemoView
          Left = 661.417750000000000000
          Top = 124.724409448818900000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 737.008350000000000000
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
    end
  end
end
