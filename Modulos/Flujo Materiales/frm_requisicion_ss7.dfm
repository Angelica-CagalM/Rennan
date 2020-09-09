object FrmRequisicionss7: TFrmRequisicionss7
  Left = 0
  Top = 0
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  BorderStyle = bsSingle
  Caption = 'Requisici'#243'n de Materiales'
  ClientHeight = 605
  ClientWidth = 1158
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1158
    Height = 35
    Align = alTop
    TabOrder = 0
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
      Align = alLeft
      AutoSize = False
      Caption = 'Requisiciones'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
      Height = 33
      Width = 211
    end
    object cxSAP: TcxButton
      Tag = 10
      Left = 212
      Top = 1
      Width = 109
      Height = 33
      Hint = 'Nuevo Registro'
      Align = alLeft
      Caption = 'Formato SAP'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxSAPClick
    end
    object TsArchivo: TcxTextEdit
      Left = 176
      Top = 7
      Hint = 'Nombre de su archivo.'
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 36
    end
    object btnVisualizar: TcxButton
      Left = 459
      Top = 1
      Width = 105
      Height = 33
      Hint = 'Imprimir en Pantalla'
      Align = alLeft
      Caption = 'Visualizar'
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = connection.IconosBarra
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnVisualizarClick
    end
    object btnEnviar5: TcxButton
      Left = 321
      Top = 1
      Width = 138
      Height = 33
      Align = alLeft
      Caption = 'Notificar Rev. M.R.'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = connection.IconosBarra
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnEnviar5Click
    end
    object btnPermanentes: TcxButton
      Left = 564
      Top = 1
      Width = 105
      Height = 33
      Align = alLeft
      Caption = 'Permanentes'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnPermanentesClick
    end
    object btnRevisión: TcxButton
      Left = 669
      Top = 1
      Width = 133
      Height = 33
      Align = alLeft
      Caption = 'Generar Rev. M.R.'
      OptionsImage.ImageIndex = 178
      OptionsImage.Images = frmrepositorio.cxIconosMenus16
      TabOrder = 7
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnRevisiónClick
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 107
    Width = 1158
    Height = 498
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 578
      Height = 496
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 141
        Width = 576
        Height = 354
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
          Top = 317
          Width = 574
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 384
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 384
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
                OnClick = btnPostClick
                ExplicitLeft = 1
                ExplicitTop = 1
                ExplicitHeight = 32
              end
              inherited btnCancel: TcxButton
                Left = 88
                Top = 1
                Height = 32
                Align = alRight
                OnClick = btnCancelClick
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
          Width = 574
          Height = 316
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
          ClientRectBottom = 314
          ClientRectLeft = 2
          ClientRectRight = 572
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 570
              Height = 284
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object tiFolio: TcxDBTextEdit
                Left = 156
                Top = 69
                DataBinding.DataField = 'sNumFolio'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
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
                Width = 13
              end
              object tsDepartamento: TcxDBLookupComboBox
                Left = 156
                Top = 11
                DataBinding.DataField = 'IdDepartamento'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'IdDepartamento'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = dsDepartamento
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                OnEnter = EnterControl
                OnExit = tsDepartamentoExit
                OnKeyUp = GlobalKeyUp
                Width = 644
              end
              object tsNumeroOrden: TcxDBLookupComboBox
                Left = 156
                Top = 100
                DataBinding.DataField = 'sContratoOT'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'sNumeroOrden'
                Properties.ListColumns = <
                  item
                    FieldName = 'sIdFolio'
                  end>
                Properties.ListSource = ds_ordenes_trabajo
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
                Width = 133
              end
              object tdIdFecha2: TcxDBDateEdit
                Left = 399
                Top = 69
                DataBinding.DataField = 'dFechaRequerido'
                DataBinding.DataSource = dsRequisicion
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
                OnExit = tdIdFecha2Exit
                OnKeyUp = GlobalKeyUp
                Width = 49
              end
              object cxProcurementSpecialist: TcxDBMemo
                Left = 156
                Top = 129
                DataBinding.DataField = 'ProcurementSpecialist'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.ScrollBars = ssVertical
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 15
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 40
                Width = 307
              end
              object tsSolicitante: TcxDBTextEdit
                Left = 156
                Top = 40
                DataBinding.DataField = 'sSolicito'
                DataBinding.DataSource = dsRequisicion
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
                Width = 340
              end
              object cbRecurso: TcxDBLookupComboBox
                Left = 803
                Top = 11
                DataBinding.DataField = 'IdTiporecurso'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'IdTiporecurso'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = ds_Recurso
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
                Width = 206
              end
              object cxSAPRelease: TcxDBLookupComboBox
                Left = 508
                Top = 40
                DataBinding.DataField = 'IdSAPSolicitante'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'IdGerente'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = dsGerentes
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
                Width = 501
              end
              object cxPreferredSupplier: TcxDBMemo
                Left = 156
                Top = 175
                DataBinding.DataField = 'PreferredSupplier'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.ScrollBars = ssVertical
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 17
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 40
                Width = 442
              end
              object cxPlanta: TcxDBLookupComboBox
                Left = 461
                Top = 11
                DataBinding.DataField = 'IdPlanta'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'IdPlanta'
                Properties.ListColumns = <
                  item
                    Width = 40
                    FieldName = 'Numero'
                  end
                  item
                    Width = 60
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = dsPlanta
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
                Width = 244
              end
              object cxProyecto: TcxDBLookupComboBox
                Left = 348
                Top = 100
                DataBinding.DataField = 'sNumeroOrden'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'sNumeroOrden'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcionCorta'
                  end>
                Properties.ListSource = ds_POrdenesTrabajo
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 11
                OnEnter = EnterControl
                OnExit = cxProyectoExit
                Width = 87
              end
              object cxOrdenTrabajo: TcxDBLookupComboBox
                Left = 459
                Top = 100
                DataBinding.DataField = 'sNumeroOrdenOT'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'sNumeroOrden'
                Properties.ListColumns = <
                  item
                    FieldName = 'sIdFolio'
                  end>
                Properties.ListSource = dsOrdenesTrabajo
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 12
                OnEnter = cxOrdenTrabajoEnter
                OnExit = cxOrdenTrabajoExit
                Width = 83
              end
              object cxLogistica: TcxDBMemo
                Left = 477
                Top = 129
                DataBinding.DataField = 'NotasLogistica'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.ScrollBars = ssVertical
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 16
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 40
                Width = 532
              end
              object tmComentarios: TcxDBMemo
                Left = 477
                Top = 175
                DataBinding.DataField = 'mComentarios'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.Alignment = taLeftJustify
                Properties.ScrollBars = ssVertical
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 20
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 98
                Width = 532
              end
              object cxManagerAprobador: TcxDBLookupComboBox
                Left = 156
                Top = 221
                DataBinding.DataField = 'IdAutorizaManager'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'IdAutorizador'
                Properties.ListColumns = <
                  item
                    FieldName = 'NombreCompleto'
                  end>
                Properties.ListSource = dsApruebaRequisicion
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = True
                Style.IsFontAssigned = True
                TabOrder = 18
                OnEnter = cxManagerAprobadorEnter
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 145
              end
              object cxQAprobador: TcxDBLookupComboBox
                Left = 156
                Top = 250
                DataBinding.DataField = 'IdAutorizaQA'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'IdAutorizador'
                Properties.ListColumns = <
                  item
                    FieldName = 'NombreCompleto'
                  end>
                Properties.ListSource = dsApruebaQA
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 19
                OnEnter = cxQAprobadorEnter
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 202
              end
              object dxDBToggleSwitch1: TdxDBToggleSwitch
                Left = 427
                Top = 69
                Caption = 'Priodad'
                DataBinding.DataField = 'sPrioridad'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.StateIndicator.Kind = sikText
                Properties.StateIndicator.OffText = 'Normal'
                Properties.StateIndicator.OnText = 'Urgente'
                Properties.ValueChecked = 'Urgente'
                Properties.ValueUnchecked = 'Normal'
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 8
                Transparent = True
              end
              object dxDBToggleSwitch3: TdxDBToggleSwitch
                Left = 840
                Top = 100
                Caption = ' Aplica Log'#237'stica'
                DataBinding.DataField = 'AplicaLogistica'
                DataBinding.DataSource = dsRequisicion
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
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 14
                Transparent = True
              end
              object tsLugarEntrega: TcxDBLookupComboBox
                Left = 583
                Top = 100
                DataBinding.DataField = 'sLugarEntrega'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Properties.KeyFieldNames = 'sIdPlataforma'
                Properties.ListColumns = <
                  item
                    Caption = 'Lugar de Entrega'
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListSource = ds_plataforma
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 13
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 251
              end
              object cxUploadingPoint: TcxDBMemo
                Left = 750
                Top = 69
                DataBinding.DataField = 'sPuntoCarga'
                DataBinding.DataSource = dsRequisicion
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
                OnKeyUp = GlobalKeyUp
                Height = 25
                Width = 259
              end
              object tdidFecha: TcxDBDateEdit
                Left = 272
                Top = 69
                DataBinding.DataField = 'dFechaSolicitado'
                DataBinding.DataSource = dsRequisicion
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
                OnExit = tdidFechaExit
                OnKeyUp = GlobalKeyUp
                Width = 36
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Tracking Number'
                Control = tiFolio
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup8
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Departamento'
                Control = tsDepartamento
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
              object dxLayoutItem16: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'Contrato'
                Control = tsNumeroOrden
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Fecha Requerido'
                Control = tdIdFecha2
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem22: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup13
                AlignHorz = ahClient
                CaptionOptions.Text = 'Procurement Specialist'
                Control = cxProcurementSpecialist
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 3
                AutoCreated = True
              end
              object dxLayoutItem7: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Solicitante'
                Control = tsSolicitante
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem19: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup8
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Material/Service'
                Control = cbRecurso
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem15: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'SAP Release'
                Control = cxSAPRelease
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem12: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                CaptionOptions.Text = 'Preferred Supplier'
                Control = cxPreferredSupplier
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem13: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup8
                CaptionOptions.Text = 'Plant'
                Control = cxPlanta
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem30: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahClient
                CaptionOptions.Text = 'Proyecto'
                Control = cxProyecto
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem24: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahClient
                CaptionOptions.Text = 'Orden Trabajo'
                Control = cxOrdenTrabajo
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 4
                AutoCreated = True
              end
              object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 5
                AutoCreated = True
              end
              object dxLayoutItem31: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup13
                AlignVert = avClient
                CaptionOptions.Text = 'Especif. Log'#237'stica'
                Control = cxLogistica
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem8: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup12
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Notas Generales '
                Control = tmComentarios
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem14: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Project Manager Approval'
                Control = cxManagerAprobador
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup12
                AlignHorz = ahClient
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem11: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'QA  Advisor Approval'
                Control = cxQAprobador
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem10: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.AlignHorz = taRightJustify
                CaptionOptions.Text = 'dxDBToggleSwitch1'
                CaptionOptions.Visible = False
                Control = dxDBToggleSwitch1
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem32: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignVert = avClient
                CaptionOptions.Visible = False
                Control = dxDBToggleSwitch3
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutItem6: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'Goods Recipient'
                Control = tsLugarEntrega
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem9: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'Unloading Point'
                Control = cxUploadingPoint
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Fecha Solicitud'
                Control = tdidFecha
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 129
        Width = 576
        Height = 12
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_requsicion: TcxGrid
        Left = 1
        Top = 1
        Width = 576
        Height = 128
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
          DataController.DataSource = dsRequisicion
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxView_RequsicionDataControllerFilterChanged
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.OnBeforeChange = cxView_RequsicionDataControllerFilterBeforeChange
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
          object cxView_RequsicionColumn6: TcxGridDBColumn
            Caption = 'Prioridad'
            DataBinding.FieldName = 'sPrioridad'
            Options.Editing = False
            Width = 32
          end
          object cxView_RequsicionColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'sNumFolio'
            Options.Editing = False
            Width = 48
          end
          object cxView_RequsicionColumn3: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'dIdFecha'
            Options.Editing = False
            Width = 30
          end
          object cxView_RequsicionColumn8: TcxGridDBColumn
            Caption = 'Fecha Requerido'
            DataBinding.FieldName = 'dFechaRequerido'
            Options.Editing = False
            Width = 40
          end
          object cxView_RequsicionColumn10: TcxGridDBColumn
            Caption = 'Tipo Recurso'
            DataBinding.FieldName = 'Recurso'
            Options.Editing = False
            Width = 33
          end
          object cxView_RequsicionColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Contrato'
            Options.Editing = False
            Width = 36
          end
          object cxView_RequsicionColumn13: TcxGridDBColumn
            DataBinding.FieldName = 'Proyecto'
            Width = 55
          end
          object cxView_RequsicionColumn12: TcxGridDBColumn
            Caption = 'Orden Trabajo'
            DataBinding.FieldName = 'Orden_trabajo'
            Width = 56
          end
          object cxView_RequsicionColumn11: TcxGridDBColumn
            Caption = 'Planta'
            DataBinding.FieldName = 'NombrePlanta'
            Options.Editing = False
            Width = 35
          end
          object cxView_RequsicionColumn4: TcxGridDBColumn
            Caption = 'Centro Costo'
            DataBinding.FieldName = 'sIdFolioCC'
            Width = 56
          end
          object cxView_RequsicionColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Departamento'
            Options.Editing = False
            Width = 50
          end
          object cxView_RequsicionColumn7: TcxGridDBColumn
            Caption = 'Usuario'
            DataBinding.FieldName = 'sIdUsuario'
            Width = 22
          end
          object cxView_RequsicionColumn5: TcxGridDBColumn
            Caption = 'Estatus'
            DataBinding.FieldName = 'sStatus'
            Options.Editing = False
            Width = 45
          end
          object colum_comentarios: TcxGridDBColumn
            AlternateCaption = 'ComentarioStatus'
            Caption = 'Comentarios'
            DataBinding.FieldName = 'ComentarioStatus'
            Options.Editing = False
            Width = 37
          end
          object cxView_RequsicionColumn14: TcxGridDBColumn
            Caption = 'Revisi'#243'n'
            DataBinding.FieldName = 'Revisiones'
            Width = 40
          end
        end
        object grid_requsicionLevel1: TcxGridLevel
          GridView = cxView_Requsicion
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 579
      Top = 1
      Width = 8
      Height = 496
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 587
      Top = 1
      Width = 570
      Height = 496
      Align = alRight
      TabOrder = 2
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 568
        Height = 494
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 33
          Width = 566
          Height = 135
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
          OnClick = cxPageDetalleClick
          ClientRectBottom = 133
          ClientRectLeft = 2
          ClientRectRight = 564
          ClientRectTop = 29
          object cxTabMaterial: TcxTabSheet
            Caption = 'Materiales'
            ImageIndex = 61
            object cxGridMateriales: TcxGrid
              Left = 0
              Top = 0
              Width = 562
              Height = 104
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
                OnCellClick = cxView_MaterialesCellClick
                OnCellDblClick = cxView_MaterialesCellDblClick
                DataController.DataSource = ds_anexo_prequisicion
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
                object cxView_MaterialesColumn1: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sIdInsumo'
                  Width = 79
                end
                object cxView_MaterialesColumn5: TcxGridDBColumn
                  Caption = 'No. Material'
                  DataBinding.FieldName = 'NumeroMaterial'
                  Width = 69
                end
                object cxView_MaterialesColumn6: TcxGridDBColumn
                  Caption = 'Partida'
                  DataBinding.FieldName = 'Extraordinario'
                  Width = 58
                end
                object cxView_MaterialesColumn8: TcxGridDBColumn
                  Caption = 'P. Anexo'
                  DataBinding.FieldName = 'Anexo'
                end
                object cxView_MaterialesColumn2: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'sDescripcion'
                  Width = 250
                end
                object cxView_MaterialesColumn4: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 47
                end
                object cxView_MaterialesColumn3: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Width = 45
                end
                object cxView_MaterialesColumn7: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Visible = False
                  Width = 64
                end
              end
              object cxGridMaterialesLevel1: TcxGridLevel
                GridView = cxView_Materiales
              end
            end
          end
          object tabInformes: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            OnShow = tabInformesShow
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 189
              Width = 562
              Height = 0
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 560
                Height = 0
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
              Width = 562
              Height = 12
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 562
              Height = 177
              Align = alTop
              TabOrder = 2
              object dxLayoutControl3: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 554
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
                  Left = 399
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
          Width = 566
          Height = 32
          Align = alTop
          TabOrder = 1
          object cxNuevoDetalle: TcxButton
            Left = 241
            Top = 1
            Width = 81
            Height = 30
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
            Left = 322
            Top = 1
            Width = 81
            Height = 30
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
            Left = 403
            Top = 1
            Width = 81
            Height = 30
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
          object cxImportar: TcxButton
            Left = 484
            Top = 1
            Width = 81
            Height = 30
            Align = alRight
            Caption = 'Importar '
            OptionsImage.ImageIndex = 71
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxImportarClick
          end
        end
        object PanelDown: TPanel
          Left = 1
          Top = 457
          Width = 566
          Height = 36
          Align = alBottom
          TabOrder = 2
          object cxCancelarDetalle: TcxButton
            Left = 481
            Top = 1
            Width = 84
            Height = 34
            Align = alRight
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
            Left = 394
            Top = 1
            Width = 87
            Height = 34
            Align = alRight
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
        object PanelMaterial: TPanel
          Left = 1
          Top = 176
          Width = 566
          Height = 281
          Align = alBottom
          TabOrder = 3
          Visible = False
          object dxLayoutControl5: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 564
            Height = 279
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxGrupoMaterial: TcxDBLookupComboBox
              Left = 109
              Top = 11
              DataBinding.DataField = 'IdGrupo'
              DataBinding.DataSource = ds_anexo_prequisicion
              ParentFont = False
              Properties.KeyFieldNames = 'IdGrupo'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'CodigoMaterial'
                end
                item
                  FieldName = 'Nombre'
                end
                item
                  Caption = 'Comentarios'
                  FieldName = 'Comentarios'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = dsGrupoMaterial
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              OnEnter = SalidaControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 145
            end
            object cxWbs: TcxDBLookupComboBox
              Left = 109
              Top = 42
              DataBinding.DataField = 'sNumeroOrden_Workorder'
              DataBinding.DataSource = ds_anexo_prequisicion
              ParentFont = False
              Properties.GridMode = True
              Properties.KeyFieldNames = 'sNumeroOrden'
              Properties.ListColumns = <
                item
                  Width = 40
                  FieldName = 'sIdFolio'
                end
                item
                  Width = 60
                  FieldName = 'Descripcion'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCentroCosto
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
              Width = 145
            end
            object cxCantidad: TcxDBCalcEdit
              Left = 390
              Top = 73
              DataBinding.DataField = 'dCantidad'
              DataBinding.DataSource = ds_anexo_prequisicion
              ParentFont = False
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
              Width = 76
            end
            object cxNumeroMaterial: TcxDBTextEdit
              Left = 109
              Top = 73
              DataBinding.DataField = 'NumeroMaterial'
              DataBinding.DataSource = ds_anexo_prequisicion
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
              Width = 109
            end
            object cxRequerimientosQA: TcxCheckListBox
              Left = 109
              Top = 192
              Width = 448
              Height = 106
              Columns = 2
              Items = <>
              ParentFont = False
              TabOrder = 9
            end
            object cxNotas: TcxDBMemo
              Left = 109
              Top = 131
              DataBinding.DataField = 'sObservacion'
              DataBinding.DataSource = ds_anexo_prequisicion
              ParentFont = False
              Properties.ScrollBars = ssVertical
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
              Height = 55
              Width = 448
            end
            object cxFindGM: TcxButton
              Left = 501
              Top = 11
              Width = 35
              Height = 25
              OptionsImage.ImageIndex = 58
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 1
              OnClick = cxFindGMClick
            end
            object cxFindWbs: TcxButton
              Left = 501
              Top = 42
              Width = 35
              Height = 25
              OptionsImage.ImageIndex = 58
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 3
              OnClick = cxFindWbsClick
            end
            object cxExtraordinario: TcxDBTextEdit
              Left = 109
              Top = 102
              Hint = 'Partida/Extraordinario'
              HelpType = htKeyword
              DataBinding.DataField = 'Extraordinario'
              DataBinding.DataSource = ds_anexo_prequisicion
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 6
              Width = 205
            end
            object dxDBToggleSwitch2: TdxDBToggleSwitch
              Left = 369
              Top = 102
              Caption = 'Codigo Material'
              DataBinding.DataField = 'IncluyeCodigoMat'
              DataBinding.DataSource = ds_anexo_prequisicion
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
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 7
              Transparent = True
            end
            object dxLayoutControl5Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahClient
              CaptionOptions.Text = 'Grupo Material'
              Control = cxGrupoMaterial
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'Work Order'
              Control = cxWbs
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahClient
              CaptionOptions.Text = 'Cantidad'
              Control = cxCantidad
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Numero Material'
              Control = cxNumeroMaterial
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl5Group_Root
              AlignHorz = ahClient
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'QA Requirement'
              CaptionOptions.WordWrap = True
              Control = cxRequerimientosQA
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Nota'
              Control = cxNotas
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl5Group_Root
              AlignHorz = ahClient
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl5Group_Root
              AlignHorz = ahClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = cxFindGM
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = cxFindWbs
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem33: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Partida de Anexo'
              Control = cxExtraordinario
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = dxDBToggleSwitch2
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl5Group_Root
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
        object cxSplitMaterial: TcxSplitter
          Left = 1
          Top = 168
          Width = 566
          Height = 8
          AlignSplitter = salBottom
          Visible = False
        end
      end
    end
  end
  object PanelProgreso: TPanel
    Left = 0
    Top = 35
    Width = 1158
    Height = 22
    Align = alTop
    TabOrder = 2
    Visible = False
    object LabelProceso: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = 'Procesando'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Visible = False
      Height = 20
      Width = 96
    end
    object progreso: TcxProgressBar
      Left = 97
      Top = 1
      Align = alClient
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Visible = False
      Width = 1060
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 57
    Width = 1158
    Height = 50
    Align = alTop
    TabOrder = 3
    object dxLayoutControl7: TdxLayoutControl
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
      object cxFiltroRequerido: TcxButton
        Left = 281
        Top = 11
        Width = 71
        Height = 25
        Caption = 'Filtrar'
        OptionsImage.ImageIndex = 63
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = cxFiltroRequeridoClick
      end
      object cxInicioRequerido: TcxDateEdit
        Left = 46
        Top = 12
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 100
      end
      object cxFinRequerido: TcxDateEdit
        Left = 175
        Top = 12
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 100
      end
      object cxTodosUsuarios: TcxCheckBox
        Left = 358
        Top = 11
        Caption = 'Todos los usuarios'
        ParentFont = False
        Properties.ValueChecked = 'True'
        Properties.ValueUnchecked = 'False'
        Properties.OnChange = cxTodosUsuariosPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Transparent = True
      end
      object cxTodosEstatus: TcxCheckBox
        Left = 493
        Top = 11
        Caption = 'Todos los Estatus'
        ParentFont = False
        Properties.OnChange = cxTodosEstusPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 4
        Transparent = True
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
      object dxLayoutItem34: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnLimpiarF
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem35: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxFiltroRequerido
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem36: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Inicio'
        Control = cxInicioRequerido
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem37: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Fin'
        Control = cxFinRequerido
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutUsusarios: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = cxTodosUsuarios
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutEstatus: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Visible = False
        Control = cxTodosEstatus
        ControlOptions.ShowBorder = False
        Index = 4
      end
    end
  end
  object dsDepartamento: TDataSource
    DataSet = zDepartamento
    Left = 521
    Top = 146
  end
  object zDepartamento: TUniQuery
    Connection = connection.Uconnection
    Left = 525
    Top = 186
  end
  object anexo_requisicion: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 39
    Top = 188
  end
  object dsRequisicion: TDataSource
    DataSet = anexo_requisicion
    Left = 39
    Top = 140
  end
  object ds_anexo_prequisicion: TDataSource
    DataSet = anexo_prequisicion
    Left = 109
    Top = 142
  end
  object anexo_prequisicion: TUniQuery
    Connection = connection.Uconnection
    BeforePost = anexo_prequisicionBeforePost
    Left = 112
    Top = 186
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    OnPopup = PopupPrincipalPopup
    Left = 89
    Top = 256
    object ActualizaMateriales1: TMenuItem
      Caption = 'Actualiza Material(es)'
      ImageIndex = 43
      OnClick = ActualizaMateriales1Click
    end
    object NoRequiereInspeccionQA1: TMenuItem
      Caption = 'No Requiere Inspecci'#243'n QA'
      ImageIndex = 34
      OnClick = NoRequiereInspeccionQA1Click
    end
    object N5: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object MarcarcomoConsumible1: TMenuItem
      Caption = 'Ocultar Trazabilidad'
      ImageIndex = 60
      OnClick = MarcarcomoConsumible1Click
    end
    object AsignarCdigoMaterial1: TMenuItem
      Caption = 'Asignar Trazabilidad'
      ImageIndex = 61
      OnClick = AsignarCdigoMaterial1Click
    end
    object IncluyeCodigoMaterial1: TMenuItem
      Caption = 'Incluye Codigo Material'
      ImageIndex = 58
      OnClick = IncluyeCodigoMaterial1Click
    end
    object OcultarCodigoMaterial1: TMenuItem
      Caption = 'Ocultar Codigo Material'
      ImageIndex = 64
      OnClick = OcultarCodigoMaterial1Click
    end
    object SeguimientoMaterialxPartidasdeAnexo1: TMenuItem
      Tag = 1
      Caption = 'Seguimiento Material General'
      ImageIndex = 5
      Visible = False
      OnClick = SeguimientoMaterialxPartidasdeAnexo1Click
    end
    object N6: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object CopiarGrupoMaterial1: TMenuItem
      Caption = 'Copiar Grupo Material'
      ImageIndex = 60
      OnClick = CopiarGrupoMaterial1Click
    end
    object CopiarQARequirement1: TMenuItem
      Caption = 'Copiar QA Requirement'
      ImageIndex = 60
      OnClick = CopiarQARequirement1Click
    end
    object PegarGrupoMaterial1: TMenuItem
      Caption = 'Pegar Grupo Material'
      Enabled = False
      ImageIndex = 59
      OnClick = PegarGrupoMaterial1Click
    end
    object PegarQARequirement1: TMenuItem
      Caption = 'Pegar QA Requirement'
      Enabled = False
      ImageIndex = 59
      OnClick = PegarQARequirement1Click
    end
    object N3: TMenuItem
      Tag = 1
      Caption = '-'
      Visible = False
    end
    object CopiarWorkOrder1: TMenuItem
      Caption = 'Copiar Work Order'
      OnClick = CopiarWorkOrder1Click
    end
    object PegarWorkOrder1: TMenuItem
      Caption = 'Pegar Work Order'
      Enabled = False
      OnClick = PegarWorkOrder1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Caption = 'Copiar'
      ShortCut = 16451
    end
    object Paste1: TMenuItem
      Caption = 'Pegar'
      ShortCut = 16470
    end
    object ComentarMR1: TMenuItem
      Caption = 'Comentar MR'
      OnClick = ComentarMR1Click
    end
    object NuevoServicio: TMenuItem
      Caption = 'A'#241'adir Servicio'
      Visible = False
      OnClick = NuevoServicioClick
    end
    object NuevoAccesorio1: TMenuItem
      Caption = 'Agregar Accesorios'
      OnClick = NuevoAccesorio1Click
    end
    object VerAccesorios1: TMenuItem
      Caption = 'Ver Accesorios'
      OnClick = VerAccesorios1Click
    end
    object traerAccesorios1: TMenuItem
      Caption = 'Traer Accesorios'
      OnClick = traerAccesorios1Click
    end
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 376
    Top = 260
  end
  object frxDBRequisicion: TfrxDBDataset
    UserName = 'frxDBRequisicion'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 312
    Top = 261
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
    ReportOptions.LastChange = 43823.525512546290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure GroupFooter4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo27.Text := FormatFloat('#39'#,##0.00'#39',(<frxOrdenCompra."dCos' +
        'to">*<frxOrdenCompra."dCantidad">))'
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      ''
      'end;'
      ''
      'procedure Memo47OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo48OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo51OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo32OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo26OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo26.Text := FormatFloat('#39',#0.00'#39',(<frxOrdenCompra."dCosto"' +
        '>))'
      'end;'
      ''
      'begin'
      ''
      ''
      ''
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 240
    Top = 261
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxOrdenCompra
        DataSetName = 'frxOrdenCompra'
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
      PaperHeight = 979.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 1084.725110000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
        object Memo11: TfrxMemoView
          Width = 64.251968500000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 64.251968500000000000
          Width = 92.598454490000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ord Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 156.850422990000000000
          Width = 68.031503390000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 224.881933700000000000
          Width = 274.015772440000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Description')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 501.039370080000000000
          Width = 105.826771650000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit Price')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 607.370078740000000000
          Width = 131.214148100000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Net Value')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677167800000000000
        Top = 1130.079470000000000000
        Width = 740.409927000000000000
        DataSet = frmrepositorio.frxOrdenCompra
        DataSetName = 'frxOrdenCompra'
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Width = 64.251968500000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '000[Line#]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 64.251968500000000000
          Width = 92.598454490000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."dCantidad"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 156.850422990000000000
          Width = 68.031503390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Medida"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 224.881933700000000000
          Width = 274.015772440000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxOrdenCompra."mDescripcion"]'
            
              '[IIF(<IMPRIME_NOTA> = '#39'Si'#39',#13+<frxOrdenCompra."ComentarioStatus' +
              '">+#13,'#39#39')]'
            'Deliv. date: [frxOrdenCompra."sTiempoEntrega"]')
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
        object Memo26: TfrxMemoView
          Left = 501.165354330000000000
          Width = 105.826771650000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<frxOrdenCompra."dCosto"> ]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 607.370078740000000000
          Width = 131.214148100000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxOrdenCompra."dCosto">*<frxOrdenCompra."dCantidad">)]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 1727.245195350000000000
        Top = 1262.363020000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Stretched = True
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Top = 22.677179999999910000
          Width = 716.220782440000000000
          Height = 642.520085350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              'La cotizaci'#243'n aplicar'#225' a esta Orden de Compra en lo que respecta' +
              ' a precio y alcance del'
            
              'servicio '#250'nicamente, y cualquier otro t'#233'rmino o condici'#243'n conten' +
              'ido en dichas'
            
              'cotizaciones es aqu'#237' revocado y reemplazado en su totalidad por ' +
              'los t'#233'rminos y'
            'condiciones de Subsea 7 aqu'#237' se'#241'alados: FO-GL-SCM-016.'
            ''
            'Las facturas deber'#225'n enviarse a InvoiceAPMex@Subsea7.com'
            ''
            
              'Por favor facture de acuerdo a la Orden de Compra adjunta, con l' +
              'as mismas partidas,'
            
              'descripciones y cantidades, no se debe incluir m'#225's de una Orden ' +
              'de Compra por factura.'
            
              'Cualquier desviaci'#243'n a lo anterior retrasar'#225' el ciclo de proceso' +
              ' de su factura y puede'
            'potencialmente retrasar su pago.'
            ''
            
              'La factura deber'#225' indicar en su texto en caso de Maquinaria, equ' +
              'ipos y materiales'
            
              'permanentes ya sea renta o suministro: N'#250'mero de serie, n'#250'mero d' +
              'e parte, N'#250'mero'
            
              'econ'#243'mico, TAG, Marca y/o Modelo, N'#250'mero de pedimento, pa'#237's de o' +
              'rigen, todo aquello que'
            
              'aplique para identificar y relacionar de manera clara el materia' +
              'l f'#237'sicamente con la'
            
              'factura y toda esta informaci'#243'n tambi'#233'n deber'#225' estar indicada en' +
              ' los documentos de'
            
              'entrega de los bienes ya que de no tenerlos almac'#233'n no podr'#225' rec' +
              'ibirlos.'
            ''
            
              'Para todos los proveedores deber'#225'n enviar v'#237'a electr'#243'nica para l' +
              'a recepci'#243'n de sus'
            'facturas la siguiente informaci'#243'n:'
            ''
            '- Factura'
            '- Archivo Xml'
            '- Remisi'#243'n y/o factura sellada y firmada por almac'#233'n.'
            '- Orden de compra.'
            ''
            
              'Se deber'#225'n apegar a los horarios y reglamentos de seguridad de e' +
              'ntrega en almac'#233'n, as'#237
            
              'tambi'#233'n cuando se traten de servicios con personal Offshore (se ' +
              'anexa oficio).'
            ''
            
              'Con el fin de eliminar retrasos adicionales en el pago, la factu' +
              'ra deber'#225' indicar'
            
              'claramente la Compa'#241#237'a Subsea 7 seg'#250'n la Orden de Compra y deber' +
              #225' incluir el n'#250'mero de'
            
              'Orden de Compra, Nombre de Proyecto y de Embarcaci'#243'n, cuando apl' +
              'ique.'
            ''
            
              'Si su servicios o materiales adicionales son solicitados pero no' +
              ' se han acompa'#241'ado con'
            
              'una orden de compra revisada, por favor contacte al firmante par' +
              'a obtener aprobaci'#243'n de'
            
              'los mismos por el proyecto y agregarlos a esta orden de compra. ' +
              'La omisi'#243'n de lo anterior ocasionar'#225' retraso en el pago de su fa' +
              'ctura.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Width = 716.220782440000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Terms of delivery')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Top = 699.213050000000100000
          Width = 716.220782440000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Shipping instructions')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Top = 721.890230000000000000
          Width = 716.220782440000000000
          Height = 1001.575435350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'El proveedor es responsable de lo siguiente:'
            ''
            
              'Todos los bienes deber'#225'n etiquetarse con toda la correspondencia' +
              ' relacionada con esta'
            
              'orden de compra y deber'#225'n hacer referencia a los siguientes deta' +
              'lles: Subsea 7 M'#233'xico |'
            
              'REQ. 6482S1256|10899641 PO 4400015609. Esta informaci'#243'n necesita' +
              ' colocarse donde sea'
            'f'#225'cilmente identificable por el receptor'
            ''
            
              'Proporcionar copias electr'#243'nicas de las Hojas de Datos de Seguri' +
              'dad del material'
            'apropiadas, antes del embarque de los bienes, cuando aplique.'
            ''
            
              'Entregar copias electr'#243'nicas de Certificados de Conformidad, o C' +
              'ertificados que'
            
              'identifiquen cualquier informaci'#243'n que sea relevante a la operac' +
              'i'#243'n o el manejo de los'
            'bienes, y todos los Certificados de Calidad de relevancia.'
            ''
            
              'Proporcionar un aviso de embarque as'#237' como la informaci'#243'n de ras' +
              'treo y documentaci'#243'n'
            'requeridas.'
            ''
            
              'Notificar a Subsea 7 contra entrega de los bienes, y proporciona' +
              'r Comprobante de Entrega'
            'electr'#243'nico.'
            ''
            
              'Proporcionar, cuando as'#237' apliqu'#233', la documentaci'#243'n necesaria par' +
              'a'
            
              'importaci'#243'n-exportaci'#243'n. Subsea 7 deber'#225' notificar al proveedor ' +
              'cuando los bienes ser'#225'n'
            'importados o exportados.'
            ''
            
              'Si tiene cualquier duda o requiere de mayor asistencia, por favo' +
              'r contacte al aqu'#237
            'firmante.'
            ''
            
              'Para en caso de materiales y equipos que sea necesario el uso de' +
              ' gr'#250'a, Hiab o Montacargas'
            
              'y que no est'#233' al alcance de su propuesta deber'#225' avisar al almac'#233 +
              'n y al comprador con 24'
            
              'horas de anticipaci'#243'n, para que se programe la disposici'#243'n de lo' +
              's mismos, en los horarios'
            'previos establecidos.'
            ''
            
              'Todos los materiales deber'#225'n venir debidamente embalados e ident' +
              'ificados con su'
            'trazabilidad que le corresponda.'
            ''
            
              'Los proveedores deber'#225'n presentar el documento de contenido naci' +
              'onal anexo.'
            
              'Para el caso de equipo favor de revisar el Check list anexo para' +
              ' evitar retrasos en la'
            'recepci'#243'n.'
            ''
            
              'Para entrega de material al almac'#233'n el personal deber'#225' traer su ' +
              'equipo EPP para'
            'permitirles el acceso.'
            ''
            
              'POR FAVOR CONFIRME LA RECEPCI'#211'N DE ESTA ORDEN DE COMPRA DENTRO D' +
              'E LAS SIGUIENTES 24'
            
              'HORAS, PASADO ESTE TIEMPO SE DA COMO ACEPTADO LA ORDEN DE COMPRA' +
              ' Y SUS TERMINOS Y'
            'CONDICIONES QUE APLIQUE.'
            ''
            
              '"NOTA: Si el servicio solicitado en esta P.O., es realizado dent' +
              'ro de las instalaciones'
            
              'bajo control de Subsea 7, el proveedor a quien se manda esta P.O' +
              '. ser'#225' responsable de'
            
              'cualquier da'#241'o causado como consecuencia del servicio realizado,' +
              ' as'#237' mismo debe de'
            
              'retirar todos los materiales utilizados y todos aquellos residuo' +
              's generados, aplica'
            
              'tambi'#233'n cualquier da'#241'o ocasionado en la entrega de material si h' +
              'ay una mala maniobra por'
            'parte del proveedor que cause un da'#241'o a las instalaciones."'
            ''
            
              'Para el caso de alg'#250'n incumplimiento por parte de su representad' +
              'a ya sea en su tiempo de'
            
              'entrega, procesos, documentaci'#243'n no presentada en tiempo y forma' +
              ', incumplimiento de'
            
              'lineamientos de HSE, operaciones, calidad y SCM, de manera conci' +
              'liada se realizar'#225' una'
            
              'penalizaci'#243'n que no podr'#225' ser mayor al 5% del valor total de la ' +
              'P.O.'
            ''
            
              'Los d'#237'as de cr'#233'dito contaran a partir de que la factura sea conf' +
              'irmada de recibido por'
            'INVOICEAPMEX@SUBSEA7.COM')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Top = 1062.047930000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Top = 1039.370750000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Top = 1016.693570000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 3012.285410000000000000
        Width = 740.409927000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 51.338590000000000000
        Top = 3076.537420000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        object Memo32: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779529999999795000
          Width = 262.677182440000000000
          Height = 37.795285350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Signed and Approved by:')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 850.394201180000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 550.488560000000000000
          Top = 3.779530000000001000
          Width = 174.458192930000000000
          Height = 52.913371180000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Frame.Style = fsDouble
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Top = 117.165430000000000000
          Width = 368.503937010000000000
          Height = 170.078801180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxOrdenCompra."RazonSocial"]'
            
              '[<frxOrdenCompra."Calle"> +'#39' '#39'+ <frxOrdenCompra."Interior"> +'#39' '#39 +
              '+<frxOrdenCompra."Exterior">+'#39' '#39'+ <frxOrdenCompra."Colonia">+'#39' C' +
              '.P. '#39'+ <frxOrdenCompra."CodigoPostal"> +'#39' '#39'+<frxOrdenCompra."Ciu' +
              'dad">+'#39' '#39'+ <frxOrdenCompra."Estado">] ')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 518.575140000000000000
          Top = 60.472480000000000000
          Width = 208.196435500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            'Page [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 219.771800000000000000
          Top = 26.456710000000000000
          Width = 249.771265500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'Purchase Order')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo50: TfrxMemoView
          Left = 219.771800000000000000
          Top = 59.692950000000000000
          Width = 249.771265500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'PO Date:[frxOrdenCompra."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 8.118120000000000000
          Top = 37.015770000000000000
          Width = 200.637375500000000000
          Height = 41.574781180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8W = (
            'PO Number: [frxOrdenCompra."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Top = 98.267780000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SELLER COMPANY')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo56: TfrxMemoView
          Left = 368.503937010000000000
          Top = 117.165430000000000000
          Width = 368.503937010000000000
          Height = 79.370081180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]'
            '[setup."sTelefono"]'
            '[setup."sEmail"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo57: TfrxMemoView
          Left = 368.503937007874000000
          Top = 98.267780000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BUYER COMPANY')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 321.260050000000000000
          Width = 368.503937010000000000
          Height = 154.960681180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]'
            ''
            '[setup."sTelefono"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 287.244280000000000000
          Width = 368.503937010000000000
          Height = 15.118071180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SHIP TO ADDRESS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 368.503937010000000000
          Top = 306.141930000000000000
          Width = 368.503937010000000000
          Height = 170.078801180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]'
            ''
            '[setup."sTelefono"]'
            '[setup."sEmail"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo5: TfrxMemoView
          Left = 368.503937007874000000
          Top = 287.244280000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INVOICE ADDRESS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 302.362400000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'As Follow unless otherwise especified at line item level')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 368.503937010000000000
          Top = 196.535560000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Buyer Contact Datails')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 368.503937010000000000
          Top = 215.433210000000000000
          Width = 368.503937010000000000
          Height = 71.811021180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo59: TfrxMemoView
          Top = 476.220780000000000000
          Width = 368.503937010000000000
          Height = 34.015721180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Delivery Terms/Trade Terms:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 368.614410000000000000
          Top = 476.220780000000000000
          Width = 368.503937010000000000
          Height = 34.015721180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Currency'
            '[frxOrdenCompra."Moneda"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
          Top = 510.236550000000000000
          Width = 731.338817010000000000
          Height = 83.149611180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Note:'
            
              'All correspondence and/or concerting this purchase order must in' +
              'clude the purchase order and line item number.'
            'Payment terms: Net 30 Days from inv. receipt')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 593.386210000000000000
          Width = 716.220697010000000000
          Height = 226.771751180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Toda la correspondencia relacionada a esta orden de compra debe ' +
              'hacer referencia a los siguientes detalles: [frxOrdenCompra."Raz' +
              'onSocial"]/ Solicitud de Compra [frxOrdenCompra."NumeroCotizacio' +
              'n"] Solicitante Original: JUAN CASTELLANOS'
            ''
            
              'Todo servicio tendr'#225' un plazo no mayor a 60 d'#237'as posterior en ha' +
              'berse realizado y/o enviado la P.O. para la presentaci'#243'n de su e' +
              'stimaci'#243'n para su aprobaci'#243'n, posterior a dicho periodo no se po' +
              'dr'#225' regularizar no se conceder'#225' ning'#250'n servicio.'
            ''
            
              'Se tendr'#225' como limite los primeros 20 d'#237'as de cada mes para que ' +
              'el proveedor presente su estimaci'#243'n liberada y firmada al depart' +
              'amento de "Servicios de Proyectos" para la autorizaci'#243'n de factu' +
              'ra.'
            ''
            
              'Favor de enviar los T&C firmados en caso de no mandarlos en 24 h' +
              'oras ser'#225'n tomados como aceptados.')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo20: TfrxMemoView
          Left = 7.559060000000000000
          Top = 823.937540000000000000
          Width = 731.338817010000000000
          Height = 22.677131180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Account Queries and Statements, email to S7US_AP@subsea7.com')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 891.969080000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        object Memo9: TfrxMemoView
          Left = 518.016080000000000000
          Top = 31.574830000000020000
          Width = 208.196435500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            'Page [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 219.212740000000000000
          Top = 2.559060000000045000
          Width = 249.771265500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'Purchase Order')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo55: TfrxMemoView
          Left = 219.212740000000000000
          Top = 30.795300000000000000
          Width = 249.771265500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'PO Date:[frxOrdenCompra."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.795300000000000000
          Width = 211.975965500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8W = (
            'PO Number: [frxOrdenCompra."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 1175.433830000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Stretched = True
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 18.897374170000000000
          Width = 100.535450160000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sNumFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 18.897650000000000000
          Top = 22.677179999999910000
          Width = 701.102662440000000000
          Height = 37.795285350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxOrdenCompra."mDescripcion"]'
            ''
            '[frxOrdenCompra."sTiempoEntrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object OpenXLS: TOpenDialog
    OnClose = OpenXLSClose
    DefaultExt = 'XLS'
    Filter = 
      'Archivo de Microsoft Excel 2003|*.XLS|Archivo de Microsoft Excel' +
      ' |*.XLSX'
    OnFolderChange = OpenXLSFolderChange
    OnSelectionChange = OpenXLSSelectionChange
    Left = 392
    Top = 98
  end
  object styleGrid: TcxStyleRepository
    Left = 356
    Top = 96
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
    Left = 781
    Top = 207
  end
  object ds_ordenes_trabajo: TDataSource
    AutoEdit = False
    DataSet = Qordenes_trabajo
    Left = 781
    Top = 159
  end
  object zGrafica: TUniQuery
    Connection = connection.Uconnection
    Left = 866
    Top = 180
  end
  object dsGrafica: TDataSource
    DataSet = zGrafica
    Left = 858
    Top = 148
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 380
    Top = 309
  end
  object zCentroCosto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from segmentos')
    Left = 430
    Top = 226
  end
  object dsCentroCosto: TDataSource
    DataSet = zCentroCosto
    Left = 454
    Top = 146
  end
  object zRecurso: TUniQuery
    Connection = connection.Uconnection
    Left = 716
    Top = 142
  end
  object ds_Recurso: TDataSource
    DataSet = zRecurso
    Left = 716
    Top = 190
  end
  object ds_firma: TDataSource
    DataSet = zFirma
    Left = 392
    Top = 144
  end
  object zFirma: TUniQuery
    Left = 390
    Top = 186
  end
  object plataforma: TUniQuery
    Left = 184
    Top = 186
  end
  object ds_plataforma: TDataSource
    DataSet = plataforma
    Left = 184
    Top = 144
  end
  object zApruebaRequisicion: TUniQuery
    Left = 638
    Top = 190
  end
  object dsApruebaRequisicion: TDataSource
    DataSet = zApruebaRequisicion
    Left = 637
    Top = 243
  end
  object SaveDialog1: TSaveDialog
    Left = 440
    Top = 96
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
    Left = 192
    Top = 248
  end
  object dsPlanta: TDataSource
    AutoEdit = False
    DataSet = uPlanta
    Left = 917
    Top = 151
  end
  object uPlanta: TUniQuery
    Connection = connection.Uconnection
    Left = 917
    Top = 207
  end
  object dsGrupoMaterial: TDataSource
    AutoEdit = False
    DataSet = uGrupoMaterial
    Left = 973
    Top = 151
  end
  object uGrupoMaterial: TUniQuery
    Connection = connection.Uconnection
    Left = 973
    Top = 207
  end
  object uRequerimientosQA: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 1048
    Top = 152
  end
  object dsRequerimientosQA: TDataSource
    AutoEdit = False
    DataSet = uRequerimientosQA
    Left = 1048
    Top = 200
  end
  object uGerentes: TUniQuery
    Connection = connection.Uconnection
    Left = 248
    Top = 186
  end
  object dsGerentes: TDataSource
    DataSet = uGerentes
    Left = 248
    Top = 144
  end
  object uOrdenesTrabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 320
    Top = 186
  end
  object dsOrdenesTrabajo: TDataSource
    DataSet = uOrdenesTrabajo
    Left = 322
    Top = 144
  end
  object zdepC: TUniQuery
    Connection = connection.Uconnection
    Left = 939
    Top = 286
  end
  object ds_depC: TDataSource
    DataSet = zdepC
    Left = 1011
    Top = 294
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 168
    Top = 552
  end
  object ExcelWorkbook1: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 24
    Top = 552
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 96
    Top = 552
  end
  object zApruebaQA: TUniQuery
    Left = 670
    Top = 142
  end
  object dsApruebaQA: TDataSource
    DataSet = zApruebaQA
    Left = 669
    Top = 195
  end
  object zPOrdenes_Trabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 583
    Top = 186
  end
  object ds_POrdenesTrabajo: TDataSource
    DataSet = zPOrdenes_Trabajo
    Left = 575
    Top = 95
  end
  object zNotasGenerales: TUniQuery
    Connection = connection.Uconnection
    Left = 611
    Top = 463
  end
  object dsNotasGenerales: TDataSource
    DataSet = zNotasGenerales
    Left = 699
    Top = 255
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 496
    Top = 248
  end
  object zMensaje: TUniQuery
    Connection = connection.Uconnection
    Left = 664
    Top = 240
  end
  object dsMensaje: TDataSource
    DataSet = zMensaje
    Left = 552
    Top = 200
  end
  object zDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 424
    Top = 192
  end
  object dsDestino: TDataSource
    DataSet = zDestino
    Left = 496
    Top = 184
  end
  object zCorreo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select cc.* from master_cnf_correo cc'
      'inner join usuarios u on (u.sIdusuario = cc.sIdUsuario)'
      'where '
      '(cc.sContrato = :Contrato)  and'
      '(cc.IdEmpresa = :Empresa) AND (cc.sIdUsuario =:Usuario);')
    Left = 56
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        Value = nil
      end>
  end
  object frxRequisicion_detalle: TfrxDBDataset
    UserName = 'frxRequisicion_detalle'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 200
    Top = 101
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    PictureType = gpPNG
    Left = 352
    Top = 208
  end
end
