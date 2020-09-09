object frmTiposNomina: TfrmTiposNomina
  Left = 353
  Top = 73
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de Tipos de N'#243'mina'
  ClientHeight = 499
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1061
    Height = 35
    Align = alTop
    TabOrder = 1
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
          OnClick = btnPrinterClick
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
          OnClick = cxButton1Click
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 254
    Width = 1061
    Height = 245
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1053
      Height = 195
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxGDatos: TcxGroupBox
        Left = 11
        Top = 11
        Caption = 'Datos'
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
        Height = 161
        Width = 1033
        object dxLayoutControl4: TdxLayoutControl
          Left = 3
          Top = 16
          Width = 1027
          Height = 135
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxTabla: TcxDBLookupComboBox
            Left = 752
            Top = 69
            DataBinding.DataField = 'IdTipoTablaISPT'
            DataBinding.DataSource = ds_nominas
            ParentFont = False
            Properties.ListColumns = <>
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 79
          end
          object cxDias: TcxDBTextEdit
            Left = 112
            Top = 98
            DataBinding.DataField = 'DiasTrabajados'
            DataBinding.DataSource = ds_nominas
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 51
          end
          object cxEmpresa: TcxDBLookupComboBox
            Left = 112
            Top = 11
            DataBinding.DataField = 'IdEmpresa'
            DataBinding.DataSource = ds_nominas
            ParentFont = False
            Properties.KeyFieldNames = 'IdEmpresa'
            Properties.ListColumns = <
              item
                FieldName = 'Empresas'
              end>
            Properties.ListSource = ds_empresa
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 1076
          end
          object cxTitulo: TcxDBTextEdit
            Left = 112
            Top = 40
            DataBinding.DataField = 'Titulo'
            DataBinding.DataSource = ds_nominas
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
            Width = 290
          end
          object cxEtiqueta: TcxDBTextEdit
            Left = 533
            Top = 40
            DataBinding.DataField = 'Etiqueta'
            DataBinding.DataSource = ds_nominas
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 46
          end
          object cxDescripcion: TcxDBTextEdit
            Left = 678
            Top = 40
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = ds_nominas
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
            Width = 273
          end
          object cxTipo: TcxDBComboBox
            Left = 112
            Top = 69
            DataBinding.DataField = 'Tipo'
            DataBinding.DataSource = ds_nominas
            ParentFont = False
            Properties.Items.Strings = (
              'FIJO'
              'A BORDO'
              'AGUINALDOS'
              'FINIQUITOS'
              'VACACIONES'
              'ASIMILADOS')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 290
          end
          object cxTipoC: TcxDBComboBox
            Left = 503
            Top = 69
            DataBinding.DataField = 'TipoCalculo'
            DataBinding.DataSource = ds_nominas
            ParentFont = False
            Properties.Items.Strings = (
              'PERIODICA'
              'FINIQUITOS'
              'PTU'
              'ESPECIAL')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 174
          end
          object cxMoneda: TcxDBLookupComboBox
            Left = 918
            Top = 69
            DataBinding.DataField = 'IdMoneda'
            DataBinding.DataSource = ds_nominas
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
            TabOrder = 9
            Width = 96
          end
          object cxActivo: TdxDBToggleSwitch
            Left = 512
            Top = 100
            Caption = 'Salario M'#250'ltiple'
            DataBinding.DataField = 'SalarioMultiple'
            DataBinding.DataSource = ds_nominas
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
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
          object dxLayoutControl4Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tabla ISPT:'
            Control = cxTabla
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'D'#237'as Trabajados:'
            Control = cxDias
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Empresa:'
            Control = cxEmpresa
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'T'#237'tulo:'
            Control = cxTitulo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Etiqueta:'
            Control = cxEtiqueta
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl4Group_Root
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Descripci'#243'n:'
            Control = cxDescripcion
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tipo:'
            Control = cxTipo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup1
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Tipo de C'#225'lculo:'
            Control = cxTipoC
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Moneda:'
            Control = cxMoneda
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahRight
            AlignVert = avBottom
            CaptionOptions.Text = 'dxDBToggleSwitch1'
            CaptionOptions.Visible = False
            Control = cxActivo
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            Index = 1
            AutoCreated = True
          end
        end
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemControlAreaAlignment = catOwn
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'cxGroupBox1'
        CaptionOptions.Visible = False
        Control = cxGDatos
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object pnlBtn2: TPanel
      Left = 1
      Top = 202
      Width = 1059
      Height = 42
      Align = alBottom
      TabOrder = 1
      inline frmBarraH21: TfrmBarraH2
        Left = 878
        Top = 1
        Width = 180
        Height = 40
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 878
        ExplicitTop = 1
        ExplicitHeight = 40
        inherited Panel1: TPanel
          Height = 40
          inherited btnPost: TcxButton
            OnClick = btnPostClick
          end
          inherited btnCancel: TcxButton
            OnClick = btnCancelClick
          end
        end
      end
    end
  end
  object grid_nominas: TcxGrid
    Left = 0
    Top = 35
    Width = 1061
    Height = 213
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object grid_nominasDBTableView1: TcxGridDBTableView
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
      OnCellClick = grid_nominasDBTableView1CellClick
      DataController.DataSource = ds_nominas
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object grid_nominasDBTableView1Column1: TcxGridDBColumn
        Caption = 'T'#237'tulo'
        DataBinding.FieldName = 'Titulo'
      end
      object grid_nominasDBTableView1Column2: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'Descripcion'
      end
      object grid_nominasDBTableView1Column3: TcxGridDBColumn
        Caption = 'D'#237'as Trabajados'
        DataBinding.FieldName = 'DiasTrabajados'
      end
      object grid_nominasDBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'Etiqueta'
      end
      object grid_nominasDBTableView1Column5: TcxGridDBColumn
        Caption = 'Tipo de C'#225'lculo'
        DataBinding.FieldName = 'TipoCalculo'
      end
      object grid_nominasDBTableView1Column6: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
      end
      object grid_nominasDBTableView1Column7: TcxGridDBColumn
        DataBinding.FieldName = 'Empresa'
      end
    end
    object grid_nominasLevel1: TcxGridLevel
      GridView = grid_nominasDBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 248
    Width = 1061
    Height = 6
    AlignSplitter = salTop
    Control = Panel2
  end
  object ds_nominas: TDataSource
    AutoEdit = False
    DataSet = zqNominas
    Left = 32
    Top = 144
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 225
    Top = 144
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
    end
  end
  object zqNominas: TUniQuery
    Connection = connection.Uconnection
    Left = 30
    Top = 195
  end
  object zqMoneda: TUniQuery
    Connection = connection.Uconnection
    Left = 88
    Top = 192
  end
  object zqEmpresa: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select IdEmpresa,FK_Titulo as Empresas from master_empresa where' +
        ' Activo = '#39'Si'#39)
    Left = 152
    Top = 192
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = zqMoneda
    Left = 88
    Top = 144
  end
  object ds_empresa: TDataSource
    AutoEdit = False
    DataSet = zqEmpresa
    Left = 152
    Top = 144
  end
end
