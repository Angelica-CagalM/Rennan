object frmSolicitudDeMateriales: TfrmSolicitudDeMateriales
  Left = 0
  Top = 0
  Caption = 'Solicitud de Embarque'
  ClientHeight = 596
  ClientWidth = 1120
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
    Width = 1120
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1120
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 557
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 557
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
          ExplicitLeft = 484
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
      Caption = 'Solicitud de Embarque'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object LabelProceso: TcxLabel
      Left = 323
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
      Left = 397
      Top = 10
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
      Width = 114
    end
  end
  object PanelInsumos: TPanel
    Left = 80
    Top = 88
    Width = 463
    Height = 279
    TabOrder = 1
    Visible = False
    DesignSize = (
      463
      279)
    object Label14: TLabel
      Left = 25
      Top = 10
      Width = 50
      Height = 15
      Caption = 'Cantidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCertificado: TLabel
      Left = 24
      Top = 236
      Width = 94
      Height = 15
      Caption = 'Numero de Serie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 377
      Top = 232
      Width = 40
      Height = 14
      Caption = 'Factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Grid_Pedido: TcxGrid
      Left = 0
      Top = 44
      Width = 453
      Height = 182
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSalidaInsumo
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'Material'
          DataBinding.FieldName = 'Codigo'
          Width = 148
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 418
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Medida'
          DataBinding.FieldName = 'sMedida'
          Width = 114
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'Existencia'
          DataBinding.FieldName = 'dExistencia'
          Width = 117
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Costo'
          DataBinding.FieldName = 'dCostoMN'
          Visible = False
          Width = 84
        end
        object ColumnRequerido: TcxGridDBColumn
          Caption = 'Requerido'
          DataBinding.FieldName = 'requerido'
          Visible = False
          Width = 100
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Salvar: TcxButton
      Left = 650
      Top = 231
      Width = 82
      Height = 25
      Hint = 'Salvar cambios (F10)'
      Align = alCustom
      Caption = 'Agregar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = SalvarClick
    end
    object Cancelar: TcxButton
      Left = 738
      Top = 230
      Width = 78
      Height = 25
      Hint = 'Cancelar cambios (F11)'
      Align = alCustom
      Caption = 'Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = CancelarClick
    end
    object tsNumeroSerie: TDBLookupComboBox
      Left = 124
      Top = 232
      Width = 227
      Height = 23
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'IdSerie'
      ListField = 'Serie'
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object edFactura: TEdit
      Left = 423
      Top = 232
      Width = 186
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object tdCantidad: TcxCalcEdit
      Left = 81
      Top = 8
      EditValue = 0.000000000000000000
      ParentFont = False
      TabOrder = 5
      Width = 121
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1120
    Height = 561
    Align = alClient
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 581
      Height = 559
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 288
        Width = 579
        Height = 270
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
          Top = 233
          Width = 577
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 387
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 387
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
          Width = 577
          Height = 232
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          ClientRectBottom = 230
          ClientRectLeft = 2
          ClientRectRight = 575
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 40
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 573
              Height = 200
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              OptionsImage.Images = connection.cxIconos16
              object cxNota: TcxDBMemo
                Left = 245
                Top = 127
                DataBinding.DataField = 'Nota'
                DataBinding.DataSource = dsAvisosEmbarque
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
                Height = 43
                Width = 757
              end
              object cxCodigo: TcxDBTextEdit
                Left = 245
                Top = 11
                DataBinding.DataField = 'Codigo'
                DataBinding.DataSource = dsAvisosEmbarque
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
                Width = 184
              end
              object cxPlataformaOrigen: TcxDBLookupComboBox
                Left = 245
                Top = 69
                DataBinding.DataField = 'sIdPlataformaOrigen'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Properties.KeyFieldNames = 'sIdPlataforma'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsPlataforma
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
                Width = 360
              end
              object cxPlataformaDestino: TcxDBLookupComboBox
                Left = 455
                Top = 69
                DataBinding.DataField = 'sIdPlataformaDestino'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Properties.KeyFieldNames = 'sIdPlataforma'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsPlataforma
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
                Width = 326
              end
              object cxNombreRecibe: TcxDBTextEdit
                Left = 10000
                Top = 10000
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 11
                Visible = False
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 104
              end
              object cxFecha: TcxDBDateEdit
                Left = 245
                Top = 40
                DataBinding.DataField = 'FechaSolicitud'
                DataBinding.DataSource = dsAvisosEmbarque
                Enabled = False
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
                Width = 184
              end
              object dFechaRequerimiento: TcxDBDateEdit
                Left = 512
                Top = 40
                DataBinding.DataField = 'dFechaRequerida'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 2
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 121
              end
              object cxOrdenTrabajo: TcxDBLookupComboBox
                Left = 245
                Top = 98
                DataBinding.DataField = 'IdDepartamento'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Properties.KeyFieldNames = 'IdDepartamento'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = dsDepto
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
                Width = 24
              end
              object cxSolicita: TcxDBTextEdit
                Left = 399
                Top = 98
                DataBinding.DataField = 'Solicitante'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 6
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 121
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem6: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                CaptionOptions.Text = 'Observaciones  generales del embarque:'
                Control = cxNota
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'N'#176' Solicitud de Embarque:'
                Control = cxCodigo
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Embarque de Origen:'
                Control = cxPlataformaOrigen
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Embarque de Destino:'
                Control = cxPlataformaDestino
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem8: TdxLayoutItem
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Nombre Recibe:'
                Control = cxNombreRecibe
                ControlOptions.ShowBorder = False
                Index = -1
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Fecha de Solicitud:'
                Control = cxFecha
                ControlOptions.ShowBorder = False
                Enabled = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem22: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Fecha requerida de embarque:'
                Control = dFechaRequerimiento
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem9: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Departamento/Proyecto:'
                Control = cxOrdenTrabajo
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem24: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Solicitante:'
                Control = cxSolicita
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 3
                AutoCreated = True
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 280
        Width = 579
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 579
        Height = 279
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ExplicitLeft = 2
        ExplicitTop = 0
        object cxGridSolicitud: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = cxView_EmbarqueCellClick
          OnCellDblClick = cxGridSolicitudCellDblClick
          DataController.DataSource = dsAvisosEmbarque
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'N'#176' de Solicitud Embarque'
            DataBinding.FieldName = 'Codigo'
            Width = 150
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Fecha Solicitado'
            DataBinding.FieldName = 'FechaSolicitudes'
            Width = 150
          end
          object cxGridSolicitudCol5: TcxGridDBColumn
            Caption = 'Fecha Requerido'
            DataBinding.FieldName = 'FechaRequerido'
            Width = 150
          end
          object cxGridSolicitudCol4: TcxGridDBColumn
            DataBinding.FieldName = 'Solicitante'
            Width = 150
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Embarque Origen'
            DataBinding.FieldName = 'PlataformaOrigen'
            Width = 150
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Embarque Destino'
            DataBinding.FieldName = 'PlataformaDestino'
            Width = 150
          end
          object cxGridSolicitudCol3: TcxGridDBColumn
            Caption = 'Departamento/Proyecto'
            DataBinding.FieldName = 'Departamento'
            Width = 150
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Observaciones'
            DataBinding.FieldName = 'Nota'
            HeaderHint = 'Observaciones generales del embarque '
            Width = 150
          end
        end
        object cxGridDetalle: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSolicitudComp
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid2SolicitudDet: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSolicitudComp
          DataController.DetailKeyFieldNames = 'IdSolicitudMateriales'
          DataController.KeyFieldNames = 'IdSolicitudMateriales'
          DataController.MasterKeyFieldNames = 'IdSolicitudMateriales'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid2SolicitudDetColumn1: TcxGridDBColumn
            Caption = 'Num'#233'ro de Solicitud '
            DataBinding.FieldName = 'Codigo'
            HeaderHint = 'Num'#233'ro de Solicitud de Embarque'
            Width = 120
          end
          object cxGrid2SolicitudDetColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Embalaje'
            HeaderHint = 'Embalaje Seleccionado'
            Width = 120
          end
          object cxGrid2SolicitudDetColumn3: TcxGridDBColumn
            Caption = 'Origen Embarque'
            DataBinding.FieldName = 'PlataformaOrigen'
            HeaderHint = 'Origen de Embarque'
            Width = 120
          end
          object cxGrid2SolicitudDetColumn4: TcxGridDBColumn
            Caption = 'Destino Embarque'
            DataBinding.FieldName = 'PlataformaDestino'
            HeaderHint = 'Destino de Embarque'
            Width = 120
          end
          object cxGrid2SolicitudDetColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Partidas'
            HeaderHint = 'Partidas Seleccionadas'
            Width = 120
          end
          object cxGrid2SolicitudDetColumn6: TcxGridDBColumn
            Caption = 'L'#243'gistica'
            DataBinding.FieldName = 'Logistica'
            HeaderHint = 'L'#243'gistica Seleccionada'
            Width = 120
          end
          object cxGrid2SolicitudDetColumn7: TcxGridDBColumn
            Caption = 'Estado Embarque'
            DataBinding.FieldName = 'sStatus'
            HeaderHint = 'Estado del Embarque'
            Width = 120
          end
          object cxGrid2SolicitudDetColumn8: TcxGridDBColumn
            Caption = 'Manifiesto '
            DataBinding.FieldName = 'Manifiesto'
            HeaderHint = 'Manifiesto de Embarque'
            Width = 120
          end
          object cxGrid2SolicitudDetColumn9: TcxGridDBColumn
            Caption = 'Observaciones Generales'
            DataBinding.FieldName = 'Nota'
            HeaderHint = 'Observaciones Generales del Embarque'
            Width = 120
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridSolicitud
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2SolicitudDet
          end
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 582
      Top = 1
      Width = 6
      Height = 559
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 588
      Top = 1
      Width = 531
      Height = 559
      Align = alRight
      TabOrder = 2
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 529
        Height = 557
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 36
          Width = 527
          Height = 485
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
          ClientRectBottom = 483
          ClientRectLeft = 2
          ClientRectRight = 525
          ClientRectTop = 29
          object cxTabSheet2: TcxTabSheet
            Caption = 'Materiales'
            ImageIndex = 11
            object cxGridMateriales: TcxGrid
              Left = 0
              Top = 0
              Width = 523
              Height = 140
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxView_Materiales: TcxGridDBTableView
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
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = dsDetalleMaterial
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
                OptionsSelection.MultiSelect = True
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxView_MaterialesColumn9: TcxGridDBColumn
                  Caption = 'Item'
                  DataBinding.FieldName = 'iItem'
                  Width = 65
                end
                object cxView_MaterialesColumn10: TcxGridDBColumn
                  DataBinding.FieldName = 'Partidas'
                  Width = 120
                end
                object cxView_MaterialesColumn1: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  Width = 120
                end
                object cxView_MaterialesColumn6: TcxGridDBColumn
                  Caption = 'Trazabilidad'
                  DataBinding.FieldName = 'NumeroMaterial'
                end
                object cxView_MaterialesColumn2: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'mDescripcion'
                  Width = 120
                end
                object cxView_MaterialesColumn3: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'IdMedida'
                  Width = 120
                end
                object cxView_MaterialesColumn4: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'Cantidad'
                  Width = 120
                end
                object cxView_MaterialesColumn5: TcxGridDBColumn
                  DataBinding.FieldName = 'Factura'
                  Width = 120
                end
                object cxView_MaterialesColumn7: TcxGridDBColumn
                  Caption = 'Tipo Material'
                  DataBinding.FieldName = 'TipoMaterial'
                  Width = 120
                end
                object cxView_MaterialesColumn8: TcxGridDBColumn
                  Caption = 'L'#243'gistica'
                  DataBinding.FieldName = 'Logistica'
                  Width = 120
                end
              end
              object cxGridMaterialesLevel1: TcxGridLevel
                GridView = cxView_Materiales
              end
            end
            object cxSplitter4: TcxSplitter
              Left = 0
              Top = 140
              Width = 523
              Height = 12
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelDown6: TPanel
              Left = 0
              Top = 152
              Width = 523
              Height = 302
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl5: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 521
                Height = 300
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxCantidad: TcxDBCalcEdit
                  Left = 92
                  Top = 11
                  DataBinding.DataField = 'Cantidad'
                  DataBinding.DataSource = dsDetalleMaterial
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
                  Width = 121
                end
                object mComentarios: TcxDBMemo
                  Left = 92
                  Top = 243
                  DataBinding.DataField = 'Comentarios'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Properties.Alignment = taLeftJustify
                  Properties.ScrollBars = ssVertical
                  Style.HotTrack = False
                  TabOrder = 9
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  Height = 45
                  Width = 392
                end
                object cxDimensiones: TcxDBTextEdit
                  Left = 92
                  Top = 40
                  DataBinding.DataField = 'Dimensiones'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 1
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 121
                end
                object cxContenedor: TcxDBTextEdit
                  Left = 92
                  Top = 69
                  DataBinding.DataField = 'Contenedor'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 2
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 121
                end
                object cxPeso: TcxDBTextEdit
                  Left = 92
                  Top = 98
                  DataBinding.DataField = 'Peso'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 3
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 121
                end
                object cxLogistica: TcxDBTextEdit
                  Left = 92
                  Top = 127
                  DataBinding.DataField = 'Logistica'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 5
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 383
                end
                object cxEmbalaje: TcxDBTextEdit
                  Left = 92
                  Top = 156
                  DataBinding.DataField = 'Embalaje'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 6
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 383
                end
                object cxManifiesto: TcxDBTextEdit
                  Left = 92
                  Top = 185
                  DataBinding.DataField = 'Manifiesto'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 7
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 121
                end
                object cxEstado: TcxDBTextEdit
                  Left = 92
                  Top = 214
                  DataBinding.DataField = 'sStatus'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 8
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 121
                end
                object cxPartidas: TcxDBTextEdit
                  Left = 334
                  Top = 98
                  DataBinding.DataField = 'Partidas'
                  DataBinding.DataSource = dsDetalleMaterial
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 4
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 121
                end
                object dxLayoutControl5Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem12: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  CaptionOptions.Text = 'Cantidad'
                  Control = cxCantidad
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem10: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  CaptionOptions.Text = 'Comentario'
                  Control = mComentarios
                  ControlOptions.ShowBorder = False
                  Index = 8
                end
                object dxLayoutItem17: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  CaptionOptions.Text = 'Dimensiones'
                  Control = cxDimensiones
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem18: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  CaptionOptions.Text = 'Contenedor'
                  Control = cxContenedor
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutItem20: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup7
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Peso (KG)'
                  Control = cxPeso
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem1: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'L'#243'gistica'
                  Control = cxLogistica
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object dxLayoutItem11: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Embalaje'
                  Control = cxEmbalaje
                  ControlOptions.ShowBorder = False
                  Index = 5
                end
                object dxLayoutItem25: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  CaptionOptions.Text = 'Manifiesto'
                  Control = cxManifiesto
                  ControlOptions.ShowBorder = False
                  Index = 6
                end
                object dxLayoutItem19: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  CaptionOptions.Text = 'Estado'
                  Control = cxEstado
                  ControlOptions.ShowBorder = False
                  Index = 7
                end
                object dxLayoutItem26: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup7
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Paridas'
                  Control = cxPartidas
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl5Group_Root
                  AlignVert = avClient
                  LayoutDirection = ldHorizontal
                  Index = 3
                  AutoCreated = True
                end
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            OnShow = cxTabSheet3Show
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 210
              Width = 523
              Height = 244
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 521
                Height = 242
                Align = alClient
                TabOrder = 0
                object cxGrid1DBChartView1: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'Periodo'
                  Categories.DisplayText = 'Periodo'
                  DiagramColumn.Active = True
                  Title.Text = 'Gr'#225'fica de Movimientos Salidas'
                  object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
                    DataBinding.FieldName = 'TotalSalida'
                    DisplayText = 'Total Salida'
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
              Width = 523
              Height = 6
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 523
              Height = 204
              Align = alTop
              TabOrder = 2
              object dxLayoutControl2: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 515
                Height = 196
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
                      Caption = 'Imprimir datos filtrados con Detalles'
                      Value = '2'
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
                  Left = 360
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
          Width = 527
          Height = 35
          Align = alTop
          TabOrder = 1
          object cxNuevoDetalle: TcxButton
            Left = 283
            Top = 1
            Width = 81
            Height = 33
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
            Left = 364
            Top = 1
            Width = 81
            Height = 33
            Align = alRight
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
            Left = 445
            Top = 1
            Width = 81
            Height = 33
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
          Top = 521
          Width = 527
          Height = 35
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            527
            35)
          object cxCancelarDetalle: TcxButton
            Left = 440
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
            Left = 347
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
      end
    end
  end
  object zAvisosEmbarque: TUniQuery
    Connection = connection.Uconnection
    Left = 81
    Top = 172
  end
  object zDetalleMaterial: TUniQuery
    Connection = connection.Uconnection
    Left = 694
    Top = 222
  end
  object dsDetalleMaterial: TDataSource
    DataSet = zDetalleMaterial
    Left = 694
    Top = 166
  end
  object dsAvisosEmbarque: TDataSource
    AutoEdit = False
    DataSet = zAvisosEmbarque
    Left = 81
    Top = 124
  end
  object zMaterial: TUniQuery
    Connection = connection.Uconnection
    Left = 822
    Top = 190
  end
  object zMedida: TUniQuery
    Connection = connection.Uconnection
    Left = 822
    Top = 246
  end
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 902
    Top = 190
  end
  object dsMedida: TDataSource
    DataSet = zMedida
    Left = 902
    Top = 246
  end
  object dsNumeroSerie: TDataSource
    DataSet = zNumeroSerie
    Left = 982
    Top = 182
  end
  object zNumeroSerie: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select *, concat(sLote,'#39'  '#39',sNumeroSerie ) as Serie from alm_ins' +
        'umos_series where IdInsumo =:Insumo and dCantidad > 0')
    Left = 982
    Top = 246
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Insumo'
        Value = nil
      end>
  end
  object zProyecto: TUniQuery
    Connection = connection.Uconnection
    Left = 155
    Top = 159
  end
  object dsProyecto: TDataSource
    DataSet = zProyecto
    Left = 115
    Top = 223
  end
  object zSalidas: TUniQuery
    Connection = connection.Uconnection
    Left = 43
    Top = 231
  end
  object dsSalidas: TDataSource
    DataSet = zSalidas
    Left = 163
    Top = 95
  end
  object dsPlataforma: TDataSource
    DataSet = zPlataforma
    Left = 217
    Top = 172
  end
  object zPlataforma: TUniQuery
    Connection = connection.Uconnection
    Left = 233
    Top = 92
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    Left = 381
    Top = 293
  end
  object dsEmbarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 293
    Top = 469
  end
  object zDepto: TUniQuery
    Connection = connection.Uconnection
    Left = 721
    Top = 92
  end
  object dsDepto: TDataSource
    DataSet = zDepto
    Left = 633
    Top = 148
  end
  object zSalidaInsumo: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = zSalidaInsumoAfterScroll
    Left = 1094
    Top = 182
  end
  object dsSalidaInsumo: TDataSource
    DataSet = zSalidaInsumo
    Left = 1094
    Top = 238
  end
  object zSeries: TUniQuery
    Connection = connection.Uconnection
    Left = 806
    Top = 342
  end
  object dsSeries: TDataSource
    DataSet = zSeries
    Left = 758
    Top = 342
  end
  object frxReporte: TfrxReport
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
    ReportOptions.LastChange = 43845.989948101850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 424
    Top = 246
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
        Height = 102.047283150000000000
        Top = 400.630180000000000000
        Width = 980.410081999999900000
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Top = 71.811069999999970000
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
            'FO-MEX-OPS-001'
            #169'Copyright Subsea 7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 789.921770000000000000
          Top = 71.811069999999970000
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
            'pagina: [<Page>] de [TotalPages#]'
            'seabed-to-surface')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Width = 978.898135750000000000
          Height = 63.492083530000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."Nota"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Width = 207.874015750000000000
          Height = 18.137723530000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Observaciones generales del embarque:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 140.590600000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Picture2: TfrxPictureView
          Left = 789.965548200000000000
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
          Top = 18.897650000000000000
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
          Left = 294.803340000000000000
          Top = 30.236240000000000000
          Width = 376.440974170000000000
          Height = 19.945599750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITUD DE EMBARQUE')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Top = 105.826840000000000000
          Width = 71.810935750000000000
          Height = 25.696783530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITANTE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 71.811070000000000000
          Top = 105.826840000000000000
          Width = 268.346495750000000000
          Height = 25.696783530000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."Solicitante"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 362.834880000000000000
          Top = 105.826840000000000000
          Width = 154.960595750000000000
          Height = 25.696783530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'DEPARTAMENTO/PROYECTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 517.795610000000000000
          Top = 105.826840000000000000
          Width = 207.874015750000000000
          Height = 25.696783530000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."Departamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 725.669760000000000000
          Top = 105.826840000000000000
          Width = 109.606235750000000000
          Height = 25.696783530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA SOLICITUD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 835.276130000000000000
          Top = 105.826840000000000000
          Width = 143.622005750000000000
          Height = 25.696783530000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."FechaSolicitud"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 671.244094490000000000
          Top = 41.574830000000000000
          Width = 34.015635750000000000
          Height = 20.031496060000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Folio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 705.259842520000000000
          Top = 41.574830000000000000
          Width = 83.149525750000000000
          Height = 20.031496060000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 52.157494960000000000
        Top = 287.244280000000000000
        Width = 980.410081999999900000
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 349.984251968503900000
          Width = 64.251968500000000000
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
            '[frxDBRequisicion."Dimensiones"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 414.236220470000000000
          Width = 52.913385830000000000
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
            '[frxDBRequisicion."Peso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 37.795300000000000000
          Width = 47.244094488189000000
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
            '[frxDBRequisicion."Cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 187.464569370000000000
          Width = 162.519685040000000000
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
            '[frxDBRequisicion."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 467.149594090000000000
          Width = 71.811023620000000000
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
            '[frxDBRequisicion."dFechaRequerida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Width = 37.795275590551200000
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
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 85.417322830000000000
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
            '[frxDBRequisicion."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 538.960612830000000000
          Width = 58.960629921259800000
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
            '[frxDBRequisicion."TipoRecurso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 598.299212600000000000
          Width = 72.566929133858300000
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
            '[frxDBRequisicion."NumeroMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 671.244067640000000000
          Width = 52.913385830000000000
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
            '[frxDBRequisicion."codigoRim"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 724.157455910000000000
          Width = 54.803149610000000000
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
            '[frxDBRequisicion."Factura"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 779.338582680000000000
          Width = 64.251968500000000000
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
            '[frxDBRequisicion."PlataformaOrigen"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 843.968503937008000000
          Width = 64.251968500000000000
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
            '[frxDBRequisicion."Destino"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          Left = 908.220472440000000000
          Width = 70.299212598425200000
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
            '[frxDBRequisicion."Comentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 138.330708660000000000
          Width = 49.133858267716530000
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
            '[frxDBRequisicion."Insumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.402064850000000000
        Top = 219.212740000000000000
        Width = 980.410081999999900000
        Condition = 'frxDBRequisicion."sContrato"'
        object Memo45: TfrxMemoView
          Left = 37.795300000000000000
          Width = 47.244094490000000000
          Height = 45.402064850000000000
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
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 187.464598660000000000
          Width = 162.501890700000000000
          Height = 45.370225370000000000
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
            'Descripci'#243'n del Concepto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 349.984254410000000000
          Width = 64.251902200000000000
          Height = 45.358445110000000000
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
            'Dimensiones')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 414.236220470000000000
          Width = 52.913315810000000000
          Height = 45.358445110000000000
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
            'Peso (KG)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 467.149594090000000000
          Width = 71.811039490000000000
          Height = 45.358445110000000000
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
            'Fecha Requerida de Embarque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Width = 37.795275590000000000
          Height = 45.402064850000000000
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
            'Partida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 85.417322830000000000
          Width = 52.913395590000000000
          Height = 45.402064850000000000
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
            'Unidad de Medida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 538.960612830000000000
          Width = 58.960629921259800000
          Height = 45.358445110000000000
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
            'Tipo de Material')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 598.299212600000000000
          Width = 72.566929133858300000
          Height = 45.358445110000000000
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
            'N'#250'mero de Trazabilidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 671.244067640000000000
          Width = 52.913388270000000000
          Height = 45.358445110000000000
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
            'Reporte Inspecci'#243'n Recibo (RIM)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 724.157455910000000000
          Width = 54.803156930000000000
          Height = 45.358445110000000000
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
            'Factura o Remisi'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 779.338582680000000000
          Width = 64.251979490000000000
          Height = 45.358445110000000000
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
            'Origen de Embarque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 843.968503940000000000
          Width = 64.251968500000000000
          Height = 45.358445110000000000
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
            'Destino de Embarque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 908.220472440000000000
          Width = 70.299212598425200000
          Height = 45.358445110000000000
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
            'Comentarios Particulares')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 138.330708660000000000
          Width = 49.133858267716530000
          Height = 45.402064850000000000
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
            'C'#243'digo del Concepto')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object zGrafica: TUniQuery
    Connection = connection.Uconnection
    Left = 784
    Top = 148
  end
  object dsGrafica: TDataSource
    DataSet = zGrafica
    Left = 872
    Top = 140
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 666
    Top = 416
  end
  object zq_tipomovimiento: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 56
    Top = 40
  end
  object ds_tipomovimiento: TDataSource
    AutoEdit = False
    DataSet = zq_tipomovimiento
    Left = 192
    Top = 222
  end
  object Almacen: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 804
    Top = 171
  end
  object ds_almacen: TDataSource
    AutoEdit = False
    DataSet = Almacen
    Left = 885
    Top = 163
  end
  object dsOrdenesdeTrabajo: TDataSource
    DataSet = uOrdenesTrabajo
    Left = 1072
    Top = 433
  end
  object uOrdenesTrabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 416
    Top = 17
  end
  object dsESolicitud: TDataSource
    DataSet = zESolicitud
    Left = 818
    Top = 70
  end
  object zESolicitud: TUniQuery
    Connection = connection.Uconnection
    Left = 770
    Top = 70
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 264
    object Embalaje1: TMenuItem
      Caption = 'Embalaje'
      OnClick = Embalaje1Click
    end
    object Lgistica1: TMenuItem
      Caption = 'L'#243'gistica'
      OnClick = Lgistica1Click
    end
  end
  object dsSolicitudComp: TDataSource
    DataSet = zSolicitudComp
    Left = 416
    Top = 128
  end
  object zSolicitudComp: TUniQuery
    Left = 480
    Top = 136
  end
end
