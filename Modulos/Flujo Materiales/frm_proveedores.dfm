object frmProveedores: TfrmProveedores
  Left = 353
  Top = 73
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de Proveedores'
  ClientHeight = 499
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1061
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 498
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 498
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
          OnClick = frmBarraH11btnExportaClick
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Tabla...Agregando Datos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object btnHomologarRFC: TcxButton
      Tag = 10
      Left = 380
      Top = 1
      Width = 118
      Height = 33
      Hint = 'Homologar RFC'
      Align = alRight
      Caption = 'Homologar RFC'
      OptionsImage.ImageIndex = 34
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnHomologarRFCClick
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1061
    Height = 464
    Align = alClient
    TabOrder = 1
    object PanelTipo: TPanel
      Left = 1
      Top = 1
      Width = 152
      Height = 462
      Align = alLeft
      TabOrder = 0
      object Grid_Bitacora: TcxGrid
        Left = 1
        Top = 1
        Width = 150
        Height = 460
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
          OnCellClick = BView_filtroCellClick
          DataController.DataSource = ds_catalogo
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = BView_filtroDataControllerFilterChanged
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnFilterRecord = BView_empresaDataControllerFilterRecord
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
            DataBinding.FieldName = 'Tipo'
            Visible = False
            GroupIndex = 0
          end
          object BView_filtroColumn1: TcxGridDBColumn
            Caption = 'Producto/Servicio'
            DataBinding.FieldName = 'Nombre'
            Width = 68
          end
        end
        object Grid_BitacoraLevel1: TcxGridLevel
          GridView = BView_filtro
        end
      end
    end
    object cxSplitTipo: TcxSplitter
      Left = 153
      Top = 1
      Width = 6
      Height = 462
    end
    object Panel1: TPanel
      Left = 159
      Top = 1
      Width = 413
      Height = 462
      Align = alClient
      TabOrder = 2
      object Panel2: TPanel
        Left = 1
        Top = 148
        Width = 411
        Height = 313
        Align = alBottom
        ParentBackground = False
        TabOrder = 0
        object dxLayoutControl1: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 409
          Height = 269
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxDGenerales: TcxGroupBox
            Left = -628
            Top = 10
            Caption = 'Datos Generales'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 134
            Width = 1010
            object dxLayoutControl2: TdxLayoutControl
              Left = 3
              Top = 16
              Width = 1004
              Height = 108
              Align = alClient
              TabOrder = 0
              AutoSize = True
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxCodigo: TcxDBTextEdit
                Left = 62
                Top = 10
                DataBinding.DataField = 'Codigo'
                DataBinding.DataSource = dsProveedores
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
                Width = 178
              end
              object cxNombre: TcxDBTextEdit
                Left = 62
                Top = 38
                DataBinding.DataField = 'Nombre'
                DataBinding.DataSource = dsProveedores
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
                Width = 178
              end
              object cxRazonSocial: TcxDBTextEdit
                Left = 321
                Top = 38
                DataBinding.DataField = 'RazonSocial'
                DataBinding.DataSource = dsProveedores
                ParentFont = False
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
                Width = 357
              end
              object cxRFC: TcxDBTextEdit
                Left = 713
                Top = 38
                DataBinding.DataField = 'RFC'
                DataBinding.DataSource = dsProveedores
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
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 264
              end
              object cxGiro: TcxDBLookupComboBox
                Left = 62
                Top = 66
                DataBinding.DataField = 'IdGiro'
                DataBinding.DataSource = dsProveedores
                ParentFont = False
                Properties.KeyFieldNames = 'IdGiro'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = ds_giro
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
                Width = 915
              end
              object cxCredito: TcxDBCurrencyEdit
                Left = 873
                Top = 66
                DataBinding.DataField = 'DiasCredito'
                DataBinding.DataSource = dsProveedores
                ParentFont = False
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0;-,0'
                Style.HotTrack = False
                TabOrder = 5
                Width = 121
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                AlignHorz = ahParentManaged
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup9
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'C'#243'digo:'
                Control = cxCodigo
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignVert = avClient
                CaptionOptions.Text = 'Nombre:'
                Control = cxNombre
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignVert = avTop
                CaptionOptions.Text = 'Raz'#243'n Social:'
                Control = cxRazonSocial
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup9
                AlignVert = avClient
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem6: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avBottom
                CaptionOptions.Text = 'RFC:'
                Control = cxRFC
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup1
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem1: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup15
                AlignHorz = ahClient
                CaptionOptions.Text = 'Giro'
                Control = cxGiro
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahClient
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem33: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup15
                AlignVert = avClient
                CaptionOptions.Text = 'D'#237'as Cr'#233'dito'
                Control = cxCredito
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl2Group_Root
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
            end
          end
          object cxGDireccion: TcxGroupBox
            Left = -628
            Top = 150
            Caption = 'Direcci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 99
            Width = 1010
            object dxLayoutControl4: TdxLayoutControl
              Left = 3
              Top = 16
              Width = 1004
              Height = 73
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxCalle: TcxDBTextEdit
                Left = 55
                Top = 10
                DataBinding.DataField = 'Calle'
                DataBinding.DataSource = dsProveedores
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
                Width = 247
              end
              object cxInterior: TcxDBTextEdit
                Left = 404
                Top = 10
                DataBinding.DataField = 'Interior'
                DataBinding.DataSource = dsProveedores
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
                Width = 68
              end
              object cxExterior: TcxDBTextEdit
                Left = 576
                Top = 10
                DataBinding.DataField = 'Exterior'
                DataBinding.DataSource = dsProveedores
                ParentFont = False
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
                Width = 99
              end
              object cxCiudad: TcxDBLookupComboBox
                Left = 55
                Top = 38
                DataBinding.DataField = 'IdCiudad'
                DataBinding.DataSource = dsProveedores
                ParentFont = False
                Properties.KeyFieldNames = 'IdCiudad'
                Properties.ListColumns = <
                  item
                    Caption = 'Ciudad'
                    FieldName = 'FK_Ciudad'
                  end
                  item
                    FieldName = 'Estado'
                  end>
                Properties.ListSource = ds_ciudades
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
                Width = 389
              end
              object cxColonia: TcxDBTextEdit
                Left = 728
                Top = 10
                DataBinding.DataField = 'Colonia'
                DataBinding.DataSource = dsProveedores
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
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 249
              end
              object cxCodigoPostal: TcxDBLookupComboBox
                Left = 831
                Top = 38
                DataBinding.DataField = 'IdCodigoPostal'
                DataBinding.DataSource = dsProveedores
                ParentFont = False
                Properties.KeyFieldNames = 'IdCodigoPostal'
                Properties.ListColumns = <
                  item
                    FieldName = 'CodigoPostal'
                  end>
                Properties.ListSource = ds_codigo_postal
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 7
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 116
              end
              object cxButton2: TcxButton
                Left = 450
                Top = 38
                Width = 25
                Height = 23
                OptionsImage.ImageIndex = 0
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 5
                OnClick = cxButton2Click
              end
              object cxButton1: TcxButton
                Left = 953
                Top = 38
                Width = 25
                Height = 23
                OptionsImage.ImageIndex = 0
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 8
                OnClick = cxButton1Click
              end
              object cxEstado: TcxDBLookupComboBox
                Left = 527
                Top = 38
                DataBinding.DataField = 'IdEstado'
                DataBinding.DataSource = dsProveedores
                ParentFont = False
                Properties.KeyFieldNames = 'IdEstado'
                Properties.ListColumns = <
                  item
                    FieldName = 'Estado'
                  end>
                Properties.ListSource = dsEstado
                Style.HotTrack = False
                TabOrder = 6
                Width = 220
              end
              object dxLayoutControl4Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahLeft
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem12: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Calle:'
                Control = cxCalle
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem13: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'N'#250'mero Interior:'
                Control = cxInterior
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem14: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'N'#250'mero Exterior:'
                Control = cxExterior
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl4Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem18: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Ciudad:'
                Control = cxCiudad
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem15: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'Colonia:'
                Control = cxColonia
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl4Group_Root
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem7: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                CaptionOptions.Text = 'Codigo Postal'
                Control = cxCodigoPostal
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem28: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignVert = avClient
                CaptionOptions.Text = 'cxButton2'
                CaptionOptions.Visible = False
                Control = cxButton2
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem27: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignVert = avTop
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = cxButton1
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutItem30: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup4
                AlignVert = avClient
                CaptionOptions.Text = 'Estado:'
                Control = cxEstado
                ControlOptions.ShowBorder = False
                Index = 2
              end
            end
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            ButtonOptions.Buttons = <>
            Hidden = True
            ItemControlAreaAlignment = catOwn
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxDGenerales
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGDireccion
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
        object pnlBtn2: TPanel
          Left = 1
          Top = 270
          Width = 409
          Height = 42
          Align = alBottom
          TabOrder = 1
          inline frmBarraH21: TfrmBarraH2
            Left = 219
            Top = 1
            Width = 189
            Height = 40
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 219
            ExplicitTop = 1
            ExplicitWidth = 189
            ExplicitHeight = 40
            inherited Panel1: TPanel
              Width = 189
              Height = 40
              ExplicitWidth = 189
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
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 142
        Width = 411
        Height = 6
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_proveedores: TcxGrid
        Left = 1
        Top = 1
        Width = 411
        Height = 141
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_Proveedor: TcxGridDBTableView
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
          OnCellClick = cxView_ProveedorCellClick
          OnCellDblClick = cxView_ProveedorCellDblClick
          DataController.DataSource = dsProveedores
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxView_ProveedorColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Width = 24
          end
          object cxView_ProveedorColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 43
          end
          object cxView_ProveedorColumn2: TcxGridDBColumn
            Caption = 'Raz'#243'n Social'
            DataBinding.FieldName = 'RazonSocial'
            Width = 46
          end
          object cxView_ProveedorColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'RFC'
            Width = 23
          end
          object cxView_ProveedorColumn8: TcxGridDBColumn
            Caption = 'Uso de CFDI'
            DataBinding.FieldName = 'Giro'
            Width = 55
          end
          object cxView_ProveedorColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Ciudad'
            Width = 39
          end
          object cxView_ProveedorColumn6: TcxGridDBColumn
            Caption = 'C.P.'
            DataBinding.FieldName = 'CodigoPostal'
            Width = 20
          end
          object cxView_ProveedorColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'Estado'
            Width = 45
          end
          object cxView_ProveedorColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Contacto'
            Width = 44
          end
          object cxView_ProveedorColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
            Width = 33
          end
          object cxView_ProveedorColumn11: TcxGridDBColumn
            DataBinding.FieldName = 'Correo'
            Width = 25
          end
          object cxView_ProveedorDC: TcxGridDBColumn
            Caption = 'D'#237'as Cr'#233'dito'
            Width = 30
          end
        end
        object grid_proveedoresLevel1: TcxGridLevel
          GridView = cxView_Proveedor
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 572
      Top = 1
      Width = 6
      Height = 462
      AlignSplitter = salRight
    end
    object PanelDetalle: TPanel
      Left = 578
      Top = 1
      Width = 482
      Height = 462
      Align = alRight
      TabOrder = 4
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 480
        Height = 460
        Align = alClient
        TabOrder = 0
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 478
          Height = 35
          Align = alTop
          TabOrder = 0
          DesignSize = (
            478
            35)
          object cxNuevoDetalle: TcxButton
            Left = 237
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
            Left = 317
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
          object cxEliminar: TcxButton
            Left = 396
            Top = 3
            Width = 81
            Height = 26
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
            OnClick = cxEliminarClick
          end
        end
        object PanelDown: TPanel
          Left = 1
          Top = 418
          Width = 478
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            478
            41)
          object cxCancelarDetalle: TcxButton
            Left = 385
            Top = 6
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
            Left = 292
            Top = 6
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
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 36
          Width = 478
          Height = 382
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Properties.ActivePage = cxPageContacto
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          OnChange = cxPageDetalleChange
          ClientRectBottom = 380
          ClientRectLeft = 2
          ClientRectRight = 476
          ClientRectTop = 30
          object cxPageProductos: TcxTabSheet
            Caption = 'Producto/Servicio'
            ImageIndex = 28
            object PanelDown2: TPanel
              Left = 0
              Top = 233
              Width = 474
              Height = 117
              Align = alBottom
              TabOrder = 0
              Visible = False
              object dxLayoutControl6: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 472
                Height = 115
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxProducto: TcxDBLookupComboBox
                  Left = 119
                  Top = 12
                  DataBinding.DataField = 'IdProducto'
                  DataBinding.DataSource = ds_productos
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdProducto'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Nombre'
                    end>
                  Properties.ListSource = ds_producto_servicio
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
                  Width = 145
                end
                object dxPuestoActivo: TdxDBToggleSwitch
                  Left = 345
                  Top = 42
                  Caption = 'Activo'
                  DataBinding.DataField = 'Activo'
                  DataBinding.DataSource = ds_productos
                  ParentFont = False
                  Properties.StateIndicator.Kind = sikText
                  Properties.StateIndicator.OffText = 'No'
                  Properties.StateIndicator.OnText = 'Si'
                  Properties.StateIndicator.Position = sipInside
                  Properties.ValueChecked = 'Si'
                  Properties.ValueUnchecked = 'no'
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  OnKeyUp = GlobalKeyUp
                end
                object btnProducto: TcxButton
                  Left = 435
                  Top = 12
                  Width = 25
                  Height = 23
                  OptionsImage.ImageIndex = 0
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 1
                  OnClick = btnProductoClick
                end
                object dxLayoutGroup1: TdxLayoutGroup
                  AlignHorz = ahParentManaged
                  AlignVert = avParentManaged
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem39: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup23
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Producto/Servicio'
                  Control = cxProducto
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem44: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  AlignHorz = ahRight
                  AlignVert = avTop
                  CaptionOptions.Text = 'dxDBToggleSwitch2'
                  CaptionOptions.Visible = False
                  Control = dxPuestoActivo
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup1
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutItem45: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup23
                  AlignVert = avClient
                  CaptionOptions.Visible = False
                  Control = btnProducto
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
              end
            end
            object cxSplit2: TcxSplitter
              Left = 0
              Top = 227
              Width = 474
              Height = 6
              AlignSplitter = salBottom
              Visible = False
            end
            object cxGridCargos: TcxGrid
              Left = 0
              Top = 0
              Width = 474
              Height = 227
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object cxGridViewProductos: TcxGridDBTableView
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
                DataController.DataSource = ds_productos
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
                    Column = cxGridDBColumn5
                    DisplayText = 'Total Folio'
                  end
                  item
                    Format = 'MN   $ #,00.00'
                    Kind = skSum
                    FieldName = 'dMontoMN'
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object cxGridDBColumn5: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  Options.Editing = False
                  Width = 69
                end
                object cxGridDBColumn7: TcxGridDBColumn
                  Caption = 'Producto/Servicio'
                  DataBinding.FieldName = 'Nombre'
                  Options.Editing = False
                  Width = 312
                end
                object cxGridViewProductosColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Activo'
                  Width = 79
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxGridViewProductos
              end
            end
          end
          object cxPageContacto: TcxTabSheet
            Caption = 'Contacto'
            ImageIndex = 54
            object cxGridContacto: TcxGrid
              Left = 0
              Top = 0
              Width = 474
              Height = 193
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxViewContacto: TcxGridDBTableView
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
                DataController.DataSource = ds_contacto
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
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object cxGridDBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Contacto'
                  Options.Editing = False
                  Width = 174
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  Caption = 'Tel'#233'fono'
                  DataBinding.FieldName = 'Telefono'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 76
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  DataBinding.FieldName = 'Correo'
                  Options.Editing = False
                  Width = 159
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  Caption = 'Registro'
                  DataBinding.FieldName = 'FechaRegistro'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 69
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxViewContacto
              end
            end
            object cxSplit1: TcxSplitter
              Left = 0
              Top = 193
              Width = 474
              Height = 6
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelDown1: TPanel
              Left = 0
              Top = 199
              Width = 474
              Height = 151
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl5: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 466
                Height = 143
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxContacto: TcxDBTextEdit
                  Left = 69
                  Top = 12
                  DataBinding.DataField = 'Contacto'
                  DataBinding.DataSource = ds_contacto
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
                  Width = 219
                end
                object cxPuesto: TcxDBTextEdit
                  Left = 69
                  Top = 41
                  DataBinding.DataField = 'Puesto'
                  DataBinding.DataSource = ds_contacto
                  ParentFont = False
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
                  Width = 196
                end
                object cxCorreo: TcxDBTextEdit
                  Left = 69
                  Top = 70
                  DataBinding.DataField = 'Correo'
                  DataBinding.DataSource = ds_contacto
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
                  Width = 212
                end
                object cxTelefono: TcxDBTextEdit
                  Left = 341
                  Top = 41
                  DataBinding.DataField = 'Telefono'
                  DataBinding.DataSource = ds_contacto
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
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 113
                end
                object cxActivoContacto: TdxDBToggleSwitch
                  Left = 339
                  Top = 12
                  TabStop = False
                  Caption = 'Activo'
                  DataBinding.DataField = 'Activo'
                  DataBinding.DataSource = ds_contacto
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
                  TabOrder = 1
                  OnKeyUp = GlobalKeyUp
                end
                object cxRegistro: TcxDBDateEdit
                  Left = 341
                  Top = 70
                  DataBinding.DataField = 'FechaRegistro'
                  DataBinding.DataSource = ds_contacto
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 5
                  OnKeyUp = GlobalKeyUp
                  Width = 113
                end
                object dxLayoutControl5Group_Root: TdxLayoutGroup
                  AlignHorz = ahParentManaged
                  AlignVert = avParentManaged
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem8: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Contacto'
                  Control = cxContacto
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem9: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup7
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Puesto'
                  Control = cxPuesto
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem10: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup8
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Correo'
                  Control = cxCorreo
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem16: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup7
                  AlignVert = avClient
                  CaptionOptions.Text = 'Telefono'
                  Control = cxTelefono
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl5Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 1
                  AutoCreated = True
                end
                object dxLayoutItem38: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup5
                  AlignHorz = ahLeft
                  AlignVert = avClient
                  CaptionOptions.Text = 'dxDBToggleSwitch2'
                  CaptionOptions.Visible = False
                  Control = cxActivoContacto
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl5Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutItem36: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup8
                  AlignHorz = ahLeft
                  AlignVert = avClient
                  CaptionOptions.Text = 'Registro'
                  Control = cxRegistro
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl5Group_Root
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 2
                  AutoCreated = True
                end
              end
            end
          end
          object cxPageEvaluacion: TcxTabSheet
            Caption = 'Calificaci'#243'n'
            ImageIndex = 49
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 474
              Height = 350
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
                DataController.DataSource = dsCalificacion
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
                    Column = cxGridDBColumn13
                    DisplayText = 'Total Folio'
                  end
                  item
                    Format = 'MN   $ #,00.00'
                    Kind = skSum
                    FieldName = 'dMontoMN'
                    Column = cxGridDBColumn16
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object cxGridDBColumn13: TcxGridDBColumn
                  Caption = 'Fecha Evaluaci'#243'n'
                  DataBinding.FieldName = 'FechaEvalua'
                  Options.Editing = False
                  Width = 112
                end
                object cxGridDBColumn14: TcxGridDBColumn
                  DataBinding.FieldName = 'Departamento'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 141
                end
                object cxGridDBColumn15: TcxGridDBColumn
                  Caption = 'Calificaci'#243'n'
                  DataBinding.FieldName = 'Calificacion'
                  Options.Editing = False
                  Width = 104
                end
                object cxGridDBColumn16: TcxGridDBColumn
                  Caption = 'Imagen'
                  DataBinding.FieldName = 'img'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = imgStars
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
                    end
                    item
                      ImageIndex = 4
                      Value = 4
                    end
                    item
                      ImageIndex = 5
                      Value = 5
                    end>
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 115
                end
              end
              object cxGridLevel5: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
          end
          object cxPageDocumentos: TcxTabSheet
            Caption = 'Documentos'
            ImageIndex = 26
            object PanelDown4: TPanel
              Left = 0
              Top = 209
              Width = 474
              Height = 141
              Align = alBottom
              TabOrder = 0
              Visible = False
              object dxLayoutControl3: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 466
                Height = 133
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxActivoDocumento: TdxDBToggleSwitch
                  Left = 339
                  Top = 42
                  Caption = 'Activo'
                  DataBinding.DataField = 'Activo'
                  DataBinding.DataSource = dsDoctoVP
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
                  TabOrder = 3
                  OnKeyUp = GlobalKeyUp
                end
                object cxFechaDocto: TcxDBDateEdit
                  Left = 83
                  Top = 42
                  DataBinding.DataField = 'FechaRegistro'
                  DataBinding.DataSource = dsDoctoVP
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  OnKeyUp = GlobalKeyUp
                  Width = 121
                end
                object cxDocumento: TcxDBLookupComboBox
                  Left = 83
                  Top = 12
                  DataBinding.DataField = 'IdDocumento'
                  DataBinding.DataSource = dsDoctoVP
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdDocumento'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Documento'
                    end>
                  Properties.ListSource = ds_catalog_docto
                  Properties.OnValidate = cxDocumentoPropertiesValidate
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
                  Width = 145
                end
                object cxCargarDocumento: TcxButton
                  Left = 320
                  Top = 70
                  Width = 134
                  Height = 25
                  Caption = 'Cargar PDF'
                  OptionsImage.ImageIndex = 26
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 4
                  OnClick = cxCargarDocumentoClick
                end
                object btnAgregarDocumento: TcxButton
                  Left = 429
                  Top = 12
                  Width = 25
                  Height = 23
                  OptionsImage.ImageIndex = 0
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 1
                  OnClick = btnAgregarDocumentoClick
                end
                object dxLayoutGroup2: TdxLayoutGroup
                  AlignHorz = ahParentManaged
                  AlignVert = avParentManaged
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem23: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup10
                  AlignHorz = ahRight
                  AlignVert = avTop
                  CaptionOptions.Text = 'dxDBToggleSwitch2'
                  CaptionOptions.Visible = False
                  Control = cxActivoDocumento
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem17: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup10
                  AlignHorz = ahLeft
                  AlignVert = avClient
                  CaptionOptions.Text = 'Fecha'
                  Control = cxFechaDocto
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup2
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 1
                  AutoCreated = True
                end
                object dxLayoutItem19: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup13
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Documento'
                  Control = cxDocumento
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem20: TdxLayoutItem
                  Parent = dxLayoutGroup2
                  AlignHorz = ahRight
                  CaptionOptions.Text = 'cxButton2'
                  CaptionOptions.Visible = False
                  Control = cxCargarDocumento
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup2
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutItem29: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup13
                  AlignVert = avClient
                  CaptionOptions.Text = 'cxButton3'
                  CaptionOptions.Visible = False
                  Control = btnAgregarDocumento
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
              end
            end
            object cxSplit4: TcxSplitter
              Left = 0
              Top = 203
              Width = 474
              Height = 6
              AlignSplitter = salBottom
              Visible = False
            end
            object cxGridDocumentos: TcxGrid
              Left = 0
              Top = 0
              Width = 474
              Height = 203
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object cxViewDocumento: TcxGridDBTableView
                PopupMenu = PopupMenu1
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
                OnCellDblClick = cxViewDocumentoCellDblClick
                DataController.DataSource = ds_documentos
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
                    Column = cxGridDBColumn6
                    DisplayText = 'Total Folio'
                  end
                  item
                    Format = 'MN   $ #,00.00'
                    Kind = skSum
                    FieldName = 'dMontoMN'
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object cxGridDBColumn6: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  Options.Editing = False
                  Width = 50
                end
                object cxGridDBColumn8: TcxGridDBColumn
                  DataBinding.FieldName = 'Documento'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 337
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  Caption = 'Electr'#243'nico'
                  DataBinding.FieldName = 'DocumentoDigital'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.DefaultImageIndex = 9
                  Properties.Images = connection.cxIconos16
                  Properties.Items = <>
                  Options.Editing = False
                  Width = 73
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxViewDocumento
              end
            end
          end
          object cxPageBancos: TcxTabSheet
            Caption = 'Cuentas Banco'
            ImageIndex = 28
            object PanelDown5: TPanel
              Left = 0
              Top = 209
              Width = 474
              Height = 141
              Align = alBottom
              TabOrder = 0
              Visible = False
              object dxLayoutControl7: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 466
                Height = 133
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxBanco: TcxDBLookupComboBox
                  Left = 69
                  Top = 70
                  DataBinding.DataField = 'IdBanco'
                  DataBinding.DataSource = ds_cuenta_bancos
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdBanco'
                  Properties.ListColumns = <
                    item
                      FieldName = 'RazonSocial'
                    end>
                  Properties.ListSource = ds_bancos
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 263
                end
                object cxCLABE: TcxDBTextEdit
                  Left = 69
                  Top = 41
                  DataBinding.DataField = 'CLABE'
                  DataBinding.DataSource = ds_cuenta_bancos
                  ParentFont = False
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
                  Width = 375
                end
                object cxActivoBanco: TdxDBToggleSwitch
                  Left = 339
                  Top = 70
                  Caption = 'Activo'
                  DataBinding.DataField = 'Activo'
                  DataBinding.DataSource = ds_cuenta_bancos
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
                  TabOrder = 4
                  OnKeyUp = GlobalKeyUp
                end
                object cxSucursal: TcxDBTextEdit
                  Left = 69
                  Top = 12
                  DataBinding.DataField = 'Sucursal'
                  DataBinding.DataSource = ds_cuenta_bancos
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
                  Width = 120
                end
                object cxCuenta: TcxDBTextEdit
                  Left = 242
                  Top = 12
                  DataBinding.DataField = 'Cuenta'
                  DataBinding.DataSource = ds_cuenta_bancos
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
                  Width = 199
                end
                object idMoneda: TcxDBLookupComboBox
                  Left = 69
                  Top = 99
                  DataBinding.DataField = 'IdMoneda'
                  DataBinding.DataSource = ds_cuenta_bancos
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdMoneda'
                  Properties.ListColumns = <
                    item
                      FieldName = 'FK_Moneda'
                    end>
                  Properties.ListSource = ds_moneda
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
                  Width = 299
                end
                object cxButton3: TcxButton
                  Left = 429
                  Top = 99
                  Width = 25
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
                  OptionsImage.ImageIndex = 0
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 6
                end
                object dxLayoutGroup3: TdxLayoutGroup
                  AlignHorz = ahParentManaged
                  AlignVert = avParentManaged
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem26: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup12
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Banco'
                  Control = cxBanco
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem25: TdxLayoutItem
                  Parent = dxLayoutGroup3
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'CLABE'
                  Control = cxCLABE
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem22: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup12
                  AlignHorz = ahLeft
                  AlignVert = avClient
                  CaptionOptions.Text = 'dxDBToggleSwitch2'
                  CaptionOptions.Visible = False
                  Control = cxActivoBanco
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup3
                  LayoutDirection = ldHorizontal
                  Index = 2
                  AutoCreated = True
                end
                object dxLayoutItem24: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup11
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  CaptionOptions.Text = 'Sucursal'
                  Control = cxSucursal
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem21: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup11
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Cuenta'
                  Control = cxCuenta
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup3
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutItem31: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup14
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.Text = 'Moneda: '
                  Control = idMoneda
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem32: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup14
                  AlignVert = avClient
                  CaptionOptions.Visible = False
                  Control = cxButton3
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup3
                  AlignVert = avClient
                  LayoutDirection = ldHorizontal
                  Index = 3
                  AutoCreated = True
                end
              end
            end
            object cxSplit5: TcxSplitter
              Left = 0
              Top = 203
              Width = 474
              Height = 6
              AlignSplitter = salBottom
              Visible = False
            end
            object cxGridBancos: TcxGrid
              Left = 0
              Top = 0
              Width = 474
              Height = 203
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object cxViewBancos: TcxGridDBTableView
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
                OnCellDblClick = cxViewDocumentoCellDblClick
                DataController.DataSource = ds_cuenta_bancos
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
                    Column = cxGridDBColumn10
                    DisplayText = 'Total Folio'
                  end
                  item
                    Format = 'MN   $ #,00.00'
                    Kind = skSum
                    FieldName = 'dMontoMN'
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Indicator = True
                object cxGridDBColumn12: TcxGridDBColumn
                  DataBinding.FieldName = 'Sucursal'
                  Options.Editing = False
                  Width = 48
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  DataBinding.FieldName = 'Cuenta'
                  Options.Editing = False
                  Width = 74
                end
                object cxGridDBColumn11: TcxGridDBColumn
                  DataBinding.FieldName = 'CLABE'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 131
                end
                object cxViewBancosColumn1: TcxGridDBColumn
                  Caption = 'Banco'
                  DataBinding.FieldName = 'IdBanco'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'IdBanco'
                  Properties.ListColumns = <
                    item
                      FieldName = 'RazonSocial'
                    end>
                  Properties.ListSource = ds_bancos
                  Properties.ReadOnly = True
                  Width = 146
                end
                object cxViewBancosColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Moneda'
                  Width = 61
                end
              end
              object cxGridLevel4: TcxGridLevel
                GridView = cxViewBancos
              end
            end
          end
        end
      end
    end
  end
  object dsProveedores: TDataSource
    AutoEdit = False
    DataSet = Proveedores
    Left = 32
    Top = 216
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 513
    Top = 104
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
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
      OnClick = Refresh1Click
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
      OnClick = Salir1Click
    end
  end
  object ds_ciudades: TDataSource
    AutoEdit = False
    DataSet = zqCiudades
    Left = 32
    Top = 256
  end
  object Proveedores: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    AfterScroll = ProveedoresAfterScroll
    Left = 86
    Top = 219
  end
  object zqCiudades: TUniQuery
    Connection = connection.Uconnection
    Left = 94
    Top = 257
  end
  object ds_producto_servicio: TDataSource
    AutoEdit = False
    DataSet = producto_servicio
    Left = 464
    Top = 176
  end
  object producto_servicio: TUniQuery
    Connection = connection.Uconnection
    Left = 382
    Top = 175
  end
  object ds_catalogo: TDataSource
    AutoEdit = False
    DataSet = catalogo
    Left = 32
    Top = 120
  end
  object catalogo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    FilterOptions = [foCaseInsensitive]
    Left = 86
    Top = 123
  end
  object ds_contacto: TDataSource
    AutoEdit = False
    DataSet = contacto
    Left = 200
    Top = 168
  end
  object contacto: TUniQuery
    Connection = connection.Uconnection
    Left = 257
    Top = 168
  end
  object ds_productos: TDataSource
    AutoEdit = False
    DataSet = productos
    Left = 256
    Top = 224
  end
  object productos: TUniQuery
    Connection = connection.Uconnection
    Left = 198
    Top = 219
  end
  object frxReport1: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43084.696946331000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Begin'
      ''
      'End.')
    OnReportPrint = 'no '
    Left = 491
    Top = 255
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmReportePeriodo.dsConfiguracion
        DataSetName = 'dsConfiguracion'
      end
      item
        DataSet = frmDiarioTurno2.dsEmpleados
        DataSetName = 'dsEmpleados'
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
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 61.231278080000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Condition = 'dsConfiguracion."IdEmpresa"'
        object Memo12: TfrxMemoView
          Left = 146.748747310000000000
          Top = 38.020042940000010000
          Width = 365.968503940000000000
          Height = 20.880458130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA INTEGRADO DE GESTI'#211'N')
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
        object Picture2: TfrxPictureView
          Left = 5.415893640000000000
          Top = 3.727272729999999000
          Width = 141.181102360000000000
          Height = 55.110971570000000000
          DataField = 'logotipo'
          DataSet = frmReportePeriodo.dsConfiguracion
          DataSetName = 'dsConfiguracion'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo45: TfrxMemoView
          Left = 146.595561920000000000
          Top = 4.157411969999998000
          Width = 365.912897020000000000
          Height = 35.211183870000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'REGISTRO DE NO CONFORMIDAD Y ACCIONES INMEDIATAS')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 512.727272730000000000
          Top = 3.829622730000001000
          Width = 49.090909110000000000
          Height = 20.389405870000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Clave:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 512.727272730000000000
          Top = 23.829622730000000000
          Width = 49.090909090000000000
          Height = 17.662133140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Emision:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 512.727272720000000000
          Top = 41.102349990000000000
          Width = 49.090909100000000000
          Height = 18.571224050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 561.818181820000000000
          Top = 3.829622730000001000
          Width = 76.363636390000000000
          Height = 20.389405870000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FOR-DIG-11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 638.181818190000000000
          Top = 3.829622730000001000
          Width = 49.090909110000000000
          Height = 20.389405870000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Rev.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 687.272727270000000000
          Top = 3.829622730000001000
          Width = 49.090909110000000000
          Height = 20.389405870000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 561.818181820000000000
          Top = 23.829622730000000000
          Width = 174.545454560000000000
          Height = 17.662133140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Septiembre de 2017')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 561.818181820000000000
          Top = 41.102350000000000000
          Width = 174.545454560000000000
          Height = 18.571224050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina 1 de 1')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 190.093058990000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        Condition = 'dsConfiguracion."IdEmpresa"'
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 738.776129090000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '1. Detectada por medio de:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 628.181818190000000000
          Top = 19.885280909999980000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cumplimiento legal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 539.090909090000000000
          Top = 19.885280909999980000
          Width = 73.636363640000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emergencias')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 460.909090900000000000
          Top = 19.885280909999980000
          Width = 60.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Incidentes')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 340.000000000000000000
          Top = 19.885280909999980000
          Width = 106.363636370000000000
          Height = 33.116678600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quejas del'
            'Cliente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 245.454545460000000000
          Top = 19.885280909999980000
          Width = 72.727272730000000000
          Height = 33.116678600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Operacion/'
            'A. datos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 170.909090910000000000
          Top = 19.885280909999980000
          Width = 50.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Rev. Dir.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 23.636363640000000000
          Top = 19.885280909999980000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Auditor'#237'a')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape11: TfrxShapeView
          Left = 270.909090910000000000
          Top = 49.885280909999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape12: TfrxShapeView
          Left = 186.363636360000000000
          Top = 49.885280909999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape13: TfrxShapeView
          Left = 384.545454550000000000
          Top = 49.885280909999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape14: TfrxShapeView
          Left = 480.000000000000000000
          Top = 49.885280909999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape15: TfrxShapeView
          Left = 562.727272730000000000
          Top = 49.885280909999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape16: TfrxShapeView
          Left = 670.909090910000000000
          Top = 49.885280909999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo42: TfrxMemoView
          Left = 1.818181820000000000
          Top = 48.976190000000000000
          Width = 45.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Int.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape17: TfrxShapeView
          Left = 47.272727270000000000
          Top = 49.885280909999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo43: TfrxMemoView
          Left = 70.909090910000000000
          Top = 48.976190000000000000
          Width = 45.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ext.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape18: TfrxShapeView
          Left = 117.272727270000000000
          Top = 49.885280909999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo44: TfrxMemoView
          Left = 133.636363640000000000
          Top = 70.794371820000010000
          Width = 600.909090910000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            
              '(Para NC: Naturaleza, de lo que se trata; evidencia del incumpli' +
              'miento; requisito que no se cumple.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 1.818181820000000000
          Top = 70.794371820000010000
          Width = 732.727272730000000000
          Height = 15.843951330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 133.636363640000000000
          Top = 97.158008190000000000
          Width = 600.909090910000000000
          Height = 90.389405870000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 10.909090910000000000
          Top = 120.794371810000000000
          Width = 102.727272730000000000
          Height = 37.662133140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n de la No Conformidad:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 120.909076250000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        Condition = 'dsConfiguracion."idEmpresa"'
        Stretched = True
        object Memo19: TfrxMemoView
          Left = 5.454545450000000000
          Top = 3.314161810000002000
          Width = 49.090909100000000000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 55.454545450000000000
          Top = 3.314161810000002000
          Width = 114.545454550000000000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 190.909090900000000000
          Top = 3.314161810000002000
          Width = 65.454545460000000000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N.C. Real:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Left = 263.636363640000000000
          Top = 3.314161819999996000
          Width = 22.727272730000000000
          Height = 21.818181820000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo23: TfrxMemoView
          Left = 311.818181820000000000
          Top = 3.314161810000002000
          Width = 135.454545460000000000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N.C. Potencial (Riesgo)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 460.000000000000000000
          Top = 3.314161819999996000
          Width = 22.727272730000000000
          Height = 21.818181820000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo24: TfrxMemoView
          Left = 554.545454550000000000
          Top = 3.314161810000002000
          Width = 43.636363640000000000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Folio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 598.181818180000000000
          Top = 3.314161810000002000
          Width = 135.454545460000000000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 554.545454550000000000
          Top = 31.352813640000010000
          Width = 135.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Proteccion ambiental')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 554.545454550000000000
          Top = 53.249821049999990000
          Width = 135.454545460000000000
          Height = 22.299212600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Otra')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape3: TfrxShapeView
          Left = 700.909090910000000000
          Top = 31.352813640000010000
          Width = 18.181818180000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape4: TfrxShapeView
          Left = 700.000000000000000000
          Top = 54.989177270000010000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo28: TfrxMemoView
          Left = 355.454545460000000000
          Top = 31.352813640000010000
          Width = 135.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Producto o servicio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 354.545454550000000000
          Top = 53.170995450000010000
          Width = 135.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Seguridad y salud')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 153.636363640000000000
          Top = 31.352813640000010000
          Width = 135.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Proceso')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 153.636363640000000000
          Top = 53.170995450000010000
          Width = 135.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Partes interesadas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape5: TfrxShapeView
          Left = 291.818181820000000000
          Top = 31.352813640000010000
          Width = 19.090909090000000000
          Height = 19.090909090000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape6: TfrxShapeView
          Left = 291.818181820000000000
          Top = 54.989177270000010000
          Width = 18.181818180000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape7: TfrxShapeView
          Left = 495.454545450000000000
          Top = 31.352813640000010000
          Width = 18.181818180000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape8: TfrxShapeView
          Left = 494.545454540000000000
          Top = 54.989177270000010000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo32: TfrxMemoView
          Left = 5.454545450000000000
          Top = 31.352813640000010000
          Width = 46.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'SIG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 5.454545450000000000
          Top = 53.170995450000010000
          Width = 46.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape9: TfrxShapeView
          Left = 55.454545450000000000
          Top = 30.443722730000010000
          Width = 19.090909090000000000
          Height = 19.090909090000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape10: TfrxShapeView
          Left = 53.636363630000000000
          Top = 53.170995450000010000
          Width = 20.000000000000000000
          Height = 19.090909090000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo34: TfrxMemoView
          Left = 291.818181820000000000
          Top = 75.898268179999990000
          Width = 442.727272730000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 149.090909090000000000
          Top = 75.898268179999990000
          Width = 140.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #193'rea donde se detecta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 291.818181820000000000
          Top = 96.807359089999990000
          Width = 442.727272730000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 149.090909090000000000
          Top = 96.807359089999990000
          Width = 140.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nombre de quien detecta')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.977118180000000000
        Top = 941.102970000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Width = 741.567718180000000000
          Height = 43.249845460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 16774348
          Memo.UTF8W = (
            
              'Este documento es propiedad intelectual de Servicios SIANI, S.A.' +
              ' de C.V. Queda prohibida la reproducci'#243'n parcial o total de este' +
              ' sin consentimiento por escrito de la empresa.'
            
              'S'#243'lo el personal autorizado en el Sistema Integrado de Gesti'#243'n p' +
              'odr'#225' emitir copias controladas.')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Height = 68.274877170000000000
        Top = 457.323130000000000000
        Width = 740.409927000000000000
        Condition = 'dsConfiguracion."IdEmpresa"'
        Stretched = True
        object Memo7: TfrxMemoView
          Top = 0.722633640000026400
          Width = 740.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '2. Reacci'#243'n ante la No Conformidad y sus Consecuencias:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 588.181818190000000000
          Top = 22.540815450000030000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Reclasificacion:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape19: TfrxShapeView
          Left = 695.454545450000000000
          Top = 24.358997269999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo9: TfrxMemoView
          Top = 22.540815450000030000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Concesion:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape20: TfrxShapeView
          Left = 106.363636360000000000
          Top = 24.358997269999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo10: TfrxMemoView
          Left = 184.545454550000000000
          Top = 22.540815450000030000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Reproceso:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 375.454545460000000000
          Top = 22.540815450000030000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Reparacion:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape21: TfrxShapeView
          Left = 291.818181820000000000
          Top = 24.358997269999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape22: TfrxShapeView
          Left = 482.727272730000000000
          Top = 24.358997269999970000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo49: TfrxMemoView
          Top = 44.358997269999970000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Correcci'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 184.545454550000000000
          Top = 44.358997269999970000
          Width = 130.000000000000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Permiso de desviacion:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 375.454545450000000000
          Top = 44.358997269999970000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Concesion:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 588.181818180000000000
          Top = 44.358997269999970000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Concesion:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape23: TfrxShapeView
          Left = 107.272727270000000000
          Top = 47.086270000000010000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape24: TfrxShapeView
          Left = 314.545454550000000000
          Top = 47.086270000000010000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape25: TfrxShapeView
          Left = 482.727272730000000000
          Top = 47.086270000000010000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape26: TfrxShapeView
          Left = 695.454545450000000000
          Top = 47.086270000000010000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
      end
      object GroupHeader5: TfrxGroupHeader
        FillType = ftBrush
        Height = 159.494228600000000000
        Top = 548.031849999999900000
        Width = 740.409927000000000000
        Condition = 'dsConfiguracion."IdEmpresa"'
        Stretched = True
        object Memo53: TfrxMemoView
          Top = 0.722633640000026400
          Width = 740.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '3. Descripci'#243'n de las acciones inmediatas:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 605.454545460000000000
          Top = 21.631724540000050000
          Width = 134.545454550000000000
          Height = 18.571224050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Seguimiento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Top = 21.631724540000050000
          Width = 350.000000010000000000
          Height = 18.571224050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Accion / Actividad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 350.000000000000000000
          Top = 21.631724540000050000
          Width = 149.090909100000000000
          Height = 18.571224050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Responsable')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 499.090909100000000000
          Top = 21.631724540000050000
          Width = 106.363636370000000000
          Height = 18.571224050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Top = 40.013913630000040000
          Width = 350.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Top = 61.832095460000000000
          Width = 350.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Top = 83.650277279999950000
          Width = 350.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Top = 105.468459100000000000
          Width = 350.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Top = 135.468459100000000000
          Width = 302.727272740000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre y firma del Due'#241'o del proceso: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 302.727272730000000000
          Top = 135.468459100000000000
          Width = 437.272727280000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 350.000000000000000000
          Top = 40.013913630000040000
          Width = 149.090909100000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 350.000000000000000000
          Top = 61.832095460000000000
          Width = 149.090909100000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 350.000000000000000000
          Top = 83.650277279999950000
          Width = 149.090909100000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 350.000000000000000000
          Top = 105.468459100000000000
          Width = 149.090909100000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 499.090909090000000000
          Top = 40.013913630000040000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 499.090909090000000000
          Top = 61.832095460000000000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 499.090909090000000000
          Top = 83.650277279999950000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 499.090909090000000000
          Top = 105.468459100000000000
          Width = 106.363636370000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 605.454545450000000000
          Top = 40.013913630000040000
          Width = 134.545454550000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 605.454545450000000000
          Top = 61.832095460000000000
          Width = 134.545454550000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 605.454545450000000000
          Top = 83.650277279999950000
          Width = 134.545454550000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 605.454545450000000000
          Top = 105.468459100000000000
          Width = 134.545454550000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader6: TfrxGroupHeader
        FillType = ftBrush
        Height = 151.376726780000000000
        Top = 729.449290000000000000
        Width = 740.409927000000000000
        Condition = 'dsConfiguracion."IdEmpresa"'
        Stretched = True
        object Memo76: TfrxMemoView
          Top = 0.722633640000026400
          Width = 740.000000010000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            
              '4. Evaluaci'#243'n de la Acci'#243'n tomada para Eliminar la No Conformida' +
              'd:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Top = 21.896411820000030000
          Width = 244.545454560000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Se elimin'#243' la No Conformidad:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 584.545454550000000000
          Top = 21.896411820000030000
          Width = 155.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 453.636363630000000000
          Top = 21.896411820000030000
          Width = 130.909090920000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 244.545454550000000000
          Top = 21.896411820000030000
          Width = 59.090909100000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Si')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape27: TfrxShapeView
          Left = 316.363636370000000000
          Top = 22.805502729999940000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo81: TfrxMemoView
          Left = 349.090909090000000000
          Top = 21.896411820000030000
          Width = 59.090909100000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape28: TfrxShapeView
          Left = 419.090909090000000000
          Top = 22.805502729999940000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Memo82: TfrxMemoView
          Left = 303.636363640000000000
          Top = 21.896411820000030000
          Width = 45.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 408.181818180000000000
          Top = 21.896411820000030000
          Width = 45.454545460000000000
          Height = 22.207587690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Top = 44.623684550000010000
          Width = 244.545454550000000000
          Height = 33.116678600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Responsable del proceso / '
            'Representante del SIG / Auditor:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 244.545454550000000000
          Top = 44.623684550000010000
          Width = 495.454545460000000000
          Height = 33.116678600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 0.909090910000000000
          Top = 77.823437270000000000
          Width = 462.727272730000000000
          Height = 37.662133150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              #191'La no conformidad necesita de acciones correctivas y de mejora ' +
              'para '
            'eliminar sus causas reales?.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Top = 115.096164550000000000
          Width = 463.636363640000000000
          Height = 33.116678600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              'Nota: En caso de ser necesaria una acci'#243'n correctiva, se debe ha' +
              'cer uso del'
            'FOR-SIG-32')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 463.636363640000000000
          Top = 115.096164550000000000
          Width = 276.363636370000000000
          Height = 33.116678600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referencia '
            'de la acci'#243'n:'#9)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 463.636363640000000000
          Top = 77.823437270000000000
          Width = 59.090909100000000000
          Height = 37.662133140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Si')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 605.454545450000000000
          Top = 77.823437270000000000
          Width = 59.090909100000000000
          Height = 37.662133140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 522.727272730000000000
          Top = 77.823437270000000000
          Width = 82.727272730000000000
          Height = 37.662133140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 664.545454540000000000
          Top = 77.823437270000000000
          Width = 75.454545460000000000
          Height = 37.662133140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape29: TfrxShapeView
          Left = 551.818181820000000000
          Top = 87.823437270000000000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
        object Shape30: TfrxShapeView
          Left = 693.636363640000000000
          Top = 87.823437270000000000
          Width = 19.090909090000000000
          Height = 18.181818180000000000
          Frame.Width = 1.500000000000000000
          Shape = skEllipse
        end
      end
    end
  end
  object ds_filtro: TDataSource
    AutoEdit = False
    DataSet = filtro
    Left = 32
    Top = 168
  end
  object filtro: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 86
    Top = 171
  end
  object ds_giro: TDataSource
    AutoEdit = False
    DataSet = giro
    Left = 32
    Top = 360
  end
  object giro: TUniQuery
    Connection = connection.Uconnection
    Left = 94
    Top = 361
  end
  object ds_codigo_postal: TDataSource
    AutoEdit = False
    DataSet = Codigo_postal
    Left = 32
    Top = 312
  end
  object Codigo_postal: TUniQuery
    Connection = connection.Uconnection
    Left = 94
    Top = 313
  end
  object documentos: TUniQuery
    Connection = connection.Uconnection
    Left = 190
    Top = 315
  end
  object ds_documentos: TDataSource
    AutoEdit = False
    DataSet = documentos
    Left = 248
    Top = 320
  end
  object ds_catalog_docto: TDataSource
    AutoEdit = False
    DataSet = catalog_docto
    Left = 32
    Top = 392
  end
  object catalog_docto: TUniQuery
    Connection = connection.Uconnection
    Left = 94
    Top = 409
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 670
    Top = 231
  end
  object dlgSavePDF: TSaveDialog
    DefaultExt = 'pdf'
    Left = 616
    Top = 232
  end
  object bancos: TUniQuery
    Connection = connection.Uconnection
    Left = 366
    Top = 299
  end
  object ds_bancos: TDataSource
    AutoEdit = False
    DataSet = bancos
    Left = 424
    Top = 304
  end
  object cuenta_banco: TUniQuery
    Connection = connection.Uconnection
    Left = 366
    Top = 347
  end
  object ds_cuenta_bancos: TDataSource
    AutoEdit = False
    DataSet = cuenta_banco
    Left = 424
    Top = 352
  end
  object PopupMenu1: TPopupMenu
    Images = connection.cxIconos16
    Left = 774
    Top = 239
    object VistaPrevia1: TMenuItem
      Caption = 'Vista Previa'
      ImageIndex = 9
      OnClick = VistaPrevia1Click
    end
  end
  object imgStars: TcxImageList
    Height = 24
    Width = 110
    FormatVersion = 1
    DesignInfo = 13894615
    ImageInfo = <
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010101043B3B3B882020
          204F010101060000000000000000020B10190416213300000103000000000000
          0000000000031A1A1A433333337B010101030000000000000000000000000000
          0000000000000000000001010104393939892020204E01010106000000000000
          00000E0E0E191B1B1B33000000030000000000000000000000031A1A1A433333
          337C020202040000000000000000000000000000000000000000000000000101
          0104393939892020204E0101010600000000000000000E0E0E191B1B1B330000
          00020000000000000000000000031A1A1A433333337C02020204000000000000
          00000000000000000000000000000000000001010104393939892020204F0101
          010600000000000000000E0E0E191B1B1B330000000200000000000000000000
          00031A1A1A433333337B01010103000000000000000000000000000000000000
          000000000000010101033B3B3B892020204F0101010600000000000000000E0E
          0E191B1B1B33000000030000000000000000000000031A1A1A423333337C0202
          0204000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002575757B59C9C9CF65A5A5AB11718
          183C000000040000000000000000000000000000000416161637545454A99595
          95F1515151AC0000000200000000000000000000000000000000000000000000
          000000000002565656B69C9C9CF65A5A5AB11717173C00000004000000000000
          0000000000000000000416161637545454A9959595F1515151AC000000020000
          0000000000000000000000000000000000000000000000000002565656B69B9C
          9BF65A5A5AB11818183C00000004000000000000000000000000000000041616
          1637545454A9959595F1515151AC000000020000000000000000000000000000
          0000000000000000000000000002565656B69C9C9CF65A5A5AB11818183C0000
          00040000000000000000000000000000000416161637545454A9959595F15151
          51AC000000020000000000000000000000000000000000000000000000000000
          0002575757B59C9C9CF65A5A5AB11717173C0000000400000000000000000000
          00000000000416161637545454A9959595F1505151AC00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003B3B3B7DB9BABAFFB9BABAFF9A9B9BF9555555A51717
          1738030303141A1A1A3C565656A69A9A9AF8B8B8B8FFB6B6B6FF3232326F0000
          0000000000000000000000000000000000000000000000000000000000003A3A
          3A7DB9B9B9FFB9B9B9FF9B9B9BF9555555A517171738030303141A1A1A3C5656
          56A6999999F9B8B8B8FFB6B6B6FF3232326E0000000000000000000000000000
          0000000000000000000000000000000000003A3A3A7DB9B9B9FFBABABAFF9B9B
          9BF9555555A517171738030303141A1A1A3C555556A69A9A9AF8B8B8B8FFB6B7
          B6FF3232326E0000000000000000000000000000000000000000000000000000
          0000000000003B3B3B7DBABABAFFBABABAFF9B9B9BF9555555A5171717380303
          03141A1A1A3C555556A69A9A9AF8B8B8B8FFB6B6B6FF3232326E000000000000
          00000000000000000000000000000000000000000000000000003B3A3B7DB9B9
          B9FFB9B9B9FF9B9B9BF9555555A517171738030303141A1A1A3C565656A69999
          99F9B8B8B8FFB6B6B6FF3232326E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000025252554AFAFAFFFBDBDBDFFBEBEBEFFBBBBBBFF939393ED6B6B6BBD9494
          94EFBBBBBBFFBEBEBEFFBEBEBEFFA6A6A6FF1E1E1E4300000000000000000000
          0000000000000000000000000000000000000000000025252554AFAFAFFFBDBD
          BDFFBEBEBEFFBBBBBBFF939393ED6B6B6BBD949494EFBBBBBBFFBEBEBEFFBEBE
          BEFFA6A6A6FF1D1D1D4200000000000000000000000000000000000000000000
          0000000000000000000025252554AFAFAFFFBDBDBDFFBEBEBEFFBBBBBBFF9393
          93ED6B6B6BBD969696EFBCBCBCFFBEBEBEFFBEBEBEFFA6A6A6FF1E1E1E420000
          0000000000000000000000000000000000000000000000000000000000002525
          2654AFAFAFFFBDBDBDFFBEBEBEFFBBBBBBFF939393ED6B6B6BBD949494EFBBBB
          BBFFBEBEBEFFBEBEBEFFA6A6A6FF1E1E1E430000000000000000000000000000
          00000000000000000000000000000000000025252554AEAEAEFFBDBDBDFFBEBE
          BEFFBBBBBBFF939393ED6B6B6BBD949494EFBBBBBBFFBEBEBEFFBEBEBEFFA6A6
          A6FF1E1E1E420000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001515152F9D9D
          9DFEC2C2C2FFBFBFBFFFBFBFBFFFC1C1C1FFC2C2C2FFC1C1C1FFBFBFBFFFBFBF
          BFFFC3C3C3FF909090F10E0E0E22000000000000000000000000000000000000
          00000000000000000000000000001616162F9D9D9DFEC2C2C2FFBFBFBFFFBFBF
          BFFFC1C1C1FFC2C2C2FFC1C1C1FFBFBFBFFFBFBFBFFFC3C3C3FF909090F10E0E
          0E22000000000000000000000000000000000000000000000000000000000000
          0000161616309D9D9DFEC2C2C2FFBFBFBFFFBFBFBFFFC1C1C1FFC3C3C3FFC2C2
          C2FFBFBFBFFFBFBFBFFFC3C3C3FF919191F10E0E0E2200000000000000000000
          00000000000000000000000000000000000000000000161616309D9D9CFEC2C2
          C2FFBFBFBFFFBFBFBFFFC1C1C1FFC2C2C2FFC1C1C1FFBFBFBFFFBFBFBFFFC3C3
          C3FF909090F10F0F0F2200000000000000000000000000000000000000000000
          000000000000000000001616162F9D9D9DFEC1C1C1FFBFBFBFFFBFBFBFFFC1C1
          C1FFC2C2C2FFC1C1C1FFBFBFBFFFBFBFBFFFC3C3C3FF909090F10E0E0E220000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A1A858585E1C6C6C6FFC1C1
          C1FFC1C1C1FFC1C1C1FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1C1FFC6C6C6FF7474
          74CA070707150000000000000000000000000000000000000000000000000000
          0000000000000A0A0A1A858585E1C6C6C6FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2
          C2FFC1C1C1FFC1C1C1FFC1C1C1FFC7C7C7FF737373CB06060615000000000000
          00000000000000000000000000000000000000000000000000000A0A0A1B8585
          85E1C6C6C6FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1
          C1FFC6C6C6FF737373CB07070715000000000000000000000000000000000000
          00000000000000000000000000000A0A0A1A858585E1C6C6C6FFC1C1C1FFC1C1
          C1FFC1C1C1FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1C1FFC6C6C6FF747474CA0707
          0715000000000000000000000000000000000000000000000000000000000000
          00000A0A0A1B858585E2C6C6C6FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC1C1
          C1FFC1C1C1FFC1C1C1FFC6C6C6FF747474CA0707071500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040414707070CCC9C9C9FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC7C7C7FF595A59A60000000A0000
          0000000000000000000000000000000000000000000000000000000000000404
          0415707070CCC9C9C9FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC7C7C7FF585858A70000000B0000000000000000000000000000
          000000000000000000000000000000000000040404146F6F6FCBC9C9C9FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC7C7C7FF5959
          59A60000000A0000000000000000000000000000000000000000000000000000
          00000000000004040415707070CCC9C9C9FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC7C7C7FF585858A70000000B000000000000
          0000000000000000000000000000000000000000000000000000040404146E6E
          6ECCC9C9C9FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC7C7C7FF585858A70000000B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003D3D3D77A9A9A9F1C9C9C9FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFC7C7C7FFC8C8C8FF8C8C8CE11C1C1C4A00000000000000000000
          000000000000000000000000000000000000000000003D3D3D77AAAAAAF2C9C9
          C9FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8
          C8FF8D8D8DE21C1C1C4A00000000000000000000000000000000000000000000
          000000000000000000003D3D3D77A9A9A9F1C9C9C9FFC6C6C6FFC7C7C7FFC7C7
          C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8C8FF8C8C8CE11C1C1C4A0000
          0000000000000000000000000000000000000000000000000000000000003D3D
          3D77AAAAAAF2C9C9C9FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFC8C8C8FF8C8C8CE11C1C1C4A0000000000000000000000000000
          0000000000000000000000000000000000003D3D3D77A8A8A8F1C9C9C9FFC6C6
          C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8C8FF8B8B
          8BE11D1D1D4A0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000074A4A4A86C4C4C4F9DFDF
          DFFFD9D9D9FFD3D3D3FFCECECEFFCBCBCBFFCACACAFFC9C9C9FFC9C9C9FFC9C9
          C9FFCACACAFFCACACAFF939393EA1F1F1F500000000000000000000000000000
          000000000000000000074A4A4A86C4C4C4F9DFDFDFFFD9D9D9FFD3D3D3FFCECE
          CEFFCBCBCBFFCACACAFFC9C9C9FFC9C9C9FFC9C9C9FFCACACAFFCACACAFF9393
          93EA1F1F1F500000000000000000000000000000000000000000000000064A4A
          4A87C4C4C4FADFDFDFFFD9D9D9FFD3D3D3FFCECECEFFCBCBCBFFCACACAFFC9C9
          C9FFC9C9C9FFC9C9C9FFCACACAFFCACBCAFF939393E920202050000000000000
          0000000000000000000000000000000000064A4A4A87C4C4C4FADFDFDFFFD9D9
          D9FFD3D3D3FFCECECEFFCBCBCBFFCACACAFFC9C9C9FFC9C9C9FFC9C9C9FFCACA
          CAFFCACACAFF939393E920202050000000000000000000000000000000000000
          0000000000074A4A4A87C4C4C4F9DFDFDFFFD9D9D9FFD3D3D3FFCECECEFFCBCB
          CBFFCACACAFFC9C9C9FFC9C9C9FFC9C9C9FFCACACAFFCACACAFF939393EA1F1F
          1F50000000000000000000000000000000000000000000000000000000000000
          0000000000000404040F5B5B5B98D0D0D0FDE6E6E6FFE2E2E2FFE2E2E2FFE2E2
          E2FFE2E2E2FFDFDFDFFFDBDBDBFFD6D6D6FFD3D3D3FFD1D1D1FFCFCFCFFFCFCF
          CFFFD1D1D1FF9C9C9BEE2626265C0000000100000000000000000404040F5B5B
          5B98D0D0D0FDE6E6E6FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFDFDFDFFFDBDB
          DBFFD6D6D6FFD3D3D3FFD1D1D1FFCFCFCFFFCFCFCFFFD1D1D1FF9B9B9BEE2626
          265C0000000100000000000000000404040F5B5B5B98D0D0D0FDE6E6E6FFE2E2
          E2FFE2E2E2FFE2E2E2FFE2E2E2FFDFDFDFFFDBDBDBFFD6D6D6FFD3D3D3FFD1D1
          D1FFCFCFCFFFCFCFCFFFD1D1D1FF9B9B9BEE2727275B00000001000000000000
          00000404040F5B5B5B98D0D0D0FDE6E6E6FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFDFDFDFFFDBDBDBFFD6D6D6FFD3D3D3FFD1D1D1FFCFCFCFFFCFCFCFFFD1D1
          D1FF9B9B9BEE2727275B0000000100000000000000000404040F5B5B5B98D0D0
          D0FDE6E6E6FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFDFDFDFFFDBDBDBFFD6D6
          D6FFD3D3D3FFD1D1D1FFCFCFCFFFCFCFCFFFD1D1D1FF9B9B9BEE2626265B0000
          0001000000000000000000000000000000000000000000000000090909176D6D
          6DA7DBDBDBFFECECECFFE8E8E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE8E8E8FFE7E7E7FFE6E6E6FFE3E3E3FFE1E1E1FFE1E1E1FFE1E2
          E1FFB4B4B4EB3939396400000000080808156D6D6DA7DBDBDBFFECECECFFE8E8
          E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE7E7
          E7FFE6E6E6FFE3E3E3FFE1E1E1FFE1E1E1FFE1E2E1FFB4B4B4EB393939640000
          0000090909156F6F6FA7DBDBDBFFECECECFFE8E8E8FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE7E7E7FFE6E6E6FFE3E3E3FFE1E1
          E1FFE1E1E1FFE1E1E1FFB4B4B4EB3939396400000000080808156D6D6DA7DBDB
          DBFFECECECFFE8E8E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE8E8E8FFE7E7E7FFE6E6E6FFE3E3E3FFE1E1E1FFE1E1E1FFE1E1E1FFB4B4
          B4EB3939396400000000080808156D6D6DA7DBDBDBFFECECECFFE8E8E8FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE7E7E7FFE6E6
          E6FFE3E3E3FFE1E1E1FFE1E1E1FFE1E1E1FFB4B4B4EB39393964000000020000
          0000000000000000000000000000000000003B3B3B779C9C9CDEC7C7C7F6D9D9
          D9FDE5E5E5FEEBEBEBFFEEEEEEFFEDEEEDFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFECECECFFEFEFEFFFEFEFEFFFEDEDEDFFE9E9E9FFE2E2E2FDDADADAFF9C9C
          9CE52323234E383838719C9C9CDFC7C7C7F6D9D9D9FDE5E5E5FEEBEBEBFFEEEE
          EEFFEDEEEDFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEFEFEFFFEFEF
          EFFFEDEDEDFFE9E9E9FFE2E2E2FDDADADAFF9C9C9CE52323234E383838719C9C
          9CDEC7C7C7F6D9D9D9FDE5E5E5FEEBEBEBFFEEEEEEFFEDEDEDFFEBEBEBFFEBEB
          EBFFEBEBEBFFEBEBEBFFECECECFFEFEFEFFFEFEFEFFFEDEDEDFFE9E9E9FFE2E2
          E2FDDADADAFF9C9C9CE52323234E383838719C9C9CDEC7C7C7F6D9D9D9FDE5E5
          E5FEEBEBEBFFEEEEEEFFEDEEEDFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
          ECFFEFEFEFFFEFEFEFFFEDEDEDFFE9E9E9FFE1E2E2FDD9DADAFF9C9C9CE52323
          234E383838719C9C9CDFC7C7C7F6D9D9D9FDE5E5E5FEEBEBEBFFEEEEEEFFEDEE
          EEFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEFEFEFFFEFEFEFFFEDED
          EDFFE9E9E9FFE2E2E2FDDADADAFF9C9C9CE52424244F00000000000000000000
          000000000000000000000606060C0707070C0A0A0A1C1B1B1B3A3434345D5151
          5187737373AAC6C6C6EEF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFB2B2
          B2E47D7D7DAE5D5D5D934040406F2929294D1313132F0B0B0B19050505090606
          060B0707070C0A0A0A1C1B1B1B3A3434345D51515187737373AAC6C6C6EEF2F2
          F2FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFB2B2B2E47D7D7DAE5D5D5D934040
          406F2929294D1313132F0B0B0B19050505090606060B0707070C0A0A0A1C1B1B
          1B3A3434345D51515187737373A9C6C6C6EEF2F2F2FFF0F0F0FFF0F0F0FFF0F0
          F0FFEFEFEFFFB2B2B2E47D7D7DAE5C5C5C93404040702929294D1313132F0B0B
          0B19050505090606060B0707070C0A0A0A1C1B1B1B3A3434345D515151877373
          73AAC6C6C6EEF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFB1B1B1E37D7D
          7DAE5C5D5D934040406F2929294D1313132F0B0B0B19050505090606060B0707
          070C0A0A0A1C1B1B1B3A3434345D51515187737373A9C6C6C6EEF2F2F2FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFB3B3B3E47D7D7DAE5D5D5D934040406F2929
          294D1313132F0B0B0B1905050509000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004F4F
          4F7EEBEBEBFEF5F5F5FFF4F4F4FFF5F5F5FFD6D6D6F41E1E1E43000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004F4F4F7EEBEBEBFEF5F5F5FFF4F4
          F4FFF5F5F5FFD6D7D6F51E1E1E43000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004F4F4F7EEBEBEBFEF5F5F5FFF4F4F4FFF5F5F5FFD6D6D6F51E1E
          1E43000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004F4F4F7EEBEB
          EBFEF5F5F5FFF4F4F4FFF5F5F5FFD6D6D6F41D1D1D4300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F4F4F7EEBEBEBFEF5F5F5FFF4F4F4FFF5F5
          F5FFD6D7D7F51F1F1F4300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000006060617B8B8B8DEFAFA
          FAFFF7F7F7FFFAFAFAFF7B7B7BAA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000006060616B8B8B7DEFAFAFAFFF7F7F7FFFAFAFAFF7B7B
          7BAA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000606
          0616B8B8B7DEFAFAFAFFF7F7F7FFFAFAFAFF7B7B7BAA00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000006060617B8B8B8DEFAFAFAFFF7F7
          F7FFFAFAFAFF7B7B7BAA00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000006060616B8B8B8DEFAFAFAFFF7F7F7FFFAFAFAFF7B7B7BAA0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B4B4B73F9F9F9FFFEFEFEFFD7D7
          D7F61A1A1A320000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004B4B4B73F9F9F9FFFEFEFEFFD7D7D7F61A1A1A31000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004B4B4B73F9F9
          F9FFFEFEFEFFD7D7D7F619191931000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004B4B4B73F9F9F9FFFEFEFEFFD7D7D7F61A1A
          1A32000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004B4B4B73F9F9F9FFFEFEFEFFD7D7D7F61A1A1A3100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000C0C0C17B5B5B5D9FFFFFFFF6C6C6C93000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C0C
          0C17B5B5B5D9FFFFFFFF6D6D6D93000000050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C0C0C17B5B5B5D9FFFFFFFF6C6C
          6C92000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000C0C0C17B5B5B5D9FFFFFFFF6C6C6C9300000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C0C0C17B5B5
          B5D9FFFFFFFF6D6D6D9200000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000057575771C6C6C6EB232323340000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000057575771C6C6
          C6EA232323350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000057575771C6C6C6EA22222235000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057575771C6C6C6E922222235000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000057575771C6C6C6E92323
          2335000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001A1A
          1A2C363636600303030700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001A1A1A2B36363660030303080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001A1A1A2B36363660030303070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001A1A1A2C3636
          3660020202070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A2B3636366003030308000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0204014267A6032A416100000814000000000000000001060A11030D15230000
          01010000000000000000000005100123355501375A9200010204000000000000
          00000000000000000000000000000000000001010104494949A72D2D2D610303
          0314000000000000000001060A11030D15230000010100000000000000000202
          0210252525553F3F3F9201010104000000000000000000000000000000000000
          00000000000001010104484848A62D2D2D610303031400000000000000000808
          08110F0F0F2300000001000000000000000002020210252525553E3E3F910101
          0103000000000000000000000000000000000000000000000000010101044949
          49A62D2D2D610303031400000000000000000808081110101023000000010000
          00000000000002020210242424553F3F3F910101010300000000000000000000
          000000000000000000000000000001010104484848A62E2E2E61030303140000
          000000000000070707110F0F0F23010101010000000000000000020202102525
          25553E3E3E930101010400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001035273AB17B2
          D2F7096888B9002136580000000800000000000000000000000000000008001F
          3355086282B113AACDF6034969A1000000010000000000000000000000000000
          0000000000000000000000000002525252ABA3A3A4F7666666B9252525580000
          00080000000000000000000000000000000823232455606060B19B9B9BF64C4C
          4CA1000000010000000000000000000000000000000000000000000000000000
          0001525252ABA3A3A4F7666666B9252525580000000800000000000000000000
          00000000000823232355606060B19C9C9CF64C4C4CA000000000000000000000
          00000000000000000000000000000000000000000001525252ABA3A3A4F76666
          66B9252525580000000800000000000000000000000000000008232324556060
          60B19C9C9CF64B4B4CA000000000000000000000000000000000000000000000
          00000000000000000001525452ABA3A4A4F7666666B925252558000000080000
          000000000000000000000000000824242455606060B19B9B9BF64C4C4CA10000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000002354F7C16C5E2FF18C5E1FC0C9F
          C2F2035C7DB10016294A0000000800182D4F035D7EB20D9DC1F118C3E1FC16C2
          E0FF022E456E0000000000000000000000000000000000000000000000000000
          0000000000003939397BB7B7B8FFB7B7B8FC9B9B9BF25E5E5EB11B1B1B4A0000
          00081E1E1E4F606060B2999999F1B7B7B7FCB5B5B6FF3131316E000000000000
          00000000000000000000000000000000000000000000000000003838387CB7B7
          B8FFB7B7B8FC9B9B9BF25E5E5EB11B1B1B4A000000081D1D1D50606060B29999
          99F1B7B7B7FCB5B5B5FF3131316E000000000000000000000000000000000000
          00000000000000000000000000003939397CB8B8B8FFB7B7B8FC9B9B9BF25E5E
          5EB11B1B1B4A000000071D1D1D505F5F5FB2999999F1B7B7B7FCB5B5B5FF3232
          316E000000000000000000000000000000000000000000000000000000000000
          00003839387CB7B8B8FFB7B7B8FC9B9B9BF25E5E5EB11B1B1B4A000000071E1E
          1E4F606060B2999999F1B7B7B7FCB5B5B5FF3232326E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000022355505ADD2FF09BFDDFF09BFDDFF06B6D8FC028F
          B3E7006B92CE0294B8EA06B7D8FC09BFDDFF09C0DEFF05A5CBFF001A29430000
          0000000000000000000000000000000000000000000000000000000000002626
          2654AFAFAFFFBDBDBDFFBDBDBDFFB7B7B7FC949494E7737372CE979797EAB8B8
          B8FCBDBDBDFFBEBEBEFFA7A7A7FF1E1E1E430000000000000000000000000000
          00000000000000000000000000000000000026262655ADADAEFFBDBDBDFFBDBD
          BDFFB7B7B7FC949494E7727272CE969696EAB8B8B8FCBDBDBDFFBEBEBEFFA7A7
          A7FF1F1F1F430000000000000000000000000000000000000000000000000000
          00000000000026272755ADAEAFFFBDBDBDFFBDBDBDFFB7B7B7FC949494E77272
          72CE979797E9B7B7B7FCBDBDBDFFBEBEBEFFA7A7A7FF1F1F1F44000000000000
          000000000000000000000000000000000000000000000000000026262655AEAE
          AFFFBDBDBDFFBDBDBDFFB7B7B7FC949494E7737373CE979797EAB8B8B8FCBDBD
          BDFFBEBEBEFFA7A8A7FF1E1E1E43000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000001320320091BCFE00B4D6FF00B2D4FF00B3D5FF00B1D4FF00AFD3FE00B2
          D6FF00B3D5FF00B2D4FF00B5D7FF0087B1F2000E152200000000000000000000
          00000000000000000000000000000000000000000000161616329E9E9EFEC1C1
          C1FFBFBEBFFFBFBFBFFFBEBEBEFFBBBBBBFEC0BFC0FFBFBFBFFFBFBFBFFFC3C3
          C3FF929292F31010102300000000000000000000000000000000000000000000
          00000000000000000000161616329F9F9FFEC2C2C2FFBFBEBFFFBFBFBFFFBEBE
          BEFFBBBBBBFEC0BFC0FFBFBFBFFFBFBEBFFFC3C3C3FF919191F2101010230000
          0000000000000000000000000000000000000000000000000000000000001616
          16329E9E9EFEC1C2C2FFBFBEBFFFBFBFBFFFBEBEBEFFBBBBBBFEC0BFC0FFBFBF
          BFFFBFBEBFFFC3C3C3FF919191F2101010230000000000000000000000000000
          000000000000000000000000000000000000161616329F9F9FFEC2C2C2FFBFBE
          BFFFBFBFBFFFBEBEBEFFBBBBBBFEC0BFC0FFBFBFBFFFBFBFBFFFC3C3C3FF9191
          91F2101010230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000B121C0078
          A5E700ABD0FF00A7CEFF00A7CEFF00A7CEFF00A7CDFF00A7CEFF00A7CEFF00A7
          CEFF00ABD1FF006991D200070D18000000000000000000000000000000000000
          00000000000000000000000000000C0C0C1C8A8A8AE7C6C6C6FFC1C2C1FFC1C2
          C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C1C1FFC7C7C7FF797979D30707
          0718000000000000000000000000000000000000000000000000000000000000
          00000B0B0B1C8A8A8AE7C6C6C6FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2
          C1FFC1C2C1FFC1C2C1FFC7C7C7FF787878D20808081800000000000000000000
          000000000000000000000000000000000000000000000C0C0C1C8A8A8AE7C6C6
          C6FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC7C7
          C7FF787878D10808081700000000000000000000000000000000000000000000
          000000000000000000000C0C0C1C898989E8C6C6C6FFC1C2C1FFC1C2C1FFC1C2
          C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C1C1FFC7C7C7FF787878D1070707170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000003060E005B83C600A0CBFF009C
          C6FF009CC6FF009CC6FF009CC6FF009CC6FF009CC6FF009CC6FF009FCBFF004B
          6BA1000103080000000000000000000000000000000000000000000000000000
          0000000000000202020F6C6C6CC7C9C9C9FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC6C6C6FF585858A100000008000000000000
          00000000000000000000000000000000000000000000000000000202020F6D6B
          6DC5C8C9C8FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C5
          C4FFC6C6C6FF585858A100000008000000000000000000000000000000000000
          00000000000000000000000000000202020E6D6D6DC6C8C8C8FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC6C6C6FF585858A10000
          0008000000000000000000000000000000000000000000000000000000000000
          00000202020E6C6C6CC6C9C9C9FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC6C6C6FF585858A20000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000062033520A7DA9EE0090BFFF0090BEFF0091BFFF0091
          BFFF0091C0FF0092C0FF0092C0FF0092C0FF0093C2FF00618ED6000A14250000
          0000000000000000000000000000000000000000000000000000000000002121
          21529B9B9BEFC9C9C9FFC7C7C7FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFC9C9C9FF7A7A7AD70B0B0B250000000000000000000000000000
          000000000000000000000000000000000000212122519B9B99EEC8C8C8FFC7C7
          C7FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC9C9C9FF7B7B
          7BD60A0A0B250000000000000000000000000000000000000000000000000000
          000000000000222222529B9B99EEC8C8C8FFC7C7C7FFC6C6C6FFC7C7C7FFC7C7
          C7FFC7C7C7FFC7C7C7FFC7C7C7FFC9C9C9FF7B7B7BD60B0B0B25000000000000
          0000000000000000000000000000000000000000000000000000212121529B9B
          9BEEC9C9C9FFC7C7C7FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC9C9C9FF7C7C7CD70B0B0B25000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B25
          385642AAC2EB51C7DCFE36B4D2FF1398C1FF058ABAFF0088B7FF0085B6FF0083
          B6FF0085B6FF0086B8FF0087B8FF0085B6FD005684CC000B1423000000000000
          00000000000000000000000000000000000027272755AAAAAAEBD8D8D8FED4D4
          D4FFCECECEFFCACACAFFC9C9C9FFC8C8C8FFC8C9C9FFCACACAFFCACACAFFC9CA
          CAFFC3C3C3FD727272CC0A0A0A23000000000000000000000000000000000000
          00000000000027272755AAAAAAEBD8D8D8FED5D5D5FFCECECEFFCACACAFFC9C9
          C9FFC8C8C8FFC8C9C9FFCACACAFFCACACAFFC9CACAFFC3C3C3FD727272CC0A0A
          0A2300000000000000000000000000000000000000000000000027272756AAAA
          AAEBD8D8D8FED5D5D5FFCECECEFFCACACAFFC9C9C9FFC8C8C8FFC8C9C9FFCACA
          CAFFCACACAFFCACACAFFC3C3C3FD727272CC0A0A0A2300000000000000000000
          000000000000000000000000000027272755AAAAAAEBD8D8D8FED4D4D4FFCECE
          CEFFCACACAFFC9C9C9FFC8C8C8FFC8C9C9FFCACACAFFCACACAFFC9CACAFFC3C3
          C3FD727272CC0A0A0A2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F2E405D47A6C1E95BCBE1FF5ACB
          DFFF59CAE0FF58C9DEFF4BBED9FF31AACCFF1E99C1FF148CBAFF0B86B7FF0580
          B3FF007CB0FF0079B0FF0075AEFD004B7CC80007122700000000000000000000
          0000000000002F2F2F5DB0B0B0E9E2E2E2FFE1E1E1FFE0E0E0FFE1E1E1FFDDDE
          DDFFD8D8D8FFD4D4D4FFD0D1D1FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFC5C5
          C5FD717171C809090A28000000000000000000000000000000002F2F2F5DB0B0
          B0E9E2E2E2FFE1E1E1FFE0E0E0FFE1E1E1FFDDDEDDFFD8D8D8FFD4D4D4FFD0D0
          D0FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFC5C5C5FD717171C80A0A0A280000
          00000000000000000000000000002F2F2F5DB0B0B0E9E2E2E2FFE1E1E1FFE0E0
          E0FFE1E1E1FFDDDEDDFFD8D8D8FFD4D4D4FFD0D1D1FFCFCFCFFFCDCDCDFFCCCC
          CCFFCCCCCCFFC5C5C5FD717171C8090909270000000000000000000000000000
          00002F2F2F5DAFB0AFE9E2E2E2FFE1E1E1FFE0E0E0FFE1E1E1FFDDDEDDFFD8D8
          D8FFD4D4D4FFD0D1D1FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFC5C5C5FD7171
          71C80A0A0A280000000000000000000000000000000000000000000000000000
          000000000000113344624AA6C2E85DC9E0FF5CC7DCFF5CC7DDFF5CC6DCFF5CC7
          DCFF5CC7DDFF5DC8DDFF5CC8DEFF57C2D9FF47B8D3FF3FABCDFF36A3C8FF2B9D
          C4FF2798C1FF2693BEFD20698DC604121927000000000000000036363662B8B8
          B8E8E8E8E8FFE6E6E6FFE5E5E5FFE6E6E6FFE6E6E6FFE4E5E4FFE5E5E5FFE6E6
          E6FFE4E4E4FFE1E1E1FFDEDEDEFFDBDBDBFFDADADAFFDADADAFFD1D1D1FD7F7F
          7FC611111127000000000000000036363662B8B8B8E7E8E8E8FFE6E6E6FFE5E5
          E5FFE5E5E5FFE6E6E6FFE4E5E4FFE5E5E5FFE6E6E6FFE4E4E4FFE1E1E1FFDEDE
          DEFFDBDBDBFFDADADAFFDADADAFFD1D1D1FD7F7F7FC610101027000000000000
          000036363662B8B8B8E8E8E8E8FFE6E6E6FFE5E5E5FFE5E5E5FFE6E6E6FFE4E5
          E4FFE5E5E5FFE6E6E6FFE4E4E4FFE1E1E1FFDEDEDEFFDBDBDBFFDADADAFFDADA
          DAFFD1D1D1FD7F7F7FC610101027000000000000000036363662B8B8B8E8E8E8
          E8FFE6E6E6FFE5E5E5FFE6E6E6FFE6E6E6FFE4E5E4FFE5E5E5FFE6E6E6FFE4E4
          E4FFE1E1E1FFDEDEDEFFDBDBDBFFDADADAFFDBDBDAFFD1D1D1FD7F7F7FC61010
          10270000000000000000000000000000000000000000000000000F374D744FAD
          C9F666CFE8FF64CBE3FF63C8E0FF61C6DEFF5FC6DCFF60C4DBFF5FC3DAFF5FC3
          DAFF5FC4DAFF60C4DBFF60C5DBFF61C6DDFF62C7DFFF63C7DDFF61C7DFFF63C9
          E1FF61CAE4FF3C8BA6D1051720313837376EBCBCBCF6F2F2F2FFF3F3F3FFF0F0
          F0FFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFECECECFFEEEEEDFFEEEEEEFFEFEFEFFFF4F4F4FFEFEFEFFF989898D11818
          18313838386DBDBDBDF6F2F3F3FFF3F3F3FFF0F0F0FFEEEEEEFFEDEDEDFFEBEB
          EBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFECECECFFEEEEEDFFEEEE
          EEFFEFEFEFFFF4F4F4FFEFEFEFFF979797D1181818313737376DBCBCBCF6F2F3
          F2FFF3F3F3FFF0F0F0FFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFECECECFFEEEEEDFFEEEEEEFFEFEFEFFFF4F4F4FFEFEF
          EFFF979797D0181818313838386EBDBDBDF6F2F3F3FFF3F3F3FFF0F1F0FFEEEE
          EEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFECEC
          ECFFEEEEEDFFEEEEEEFFEFEFEFFFF4F4F4FFEEEEEEFF979797D1191919320000
          00000000000000000000000000000000000004111C2C112F3F581C47587A2A60
          7AA436819ECC4B9FBBEB58B2CFFA63C3DBFF64C3DAFF63C3DAFF63C3DAFF64C3
          DAFF64C3DAFF63C2DAFF5BB6D2FA53A8C3F24090AAD932738EBA29596F981540
          527501111C2D1212122A333232584E4E4E7A6B6B6BA4929292CCB6B6B6EBD1D1
          D1F9EAEAEAFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFE8E8E8FFD7D7
          D7FAC1C1C1F2A3A3A3D9808080BA62626298464646751313132D1212122A3333
          33584F4E4F7A6B6B6BA4929292CCB6B6B6EBD1D1D1F9EAEAEAFFEEEEEEFFEEEE
          EEFFEEEEEEFFEEEEEEFFEEEFEFFFE8E8E8FFD7D7D7FAC1C1C1F2A3A3A3D98080
          80BA62626298464646751414142D1212122A323232584E4E4F7A6B6B6BA49292
          92CCB6B6B6EBD1D2D1F9EAEAEAFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
          EEFFE8E8E8FFD7D7D7FAC1C1C1F2A3A3A3D9808080BA62626298464646741414
          142D1212122A333333584F4E4F7A6B6B6BA4929292CCB6B6B6EBD1D1D1F9EAEA
          EAFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFE8E8E8FFD7D7D7FAC1C1
          C1F2A3A3A3D9808080BA62626298464646751414142E00000000000000000000
          00000000000000000000000101020002020401030406020506090307090B0409
          0C13050E1A2C367993BE69C5DDFF68C3DAFF69C3DAFF69C4DBFF67C0D9FF2253
          6D9905131F31050A0F1B03080A0C0206080A0204050801030406000102030101
          01020202020403030306050505090808080B0A0A0A130E0E0E2B888888BFF2F2
          F2FFF3F4F3FFF2F3F2FFF2F2F2FFECECECFF5B5B5B98151515310B0B0B1B0909
          090C0707070A0505050803030306010101030101010202020204030303060505
          05090808080B0A0A0A130E0E0E2B8A8A8ABFF2F3F2FFF3F4F3FFF2F3F2FFF2F2
          F2FFEBECECFF5B5B5B99151515310B0B0B1B0909090C0707070A050505080303
          030601010103010101020202020403030306050505090808080B0A0A0A130E0E
          0E2B888888BFF2F2F2FFF3F4F3FFF2F3F2FFF2F3F2FFEBEBEBFF5B5B5B991515
          15310B0B0B1B0909090C0707070A050505080303030601010103010101020202
          020403030306050505090808080B0A0A0A130E0E0E2B888888BFF2F2F2FFF3F4
          F3FFF2F3F2FFF2F3F2FFECECECFF5B5B5B98151515310B0B0B1B0909090C0707
          070A050505080303030601010103000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010D23
          304963B6D0F96EC3DBFF6EC3DAFF6FC5DDFF5098B4E201080F1C000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000012626264AE0E0E0F9F7F7F7FFF6F6
          F6FFF9F9F9FFB7B7B7E30808081C000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000012626264AE0E0DFF9F7F7F7FFF6F6F6FFF9F9F9FFB7B7B7E20808
          081C000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000012626264ADFDF
          DFF9F7F7F7FFF6F6F6FFF9F9F9FFB7B7B7E20808081C00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000012626264ADFDFDFF8F7F7F7FFF6F6F6FFF9F9
          F9FFB7B7B7E20808081C00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000102053D7790BD75C5
          DDFF71C2DCFF73C4DDFF1C405679000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010105909090BDFCFCFCFFF9F9F9FFF8F8F8FF4C4C
          4C79000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0105909090BDFCFCFCFFF9F9F9FFF8F8F8FF4C4C4C7900000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010105909090BCFCFCFCFFF9F9
          F9FFF8F8F8FF4C4C4C7900000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001010105909090BDFCFCFCFFF9F9F9FFF8F8F8FF4C4C4C790000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001026324A70BAD6FF7BC8E0FF5291
          B0DE040C121D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002C2C2C4AEEEEEEFFFFFFFFFFB7B7B7DE0D0D0D1C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002D2D2D4AEEEE
          EEFFFFFFFFFFB7B7B7DE0D0D0D1D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002C2C2C4AEEEEEEFFFFFFFFFFB6B6B6DE0D0D
          0D1D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002C2C2C4AEEEEEEFFFFFFFFFFB7B7B7DE0D0D0D1D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000106080F447890BA80C9E4FF22425674000001010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000707
          070F989898BAFFFFFFFF53535374000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000707070F989898BAFFFFFFFF5353
          5373000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707070F989898BAFFFFFFFF5353537400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000707070F9999
          99BBFFFFFFFF5353537400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010101010200000000000000000000
          0000000000001D37465F4980A0D308131B270000000000000000000000000000
          0000000000000000000100000000000000000000000000000000000000000000
          00000000000101010102000000000000000000000000000000004646465FA6A6
          A6D2191919270000000000000000000000000000000000000000000000010000
          0000000000000000000000000000000000000000000000000001010101020000
          000000000000000000000000000046464660A5A5A5D319191927000000000000
          0000000000000000000000000000000000010000000000000000000000000000
          0000000000000000000000000001010101020000000000000000000000000000
          00004646465FA6A6A6D219191928000000000000000000000000000000000000
          0000000000010000000000000000000000000000000000000000000000000000
          000101010102000000000000000000000000000000004646465FA6A6A6D21919
          1927000000000000000000000000000000000000000000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010101043434347C16161640000000000000000000000000030F
          131D081D2A4000020205000000000000000000000000121212342D2D2D6F0101
          0103000000000000000000000000000000000000000000000000010101043434
          347C161616400000000000000000000000001111111D24242440020202050000
          00000000000000000000121212342D2D2D6F0101010300000000000000000000
          0000000000000000000000000000010101043434347C16161640000000000000
          0000000000001111111D24242440020202050000000000000000000000001111
          12342D2D2D6F0101010300000000000000000000000000000000000000000000
          0000010101043434347C161616400000000000000000000000001111111D2424
          244002020205000000000000000000000000121212342D2D2D6F010101030000
          00000000000000000000000000000000000000000000010101033434347C1616
          16400000000000000000000000001111111D2424244002020205000000000000
          000000000000121212342D2D2D6F010101030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0203001F3356010B111B00000205000000000000000009131C29143042650003
          0408000000000000000000000104000A0F18001A284400010102000000000000
          00000000000000000000000000000000000000010203001E3356000B111B0000
          0205000000000000000009141D29133043650002040800000000000000000000
          0104000A0F18001A284400010102000000000000000000000000000000000000
          00000000000001010103242424560C0C0C1B0101010500000000000000000915
          1D2913304364000204080000000000000000000000040A0A0A181B1B1B430101
          0102000000000000000000000000000000000000000000000000010101032323
          23560C0C0C1B010101050000000000000000191919293C3C3C65030303080000
          000000000000000000040A0A0A181B1B1B440101010200000000000000000000
          000000000000000000000000000001010103242424560C0C0C1B010101050000
          000000000000191919293C3C3C65030303080000000000000000000000040A0A
          0A181B1B1B440101010200000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000010301517ABB096E
          93C90224375400080D1700000103000000000000000000000000000001030008
          0C150221314C076485BC014A70B0000101030000000000000000000000000000
          000000000000000000000001010301527ABC096E93C90224375500080D160000
          01030000000000000000000000000000010300080C150221314C076487BC014A
          70B0000101030000000000000000000000000000000000000000000000000101
          0103575757BB6A6A6CC927272755090909160000000300000000000000000000
          000000000003090909152323234C636363BC505050AF01010103000000000000
          00000000000000000000000000000000000001010103575757BB6A6A6AC92727
          2754090909170001000300000000000000000000000000000003090909152323
          234C636363BC4F4F4FB001010103000000000000000000000000000000000000
          00000000000001010103585858BC6C6C6CC92727275509090916010101030000
          0000000000000000000000000003090909152323234C636364BC4F4F4FB00101
          0103000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001034463941ED0EDFF12A9CEFF055A
          7CB0011F2E4800070A110001040700070B14011F2E48055877AB10A4C9FE1DCD
          EAFF043E5A880000000100000000000000000000000000000000000000000000
          000000000001044463951ED1EDFF12A9CFFF055B7BAF011F2E4800070A110001
          040700080B14011F2E48055877AB10A4C9FE1CCEEBFF043E5987000000010000
          000000000000000000000000000000000000000000000000000148484894BDBD
          BDFFA1A1A1FF5D5D5DAF21212148070707110202020708080814212121485A5A
          5AAB9B9B9BFEBBBBBBFF40414187000000000000000000000000000000000000
          000000000000000000000000000148484894BDBDBDFFA1A1A1FF5C5C5CB02122
          2148070707110202020708080814212121485A5A5AAB9B9B9BFEBBBBBBFF4141
          4188000000010000000000000000000000000000000000000000000000000000
          000147474795BDBDBDFFA1A1A1FF5D5D5DAF2222224807070711020202070808
          0814212121485A5A5AAB9B9B9BFEBBBBBBFF4040408700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000022840660CB7D9FF14C8E3FF0FC3E4FF0595BAF5014C
          6A960029406301506D9B0594BDF70EC4E5FF14C9E5FF0BB1D4FF002236560000
          0000000000000000000000000000000000000000000000000000000000000229
          40660CB8D9FF14C7E3FF0EC3E3FF0594BAF5014C6A960029406301516D9B0594
          BDF70EC4E5FF14C9E5FF0BB1D5FF002135550000000000000000000000000000
          0000000000000000000000000000000000002E2E2E66B3B3B3FFBFBFBFFFBDBD
          BDFF969697F5525252962E2E2E635454549B959596F7BDBDBDFFC0C0C0FFADAD
          AFFF252626550000000000000000000000000000000000000000000000000000
          0000000000002E2E2E66B3B3B3FFBFBFBFFFBDBDBDFF969697F5525252962E2E
          2E635454549B969696F7BDBDBDFFC0C0C0FFAEAEAEFF26262656000000000000
          00000000000000000000000000000000000000000000000000002E2E2E66B3B3
          B3FFBFBFBFFFBDBDBDFF969697F5525252962E2E2E635454549B959596F7BDBD
          BDFFC0C0C0FFAEAEAEFF25262555000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000192942029DC7FE02B8D8FF04B7D8FF04BFDFFF02B1D7FF0199C2FE01B2
          D9FF04BFDFFF03B7D8FF03B9D9FF0194BEFB00131E3100000000000000000000
          0000000000000000000000000000000000000000000000192942029EC7FE02B8
          D8FF03B7D8FF04BFDFFF02B1D7FF0199C2FE01B3D9FF04BFDFFF03B7D8FF03B9
          DAFF0192BEFB00121E3000000000000000000000000000000000000000000000
          000000000000000000001E1E1E42A6A6A6FEBFBFBFFFBEBEBEFFC4C4C4FFB8B8
          B8FFA3A3A3FEBBBBBBFFC4C4C4FFBEBEBEFFC0C0C0FF9B9B9CFB161616300000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E42A6A6A6FEBFBFBFFFBEBEBEFFC4C4C4FFB9B9B9FFA3A3A3FEBBBBBBFFC4C4
          C4FFBEBEBEFFC0C0C0FF9D9D9DFB151515310000000000000000000000000000
          0000000000000000000000000000000000001D1D1D42A6A6A6FEBFBFBFFFBEBE
          BEFFC4C4C4FFB8B9B8FFA3A3A3FEBBBBBBFFC4C4C4FFBEBEBEFFC0C0C0FF9C9C
          9CFB161616300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000E16240084
          AEF300AFD3FF00ACD1FF00ACD0FF00AFD3FF00B3D7FF00AFD3FF00ACD0FF00AC
          D1FF00B0D4FF0075A0E10009101A000000000000000000000000000000000000
          0000000000000000000000000000000E16230084AEF300AFD3FF00ACD1FF00AC
          D0FF00AFD3FF00B3D7FF00AFD3FF00ACD0FF00ACD1FF00B0D5FF0076A0E20008
          101B000000000000000000000000000000000000000000000000000000000000
          000010101024939393F3C3C3C3FFC0C0C0FFC0C0BFFFC3C3C3FFC6C6C6FFC2C2
          C2FFC0C0BFFFC0C0C0FFC5C4C5FF838583E20A0A0A1B00000000000000000000
          0000000000000000000000000000000000000000000010101023939393F3C3C3
          C3FFC0C0C0FFC0C0BFFFC3C3C3FFC6C6C6FFC2C2C2FFC0BFBFFFC0C0C0FFC5C5
          C5FF838383E10909091A00000000000000000000000000000000000000000000
          0000000000000000000010101024939493F3C3C4C4FFC0C0C0FFC0C0BFFFC3C3
          C3FFC6C6C6FFC2C2C2FFC0C0BFFFC0C0C0FFC5C5C5FF838383E10A0A0A1A0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000050B15006892D500A5CEFF00A2
          CAFF00A2CAFF00A2C9FF00A2C9FF00A2C9FF00A2CAFF00A2CAFF00A6CEFF0059
          7DBA0002060F0000000000000000000000000000000000000000000000000000
          00000000000000040B15006792D500A6CEFF00A2CAFF00A2CAFF00A2C9FF00A2
          C9FF00A2C9FF00A2CAFF00A2CAFF00A4CFFF00587FBA0002060F000000000000
          0000000000000000000000000000000000000000000000000000050505147A7A
          7AD4C7C7C7FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3
          C3FFC7C7C7FF666866B90202020F000000000000000000000000000000000000
          0000000000000000000000000000060606147A7A7AD4C7C7C7FFC3C3C3FFC3C3
          C3FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC7C7C7FF686868BA0202
          020F000000000000000000000000000000000000000000000000000000000000
          0000060606157A7B7AD5C7C7C7FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2
          C2FFC3C3C3FFC3C3C3FFC6C6C7FF686868BA0202020F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000030C142303628DD30099C5FF0095C2FF0096C2FF0097
          C3FF0097C3FF0097C3FF0097C3FF0097C3FF0099C6FF004E72AE0003070E0000
          000000000000000000000000000000000000000000000000000000000000030A
          142303628DD30099C5FF0095C2FF0096C2FF0097C3FF0097C3FF0097C3FF0097
          C3FF0097C3FF0098C6FF004E73B00003070F0000000000000000000000000000
          0000000000000000000000000000000000000B0B0B227B7B7BD2CACACAFFC5C5
          C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C7C6FFC7C8C7FF6060
          60AE0303030E0000000000000000000000000000000000000000000000000000
          0000000000000B0B0B227A7A7AD3CACACAFFC5C5C5FFC5C5C5FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FF5F5F5FAF0303030F000000000000
          00000000000000000000000000000000000000000000000000000B0B0B237A7A
          7AD3C9C9C9FFC5C5C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7
          C7FFC8C8C8FF5F5F5FAF0303030F000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000040B
          0F1921647AA12CA4C8FC129CC5FF078EBCFF038DBCFF008CBBFF008BBBFF008C
          BBFF008CBBFF008DBBFF008DBCFF0074A4EC002C48730004060B000000000000
          000000000000000000000000000000000000040B0F1921647AA12DA5C7FD129C
          C5FF078EBCFF038DBCFF008CBBFF008BBBFF008CBBFF008CBBFF008DBBFF008D
          BCFF0073A5ED002D48740004060B000000000000000000000000000000000000
          0000000000000B0B0B19626262A1BDBDBDFCCDCDCDFFC9C9C9FFC8C8C8FFC8C8
          C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C9C8FFC9C9C9FFA0A0A0EC373737730303
          030B0000000000000000000000000000000000000000000000000A0A0A196262
          62A1BDBDBDFDCDCDCDFFC9C9C9FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFC8C8C8FFA1A1A1ED393939740403040B00000000000000000000
          00000000000000000000000000000A0A0A19626262A1BDBDBDFDCDCDCDFFC9C9
          C9FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFA1A1
          A1ED383838740404040B00000000000000000000000000000000000000000000
          000000000000000000000000000000000000040C111B276B82A856CAE1FF5DD2
          E4FF50C4DBFF3EB6D4FF24A1C7FF0F8EBDFF0986B8FF0584B7FF0383B6FF0081
          B4FF0080B4FF0085B9FF0071A7F8002B47750003060B00000000000000000000
          000000000000040C111B276B82A856CBE1FF5DD2E4FF50C4DBFF3EB6D4FF24A1
          C7FF0F8EBDFF0986B8FF0584B7FF0383B6FF0081B4FF0080B4FF0084B9FF0070
          A8F7002B47750003060B000000000000000000000000000000000C0C0C1B6B6B
          6BA8D6D6D6FFE4E4E4FFDBDBDBFFD8D8D8FFD2D2D2FFCECECEFFCDCDCDFFCCCC
          CCFFCBCBCBFFCACACAFFCBCBCBFFD0D0D0FFA9A9A9F8373737750303030B0000
          00000000000000000000000000000B0B0B1B696969A8D6D6D6FFE4E4E4FFDBDB
          DBFFD8D8D8FFD2D2D2FFCECECEFFCDCDCDFFCCCCCCFFCBCBCBFFCACACAFFCBCB
          CBFFD0D0D0FFAAAAAAF7373737750303030B0000000000000000000000000000
          00000C0C0C1B696969A8D6D6D6FFE4E4E4FFDBDBDBFFD8D8D8FFD2D2D2FFCECE
          CEFFCDCDCDFFCCCCCCFFCBCBCBFFCACACAFFCBCBCBFFD0D0D0FFAAAAAAF73838
          38750303030C0000000000000000000000000000000000000000000000000000
          000000010102050F131F2B6F87AB59CAE1FF5ECCE2FF5CC9DEFF5FCBE0FF5ECB
          E0FF5CC9DFFF57C5DCFF48B8D5FF34A6CAFF2596C0FF158CBAFF1185B6FF0E82
          B4FF0A84B9FF0972A8F707334B760206080C0000000000010102050F131F2B6F
          87AB59CAE1FF5ECCE2FF5CC9DEFF5FCBE0FF5ECBE0FF5CC9DFFF57C5DCFF48B8
          D5FF34A7CAFF2596C0FF158CBAFF1185B6FF0E82B4FF0A84B9FF0972A8F70733
          4C760206080C00000000010101020F0F0F1F737373ABDEDEDEFFE8E8E8FFE4E4
          E4FFE3E3E3FFE3E3E3FFE4E4E4FFE2E2E2FFDFDFDFFFD9D9D9FFD6D6D6FFD3D3
          D3FFD1D1D1FFD1D1D1FFD7D7D7FFAEAEAEF73B3B3B760707070C000000000101
          01020F0F0F1F737373ABDEDEDEFFE8E8E8FFE4E4E4FFE3E3E3FFE3E3E3FFE4E4
          E4FFE2E2E2FFDFDFDFFFD9D9D9FFD6D6D6FFD3D3D3FFD1D1D1FFD1D1D1FFD7D7
          D7FFAEAEAEF73C3C3C760707070C00000000010101020F0F0F1E737373ABDEDE
          DEFFE8E8E8FFE4E4E4FFE3E3E3FFE3E3E3FFE4E4E4FFE2E2E2FFDFDFDFFFD9D9
          D9FFD6D6D6FFD3D3D3FFD1D1D1FFD1D1D1FFD7D7D7FFAFAFAFF73C3C3C760707
          070C000000000000000000000000000000000000000000000000051219262D72
          89B05DC9E3FF61CAE0FF5FC7DFFF5EC7DFFF5EC7DDFF5DC5DCFF5EC6DCFF5EC6
          DCFF5EC6DCFF62C9DEFF62C9DEFF61C9DEFF5CC4DCFF54BED8FF46B7D3FF43B4
          D5FF3DA2C3FA194456760004070C051217242E7288B05DC9E3FF61CAE1FF5FC7
          DFFF5EC7DFFF5EC7DDFF5DC5DCFF5EC6DCFF5EC6DCFF5EC6DCFF62C9DEFF62C9
          DEFF61C9DEFF5CC4DCFF54BED9FF46B7D4FF43B4D5FF3DA2C3FA194456760004
          070C13121224797979B0E6E6E6FFEFEFEFFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9
          E9FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9E9FFEBEBEBFFEAEAEAFFE8E8
          E8FFE7E7E7FFEBEBEBFFC2C2C2FA484848760505050C12121223797979B0E7E7
          E7FFEFEFEFFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE8E8E8FFE8E8E8FFE8E8
          E8FFE9E9E9FFE9E9E9FFEBEBEBFFEAE9E9FFE8E8E8FFE7E7E7FFEBEBEBFFC2C2
          C2FA484848760505050C12121224797979B0E6E6E6FFEFEFEFFFEBEBEBFFEBEB
          EBFFEBEBEBFFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9E9FFEBEB
          EBFFEAEAEAFFE8E8E8FFE8E8E8FFEBEBEBFFC2C2C2FA484848760505050D0000
          0000000000000000000000000000000000000C2D3F6139839BC84495AFD74FA7
          BFE757B4CDED5CBCD4F15FC0D7F761C3DBFF61C3DAFF61C3DAFF61C3DAFF61C3
          DAFF61C3DAFF61C3DBFF5FC0D9F85FC0D6F35EBBD4EF58B4CBEA52A9C3E7327D
          9AC90317233A0A2B3C5C3B849DC84495AFD74FA7BFE757B4CDED5CBCD4F15FC0
          D7F761C3DAFF61C3DAFF61C3DAFF61C3DAFF61C3DAFF61C3DAFF61C3DBFF60C1
          D9F85FC0D6F35EBBD4EF58B4CBEA51A9C3E7327D9AC90316243A2E2D2D5C9090
          90C8AEAEAED7C1C2C1E7D4D4D4EDE0E0E0F1E7E7E7F7ECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFEBEBEBFFE7E6E6F8E3E4E4F3DADADAEFCECE
          CEEAC3C3C3E7888888C81919193A2D2D2D5C909090C8AEAEAED7C2C2C2E7D4D4
          D4EDE0E0E0F1E7E7E7F7ECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFEBEBEBFFE6E6E6F8E3E4E4F3DADADAEFCECECEEAC3C3C3E7888888C81919
          193A2D2D2D5C909090C8AEAEAED7C1C2C1E7D4D4D4EDE0E0E0F1E7E7E7F7ECEC
          ECFFECECECFFECECECFFECECECFFECECECFFECECECFFEBEBEBFFE7E6E6F8E3E4
          E4F3DBDBDBEFCECECEEAC3C3C3E7888888C91A1A1A3D00000000000000000000
          00000000000000000000020A0E18040C121E09192330112730431836445E1F4A
          5B792C5E739B52A0BBE867C5DCFF66C3DAFF66C3DAFF66C3DAFF66C3DBFF4590
          ADDA2E637AA0245263831A3E4F69142E3B510D212B3B0A1C2433020C121D0108
          0D16040C121E09192330112730431836445E1F4A5B792C5E739B52A0BBE867C5
          DCFF66C3DAFF66C3DAFF66C3DAFF66C3DAFF4590ADDA30637AA0255263831A3E
          4F69152E3B510D212B3B0A1C2533030B131D0A0A09160B0B0B1E191919302A2A
          2A433C3C3C5E545454796969699BBCBCBCE8F2F2F2FFF0F0F0FFF0F0F0FFF1F1
          F1FFEEEEEEFFA8A8A8DA717171A05C5C5C8345454569313131512323233B1E1E
          1E320D0D0D1D090909160B0B0B1E191919302A2A2A433C3C3C5E545454796A6A
          6A9BBCBCBCE8F1F1F2FFF0F0F0FFF0F0F0FFF1F1F1FFEEEEEEFFA7A7A7DB7171
          719F5C5C5C8345454569313131512323233B1D1D1D320D0D0D1D090909160B0B
          0B1E191919302A2A2A433C3C3C5E5454547969696A9BBCBCBCE8F1F1F1FFF0F0
          F0FFF0F0F0FFF1F1F1FFEEEEEEFFA8A8A8DA717171A05C5C5C83454545693131
          31512323233B1D1D1D330D0D0D1D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000051F47
          5F8467BCD7FE6BC4DBFF6AC3DAFF6CC5DDFF5DB1CBF30B24324E000001070000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000051F475F8467BCD7FE6BC4DBFF6AC3
          DAFF6CC5DDFF5DB1CBF30B24324E000001070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000551515184EAEAEAFEF4F5F4FFF4F4F4FFF6F6F6FFD6D5D6F32525
          254E000000070000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000550505084E9E9
          EAFEF4F5F4FFF4F4F4FFF6F6F6FFD7D5D7F32525254E00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000551515184E9E9E9FEF4F5F4FFF4F4F4FFF6F6
          F6FFD5D5D5F32626264E00000007000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000060F1A549AB5E172C5
          DEFF70C3DBFF72C5DEFF357088B4000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000050F1A5399B5E272C5DEFF70C3DBFF72C5DEFF366F
          88B5000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          041ABCBCBCE2FAFAFAFFF7F7F7FFF9F9F9FF838383B400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000505051ABCBCBCE1FBFBFBFFF7F7
          F7FFF9F9F9FF838383B400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000404041ABCBCBCE2FBFBFBFFF7F7F7FFF9F9F9FF838383B50000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000024485F8375C2DBFE77C4DCFF66B0
          CBF50C1F2A410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000023485F8475C2DBFE77C4DCFF65B0CCF60C1E2940000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000056565684F7F7
          F7FEFBFBFBFFDEDEDEF623232341000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000056565584F8F8F8FEFBFBFBFFDDDEDEF52424
          2441000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000056565684F8F8F8FEFBFBFBFFDEDEDEF62323234100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000060E14205B9CB6E37FCAE2FF37687FAC010103070000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000060E
          141F5C9CB6E380CBE2FF38687FAB010103070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000010101020C4C4C4E3FFFFFFFF8383
          83AB010101070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001010101FC5C5C5E3FEFEFEFF838282AC00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F0F0F1FC5C5
          C5E3FEFEFEFF838383AB01010107000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000000000000000000
          0000000000012E50658769ACCAF4122430440000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000000000000000000000000000012E52658769AC
          CAF4132430430000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000000000000000000000000000167676787DCDCDCF32E2E2E44000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000000000000000000000000
          000167676787DBDBDBF32E2D2D44000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000000000000000000000000000168686887DBDBDBF42E2E
          2E43000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000001010200111B2D0006090E000000020000000000000000101E
          2737254A628A0105080F0000000000000000000000010004070C000C15230000
          0002000000000000000000000000000000000000000000000000010101021313
          132D0606060E000000020000000000000000101F2737254A628A0105080F0000
          000000000000000000010505050C0F0F0F230000000200000000000000000000
          0000000000000000000000000000010101021313132D0606060E000000020000
          000000000000282828366060608A0606060F0000000000000000000000010505
          050C0E0E0E230000000100000000000000000000000000000000000000000000
          0000010101021313132D0606060E000000020000000000000000282828376060
          608A0606060F0000000000000000000000010505050C0F0F0F23000000010000
          00000000000000000000000000000000000000000000010101021313132D0606
          060E000000020000000000000000272727376060608A0707070F000000000000
          0000000000010505050C0E0E0E24000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0204012F4B7B031E2F4800060B140000000000000000050D121B081A263C0000
          0103000000000000000000050A120219283F0128406900000202000000000000
          0000000000000000000000000000000000000001030401304B7B031E2F480006
          0B140000000000000000040D121A0719263C0000010300000000000000000005
          0A12021A283F0128406900000202000000000000000000000000000000000000
          00000000000000010204012F4B7B031E2F4800060B140000000000000000040D
          121B0619263B00000002000000000000000000050A12021A283F012840690000
          0202000000000000000000000000000000000000000000000000010101043434
          347B21212148080808140000000000000000050C121B0819263C000000020000
          000000000000060606121C1C1C3F2C2C2C690000000200000000000000000000
          0000000000000000000000000000010101043434347B21212148080808140000
          0000000000001010101A2020203C000000030000000000000000060606121C1C
          1C3F2C2C2C6A0000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000010204547DC01398
          B9E2054C6795011622370003080F0000000000000000000000000003080F0114
          20340447618D0F90AFDA034E72B3000001020000000000000000000000000000
          000000000000000000000000010204567EC01398B9E2064C6795011621370003
          070F0000000000000000000000000003080F011420340646618D1090B1DA034E
          72B4000001020000000000000000000000000000000000000000000000000000
          010204547DC01398B9E2064C6795011621360003070F00000000000000000000
          00000003070F011420340445618D0F90AFDA034D72B400000102000000000000
          000000000000000000000000000000000000000000025A5A5AC08E8E8EE24D4D
          4D95181818360404040F0000000000000000000000000404040F161616344848
          488D868686DA515151B300000002000000000000000000000000000000000000
          00000000000000000002595959C08E8E8EE24D4D4D95181818370404040F0000
          000000000000000000000505050F161616344848488D858585DA515151B30000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000033C578319CEECFF16BEDEFF0A88
          ABE1023D58830010192800050A1300111C2B023D57840985AADF16BCDBFF17CA
          E9FF03334D750000000000000000000000000000000000000000000000000000
          000000000000033C56841ACEECFF17BEDEFF0A88AAE1023D5783001019280005
          0A1300111C2C023D57840985AADF17BDDCFF17CBE9FF03334D75000000000000
          0000000000000000000000000000000000000000000000000000033C57831ACE
          ECFF17BEDEFF0A88AAE1023D57830010192800050A1300111C2B023D57840985
          AADF16BDDBFF17CAE9FF03344D75000000000000000000000000000000000000
          00000000000000000000000000003F3F3F83BDBDBDFFB2B2B2FF868686E14141
          418311111128060606131313132B41414184858585DFB0B0B0FFBBBBBBFF3737
          3775000000000000000000000000000000000000000000000000000000000000
          00003F3F3F84BEBEBEFFB2B2B2FF868686E14141418311111128060606131313
          132B42424284858585DFB0B0B0FFBBBBBBFF3737377500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000123375A0AB1D4FF0FC3E0FF0EC5E4FF08B3D7FF0072
          99D50045629202779DDA08B4D8FF0EC4E4FF0EC4E1FF08A9CEFF011C2E4B0000
          0000000000000000000000000000000000000000000000000000000000000123
          375909B1D4FF0EC3E0FF0EC5E4FF08B3D7FF007299D50045629202779DDB08B4
          D8FF0EC4E4FF0EC5E1FF08AACFFF011C2D490000000000000000000000000000
          0000000000000000000000000000000000000123385A09B1D4FF0EC3E1FF0EC5
          E4FF08B3D7FF007299D50045629202779DDA08B4D8FF0EC4E4FF0EC5E1FF08A9
          CFFF011B2D4A0000000000000000000000000000000000000000000000000000
          0000000000002828285AB1B1B1FFC0C0C0FFC2C2C2FFB4B4B4FF787878D54A4A
          4A927C7C7CDAB4B4B4FFC1C1C1FFC0C0C0FFA9A9A9FF2020204B000000000000
          00000000000000000000000000000000000000000000000000002828285AB0B0
          B0FFC0C0C0FFC2C2C2FFB4B4B4FF787878D54A4A4A927C7C7CDAB4B4B4FFC1C1
          C1FFC0C0C0FFA9A9A9FF20202049000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000001622370097C1FD00B6D6FF01B3D5FF01B6D8FF02B8DBFF00B3DAFF03B8
          DBFF01B6D7FF01B3D5FF01B7D8FF008BB5F6000F192800000000000000000000
          00000000000000000000000000000000000000000000001522370096C1FE00B6
          D6FF01B3D5FF01B6D8FF02B8DBFF00B3DAFF03B8DBFF01B7D7FF01B3D5FF01B6
          D8FF008BB5F7000F192700000000000000000000000000000000000000000000
          00000000000000000000001622370096C0FD00B6D7FF01B3D5FF01B6D8FF02B8
          DBFF00B3DAFF03B8DBFF01B7D7FF01B3D5FF01B6D8FF008BB5F7000F19280000
          0000000000000000000000000000000000000000000000000000000000001818
          1837A3A3A3FDC0C0C0FFBEBEBEFFC1C1C1FFC2C2C2FFBFBFBFFFC3C3C3FFC1C1
          C1FFBEBEBEFFC1C1C1FF969696F6121212280000000000000000000000000000
          00000000000000000000000000000000000019191937A1A1A1FEC0C0C0FFBEBE
          BEFFC1C1C1FFC2C2C2FFBFBFBFFFC3C3C3FFC1C1C1FFBEBEBEFFC1C1C1FF9595
          95F7121212270000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000C121E007B
          A7EC00ADD2FF00A8CEFF00A8CEFF00A9CEFF00AAD0FF00A9CEFF00A8CEFF00A8
          CEFF00ADD2FF006C96D500060D17000000000000000000000000000000000000
          0000000000000000000000000000000B121E007AA7EC00ADD1FF00A8CEFF00A8
          CEFF00A9CEFF00AAD0FF00A9CEFF00A8CEFF00A8CEFF00ADD2FF006B95D60007
          0C17000000000000000000000000000000000000000000000000000000000000
          0000000C121E007BA7EC00ADD2FF00A8CEFF00A8CEFF00A9CEFF00AAD0FF00A9
          CEFF00A8CEFF00A8CEFF00ADD2FF006B96D600070D1700000000000000000000
          000000000000000000000000000000000000000000000C0C0C1F8D8D8DECC5C5
          C5FFC1C1C1FFC0C0C0FFC1C1C1FFC2C2C2FFC1C1C1FFC0C0C0FFC1C1C1FFC6C6
          C6FF7C7C7CD50808081700000000000000000000000000000000000000000000
          000000000000000000000C0C0C1E8C8C8CECC5C5C5FFC1C1C1FFC0C0C0FFC1C1
          C1FFC2C2C2FFC1C1C1FFC0C0C0FFC1C1C1FFC6C6C6FF7C7C7CD6080808170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000003091200618BCF00A1CBFF009E
          C7FF009EC7FF009FC7FF009EC7FF009FC7FF009EC7FF009EC7FF00A2CBFF0051
          75B00001050D0000000000000000000000000000000000000000000000000000
          0000000000000003091200618CCF00A1CAFF009EC7FF009EC7FF009FC7FF009E
          C7FF009FC7FF009EC7FF009EC7FF00A2CBFF005175B00001040D000000000000
          0000000000000000000000000000000000000000000000000000000309120061
          8CCF00A1CBFF009EC7FF009EC7FF009FC7FF009EC7FF009FC7FF009EC7FF009E
          C7FF00A2CBFF005177B10001040C000000000000000000000000000000000000
          000000000000000000000000000004040413767676CFC8C8C8FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC7C7C7FF616161B00000
          000C000000000000000000000000000000000000000000000000000000000000
          000004040412757575CFC8C8C8FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC7C7C7FF616161B00000000D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001061A2539096D96DA0295C3FF0092C0FF0092C0FF0093
          BFFF0094C0FF0094C0FF0094C0FF0094C0FF0094C3FF00537AB9000911210000
          000000000000000000000000000000000000000000000000000000000001061B
          2639096D97DA0295C3FF0092C0FF0092C0FF0093BFFF0094C0FF0094C0FF0094
          C0FF0094C0FF0094C3FF00547ABA000912210000000000000000000000000000
          000000000000000000000000000000000001061A2539096D97D90295C4FF0092
          C0FF0092C0FF0093BFFF0094C0FF0094C0FF0094C0FF0094C0FF0095C4FF0053
          7AB9000911210000000000000000000000000000000000000000000000000000
          0000000000011919193A868686DBC9C9C9FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7
          C7FFC7C7C7FFC7C7C7FFC8C8C8FFC7C7C7FF6A6A6AB90A0A0A22000000000000
          0000000000000000000000000000000000000000000000000001191919398585
          85DAC9C9C9FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8
          C8FFC7C7C7FF6A6A6AB90A0A0A22000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000103071E
          2638308AA2CD3EBDDAFF22A4CAFF1297C1FF078CBCFF0489B9FF0188B9FF0087
          B9FF0087B8FF0087B8FF0088B9FF0082B6FF004366A20009111D000000000000
          000000000000000000000000000000000103071E26383089A2CD3EBEDAFF22A4
          CAFF1197C1FF078CBCFF0489B9FF0188B9FF0087B9FF0087B8FF0087B8FF0088
          B9FF0082B5FF004367A20009111D000000000000000000000000000000000000
          000000000103071E2638308AA2CD3EBEDAFF22A4CAFF1197C1FF078CBCFF0489
          B9FF0188B9FF0087B9FF0087B8FF0087B8FF0089B9FF0082B5FF004367A20009
          111D0000000000000000000000000000000000000000000000031D1D1D388989
          89CDD4D4D4FFD0D0D0FFCCCDCDFFCACACAFFCACACAFFC9C9C9FFC8C8C8FFC8C8
          C8FFC8C8C8FFCACACAFFBABABAFF595959A20A0A0A1D00000000000000000000
          00000000000000000000000000031D1D1D388A8A8ACDD5D5D5FFD0D0D0FFCCCD
          CDFFCACACAFFCACACAFFC9C9C9FFC8C8C8FFC8C8C8FFC8C8C8FFCACACAFFBABA
          BAFF595959A20A0A0A1D00000000000000000000000000000000000000000000
          00000000000000000000000000000001020409232E43338CA6D05ED2E8FF5FD0
          E2FF5CCDE1FF4ABED8FF36AECEFF27A0C7FF1893BEFF0C89B9FF0983B5FF0681
          B4FF037FB3FF0280B4FF017BB3FF004065A30009122000000000000000000000
          00000000020409232E43338CA6D05ED2E8FF5FD0E2FF5CCDE1FF49BED8FF36AE
          CEFF27A0C7FF1893BEFF0C89B9FF0983B5FF0681B4FF037FB3FF0280B4FF017B
          B3FF004065A3000912200000000000000000000000000001020409222F43338C
          A6D05ED2E8FF5FD0E2FF5CCDE1FF49BED8FF36ADCEFF27A0C7FF1893BEFF0C89
          B9FF0983B5FF0681B4FF037FB3FF0280B4FF017BB3FF004065A3000912200000
          000000000000000000000000000422222243919191D0E4E4E4FFE2E2E2FFE0E0
          E0FFDDDCDCFFD8D8D8FFD5D5D5FFD2D2D2FFCFCFCFFFCDCDCDFFCCCCCCFFCCCC
          CCFFD0D0D0FFC0C0C0FF595959A30A0A0A200000000000000000000000000000
          000422222243919191D0E4E4E4FFE2E2E2FFE0E0E0FFDDDCDCFFD8D8D8FFD5D5
          D5FFD2D2D2FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFD0D0D0FFC0C0C0FF5959
          59A30A0A0A200000000000000000000000000000000000000000000000000000
          0000010204060E28344A3C91ABD65FD0E7FF5ECAE0FF5CC7DEFF5DC7DEFF60CB
          E0FF62CDE1FF5BC7DDFF52BED8FF4AB6D3FF40ADCEFF33A3C7FF2799C1FF2190
          BCFF1B8DBCFF1486B9FF0F4F70A5050F162200000000010203050E27344A3C90
          ABD65FD0E7FF5ECAE0FF5CC7DEFF5DC7DEFF60CBE0FF62CDE1FF5BC7DDFF52BE
          D8FF49B6D3FF40ADCEFF33A3C7FF2799C1FF2190BCFF1C8DBCFF1486B9FF0F4F
          70A5050F162200000000010203050D28344A3C91ADD65FD0E7FF5ECAE0FF5CC7
          DEFF5DC7DEFF60CBE0FF62CCE1FF5BC7DDFF52BED8FF4AB6D3FF40ADCEFF33A3
          C7FF2799C1FF2190BCFF1C8DBCFF1486B9FF104F70A5050F1622000000000202
          02052929294A9E9E9ED6EBEBEBFFE8E8E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE4E4E4FFE3E3E3FFE1E1E1FFDDDDDDFFDBDBDBFFD9D9D9FFD6D6D6FFDBDB
          DBFFC7C7C7FF646464A50F0F0F2200000000020202052828284A9E9E9ED6EBEB
          EBFFE8E8E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE4E4E4FFE3E3E3FFE1E1
          E1FFDDDDDDFFDBDBDBFFD9D9D9FFD6D6D6FFDBDBDBFFC7C8C7FF646464A50F0F
          0F22000000000000000000000000000000000000000000000000061B293F3C8B
          A8D960CAE2FF5FC6DEFF5FC6DEFF5FC6DEFF5FC6DEFF5EC5DCFF5EC3DAFF5FC5
          DCFF62C7DDFF63C8DDFF63C7DDFF61C7DDFF5FC6DDFF5DC4DCFF5CC2DCFF59C3
          DCFF54BDDBFF29607AA502090E19061A263B3C8CA8D95FC9E2FF5FC6DEFF5FC6
          DEFF5FC6DEFF5FC6DEFF5EC5DDFF5EC3DAFF5FC5DCFF62C7DDFF63C8DDFF63C7
          DDFF61C7DDFF5FC6DDFF5DC4DCFF5CC2DCFF59C3DCFF54BDDBFF28607AA40209
          0E19061A263B3B8BA8D95FCAE2FF5FC6DEFF5FC6DEFF5FC6DEFF5FC6DEFF5EC5
          DCFF5EC3DAFF5FC5DCFF62C7DDFF63C8DDFF63C7DDFF61C7DDFF5FC6DDFF5DC4
          DCFF5CC2DCFF59C3DCFF55BDDBFF27607AA502090E1A1C1B1B3B979797D9E9E9
          E9FFEBEBEBFFEBEBEBFFECECECFFECECECFFEBEBEBFFE9E9E9FFE9E9E9FFE9E9
          E9FFEAEAEAFFEAEAEAFFECECECFFECECECFFECECECFFEAEAEAFFEEEEEEFFDDDD
          DDFF686868A50B0B0B191B1B1B3B979797D9E9E9E9FFEBEBEBFFEBEBEBFFECEC
          ECFFECECECFFEBEBEBFFE9E9E9FFE9E9E9FFE9E9E9FFEAEAEAFFEAEAEAFFECEC
          ECFFECECECFFECECECFFEAEAEAFFEEEEEEFFDDDDDDFF686868A50B0B0B1C0000
          0000000000000000000000000000000000000A32476B306C80A13A7B8FB4408A
          9FC14996ADD14EA1B9E254AEC7ED5FBED7FD62C3DAFF62C3DAFF62C3DAFF62C3
          DAFF63C3DAFF5FBDD7FA57B1CBEE51A8C1E74E9CB4DA4893A9C942889FBF3575
          8DB9061E2D47082F4366306C7FA13A798FB4408AA0C14996ADD14EA1B9E254AE
          C7ED5FBED8FD62C3DAFF62C3DAFF62C3DAFF62C3DAFF63C3DAFF5FBDD7FA57B1
          CBEE51A8C1E74E9CB4DA4893A9C942889FBF34758DB9061E2D47082E4366306C
          80A13A798FB4408A9FC14996ADD14EA1B9E254AEC7ED5FBED7FD62C3DAFF62C3
          DAFF62C3DAFF62C3DAFF63C3DAFF5FBDD7FA57B1CBEE51A8C1E74E9CB4DA4893
          A9C940889FBF35758DB9071E2D4734333366747474A1898989B49F9F9FC1B0B0
          B0D1BFBFBFE2CECECEEDE6E6E6FDEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEE
          EEFFE3E3E3FAD3D3D3EEC5C5C5E7B8B8B8DAA9A9A9C99D9D9DBF808080B92222
          224733333366747474A1898989B49F9F9FC1B0B0B0D1BFBFBFE2CECECEEDE6E6
          E6FDEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFE3E3E3FBD3D3D3EEC5C5
          C5E7B8B8B8DAA9A9A9C99D9D9DBF808080B92222224800000000000000000000
          0000000000000000000000000000000000000000000100040B1908162137112C
          3B541D445470438BA6D168C4DCFF67C3DAFF67C3DAFF67C3DAFF66C0D9FF3874
          8AB6204959741335445D0C1E2D46020D16280000051000000000000000000000
          0000000000000000000100040B1908162137112C3B541D445470438DA6D168C4
          DCFF67C3DAFF67C3DAFF67C3DAFF66C0D8FF38748CB6204959741335445D0C1E
          2D46020D16280000051000000000000000000000000000000000000000010003
          0B1908162137112C3B541D445470438BA6D168C4DCFF67C3DAFF67C3DAFF67C3
          DAFF66C0D8FF38748AB6204959741335445D0C1E2D46020D1628000005100000
          00000000000000000000000000000000000101010119151515372E2E2E544A4A
          4A70A2A2A2D1F1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFECECECFF838383B65050
          50743838385D1E1E1E460B0B0B28000000100000000000000000000000000000
          00000000000101010119151515372E2E2E544A4A4A70A4A4A4D1F1F1F1FFF1F1
          F1FFF1F1F1FFF2F2F2FFECECECFF838383B7505050743838385D1E1E1E460B0B
          0B28000000100000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000112D
          3E5D63B8D0F86DC4DCFF6CC3DBFF6EC5DDFF56A0BCE8010A1327000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000112E3E5D63B8D0F86DC4DCFF6CC3
          DBFF6EC5DDFF56A3BBE8010A1427000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000112D3E5D63B8D0F86DC4DCFF6CC3DBFF6EC5DDFF56A3BBE8010A
          1327000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003232325DE3E3
          E3F8F6F6F6FFF5F5F5FFF8F8F8FFC4C4C4E80A0A0A2700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003232325DE3E3E3F8F6F6F6FFF5F5F5FFF8F8
          F8FFC4C4C4E80A0A0A2700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000030A44859ECB74C5
          DEFF72C2DBFF72C3DCFF2852688F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000030A44869ECB74C5DEFF72C2DBFF72C3DCFF2852
          6890000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          030A44859ECB74C5DEFF72C2DBFF72C3DCFF2853688F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000AA1A1A1CBFCFCFCFFF8F8
          F8FFF7F7F7FF6363638F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000A9F9F9FCBFCFCFCFFF8F8F8FFF7F7F7FF6363638F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001531426171BDD6FC7AC7DEFF5C9F
          BBE8050F16250000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001531426171BDD7FC7AC7DEFF5B9EBBE805101625000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001631426171BD
          D7FC7AC7DEFF5B9FBBE8050F1625000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B3B3B61F0F0F0FCFDFDFDFFC8C8C8E81111
          1125000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003A3A3A61F0F0F0FCFDFDFDFFC8C8C8E81111112500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000002040A104E87A2CF7EC8E2FF2A4F6487000001030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000204
          09104E87A2CF7EC8E1FF2B4F6487000001030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020409104E87A2CF7EC8E1FF2B50
          6287000001030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000005050510ABABABCFFBFBFBFF6464648701010103000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000005050510ABAB
          ABCFFBFBFBFF6464648701010103000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010003050A00000000000000000000
          000000000001253E4F6B5794AFDC0B1820300000000000000000000000000000
          0000000203070000000000000000000000000000000000000000000000000000
          0000000000010003050A00000000000000000000000000000001253E506B5693
          B1DC0B18202F0000000000000000000000000000000000020307000000000000
          00000000000000000000000000000000000000000000000000010404040A0000
          0000000000000000000000000001253F506B5693B1DC0B181F2F000000000000
          0000000000000000000002020206000000000000000000000000000000000000
          00000000000000000000000000010303030A0000000000000000000000000000
          00014F4F4F6BBFBFBFDC1E1E1E30000000000000000000000000000000000202
          0207000000000000000000000000000000000000000000000000000000000000
          00010404040A000000000000000000000000000000014F4F4F6BBFBFBFDC1E1E
          1E2F000000000000000000000000000000000202020700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000102030023385D010F17240000020600000000000000000811
          1A26122C3D5E00030407000000000000000000000104000D1420001D2D4C0001
          0102000000000000000000000000000000000000000000000000000102030022
          385D000F172400000206000000000000000008121A26112B3E5E000204070000
          00000000000000000104000D1420001D2D4C0001010200000000000000000000
          0000000000000000000000000000010101032727275D10101024010101060000
          00000000000008131A25112B3E5D000203070000000000000000000000040E0E
          0E201F1F1F4B0101010200000000000000000000000000000000000000000000
          0000010101032727275D10101024010101060000000000000000171717263737
          375E020202070000000000000000000000040E0E0E201F1F1F4C010101020000
          00000000000000000000000000000000000000000000010101032727275D1010
          1024010101060000000000000000171717253737375E02020207000000000000
          0000000000040E0E0E201F1F1F4C010101020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000003C5D940A64
          83B2001E335900000005000000000000000002090F1A00000204000000000000
          00000000020A00253D64075D7EB200253D650000000000000000000000000000
          000000000000000000000000000000020407014C73B1065977A4001324430000
          0000000000000001010102090E19000000010000000000000000000009170233
          4E7805597BB60017254100000000000000000000000000000000000000000000
          000000000000000C1422045A81BD054B68940009172F00000000000000000103
          050801070B140000000000000000000000000007122704435F8C035175B0000B
          121E00000000000000000000000000000000000000000000000000000000001A
          2B46076387C0023C568200020B1D0000000000000000010609100004080D0000
          00000000000000000000000E1F3B07506D9B024468A300010305000000000000
          000000000000000000000000000000000000000000003030306F636363BD3030
          306F0101010E000000000000000001080D170002040800000000000000000000
          00011E1E1E50595959A93B3B3B88000000000000000000000000000000000000
          000000000000000000000000000000000000003251841AB9D8FF1399B9E20655
          75A6001625400000000400000000000000000000040B011E3354065F80B315A1
          C2E7139FC1EF00192F5400000000000000000000000000000000000000000000
          00000000000000000105044D71AA1BBEDCFC108DAED903456393000D192D0000
          0000000000000000000000030A15012940690A6E8EC017ADCCEF0D85A7DA000B
          1932000000000000000000000000000000000000000000000000000000000006
          0C1B096C90C719BBDAF80E7FA1D0023853800007101E00000000000000000000
          00000008101F0234507D0C7C9CCC17B6D4F6076487BC00040A15000000000000
          00000000000000000000000000000000000000000000000F1E390E8BAFE119B2
          D1F2097293C5012B436B00030913000000000000000000000001000D1A2D0342
          5F900E89A9D519B7D8FA0445679C000001030000000000000000000000000000
          00000000000000000000000000002525255E9B9B9BF59B9B9BEB646464B72323
          23560000000A00000000000000000000000518181840535353A28C8C8CDEA5A5
          A5FD313131770000000000000000000000000000000000000000000000000000
          00000000000000000000001A305610B5D3FC17C8E5FF11B5D4FD0788A9D80146
          629200132035001C2D47025475A70993B6E012B9DAFF17CAE8FF0B92B2E00007
          142B000000000000000000000000000000000000000000000000000000000000
          000202324D7913C3E2FF16C6E2FF0EADCDF7067C9DD00138527C00101C2F0125
          385A036283B90C9DBEE813BEDEFF15CBE9FF07718EBC00010815000000000000
          000000000000000000000000000000000000000000000001030C0554719E15CA
          E9FF14C2E1FF0CA6C7F1046E90C5012D436800101A2D0130476E047092C70CA6
          C7F014C1E0FF14C8E7FF054A6791000001080000000000000000000000000000
          000000000000000000000000000000020C1F087997C416CCEAFF14BFDFFF0C9F
          C0E9036082B60122335400111D31013B5582067CA0D00EADCDF615C5E2FF11BE
          DEFF022C436A0000000000000000000000000000000000000000000000000000
          00000000000010101038949494E4BFBFBFFFB3B3B3FF939393E0575757A41C1C
          1C42181818394C4C4C95878787D7ADADADFCBCBCBCFFA7A7A7FA191919450000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000C18300396BEF707BCDBFF07BEDDFF05BBDCFF03A6CAF5007BA0D30185
          A8DA03AED0FC06BDDEFF07BEDCFF07BCDCFF027095D00001050C000000000000
          00000000000000000000000000000000000000000000000000000020335104A8
          CEFF08BDDBFF07BEDDFF05B9DAFF029DC0EE00779CD1018DB1E104B2D5FF07BE
          DEFF07BEDDFF05B6DAFF015371A0000001030000000000000000000000000000
          000000000000000000000000000000000003013C567E05B4D9FF07BEDCFF06BE
          DDFF05B6D8FF0295B9E600769BD00298BAE905B6D8FF06BEDDFF07BFDCFF04AD
          D3FF01334A6E0000000100000000000000000000000000000000000000000000
          0000000000000000030A015D7DAE06B9DDFF07BEDCFF07BEDEFF04B2D4FF018A
          ADDF00789DD203A0C4F005B9DBFF07BEDDFF07BEDDFF039FC8FF001A28400000
          0000000000000000000000000000000000000000000000000000000000000404
          0417828282D8BEBEBEFFBEBEBFFFBEBEBEFFAFAFAFFB888888D8858585D5ABAB
          ABF7BDBDBEFFBEBEBFFFBEBEBEFF919191F20909091C00000000000000000000
          000000000000000000000000000000000000000000000000000000040810007B
          A6EB00B2D4FF00B0D3FF01B2D4FF01B5D7FF00B1D6FF00B2D5FF01B5D6FF01B1
          D4FF00B1D3FF00AED2FF005277B2000000000000000000000000000000000000
          00000000000000000000000000000000000000131E30008FB9FB00B3D5FF00B0
          D3FF01B2D4FF01B4D7FF00B0D6FF00B3D7FF01B4D6FF00B0D3FF00B2D5FF00A3
          CAFE003955820000000000000000000000000000000000000000000000000000
          0000000000000000000000293D5F009EC8FF00B3D5FF00B0D3FF01B3D5FF01B3
          D7FF00B0D5FF01B4D7FF01B3D5FF00B0D3FF00B4D6FF0094BEFA002133500000
          0000000000000000000000000000000000000000000000000000000000000000
          00010046639400A9D1FF00B2D4FF00B0D3FF01B4D6FF00B2D7FF00B0D5FF01B4
          D7FF01B2D4FF00B0D3FF00B4D6FF0080ACEF000D162300000000000000000000
          00000000000000000000000000000000000000000000000000036B6B6BC5BEBE
          BEFFBFBFC0FFBFBFBFFFC2C2C2FFC0C0C0FFC0C0C0FFC2C2C2FFC0C0C0FFBFBF
          BFFFC0C0C0FF777777D801010105000000000000000000000000000000000000
          00000000000000000000000000000000000000000103005D87CA00A9CDFF00A6
          CCFF00A5CCFF00A5CCFF00A8CEFF00A7CDFF00A5CCFF00A5CCFF00A7CDFF00A0
          C5FD003554890000000000000000000000000000000000000000000000000000
          00000000000000000000000B111E00749EE300AAD0FF00A6CCFF00A5CCFF00A6
          CCFF00A8CEFF00A7CDFF00A5CCFF00A5CCFF00A8CFFF0090B8F4002339610000
          0000000000000000000000000000000000000000000000000000000000000000
          0000001B2B450086B2F300AAD0FF00A6CCFF00A5CCFF00A6CDFF00A8CEFF00A6
          CDFF00A5CCFF00A6CCFF00AAD1FF007BA5E40013203A00000000000000000000
          000000000000000000000000000000000000000000000000000000314A760099
          C1FB00A8CFFF00A5CCFF00A5CCFF00A7CDFF00A8CEFF00A5CCFF00A5CCFF00A6
          CCFF00ABD1FF00628CCC00060D17000000000000000000000000000000000000
          000000000000000000000000000000000000515151A3BDBDBDFFC2C2C2FFC1C1
          C1FFC1C1C1FFC3C3C3FFC3C3C3FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FF5858
          58AF000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000004267A8009BC5FF009BC5FF009CC5FF009C
          C5FF009CC5FF009CC5FF009CC5FF009CC5FF009CC6FF008FBAF8001C32580000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000610005982C7009EC9FF009BC5FF009CC5FF009CC5FF009CC5FF009C
          C5FF009CC5FF009CC5FF009EC9FF007AA5E2000E1D3900000000000000000000
          0000000000000000000000000000000000000000000000000000000B1930006F
          9BDE009EC9FF009CC5FF009CC5FF009CC5FF009CC5FF009CC5FF009CC5FF009C
          C5FF00A0CBFF006289C400040D1C000000000000000000000000000000000000
          000000000000000000000000000000000000001C31590084B0F2009DC8FF009C
          C5FF009CC5FF009CC5FF009CC5FF009CC5FF009CC5FF009CC5FF009ECBFF0048
          69A2000002060000000000000000000000000000000000000000000000000000
          0000000000000000000033333381BABABAFDC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFBFBFBFFF3838387E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000061A263C14739BDC0493C1FF008FBDFF008EBCFF008FBEFF0092BFFF0093
          BFFF0093BFFF0092BFFF0092BFFF008AB9FD003D5F9D0002060C000000000000
          00000000000000000000000000000000000000000000000000000A2A3C5B127E
          A8ED0394C1FF008EBDFF008EBDFF0090BEFF0092BFFF0093BFFF0093BFFF0092
          BFFF0094C1FF007FAFF5002C497A000000000000000000000000000000000000
          0000000000000000000000000000000001060D3C547C0E88B5F50193C1FF008E
          BCFF008EBDFF0090BEFF0093BFFF0093BFFF0093BFFF0092BFFF0094C2FF0071
          9EE8001D31540000000000000000000000000000000000000000000000000000
          00000000000000050A1511516EA00A8FBBFB0091BFFF008DBCFF008FBDFF0091
          BFFF0092BFFF0093BFFF0093BFFF0092BFFF0093C1FF00608DD600101D340000
          0000000000000000000000000000000000000000000000000000000000000D0D
          0D276E6E6EC1C3C3C3FEC6C6C6FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC3C3C3FF626262BE0606061A00000000000000000000
          00000000000000000000000000000000000000000000091F2C45368DA5CC4DC1
          DAFF38B6D4FF1EA1C7FF0F92BEFF058ABBFF0084B6FF0081B5FF0082B5FF0085
          B8FF0087B8FF0088B9FF0076A7F10038588E0004060C00000000000000000000
          00000000000000000000000000011030425E3DA1B9DF4BC2DAFF33B1D1FF1A9D
          C4FF0D90BEFF0389B9FF0083B6FF0081B4FF0083B6FF0085B8FF0087B8FF0088
          B9FF006D9DE70029426D00000001000000000000000000000000000000000000
          00000000010919475B7B43ADC5E847C1DAFF2EADCDFF169AC2FF0C8EBCFF0188
          B8FF0083B5FF0081B4FF0083B6FF0086B8FF0088B9FF0086B7FF00618ED8001D
          2F5000000000000000000000000000000000000000000000000000030B18225F
          739749B7D0F143BDD8FF28A8CBFF1497C1FF098EBCFF0087B8FF0082B5FF0081
          B4FF0085B6FF0086B8FF0087B8FF0081B3FD00557FC500111E33000000000000
          0000000000000000000000000000000000001010102D777777B2CACACAF9D6D6
          D6FFD0D0D0FFCCCDCCFFCACBCAFFC8C8C8FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9
          C9FFC9C9C9FFB6B6B6F95B5B5BAB0707071E0000000000000000000000000000
          000000000000000000000B22314C3C90A9CE59CBE2FF5DCEE2FF59CBDFFF52C5
          DCFF47BBD7FF36ADCEFF26A0C6FF1C95C0FF118CBAFF0783B5FF017DB1FF0078
          AFFF0079B0FF00669EF2002D528D0000020C0000000000000000000000000000
          00031336496842A1BCE25BCEE3FF5DCDE1FF59C9DFFF51C4DBFF45B8D6FF32AA
          CCFF249DC4FF1B92BEFF0E8AB9FF0782B4FF007CB0FF0079AFFF0077AFFF005E
          93E800213E6F000000000000000000000000000000000000040D1D4C60854BB1
          CAEC5BCFE4FF5BCDE1FF57C8DEFF4FC2DAFF42B5D3FF2FA7CAFF229AC3FF1991
          BDFF0C89B7FF0680B3FF007BAFFF0078AEFF0075AEFF005486DA00142B510000
          000000000000000000000000000000040D1C27637BA050BCD3F45CCFE4FF5BCB
          E0FF56C7DEFF4DC0D9FF3DB3D1FF2CA4C9FF2098C1FF178FBCFF0A87B7FF047F
          B3FF007AAFFF0078AEFF0073ACFF004878C5000B1B3700000000000000000000
          00000000000012121231808080B7D5D5D5FBE4E4E4FFDFDFDFFFDEDEDEFFDCDD
          DCFFD9DAD9FFD5D5D5FFD2D2D2FFD0D0D0FFCECECEFFCCCCCCFFCACACAFFCDCD
          CDFFB6B6B6FB5B5B5BAB0505051F000000000000000000000000000000000D25
          35504092ABD35CC9E0FF5ECADFFF5CC7DCFF5DC8DDFF5FC9DEFF5DC8DEFF5AC6
          DCFF58C3DBFF51BED7FF46B5D2FF3DACCDFF37A5C8FF2E9FC4FF2B99C2FF2897
          C3FF2386B1F2184C6590000003090000000000000005173A4F6E48A4BEE45DCB
          E2FF5DC8DDFF5CC7DDFF5DC8DDFF5EC9DEFF5EC8DDFF5AC6DCFF57C2DAFF50BB
          D6FF44B3D1FF3DABCCFF36A4C8FF2D9EC3FF2A99C2FF2696C1FF237EA6E8143C
          4F720000000000000000000107112151688C50B1CBEF5DCBE2FF5CC7DDFF5CC7
          DDFF5DC8DEFF5FC9DEFF5DC7DDFF59C5DBFF55C0DAFF4EBAD5FF41B1D0FF3CA9
          CBFF33A2C6FF2C9CC3FF2999C2FF2694C0FF21749BDA0E2B3952000000000000
          0000000812202C6781A953BDD4F75ECBE1FF5CC7DDFF5CC7DDFF5EC9DEFF5FC9
          DEFF5CC7DDFF59C3DBFF54C0D8FF4CB8D4FF3FAFCFFF3BA8CAFF30A1C6FF2C9B
          C2FF2998C2FF2691BDFF1E698BC6071A25370000000000000000151515358888
          88BFDCDCDCFCE9E9E9FFE5E5E5FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4
          E4FFE3E3E3FFE0E0E0FFDFDFDFFFDCDDDDFFDADADAFFDADADAFFDDDDDDFFC4C4
          C4FA69696AAC0A0A0A1D00000000000000000B2D3F5E489BB8E163CEE7FF64CD
          E4FF62C9E0FF61C8DFFF61C8DFFF5FC6DDFF5FC4DAFF60C5DBFF61C6DCFF61C5
          DBFF60C5DBFF5FC5DCFF60C6DDFF5FC6DEFF5DC4DEFF5BC3DDFF5AC4E0FF54B7
          D1FD285E749900070F1B1641567A52ACC8F065CFE9FF64CBE3FF62C8E1FF61C8
          E0FF61C8DFFF60C6DCFF5FC4DAFF60C5DBFF62C6DCFF61C5DBFF5FC5DBFF5FC5
          DBFF5FC7DEFF5EC6DEFF5CC3DCFF5AC3DDFF5AC4E0FF4FACC8F31C4659770008
          10202459719857BAD5FD66D0E8FF64CBE2FF61C9DFFF61C8DFFF61C8DFFF5FC5
          DBFF60C4DBFF61C5DBFF61C6DCFF60C5DBFF5FC4DBFF5FC6DDFF60C6DEFF5DC6
          DEFF5CC3DCFF5BC3DEFF5AC4E1FF489DB9E513324056000D192B31718AB65DC4
          DEFF65CFE7FF62CAE2FF61C8E0FF61C8DFFF60C8DEFF5FC5DAFF60C4DBFF61C5
          DCFF61C6DCFF60C5DBFF5FC5DBFF60C6DCFF5FC6DEFF5DC4DDFF5BC3DDFF5AC3
          DEFF5AC2DEFF3E8BA5CF091F2A3B1C1B1B3F949494D1E8E8E8FFF5F5F5FFF1F1
          F1FFF0F0F0FFEFEFEFFFEEEEEEFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEDEDEDFFEEEEEEFFEEEEEEFFF0F0F0FFF4F4F4FFE1E1E1FF7E7E
          7EB61111112500000000051C2A411E4D607E2C62779B357790BB4190ADD751A8
          C2F05AB6CFF861C2DAFF64C5DBFF62C3DAFF63C3DAFF63C3DAFF63C4DAFF65C5
          DDFF62C0D9FE5DB9D3F954ACC6F3479BB4DF3B849EC7336E86AF1C4A5D84000D
          17280A26344C215466842E667BA2367D96C14496B2DD53ABC5F25CB9D2F963C4
          DCFF63C3DBFF63C3DAFF63C3DAFF63C3DAFF63C3DAFF65C5DDFF61C0D8FC5BB7
          D1F951A9C4F14496AFDA3A8099C2306B82AC153C4E6F000B14261031415C2458
          6A8A2F6980A83A829BC7479AB5E155AEC9F55DBAD5FB64C6DDFF62C3DAFF63C3
          DAFF63C3DAFF62C3DAFF63C3DAFF65C6DDFF5FBFD7FB5AB5CEF94FA6C0EC4290
          AAD6387C95BD2C667CA60E2E3D59000D1729153B4D6A275C6E8F326E84AE3C87
          A2CB4A9FBAE757B1CBF75EBED6FC65C6DDFF62C3DAFF63C3DAFF63C3DAFF63C3
          DAFF64C5DBFF64C4DDFF5EBDD6FB58B2CCF84CA3BBE83E8BA7D1387790B9275E
          739D07202D44131415314B4B4B766A6A6A95808080B5A0A0A0D2BDBDBDEBD3D3
          D3F8E4E4E4FEEFEFEFFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEFEFEFFFE8E8
          E8FFDBDBDBF9CBCBCBF6B5B5B5E49A9A9ACC838383B35A5A5A92171717330000
          0000000204060003060C030A0F1907131A260C1E263113272E3E172F3D55306C
          82AA63BDD7FE68C4DCFF67C3DAFF66C3DAFF6BC9E0FF4F9DBAE8214C60811632
          4158132830440E21293509181F2B060F1420030A0E160004060A000203060004
          080E040C111C08161D280D202834132830431732425B3E849DC866C3DBFF67C4
          DBFF67C3DAFF66C3DAFF6BC8E0FF458BA8D81C44547116303E5612272F3F0D1F
          273308161D29050E131E02090C14000305080002040800050911050E131E0918
          1F2B0F222936142A3448173949644A9AB5E469C4DCFF67C3DAFF67C3DAFF66C3
          DAFF69C6DEFF3A7996C5193E4D67152D3C5211262D3A0C1D253108141B27040D
          121C02080B11000204070002040901070B13060F15210A1A212C10242B38152B
          384D1A44567355AAC6F469C4DBFF67C3DAFF67C3DAFF68C4DBFF64BDD6FE3168
          83AD17394861152B384D10242B390B1B232F07121925040C101A0106090F0202
          03060202020A08080816111111231E1E1E2F2A2A2A3A333333516161618CDADA
          DAFCF5F5F5FFF1F1F1FFF1F1F1FFF7F7F7FFD2D2D2F5636363953C3C3C5B2F2F
          2F49262626371B1B1B2D111111220B0B0B180505050C00000000000000000000
          00000000000000000000000000000000000000000001091A24385199B3DD6FC8
          E1FF6BC3DAFF6DC3DBFF6BC4DEFF2B596E910005091100000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000003122B3B5961B3CDF46DC5DDFF6BC2DAFF6CC4
          DBFF66BCD7FE19384A680002050B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000001061C43577B6CC2DCFF6BC2DAFF6BC3DAFF6CC4DAFF5DB0CCF80B1F
          2D44000002070000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000002050C2D5F
          769F6FC8E2FF6CC3DAFF6BC2DAFF6DC5DDFF5098B4DF06101B2D000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A1E969696C0FCFCFCFFF5F5
          F5FFF5F5F5FFF8F8F8FF929292BB0808081C0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000102052E5C72976EC0D9FC72C3DCFF75C8
          E1FF569BB6E10C19253700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000103060D407B94C174C5DDFF71C2DBFF77CAE3FF44829BC6040A
          0F18000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000030A
          101C5095B2E173C5DCFF71C2DAFF75C8E1FF31637EA800000204000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D1F2B3F5CAAC5EE75C6
          DDFF71C2DBFF71C2DBFF21495D83000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000047474769E4E4E4F7FBFBFBFFFBFBFBFFDFDF
          DFF53636365D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000A17233860A4C0E879C7E0FF74C0DBFF325C72970101
          0407000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000112B3A5771BAD5FE79C5DEFF6CB7D4FB1E3B4D6A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000022455A7C77C5
          DFFF79C6DDFF62ABC7F30E1F2C3F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000104070B36667BA37AC9E3FF79C5DDFF5799
          B5E4030B131F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000F0F0F1EA9A9A9C8FFFFFFFFFCFCFCFF999999C2050505110000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000020535627BA47EC8E1FF63A1BCE70A17243900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000003060D477E
          9BC883CEE7FF4E839DC6050A121D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008121A285897B2DE84D0E7FF3662
          7AA10103050A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001429364E67AAC6EE7FC9E3FF23445A7D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00015757577AEFEFEFFBF0F0F0FE313131570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000091A
          253A69ABC9F6355E779E00000206000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001833435E6CB0CFFC2441
          5472000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010202042D54678964A8C7F613253246000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000206081044768EB45996B5E5060F17220000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0E0E22C0C0
          C0DB9F9F9FC80303030B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          01010015233B00020A1C0000000000000000000000000000020528516A920A19
          24360000000000000000000000000000000000030E20000E1625000000000000
          0000000000000000000000000000000000000000000000020305001625410000
          0310000000000000000000000000050E121B26506892060F1522000000000000
          0000000000000000000000091429000910190000000000000000000000000000
          000000000000000000000000000000060B100013223D00000006000000000000
          0000000000000E202A3C20455C8302070A0F0000000000000000000000000000
          0000000E1B300005090C00000000000000000000000000000000000000000000
          0000000000000D0D0D2013131334000000000000000000000000000000001935
          456019374B6C000103040000000000000000000000000000000A141414330101
          0103000000000000000000000000000000000000000000000000000000001313
          132F0C0C0C29000000000000000000000000000000015A5A5A7E333333500000
          0000000000000000000000000000030303141313133000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000002
          0304002D49770014223B00000000000000000000000000000000000000000000
          0000000000000000000000000000000E1C3300253C6300010203000000000000
          00000000000000000000000000000000000000020204002E49770014223B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000E1C3300253C6300010203000000000000000000000000000000000000
          00000000000000020204002D49770014223B0000000000000000000000000000
          00000000000000000000000000000000000000000000000E1C3300253D630001
          020300000000000000000000000000000000000000000000000000020204002D
          49770014223B0000000000000000000000000000000000000000000000000000
          00000000000000000000000E1C3300253C630001020300000000000000000000
          000000000000000000000000000000020204002E49770014223B000000000000
          000000000000000000000000000000000000000000000000000000000000000E
          1C3300253D630001020300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000102034D73AD1180
          9FC9043B53790009152A00000000000000000000000000000000000000000007
          132603374D720E7897C1024469A3000001020000000000000000000000000000
          0000000000000000000000000002034E73AE11809FCA043C53790009152A0000
          0000000000000000000000000000000000000008142603374D720E7897C10244
          69A3000001020000000000000000000000000000000000000000000000000000
          0002034C72AE11809FCA043B5379000915290000000000000000000000000000
          0000000000000008142603374D720E7897C1024469A300000102000000000000
          00000000000000000000000000000000000000000002034D73AD11809FC9043C
          53790009152A0000000000000000000000000000000000000000000713260337
          4D720E7897C1024469A300000102000000000000000000000000000000000000
          00000000000000000002034E73AE11809FC9043C53790009152A000000000000
          00000000000000000000000000000008142603374D720E7897C1024469A30000
          0102000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000034261931BCAE8FF13A9CAF5076F
          8EBC012F456A00070F1C000000040009111E0130456B086B8BB912A7C7F318C5
          E5FF033A58860000000000000000000000000000000000000000000000000000
          000000000000034261931BCBE8FF13A9CBF5096F8EBC012F456A00070F1C0000
          00040009101E0130456B086D8BB912A7C7F318C6E6FF033A5886000000000000
          0000000000000000000000000000000000000000000000000000034260921BC9
          E8FF13A9CBF5096F8EBB012F456A00070F1C000000040009101E0130456B086D
          8BB912A7C7F318C6E5FF033A5786000000000000000000000000000000000000
          0000000000000000000000000000034261931BCAE8FF13A9CBF5076F8EBC012F
          456A00070F1C000000040009111E0130456B086B8BB912A7C7F318C5E5FF033A
          5886000000000000000000000000000000000000000000000000000000000000
          0000034260931BCAE8FF13A9CAF5076F8EBC012F466A00070F1C000000040009
          101E0130456B086D8BB911A7C7F318C6E6FF033A588600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001283E630CB7D9FF11C7E3FF0DBFE0FF069ABDEF015C
          7BAC0039547E016180AF069ABDEF0DBFDFFF13C8E5FF0BB0D5FF012033520000
          0000000000000000000000000000000000000000000000000000000000000128
          3E620CB8D9FF11C7E4FF0DBFE0FF069ABDEF015C7BAC0039547E016180AF069A
          BDEF0DBFDFFF12C8E5FF0AB1D5FF012133510000000000000000000000000000
          00000000000000000000000000000000000001283E620CB7D9FF11C7E4FF0DBF
          E0FF069ABDEF015C7BAC0039547E016180AF069ABDEF0DBFDFFF13C8E5FF0BB1
          D5FF002033510000000000000000000000000000000000000000000000000000
          00000000000001283E630CB7DAFF11C7E4FF0DBFE0FF059ABDEF015C7BAC0039
          547E016180AF069ABDEF0DBFDFFF13C8E5FF0AB1D5FF01203452000000000000
          000000000000000000000000000000000000000000000000000001283D620CB8
          D9FF11C7E3FF0DBFE0FF059ABDEF015C7BAC0039547E016180AF069ABDEF0DBF
          DFFF12C8E5FF0AB1D5FF00203351000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000018263E019AC5FE02B7D8FF04B8D8FF03BCDDFF01AED4FF009BC1F501B0
          D5FF03BCDDFF04B8D8FF03B8D9FF0291BBF900111C2E00000000000000000000
          000000000000000000000000000000000000000000000018263D019AC4FE02B7
          D8FF04B8D8FF03BCDDFF01AED4FF009BC1F501B0D5FF03BCDDFF04B8D8FF03B8
          D9FF018FBAFA00121C2D00000000000000000000000000000000000000000000
          000000000000000000000019263E029BC5FE02B8D8FF04B8D8FF03BCDDFF01AE
          D4FF009BC1F501B0D5FF03BCDDFF04B8D8FF03B8D9FF0291BBF900111D2E0000
          0000000000000000000000000000000000000000000000000000000000000018
          263F019AC4FE02B7D8FF04B8D8FF04BCDDFF01AED4FF009BC1F501B0D5FF03BC
          DDFF04B8D8FF03B8D9FF0191BBF900111C2E0000000000000000000000000000
          0000000000000000000000000000000000000018263D029BC4FE02B7D8FF04B8
          D8FF04BCDCFF01AED4FF009BC1F501B0D5FF03BCDDFF04B8D8FF03B8D9FF0190
          BBF900111C2E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000E15220081
          ABF000AED2FF00AACFFF00ABCFFF00AFD3FF00B2D6FF00AFD2FF00AACFFF00AA
          CFFF00AFD3FF00739DDF00080F1A000000000000000000000000000000000000
          0000000000000000000000000000000E15220081ADF000AED2FF00AACFFF00AB
          CFFF00AFD3FF00B2D6FF00AFD2FF00AACFFF00AACFFF00AFD3FF00739DDF0009
          0F1A000000000000000000000000000000000000000000000000000000000000
          0000000D15230081ABF000AFD2FF00AACFFF00ABCFFF00AFD3FF00B2D6FF00AF
          D2FF00AACFFF00AACFFF00AFD3FF00739DDF0008101A00000000000000000000
          00000000000000000000000000000000000000000000000E15230081ACF000AE
          D2FF00AACFFF00ABCFFF00AFD3FF00B2D6FF00AFD2FF00AACFFF00AACFFF00AF
          D3FF00739DDF00080F1A00000000000000000000000000000000000000000000
          00000000000000000000000E15230081ADF000AED2FF00AACFFF00ABCFFF00AF
          D3FF00B2D6FF00AFD2FF00AACFFF00AACFFF00AFD3FF00739DDF00080F1A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002060F00628BD100A3CDFF00A1
          C8FF00A0C8FF00A0C8FF00A0C8FF00A1C8FF00A1C8FF00A1C8FF00A4CDFF0054
          77B30001040A0000000000000000000000000000000000000000000000000000
          0000000000000002060F00628ED100A4CDFF00A1C8FF00A0C8FF00A0C8FF00A0
          C8FF00A1C8FF00A1C8FF00A1C8FF00A3CDFF005479B30001040A000000000000
          00000000000000000000000000000000000000000000000000000001060F0062
          8BD100A4CDFF00A1C8FF00A0C8FF00A0C8FF00A0C8FF00A1C8FF00A1C8FF00A1
          C8FF00A3CDFF005477B30001040A000000000000000000000000000000000000
          00000000000000000000000000000002060F00628ED100A3CDFF00A1C8FF00A0
          C8FF00A0C8FF00A0C8FF00A1C8FF00A1C8FF00A1C8FF00A4CDFF005479B30001
          040A000000000000000000000000000000000000000000000000000000000000
          00000002061000628ED100A4CDFF00A1C8FF00A0C8FF00A0C8FF00A0C8FF00A1
          C8FF00A1C8FF00A1C8FF00A3CDFF005479B30001040A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000003101B30066994DA0095C3FF0091BFFF0094C0FF0096
          C2FF0096C1FF0096C1FF0096C1FF0096C1FF0097C4FF005278B8000309130000
          0000000000000000000000000000000000000000000000000000000000000310
          1B30056A95DB0095C3FF0091BFFF0094C0FF0096C2FF0096C1FF0096C1FF0096
          C1FF0096C1FF0096C4FF00537AB8000309140000000000000000000000000000
          00000000000000000000000000000000000003101B2F066994DA0095C3FF0091
          BFFF0094C1FF0096C2FF0096C1FF0096C1FF0096C1FF0096C1FF0096C4FF0053
          78B8000308140000000000000000000000000000000000000000000000000000
          00000000000003101B30056A95DB0095C3FF0091BFFF0094C0FF0096C2FF0096
          C1FF0096C1FF0096C1FF0096C1FF0097C4FF005279B800030913000000000000
          000000000000000000000000000000000000000000000000000003101B300669
          95DA0096C3FF0091BFFF0094C0FF0096C2FF0096C1FF0096C1FF0096C1FF0096
          C1FF0096C4FF00537AB800030913000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000515
          1D2C2B728BB236ACC9F91BA2C8FF0E94C0FF028CBBFF0086B8FF0086B7FF0088
          B9FF008ABAFF008BBAFF008CBCFF0076A6EC0037568800050911000000000000
          00000000000000000000000000000000000005151D2C2A728BB236ACCAFA1CA2
          C8FF0E94C0FF028CBBFF0086B8FF0086B8FF0088B9FF008ABAFF008BBAFF008C
          BCFF0077A8EC0037568700050911000000000000000000000000000000000000
          00000000000005141D2C2A728BB136ACC9F91CA2C8FF0E94C0FF028CBBFF0086
          B8FF0086B7FF0088B9FF008ABAFF008BBAFF008CBCFF0077A6EC003756870005
          091100000000000000000000000000000000000000000000000005141D2C2A72
          8BB236ACCAFA1CA2C8FF0E94C0FF028CBBFF0086B8FF0086B7FF0088B9FF008A
          BAFF008BBAFF008CBCFF0076A7EC003756880005091100000000000000000000
          000000000000000000000000000005141D2C2A728BB136ACCAFA1CA2C8FF0E94
          C0FF028CBBFF0086B8FF0086B7FF0088B9FF008ABAFF008BBAFF008CBCFF0077
          A7EC003756880005091100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000717212F2E788FB655C7DFFF5AD0
          E3FF4FC3DBFF3FB7D4FF2DA8CBFF1F9BC3FF148FBDFF0987B7FF0080B3FF007B
          B0FF007BB1FF007EB5FF006FA4F3003353880003091300000000000000000000
          0000000000000717212F2E788FB655C7DFFF5AD0E3FF4FC3DBFF3FB7D4FF2DA8
          CBFF1F9BC3FF148FBDFF0987B7FF0080B3FF007BB0FF007BB1FF007FB5FF006F
          A4F30033528800030913000000000000000000000000000000000717212F2E78
          8FB655C7DFFF5AD0E3FF4FC3DBFF3FB7D4FF2DA8CBFF1F9BC3FF158FBDFF0987
          B7FF007FB3FF007BB0FF007BB1FF007FB5FF006EA4F300325388000309130000
          00000000000000000000000000000717212F2E788FB655C7DFFF5AD0E3FF4FC3
          DBFF3FB7D4FF2DA8CBFF1F9BC3FF158FBDFF0987B7FF0080B3FF007BB0FF007B
          B1FF007EB5FF006FA4F300335388000309130000000000000000000000000000
          00000717212F2E788FB655C7DFFF5AD0E3FF4FC3DBFF3FB7D4FF2DA8CBFF1F9B
          C3FF148FBDFF0987B7FF0080B3FF007BB0FF007BB1FF007FB5FF006FA4F30033
          5388000309130000000000000000000000000000000000000000000000000000
          000000000000091C2432347D95BD59C6DEFF5DCCE1FF5CC8DEFF5FCBE0FF5DCA
          DFFF59C6DDFF53C1D9FF47B8D4FF3CADCDFF32A3C7FF299AC2FF2293BEFF188D
          BAFF138BBCFF117AAAF30C3F5B8901070B120000000000000000091C2432357D
          95BB58C6DEFF5DCDE1FF5CC8DEFF5FCBE0FF5DCADFFF59C6DDFF53C1D9FF47B8
          D4FF3CADCDFF32A3C7FF299AC2FF2293BEFF188DBAFF138BBCFF117AA9F30C3F
          5B8901070B120000000000000000091C2432347D95BC59C6DEFF5DCCE1FF5CC8
          DEFF5FCBE0FF5DCADFFF59C6DDFF53C1D9FF48B8D4FF3CADCDFF32A2C7FF299A
          C2FF2293BEFF188DBAFF138BBCFF1178AAF30C3F5B8901070B12000000000000
          0000091C2432347D95BD59C6DEFF5DCCE1FF5CC8DEFF5FCBE0FF5DCADFFF59C6
          DDFF53C1D9FF48B8D4FF3CADCDFF32A3C7FF299AC2FF2293BEFF188DBAFF138B
          BCFF117AAAF30C3F5B8901070B120000000000000000091C2432337D95BB58C6
          DEFF5DCCE1FF5CC8DEFF5FCBE0FF5DCADFFF59C6DDFF53C1D9FF47B8D4FF3CAD
          CDFF32A3C7FF299AC2FF2293BEFF188DBAFF138BBCFF117AAAF30C3F5B890107
          0B12000000000000000000000000000000000000000000000000071B2436367D
          97C35CC8E3FF63D1E9FF63CDE6FF62CDE4FF61CAE1FF5FC7DCFF5FC6DCFF61C7
          DCFF60C6DCFF60C7DCFF5FC6DCFF5DC5DCFF5AC4DCFF52C0DCFF4FBCDBFF4DBD
          DEFF48ACCDFA22576D8F00080C1507192233357E97C25DC8E3FF64D1E9FF63CD
          E6FF62CDE4FF61CBE1FF5FC7DCFF5FC6DCFF61C7DCFF60C6DCFF60C7DCFF5FC6
          DCFF5DC5DCFF5AC4DCFF52C0DCFF4FBCDBFF4DBDDEFF48ACCDFA22576D8F0008
          0C1507192233377E97C25CC8E3FF63D1E9FF63CDE6FF62CDE4FF61CAE1FF5FC7
          DCFF5FC6DCFF61C7DCFF60C6DCFF60C7DCFF5FC5DCFF5DC5DCFF5AC3DCFF52C0
          DCFF4FBCDBFF4DBDDEFF48ACCDFA22576D9000080C1507192233357E97C25CC8
          E3FF63D1E9FF63CDE6FF63CDE4FF61CAE1FF5FC7DCFF5FC6DCFF61C7DCFF60C6
          DCFF60C7DCFF5FC6DCFF5DC5DCFF5AC4DCFF52C0DCFF4FBCDBFF4DBDDEFF48AC
          CDFA22576D8F00080C1507192233357E97C25CC8E3FF64D1E9FF63CDE6FF63CD
          E4FF61CAE1FF5FC7DCFF5FC6DCFF61C7DCFF60C6DCFF60C7DCFF5FC6DCFF5DC5
          DCFF5AC4DCFF52C0DCFF4FBCDBFF4DBDDEFF48ACCDFA22576D9001090D160000
          0000000000000000000000000000000000000A2637552F6E86AF3C879CBF4794
          ADD14EA4BDDE54AEC6EA5AB7D2F962C4DCFF62C3DAFF61C3DAFF62C3DAFF62C3
          DAFF63C5DBFF62C6DEFF5DBAD4FB5AB3CCEE54ADC4E250A2B8D84898AECD2B6E
          87AF0216223709243551306F86AE3D879CBF4794ADD14EA3BDDE54AEC6EA5AB7
          D2F962C4DCFF62C3DAFF61C3DAFF62C3DAFF62C3DAFF63C5DBFF62C6DEFF5DBA
          D4FB5AB3CCEE54ADC4E250A2B9D84896AECD2B6E87AF0216223709243551306F
          86AE3D879CBF4794ADD14EA4BDDE54AEC6EA5AB7D2F962C4DCFF62C3DAFF61C3
          DAFF62C3DAFF62C3DAFF63C5DBFF62C6DEFF5DBAD4FB5AB3CCEE54ADC4E250A2
          B9D84898AECD2B6E88B00216223709243451306E86AE3C879CBF4794ADD14EA4
          BDDE55AEC6EA5AB7D2F962C4DCFF62C3DAFF61C3DAFF62C3DAFF62C3DAFF63C5
          DBFF62C6DEFF5DBAD4FB5AB3CCEE54ADC4E250A2B9D84896AECD2B6E87AF0216
          223709243551306F86AE3D879CBF4794ADD14EA5BDDE55AEC6EA5AB7D2F962C4
          DCFF62C3DAFF61C3DAFF62C3DAFF62C3DAFF63C5DBFF63C6DEFF5DBAD4FB5AB3
          CCEE54ADC4E250A2B9D84898AECD2B6E87B00317233900000000000000000000
          00000000000000000000020B111B061118230B1C233012262F3F16313D521D41
          4E69255164844B98B2DF67C4DCFF67C4DAFF67C3DAFF67C3DAFF67C4DBFF3C84
          9DC928556988204655711838445A152C364810232B3A0B1E2632010B111B020A
          101A061118230B1C233012262F3F16313D521D414E69255064844B98B2DF67C4
          DCFF67C4DAFF67C3DAFF67C3DAFF67C4DBFF3C849DC828556988204655711838
          445A152C364810222B3A0B1E2632010B111B020A101A061118230B1C23301226
          2F3F16313D521D414E69255164844C99B2E067C4DCFF67C4DAFF67C3DAFF67C3
          DAFF67C4DBFF3C849DC928556989204655711838445A152C364810232B3A0B1E
          2632010B111B020A101A061118230B1C233012262F3F16313D521E414E692551
          64844B98B2DF67C4DCFF67C4DAFF67C3DAFF67C3DAFF67C4DBFF3C849DC82855
          6988204655711838445A152C364810222B3A0B1E2632010B111B020A101A0611
          18230B1C233012262F3F16313D521E414E69255164844B98B2DF67C4DCFF67C4
          DAFF67C3DAFF67C3DAFF67C4DBFF3C849DC828556988204655711838445A152C
          364810232B3A0B1E2632020B111B000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040003070E1B41
          547668BDD7FE6BC4DCFF6BC3DBFF6CC5DCFF5AADC7F20B1F2C430105090F0000
          0107000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000040003070E1B40547568BDD7FE6BC4DCFF6BC3
          DBFF6CC5DCFF59ACC7F20B1F2C440105090F0000010700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00040003070E1B41547668BDD7FE6CC4DCFF6BC3DBFF6CC5DCFF5AADC7F20B1F
          2C44010509100000010700000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000040003070E1B41547668BD
          D7FE6BC4DCFF6BC3DBFF6CC5DCFF5AADC7F20B1F2C430105090F000001070000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000040003070E1B40547568BDD7FE6BC4DCFF6BC3DBFF6CC5
          DCFF59ACC7F20B1F2C430105090F000001070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001070D164D91ADD973C6
          DFFF6FC2DBFF73C7E0FF30647CA6000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001070C164D92ADD973C6DFFF70C2DBFF73C7E0FF2E63
          7CA7000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000107
          0C164D91ADD973C6DFFF70C2DBFF73C7E0FF30647CA600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001070D164D91ADD973C6DFFF6FC2
          DBFF73C7E0FF30647CA600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001070C164D92ADD973C6DFFF70C2DBFF73C7E0FF2E637CA70000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001F42567775C1DDFF78C5DEFF5FA9
          C6F10B1A263A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001F42567775C1DCFF79C5DEFF60AAC6F10B1A263B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F42567774C1
          DCFF79C5DEFF60AAC6F10B1A263A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F42567775C1DDFF78C5DEFF5FAAC6F10B1A
          263A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001F42567775C1DCFF79C5DEFF60A9C6F10B1A263B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000050C121E5592AEDA80CCE5FF3361799F010103070000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000050C
          121E5592AEDA81CCE5FF336178A0010103070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000050C121E5792AED980CCE5FF3461
          799F010103060000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000050C121E5592AEDA80CCE5FF3361799F01010307000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050C121E5592
          AEDA81CCE5FF336178A001010307000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000012C4F608061A2C0EA10212C3F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000012C4F5F8061A2
          C0EA10202C3F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000012C4E607F61A2C0EA10202C3F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00012C4F608061A2BFEA10202C3F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000012C4F5F8062A2C0EA1020
          2B3F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000010203001B2D4B000209130000000000000000000000000C1A
          22311E3F54780204070C0000000000000000000000000000050E001625410001
          010200000000000000000000000000000000000000000000000000010203001B
          2E4D000309140000000000000000000000000C1A22311E4054780204070C0000
          000000000000000000000000050E001625410001010300000000000000000000
          000000000000000000000000000000010203001B2E4C00020913000000000000
          0000000000000C1922301E3F53770204070C0000000000000000000000000000
          050E001625410001010200000000000000000000000000000000000000000000
          000000010203001B2E4C000209130000000000000000000000000C1A22311E40
          54780204070C0000000000000000000000000000050E00162541000101020000
          00000000000000000000000000000000000000000000010101032020204C0505
          05130000000000000000000000000C1A22311E3F54780204070C000000000000
          0000000000000303030E1A1A1A41010101030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object zCalificacion: TUniQuery
    Connection = connection.Uconnection
    Left = 918
    Top = 279
  end
  object dsCalificacion: TDataSource
    DataSet = zCalificacion
    Left = 918
    Top = 327
  end
  object doctoVP: TUniQuery
    Connection = connection.Uconnection
    Left = 742
    Top = 191
  end
  object dsDoctoVP: TDataSource
    DataSet = doctoVP
    Left = 794
    Top = 380
  end
  object dsAnexoPedido: TDataSource
    DataSet = zAnexoPedido
    Left = 614
    Top = 183
  end
  object zAnexoPedido: TUniQuery
    Connection = connection.Uconnection
    Left = 694
    Top = 175
  end
  object Estado: TUniQuery
    Left = 536
    Top = 328
  end
  object dsEstado: TDataSource
    DataSet = Estado
    Left = 456
    Top = 312
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 732
    Top = 455
  end
  object Moneda: TUniQuery
    Connection = connection.Uconnection
    Left = 680
    Top = 455
  end
end
