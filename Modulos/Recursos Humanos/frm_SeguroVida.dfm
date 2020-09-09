object FrmSeguroVida: TFrmSeguroVida
  Left = 0
  Top = 0
  Caption = 'Seguro de Vida'
  ClientHeight = 482
  ClientWidth = 1066
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1066
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1066
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 431
      Top = 1
      Width = 634
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 431
      ExplicitTop = 1
      ExplicitWidth = 634
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 634
        Height = 33
        ExplicitTop = -1
        ExplicitWidth = 702
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 71
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 65
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 151
          Height = 31
          OnClick = btnEditClick
          ExplicitLeft = 196
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 226
          Height = 31
          ExplicitLeft = 271
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 473
          Height = 31
          Caption = 'Imrpimir'
          OnClick = btnPrinterClick
          ExplicitLeft = 424
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 553
          Height = 31
          OnClick = btnDetalleClick
          ExplicitLeft = 621
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 306
          Width = 87
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 300
          ExplicitWidth = 87
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 393
          Height = 31
          ExplicitLeft = 416
          ExplicitTop = -1
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Seguro de Vida'
      ParentColor = False
      ParentFont = False
      Style.Color = clNone
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
      Left = 220
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
      Left = 297
      Top = 11
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      TabOrder = 3
      Visible = False
      Width = 60
    end
    object btnPrintFormato: TcxButton
      Left = 128
      Top = 1
      Width = 94
      Height = 33
      Align = alRight
      Caption = 'Contrato'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 4
      OnClick = btnPrintFormatoClick
    end
    object btnCarta: TcxButton
      Left = 222
      Top = 1
      Width = 98
      Height = 33
      Align = alRight
      Caption = 'Acta'
      OptionsImage.ImageIndex = 40
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 5
      OnClick = btnCartaClick
      ExplicitLeft = 228
      ExplicitTop = -2
    end
    object btnPrinter: TcxButton
      Left = 320
      Top = 1
      Width = 111
      Height = 33
      Hint = 'Imprimir en Pantalla'
      Align = alRight
      Caption = 'Cuestrionario'
      OptionsImage.ImageIndex = 53
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnPrinterClick
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1066
    Height = 447
    Align = alClient
    TabOrder = 1
    object PanelTipo: TPanel
      Left = 1
      Top = 1
      Width = 232
      Height = 445
      Align = alLeft
      TabOrder = 0
      object Grid_Personal: TcxGrid
        Left = 1
        Top = 1
        Width = 230
        Height = 443
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
        object BView_Personal: TcxGridDBTableView
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
          DataController.DataSource = dsPersonal
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
          OptionsView.Indicator = True
          object BView_PersonalColumn2: TcxGridDBColumn
            Caption = 'Empleados'
            DataBinding.FieldName = 'NombreCompleto'
          end
          object BView_PersonalColumn1: TcxGridDBColumn
            Caption = 'Clasificacion'
            DataBinding.FieldName = 'Departamento'
            Visible = False
            GroupIndex = 0
          end
        end
        object Grid_PersonalLevel1: TcxGridLevel
          GridView = BView_Personal
        end
      end
    end
    object cxSplitTipo: TcxSplitter
      Left = 233
      Top = 1
      Width = 6
      Height = 445
      ExplicitLeft = 231
      ExplicitTop = 0
    end
    object Panel1: TPanel
      Left = 239
      Top = 1
      Width = 288
      Height = 445
      Align = alClient
      TabOrder = 2
      object Panel2: TPanel
        Left = 1
        Top = 256
        Width = 286
        Height = 188
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
          Top = 151
          Width = 284
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 94
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 94
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
                OnClick = btnPostClick
                ExplicitLeft = 3
                ExplicitTop = 1
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
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 284
          Height = 150
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          ClientRectBottom = 148
          ClientRectLeft = 2
          ClientRectRight = 282
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 11
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 280
              Height = 118
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object dFecha: TcxDBDateEdit
                Left = 312
                Top = 12
                DataBinding.DataField = 'Fecha'
                DataBinding.DataSource = dsSeguro
                ParentFont = False
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
                Width = 121
              end
              object edtCodigo: TcxDBTextEdit
                Left = 63
                Top = 12
                DataBinding.DataField = 'Codigo'
                DataBinding.DataSource = dsSeguro
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
                Width = 115
              end
              object lcbDepartamento: TcxDBLookupComboBox
                Left = 63
                Top = 41
                DataBinding.DataField = 'IdDepartamento'
                DataBinding.DataSource = dsSeguro
                ParentFont = False
                Properties.KeyFieldNames = 'IdDepartamento'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsArea
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 2
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 145
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'Fecha de Evaluaci'#243'n: '
                Control = dFecha
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Codigo: '
                Control = edtCodigo
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                CaptionOptions.Text = 'Area:'
                Control = lcbDepartamento
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 248
        Width = 286
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_Seguro: TcxGrid
        Left = 1
        Top = 1
        Width = 286
        Height = 247
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_Seguro: TcxGridDBTableView
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
          DataController.DataSource = dsSeguro
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
          object cxView_SeguroColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Width = 85
          end
          object cxView_SeguroColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 144
          end
          object cxView_SeguroColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Departamento'
            Width = 132
          end
          object cxView_SeguroColumn4: TcxGridDBColumn
            Visible = False
          end
        end
        object grid_SeguroLevel1: TcxGridLevel
          GridView = cxView_Seguro
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 527
      Top = 1
      Width = 6
      Height = 445
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 533
      Top = 1
      Width = 532
      Height = 445
      Align = alRight
      TabOrder = 4
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 530
        Height = 443
        Align = alClient
        TabOrder = 0
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 528
          Height = 35
          Align = alTop
          TabOrder = 0
          DesignSize = (
            528
            35)
          object cxNuevoDetalle: TcxButton
            Left = 375
            Top = 2
            Width = 151
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
        end
        object PanelDown: TPanel
          Left = 1
          Top = 407
          Width = 528
          Height = 35
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            528
            35)
          object cxCancelarDetalle: TcxButton
            Left = 435
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
            Left = 295
            Top = 3
            Width = 134
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'Aplicar Evaluaci'#243'n'
            OptionsImage.ImageIndex = 56
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
          Width = 528
          Height = 371
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          ClientRectBottom = 369
          ClientRectLeft = 2
          ClientRectRight = 526
          ClientRectTop = 29
          object cxTabSheet2: TcxTabSheet
            Caption = 'Cuestionario'
            ImageIndex = 35
            OnShow = cxTabSheet2Show
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGridCuestionario: TcxGrid
              Left = 0
              Top = 0
              Width = 524
              Height = 340
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGridViewCuestionario: TcxGridDBTableView
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
                DataController.DataSource = dsCuestionario
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object colPregunta: TcxGridDBColumn
                  DataBinding.FieldName = 'Pregunta'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
                  Width = 253
                end
                object colPuntos: TcxGridDBColumn
                  DataBinding.FieldName = 'Respuesta'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Width = 248
                end
              end
              object cxGridCuestionarioLevel1: TcxGridLevel
                GridView = cxGridViewCuestionario
              end
            end
          end
          object cxTabDocumento: TcxTabSheet
            Caption = 'Documentos de Contrataci'#243'n'
            ImageIndex = 39
            OnShow = cxTabDocumentoShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGridDocumentos: TcxGrid
              Left = 0
              Top = 0
              Width = 524
              Height = 340
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxViewDocumentos: TcxGridDBTableView
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
                OnCellDblClick = cxViewDocumentosCellDblClick
                DataController.DataSource = dsDocumentos
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
                    Column = cxGridDBColumn1
                    DisplayText = 'Total Folio'
                  end
                  item
                    Format = 'MN   $ #,00.00'
                    Kind = skSum
                    FieldName = 'dMontoMN'
                    Column = cxGridDBColumn4
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object ColDoc: TcxGridDBColumn
                  DataBinding.FieldName = 'NombreDocto'
                  Width = 62
                end
                object cxGridDBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Documento'
                  Options.Editing = False
                  Width = 221
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  Caption = 'Expedici'#243'n'
                  DataBinding.FieldName = 'Fechaexpedicion'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 81
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  Caption = 'Vigencia'
                  DataBinding.FieldName = 'Fechavigencia'
                  Options.Editing = False
                  Width = 61
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  Caption = 'Archivo'
                  DataBinding.FieldName = 'DocumentoDigital'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.DefaultImageIndex = 9
                  Properties.Images = connection.cxIconos16
                  Properties.Items = <>
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 57
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxViewDocumentos
              end
            end
          end
        end
      end
    end
  end
  object zPersonal: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = zPersonalAfterScroll
    Left = 17
    Top = 228
  end
  object dsPersonal: TDataSource
    DataSet = zPersonal
    Left = 17
    Top = 284
  end
  object zSeguro: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = zSeguroAfterScroll
    Left = 111
    Top = 172
  end
  object dsSeguro: TDataSource
    DataSet = zSeguro
    Left = 127
    Top = 228
  end
  object dsArea: TDataSource
    DataSet = zArea
    Left = 520
    Top = 395
  end
  object zArea: TUniQuery
    Connection = connection.Uconnection
    Left = 569
    Top = 397
  end
  object zCuestionario: TUniQuery
    Connection = connection.Uconnection
    Left = 680
    Top = 134
  end
  object dsCuestionario: TDataSource
    DataSet = zCuestionario
    Left = 680
    Top = 190
  end
  object zPreguntas: TUniQuery
    Connection = connection.Uconnection
    Left = 1016
    Top = 166
  end
  object dsPreguntas: TDataSource
    DataSet = zPreguntas
    Left = 1016
    Top = 222
  end
  object zReporteSeguro: TUniQuery
    Connection = connection.Uconnection
    Left = 882
    Top = 278
  end
  object frxReporte: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43211.994397592600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = frxReporteGetValue
    OnReportPrint = 'no '
    Left = 954
    Top = 278
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxDBContrato
        DataSetName = 'dsContrato'
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
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 850.394250000000000000
        Top = 120.944960000000000000
        Width = 740.409927000000000000
        object Rich2: TfrxRichView
          Align = baCenter
          Left = -0.188976499999967000
          Width = 740.787880000000000000
          Height = 136.063080000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C204E
            6172726F773B7D7B5C66315C666E696C5C666368617273657430205461686F6D
            613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265643235355C677265656E32
            35355C626C7565303B5C726564305C677265656E305C626C7565303B7D0D0A7B
            5C2A5C67656E657261746F722052696368656432302031302E302E3137313334
            7D5C766965776B696E64345C756331200D0A5C706172645C77696463746C7061
            725C736C3331325C736C6D756C74315C71635C66305C66733138204341525441
            204445204143554552444F53205920434F4D50524F4D49534F535C7061720D0A
            0D0A5C706172645C77696463746C7061725C736C3331325C736C6D756C74315C
            756C205B6473436F6E747261746F2E224E6F6D627265225D5C756C6E6F6E655C
            7061720D0A5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5C686967686C69676874315C625C7061720D0A0D0A5C70
            6172645C77696463746C7061725C736C3331325C736C6D756C74315C71725C68
            6967686C69676874305C62305C667331365C7061720D0A0D0A5C706172645C77
            696463746C7061725C716A5C7478313730315C6673313820456E2072656C6163
            695C2766336E20612073752070617274696369706163695C2766336E206C6162
            6F72616C20647572616E7465206C6120766967656E6369612064652073752063
            6F6E747261746F207920636F6E206C612066696E616C69646164206465206174
            656E646572206C6173207265636F6D656E646163696F6E657320656D69746964
            617320706F7220656C205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F2079206120736F6C696369747564206465206E756573747261
            205375706572766973695C2766336E20646520436F6E747261746F2064656269
            646F2061207375206576616C756163695C2766336E2C207365206C6520696E66
            6F726D612071756520646562656E206465207265666F727A617220737573206F
            626C69676163696F6E657320636F6D6F20526573706F6E7361626C6573206465
            206C61205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2065
            6E20646F6E6465207365616E20617369676E61646F7320706F72206C6120636F
            6E74726174616E746520656E2065737465206361736F20547970686F6F6E204F
            666673686F726520532E412E502E492E20646520432E562E2079207061726120
            656C6C6F206573206E656365736172696F2070726573656E7461722065766964
            656E63696173206465206C617320616374697669646164657320646573617272
            6F6C6C6164617320647572616E74652073752066756E63695C2766336E2C2063
            6F6D6F207265666572656E63696120736520616E65786120756E61207461626C
            6120636F6E206C61732066756E63696F6E657320792061637469766964616465
            732061206465736172726F6C6C61723A5C7061720D0A0D0A5C706172645C6366
            325C66315C667331365C7061720D0A7D0D0A00}
        end
        object Rich1: TfrxRichView
          Align = baCenter
          Left = 64.063033500000010000
          Top = 147.401670000000000000
          Width = 612.283860000000000000
          Height = 691.653990000000000000
          Frame.Typ = [ftLeft]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302054696D6573204E
            657720526F6D616E3B7D7B5C66315C6673776973735C66707271325C66636861
            727365743020417269616C204E6172726F773B7D7B5C66325C6673776973735C
            66707271325C666368617273657430205461686F6D613B7D7B5C66335C666E69
            6C5C666368617273657430205461686F6D613B7D7B5C66345C666E696C5C6663
            686172736574322053796D626F6C3B7D7D0D0A7B5C2A5C67656E657261746F72
            2052696368656432302031302E302E31373133347D5C766965776B696E64345C
            7563315C74726F77645C7472676170683130385C74726C6566742D3338325C74
            7271635C7472627264726C5C62726472735C62726472773130205C7472627264
            72745C62726472735C62726472773130205C747262726472725C62726472735C
            62726472773130205C747262726472625C62726472735C62726472773130205C
            7472706164646C3130385C747270616464723130385C747270616464666C335C
            7472706164646672330D0A5C636C7368646E67313235305C636C627264726C5C
            627264727731305C62726472735C636C62726472745C627264727731305C6272
            6472735C636C62726472725C627264727731305C62726472735C636C62726472
            625C627264727731305C6272647273205C63656C6C78343537315C636C736864
            6E67313235305C636C627264726C5C627264727731305C62726472735C636C62
            726472745C627264727731305C62726472735C636C62726472725C6272647277
            31305C62726472735C636C62726472625C627264727731305C6272647273205C
            63656C6C78363133305C636C7368646E67313235305C636C627264726C5C6272
            64727731305C62726472735C636C62726472745C627264727731305C62726472
            735C636C62726472725C627264727731305C62726472735C636C62726472625C
            627264727731305C6272647273205C63656C6C7838373832200D0A5C70617264
            5C696E74626C5C77696463746C7061725C71635C7478313730315C625C66315C
            667331362046554E43494F4E4553205052494E434950414C45535C63656C6C20
            524553504F4E5341424C455C63656C6C20252044452043554D504C494D49454E
            544F5C63656C6C5C726F775C74726F77645C7472676170683130385C74726C65
            66742D3338325C747271635C74727268313033375C7472627264726C5C627264
            72735C62726472773130205C747262726472745C62726472735C627264727731
            30205C747262726472725C62726472735C62726472773130205C747262726472
            625C62726472735C62726472773130205C7472706164646C3130385C74727061
            6464723130385C747270616464666C335C7472706164646672330D0A5C636C62
            7264726C5C627264727731305C62726472735C636C62726472745C6272647277
            31305C62726472735C636C62726472725C627264727731305C62726472735C63
            6C62726472625C627264727731305C6272647273205C63656C6C78343537315C
            636C76657274616C635C636C627264726C5C627264727731305C62726472735C
            636C62726472745C627264727731305C62726472735C636C62726472725C6272
            64727731305C62726472735C636C62726472625C627264727731305C62726472
            73205C63656C6C78363133305C636C76657274616C635C636C627264726C5C62
            7264727731305C62726472735C636C62726472745C627264727731305C627264
            72735C636C62726472725C627264727731305C62726472735C636C6272647262
            5C627264727731305C6272647273205C63656C6C7838373832200D0A5C706172
            645C696E74626C7B5C706E746578745C66345C2742375C7461627D7B5C2A5C70
            6E5C706E6C766C626C745C706E66345C706E696E64656E74307B5C706E747874
            625C2742377D7D5C66692D3336305C6C693732305C73613230305C736C323736
            5C736C6D756C74315C716A5C7478313730315C623020436F6E63696C69616369
            5C2766336E20646520766F6C756D6574725C2765646120636F6E20436961732E
            20456C61626F726163695C2766336E2C20656D6973695C2766336E2079206469
            73747269627563695C2766336E20646520536F6C69636974756420496E746572
            6E612064652054726162616A6F2028534954295C7061720D0A7B5C706E746578
            745C66345C2742375C7461627D436F6F7264696E6163695C2766336E20792073
            75706572766973695C2766336E206465206C6F732065717569706F732079206D
            6174657269616C6573206E656365736172696F73206120626F72646F20706172
            61206C61207265616C697A6163695C2766336E2064656C2070726F6772616D61
            206F706572617469766F2070726F706F7263696F6E61646F20706F7220656C20
            636C69656E74652E205C63656C6C200D0A5C706172645C696E74626C5C776964
            63746C7061725C7478313730315C6220496E67656E6965726F20646520446973
            655C2766316F5C63656C6C200D0A5C706172645C696E74626C5C77696463746C
            7061725C71635C7478313730315C62305C63656C6C5C726F775C74726F77645C
            7472676170683130385C74726C6566742D3338325C747271635C747272683838
            375C7472627264726C5C62726472735C62726472773130205C74726272647274
            5C62726472735C62726472773130205C747262726472725C62726472735C6272
            6472773130205C747262726472625C62726472735C62726472773130205C7472
            706164646C3130385C747270616464723130385C747270616464666C335C7472
            706164646672330D0A5C636C627264726C5C627264727731305C62726472735C
            636C62726472745C627264727731305C62726472735C636C62726472725C6272
            64727731305C62726472735C636C62726472625C627264727731305C62726472
            73205C63656C6C78343537315C636C76657274616C635C636C627264726C5C62
            7264727731305C62726472735C636C62726472745C627264727731305C627264
            72735C636C62726472725C627264727731305C62726472735C636C6272647262
            5C627264727731305C6272647273205C63656C6C78363133305C636C76657274
            616C635C636C627264726C5C627264727731305C62726472735C636C62726472
            745C627264727731305C62726472735C636C62726472725C627264727731305C
            62726472735C636C62726472625C627264727731305C6272647273205C63656C
            6C7838373832200D0A5C706172645C696E74626C7B5C706E746578745C66345C
            2742375C7461627D7B5C2A5C706E5C706E6C766C626C745C706E66345C706E69
            6E64656E74307B5C706E747874625C2742377D7D5C66692D3336305C6C693732
            305C73613230305C736C3237365C736C6D756C743120436F6F7264696E616369
            5C2766336E206465206C6173204F7065726163696F6E657320636F6E666F726D
            6520616C2050726F6772616D61204F706572617469766F5C7061720D0A7B5C70
            6E746578745C66345C2742375C7461627D41706F796F20656E20526564616363
            695C2766336E207920536F706F727465732064652043616D706F5C7061720D0A
            7B5C706E746578745C66345C2742375C7461627D5265706F7274652064656C20
            4176616E6365206465204F7065726163696F6E657320616C2052657072657365
            6E74616E746520545C276539636E69636F20646520547970686F6F6E2E5C6632
            5C667331325C63656C6C200D0A5C706172645C696E74626C5C77696463746C70
            61725C71635C7478313730315C625C66315C66733136204954505C63656C6C5C
            62305C63656C6C5C726F775C74726F77645C7472676170683130385C74726C65
            66742D3338325C747271635C7472627264726C5C62726472735C627264727731
            30205C747262726472745C62726472735C62726472773130205C747262726472
            725C62726472735C62726472773130205C747262726472625C62726472735C62
            726472773130205C7472706164646C3130385C747270616464723130385C7472
            70616464666C335C7472706164646672330D0A5C636C627264726C5C62726472
            7731305C62726472735C636C62726472745C627264727731305C62726472735C
            636C62726472725C627264727731305C62726472735C636C62726472625C6272
            64727731305C6272647273205C63656C6C78343537315C636C76657274616C63
            5C636C627264726C5C627264727731305C62726472735C636C62726472745C62
            7264727731305C62726472735C636C62726472725C627264727731305C627264
            72735C636C62726472625C627264727731305C6272647273205C63656C6C7836
            3133305C636C76657274616C635C636C627264726C5C627264727731305C6272
            6472735C636C62726472745C627264727731305C62726472735C636C62726472
            725C627264727731305C62726472735C636C62726472625C627264727731305C
            6272647273205C63656C6C7838373832200D0A5C706172645C696E74626C7B5C
            706E746578745C66345C2742375C7461627D7B5C2A5C706E5C706E6C766C626C
            745C706E66345C706E696E64656E74307B5C706E747874625C2742377D7D5C66
            692D3336305C6C693732305C73613230305C736C3237365C736C6D756C74315C
            716A5C747831373031205375706572766973695C2766336E206465206C617320
            4F7065726163696F6E657320636F6E666F726D6520612050726F6772616D6120
            4F706572617469766F2070726F706F7263696F6E61646F20706F7220656C2063
            6C69656E74652E5C7061720D0A7B5C706E746578745C66345C2742375C746162
            7D526567697374726F20646520686F726172696F207920766F6C756D6574725C
            27656461206465206C6F7320736572766963696F732028706172746964617329
            2073756D696E6973747261646F7320616C20636C69656E746520647572616E74
            65206C6173206F7065726163696F6E65735C7061720D0A7B5C706E746578745C
            66345C2742375C7461627D5265766973695C2766336E20792056657269666963
            6163695C2766336E206465206C6120696E666F726D6163695C2766336E207072
            6573656E7461646120656E20536F706F727465732E5C63656C6C200D0A5C7061
            72645C696E74626C5C77696463746C7061725C71635C7478313730315C622049
            6E67656E6965726F206465204F7065726163696F6E65735C63656C6C5C62305C
            63656C6C5C726F775C74726F77645C7472676170683130385C74726C6566742D
            3338325C747271635C7472627264726C5C62726472735C62726472773130205C
            747262726472745C62726472735C62726472773130205C747262726472725C62
            726472735C62726472773130205C747262726472625C62726472735C62726472
            773130205C7472706164646C3130385C747270616464723130385C7472706164
            64666C335C7472706164646672330D0A5C636C627264726C5C62726472773130
            5C62726472735C636C62726472745C627264727731305C62726472735C636C62
            726472725C627264727731305C62726472735C636C62726472625C6272647277
            31305C6272647273205C63656C6C78343537315C636C76657274616C635C636C
            627264726C5C627264727731305C62726472735C636C62726472745C62726472
            7731305C62726472735C636C62726472725C627264727731305C62726472735C
            636C62726472625C627264727731305C6272647273205C63656C6C7836313330
            5C636C76657274616C635C636C627264726C5C627264727731305C6272647273
            5C636C62726472745C627264727731305C62726472735C636C62726472725C62
            7264727731305C62726472735C636C62726472625C627264727731305C627264
            7273205C63656C6C7838373832200D0A5C706172645C696E74626C7B5C706E74
            6578745C66345C2742375C7461627D7B5C2A5C706E5C706E6C766C626C745C70
            6E66345C706E696E64656E74307B5C706E747874625C2742377D7D5C66692D33
            36305C6C693732305C73613230305C736C3237365C736C6D756C74315C716A5C
            74783137303120456C61626F726163695C2766336E20646520536F706F727465
            7320285265706F727465732C2043657274696669636163696F6E657320792042
            6F6C657461732064652043616D706F292E20436F6E666F726D652061206C6120
            696E666F726D6163695C2766336E205265676973747261646120706F7220656C
            20496E67656E6965726F206465204F7065726163696F6E65732E5C7061720D0A
            7B5C706E746578745C66345C2742375C7461627D5265636F70696C6163695C27
            66336E206465206C6173206669726D61732064656C207375706572696E74656E
            64656E74652028547970686F6F6E29207920526570726573656E74616E746520
            64656C20436C69656E7465202850454D45582920656E20536F706F7274657320
            285265706F727465732C2043657274696669636163696F6E6573207920426F6C
            657461732064652043616D706F295C7061720D0A7B5C706E746578745C66345C
            2742375C7461627D457363616E656F207920656E76695C27663320646520536F
            706F72746573206469617269616D656E746520616C20706572736F6E616C2064
            652041646D696E697374726163695C2766336E20646520457374696D6163696F
            6E657320646520547970686F6F6E206520496E67656E6965726F732064652044
            6973655C2766316F20456E6361726761646F732064656C20426172636F2E5C70
            61720D0A7B5C706E746578745C66345C2742375C7461627D537562697220496E
            666F726D6163695C2766336E20657363616E656164612061206C61204E554245
            2E5C7061720D0A7B5C706E746578745C66345C2742375C7461627D436F6D7069
            6C6163695C2766336E20646520536F706F72746573204F726967696E616C6573
            204669726D61646F735C7061720D0A7B5C706E746578745C66345C2742375C74
            61627D456E747265676120646520536F706F72746573204F726967696E616C65
            7320656E206D616E6F2064656C20506572736F6E616C2064652041646D696E69
            7374726163695C2766336E20646520457374696D6163696F6E65732064652054
            7970686F6F6E20436F72726573706F6E6469656E74652E20284669726D612064
            652052656369626F295C63656C6C200D0A5C706172645C696E74626C5C776964
            63746C7061725C71635C7478313730315C6220496E67656E6965726F20506574
            726F6C65726F204A722E202F20496E67656E6965726F20646520457374727563
            74757261735C63656C6C5C62305C63656C6C5C726F775C74726F77645C747267
            6170683130385C74726C6566742D3338325C747271635C7472627264726C5C62
            726472735C62726472773130205C747262726472745C62726472735C62726472
            773130205C747262726472725C62726472735C62726472773130205C74726272
            6472625C62726472735C62726472773130205C7472706164646C3130385C7472
            70616464723130385C747270616464666C335C7472706164646672330D0A5C63
            6C627264726C5C627264727731305C62726472735C636C62726472745C627264
            727731305C62726472735C636C62726472725C627264727731305C6272647273
            5C636C62726472625C627264727731305C6272647273205C63656C6C78343537
            315C636C76657274616C635C636C627264726C5C627264727731305C62726472
            735C636C62726472745C627264727731305C62726472735C636C62726472725C
            627264727731305C62726472735C636C62726472625C627264727731305C6272
            647273205C63656C6C78363133305C636C76657274616C635C636C627264726C
            5C627264727731305C62726472735C636C62726472745C627264727731305C62
            726472735C636C62726472725C627264727731305C62726472735C636C627264
            72625C627264727731305C6272647273205C63656C6C7838373832200D0A5C70
            6172645C696E74626C7B5C706E746578745C66345C2742375C7461627D7B5C2A
            5C706E5C706E6C766C626C745C706E66345C706E696E64656E74307B5C706E74
            7874625C2742377D7D5C66692D3336305C6C693732305C73613230305C736C32
            37365C736C6D756C74315C716A5C747831363236205265766973695C2766336E
            207920566572696669636163695C2766336E2079204669726D6120646520536F
            706F727465732064652043616D706F20636F6E666F726D652061205265706F72
            746520656E7472656761646F20706F7220656C20496E67656E6965726F206465
            204F7065726163696F6E65735C63656C6C200D0A5C706172645C696E74626C5C
            77696463746C7061725C71635C7478313730315C6220526570726573656E7461
            6E746520545C276539636E69636F206120626F72646F20285375706572696E74
            656E64656E7465295C63656C6C5C62305C63656C6C5C726F77200D0A5C706172
            645C66335C7061720D0A7D0D0A00}
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich3: TfrxRichView
          Align = baCenter
          Left = 3.590553500000019000
          Width = 733.228820000000000000
          Height = 79.370130000000000000
          Frame.Color = 16763904
          Frame.Typ = [ftRight, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302054696D6573204E
            657720526F6D616E3B7D7B5C66315C666E696C5C666368617273657430205461
            686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C72656435345C67726565
            6E38385C626C75653132363B7D0D0A7B5C2A5C67656E657261746F7220526963
            68656432302031302E302E31373133347D5C766965776B696E64345C75633120
            0D0A5C706172645C77696463746C7061725C71725C6366315C625C66305C6673
            32305C6C616E673130333320547970686F6F6E204F666673686F72652C20532E
            412E502E492E20646520432E562E5C7061720D0A5C667331365C7061720D0A5C
            667331385C6C616E67323035382050657269665C2765397269636F2053757220
            343132315C7061720D0A4675656E7465732064656C20506564726567616C5C70
            61720D0A3134313431204D5C2765397869636F2C20442E462E5C7061720D0A0D
            0A5C706172645C6366305C62305C66315C667331365C7061720D0A7D0D0A00}
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 75.590600000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich4: TfrxRichView
          Align = baCenter
          Left = 3.590553500000019000
          Width = 733.228820000000000000
          Height = 79.370130000000000000
          Frame.Color = 16763904
          Frame.Typ = [ftRight, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302054696D6573204E
            657720526F6D616E3B7D7B5C66315C666E696C5C666368617273657430205461
            686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C72656435345C67726565
            6E38385C626C75653132363B7D0D0A7B5C2A5C67656E657261746F7220526963
            68656432302031302E302E31373133347D5C766965776B696E64345C75633120
            0D0A5C706172645C77696463746C7061725C71725C6366315C625C66305C6673
            32305C6C616E673130333320547970686F6F6E204F666673686F72652C20532E
            412E502E492E20646520432E562E5C7061720D0A5C667331365C7061720D0A5C
            667331385C6C616E67323035382050657269665C2765397269636F2053757220
            343132315C7061720D0A4675656E7465732064656C20506564726567616C5C70
            61720D0A3134313431204D5C2765397869636F2C20442E462E5C7061720D0A0D
            0A5C706172645C6366305C62305C66315C667331365C7061720D0A7D0D0A00}
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 75.590600000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 850.394250000000000000
        Top = 120.944960000000000000
        Width = 740.409927000000000000
        object Rich5: TfrxRichView
          Align = baCenter
          Left = -0.188976499999980600
          Width = 740.787880000000000000
          Height = 302.362400000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C204E
            6172726F773B7D7B5C66315C666E696C5C666368617273657430205461686F6D
            613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C62
            6C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368656432302031
            302E302E31373133347D5C766965776B696E64345C756331200D0A5C70617264
            5C77696463746C7061725C716A5C7478313730315C66305C66733138204C6173
            2050415254455320616375657264616E20717565206469636861732066756E63
            696F6E6573207365725C2765316E206576616C75616461732063616461206D65
            732C20706F72206C6F20717565207365206C6520696E76697461206120646573
            656D70655C276631617220616C2031303020252073752066756E63695C276633
            6E207920656E206361736F2064652074656E657220756E205C2765646E646963
            652064652063756D706C696D69656E746F20706F7220646562616A6F2064656C
            20393020252064656E74726F2064652074726573206D65736573207365206861
            725C276531206163726565646F722064656C207369677569656E746520657371
            75656D612064652070656E616C697A6163696F6E65733A5C7061720D0A5C7061
            720D0A0D0A5C70617264200D0A7B5C706E746578745C663020312E5C7461627D
            7B5C2A5C706E5C706E6C766C626F64795C706E66305C706E696E64656E74305C
            706E7374617274315C706E6465637B5C706E747874612E7D7D0D0A5C66692D33
            36305C6C693732305C73613230305C736C3237365C736C6D756C74315C716A5C
            74783137303120556E612066616C6C61207365206C6520657874656E6465725C
            27653120756E6120636172746120646520616D6F6E6573746163695C2766336E
            2E5C7061720D0A7B5C706E746578745C663020322E5C7461627D446F73206661
            6C6C6173207365206861725C276531206163726565646F7220646520756E2064
            65736375656E746F20646520756E20645C276564612064652073616C6172696F
            2E5C7061720D0A7B5C706E746578745C663020332E5C7461627D547265732066
            616C6C6173206465206861725C276531206163726565646F7220646520756E20
            6465736375656E746F206465207472657320645C27656461732064652073616C
            6172696F2E5C7061720D0A7B5C706E746578745C663020342E5C7461627D4375
            6174726F2066616C6C6173207365206C6520646573636F6E7461726120616C20
            726573706F6E7361626C6520746F6461206C61206361746F7263656E612E5C70
            61720D0A7B5C706E746578745C663020352E5C7461627D43696E636F2066616C
            6C6173206163756D756C617469766173207365206461725C27653120706F7220
            7465726D696E61646F20656C20636F6D70726F6D69736F206C61626F72616C20
            636F6E206C6120656D70726573612E5C7061720D0A0D0A5C706172645C776964
            63746C7061725C716A5C7478313730312041646963696F6E616C6D656E746520
            74616E746F20656C20526570726573656E74616E746520545C276539636E6963
            6F20636F6D6F20656C20506574726F6C65726F204A722E2C206869636965726F
            6E20656C20636F6D70726F6D69736F20646520717565646172736520756E2064
            5C276564612070617261206C6120636F72726563746120656E74726567612064
            6520646F63756D656E746163695C2766336E2C2061735C27656420636F6D6F20
            6C6120636F7272656363695C2766336E206465206572726F7265732071756520
            736520686179612070726573656E7461646F20646520666F726D616E20696E6D
            6564696174612079206669726D617320717565206573745C2765396E2070656E
            6469656E74657320656E20737573207265737065637469766173206775617264
            6961732E205C7061720D0A5C7061720D0A0D0A5C706172645C77696463746C70
            61725C736C3331325C736C6D756C74315C716A20205F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2C206669726D616E2064
            6520636F6E666F726D6964616420656E20322028646F732920656A656D706C61
            726573206C6173207369677569656E74657320706572736F6E61732071756520
            696E74657276696E6965726F6E20656E20656C206163746F20646520206C6120
            656D6973695C2766336E206465206C6120434152544120444520414355455244
            4F53205920434F4D50524F4D49534F532E5C7061720D0A5C7061720D0A0D0A5C
            706172645C6366315C66315C7061720D0A7D0D0A00}
        end
        object Rich6: TfrxRichView
          Left = 105.826840000000000000
          Top = 430.866420000000000000
          Width = 253.228510000000000000
          Height = 94.488250000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C204E
            6172726F773B7D7B5C66315C666E696C5C666368617273657430205461686F6D
            613B7D7D0D0A7B5C2A5C67656E657261746F722052696368656432302031302E
            302E31373133347D5C766965776B696E64345C756331200D0A5C706172645C77
            696463746C7061725C71635C625C66305C6673313620547970686F6F6E204F66
            6673686F726520534150492064652043565C7061720D0A0D0A5C706172645C62
            726472625C62726472735C627264727731305C627273703230205C7769646374
            6C7061725C71635C756C5C7061720D0A5C7061720D0A5C7061720D0A0D0A5C70
            6172645C77696463746C7061725C71635C756C6E6F6E6520496E672E204C7569
            73204F63746176696F20526579657320446F6D5C2765646E6775657A5C706172
            0D0A476572656E74652064652050726F796563746F5C7061720D0A0D0A5C7061
            72645C62305C66315C7061720D0A7D0D0A00}
        end
        object Rich7: TfrxRichView
          Left = 377.953000000000000000
          Top = 430.866420000000000000
          Width = 253.228510000000000000
          Height = 94.488250000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C204E
            6172726F773B7D7B5C66315C666E696C5C666368617273657430205461686F6D
            613B7D7D0D0A7B5C2A5C67656E657261746F722052696368656432302031302E
            302E31373133347D5C766965776B696E64345C756331200D0A5C706172645C77
            696463746C7061725C71635C625C66305C667331362054726162616A61646F72
            204173696D696C61646F5C7061720D0A0D0A5C706172645C62726472625C6272
            6472735C627264727731305C627273703230205C77696463746C7061725C7163
            5C756C5C7061720D0A5C7061720D0A0D0A5C706172645C71635C7061720D0A5C
            7061720D0A5C7061720D0A5C756C6E6F6E655C62305C66315C7061720D0A7D0D
            0A00}
        end
        object Rich8: TfrxRichView
          Left = 105.826840000000000000
          Top = 548.031849999999900000
          Width = 253.228510000000000000
          Height = 94.488250000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C204E
            6172726F773B7D7B5C66315C666E696C5C666368617273657430205461686F6D
            613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C62
            6C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368656432302031
            302E302E31373133347D5C766965776B696E64345C756331200D0A5C70617264
            5C77696463746C7061725C71635C625C66305C66733136205465737469676F20
            315C7061720D0A0D0A5C706172645C62726472625C62726472735C6272647277
            31305C627273703230205C77696463746C7061725C71635C756C5C7061720D0A
            5C7061720D0A5C7061720D0A0D0A5C706172645C77696463746C7061725C7163
            5C756C6E6F6E6520496E672E205269636172646F2059616D2043616D6163686F
            5C7061720D0A476572656E74652064652041646D696E697374726163695C2766
            336E207920436F6E747261746F735C7061720D0A0D0A5C706172645C6366315C
            62305C66315C7061720D0A7D0D0A00}
        end
        object Rich9: TfrxRichView
          Left = 377.953000000000000000
          Top = 548.031849999999900000
          Width = 253.228510000000000000
          Height = 94.488250000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C204E
            6172726F773B7D7B5C66315C666E696C5C666368617273657430205461686F6D
            613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C62
            6C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368656432302031
            302E302E31373133347D5C766965776B696E64345C756331200D0A5C70617264
            5C77696463746C7061725C71635C625C66305C66733136205465737469676F20
            325C7061720D0A0D0A5C706172645C62726472625C62726472735C6272647277
            31305C627273703230205C77696463746C7061725C71635C756C5C7061720D0A
            5C7061720D0A5C7061720D0A0D0A5C706172645C77696463746C7061725C7163
            5C756C6E6F6E6520496E672E204C75697320416C666F6E736F20416E67756C6F
            204A696D5C2765396E657A5C7061720D0A526570726573656E74616E74652054
            5C276539636E69636F205C7061720D0A0D0A5C706172645C6366315C62305C66
            315C7061720D0A7D0D0A00}
        end
        object Rich10: TfrxRichView
          Align = baCenter
          Left = 243.590708500000000000
          Top = 668.976810000000000000
          Width = 253.228510000000000000
          Height = 94.488250000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C204E
            6172726F773B7D7B5C66315C666E696C5C666368617273657430205461686F6D
            613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C62
            6C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368656432302031
            302E302E31373133347D5C766965776B696E64345C756331200D0A5C70617264
            5C77696463746C7061725C71635C625C66305C66733136205465737469676F20
            335C7061720D0A0D0A5C706172645C62726472625C62726472735C6272647277
            31305C627273703230205C77696463746C7061725C71635C756C5C7061720D0A
            5C7061720D0A5C7061720D0A0D0A5C706172645C77696463746C7061725C7163
            5C756C6E6F6E65204C69632E20526F646F6C666F204D6F6C696E612056616C65
            72696F5C7061720D0A0D0A5C706172645C716320526570726573656E74616E74
            65206465205265637572736F732048756D616E6F73205C6366315C62305C6631
            5C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object frxDBSeguroVida: TfrxDBDataset
    UserName = 'dsSeguroVida'
    CloseDataSource = False
    DataSet = zReporteSeguro
    BCDToCurrency = False
    Left = 794
    Top = 278
  end
  object zDocumentos: TUniQuery
    Connection = connection.Uconnection
    Left = 578
    Top = 150
  end
  object dsDocumentos: TDataSource
    DataSet = zDocumentos
    Left = 578
    Top = 198
  end
  object doctoVP: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 696
    Top = 286
  end
  object zContrato: TUniQuery
    Connection = connection.Uconnection
    Left = 921
    Top = 174
  end
  object frxDBContrato: TfrxDBDataset
    UserName = 'dsContrato'
    CloseDataSource = False
    DataSet = zContrato
    BCDToCurrency = False
    Left = 865
    Top = 182
  end
end
