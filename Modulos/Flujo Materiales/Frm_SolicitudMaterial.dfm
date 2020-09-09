object FrmSolicitudMaterial: TFrmSolicitudMaterial
  Left = 0
  Top = 0
  Caption = 'Solicitud de Materiales'
  ClientHeight = 594
  ClientWidth = 1148
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1148
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 591
      Top = 1
      Width = 556
      Height = 33
      Align = alRight
      AutoSize = True
      TabOrder = 0
      ExplicitLeft = 591
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
          Tag = 10
          Left = 475
          Height = 31
          TabOrder = 6
          OnClick = btnDetalleClick
          ExplicitLeft = 475
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          TabOrder = 4
          OnClick = btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Tag = 13
          Width = 74
          Height = 31
          Enabled = False
          TabOrder = 5
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
      Caption = 'Solicitudes'
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
    object cxButton2: TcxButton
      Left = 516
      Top = 1
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'cxButton2'
      TabOrder = 2
      Visible = False
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 107
    Width = 1148
    Height = 487
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 561
      Height = 485
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 160
        Width = 559
        Height = 324
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
          Top = 287
          Width = 557
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 367
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 367
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
                Top = 3
                OnClick = btnPostClick
                ExplicitLeft = 3
                ExplicitTop = 3
              end
              inherited btnCancel: TcxButton
                Left = 96
                Top = 3
                OnClick = btnCancelClick
                ExplicitLeft = 96
                ExplicitTop = 3
              end
            end
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 557
          Height = 286
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
          ClientRectBottom = 284
          ClientRectLeft = 2
          ClientRectRight = 555
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 553
              Height = 254
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object tmComentarios: TcxDBMemo
                Left = 133
                Top = 156
                DataBinding.DataField = 'mComentarios'
                DataBinding.DataSource = dsSolicitud
                ParentFont = False
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
                Height = 47
                Width = 628
              end
              object tsSolicitante: TcxDBTextEdit
                Left = 133
                Top = 127
                DataBinding.DataField = 'sSolicito'
                DataBinding.DataSource = dsSolicitud
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
                Width = 236
              end
              object tsNumeroOrden: TcxDBLookupComboBox
                Left = 133
                Top = 98
                DataBinding.DataField = 'sNumeroOrden'
                DataBinding.DataSource = dsSolicitud
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
                TabOrder = 7
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 157
              end
              object cbCosto: TcxDBLookupComboBox
                Left = 394
                Top = 98
                DataBinding.DataField = 'sNumeroOrdenCentroC'
                DataBinding.DataSource = dsSolicitud
                ParentFont = False
                Properties.KeyFieldNames = 'sNumeroOrden'
                Properties.ListColumns = <
                  item
                    Caption = 'Centro Costo'
                    Width = 20
                    FieldName = 'sIdFolio'
                  end
                  item
                    Caption = 'Descripci'#243'n'
                    FieldName = 'mDescripcion'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsCosto
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 8
                Width = 163
              end
              object tdidFecha: TcxDBDateEdit
                Left = 133
                Top = 69
                DataBinding.DataField = 'dFechaSolicitado'
                DataBinding.DataSource = dsSolicitud
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
                OnExit = tdidFechaExit
                OnKeyUp = GlobalKeyUp
                Width = 56
              end
              object tdIdFecha2: TcxDBDateEdit
                Left = 385
                Top = 69
                DataBinding.DataField = 'dFechaRequerido'
                DataBinding.DataSource = dsSolicitud
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
                OnExit = tdIdFecha2Exit
                OnKeyUp = GlobalKeyUp
                Width = 46
              end
              object cxRequisita: TcxDBTextEdit
                Left = 253
                Top = 127
                DataBinding.DataField = 'sRequisita'
                DataBinding.DataSource = dsSolicitud
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 11
                Width = 292
              end
              object tsLugarEntrega: TcxDBLookupComboBox
                Left = 600
                Top = 127
                DataBinding.DataField = 'sLugarEntrega'
                DataBinding.DataSource = dsSolicitud
                ParentFont = False
                Properties.KeyFieldNames = 'IdCliente'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = ds_plataforma
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
                Width = 160
              end
              object cxButton1: TcxButton
                Left = 737
                Top = 209
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
                TabOrder = 15
                OnClick = cxButton1Click
              end
              object cxFirma2: TcxDBLookupComboBox
                Left = 133
                Top = 209
                DataBinding.DataField = 'IdFirma'
                DataBinding.DataSource = dsSolicitud
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
                TabOrder = 14
                Width = 145
              end
              object cxVigencia: TcxDBDateEdit
                Left = 600
                Top = 69
                DataBinding.DataField = 'dFechaVigencia'
                DataBinding.DataSource = dsSolicitud
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 6
                Width = 160
              end
              object cxDescrip: TcxTextEdit
                Left = 637
                Top = 98
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 9
                Width = 121
              end
              object edtFolioSol: TcxDBTextEdit
                Left = 133
                Top = 11
                DataBinding.DataField = 'sNumFolio'
                DataBinding.DataSource = dsSolicitud
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Width = 192
              end
              object tsDepartamento: TcxDBLookupComboBox
                Left = 133
                Top = 40
                DataBinding.DataField = 'IdDepartamento'
                DataBinding.DataSource = dsSolicitud
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
                TabOrder = 1
                OnEnter = EnterControl
                OnKeyUp = GlobalKeyUp
                Width = 192
              end
              object cbRecurso: TcxDBLookupComboBox
                Left = 436
                Top = 40
                DataBinding.DataField = 'IdTiporecurso'
                DataBinding.DataSource = dsSolicitud
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
                TabOrder = 3
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 206
              end
              object cxRequisicion: TcxDBLookupComboBox
                Left = 436
                Top = 11
                DataBinding.DataField = 'iFolioRequisicion'
                DataBinding.DataSource = dsSolicitud
                ParentFont = False
                Properties.KeyFieldNames = 'iFolioRequisicion'
                Properties.ListColumns = <
                  item
                    FieldName = 'sNumFolio'
                  end>
                Properties.ListSource = ds_requisiciones
                Properties.OnEditValueChanged = cxRequisicionPropertiesEditValueChanged
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 2
                OnEnter = EnterControl
                OnKeyUp = GlobalKeyUp
                Width = 180
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem8: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.AlignVert = tavTop
                CaptionOptions.Text = 'Observaciones'
                Control = tmComentarios
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem7: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Solicitante'
                Control = tsSolicitante
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem16: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Referencia / Proyecto'
                Control = tsNumeroOrden
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem1: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Centro de Costo'
                Control = cbCosto
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Fecha Solicitud'
                Control = tdidFecha
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Fecha Requerido'
                Control = tdIdFecha2
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem11: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignVert = avClient
                CaptionOptions.Text = 'Requisitado por'
                Control = cxRequisita
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 3
                AutoCreated = True
              end
              object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem6: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Destino'
                Control = tsLugarEntrega
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 5
                AutoCreated = True
              end
              object dxLayoutItem13: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahRight
                AlignVert = avClient
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = cxButton1
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem14: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Firma:'
                Control = cxFirma2
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem10: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignVert = avClient
                CaptionOptions.Text = 'Fecha Vigencia'
                Control = cxVigencia
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem15: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Descripci'#243'n'
                Control = cxDescrip
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Folio Solicitud:'
                Control = edtFolioSol
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahLeft
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Departamento'
                Control = tsDepartamento
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem19: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahLeft
                AlignVert = avBottom
                CaptionOptions.Text = 'Tipo Recurso'
                Control = cbRecurso
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem20: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup7
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'Folio Requisici'#243'n:'
                Visible = False
                Control = cxRequisicion
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahLeft
                Index = 1
                AutoCreated = True
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 148
        Width = 559
        Height = 12
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_solicitud: TcxGrid
        Left = 1
        Top = 1
        Width = 559
        Height = 147
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
          DataController.DataSource = dsSolicitud
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
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxView_RequsicionColumn7: TcxGridDBColumn
            Caption = 'Prioridad'
            DataBinding.FieldName = 'sPrioridad'
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soAscending
            Width = 61
          end
          object cxView_RequsicionColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'sNumFolio'
            Width = 49
          end
          object cxView_RequsicionColumn3: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'dIdFecha'
            Width = 59
          end
          object cxView_RequsicionColumn10: TcxGridDBColumn
            Caption = 'Tipo Recurso'
            DataBinding.FieldName = 'Recurso'
            Width = 60
          end
          object cxView_RequsicionColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Proyecto'
            Width = 59
          end
          object cxView_RequsicionColumn4: TcxGridDBColumn
            Caption = 'Centro Costo'
            DataBinding.FieldName = 'sIdFolioCC'
            Options.Editing = False
            Width = 60
          end
          object cxView_RequsicionColumn8: TcxGridDBColumn
            Caption = 'Fecha Requerido'
            DataBinding.FieldName = 'dFechaRequerido'
            Width = 59
          end
          object cxView_RequsicionColumn5: TcxGridDBColumn
            Caption = 'Estatus'
            DataBinding.FieldName = 'sStatus'
            Width = 59
          end
          object cxView_RequsicionColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Departamento'
            Width = 60
          end
          object cxView_RequsicionColumn11: TcxGridDBColumn
            Caption = 'Solicitante'
            DataBinding.FieldName = 'sRequisita'
            Width = 49
          end
          object cxView_RequsicionColumn6: TcxGridDBColumn
            Caption = 'Comprador'
            DataBinding.FieldName = 'sUsuarioCompra'
            Visible = False
            Width = 120
          end
          object cxView_RequsicionColumn12: TcxGridDBColumn
            Caption = 'Comentario'
            DataBinding.FieldName = 'ComentarioStatus'
            Width = 42
          end
        end
        object grid_solicitudLevel1: TcxGridLevel
          GridView = cxView_Requsicion
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 562
      Top = 1
      Width = 8
      Height = 485
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 570
      Top = 1
      Width = 577
      Height = 485
      Align = alRight
      TabOrder = 2
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 575
        Height = 483
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 34
          Width = 573
          Height = 413
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
          ClientRectBottom = 411
          ClientRectLeft = 2
          ClientRectRight = 571
          ClientRectTop = 29
          object cxTabMaterial: TcxTabSheet
            Caption = 'Materiales'
            ImageIndex = 13
            object cxGridMateriales: TcxGrid
              Left = 0
              Top = 0
              Width = 569
              Height = 271
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopMenuDetalle
              TabOrder = 0
              object cxView_Materiales: TcxGridDBTableView
                PopupMenu = PopMenuDetalle
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
                DataController.DataSource = ds_anexo_psolicitud
                DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.MultiSelect = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxView_MaterialesColumn1: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sIdInsumo'
                  Width = 82
                end
                object cxView_MaterialesColumn2: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'sDescripcion'
                  Width = 234
                end
                object cxView_MaterialesColumn3: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'sMedida'
                  Width = 62
                end
                object cxView_MaterialesColumn4: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 44
                end
                object cxView_MaterialesColumn7: TcxGridDBColumn
                  Caption = 'Estado'
                  DataBinding.FieldName = 'sEstado'
                  Width = 54
                end
                object cxView_MaterialesColumn5: TcxGridDBColumn
                  Caption = 'Centro Costo'
                  DataBinding.FieldName = 'CentroCosto'
                  Width = 79
                end
              end
              object cxGridMaterialesLevel1: TcxGridLevel
                GridView = cxView_Materiales
              end
            end
            object cxSplitter4: TcxSplitter
              Left = 0
              Top = 271
              Width = 569
              Height = 12
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelDonw6: TPanel
              Left = 0
              Top = 283
              Width = 569
              Height = 99
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl5: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 567
                Height = 97
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                object cxCantidad: TcxDBCalcEdit
                  Left = 62
                  Top = 10
                  DataBinding.DataField = 'dCantidad'
                  DataBinding.DataSource = ds_anexo_psolicitud
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
                  Width = 187
                end
                object dxLayoutControl5Group_Root: TdxLayoutGroup
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem9: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Cantidad'
                  Control = cxCantidad
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
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
              Width = 569
              Height = 193
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 567
                Height = 191
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
              Width = 569
              Height = 12
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 569
              Height = 177
              Align = alTop
              TabOrder = 2
              object dxLayoutControl3: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 561
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
                  Left = 406
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
                object dxLayoutItem17: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  CaptionOptions.Text = 'cxRadioGroup1'
                  CaptionOptions.Visible = False
                  Control = opcionImprimir
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem18: TdxLayoutItem
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
          Width = 573
          Height = 33
          Align = alTop
          TabOrder = 1
          object cxNuevoDetalle: TcxButton
            Left = 329
            Top = 1
            Width = 81
            Height = 31
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
            ExplicitLeft = 323
            ExplicitTop = 2
          end
          object cxEditaDetalle: TcxButton
            Left = 410
            Top = 1
            Width = 81
            Height = 31
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
            Left = 491
            Top = 1
            Width = 81
            Height = 31
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
          Top = 447
          Width = 573
          Height = 35
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            573
            35)
          object cxCancelarDetalle: TcxButton
            Left = 486
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
            Left = 393
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
  object Panel4: TPanel
    Left = 0
    Top = 35
    Width = 1148
    Height = 50
    Align = alTop
    TabOrder = 2
    object dxLayoutControl4: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1146
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
        Left = 1029
        Top = 11
        Width = 106
        Height = 25
        Caption = 'Limpiar Filtro'
        OptionsImage.ImageIndex = 62
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 6
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
        OnClick = btnExpandirClick
      end
      object cxFiltroRequerido: TcxButton
        Left = 680
        Top = 11
        Width = 71
        Height = 25
        Caption = 'Filtrar'
        OptionsImage.ImageIndex = 63
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        OnClick = cxFiltroRequeridoClick
      end
      object cxLabel1: TcxLabel
        Left = 335
        Top = 14
        Caption = 'Requeridas'
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
      object cxInicioRequerido: TcxDateEdit
        Left = 445
        Top = 13
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 3
        Width = 100
      end
      object cxFinRequerido: TcxDateEdit
        Left = 574
        Top = 13
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 4
        Width = 100
      end
      object cxOpcionesFiltro: TcxComboBox
        Left = 123
        Top = 12
        ParentFont = False
        Properties.Items.Strings = (
          'PENDIENTE'
          'COMPRADO'
          'TODAS LAS REQUISICIONES')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Aril'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Text = 'cxOpcionesFiltro'
        Width = 206
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
        Index = 6
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
        Index = 5
      end
      object dxLayoutItem25: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem26: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Inicio'
        Control = cxInicioRequerido
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem27: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Fin'
        Control = cxFinRequerido
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem28: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Filtrar por:'
        Control = cxOpcionesFiltro
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object PanelProgreso: TPanel
    Left = 0
    Top = 85
    Width = 1148
    Height = 22
    Align = alTop
    TabOrder = 3
    object LabelProceso: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
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
      Left = 96
      Top = 1
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
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
      Width = 1051
    end
  end
  object dsDepartamento: TDataSource
    DataSet = zDepartamento
    Left = 265
    Top = 468
  end
  object zDepartamento: TUniQuery
    Connection = connection.Uconnection
    Left = 305
    Top = 452
  end
  object anexo_solicitud: TUniQuery
    Connection = connection.Uconnection
    Left = 55
    Top = 196
  end
  object dsSolicitud: TDataSource
    DataSet = anexo_solicitud
    Left = 55
    Top = 140
  end
  object ds_anexo_psolicitud: TDataSource
    DataSet = anexo_psolicitud
    Left = 637
    Top = 302
  end
  object anexo_psolicitud: TUniQuery
    Connection = connection.Uconnection
    Left = 632
    Top = 352
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 153
    Top = 208
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
      OnClick = Registrar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
      OnClick = Cancelar1Click
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
    object ExportaraExcel1: TMenuItem
      Tag = 1
      Caption = 'Exportar a Excel'
      ImageIndex = 10
      Visible = False
      OnClick = ExportaraExcel1Click
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
    object Copy1: TMenuItem
      Caption = 'Copiar'
      ShortCut = 16451
    end
    object Paste1: TMenuItem
      Caption = 'Pegar'
      ShortCut = 16470
    end
  end
  object consumibles: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select a.sNumeroActividad, b.mDescripcion, b.sIdInsumo, SubStr(b' +
        '.mDescripcion, 1, 150) as sDescripcion, b.dCostoMN, a.dCantidad,' +
        ' '
      
        'b.sMedida,l.sDescripcion as almacen,b.sIdAlmacen, b.dExistencia,' +
        ' b.dStockMax, b.dStockMin '
      'from recursosanexosnuevos a '
      'Inner Join insumos b On (a.sIdInsumo =b.sIdInsumo ) '
      'Inner Join almacenes l On (l.sIdAlmacen=b.sIdAlmacen) '
      
        'where a.sNumeroActividad = :Actividad order by a.sNumeroActivida' +
        'd ;')
    Left = 156
    Top = 470
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Actividad'
        Value = nil
      end>
  end
  object dtConsumibles: TDataSource
    AutoEdit = False
    DataSet = consumibles
    Left = 124
    Top = 481
  end
  object Partidas: TUniQuery
    Connection = connection.Uconnection
    Left = 566
    Top = 431
  end
  object dtsPartidas: TDataSource
    AutoEdit = False
    DataSet = Partidas
    Left = 340
    Top = 473
  end
  object QPernoctan: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from pernoctan')
    Left = 85
    Top = 371
  end
  object DsPernoctan: TDataSource
    AutoEdit = False
    DataSet = QPernoctan
    Left = 184
    Top = 467
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
    ReportOptions.LastChange = 43753.545073287040000000
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
      
        '    //if <frxDBRequisicion."Existencia"> >= <frxDBRequisicion."d' +
        'Cantidad"> then'
      '    //   Memo19.Visible := True'
      '   // else'
      '   //    Memo19.Visible := False;'
      'end;'
      
        '// EXISTENCIA SE DEJO EN 0 PARA NO CONFUNDIRLO, SE AGREGA LA LIN' +
        'EA DE ABAJO PARA CUANDO ESTE FUNCIONANDO ALMACEN'
      '     // [frxDBRequisicion."Existencia"]'
      
        '     // [<frxDBRequisicion."dCantidad">-<frxDBRequisicion."Exist' +
        'encia">]'
      'procedure Memo22OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBSolicitud."UsuarioValido"> = '#39#39' then'
      '       Memo22.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo22.Text :=  <frxDBSolicitud."sFicha4"> +#13+ <frxDBSo' +
        'licitud."UsuarioValido"> +'#39' '#39'+DateTimeToStr(<frxDBSolicitud."Fec' +
        'haValido">);'
      '    end;'
      'end;'
      ''
      'procedure Memo23OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBSolicitud."UsuarioAutorizo"> = '#39#39' then'
      '       Memo23.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo23.Text :=  <frxDBSolicitud."sFicha3"> +#13+ <frxDBSo' +
        'licitud."UsuarioAutorizo"> +'#39' '#39'+DateTimeToStr(<frxDBSolicitud."F' +
        'echaAutorizo">);'
      '    end;'
      'end;'
      ''
      'procedure Memo34OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBSolicitud."sPrioridad"> = '#39'Normal'#39' then'
      '        Memo34.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo35OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBSolicitud."sPrioridad"> = '#39'Importante'#39' then'
      '        Memo35.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo36OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBSolicitud."sPrioridad"> = '#39'Cr'#237'tica'#39' then'
      '        Memo36.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if <frxDBSolicitud."sUsuarioCompra"> <> '#39#39' then'
      
        '       Memo16.Text := <frxDBSolicitud."sFicha2"> +#13#13#13+ <fr' +
        'xDBSolicitud."sUsuarioCompra">'
      '    else'
      '    begin'
      
        '       Memo16.Text := <frxDBSolicitud."sFicha2"> +#13#13#13+ <fr' +
        'xDBSolicitud."sFirmante2">;'
      '    end;'
      'end;'
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 232
    Top = 101
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxDBSolicitud
        DataSetName = 'frxDBSolicitud'
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
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590590240000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 11.382368200000000000
          Top = 3.779530000000001000
          Width = 156.507503940000000000
          Height = 52.593669910000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 526.434529250000000000
          Top = 11.292915920000000000
          Width = 184.963424440000000000
          Height = 45.080283990000000000
          Center = True
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Picture.Data = {
            0A544A504547496D61676574220000FFD8FFE000104A46494600010101007D00
            7D0000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108003300FB03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFC
            AF20F8A1FB63F877C11AFBE8BA4A8F116B51CBE4C9141304822756512C665C36
            E96347F31A240CE1158E38AC5FDA93F688BBD03C75A57C3DF0FD859EB3AB6BD1
            EDBEB29A4789A7B797746628A5465F2E4C12E589CAA7CC036081DD7C16FD9D34
            0F82BA62A5AABEA5A82B13FDA3788AD73B795450C00C6D8C88F3F78AA2824E06
            0038CF813F1F3E257C4EF8A115A6B7F0F1FC3BE13934E69CEA32EF122DD6D8B1
            061B1F75BCE05B690D84C11CD7E6EEBBFF000705FED0FA66B5776F17C2EF053C
            504CE88CDA46A592A09033FE935FB295F3FF00ED3BFB6ADC7803C6B0FC39F867
            A07FC2C3F8B7A8461D74B8A4DB63A042D8C5DEA330E21886410990EFC018DCA4
            F9D98426E2A51A9C96ECAF73EFF8071984A75EA50C4E5D1C5B924D734F915351
            BF349CACD28EAAEDB495BCCFCD4D5FFE0E3CF8F5E1EF2BEDFF000EFE1ED88989
            0867D37504DD8C6719BA19EA2BF593E127C51D77E2D7C25F03EAD041A6D9EA7E
            24F0ED96B7A84CD13C96B66D3C08FB123DE19B7397032FF2AA12493807F36FFE
            0E43B3D674FF00831F0120F115ED9EA3AFC47505D4AEAD20305BDC5C08ACBCC7
            8E3249542D9C0249031CD7E877EC6D32DBFECE3F0E5DD95113C05A1B3331C050
            2DB924D7265D2AD1C4D4A1566E564BF13EB3C41C2E4F5B86F2FCE72CC2470EEB
            4EAA6A2DCAEA0F956AD2BA76BECB73D0D6C7C44146754D149C72469728C9FF00
            C08A496C3C46626D9AAE88AF8F94B6952900FB8FB40CFE75F947FB4BFF00C162
            F51FDB3FFE1A4FE1A78674182C7E18E8BF0F6FB58F0DF8A55A78AF7C4325A6A3
            6B692DC42D9086D4CAF32A328C9F2B3BB92A3F46BF615D6629BF62DF84C66BB4
            79CF8434AF30C92EE72C6CE227712739E73CF3CD7B95A33A388FABD4567CAA5F
            79F942CB94B2A599C67A3A8E9DADDA2A57BFCED6B7CCF44F0DEB57736A579A6E
            A22DCDF58A47379B6E0AC73C521708DB49250EE8DC15DCDF741CF381C2782FF6
            DBF853F113E32DCFC3ED17C6DA46A3E33B3B8B9B59B4A8BCCF3A396DF7F9C9CA
            85CA6C7CF3FC26BB3D31B77C53D648E41D26C0823BFEFAF6BF1E3FE09F5FF2B0
            7F8DFF00EC62F14FFE85755E7E37172A33A718AF89D8FA8E0EE15C366F83CC71
            35E528BC35175236B6AD5F4774F4D3A58FD39FDA1FFE0A3DF053F656F137F62F
            8E7C7DA5E93AC85577B08A19AF2E210C32BE62408E532391BB19041E86BA7FD9
            D7F6BBF86DFB5968B737DF0F7C5BA678962B2DBF6A8E02D1DC5AEECEDF322902
            C8A0E0E095C1C1C7435F90DFB55FEC6DF133F64CFDBBBC6DF11FC4BF074FC75F
            04F88B50BDBEB77922B8BAB6F2EE65322993C925A19620767EF17675201F948F
            56FF0082427C64FD9E6D3E30F8C356F037867C69E02F898343BFB88F41D4358F
            B7699750A0F3A4B7818223B1431A90B28DC153219B0D5C14B34ACF13ECAAA515
            7B59DD3FBF667DD667E18E510E1FFED2CB6A55AF3508C9CE0E94A9F33DE32826
            AA42DD5BBDBAECCFD02FDA27FE0A21F063F652D77FB2BC77E3DD2747D5F62C8D
            A7C692DE5DC6ADF74BC50A3B202391B80C8E456D7ECE7FB66FC2FF00DACECEE2
            5F87BE32D27C46F66824B8B688B45756EA780CF0C81640B9E325719E335F91BF
            F0447FD9C7C31FB7E7ED41F12FC5BF16AD478CAF34D812FCDBDEC8C62BABABA9
            5F74CE011BB6846014FCA378E38188BE3978074EFF008276FF00C1717C1D63F0
            C44DA468F7FAB692C74E49DD92286F9D21B8B6C9249460CE4039DBB971F74544
            736AEE11C44A2BD9C9DBADFD7B1D589F0AF248E2F11C3F46BD578FA347DAB935
            1F62DD93E54BE35F12D6FE7D2C7EE357807C6DFF0082A3FC06FD9E3C7B37863C
            57F1134CB2D76D5FCBB9B4B7B6B8BD6B47E3E594C11BAA30CF2AC411DC57BE5C
            2BBDBB88D824854856233B4F635F825FB2A6B9E06FD93FE3BFC60F087ED1DF09
            35CF1F78DF5ECDB69518D396F6E66B92F3799E56F2181B82F1B24F1E5B0991F7
            B9EFCC71B3A0E11859735F577B2FBBB9F13E1EF0760F3C862EB62B9E4E8A8B54
            E938AA93E6959B4E775682D65A75DD75FDCAF869F19BC29F18FE1F41E2BF0BF8
            834BD6FC39708CE9A85B4E1A1013EFEE3FC25707706C118E40AF0FB9FF0082C1
            FECDD6BE37FEC06F8A9A27DB7CCF2BCE5B7B96B30DFF005F223F271FED6FDBEF
            5F90FF00B197C68F117807FE09DBFB57681693DDDBD8FD8B47658039FF00457B
            8D412D2E3FEFB85F637A841E95EB5A1FEC8DE02BCFF837BEFF00E22B787F493E
            374D44EA035AF241BD523555B3F2849F7BCBF2B3F2676E4EEC679AF396715AA4
            13A5157E57277BF476D0FBDABE1165197E2AA53CCEBD4942588A787A7C9CA9DE
            A4233529DD34D25249DAD7B37D74FD8AF89DF1C7C21F067E1D49E2DF14F88F49
            D17C351AA3FF0068DC5C010C81FEE6C233BCB67E50B927B035E61F01BFE0A6FF
            0002FF00698F1C2786BC1BF1074DD475D9B220B29EDEE2CA4BA2012445E7C682
            43804E1493804E38AFC68FDABFE2DEBBF117FE09B9FB29787EFEFA536224D7A2
            6DCC4AB8B7BD4B7B72474FDD42C507A02477AF6BFF0082E17C01F08FEC4BF157
            E02EBDF0CF43D3BC297D0DBCA4B69D1085A796CA4B568667C7DE93321CB9F99B
            0324E2AA79C55D6A422B962A2DF7F7BB7A1960FC21CB14E8E5D8CAF3FACE2258
            98D371E5E45F576D5E69A727CD6BE8D5B6F33F663C45E22B1F08F87EFB55D4EE
            A0B1D374DB77BABAB999B6C76F1229677627A00A0927DABCF7F664FDB23E1CFE
            D8BA2EA9A87C3AF107FC24169A34E96F7927D8AE2DBC97605946264427201E46
            457CA7FF000557FD973E347ED5916AD3D978E61F09FC14D0FC20FAC6A1A6C4D9
            B9D56FA149A668CA2805D085887EF1C2A9190A48AF3CFF008362976FC0FF0089
            E3D35BB51FF905EBB5E3EA7D72387E5B45DF57D6DDBC8F8BA7C1197FFAA588CF
            5E279EBD374FDC87C305395AD36D6B2B5F48BF77ADEE7E9EBB88D0B310140C92
            4F0057CCFE2CFF0082C4FECDDE0AF17CBA25EFC50D2DAF6093C991ED6CEEEEED
            D5B241FDF451346791D4311EF5E43FB167C6BFDA07F6D4F13FC4EF87DF1ABC25
            AC7817C217FE1FBAB3B3D52D341B9D22E19E491613E54F36E52DE53B91807A67
            B57CD3FB787C18FD993FE09DFF0001BC5DF0A3C39A4B7C49F8B7E37997EC525F
            AC377A8F86B704119F3A38D7CAC72CB1A8DF21906EF908ACF1398D454956A492
            8EB7E6BEFD92F33D1E1DF0FF002F96692C9F3594EAD77C9CAB0EE2E2A32D6539
            4E49A4A29EAACBB5CFD66D2BE34F8475BF858BE38B5F1268B3F83DAD1AFBFB65
            6ED3EC4205CEE732676803041C9E0820F22BC5FC17FF000570FD9D7E207C4087
            C33A67C4FD1DF54B9985BC3E7DB5CDB5BCD21200559E48D62249200F9B9ED5F9
            BFFB45FC1FF1F7EC6DFF000420D03C31E29FB6E9DA878E3C751DDDD69B2310FA
            75A3DBC92C76F20FE1264B6494AFF0B3E080C0D45FB757EC91E01F873FF045EF
            819E38D13C3DA55878AEF65D3E5BED5208545CEA1F6CB49E795657EAE03AA6DD
            D9DA17030335855CD71095E314B962A4EF7EBD11EEE59E1864339A8E2313526A
            B62274294A9F2DBDD5A4E574F9AEF4B45AEE99FAF7F1EFF695F027ECBDE105D7
            7C7DE26D37C33A64B27950C974C4BDC3E325638D41791B1CE154E05727FB377F
            C1417E0F7ED71AD5C699E00F1BE9DADEA96D1999EC5A19AD2E4C6319758E6446
            7519192A081919AFC8FF00DA9BC537BFB54FED35FB1A786BC613CB7FA56AFE0F
            F0C2DF472C8D8BA6BABC68AE5C9CE774AB12027AFCA3D2BD0FF6DCF877A17EC7
            1FF05C2F82F27C3AD1F4FF000CDAEB0FA2CD3D869908B78333DECB673058D30A
            A1E15C1000CEE63D49A1E6D5799CE315C89A5E7AFF0091143C29CB561A184C45
            69FD72A52AB562D72FB35EC9B4A2D35CCF9ADBA6ADD99FA45FB447FC1487E0A7
            ECABE291A1F8E3C7BA6E95AD6D577B08609EF6E210C32A644811CC7918237632
            083D0D76DF00FF00697F01FED43E12935CF00F89F4CF1369B049E4CCF6AC43DB
            BE321648D807424720328C8E95F8C9F153CAD13FE0AFFF0014E6F01F80B4CFDA
            51AF25D425BBD1F51D2E4BA8B4D9DA406700721BECF20312BE0A90D81F31535E
            E5FF0006D7D868D0F8DBE2EDD49AA0D37C5772618E6F0B2DBC90AD95B248E7CE
            CB93BB6C8FE5EDFBD1FF0011FDE0A787CD6AD4C57B16959B6BEEF3D9FA2233FF
            000B72DC0F0D4B36A552A3AB0A74A6EFCB67ED1EA9D34BDA5351E929BB3D91FA
            C7451457BE7E127CD5FB240B6F88FF00B427C43F16FDB12FA482F24B310EDF3A
            3B2904D246A63778D5A3630C6A1950956DD925B031B1E0BFF8286F83FC7FFB75
            EB9F0234CB6BE975BF0F69525F5E6A2D85B6FB42345BAD517EF330497716E994
            61CE335A7FB2A7C2F6F873E2AF17CF26B7A26A875995258A2B1D45EEDA255926
            2490FCA291220DB96C153F360803F3BBF6ACF8877BFB29FF00C17A6F7C45E18D
            02E3C43E21F13E871C5A6E956E38BEBFB9B0FB2C21CE46D8FCE44673D9431F7A
            F3F1F8A951509C767249FA1F7DC0BC334739AD8CC2568BF691A139D3D79573C5
            C6D7BF4B37BB4BAB3EFBFDAAFF00685F125D78D6D3E10FC2636D2FC4CD7EDFED
            17DAA4C9E6DA782B4E63B5AFEE17A34A7A4309FBED827E51F3773FB32FECBFE1
            BFD967C0AFA4E862E6F750D425379ACEB77F279DA96BD76D92F717329E598927
            03A2838005657EC79FB32FFC338FC3FBB7D5F503E21F1EF8B2E4EAFE2CD7A41F
            BCD52F9C721781B60881F2E24000545E0024D7AE56F4A9B6FDAD4DFA2ECBFCFB
            FF0091E2E6B9852A54BFB2F2E7FBA4FDE96CEAC97DA7D7917FCBB8BD97BCD733
            67E557FC1D01FF00227FC1BFFAFDD57FF41B3AF59FDAD75CD3EC3FE0929E14D2
            B57F8A127C1FD1FC57E10F0D687A8F88A1D1A7D56E45ACD6EDE75B431C4CAC8F
            346AE9E61C850CDC648AF983FE0E13F8B47F683FDB07E1E7C22F0B9FED2D53C3
            A8209A188EECEA17F2441203FED04484FF00DB5C76AFD58F09FC15D06C3C23A4
            783754D2F4CD6F4AF0FE87A7594505F5AA5C424C0B246AFB1C119C0E0E33CD79
            D82A93FAFD7AB46D75CB66F55747E91C4F0A385E0CC8B0998C5FBCEACDC62ED2
            E494AE9A6D3B5D4934ECCFC32F12780FF664F801A77C43D4FE117C78F16F8961
            D73E1CDC782B49F096BBA35E4B38925B9867CA5E32471470031EE1108D4062C7
            7735F6D7ECFF00FF000520FD8EB45F813F0FACFC69A8584FE2ED0BC33A7E95A8
            B4DE1EBC9992686D6389D0B2C455F69420104F0383CD7BD7FC157FE04781FC2B
            FF0004E8F8B7A8697E0DF0A69B7F6BA1B3C1736BA45BC3342DE6272AEA8083EE
            0D7C41E01FF8281787FE0D7FC26365A9F82BE170F037C13F829E1FBD75D43C39
            0CBAB7897C51A85A42D69147264174779029014B1C16CF5C77286658DC6B6E51
            73505D1EDCD65D77BB3C6957E19A5C3907EC2B7B275E5A7B485F9BD9C6EEFECE
            D6B74B5EFD4FD45FD98FE37784BF68DD3478C7C0B79F6FF09EA9A3DA45A7CE2D
            9EDC32C3757F03011BAAB28578D872074E38AF8D7F64EFF82607C51F83BFF056
            3F127C63D662D057C1FAAEB1AE5E42D0EA1E65CF95766730931ED1CFEF13233C
            64F271CFD37FF04E5FF84D9FE0178567F88DA3685E1CF1B6A1E16D3EFF0056D2
            B47D3869D67A7493DCDFCC2058013E5B223AABF392E189EB5D5EB9F1EFC51FF0
            97F8BA0D13C21A7EA3A1F84F759CB7D75AEC76524B7C2086711EC74DAB114990
            7985F3BB3F2E39AD3118253947DABBB83E9B5D7E87CA657C535F2B8E328E5D1B
            52C4C5C1A9EB25077B6AB957359EAED6BF43E08F1D7FC13BBF6B1FD937F6ACD7
            BC6DF02BC4D178A743D65A64B7B6D4F548DE482DA47DE2DE68EED82379642ED7
            4624ED07E5CB2D75FF00F04D9FF8255FC4FF0005FED77AB7C77F8E17FA40F135
            E9BC9A2D32C9E395A6B9BA468E5926F2808550249200885B25B3C05F9BEF1D6B
            E3DF84F42F1968FA0CBADE9B26A5AD5FCBA643147771318AE238CC8D1C837655
            BA28182773A0C7CC2B50FC50F0D0B549FF00E122D0BC992E5ACD24FB7C5B5A75
            60AD103BB05C3100AF5C9031CD724329A31A8A77764EE95F44CFA3C5F8AB9C62
            3033C1B8528CAA41539D450B5594169CAE57B6BD7447E5DEB3FF0004A1FDA1FF
            0060FF00DA6B59F1A7ECC9AA695A8681AC89234D3EEEE208E586DDD837D9A68E
            E311BAA305DAEADBBE5E83241EA7F634FF00824BFC5BF1E7ED9D0FC77FDA3B58
            B09F5BD3EEE3D4ADB4CB79A29E5B8BA89408379887951450ED42AA84E4A28381
            9CFE8FC1F113C3F72BA798F5DD1E41AB4AF05895BD8CFDB644243A45F37CECA4
            1042E48C1CD61FC59F8BD6FF000EAFB41B18A6D365D5759D56CECC594B701673
            6F34EB13CC899DC42EEEB8C67AD28E5142324D5EC9DF96FA5FD0D311E2D6775B
            0D3A528D355670F672ACA1FBE943B39DFAF7B5FAEFA9DAD7E6CFC6AFD9DFF6DF
            F85FFB4078AAFF00E1FF008974DF88BE18D7A19ED349B8D66EEDD67D06194E55
            912468F64F182543A6E561C95E768FD02F117C59D07C3BE00D6FC4BFDA16D7DA
            5F87E29E4BC7B295672AD0825E21B4FF00ACC8C6DCE7240AC0F86BF157C4D75A
            46A97DF107C31A7F80ECAD228AEA0B97D6E2B983CA937652662A9E5CB1900375
            4F9C6D63CD75E270AAB249C9AB76763E4F873896B64F5273A7469D5535671AB0
            E65BDEEB54D3F47AF5B9F1E7EC5DFF000452FF00854DFB117C4CF02F8DB57B47
            F16FC58B68E3BDB9B10658349101325AAA938321498EF7E80F0A3EEEE3F3B7FC
            3B5FF6CBD3BF66DB9FD9E20B6F064BF0D2E356FB69D53FB4A11F2F9825D8096F
            3845E6A8936F93BB777C715FABBF127E3EF84BE14E8F2DE6AFADE9B1084DB178
            85DC42554B895628E42ACC3E4CB67774DAAC79C55583E2DDF4EFA4426C7458AE
            B57D76E74E891B5B8183D9C2D266E531CC9232221F2541653200C40526B92593
            D071518DD595B47BA7D19F5785F16B3CA788AD89AEA9D575271AB69C2EA15229
            4632859AB351492DF448F89FF6B8FF0082265D7C42FD80FE18FC3EF06EAB60DE
            33F85693C904F75986DF566BA612DE2E7931EE940642D9C05DA719DC3CD2EFFE
            09B9FB507EDE3F1DBE1DDEFED02BE1AD0FC29E008E2B791AD6EA1967D4215756
            97090BBE669B62866628A30085E369FD4ED03C5DA578B239DB4BD4F4FD496D9F
            CB98DADCA4C226C06DADB49C1C10707B115C6F84FF00685D1BC45E31F13DBBEA
            BA02689A2C96505AEA297E862BA96757CC7BF3B77075DA141CE78EB4E794D094
            AFAA5A5D27A3B6D733C0F8AD9E61A83A7EE4E77A928D4946F3A6EAEB5391DD25
            CCDB7AA7BF635BE3D783AF3E20FC0AF19F87F4C584EA1ADE837DA75A2C8FB233
            2CB6EF1A0638381B9864E38AF95BFE08B3FB0878F3F613F86FE37D2BC749A4A5
            CEBDA9417769F61BBFB402891B2B6EE063922BE92F8C9F1875CF08788B4EF0FF
            00847C33178AFC497D693EA4F6D3EA02C20B6B584A296694A3FCEEEEA88BB793
            B892A149AB1E2EF8D71689E168A6B75B23AF25C69715F68F2DDA35CE9C2F2E61
            84894213B4812B60FDD257824575CF0D09568D77BC6F6F99F2983E24C5E1B2AC
            464D4EDECABB8CA575ADE0EEACEFA79E8CF8E7F64EFD9C7F6C0F83B7FF0014B5
            1F1578C3FE126BBD53C3D736DE13B6D47C4B25F5B59EA0F2A7952B2382AA1137
            9E8338DBFC5C7CB9F087FE0911FB60FC0EF8BD71E3DD06FBC11FF0985CB49236
            ABA85DDB6A53AC921CBC8A6E21902C8493F381BB93CF26BF55B51FDA0DB4CD2B
            C0C973168B6BAFF8A6EAD52EF4B5D523B97B3825572D2A321FDE22B260381B4F
            AD6AFC4DF8EFA2F837E10EA5E27D3F57D06FC259DCCBA6E6FE330EA33C51BB79
            28C1BE76CA1042E4F078E2B8A79452928A7297BBB6A7D9E13C59CCF0F3AF3A78
            6A1FBF51535ECF46A2AC95B9AD6EAD756D9F26EBFF00B09FC6EFDB27FE09F9E2
            BF87FF001DFC4DA34FF105B5B5D53C39A95BAC3F66B758A28C46928822418666
            B84242960240DCE02D7CC5E22FF826B7ED8DF1FF00E0DF81FE0978BE3F07E91F
            0EFC0F781ED75537D0C8CE837223388DDA490471C8E117627070C7A11FA77F15
            3E37F883C3BAFE9DA1F843C269E2DD7EE34D7D66EEDE5D496C21B5B552140123
            2366595C958D7007C8E59940E7B25F88BA34114E2F753D374EBAB18219EFAD6E
            2F225974F12FDCF346EF9727804F04F426AAAE534AA5B9A52DACF5DD7998659E
            29E6980E65428D1B73BA905ECF4A5371E56E9A4D28E9D1DD5F5B6E7C17FF0005
            16FF008244F897C7BA47C23F11FC15BEB3B7F16FC1ED2ECF46B3B7BD91613790
            59B092DA54723609524DC487C2B6FEA36E1B9AF815FF0004EAF8FF00FB48FEDF
            FE1CF8DDFB42C7E1BD053C206DE5B4D374D9E395A67B625EDD11637915104A4C
            8C59C927200C37CBF62FC40FDB5F47D2BC19ADEB5E1D7D0F56B1D0CDFDA5CDCD
            C6B10431A5E4289E422A866692395DF1B97950A4E0E45777F0E3E2A36AFA059F
            FC24D378734AD5EF2EA6B4B68AD3568EE21D48C5D6480E4310CBF36C3964046E
            E69CB2AA0EA7B4D774ED7D2EB6D0C70DE27E73472FFA8DA127CB382A8E37A918
            D4779C54AF6D5F74DAE8CFCE5D67FE09D3FB4C7EC4DFB6978D7E247C018FC31E
            2AD2BC6B25D335BEA7710A3C115C4DE798A5495E3E63902ED747390A33D596BD
            5BFE0911FF0004D1F1FF00ECBDF167C73F157E2B6A1A7BF8CFC691CB07D8ACA6
            59BCB134EB71712CACA026F691170A99006EE79007D81F12FE3B689E0EF841AA
            78A2C358D06F962B2BA974DFF4F8CC3A8DC4513B8851837CEC4A1042E4F078E2
            BA6D07C5961AF5C4B6B0DED94BA8D9C713DE5A453ABCB69E62EE5DE80EE5C8E4
            640C8A29E5546151544DE8DB4AFA26C332F13B37C6E5F3C0D58534EA46309D45
            0B549C61F0A94AF6FB9234E8A28AF48FCE8FC33FF82047C70F06FC09FDABFC7F
            A878D3C51A07856C2E3C3F2DADBCFAADEC76B1C927DB206D8ACE40270A4E0761
            ED5FA0361E3CFD9697F6CFD47E385FFC66F87BA9F8AA5D2E1D274C8A6D7AD041
            A3C6A856478FE7C991C311B8FDD56603EF1AF12BBFF83647C09777724ADF137C
            57BA562E7FD020EE73EB51FF00C4313E03FF00A29DE2CFFC0083FC6BE5F0B431
            D4692A5EC93B3BEAFAFDE7F4C713679C159C6655733FED3AB4A5560A9C9469CB
            58A4AEAEE37D6CAFDF6D99F68DE7FC1487E00D85B34AFF0018FE1C954192135D
            B7763F455624FE02BE40FDB9FF00E0E1BF04FC3FF0DDEE89F06449E2DF13CC8D
            126B3716CD169BA79E9BD55C0799C761B427424B0F94D1B5FF008362FE1F25C2
            19FE25F8C248B3F3AA59DBA330F627207E46BE90FD96FF00E08D9F027F653D62
            DF56D37C372F8935FB521A1D4BC4128BD92061FC491855855B3D1826E1EB5DB2
            799D55C968C177DDFC8F8FA10F0E32B97D6BDAD6C6496AA9F2F245BFEF3693B7
            A5FCD3D8F953FE08B1FF0004CEF14EA5F139BF687F8C315F1D6EF6492FB42B3D
            481375733CD92FA84E1B91C337961B925B7E06109FD40B73FF001595DFFD7941
            FF00A1CD5A7593AFF865F53BE82F6D2EDAC351B6531ACC23122491B152D1BA1F
            BCA4A83C10C31C30C907D1C1E12186A7ECE1F37DD9F9FF0017F166338873178F
            C5D969CB18AF86115B457EBDDDFD0F22FF008296FC2FD7FE357EC21F13BC2BE1
            6D365D63C41ADE8ED6D636513A23DC485D0ED05C851C03D48AF9E7E017FC112B
            C15AB7C75F85DF1C7C7FFDAD71E2CF0CF83342D3E5F095C885B4DB5D52C2CA38
            12EA4DA099648F076824A8701813802BEE35B3D7028CEA3A513DF1A749FF00C7
            E86B3D70AF1A8E920FBE9D21FF00DAF5D549CA95575A9BB36B97E5B9E3CF319C
            F2F8E5D28AE553752FD6EE2A3E96B2EC54D37FE4AA6B3FF609B0FF00D1D7B5F3
            FF00ED13E05D77C67F157C47FF0008F781FC43A6DE36977106A9AA24C8DA6F89
            AD7ECEA2D97CB0FF0035CA4E401B9032244DF3156515F47787BC39FD8B25C4F3
            5CCD7D7D7854CF3CB8190A0ED4451C2A2E5B0A3BB31249249D3A0F3CF8E745F8
            31AED978864FB278235686C6DFC55791E9F7B79A65A2EA5672DDDA5E2B5CBCB1
            31335AC570F03A5C1FDE00DC8631E6B97F03FEC99ABEABF0DAEADF58F08EAF75
            22E93AAC2B657FA2D959C76F7CBA6476F149025BB32B331CA2CED8773106F435
            F7751401F1CFC47F83BE22D17C556BA2687E02B85D053C4F1EA1A7CFA7E976AC
            2C4ACBA63C87CC721ADA02B1CCE4C237C92211918F9B7BF683F84DAD6BDFB415
            C3DAF82EFB54BFD5F56D22F74AF14C51C662D06DE08DA2963690B79885642CFB
            5410C2E09FE135F5451401F267ECEBFB35F8824FD9B3C7FA15D5AEABA46B1AC5
            A41656F06A5A659E9D6FF6BB6870AE8B6CCDE6465C22199C0691630706B17E2D
            783BC63F19AFB5EF12D9781FC6BE1A8B769126AFA6DFC16FA9B5F5D40F3ACA6D
            6D2599A099220D036708AFE5E402C2BECDA2803E215FD9F75CF0ED9DF5843E07
            F10EB5630E85A65E5FFF006B695A7CB35C4D6D35832C36722393BBC88A68DED8
            9F2C3420A9F9C03D0EAFF067C4179E3199BFE108D42EA7D7B5566D0B5268A203
            C2863D726BC927725B310920789C18C12E61087A8AFAF68A00F9ABE13FECFDA9
            F867E17F89B4AD1F43FF00846AFF00C43E01B6B4DC2310799A9B1D43719187FC
            B51E6C7B98F2032F3C578DF8C7E03EBBE2FB1BDBCD17E19788FC1DE1F96F2DE0
            7D160D134FBAB991CE9A6D8DC2DBCB27920070F179BBB7289049D0B11F7CD140
            CF16F1BDB6BDF04FC69E1EF1458F87B5FF001B5B2F874787AFEDF4FF0029EFE3
            991D648662AEEAACACDE62B90DF2928791923CBF59F0578D7C69FB45C9AB5E78
            1AFB4874B8B63712DB595A0B578BEDDA54A99BA8CF9B752048662E5F089E5614
            773F5CD1408F8834BF83BE2BF0C47E1C893E195DEADE29B792C355B4D627821F
            B3D9DBC5A435B1D3E690B075C4E194C406D227DD9AC8D4FE08F882E3C09E209E
            EFE166BDE20B7D72CB53D3F47D3E5D2AC6CE6D2AF2686C596ECDBC6E23B74768
            64C3C7975308072CF93F7B51401E37F126FBC41F08BE28DAF8BB4DF09EB5E31B
            4D57408F44B8B4D2BCAFB4DADCC32C92C0CC24650227F3A5567C9D85509183C7
            8849FB34F897C53F1B3C4171AF681AB5C5B5DEB90DEDD42DA659369D7B6B71AA
            594E636BA56F3EEBCA8A2C1474DA82DCE382B9FB4E8A00F8EFE21FECFBA95E5D
            78B34BB1F01BFD9D6FF5BB885A3B0845B5E2DC416AD6ED1E38241575E402AC0D
            6A1F869AD782FE25EB37EFF0CA4F161BF93528FC3664B781ED746B85BF9E7492
            4F3197CA8A64684874E4F95B7038AFAC28A00F832F3E0BF8827F017882E6FBE1
            5EBDE20B5D6EC753D3B49D2E4D26C6CE5D36F67B6B0D9766DE3711DBA3343200
            E84B8310CE59F27DABF67AF861AC786FE37F9977E18BAD32EB488F57FED8F10C
            8912C7E25FB65DC53DA04704C92F971A1DDBC0F28A851C357D13450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            7FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo54: TfrxMemoView
          Left = 569.205966400000000000
          Top = 56.795716630000000000
          Width = 142.272435980000000000
          Height = 16.905109830000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 181.417335040000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        Condition = 'contrato."sContrato"'
        ReprintOnNewPage = True
        object Memo9: TfrxMemoView
          Width = 740.031496060000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Solicitud de materiales y/o servicios')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 58.960629921259900000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitado por:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 30.236227799999990000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 113.385826770000000000
          Top = 58.960629920000000000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sSolicito"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 113.385826770000000000
          Top = 30.236227799999990000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo57: TfrxMemoView
          Top = 87.685039370000000000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 113.385826770000000000
          Top = 87.685039370000000000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."dFechaSolicitado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Top = 116.409448820000000000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Destino:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 113.385826770000000000
          Top = 116.409448820000000000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."Cliente"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 580.157480310000000000
          Top = 58.960629920000000000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sRequisita"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 580.157480310000000000
          Top = 30.236227799999990000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sNumFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 580.157480310000000000
          Top = 87.685039370000000000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."dFechaRequerido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 580.157480310000000000
          Top = 116.409448820000000000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."dFechaVigencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 453.543307090000000000
          Top = 30.236227799999990000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'No. de req.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 453.543307090000000000
          Top = 58.960629920000000000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Requisitado por:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 453.543307090000000000
          Top = 87.685039370000000000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha requerida:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 453.543307090000000000
          Top = 116.409448820000000000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Vigencia:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 145.133858270000000000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 113.385826770000000000
          Top = 145.133858270000000000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 580.157480310000000000
          Top = 145.133858270000000000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."mReferencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 453.543307090000000000
          Top = 145.133858270000000000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Centro de costo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Visible = False
          OnBeforePrint = 'Memo34OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 234.330860000000000000
          Top = 151.181200000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Visible = False
          OnBeforePrint = 'Memo35OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 355.275820000000000000
          Top = 151.181200000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Visible = False
          OnBeforePrint = 'Memo36OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 151.181200000000000000
          Top = 154.960730000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NORMAL')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 260.787570000000000000
          Top = 154.960730000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IMPORTANTE')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 381.732530000000000000
          Top = 154.960730000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CRITICA')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 29.478053280000000000
        Top = 427.086890000000000000
        Width = 740.409927000000000000
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo25: TfrxMemoView
          Left = 566.929170470000000000
          Width = 85.039379840000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 651.968503940000000000
          Width = 86.929143620000000000
          Height = 29.480314960000000000
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
          Memo.UTF8W = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 491.338607090000000000
          Width = 75.590568270000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 37.795275590000000000
          Width = 75.590551180000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 113.385826770000000000
          Width = 377.952780310000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBSolicitud."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Width = 37.795275590000000000
          Height = 29.478053280000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 652.079160000000000000
          Top = 15.307360000000020000
          Width = 87.685039370000000000
          Height = 29.480314960000000000
          Visible = False
          OnBeforePrint = 'Memo19OnBeforePrint'
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
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'Recoger')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 177.637873390000000000
        Top = 582.047620000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Top = 113.385900000000000000
          Width = 246.425196850000000000
          Height = 25.700784960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sPuesto1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 34.015769999999970000
          Width = 246.425196850000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sFicha1"] '
            ''
            ''
            '[frxDBSolicitud."sFirmante1"] ')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          Left = 246.425196850000000000
          Top = 113.385900000000000000
          Width = 245.669291340000000000
          Height = 25.700784960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sPuesto2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 246.425196850000000000
          Top = 34.015769999999970000
          Width = 245.669291340000000000
          Height = 79.370093390000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sFicha2"]'
            ''
            ''
            '[frxDBSolicitud."sFirmante2"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo17: TfrxMemoView
          Left = 492.118430000000000000
          Top = 113.385900000000000000
          Width = 247.937007870000000000
          Height = 25.700784960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sPuesto3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 492.118430000000000000
          Top = 34.015769999999970000
          Width = 247.937007870000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sFicha3"] '
            ''
            ''
            '[frxDBSolicitud."sFirmante3"] ')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          Top = 154.960730000000000000
          Width = 246.425196850000000000
          Height = 18.897613390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Anexo 1.0 CMMI-COM-01 Rev. 2')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo22: TfrxMemoView
          Top = 7.559060000000045000
          Width = 246.425196850000000000
          Height = 25.700784960000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sFicha4"]:'
            '[frxDBSolicitud."UsuarioValido"], [frxDBSolicitud."FechaValido"]')
          ParentFont = False
          VAlign = vaBottom
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000045000
          Width = 250.204726850000000000
          Height = 25.700784960000000000
          OnBeforePrint = 'Memo23OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSolicitud."sFicha3"]:'
            
              '[frxDBSolicitud."UsuarioAutorizo"], [frxDBSolicitud."FechaAutori' +
              'zo"]')
          ParentFont = False
          VAlign = vaBottom
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.402064850000000000
        Top = 359.055350000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBSolicitud."iFolioSolicitud"'
        object Memo10: TfrxMemoView
          Width = 37.795275590000000000
          Height = 45.402064850000000000
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
            'Part.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 37.795275590000000000
          Width = 75.590551180000000000
          Height = 45.207823060000000000
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
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 491.338607090000000000
          Width = 75.590568270000000000
          Height = 45.354330710000000000
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
            'Unidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 113.385826770000000000
          Width = 377.952780310000000000
          Height = 45.354330710000000000
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
            'Descripci'#243'n del Producto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 566.929175350000000000
          Width = 173.102340240000000000
          Height = 18.897637800000000000
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
            'Cantidades')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 566.929170470000000000
          Top = 18.897650000000000000
          Width = 85.039379840000000000
          Height = 26.456692910000000000
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
            'Requeridos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 651.968503937008000000
          Top = 18.897650000000000000
          Width = 86.929143620000000000
          Height = 26.456692910000000000
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
            'Existente')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 41.574803150000000000
        Top = 517.795610000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 113.385826770000000000
          Width = 626.645669290000000000
          Height = 41.574803150000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBSolicitud."mComentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Width = 113.385875590000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Observaciones:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object OpenXLS: TOpenDialog
    DefaultExt = 'XLS'
    Filter = 'Archivo de Microsoft Excel|*.XLS'
    Left = 536
    Top = 170
  end
  object styleGrid: TcxStyleRepository
    Left = 396
    Top = 160
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
    Left = 685
    Top = 375
  end
  object ds_ordenes_trabajo: TDataSource
    AutoEdit = False
    DataSet = Qordenes_trabajo
    Left = 669
    Top = 487
  end
  object zq_contratos: TUniQuery
    Connection = connection.Uconnection
    Left = 597
    Top = 443
  end
  object zGrafica: TUniQuery
    Connection = connection.Uconnection
    Left = 1002
    Top = 244
  end
  object dsGrafica: TDataSource
    DataSet = zGrafica
    Left = 1090
    Top = 292
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 788
    Top = 349
  end
  object zCosto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from segmentos')
    Left = 486
    Top = 90
  end
  object dsCosto: TDataSource
    DataSet = zCosto
    Left = 542
    Top = 90
  end
  object zRecurso: TUniQuery
    Connection = connection.Uconnection
    Left = 908
    Top = 238
  end
  object ds_Recurso: TDataSource
    DataSet = zRecurso
    Left = 900
    Top = 286
  end
  object ds_firma: TDataSource
    DataSet = zFirma
    Left = 232
    Top = 176
  end
  object zFirma: TUniQuery
    Connection = connection.Uconnection
    Left = 232
    Top = 224
  end
  object plataforma: TUniQuery
    Left = 440
    Top = 336
  end
  object ds_plataforma: TDataSource
    DataSet = plataforma
    Left = 64
    Top = 248
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
    Left = 704
    Top = 256
  end
  object PopMenuDetalle: TPopupMenu
    Images = connection.cxIconos16
    Left = 785
    Top = 240
    object ActualizarMaterial1: TMenuItem
      Caption = 'Actualizar Material'
      ImageIndex = 6
      OnClick = ActualizarMaterial1Click
    end
  end
  object requisiciones: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select * from anexo_requisicion Where sContrato = :Contrato and ' +
        'sStatus = '#39'AUTORIZADO'#39' '
      'and sEstado = '#39'PENDIENTE'#39)
    Left = 396
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end>
  end
  object ds_requisiciones: TDataSource
    DataSet = requisiciones
    Left = 400
    Top = 243
  end
  object zFolio: TUniQuery
    Connection = connection.Uconnection
    Left = 509
    Top = 443
  end
end
