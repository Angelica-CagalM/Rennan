object frmTransito: TfrmTransito
  Left = 0
  Top = 0
  Caption = 'Tr'#225'nsito'
  ClientHeight = 596
  ClientWidth = 1122
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
  object PanelPrincipal: TPanel
    Left = 0
    Top = 85
    Width = 1122
    Height = 511
    Align = alClient
    TabOrder = 1
    ExplicitTop = 35
    ExplicitHeight = 561
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 583
      Height = 509
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 559
      object Panel2: TPanel
        Left = 1
        Top = 216
        Width = 581
        Height = 292
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 266
        object pnlBtn2: TPanel
          Left = 1
          Top = 255
          Width = 579
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 389
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 389
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
          Width = 579
          Height = 254
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          ClientRectBottom = 252
          ClientRectLeft = 2
          ClientRectRight = 577
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 40
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 575
              Height = 222
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
                Left = 137
                Top = 156
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
                TabOrder = 10
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 43
                Width = 757
              end
              object cxCodigo: TcxDBTextEdit
                Left = 137
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
                Left = 137
                Top = 98
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
                TabOrder = 5
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 360
              end
              object cxCliente: TcxDBLookupComboBox
                Left = 137
                Top = 127
                DataBinding.DataField = 'IdCliente'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Properties.KeyFieldNames = 'IdCliente'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsCliente
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
                Width = 145
              end
              object cxEmbarcacion: TcxDBLookupComboBox
                Left = 137
                Top = 40
                DataBinding.DataField = 'IdEmbarcacion'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Properties.KeyFieldNames = 'IdEmbarcacion'
                Properties.ListColumns = <
                  item
                    FieldName = 'Embarcacion'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsEmbarcacion
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
                Width = 427
              end
              object cxPuestoRecibe: TcxDBTextEdit
                Left = 137
                Top = 69
                DataBinding.DataSource = dsAvisosEmbarque
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
                Width = 121
              end
              object cxPlataformaDestino: TcxDBLookupComboBox
                Left = 431
                Top = 98
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
                TabOrder = 6
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 326
              end
              object cxFecha: TcxDBDateEdit
                Left = 474
                Top = 40
                DataBinding.DataField = 'FechaAviso'
                DataBinding.DataSource = dsAvisosEmbarque
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
                Width = 184
              end
              object cxSalida: TcxDBLookupComboBox
                Left = 518
                Top = 127
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Properties.KeyFieldNames = 'iFolioSalida'
                Properties.ListColumns = <
                  item
                    Caption = 'Salida:'
                    FieldName = 'sFolioSalida'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsSalidas
                Properties.OnChange = cxSalidaPropertiesChange
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
                Width = 133
              end
              object cxTipoSalida: TcxDBLookupComboBox
                Left = 231
                Top = 127
                DataBinding.DataField = 'IdTipo'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Properties.KeyFieldNames = 'IdTipo'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListSource = ds_tipomovimiento
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 8
                OnEnter = EnterControl
                OnKeyUp = GlobalKeyUp
                Width = 536
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
                TabOrder = 14
                Visible = False
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 104
              end
              object cxAlmacen: TcxDBLookupComboBox
                Left = 381
                Top = 11
                DataBinding.DataField = 'IdAlmacen'
                DataBinding.DataSource = dsAvisosEmbarque
                ParentFont = False
                Properties.KeyFieldNames = 'IdAlmacen'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListSource = ds_almacen
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
                Width = 87
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
                CaptionOptions.Text = 'Notas:'
                Control = cxNota
                ControlOptions.ShowBorder = False
                Index = 5
              end
              object dxLayoutItem1: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'C'#243'digo: '
                Control = cxCodigo
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Plataforma de Origen:'
                Control = cxPlataformaOrigen
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem10: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Cliente: '
                Control = cxCliente
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
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
                CaptionOptions.Text = 'Embarcaci'#243'n:'
                Control = cxEmbarcacion
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Puesto Recibe:'
                Control = cxPuestoRecibe
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Plataforma de Destino:'
                Control = cxPlataformaDestino
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Fecha de Aviso:'
                Control = cxFecha
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
              object dxLayoutItem9: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Salida:'
                Control = cxSalida
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 4
                AutoCreated = True
              end
              object dxLayoutItem13: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Tipo Salida'
                Control = cxTipoSalida
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
              object dxLayoutItem16: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Almacen'
                Control = cxAlmacen
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignVert = avTop
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
        Top = 208
        Width = 581
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
        ExplicitTop = 258
      end
      object grid_embarque: TcxGrid
        Left = 1
        Top = 1
        Width = 581
        Height = 207
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ExplicitHeight = 257
        object cxView_Embarque: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = cxView_EmbarqueCellClick
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
          object cxView_EmbarqueColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Width = 150
          end
          object cxView_EmbarqueColumn2: TcxGridDBColumn
            Caption = 'Fecha Recepci'#243'n'
            DataBinding.FieldName = 'FechaAvisos'
            Width = 150
          end
          object cxView_EmbarqueColumn3: TcxGridDBColumn
            Caption = 'Embarcaci'#243'n'
            DataBinding.FieldName = 'Embarcacion'
            Width = 150
          end
          object cxView_EmbarqueColumn4: TcxGridDBColumn
            Caption = 'Plataforma Origen'
            DataBinding.FieldName = 'PlataformaOrigen'
            Width = 150
          end
          object cxView_EmbarqueColumn5: TcxGridDBColumn
            Caption = 'Plataforma Destino'
            DataBinding.FieldName = 'PlataformaDestino'
            Width = 150
          end
          object cxView_EmbarqueColumn6: TcxGridDBColumn
            Caption = 'Estatus/Tr'#225'nsito'
            DataBinding.FieldName = 'sStatus'
            Width = 150
          end
          object cxView_EmbarqueColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Width = 150
          end
          object cxView_EmbarqueColumn8: TcxGridDBColumn
            Caption = 'Usuario Valid'#243
            DataBinding.FieldName = 'UsuarioValido'
            Width = 150
          end
          object cxView_EmbarqueColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Tiempo'
            Width = 150
          end
        end
        object grid_embarqueLevel1: TcxGridLevel
          GridView = cxView_Embarque
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 584
      Top = 1
      Width = 6
      Height = 509
      AlignSplitter = salRight
      Control = Panel1
      ExplicitHeight = 559
    end
    object PanelDetalle: TPanel
      Left = 590
      Top = 1
      Width = 531
      Height = 509
      Align = alRight
      TabOrder = 2
      ExplicitHeight = 559
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 529
        Height = 507
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 557
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 36
          Width = 527
          Height = 435
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
          ExplicitHeight = 485
          ClientRectBottom = 433
          ClientRectLeft = 2
          ClientRectRight = 525
          ClientRectTop = 29
          object cxTabSheet2: TcxTabSheet
            Caption = 'Materiales'
            ImageIndex = 11
            ExplicitHeight = 454
            object cxGridMateriales: TcxGrid
              Left = 0
              Top = 0
              Width = 523
              Height = 290
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitHeight = 340
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
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxView_MaterialesColumn1: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  Width = 61
                end
                object cxView_MaterialesColumn2: TcxGridDBColumn
                  Caption = 'Material'
                  DataBinding.FieldName = 'mDescripcion'
                  Width = 96
                end
                object cxView_MaterialesColumn3: TcxGridDBColumn
                  Caption = 'Medida'
                  DataBinding.FieldName = 'IdMedida'
                  Width = 68
                end
                object cxView_MaterialesColumn4: TcxGridDBColumn
                  Caption = 'Cant.'
                  DataBinding.FieldName = 'Cantidad'
                  Width = 38
                end
                object cxView_MaterialesColumn5: TcxGridDBColumn
                  DataBinding.FieldName = 'Factura'
                  Width = 64
                end
                object cxView_MaterialesColumn6: TcxGridDBColumn
                  Caption = 'Serie'
                  DataBinding.FieldName = 'IdSerie'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'IdSerie'
                  Properties.ListColumns = <
                    item
                      FieldName = 'sNumeroSerie'
                    end>
                  Properties.ListSource = dsSeries
                  Width = 68
                end
              end
              object cxGridMaterialesLevel1: TcxGridLevel
                GridView = cxView_Materiales
              end
            end
            object cxSplitter4: TcxSplitter
              Left = 0
              Top = 290
              Width = 523
              Height = 12
              AlignSplitter = salBottom
              Visible = False
              ExplicitTop = 340
            end
            object PanelDown6: TPanel
              Left = 0
              Top = 302
              Width = 523
              Height = 102
              Align = alBottom
              TabOrder = 2
              Visible = False
              ExplicitTop = 352
              object dxLayoutControl5: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 521
                Height = 100
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxFactura: TcxDBTextEdit
                  Left = 62
                  Top = 38
                  DataBinding.DataField = 'Factura'
                  DataBinding.DataSource = dsDetalleMaterial
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
                object cxCantidad: TcxDBCalcEdit
                  Left = 62
                  Top = 10
                  DataBinding.DataField = 'Cantidad'
                  DataBinding.DataSource = dsDetalleMaterial
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
                object dxLayoutItem11: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  CaptionOptions.Text = 'Factura'
                  Control = cxFactura
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem12: TdxLayoutItem
                  Parent = dxLayoutControl5Group_Root
                  CaptionOptions.Text = 'Cantidad'
                  Control = cxCantidad
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            OnShow = cxTabSheet3Show
            ExplicitHeight = 454
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 210
              Width = 523
              Height = 194
              Align = alClient
              TabOrder = 0
              ExplicitHeight = 244
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 521
                Height = 192
                Align = alClient
                TabOrder = 0
                ExplicitHeight = 242
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
          DesignSize = (
            527
            35)
          object cxNuevoDetalle: TcxButton
            Left = 266
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
            Left = 353
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
            Left = 438
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
          Top = 471
          Width = 527
          Height = 35
          Align = alBottom
          TabOrder = 2
          ExplicitTop = 521
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1122
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1122
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 559
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
      ExplicitLeft = 559
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
      Caption = 'Tr'#225'nsito'
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
      Width = 116
    end
  end
  object PanelInsumos: TPanel
    Left = -13
    Top = 59
    Width = 463
    Height = 279
    TabOrder = 2
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
  object Panel4: TPanel
    Left = 0
    Top = 35
    Width = 1122
    Height = 50
    Align = alTop
    TabOrder = 3
    ExplicitLeft = -36
    ExplicitWidth = 1158
    object dxLayoutControl4: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1120
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
      ExplicitWidth = 1156
      object btnLimpiarF: TcxButton
        Left = 1003
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
      end
      object cxFiltroRequerido: TcxButton
        Left = 717
        Top = 11
        Width = 71
        Height = 25
        Caption = 'Filtrar'
        OptionsImage.ImageIndex = 63
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        OnClick = cxFiltroRequeridoClick
      end
      object cxLabel2: TcxLabel
        Left = 346
        Top = 14
        Caption = 'Periodo Tr'#225'nsito'
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
        Left = 482
        Top = 12
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 3
        Width = 100
      end
      object cxFinInspeccion: TcxDateEdit
        Left = 611
        Top = 12
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 4
        Width = 100
      end
      object cxOpcionesFiltro: TcxComboBox
        Left = 134
        Top = 12
        ParentFont = False
        Properties.Items.Strings = (
          'PENDIENTE'
          'VALIDADO'
          'AUTORIZADO')
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
        Control = cxLabel2
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem26: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Inicio'
        Control = cxInicioInspeccion
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Fin'
        Control = cxFinInspeccion
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Filtrado Por:'
        Control = cxOpcionesFiltro
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object zAvisosEmbarque: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = zAvisosEmbarqueAfterScroll
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
  object dsOrdenesTrabajo: TDataSource
    AutoEdit = False
    DataSet = zOrdenesTrabajo
    Left = 45
    Top = 535
  end
  object zOrdenesTrabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 45
    Top = 487
  end
  object zOrdenCompras: TUniQuery
    Connection = connection.Uconnection
    Left = 75
    Top = 375
  end
  object dsOrdenCompras: TDataSource
    DataSet = zOrdenCompras
    Left = 59
    Top = 455
  end
  object zSalidas: TUniQuery
    Connection = connection.Uconnection
    Left = 43
    Top = 279
  end
  object dsSalidas: TDataSource
    DataSet = zSalidas
    Left = 43
    Top = 335
  end
  object dsPlataforma: TDataSource
    DataSet = zPlataforma
    Left = 217
    Top = 172
  end
  object zPlataforma: TUniQuery
    Connection = connection.Uconnection
    Left = 217
    Top = 124
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
  object zCliente: TUniQuery
    Connection = connection.Uconnection
    Left = 409
    Top = 116
  end
  object dsCliente: TDataSource
    DataSet = zCliente
    Left = 481
    Top = 116
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
    ReportOptions.LastChange = 43566.563045162040000000
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
        Height = 234.330833150000000000
        Top = 498.897960000000000000
        Width = 980.410081999999900000
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Top = 200.315090000000100000
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
            'FO-MEX-SCM-006 Rev. 0'
            #169'Copyright Subsea 7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 789.921770000000000000
          Top = 200.315090000000100000
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
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 400.630180000000000000
          Top = 200.315090000000100000
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
            'Fecha: [frxDBRequisicion."Fecha"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Width = 322.015796850000000000
          Height = 88.818902520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 18.897650000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 37.795300000000000000
          Width = 76.346346850000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PUESTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 56.692949999999990000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 94.488250000000000000
          Top = 75.590600000000000000
          Width = 167.055066850000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DEPENDENCIA REMITENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 3.779530000000022000
          Width = 322.015796850000000000
          Height = 11.338553390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITA ENVIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 75.590600000000000000
          Top = 18.897650000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFirmante3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 75.590600000000000000
          Top = 37.795300000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuesto3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 75.590600000000000000
          Top = 56.692949999999990000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 322.015748030000000000
          Width = 335.622047240000000000
          Height = 88.818902520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 321.260050000000000000
          Top = 18.897650000000000000
          Width = 76.346346850000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 321.260050000000000000
          Top = 37.795300000000000000
          Width = 76.346346850000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PUESTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 321.260050000000000000
          Top = 56.692949999999990000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFirmante1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 396.850650000000000000
          Top = 37.795300000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuesto1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 396.850650000000000000
          Top = 56.692949999999990000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 657.637795280000000000
          Width = 322.015796850000000000
          Height = 88.818902520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 718.110700000000000000
          Top = 56.692949999999990000
          Width = 227.527546850000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBE(NOMBRE, PUESTO Y FIRMA)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Top = 88.818897640000050000
          Width = 322.015796850000000000
          Height = 88.818902520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Top = 109.606299212598000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Top = 128.504020000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PUESTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Top = 147.401670000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 75.590600000000000000
          Top = 109.606370000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 75.590600000000000000
          Top = 128.504020000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuesto2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 75.590600000000000000
          Top = 147.401670000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 322.015748030000000000
          Top = 88.818897640000050000
          Width = 335.622047244095000000
          Height = 88.818902520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 321.260050000000000000
          Top = 109.606370000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 321.260050000000000000
          Top = 128.504020000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PUESTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 321.260050000000000000
          Top = 147.401670000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 396.850650000000000000
          Top = 109.606370000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 396.850650000000000000
          Top = 128.504020000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 396.850650000000000000
          Top = 147.401670000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 657.637795280000000000
          Top = 88.818897640000050000
          Width = 322.015796850000000000
          Height = 88.818902520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 657.638220000000000000
          Top = 109.606370000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 657.638220000000000000
          Top = 128.504020000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PUESTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 657.638220000000000000
          Top = 147.401670000000000000
          Width = 76.346346850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 733.228820000000000000
          Top = 109.606370000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 733.228820000000000000
          Top = 128.504020000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 733.228820000000000000
          Top = 147.401670000000000000
          Width = 227.527546850000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 321.260050000000000000
          Top = 3.779530000000022000
          Width = 337.133916850000000000
          Height = 11.338553390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ALMACEN GENERAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 657.638220000000000000
          Top = 3.779530000000022000
          Width = 322.015796850000000000
          Height = 11.338553390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'EMBARCACION/UNIDAD QUE TRANSPORTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Top = 94.488250000000000000
          Width = 322.015796850000000000
          Height = 11.338553390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'MATERIALISTA A BORDO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 321.260050000000000000
          Top = 94.488250000000000000
          Width = 337.133916850000000000
          Height = 11.338553390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'REPTTE, C'#205'A. /SUPTTE. CONSTRUC.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 657.638220000000000000
          Top = 94.488250000000000000
          Width = 322.015796850000000000
          Height = 11.338553390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'REPTTE. DE PEMEX')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 84.197609750000000000
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
        object Memo16: TfrxMemoView
          Left = 192.756030000000000000
          Top = 35.802455550000000000
          Width = 599.433244170000000000
          Height = 19.945599750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'MANIFIESTO DE EMBARQUE / DESEMBARQUE')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          Left = 672.756340000000000000
          Top = 60.472480000000000000
          Width = 304.629904170000000000
          Height = 16.166069750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'No. FOLIO: [frxDBRequisicion."Codigo"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 52.157494960000000000
        Top = 385.512060000000000000
        Width = 980.410081999999900000
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo14: TfrxMemoView
          Left = 657.638049130000000000
          Width = 109.606174720000000000
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
            '[frxDBRequisicion."NumeroMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590575590000000000
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
          Left = 226.771709690000000000
          Width = 321.260025590000000000
          Height = 52.153493530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 865.512428980000000000
          Width = 113.385792200000000000
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
        object Memo20: TfrxMemoView
          Width = 75.590575590000000000
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
          Left = 151.181200000000000000
          Width = 75.590575590000000000
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
        object Memo65: TfrxMemoView
          Left = 548.031850000000000000
          Width = 109.606174720000000000
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
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 767.244590000000000000
          Width = 98.267584720000000000
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
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.063474850000000000
        Top = 328.819110000000000000
        Width = 980.410081999999900000
        Condition = 'frxDBRequisicion."sContrato"'
        object Memo45: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590575590000000000
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
        object Memo48: TfrxMemoView
          Left = 226.771629130000000000
          Width = 321.242150700000000000
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
        object Memo12: TfrxMemoView
          Left = 657.637805040000000000
          Width = 109.606265810000000000
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
            'TRAZABILIDAD/REQ.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 865.511908660000000000
          Width = 113.385869490000000000
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
            'COMENTARIOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Width = 75.590575590000000000
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
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590575590000000000
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
            'U. M.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 548.031850000000000000
          Width = 109.606265810000000000
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
            'No. ORDEN DE COMPRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 767.244590000000000000
          Width = 98.267675810000000000
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
            'DIMENSIONES')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 142.299224200000000000
        Top = 162.519790000000000000
        Width = 980.410081999999900000
        Condition = 'contrato."sContrato"'
        object Memo64: TfrxMemoView
          Width = 978.898191890000000000
          Height = 142.677245300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Width = 151.181121890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EMBARQUE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 113.385900000000000000
          Top = 28.724409450000000000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."FechaAviso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 28.724409450000000000
          Width = 113.385821890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'LUGAR Y FECHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 113.385900000000000000
          Top = 46.488188979999990000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."PlataformaOrigen"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 113.385900000000000000
          Top = 64.251968500000000000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."PlataformaDestino"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 113.385900000000000000
          Top = 82.015748030000000000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Conducto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 113.385900000000000000
          Top = 102.803149606299000000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'MARITIMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Top = 46.488188976378010000
          Width = 113.385821890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'REMITENTE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Top = 64.251968500000000000
          Width = 113.385821890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Top = 82.015748030000000000
          Width = 113.385821890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONDUCTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 151.181200000000000000
          Width = 188.976421890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 120.944960000000000000
          Width = 113.385821890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VIA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 340.157700000000000000
          Top = 102.803149606299000000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TERRESTRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 113.385900000000000000
          Top = 120.566929130000000000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'XXXXXXXXXX')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 340.157700000000000000
          Top = 120.566929130000000000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
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
        object Memo6: TfrxMemoView
          Left = 566.929500000000000000
          Width = 170.078771890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESEMBARQUE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 737.008350000000000000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'XXXXX')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 566.929500000000000000
          Top = 26.456709999999990000
          Width = 170.078771890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESPONSABLE EMBARCADOR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 566.929500000000000000
          Top = 45.354360000000010000
          Width = 170.078771890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOMBRE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 566.929500000000000000
          Top = 64.252010000000010000
          Width = 170.078771890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PUESTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 566.929500000000000000
          Top = 83.149660000000010000
          Width = 170.078771890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FIRMA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 737.008350000000000000
          Top = 45.354360000000010000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."NombreRecibe"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 737.008350000000000000
          Top = 64.252010000000010000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBRequisicion."PuestoRecibe"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 737.008350000000000000
          Top = 83.149660000000010000
          Width = 226.771721890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
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
    Left = 112
    Top = 272
  end
  object ds_tipomovimiento: TDataSource
    AutoEdit = False
    DataSet = zq_tipomovimiento
    Left = 176
    Top = 262
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
end
