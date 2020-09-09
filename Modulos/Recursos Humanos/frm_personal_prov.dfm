object frmPersonalProv: TfrmPersonalProv
  Left = 0
  Top = 0
  Align = alBottom
  Caption = 'Empleados por Proveedor'
  ClientHeight = 488
  ClientWidth = 1001
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
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1001
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 438
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 438
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
      Caption = 'Empleados por Proveedores'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1001
    Height = 453
    Align = alClient
    TabOrder = 1
    object PanelCentro: TPanel
      Left = 1
      Top = 1
      Width = 673
      Height = 451
      Align = alClient
      TabOrder = 0
      object PanelInfo: TPanel
        Left = 1
        Top = 304
        Width = 671
        Height = 146
        Align = alBottom
        TabOrder = 0
        object PanelBtn: TPanel
          Left = 1
          Top = 110
          Width = 669
          Height = 35
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 488
            Top = 1
            Width = 180
            Height = 33
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 488
            ExplicitTop = 1
            ExplicitHeight = 33
            inherited Panel1: TPanel
              Height = 33
              ExplicitHeight = 33
              inherited btnPost: TcxButton
                OnClick = btnPostClick
              end
              inherited btnCancel: TcxButton
                OnClick = btnCancelClick
              end
            end
          end
        end
        object dxLayoutControl1: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 669
          Height = 109
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cmbProveedor: TcxDBLookupComboBox
            Left = 71
            Top = 10
            DataBinding.DataField = 'IdProveedor'
            DataBinding.DataSource = ds_empP
            ParentFont = False
            Properties.KeyFieldNames = 'IdProveedor'
            Properties.ListColumns = <
              item
                Caption = 'Elija un Proveedor'
                FieldName = 'Nombre'
              end>
            Properties.ListSource = ds_proveedor
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
          object cxCodigo: TcxDBTextEdit
            Left = 227
            Top = 10
            DataBinding.DataField = 'CodigoPersonal'
            DataBinding.DataSource = ds_empP
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
            Width = 121
          end
          object cxName: TcxDBTextEdit
            Left = 417
            Top = 10
            DataBinding.DataField = 'NombreCompleto'
            DataBinding.DataSource = ds_empP
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object cxCategoria: TcxDBTextEdit
            Left = 590
            Top = 10
            DataBinding.DataField = 'Categoria'
            DataBinding.DataSource = ds_empP
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object cxRFC: TcxDBTextEdit
            Left = 71
            Top = 38
            DataBinding.DataField = 'Rfc'
            DataBinding.DataSource = ds_empP
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
          object cxNSS: TcxDBTextEdit
            Left = 227
            Top = 38
            DataBinding.DataField = 'NSS'
            DataBinding.DataSource = ds_empP
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
            Width = 121
          end
          object cxAlergia: TcxDBTextEdit
            Left = 417
            Top = 38
            DataBinding.DataField = 'Alergias'
            DataBinding.DataSource = ds_empP
            ParentFont = False
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
            Width = 121
          end
          object cxRH: TcxDBTextEdit
            Left = 590
            Top = 38
            DataBinding.DataField = 'GrupoSanguineo'
            DataBinding.DataSource = ds_empP
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 9
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object cxContacto: TcxDBTextEdit
            Left = 71
            Top = 66
            DataBinding.DataField = 'Contacto'
            DataBinding.DataSource = ds_empP
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
            Width = 121
          end
          object cxTelefono: TcxDBTextEdit
            Left = 227
            Top = 66
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = ds_empP
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Proveedor'
            Control = cmbProveedor
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'C'#243'digo'
            Control = cxCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Nombre Completo'
            Control = cxName
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Categor'#237'a'
            Control = cxCategoria
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            CaptionOptions.Text = 'RFC'
            Control = cxRFC
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'N.S.S.'
            Control = cxNSS
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Alergias'
            Control = cxAlergia
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Grupo Sangu'#237'neo'
            Control = cxRH
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Contacto'
            Control = cxContacto
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            CaptionOptions.Text = 'Tel'#233'fono'
            Control = cxTelefono
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
      object cxGridEmpProv: TcxGrid
        Left = 1
        Top = 1
        Width = 671
        Height = 295
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGridEmpProvDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ds_empP
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object cxColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'NombreCompleto'
            Width = 64
          end
          object cxColumn2: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoPersonal'
            Width = 74
          end
          object cxColumn3: TcxGridDBColumn
            Caption = 'Categor'#237'a'
            DataBinding.FieldName = 'Categoria'
            Width = 69
          end
          object cxColumn4: TcxGridDBColumn
            Caption = 'RFC'
            DataBinding.FieldName = 'Rfc'
            Width = 58
          end
          object cxColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'NSS'
            Width = 56
          end
          object cxColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'Alergias'
            Visible = False
            Width = 48
          end
          object cxColumn7: TcxGridDBColumn
            Caption = 'Grupo Sangu'#237'neo'
            DataBinding.FieldName = 'GrupoSanguineo'
            Visible = False
            Width = 68
          end
          object cxColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'Contacto'
            Visible = False
            Width = 62
          end
          object cxColumn9: TcxGridDBColumn
            Caption = 'Tel'#233'fono de Contacto'
            DataBinding.FieldName = 'Telefono'
            Visible = False
            Width = 41
          end
          object cxColumn10: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'NombreProveedor'
            Visible = False
            GroupIndex = 0
            Width = 96
          end
        end
        object cxGridEmpProvLevel1: TcxGridLevel
          GridView = cxGridEmpProvDBTableView1
        end
      end
      object SplitterInfo: TcxSplitter
        Left = 1
        Top = 296
        Width = 671
        Height = 8
        AlignSplitter = salBottom
      end
    end
    object PanelDetalle: TPanel
      Left = 680
      Top = 1
      Width = 320
      Height = 451
      Align = alRight
      TabOrder = 1
      object cxPageControlDetalle: TcxPageControl
        Left = 1
        Top = 1
        Width = 318
        Height = 449
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = cxTabInformes
        Properties.CustomButtons.Buttons = <>
        Properties.Images = connection.cxIconos16
        ClientRectBottom = 447
        ClientRectLeft = 2
        ClientRectRight = 316
        ClientRectTop = 29
        object cxTabInformes: TcxTabSheet
          Caption = 'Informes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 31
          ParentFont = False
          object PanelSuperiorInforme: TPanel
            Left = 0
            Top = 0
            Width = 314
            Height = 418
            Align = alClient
            TabOrder = 0
            object dxLayoutControl2: TdxLayoutControl
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 306
              Height = 410
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
                    Caption = 'Imprimir datos filtrados con detalles'
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
                Left = 151
                Top = 121
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
              object dxLayoutItem12: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                CaptionOptions.Text = 'cxRadioGroup1'
                CaptionOptions.Visible = False
                Control = opcionImprimir
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem13: TdxLayoutItem
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
    end
    object SplitterDetalle: TcxSplitter
      Left = 674
      Top = 1
      Width = 6
      Height = 451
      Hint = 'Mueva a Izquierda o Derecha para ajustar el tama'#241'o'
      AlignSplitter = salRight
      Control = PanelDetalle
    end
  end
  object uEmpP: TUniQuery
    Left = 169
    Top = 212
  end
  object ds_empP: TDataSource
    DataSet = uEmpP
    Left = 169
    Top = 148
  end
  object uProveedor: TUniQuery
    Left = 73
    Top = 212
  end
  object ds_proveedor: TDataSource
    DataSet = uProveedor
    Left = 81
    Top = 148
  end
end
