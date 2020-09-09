object FrmRevisionesRequisiciones: TFrmRevisionesRequisiciones
  Left = 0
  Top = 0
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Servicios'
  ClientHeight = 787
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
          Enabled = False
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          Enabled = False
          OnClick = frmBarraH11btnEditClick
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
          Enabled = False
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
      Caption = 'Servicios'
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
      Visible = False
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
      Left = 426
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
      Width = 105
      Height = 33
      Align = alLeft
      Caption = 'Enviar'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = connection.IconosBarra
      TabOrder = 5
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnEnviar5Click
    end
    object btnRevisión: TcxButton
      Left = 661
      Top = 1
      Width = 111
      Height = 33
      Align = alLeft
      Caption = 'Generar MR'
      OptionsImage.ImageIndex = 178
      OptionsImage.Images = frmrepositorio.cxIconosMenus16
      TabOrder = 6
      TabStop = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnRevisiónClick
    end
    object btnTraspaso: TcxButton
      Left = 531
      Top = 1
      Width = 130
      Height = 33
      Align = alLeft
      Caption = 'Traspaso de Datos'
      OptionsImage.ImageIndex = 17
      OptionsImage.Images = frmrepositorio.cxIconosMenus16
      TabOrder = 7
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnTraspasoClick
    end
    object btnPrueba: TcxButton
      Left = 481
      Top = 1
      Width = 120
      Height = 33
      Align = alRight
      Caption = 'Genera Revisi'#243'n'
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 8
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnPruebaClick
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 107
    Width = 1158
    Height = 680
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1156
      Height = 678
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 202
        Width = 1154
        Height = 214
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
          Top = 177
          Width = 1152
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 962
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 962
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
          Width = 1152
          Height = 176
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
          ClientRectBottom = 174
          ClientRectLeft = 2
          ClientRectRight = 1150
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 1148
              Height = 144
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object tiFolio: TcxDBTextEdit
                Left = 156
                Top = 71
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
                TabOrder = 7
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
                Top = 102
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
                TabOrder = 12
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 133
              end
              object tdIdFecha2: TcxDBDateEdit
                Left = 457
                Top = 71
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
                TabOrder = 9
                OnEnter = EnterControl
                OnExit = tdIdFecha2Exit
                OnKeyUp = GlobalKeyUp
                Width = 49
              end
              object cxProcurementSpecialist: TcxDBMemo
                Left = 156
                Top = 131
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
                TabOrder = 17
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
                Left = 914
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
                Left = 433
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
                Top = 177
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
                TabOrder = 19
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 40
                Width = 442
              end
              object cxPlanta: TcxDBLookupComboBox
                Left = 572
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
                Top = 102
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
                TabOrder = 13
                OnEnter = EnterControl
                OnExit = cxProyectoExit
                Width = 87
              end
              object cxOrdenTrabajo: TcxDBLookupComboBox
                Left = 517
                Top = 102
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
                TabOrder = 14
                OnEnter = cxOrdenTrabajoEnter
                OnExit = cxOrdenTrabajoExit
                Width = 83
              end
              object cxLogistica: TcxDBMemo
                Left = 588
                Top = 131
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
                TabOrder = 18
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 40
                Width = 532
              end
              object tmComentarios: TcxDBMemo
                Left = 588
                Top = 177
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
                TabOrder = 22
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 98
                Width = 532
              end
              object cxManagerAprobador: TcxDBLookupComboBox
                Left = 156
                Top = 223
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
                TabOrder = 20
                OnEnter = cxManagerAprobadorEnter
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 145
              end
              object cxQAprobador: TcxDBLookupComboBox
                Left = 156
                Top = 252
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
                TabOrder = 21
                OnEnter = cxQAprobadorEnter
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 202
              end
              object dxDBToggleSwitch1: TdxDBToggleSwitch
                Left = 538
                Top = 71
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
                TabOrder = 10
                Transparent = True
              end
              object dxDBToggleSwitch3: TdxDBToggleSwitch
                Left = 951
                Top = 102
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
                TabOrder = 16
                Transparent = True
              end
              object tsLugarEntrega: TcxDBLookupComboBox
                Left = 694
                Top = 102
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
                TabOrder = 15
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 251
              end
              object cxUploadingPoint: TcxDBMemo
                Left = 861
                Top = 71
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
                TabOrder = 11
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Height = 25
                Width = 259
              end
              object tdidFecha: TcxDBDateEdit
                Left = 292
                Top = 71
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
                TabOrder = 8
                OnEnter = EnterControl
                OnExit = tdidFechaExit
                OnKeyUp = GlobalKeyUp
                Width = 36
              end
              object btnAnexo: TcxButton
                Left = 1045
                Top = 40
                Width = 75
                Height = 25
                Caption = 'Anexo PDF'
                TabOrder = 6
                OnClick = btnAnexoClick
              end
              object cxRevision: TcxDBCurrencyEdit
                Left = 994
                Top = 40
                DataBinding.DataField = 'Revision'
                DataBinding.DataSource = dsRequisicion
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 5
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 45
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
              object dxLayoutItem21: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignVert = avClient
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = btnAnexo
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem20: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignVert = avClient
                CaptionOptions.Text = 'Revisi'#243'n'
                Control = cxRevision
                ControlOptions.ShowBorder = False
                Index = 2
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 194
        Width = 1154
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_requsicion: TcxGrid
        Left = 1
        Top = 1
        Width = 1154
        Height = 193
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
          object cxView_RequsicionColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Departamento'
            Options.Editing = False
            Width = 56
          end
          object colum_comentarios: TcxGridDBColumn
            AlternateCaption = 'ComentarioStatus'
            Caption = 'Comentarios'
            DataBinding.FieldName = 'ComentarioStatus'
            Options.Editing = False
            Width = 37
          end
          object cxView_RequsicionColumn6: TcxGridDBColumn
            Caption = 'Revisi'#243'n'
            DataBinding.FieldName = 'Revisiones'
            Width = 40
          end
          object cxView_RequsicionColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Anexo'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = connection.cxIconos16
            Properties.Items = <>
            Options.Editing = False
            Width = 40
          end
          object cxView_RequsicionColumn7: TcxGridDBColumn
            Caption = 'Estatus'
            DataBinding.FieldName = 'sStatus'
            Width = 50
          end
        end
        object grid_requsicionLevel1: TcxGridLevel
          GridView = cxView_Requsicion
        end
      end
      object PanelDetalle: TPanel
        Left = 1
        Top = 416
        Width = 1154
        Height = 261
        Align = alBottom
        TabOrder = 3
        object PanelCentro: TPanel
          Left = 1
          Top = 9
          Width = 858
          Height = 251
          Align = alClient
          TabOrder = 0
          object PanelTop: TPanel
            Left = 1
            Top = 1
            Width = 856
            Height = 32
            Align = alTop
            TabOrder = 0
            object cxNuevoDetalle: TcxButton
              Left = 371
              Top = 1
              Width = 127
              Height = 30
              Align = alRight
              Caption = 'Agregar Servicio'
              Enabled = False
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
              Left = 498
              Top = 1
              Width = 81
              Height = 30
              Align = alRight
              Caption = 'Editar'
              Enabled = False
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
              Align = alClient
              AutoSize = False
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
              Height = 30
              Width = 370
            end
            object cxEliminarDetalle: TcxButton
              Left = 579
              Top = 1
              Width = 81
              Height = 30
              Hint = 'Eliminar registro (CTRL + D)'
              Align = alRight
              Caption = 'Eliminar'
              Enabled = False
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
              Left = 660
              Top = 1
              Width = 81
              Height = 30
              Align = alRight
              Caption = 'Importar '
              OptionsImage.ImageIndex = 71
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 4
              Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = cxImportarClick
            end
            object btnAccesorios: TcxButton
              Left = 741
              Top = 1
              Width = 114
              Height = 30
              Align = alRight
              Caption = 'Ver Accesorios'
              OptionsImage.ImageIndex = 21
              OptionsImage.Images = frmrepositorio.cxIconosMenus16
              TabOrder = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = btnAccesoriosClick
            end
          end
          object PanelDown: TPanel
            Left = 1
            Top = 214
            Width = 856
            Height = 36
            Align = alBottom
            TabOrder = 1
            object cxCancelarDetalle: TcxButton
              Left = 771
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
              Left = 684
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
          object Panel6: TPanel
            Left = 1
            Top = 33
            Width = 856
            Height = 181
            Align = alClient
            Caption = 'Panel6'
            TabOrder = 2
            object cxPageDetalle: TcxPageControl
              Left = 1
              Top = 1
              Width = 391
              Height = 179
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
              ClientRectBottom = 177
              ClientRectLeft = 2
              ClientRectRight = 389
              ClientRectTop = 29
              object cxTabMaterial: TcxTabSheet
                Caption = 'Materiales'
                ImageIndex = 61
                object cxGridMateriales: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 387
                  Height = 148
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
                      DataBinding.FieldName = 'Partida'
                      Width = 58
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
                    object cxView_MaterialesColumn8: TcxGridDBColumn
                      Caption = 'Revisi'#243'n'
                      DataBinding.FieldName = 'Revision'
                      Visible = False
                      Width = 50
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
                  Width = 387
                  Height = 15
                  Align = alClient
                  TabOrder = 0
                  object cxGrid1: TcxGrid
                    Left = 1
                    Top = 1
                    Width = 385
                    Height = 13
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
                  Width = 387
                  Height = 12
                  AlignSplitter = salTop
                end
                object PanelSuperiorInforme: TPanel
                  Left = 0
                  Top = 0
                  Width = 387
                  Height = 177
                  Align = alTop
                  TabOrder = 2
                  object dxLayoutControl3: TdxLayoutControl
                    AlignWithMargins = True
                    Left = 4
                    Top = 4
                    Width = 379
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
                      Left = 224
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
              object cxTabCarpetas: TcxTabSheet
                Caption = 'Documentos'
                ImageIndex = 70
                object dxLayoutControl2: TdxLayoutControl
                  Left = 0
                  Top = 0
                  Width = 387
                  Height = 148
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
                    Width = 230
                    Height = 22
                    Properties.Buttons = <>
                    Properties.PathEditor.RecentPaths = <>
                    ShellListView = cxVentana
                    TabOrder = 0
                  end
                  object dxLayoutGroup2: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avTop
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem23: TdxLayoutItem
                    Parent = dxLayoutGroup2
                    Control = cxVentana
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem25: TdxLayoutItem
                    Parent = dxLayoutGroup2
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Direcci'#243'n Compartida'
                    Control = cxDirectorio
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                end
              end
            end
            object PanelMaterial: TPanel
              Left = 400
              Top = 1
              Width = 455
              Height = 179
              Align = alRight
              TabOrder = 1
              Visible = False
              object dxLayoutControl5: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 453
                Height = 177
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
                  Left = 108
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
                  Left = 108
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
                  Left = 190
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
                  Width = 30
                end
                object cxNumeroMaterial: TcxDBTextEdit
                  Left = 108
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
                  Width = 181
                end
                object cxRequerimientosQA: TcxCheckListBox
                  Left = 108
                  Top = 158
                  Width = 346
                  Height = 100
                  Columns = 2
                  Items = <>
                  ParentFont = False
                  TabOrder = 9
                end
                object cxNotas: TcxDBMemo
                  Left = 108
                  Top = 102
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
                  Height = 50
                  Width = 436
                end
                object cxFindGM: TcxButton
                  Left = 419
                  Top = 11
                  Width = 35
                  Height = 25
                  OptionsImage.ImageIndex = 58
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 1
                end
                object cxFindWbs: TcxButton
                  Left = 419
                  Top = 42
                  Width = 35
                  Height = 25
                  OptionsImage.ImageIndex = 58
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 3
                end
                object dxDBToggleSwitch2: TdxDBToggleSwitch
                  Left = 287
                  Top = 73
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
                object cxEquipo: TcxDBLookupComboBox
                  Left = 261
                  Top = 73
                  DataBinding.DataField = 'sIdEquipo'
                  DataBinding.DataSource = ds_anexo_prequisicion
                  ParentFont = False
                  Properties.KeyFieldNames = 'sIdEquipo'
                  Properties.ListColumns = <
                    item
                      Caption = 'C'#243'digo'
                      MinWidth = 40
                      FieldName = 'sIdEquipo'
                    end
                    item
                      FieldName = 'Equipo'
                    end>
                  Properties.ListFieldIndex = 1
                  Properties.ListSource = dsEquipos
                  Style.HotTrack = False
                  TabOrder = 6
                  Width = 145
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
                object dxLayoutItem26: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup3
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Work Order'
                  Control = cxWbs
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem28: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup9
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Cantidad'
                  Control = cxCantidad
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem29: TdxLayoutItem
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
                object dxLayoutItem33: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'QA Requirement'
                  CaptionOptions.WordWrap = True
                  Control = cxRequerimientosQA
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object dxLayoutItem38: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Nota'
                  Control = cxNotas
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
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
                object dxLayoutItem40: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup10
                  AlignVert = avClient
                  CaptionOptions.Visible = False
                  Control = cxFindGM
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem41: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup3
                  AlignVert = avClient
                  CaptionOptions.Text = 'cxButton1'
                  CaptionOptions.Visible = False
                  Control = cxFindWbs
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem39: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup9
                  AlignVert = avTop
                  CaptionOptions.Visible = False
                  Control = dxDBToggleSwitch2
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutItem1: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup9
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.Text = 'Equipo'
                  Control = cxEquipo
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
              end
            end
            object cxSplitter3: TcxSplitter
              Left = 392
              Top = 1
              Width = 8
              Height = 179
              AlignSplitter = salRight
              Visible = False
            end
          end
        end
        object PanelAccesorio: TPanel
          Left = 867
          Top = 9
          Width = 286
          Height = 251
          Align = alRight
          Caption = 'PanelAccesorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          object cxGrid2: TcxGrid
            Left = 1
            Top = 33
            Width = 284
            Height = 181
            Align = alClient
            TabOrder = 0
            object cxGridAccesorios: TcxGridDBTableView
              PopupMenu = PopupPrincipal
              OnMouseDown = cxGridAccesoriosMouseDown
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
              OnCellClick = cxGridAccesoriosCellClick
              OnCellDblClick = cxGridAccesoriosCellDblClick
              DataController.DataSource = dsAccesorios
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
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
              object cxGridAccesoriosColumn3: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'Codigo'
                Options.Editing = False
                Width = 45
              end
              object cxGridAccesoriosColumn1: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Options.Editing = False
                Width = 180
              end
              object cxGridAccesoriosColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'Cantidad'
                Options.Editing = False
                Styles.OnGetContentStyle = cxGridAccesoriosColumn2StylesGetContentStyle
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGridAccesorios
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 284
            Height = 32
            Align = alTop
            TabOrder = 1
            object cxLabel1: TcxLabel
              Left = 1
              Top = 1
              Align = alClient
              Caption = 'Accesorios'
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
            object cxAgregarAccesorio: TcxButton
              Left = -16
              Top = 1
              Width = 139
              Height = 30
              Align = alRight
              Caption = 'Agregar Accesorios'
              Enabled = False
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 1
              OnClick = cxAgregarAccesorioClick
            end
            object btnEditAccesorio: TcxButton
              Tag = 11
              Left = 123
              Top = 1
              Width = 80
              Height = 30
              Hint = 'Editar Registro'
              Align = alRight
              Caption = 'Editar'
              Enabled = False
              OptionsImage.ImageIndex = 1
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = btnEditAccesorioClick
            end
            object btnEliminaAccesorio: TcxButton
              Left = 203
              Top = 1
              Width = 80
              Height = 30
              Align = alRight
              Caption = 'Eliminar'
              Enabled = False
              OptionsImage.ImageIndex = 4
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 3
              OnClick = btnEliminaAccesorioClick
            end
          end
          object Panel7: TPanel
            Left = 1
            Top = 214
            Width = 284
            Height = 36
            Align = alBottom
            TabOrder = 2
            Visible = False
            object btnCancerlaAccesorio: TcxButton
              Left = 196
              Top = 1
              Width = 87
              Height = 34
              Align = alRight
              Caption = 'Cancelar'
              OptionsImage.ImageIndex = 3
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 0
              OnClick = btnCancerlaAccesorioClick
            end
            object cxButton3: TcxButton
              Left = 109
              Top = 1
              Width = 87
              Height = 34
              Align = alRight
              Caption = 'Guardar'
              OptionsImage.ImageIndex = 2
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 1
              OnClick = cxButton3Click
            end
          end
        end
        object cxSplitterAccesorio: TcxSplitter
          Left = 859
          Top = 9
          Width = 8
          Height = 251
          AlignSplitter = salRight
          Visible = False
        end
        object cxSplitter2: TcxSplitter
          Left = 1
          Top = 1
          Width = 1152
          Height = 8
          AlignSplitter = salTop
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
        TabOrder = 3
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
        Index = 3
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
    end
  end
  object dsDepartamento: TDataSource
    DataSet = zDepartamento
    Left = 737
    Top = 402
  end
  object zDepartamento: TUniQuery
    Connection = connection.Uconnection
    Left = 421
    Top = 242
  end
  object anexo_requisicion: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 1023
    Top = 236
  end
  object dsRequisicion: TDataSource
    DataSet = anexo_requisicion
    Left = 63
    Top = 172
  end
  object ds_anexo_prequisicion: TDataSource
    DataSet = anexo_prequisicion
    Left = 125
    Top = 174
  end
  object anexo_prequisicion: TUniQuery
    Connection = connection.Uconnection
    BeforePost = anexo_prequisicionBeforePost
    Left = 1112
    Top = 242
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    OnPopup = PopupPrincipalPopup
    Left = 161
    Top = 240
    object ActualizaMateriales1: TMenuItem
      Caption = 'Actualiza Material(es)'
      ImageIndex = 43
      Visible = False
      OnClick = ActualizaMateriales1Click
    end
    object NoRequiereInspeccionQA1: TMenuItem
      Caption = 'No Requiere Inspecci'#243'n QA'
      ImageIndex = 34
      Visible = False
      OnClick = NoRequiereInspeccionQA1Click
    end
    object N5: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object MarcarcomoConsumible1: TMenuItem
      Caption = 'Ocultar Trazabilidad'
      ImageIndex = 60
      Visible = False
      OnClick = MarcarcomoConsumible1Click
    end
    object AsignarCdigoMaterial1: TMenuItem
      Caption = 'Asignar Trazabilidad'
      ImageIndex = 61
      Visible = False
      OnClick = AsignarCdigoMaterial1Click
    end
    object IncluyeCodigoMaterial1: TMenuItem
      Caption = 'Incluye Codigo Material'
      ImageIndex = 58
      Visible = False
      OnClick = IncluyeCodigoMaterial1Click
    end
    object OcultarCodigoMaterial1: TMenuItem
      Caption = 'Ocultar Codigo Material'
      ImageIndex = 64
      Visible = False
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
      Visible = False
      OnClick = CopiarGrupoMaterial1Click
    end
    object CopiarQARequirement1: TMenuItem
      Caption = 'Copiar QA Requirement'
      ImageIndex = 60
      Visible = False
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
      Visible = False
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
      Visible = False
    end
    object Paste1: TMenuItem
      Caption = 'Pegar'
      ShortCut = 16470
      Visible = False
    end
    object ComentarMR1: TMenuItem
      Caption = 'Comentar MR'
      Visible = False
      OnClick = ComentarMR1Click
    end
    object AbrirAnexo1: TMenuItem
      Caption = 'Abrir Anexo'
      ImageIndex = 9
      OnClick = AbrirAnexo1Click
    end
    object NuevoServicio: TMenuItem
      Caption = 'A'#241'adir Servicio'
      Visible = False
      OnClick = NuevoServicioClick
    end
    object traerAccesorio: TMenuItem
      Caption = 'Traer Accesorios'
      ImageIndex = 72
      OnClick = traerAccesorioClick
    end
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 1040
    Top = 100
  end
  object frxDBRequisicion: TfrxDBDataset
    UserName = 'frxDBRequisicion'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 408
    Top = 405
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
    ReportOptions.CreateDate = 41899.829232916700000000
    ReportOptions.LastChange = 43746.526790370400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo19OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo32OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if trim(<frxDBRequisicion."IncluyeCodigoMat">) = '#39'No'#39' then'
      '   begin'
      '       Memo32.Text := <frxDBRequisicion."mDescripcion">+#13+'
      '                      <frxDBRequisicion."sObservacion">;'
      '   end'
      '   else'
      '   begin'
      
        '       Memo32.Text := <frxDBRequisicion."Codigo"> +'#39' '#39'+ <frxDBRe' +
        'quisicion."Extraordinario">+'#39' '#39'+<frxDBRequisicion."NumeroMateria' +
        'l"> +#13+'
      '                      <frxDBRequisicion."mDescripcion">+#13+'
      '                      <frxDBRequisicion."sObservacion">;'
      ''
      '   end;'
      ''
      
        '    if (Pos('#39'C'#39',<frxDBRequisicion."sNumFolio">) > 0) or (Pos('#39'S'#39 +
        ',<frxDBRequisicion."sNumFolio">) > 0) then begin'
      '       if(Pos('#39'CON'#39',<frxDBRequisicion."Codigo">) > 0) then'
      
        '           Memo32.Text := <frxDBRequisicion."Extraordinario">+'#39' ' +
        #39'+<frxDBRequisicion."sNumFolio">+#13+<frxDBRequisicion."mDescrip' +
        'cion">+#13+'
      '                      <frxDBRequisicion."sObservacion">'
      '       else'
      
        '            Memo32.Text := <frxDBRequisicion."Codigo">+'#39' '#39'+ <frx' +
        'DBRequisicion."Extraordinario">+'#39' '#39'+<frxDBRequisicion."sNumFolio' +
        '">+#13+<frxDBRequisicion."mDescripcion">+#13+'
      '    end;'
      ''
      'end;'
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if Pos('#39'11'#39',<frxDBRequisicion."EspecificacionesQA">) > 0 then'
      
        '      Memo1.Text := <frxDBRequisicion."EspecificacionesQA"> + #1' +
        '3 + '#39'VER NOTAS'#39
      '   else'
      '      Memo1.Text := <frxDBRequisicion."EspecificacionesQA">;'
      'end;'
      ''
      'procedure Memo114OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 336
    Top = 101
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
        DataSet = frxRequisicion_detalle
        DataSetName = 'frxRequisicion_detalle'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 427.729318010000000000
        Top = 18.897650000000000000
        Width = 1018.205382000000000000
        Condition = 'contrato."sContrato"'
        object Memo82: TfrxMemoView
          Left = 352.049060990000000000
          Top = 83.141172979999990000
          Width = 345.979026150000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'Tracking Number *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 698.027859770000000000
          Top = 25.321058060000000000
          Width = 318.664892510000000000
          Height = 58.263385280000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 806.173228350000000000
          Top = 42.330708661417300000
          Width = 119.811023620000000000
          Height = 25.973399450000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo21: TfrxMemoView
          Top = 3.779530000000001000
          Width = 236.722487650000000000
          Height = 21.596288520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'Field Legend')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 161.020922711299000000
          Width = 172.939455036653000000
          Height = 16.901441763703600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'Date Required *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 177.593739879473000000
          Width = 45.509354050334800000
          Height = 16.901441763703600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'Day')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 45.509354050334800000
          Top = 177.593739879473000000
          Width = 48.558459806613400000
          Height = 16.901441763703600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'Month')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 94.082015882339490000
          Top = 177.593739879473000000
          Width = 78.907491309904400000
          Height = 16.901441763703600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'Year')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Top = 194.690688601010000000
          Width = 45.509354050334800000
          Height = 22.535255675000700000
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaRequerido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 45.509354050334800000
          Top = 194.690688601010000000
          Width = 48.558459806613400000
          Height = 22.535255675000700000
          DisplayFormat.FormatStr = 'mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaRequerido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 94.082015882339490000
          Top = 194.690688601010000000
          Width = 78.907491309904400000
          Height = 22.535255675000700000
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaRequerido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 172.989624800000000000
          Top = 161.020922710000000000
          Width = 179.059377390000000000
          Height = 33.802883520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'Plant *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Top = 138.485652477975000000
          Width = 236.722487652726000000
          Height = 22.535255675000700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBRequisicion."SolicitanteSAP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 236.722487650000000000
          Top = 138.485652480000000000
          Width = 115.326332250000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."TelefonoSolicitanteSAP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 121.693744971922000000
          Width = 236.722487652726000000
          Height = 16.901441763703600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'SAP Release - Contact Name *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 236.722487650000000000
          Top = 121.693744970000000000
          Width = 115.326332250000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'Tel No *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 99.933126578244600000
          Width = 236.722487652726000000
          Height = 22.535255675000700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBRequisicion."sSolicito"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 236.722487650000000000
          Top = 99.933126580000010000
          Width = 115.326332250000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."TelefonoSolicito"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Top = 83.141219070000000000
          Width = 236.722487650000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'Your Name (Requisitioner) *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 236.722487650000000000
          Top = 83.141219070000000000
          Width = 115.326332250000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'Tel No *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 25.321058055798700000
          Width = 236.722487652726000000
          Height = 16.901441763703600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'Mandatory Fields')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Top = 42.332055900000000000
          Width = 236.722487650000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'Optional Fields')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Top = 59.123963410000000000
          Width = 236.722487650000000000
          Height = 24.460501760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 13434828
          Memo.UTF8W = (
            'SAP Field >>>>> NOT FOR REQUISITIONER USE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 236.722644460000000000
          Top = 25.321058060000000000
          Width = 461.305466200000000000
          Height = 58.263385280000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Manual Requisition Form')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Top = 217.225944280000000000
          Width = 236.722487650000000000
          Height = 24.460501760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'Procurement Specialist *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Top = 241.310858440000000000
          Width = 236.722487650000000000
          Height = 37.558769160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBRequisicion."ProcurementSpecialist"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 236.722644460000000000
          Top = 217.225944280000000000
          Width = 115.326357730000000000
          Height = 24.460501760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'Material/Service/Hire *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 236.722644460000000000
          Top = 241.310858440000000000
          Width = 115.326241180000000000
          Height = 37.558769160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."TipoRecurso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Top = 278.494030310000000000
          Width = 352.048904180000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'QA Requirement Options *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Top = 295.395472070000000000
          Width = 172.724409448819000000
          Height = 31.318435850000000000
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
            '1. Inspection at vendor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 352.049060990000000000
          Top = 100.042614750000000000
          Width = 225.034066150000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBRequisicion."sNumFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 352.049060990000000000
          Top = 122.468396810000000000
          Width = 345.979026150000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'Unloading Point * ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 352.049060990000000000
          Top = 138.376096400000000000
          Width = 345.979026150000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuntoCarga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 352.049060990000000000
          Top = 161.020922710000000000
          Width = 345.979026150000000000
          Height = 33.802883520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'Goods Recipient *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 172.989624800000000000
          Top = 194.690688600000000000
          Width = 179.059312710000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."NumeroPlanta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 352.049060990000000000
          Top = 194.823828060000000000
          Width = 345.979026150000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBRequisicion."lugarentrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 352.049060990000000000
          Top = 217.225944280000000000
          Width = 345.979026150000000000
          Height = 24.460501760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'Preferred Supplier *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 352.049060990000000000
          Top = 241.310858440000000000
          Width = 345.979026150000000000
          Height = 37.558769160000000000
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
            '[frxDBRequisicion."PreferredSupplier"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 352.049060990000000000
          Top = 278.494030310000000000
          Width = 345.979026150000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'Project Manager Approval *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 352.049060990000000000
          Top = 295.395472070000000000
          Width = 345.979026150000000000
          Height = 32.132398830000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBRequisicion."AutorizaManagerSAP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 352.049060990000000000
          Top = 326.696005210000000000
          Width = 345.979026150000000000
          Height = 35.819685910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'QA Advisor Approval *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 352.049060990000000000
          Top = 362.331930150000000000
          Width = 345.979026150000000000
          Height = 65.397387860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBRequisicion."AutorizaQASAP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 698.027859770000000000
          Top = 83.149606299212610000
          Width = 318.664892510000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 13434828
          Memo.UTF8W = (
            'SAP Field >>>>> Requisition Number')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 698.027859770000000000
          Top = 100.157480314961000000
          Width = 318.664892510000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 698.027859770000000000
          Top = 122.456692910000000000
          Width = 318.664892510000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 13434828
          Memo.UTF8W = (
            'SAP Field >>>>> Inventory/Stock Reservation Number')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 698.027859770000000000
          Top = 138.330708661417000000
          Width = 318.664892510000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 698.027859770000000000
          Top = 161.020922710000000000
          Width = 318.664892510000000000
          Height = 33.802883520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'Limit Hire & Service Requests Only')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 698.027859770000000000
          Top = 194.690688600000000000
          Width = 318.664892510000000000
          Height = 22.535255680000000000
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
        object Memo101: TfrxMemoView
          Left = 698.027859770000000000
          Top = 217.225944280000000000
          Width = 318.664892510000000000
          Height = 24.460501760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          Memo.UTF8W = (
            'Service Owner - Contact Name Hire/Service Rqsts Only')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 698.027859770000000000
          Top = 241.310858440000000000
          Width = 318.664892510000000000
          Height = 37.558769160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 698.027859770000000000
          Top = 278.494030310000000000
          Width = 318.664892510000000000
          Height = 16.901441760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'SAP Header Note - note to buyer / approver ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 698.027859770000000000
          Top = 295.395472070000000000
          Width = 318.664892510000000000
          Height = 32.132398830000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 698.027859770000000000
          Top = 326.696005210000000000
          Width = 318.664892510000000000
          Height = 35.819685910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'SAP Item Text - Note to Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 698.027859770000000000
          Top = 362.331930150000000000
          Width = 318.664892510000000000
          Height = 65.397387860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 172.724409450000000000
          Top = 295.610632100000000000
          Width = 179.527559060000000000
          Height = 31.318435850000000000
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
            '7. Material Certificate')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Top = 326.929133858268000000
          Width = 172.724409448819000000
          Height = 35.527559055118100000
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
            '2. Inspection on receipt - see engineer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 172.724409448819000000
          Top = 326.929133860000000000
          Width = 179.527559055118000000
          Height = 35.527559060000000000
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
            '8. Documents as per SDRL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Top = 362.834645669291000000
          Width = 172.724409448819000000
          Height = 16.189950760000000000
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
            '3. Inspection to Quality Plan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 172.724409448819000000
          Top = 362.834645670000000000
          Width = 179.527559055118000000
          Height = 16.189950760000000000
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
            '9. Equipment Datasheet')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Top = 379.086614173228000000
          Width = 172.724409448819000000
          Height = 16.189950760000000000
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
            '4. Letter of conformity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 172.724409448819000000
          Top = 379.086614170000000000
          Width = 179.527559055118000000
          Height = 16.189950760000000000
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
            '10. O&M Manual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Top = 395.102438870000000000
          Width = 172.724409448819000000
          Height = 16.189950760000000000
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
            '5. Test certificate')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 172.724409448819000000
          Top = 395.191950760000000000
          Width = 179.527559055118000000
          Height = 16.189950760000000000
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
            '11. Others - please specify')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Top = 411.189240000000000000
          Width = 172.724409448819000000
          Height = 16.189950760000000000
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
            '6. Calibration certificate')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 172.724409448819000000
          Top = 411.278751890000000000
          Width = 179.527559055118000000
          Height = 16.189950760000000000
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
            '12. Not applicable')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 578.268090000000000000
          Top = 100.267780000000000000
          Width = 119.207226150000000000
          Height = 22.535255680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Revisi'#243'n: [frxDBRequisicion."Revisiones"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 36.807589130000000000
        Top = 540.472790000000000000
        Width = 1018.205382000000000000
        DataSet = frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo25: TfrxMemoView
          Left = 698.027859770000000000
          Width = 108.086003400000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."CentroCostoWorkOrder"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 806.070428930000000000
          Width = 119.878701570000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."GrupoMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 94.082015880000000000
          Width = 78.907491310000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 45.523556080000000000
          Width = 48.558459810000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 352.048819900000000000
          Width = 345.979037910000000000
          Height = 36.807589130000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 3.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."Codigo"] [frxDBRequisicion."NumeroMaterial"]'
            '[frxDBRequisicion."mDescripcion"] '
            ''
            '[frxDBRequisicion."sObservacion"]')
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
            end
            item
            end>
        end
        object Memo24: TfrxMemoView
          Width = 45.523556080000000000
          Height = 36.804765310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 925.949130510000000000
          Width = 50.075911680000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 172.989624800000000000
          Width = 63.732980460000000000
          Height = 36.807589130000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."EspecificacionesQA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 236.722491580000000000
          Width = 115.326345970000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 976.025042190000000000
          Width = 40.667710090000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 48.826387310000000000
        Top = 468.661720000000000000
        Width = 1018.205382000000000000
        Condition = 'frxDBRequisicion."iFolioRequisicion"'
        ReprintOnNewPage = True
        object Memo10: TfrxMemoView
          Width = 45.523556080000000000
          Height = 48.826387310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haCenter
          Memo.UTF8W = (
            'Item')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 45.523556080000000000
          Width = 48.558459810000000000
          Height = 48.826387310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haCenter
          Memo.UTF8W = (
            'Qty*')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 94.082015880000000000
          Width = 78.907491310000000000
          Height = 48.826387310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 352.048819903039000000
          Width = 345.979039871230000000
          Height = 48.826387307428400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'Description / Specification *')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 698.027859770000000000
          Width = 108.086003400000000000
          Height = 48.826387310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'WBS Code / Network Code / Cost Centre No / Work Order No*')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 976.025042190015000000
          Width = 40.667710091321800000
          Height = 48.826387307428400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haCenter
          Memo.UTF8W = (
            'Curr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 172.989624797419000000
          Width = 63.732980460482000000
          Height = 48.826387305159200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haCenter
          Memo.UTF8W = (
            'QA Req*')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 236.722491580000000000
          Width = 115.326332250000000000
          Height = 48.826387310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'Subsea 7 Inventory Material Number')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 925.949130513943000000
          Width = 50.075911679612600000
          Height = 48.826387307428400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit Cost')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 806.070428930000000000
          Width = 119.878701570000000000
          Height = 48.826387310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 8421631
          HAlign = haCenter
          Memo.UTF8W = (
            'Material/Service Group *')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 737.008350000000000000
        Width = 1018.205382000000000000
        object Memo54: TfrxMemoView
          Left = 351.874015750000000000
          Top = 3.779530000000022000
          Width = 345.826771650000000000
          Height = 16.905109830000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Manual Requisition Form FO-GL-SCM-005 Rev. 2')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo58: TfrxMemoView
          Left = 925.984850000000000000
          Top = 3.779530000000022000
          Width = 90.708661420000000000
          Height = 16.905109830000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Page [<Page>] of [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 36.807589130000000000
        Top = 638.740570000000000000
        Width = 1018.205382000000000000
        AllowSplit = True
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 698.027859774269100000
          Width = 108.086003400703000000
          Height = 36.807589126910800000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 806.070428932242000000
          Width = 119.878701573671000000
          Height = 36.807589126910800000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 94.082015882339490000
          Width = 78.907491309904400000
          Height = 36.807589126910800000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 45.523556075726200000
          Width = 48.558459806613400000
          Height = 36.807589126910800000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 352.048819900000000000
          Width = 345.979037910000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 3.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."mComentarios"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo17: TfrxMemoView
          Width = 45.523556075726200000
          Height = 36.804765309139100000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 925.949130510000000000
          Width = 50.075911680000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 172.989624800000000000
          Width = 63.732980460000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 236.722491579322000000
          Width = 115.326345973326000000
          Height = 36.807589126910800000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 976.025042190000000000
          Width = 40.667710090000000000
          Height = 36.807589130000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 14.130409130000000000
        Top = 600.945270000000000000
        Width = 1018.205382000000000000
        DataSet = frxRequisicion_detalle
        DataSetName = 'frxRequisicion_detalle'
        Filter = 
          '<frxDBRequisicion."IdPRequisicion">=<frxRequisicion_detalle."IdP' +
          'Requisicion">'
        RowCount = 0
        Stretched = True
        object Memo109: TfrxMemoView
          Left = 698.027859770000000000
          Width = 108.086003400000000000
          Height = 14.130409130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 806.070428930000000000
          Width = 119.878701570000000000
          Height = 14.130409130000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 94.082015880000000000
          Width = 78.907491310000000000
          Height = 14.130409130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 45.523556080000000000
          Width = 48.558459810000000000
          Height = 14.130409130000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 352.048819900000000000
          Width = 345.979037910000000000
          Height = 14.130409130000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 3.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              '[frxRequisicion_detalle."Cantidad"] [frxRequisicion_detalle."Des' +
              'cripcion"] [frxRequisicion_detalle."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo114: TfrxMemoView
          Width = 45.523556080000000000
          Height = 14.129325070000000000
          OnBeforePrint = 'Memo114OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 925.949130510000000000
          Width = 50.075911680000000000
          Height = 14.130409130000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 172.989624800000000000
          Width = 63.732980460000000000
          Height = 14.130409130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 236.722491580000000000
          Width = 115.326345970000000000
          Height = 14.130409130000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 976.025042190000000000
          Width = 40.667710090000000000
          Height = 14.130409130000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
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
    Left = 432
    Top = 50
  end
  object styleGrid: TcxStyleRepository
    Left = 372
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
    Left = 845
    Top = 415
  end
  object ds_ordenes_trabajo: TDataSource
    AutoEdit = False
    DataSet = Qordenes_trabajo
    Left = 517
    Top = 479
  end
  object zGrafica: TUniQuery
    Connection = connection.Uconnection
    Left = 378
    Top = 100
  end
  object dsGrafica: TDataSource
    DataSet = zGrafica
    Left = 842
    Top = 52
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 716
    Top = 181
  end
  object zCentroCosto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from segmentos')
    Left = 966
    Top = 98
  end
  object dsCentroCosto: TDataSource
    DataSet = zCentroCosto
    Left = 894
    Top = 434
  end
  object zRecurso: TUniQuery
    Connection = connection.Uconnection
    Left = 276
    Top = 102
  end
  object ds_Recurso: TDataSource
    DataSet = zRecurso
    Left = 572
    Top = 342
  end
  object ds_firma: TDataSource
    DataSet = zFirma
    Left = 424
    Top = 104
  end
  object zFirma: TUniQuery
    Left = 294
    Top = 242
  end
  object plataforma: TUniQuery
    Left = 816
    Top = 114
  end
  object ds_plataforma: TDataSource
    DataSet = plataforma
    Left = 224
    Top = 248
  end
  object zApruebaRequisicion: TUniQuery
    Left = 798
    Top = 70
  end
  object dsApruebaRequisicion: TDataSource
    DataSet = zApruebaRequisicion
    Left = 925
    Top = 243
  end
  object SaveDialog1: TSaveDialog
    Left = 488
    Top = 48
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
    Left = 992
    Top = 416
  end
  object dsPlanta: TDataSource
    AutoEdit = False
    DataSet = uPlanta
    Left = 893
    Top = 55
  end
  object uPlanta: TUniQuery
    Connection = connection.Uconnection
    Left = 773
    Top = 463
  end
  object dsGrupoMaterial: TDataSource
    AutoEdit = False
    DataSet = uGrupoMaterial
    Left = 973
    Top = 55
  end
  object uGrupoMaterial: TUniQuery
    Connection = connection.Uconnection
    Left = 461
    Top = 487
  end
  object uRequerimientosQA: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 16
    Top = 400
  end
  object dsRequerimientosQA: TDataSource
    AutoEdit = False
    DataSet = uRequerimientosQA
    Left = 104
    Top = 400
  end
  object uGerentes: TUniQuery
    Connection = connection.Uconnection
    Left = 928
    Top = 418
  end
  object dsGerentes: TDataSource
    DataSet = uGerentes
    Left = 248
    Top = 176
  end
  object uOrdenesTrabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 656
    Top = 178
  end
  object dsOrdenesTrabajo: TDataSource
    DataSet = uOrdenesTrabajo
    Left = 802
    Top = 176
  end
  object zdepC: TUniQuery
    Connection = connection.Uconnection
    Left = 467
    Top = 454
  end
  object ds_depC: TDataSource
    DataSet = zdepC
    Left = 947
    Top = 478
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 264
    Top = 416
  end
  object ExcelWorkbook1: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 384
    Top = 304
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 456
    Top = 296
  end
  object zApruebaQA: TUniQuery
    Left = 590
    Top = 302
  end
  object dsApruebaQA: TDataSource
    DataSet = zApruebaQA
    Left = 461
    Top = 299
  end
  object zPOrdenes_Trabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 1095
    Top = 98
  end
  object ds_POrdenesTrabajo: TDataSource
    DataSet = zPOrdenes_Trabajo
    Left = 119
    Top = 103
  end
  object zNotasGenerales: TUniQuery
    Connection = connection.Uconnection
    Left = 355
    Top = 239
  end
  object dsNotasGenerales: TDataSource
    DataSet = zNotasGenerales
    Left = 195
    Top = 175
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
    Left = 312
    Top = 176
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 334
    Top = 415
  end
  object dsAccesorios: TDataSource
    DataSet = zAccesorios
    Left = 792
    Top = 81
  end
  object zAccesorios: TUniQuery
    Connection = connection.Uconnection
    Left = 832
    Top = 473
  end
  object frxRequisicion_detalle: TfrxDBDataset
    UserName = 'frxRequisicion_detalle'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 200
    Top = 101
  end
  object dsEquipos: TDataSource
    DataSet = zEquipos
    Left = 624
    Top = 344
  end
  object zEquipos: TUniQuery
    Connection = connection.Uconnection
    Left = 656
    Top = 304
  end
  object dsDestino: TDataSource
    DataSet = zDestino
    Left = 496
    Top = 184
  end
  object zDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 424
    Top = 192
  end
  object dsMensaje: TDataSource
    DataSet = zMensaje
    Left = 552
    Top = 200
  end
  object zMensaje: TUniQuery
    Connection = connection.Uconnection
    Left = 600
    Top = 200
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
end
