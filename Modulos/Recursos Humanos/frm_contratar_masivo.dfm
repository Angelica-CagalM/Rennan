object frmContratarMasivo: TfrmContratarMasivo
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Empleados'
  ClientHeight = 480
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1101
      35)
    object cxLabelTitulo: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Contratar Empleados'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object cxCancela: TcxButton
      Left = 971
      Top = 1
      Width = 129
      Height = 33
      Align = alRight
      Caption = ' Cancelar Contrato'
      Enabled = False
      OptionsImage.ImageIndex = 47
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxCancelaClick
    end
    object cxContrato: TcxButton
      Left = 847
      Top = 1
      Width = 124
      Height = 33
      Align = alRight
      Caption = 'Imprimr Contrato'
      Enabled = False
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = frmrepositorio.IconosTodos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxContratoClick
    end
    object cxCredencial: TcxButton
      Left = 743
      Top = 1
      Width = 104
      Height = 33
      Align = alRight
      Caption = 'Credencial'
      Enabled = False
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = frmrepositorio.IconosTodos16
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxCredencialClick
    end
    object progreso: TcxProgressBar
      Left = 288
      Top = 10
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      TabOrder = 4
      Visible = False
      Width = 185
    end
    object LabelProceso: TcxLabel
      Left = 211
      Top = 7
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
    object btnSeguridad: TcxButton
      Left = 613
      Top = 1
      Width = 130
      Height = 33
      Align = alRight
      Caption = 'Reporte Seguridad'
      Enabled = False
      OptionsImage.ImageIndex = 14
      OptionsImage.Images = frmrepositorio.IconosTodos16
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnSeguridadClick
    end
    object btnLogistica: TcxButton
      Left = 488
      Top = 1
      Width = 125
      Height = 33
      Align = alRight
      Caption = 'Reporte Logistica'
      Enabled = False
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = frmrepositorio.IconosTodos16
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnLogisticaClick
    end
  end
  object PanelContrata: TPanel
    Left = 0
    Top = 281
    Width = 1101
    Height = 199
    Align = alBottom
    TabOrder = 1
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1099
      Height = 197
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxFechaContrato: TcxDateEdit
        Left = 101
        Top = 11
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        OnKeyUp = GlobalKeyUp
        Width = 110
      end
      object cxInicioContrato: TcxDateEdit
        Left = 101
        Top = 39
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        OnExit = cxInicioContratoExit
        OnKeyUp = GlobalKeyUp
        Width = 121
      end
      object cxContratar: TcxButton
        Left = 975
        Top = 148
        Width = 113
        Height = 32
        Caption = 'Contratar'
        OptionsImage.ImageIndex = 54
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 9
        OnClick = cxContratarClick
      end
      object cxFinContrato: TcxDateEdit
        Left = 392
        Top = 39
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        OnKeyUp = GlobalKeyUp
        Width = 105
      end
      object cxAdicionales: TcxTextEdit
        Left = 687
        Top = 39
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 4
        OnKeyUp = GlobalKeyUp
        Width = 282
      end
      object cxModificar: TcxCheckBox
        Left = 11
        Top = 67
        TabStop = False
        Caption = 'Modificar Salario de Personal Seleccionado'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 5
        OnClick = cxModificarClick
      end
      object cxPuesto: TcxLookupComboBox
        Left = 101
        Top = 92
        Enabled = False
        ParentFont = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'IdPuesto'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end
          item
            FieldName = 'Nomina'
          end>
        Properties.ListSource = ds_puestos
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 6
        OnExit = cxPuestoExit
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxTipoNomina: TcxLookupComboBox
        Left = 311
        Top = 11
        TabStop = False
        Enabled = False
        ParentFont = False
        Properties.KeyFieldNames = 'IdTipoNomina'
        Properties.ListColumns = <
          item
            FieldName = 'TipoNomina'
          end>
        Properties.ListSource = ds_tiponomina
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 145
      end
      object cxSalario: TcxLookupComboBox
        Left = 101
        Top = 120
        Enabled = False
        ParentFont = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'IdSalario'
        Properties.ListColumns = <
          item
            Width = 80
            FieldName = 'Sueldo'
          end
          item
            Width = 20
            FieldName = 'Periodo'
          end>
        Properties.ListSource = ds_salarios
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 7
        OnExit = cxSalarioExit
        OnKeyUp = GlobalKeyUp
        Width = 588
      end
      object cxSueldo: TcxLookupComboBox
        Left = 877
        Top = 120
        Enabled = False
        ParentFont = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'IdRangoSalarios'
        Properties.ListColumns = <
          item
            FieldName = 'ImporteCurr'
          end>
        Properties.ListSource = ds_sueldos
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 8
        OnKeyUp = GlobalKeyUp
        Width = 168
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
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Fecha Contrato'
        Control = cxFechaContrato
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Inicio Contrato'
        Control = cxInicioContrato
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = cxContratar
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'T'#233'rmino Contrato'
        Control = cxFinContrato
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Informaci'#243'n Adicional'
        Control = cxAdicionales
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = cxModificar
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Puesto'
        Control = cxPuesto
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 3
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Tipo de N'#243'mina'
        Control = cxTipoNomina
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Salario'
        Control = cxSalario
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Sueldo'
        Control = cxSueldo
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        LayoutDirection = ldHorizontal
        Index = 4
        AutoCreated = True
      end
    end
  end
  object cxPageContratos: TcxPageControl
    Left = 0
    Top = 35
    Width = 1101
    Height = 246
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Properties.ActivePage = cxTabNoContratado
    Properties.CustomButtons.Buttons = <>
    Properties.Images = connection.cxIconos16
    OnChange = cxPageContratosChange
    ClientRectBottom = 244
    ClientRectLeft = 2
    ClientRectRight = 1099
    ClientRectTop = 30
    object cxTabNoContratado: TcxTabSheet
      Caption = 'Sin Contrato'
      ImageIndex = 47
      object grid_Personal: TcxGrid
        Left = 0
        Top = 0
        Width = 1097
        Height = 214
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupPrincipal
        TabOrder = 0
        object Grid_cuadrilla: TcxGridDBTableView
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
          OnCellClick = Grid_cuadrillaCellClick
          DataController.DataSource = ds_NoContratado
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.TranslateBetween = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object Grid_cuadrillaColumn4: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoPersonal'
            Options.Editing = False
            Width = 83
          end
          object Grid_cuadrillaColumn2: TcxGridDBColumn
            Caption = 'Empleado'
            DataBinding.FieldName = 'Nombre'
            Options.Editing = False
            Width = 203
          end
          object Grid_cuadrillaColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Puesto'
            Options.Editing = False
            Width = 250
          end
          object Grid_cuadrillaColumn7: TcxGridDBColumn
            Caption = 'Salario'
            DataBinding.FieldName = 'SalarioPuesto'
            Options.Editing = False
            Width = 194
          end
          object Grid_cuadrillaColumn5: TcxGridDBColumn
            Caption = 'S.D.'
            DataBinding.FieldName = 'Salario '
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 61
          end
          object Grid_cuadrillaColumn1: TcxGridDBColumn
            Caption = 'S.D.I.'
            DataBinding.FieldName = 'SalarioIntegrado'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 57
          end
          object Grid_cuadrillaColumn6: TcxGridDBColumn
            Caption = 'Sueldo'
            DataBinding.FieldName = 'Importe'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 70
          end
        end
        object cxViewCuadrilla: TcxGridLevel
          GridView = Grid_cuadrilla
        end
      end
    end
    object cxTabContratados: TcxTabSheet
      Caption = 'Contratados'
      ImageIndex = 40
      object cxGridContratado: TcxGrid
        Left = 0
        Top = 0
        Width = 1097
        Height = 214
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupPrincipal
        TabOrder = 0
        object cxViewContratado: TcxGridDBTableView
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
          DataController.DataSource = ds_empleados
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.TranslateBetween = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoPersonal'
            Options.Editing = False
            Width = 91
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Empleado'
            DataBinding.FieldName = 'Nombre'
            Options.Editing = False
            Width = 279
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Puesto'
            Options.Editing = False
            Width = 278
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'S.D.'
            DataBinding.FieldName = 'Salario'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 86
          end
          object cxViewContratadoColumn1: TcxGridDBColumn
            Caption = 'S.D.I.'
            DataBinding.FieldName = 'SalarioIntegrado'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 84
          end
          object cxViewContratadoColumn2: TcxGridDBColumn
            Caption = 'Sueldo'
            DataBinding.FieldName = 'Importe'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 100
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxViewContratado
        end
      end
    end
  end
  object PopupPrincipal: TPopupMenu
    Tag = 9
    Images = connection.cxIconos16
    Left = 113
    Top = 96
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
    end
    object Editar1: TMenuItem
      Tag = 1
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
    end
    object Can1: TMenuItem
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
    end
    object Copiar1: TMenuItem
      Caption = '&Copiar'
      ShortCut = 16451
    end
    object Pegar1: TMenuItem
      Caption = '&Pegar'
      ShortCut = 16470
    end
    object N2: TMenuItem
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
  object ds_empleados: TDataSource
    AutoEdit = False
    DataSet = empleados
    Left = 320
    Top = 120
  end
  object empleados: TUniQuery
    Connection = connection.Uconnection
    Left = 264
    Top = 120
  end
  object zNocontratado: TUniQuery
    Connection = connection.Uconnection
    Left = 392
    Top = 120
  end
  object ds_NoContratado: TDataSource
    AutoEdit = False
    DataSet = zNocontratado
    Left = 472
    Top = 120
  end
  object salarios: TUniQuery
    Connection = connection.Uconnection
    Left = 200
    Top = 208
  end
  object ds_salarios: TDataSource
    AutoEdit = False
    DataSet = salarios
    Left = 248
    Top = 208
  end
  object puestos: TUniQuery
    Connection = connection.Uconnection
    Left = 88
    Top = 192
  end
  object ds_puestos: TDataSource
    AutoEdit = False
    DataSet = puestos
    Left = 144
    Top = 192
  end
  object tipo_nomina: TUniQuery
    Connection = connection.Uconnection
    Left = 136
    Top = 144
  end
  object ds_tiponomina: TDataSource
    AutoEdit = False
    DataSet = tipo_nomina
    Left = 200
    Top = 144
  end
  object sueldos: TUniQuery
    Connection = connection.Uconnection
    Left = 352
    Top = 216
  end
  object ds_sueldos: TDataSource
    AutoEdit = False
    DataSet = sueldos
    Left = 384
    Top = 216
  end
  object frxReportCR: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.743119919000000000
    ReportOptions.LastChange = 43767.840910092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '       SueldoMensualC_letras:String;'
      ''
      'procedure Rich12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportCRGetValue
    OnUserFunction = frxReportCRUserFunction
    OnClosePreview = frxReportCRClosePreview
    OnReportPrint = 'no '
    Left = 608
    Top = 116
    Datasets = <
      item
        DataSet = frxDBContrato
        DataSetName = 'frxDBContrato'
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
    object Page8: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      MirrorMargins = True
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 755.905511811024000000
        Top = 41.574830000000000000
        Width = 664.819327000000000000
        AllowSplit = True
        DataSet = frxDBContrato
        DataSetName = 'frxDBContrato'
        RowCount = 0
        Stretched = True
        object Rich12: TfrxRichView
          ShiftMode = smWhenOverlapped
          Top = 8.984230000000004000
          Width = 665.197280000000000000
          Height = 721.889741810000000000
          StretchMode = smMaxHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035385C6465666C616E6766653230
            35385C6465667461623730387B5C666F6E7474626C7B5C66305C66726F6D616E
            5C66707271325C6663686172736574302054696D6573204E657720526F6D616E
            3B7D7B5C66315C666E696C5C6663686172736574302054696D6573204E657720
            526F6D616E3B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C67726565
            6E305C626C7565303B5C7265643235355C677265656E305C626C7565303B5C72
            656435315C677265656E35315C626C75653135333B7D0D0A7B5C7374796C6573
            686565747B204E6F726D616C3B7D7B5C73312068656164696E6720313B7D7D0D
            0A7B5C2A5C67656E657261746F722052696368656432302031302E302E313833
            36327D5C766965776B696E64345C756331200D0A5C706172645C6E6F77696463
            746C7061725C71635C625C66305C667333315C6C616E67313033345C7061720D
            0A434F4E545241544F2020504F52205449454D504F202044455445524D494E41
            444F5C7061720D0A5C7061720D0A5C62305C7061720D0A0D0A5C706172645C6E
            6F77696463746C7061725C716A5C66315C6673323320436F6E747261746F2069
            6E646976696475616C2064652074726162616A6F20706F72206F627261206465
            7465726D696E616461207175652063656C656272616E20706F7220756E612070
            617274652C5C622020434F4D50415C2764315C27636441204445204D554C5449
            534552564943494F532050415241204D414E54454E494D49454E544F20494E54
            454752414C45532C20532E412E20444520432E562E2C205C6230207265707265
            73656E7461646120706F7220656C205C6220432E20496C69616E612064656C20
            4361726D656E204372757A20475C2766336D657A5C6230202C20636F6D6F2070
            6174725C2766336E207920706F72206C61206F747261206C612020432E5C6673
            323220205C625C6C616E6732303538205B5C6366315C756C5C66733230205554
            46384465636F6465283C5C6366305C756C6E6F6E655C66733232206672784442
            436F6E747261746F2E224E6F6D627265223E295D5C6366325C667332335C6C61
            6E673130333420205C6366305C623020636F6D6F2074726162616A61646F7220
            7920717569656E657320706F722072617A5C2766336E20646520627265766564
            61642073652064656E6F6D696E61725C2765316E20656E20656C20637572736F
            2064656C2070726573656E746520636F6E747261746F205C625C6C64626C7175
            6F746520434F4D50415C2764315C276364415C7264626C71756F74655C623020
            2079205C625C6C64626C71756F74652054524142414A41444F525C7264626C71
            756F74655C6230202C20726573706563746976616D656E74652C207920656C20
            7175652073652073756A6574616E2061206C6173207369677569656E74657320
            6465636C61726163696F6E6573207920636C5C2765317573756C61733A5C625C
            667332375C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C7478
            363139355C7461625C7061720D0A0D0A5C706172645C6E6F77696463746C7061
            725C7163204445434C41524143494F4E45535C7061720D0A5C667332335C7061
            720D0A0D0A5C706172645C6E6F77696463746C7061725C716A205052494D4552
            415C6230202E2D204C61205C6220434F4D50415C2764315C276364415C623020
            20657320756E6120736F636965646164206D657263616E74696C2C2064656269
            64616D656E746520636F6E737469747569646120646520636F6E666F726D6964
            616420636F6E206C6173206C65796573206D65786963616E61732C2071756520
            7469656E6520656E747265206F74726173206163746976696461646573206C61
            20646520534552564943494F532044453A205C62204D414E54454E494D49454E
            544F2C20494E47454E4945525C276363412C204445534152524F4C4C4F2C2049
            4D504C454D454E544143494F4E2C20494E5354414C4143494F4E2C20504C414E
            454143495C2764324E2C2050524F44554343494F4E2044452053495354454D41
            532044452052454652494745524143494F4E2C20414952452041434F4E444943
            494F4E41444F2C2053495354454D415320484944525C276330554C49434F532C
            204E45554D5C2763305449434F532C20454C5C27633843545249434F532C2045
            4C454354525C2764324E49434F532C20454C454354524F4D45435C2763304E49
            434F532C204D45435C2763304E49434F53205041524120494E5354414C414349
            4F4E455320504554524F4C455241532C20434F4D455243494F532C20484F5445
            4C45532C2045534355454C41532C20484F53504954414C4553204520494E4455
            53545249415320454E2047454E4552414C2E5C7061720D0A5C756C5C62305C70
            61720D0A5C756C6E6F6E655C667332325C7061720D0A5C625C66733233205345
            47554E44415C6230202E2D204C61205C6220434F4D50415C2764315C27636441
            5C623020206465636C6172612020656E20766972747564206465206861626572
            73652061646A7564696361646F20656C20636F6E747261746F20706F72207061
            727465206465206C6120636F6D70615C2766315C27656461205C622054595048
            4F4E4E204F464653484F5245205341504920444520432E562E5C623020202072
            65666572656E74652061205C625C6C64626C71756F746520534552564943494F
            5320494E5445475241444F53205041524120494E54455256454E43494F4E4553
            204120504F5A4F53204D4152494E4F53205920534F504F52544520454E20454C
            204D414E54454E494D49454E544F204120494E5354414C4143494F4E4553204D
            4152494E41532044452050455020434F4E2041504F594F20444520454D424152
            434143494F4E5C7264626C71756F7465202E5C62302020436F6E747261746F20
            4E6F2E203634313030393830362E2053652065737461626C652071756520656C
            206D65635C2765316E69736D6F206465206C6F732074726162616A6F73207365
            206C6C65766172616E2061206361626F206D656469616E7465205C62206F7264
            656E657320646520736572766963696F20285349545C62302029206578706564
            6964617320706F7220656C20636C69656E746520616E746573206D656E63696F
            6E61646F202C206469636861206F7264656E20646520736572766963696F2070
            6F64725C276531207465726D696E617220616E74696369706164616D656E7465
            206F20706F64725C276531207365722070726F72726F6761646F206465206163
            756572646F2061206C6173206E656365736964616465732064656C20636C6965
            6E74652C5C6220205C623020706F72206C6F20207175652020736520636F6E74
            72617461206C6F7320736572766963696F732064656C205C622054524142414A
            41444F525C62302020612066696E2064652073617469736661636572206C6120
            6E65636573696461642020656E20666F726D61207472616E7369746F72696120
            79206576656E7475616C206166656374612E5C756C5C625C7061720D0A5C756C
            6E6F6E655C62305C7061720D0A5C667332325C7061720D0A5C62205445524345
            52415C6230202E2D20456C20435C62202E205C6C616E6732303538205B5C6366
            315C756C5C6673323020555446384465636F6465283C5C6366305C756C6E6F6E
            655C66733232206672784442436F6E747261746F2E224E6F6D627265223E295D
            5C6366325C667332335C6C616E673130333420205C6366305C62305C66733232
            206465636C61726120736572206465206E6163696F6E616C69646164205C625C
            6C616E6732303538204D65786963616E615C6366325C6C616E67313033342020
            205C6366305C6230206465205C6366315C625C6C616E6732303538205B5C756C
            5C6673323020555446384465636F6465283C5C756C6E6F6E655C667332322066
            72784442436F6E747261746F2E2245646164223E295D5C6366305C6C616E6731
            30333420205C623020615C2766316F7320646520656461642C2065737461646F
            20636976696C5C6220205C6366315C6C616E6732303538205B5C756C5C667332
            3020555446384465636F6465283C5C756C6E6F6E655C66733232206672784442
            436F6E747261746F2E2245737461646F436976696C223E295D205C62305C6C61
            6E6731303334202C20524643205C625C6C616E6732303538205B5C756C5C6673
            323020555446384465636F6465283C5C756C6E6F6E655C667332322066727844
            42436F6E747261746F2E22726663223E295D5C623020205C6C616E6731303334
            2043555250205C625C6C616E6732303538205B5C756C5C667332302055544638
            4465636F6465283C5C756C6E6F6E655C66733232206672784442436F6E747261
            746F2E2243757270223E295D205C6366305C62305C6C616E673130333420636F
            6E20646F6D6963696C696F20656E5C6220205C6366315C6C616E673230353820
            5B5C756C5C6673323020555446384465636F6465283C5C756C6E6F6E655C6673
            3232206672784442436F6E747261746F2E22446F6D6963696C696F223E295D20
            2C205B6672784442436F6E747261746F2E22436975646164225D202C205B6672
            784442436F6E747261746F2E2245737461646F225D5C6366305C62305C6C616E
            6731303334202C20207175652073655C276631616C612070617261206F5C2765
            64722020746F646120636C617365206465206E6F74696669636163696F6E6573
            2C20656E206C6F7320745C276539726D696E6F73206465206C61204C65792046
            65646572616C2064656C2054726162616A6F2C20656C2070726573656E746520
            636F6E747261746F2079206C61732072656C6163696F6E657320717565207365
            206465726976656E2064656C206D69736D6F2C206F626C69675C2765316E646F
            736520612070726F706F7263696F6E6172206375616C71756965722063616D62
            696F20646520646F6D6963696C696F20792C207369206E6F206C6F2068696369
            6572652C2061636570746120717565207365725C2765316E20765C2765316C69
            646173206C617320717565207365207072616374697175656E20656E20656C20
            616E7465732073655C276631616C61646F2E5C7061720D0A5C7061720D0A5C70
            61720D0A5C62204355415254413A5C62302020456C20432E205C625C6C616E67
            32303538205B5C6366315C756C5C6673323020555446384465636F6465283C5C
            6366305C756C6E6F6E655C66733232206672784442436F6E747261746F2E224E
            6F6D627265223E295D5C6366325C667332335C6C616E673130333420205C6366
            305C62305C66733232206861206D616E696665737461646F2061206C6120434F
            4D50415C2764315C2763644120657374617220656E20646973706F6E6962696C
            696461642064652073657220636F6E7472617461646F20706F72206F62726120
            64657465726D696E61646120612071756520736520726566697269657265206C
            6120736567756E6461206465206C6173206465636C61726163696F6E65732C20
            61735C27656420636F6D6F2074656E6572206C6F7320636F6E6F63696D69656E
            746F7320792063617061636964616420737566696369656E74652C2061735C27
            656420636F6D6F206C612070725C276531637469636120792061707469747564
            206E656365736172696173207061726120646573656D70655C27663161722065
            6C2070756573746F206465205C6366315C625C6C616E6732303538205B5C756C
            5C6673323020555446384465636F6465283C5C756C6E6F6E655C667332322066
            72784462436F6E747261746F2E2250756573746F223E295D5C6366325C667332
            335C6C616E67313033342020205C6366305C623020656E20656C2070726F7965
            63746F5C6220205C623020205C625C6C64626C71756F74652053455256494349
            4F5320494E5445475241444F53205041524120494E54455256454E43494F4E45
            53204120504F5A4F53204D4152494E4F53205920534F504F52544520454E2045
            4C204D414E54454E494D49454E544F204120494E5354414C4143494F4E455320
            4D4152494E41532044452050455020434F4E2041504F594F20444520454D4241
            52434143494F4E5C7264626C71756F7465202E5C62305C6673323220205C6220
            436F6E747261746F204E6F2E203634313030393830362C5C623020206D6F7469
            766F20706F7220656C206375616C206C6173207061727465732068616E206365
            6C65627261646F20656C2070726573656E746520636F6E747261746F20717565
            20736520636F6E7469656E6520616C2074656E6F72206465206C617320736967
            7569656E7465733A5C7061720D0A5C7061720D0A5C6366335C756C5C7061720D
            0A0D0A5C706172645C6B6565706E5C6E6F77696463746C7061725C73315C7163
            5C6366305C756C6E6F6E655C625C6673323720434C415553554C41535C706172
            0D0A0D0A5C706172645C6E6F77696463746C7061725C716A5C62305C66733233
            5C7061720D0A5C62205052494D4552415C6230202E2D205C756C204F424C4947
            4143494F4E45535C756C6E6F6E65202E205C6220454C5C623020205C62205452
            4142414A41444F525C623020207365206F626C69676120612070726573746172
            2073757320736572766963696F7320706572736F6E616C65732061206C61205C
            6220434F4D50415C2764315C276364415C62302020656E20656C20646F6D6963
            696C696F206465205C2765397374612C207562696361646F20656E2043414C4C
            45203338204E6F2E2036325C62202C205C623020454E54524520203139205920
            32352C20436F6C2E204375617568745C2765396D6F632C204369756461642064
            656C204361726D656E2C2043616D70656368652C20432E502E2032343137305C
            6220205C27663220656E20656C206C756761722071756520706172612074616C
            2065666563746F207365206C6520696E64697175652C5C62302020636F6D6F5C
            636632203A205C6366315C625C667332325C6C616E6732303538205B66727844
            62436F6E747261746F2E2250756573746F225D5C6366325C667332335C6C616E
            673130333420205C63663020205C623020205C625C6673323220656E20656C20
            70726F796563746F205C667332335C6C64626C71756F74652053455256494349
            4F5320494E5445475241444F53205041524120494E54455256454E43494F4E45
            53204120504F5A4F53204D4152494E4F53205920534F504F52544520454E2045
            4C204D414E54454E494D49454E544F204120494E5354414C4143494F4E455320
            4D4152494E41532044452050455020434F4E2041504F594F20444520454D4241
            52434143494F4E5C7264626C71756F7465202E5C62305C6673323220205C6220
            436F6E747261746F204E6F2E20363431303039383036205C62305C6673323320
            74726162616A6F207175652064656265725C27653120646573656D70655C2766
            316172206465736172726F6C6C616E646F207369656D707265207375206D6179
            6F72206163746976696461642079206566696369656E6369612E204C61206F63
            75706163695C2766336E207072696E636970616C2064656C205C622054524142
            414A41444F525C623020207365725C2765312020707265737461722073757320
            736572766963696F7320636F6D6F3A205C6366315C625C667332325C6C616E67
            32303538205B5C756C5C6673323020555446384465636F6465283C5C756C6E6F
            6E655C66733232206672784462436F6E747261746F2E2250756573746F223E29
            5D5C6366325C667332335C6C616E673130333420205C623020205C6366302071
            75656461206269656E20656E74656E6469646F20717565206573746120656E75
            6D65726163695C2766336E206465206C61626F72657320657320656E756E6369
            61746976612079206E6F206C696D697461746976612C20746F64612076657A20
            71756520656C205C622054524142414A41444F525C623020207469656E65206F
            626C69676163695C2766336E206465206174656E6465722074616D62695C2765
            396E206375616C7175696572206F74726F2074726162616A6F20616E65786F20
            6F20636F6E65786F20636F6E207375206F626C69676163695C2766336E207072
            696E636970616C2C206F206375616C6573717569657261206F74726120616374
            6976696461642C207369656D7072652079206375616E646F207365206C652072
            6573706574652073752073616C6172696F2C2061756E206375616E646F206163
            636964656E74616C6D656E746520686179612064652073657220646573656D70
            655C27663161646F2066756572612064656C206C756761722064652074726162
            616A6F2E205C6220454C2054524142414A41444F52205C623020616361746172
            5C276531207369656D70726520656E20746F646F7320737573206163746F7320
            61206C6173205C2766337264656E65732071756520737573206A65666573206C
            652064656E2C206C617320646973706F736963696F6E65732064656C20526567
            6C616D656E746F20496E746572696F722064652054726162616A6F206465206C
            61205C6220434F4D50415C2764315C276364415C62302020717565206C652073
            65612061706C696361626C652C2079206C61732064656D5C2765317320646973
            706F736963696F6E65732079205C2766337264656E657320717565205C276539
            737461206C652064696374652E5C7061720D0A5C7061720D0A5C7061720D0A5C
            6220534547554E44415C6230202E2D205C756C204455524143495C2764334E20
            44454C20434F4E545241544F5C756C6E6F6E65202E20456C2070726573656E74
            6520636F6E747261746F207365725C27653120706F72205C756C5C6220544945
            4D504F2059204F4252412044455445524D494E4144412C205C756C6E6F6E655C
            6673323220656E20656C2070726F796563746F3A205C667332335C6C64626C71
            756F746520534552564943494F5320494E5445475241444F5320504152412049
            4E54455256454E43494F4E4553204120504F5A4F53204D4152494E4F53205920
            534F504F52544520454E20454C204D414E54454E494D49454E544F204120494E
            5354414C4143494F4E4553204D4152494E41532044452050455020434F4E2041
            504F594F20444520454D424152434143494F4E5C7264626C71756F74655C6673
            3232202C5C623020205C6673323320616C2076656E63696D69656E746F206465
            206375796F20745C276539726D696E6F20636F6E636C7569725C27653120746F
            64612072656C6163695C2766336E2064657269766164612064656C206D69736D
            6F2073696E206E696E67756E6120726573706F6E736162696C69646164207061
            726120656C20706174725C2766336E5C66733232202E5C7061720D0A5C706172
            0D0A5C7061720D0A5C66733233204C61732070617274657320636F6E7669656E
            656E20656E20717565207061726120656C206361736F20646520717565205C6C
            64626C71756F746520454C2054524142414A41444F525C7264626C71756F7465
            202064656D756573747265206C612066616C7461206465206361706163696461
            642C20617074697475646573206F206C617320666163756C7461646573207175
            652064696A6F2074656E65722C205C6C64626C71756F746520454C2050415452
            5C2764334E5C7264626C71756F74652020706F64725C2765312072657363696E
            64697220737520636F6E747261746F2064652074726162616A6F2073696E206E
            696E67756E6120726573706F6E736162696C6964616420646520737520706172
            74652C20656E20745C276539726D696E6F73206465206C6F2064697370756573
            746F20706F7220656C206E756D6572616C203437207920323038206465206C61
            206C6579206665646572616C2064656C2074726162616A6F20656E207669676F
            722C205C7061720D0A5C7061720D0A5C7061720D0A5C6220544552434552415C
            6230202E2D205C756C204A4F524E4144412044452054524142414A4F5C756C6E
            6F6E65202E205365726120636F6D6F206C6F20696E6469717565206C61206C65
            79206665646572616C2064656C2074726162616A6F2E204C61206A6F726E6164
            612064652074726162616A6F206120717565207365207265666965726520656C
            20705C276531727261666F20616E746572696F72206F62656465636520612071
            7565207365207469656E6520726570617274696461206C61206A6F726E616461
            20656E206C6F7320745C276539726D696E6F732064656C204172745C27656463
            756C6F203539206465206C61204C6579204665646572616C2064656C20547261
            62616A6F2E5C7061720D0A5C7061720D0A4C617320636F6E646963696F6E6573
            2064652074726162616A6F20656E206F627261207175656461725C2765316E20
            65737461626C65636964617320656E20656C205265676C616D656E746F20496E
            746572696F722064652054726162616A6F20636F6E73696465725C2765316E64
            6F7365205C27653973746520756E20616E65786F2061206C612070726573656E
            746520636C5C2765317573756C612E5C7061720D0A5C7061720D0A456C205C62
            205452414A41444F525C62302020666163756C746120657870726573616D656E
            74652061206C61205C6220434F4D50415C2764315C276364415C623020207061
            7261206D6F6469666963617220656C20686F726172696F206465207472616261
            6A6F20616E746572696F722C206465206163756572646F20636F6E206C617320
            6E65636573696461646573206465206C61206D69736D612E5C625C7061720D0A
            5C7061720D0A4355415254415C6230202E2D205C756C2053414C4152494F5C75
            6C6E6F6E65202E20454C205C622054524142414A41444F525C62302020706572
            63696269725C27653120636F6D6F207375656C646F20706F72206C6120707265
            73746163695C2766336E206465206C6F7320736572766963696F732061207175
            652073652072656669657265206573746520636F6E747261746F2C206C612063
            616E7469646164206465206465205C6366315C625C667332325C6C616E673230
            35382024205B6672784442436F6E747261746F2E22496D706F72746553616C61
            72696F225D2028205B5355454C444F5F4C455452415D2029204E45544F5C6366
            305C667332335C6C616E673130333420205C623020706F7220747265696E7461
            20645C27656461732E20456C207061676F2064656C2073616C6172696F207365
            725C2765312070616761646F206361746F7263656E616C2C20656E206C617320
            6F666963696E6173206465206C61205C6220434F4D50415C2764315C27636441
            5C623020206F20656E20656C206C7567617220646F6E646520736520656E6375
            656E747265207072657374616E646F2073757320736572766963696F73206120
            6E6F6D627265206465205C2765397374612E5C7061720D0A5C7061720D0A456C
            205C622054524142414A41444F525C62302020726563696269725C276531206C
            612070617274652070726F706F7263696F6E616C20646520616775696E616C64
            6F2C2064656C20706572696F646F20616E75616C206465207661636163696F6E
            65732061207175652074656E6761206465726563686F2C20646520636F6E666F
            726D696461642061206C6F2065737461626C656369646F20656E206C6F732061
            72745C27656463756C6F732037362079203837206465206C61204C4654202E50
            6F722073752070617274652C20656C2074726162616A61646F722074656E6472
            5C2765312074616D62695C2765396E20206465726563686F2020616C20706167
            6F206465206C612070617274652070726F706F7263696F6E616C206465206C61
            207072696D61207661636163696F6E616C20646520636F6E666F726D69646164
            2061206C6F2071756520646973706F6E6520656C206172745C27656463756C6F
            203830206465206C61204C6579206465206C61206D6174657269612E5C706172
            0D0A5C7061720D0A5C7061720D0A5C7061720D0A0D0A5C706172645C6E6F7769
            6463746C7061725C72692D32305C62205155494E54412E2D5C62302020416D62
            617320706172746573206465636C6172616E2071756520636F6E6F63656E2073
            7573206F626C69676163696F6E657320792070726F6869626963696F6E65732C
            20706F72206C6F2071756520726573706563746120616C20706174725C276633
            6E2C206C6F73204172742E20313332207920313333206465206C61204C465420
            7920706F72206C6F20717565207365207265666965726520616C207472616261
            6A61646F72206C6F73204172742E203133342079203133352064652064696368
            6F206F7264656E616D69656E746F206C6567616C2E5C7061720D0A0D0A5C7061
            72645C6E6F77696463746C7061725C716A5C7061720D0A5C622053455854412E
            2D5C623020205449454D504F2045585452414F5244494E4152494F2E20517565
            64612070726F68696269646F20616C2054524142414A41444F52207472616261
            6A6172207469656D706F2065787472616F7264696E6172696F207369206E6F20
            657320636F6E20636F6E73656E74696D69656E746F2070726576696F2079206F
            7264656E20657363726974612C206461646120706F72206C6120434F4D50415C
            2764315C276364412E204375616E646F20706F72206375616C71756965722063
            697263756E7374616E63696120646562612074726162616A617220656C205452
            4142414A41444F52206D61796F72207469656D706F2071756520656C2073655C
            276631616C61646F20636F6D6F206A6F726E616461206F7264696E617269612C
            20726563616261725C276531207072657669616D656E7465206465206C612020
            434F4D50415C2764315C27636441206C61206F7264656E206120717565207365
            2072656669657265206573746120636C5C2765317573756C612C2073696E2063
            75796F2072657175697369746F206E6F206C65207365725C2765312061626F6E
            6164612063616E746964616420616C67756E6120706F7220656C207469656D70
            6F207175652074726162616A6520636F6E2065786365736F2061206C61206A6F
            726E616461206C6567616C2E5C7061720D0A5C7061720D0A5C62205345505449
            4D412E2D5C6230202052454349424F2044452053414C4152494F532E20454C20
            54524142414A41444F52207365206F626C6967612061206F746F72676172206C
            6F7320645C2765646173206465207061676F206465207375656C646F7320756E
            2072656369626F2061206661766F72206465206C6120434F4D50415C2764315C
            276364412020706F72206C6120746F74616C69646164206465206C6F73207375
            656C646F7320646576656E6761646F732068617374612066656368612C20656E
            74656E64695C2765396E646F73652071756520656C206F746F7267616D69656E
            746F2064656C206D69736D6F20696D706C696361725C27653120737520636F6E
            666F726D6964616420656E2071756520656C207375656C646F20726563696269
            646F20637562726520656C2074726162616A6F20646573656D70655C27663161
            646F2C20796120717565206375616C71756965722063616E7469646164206120
            6C612071756520637265796572652074656E6572206465726563686F20646562
            65725C276531206578696769726C6120707265636973616D656E746520616C20
            6F746F7267617220656C2072656369626F206465207265666572656E6369612E
            204C61206669726D612064656C2072656369626F20636F72726573706F6E6469
            656E746520696D706C696361725C27653120756E207061676F20746F74616C20
            70617261206C6120434F4D50415C2764315C2763644120706F72206375616C71
            7569657220636C617365206465207375656C646F732061207175652074757669
            657265206465726563686F20656C2054524142414A41444F5220706F72206C6F
            7320736572766963696F7320707265737461646F732068617374612065736120
            66656368612C2061756E206375616E646F206E6F207365206469676120656E20
            656C2072656369626F20616E746572696F722E20205C7061720D0A205C625C70
            61720D0A4F43544156415C6230202E2D20456E206174656E63695C2766336E20
            61206C61206E61747572616C657A612064656C2070756573746F207175652064
            6573656D70655C2766316120656C205C622054524142414A41444F525C623020
            2C20656C206D69736D6F207365206F626C696761206120646573656D70655C27
            663161722073752074726162616A6F20656E206375616C7175696572206C7567
            61722064656C207465727269746F72696F206E6163696F6E616C2C2061735C27
            656420636F6D6F20612068616365726C6F20656E206375616C7175696572206F
            74726F2070756573746F2073696E207065726A756963696F2064652073752073
            616C6172696F2E5C7061720D0A5C625C7061720D0A4E4F56454E415C6230202E
            2D205C756C20434F4E464944454E4349414C494441445C756C6E6F6E65202E20
            456E206174656E63695C2766336E2061206C6173206163746976696461646573
            20717565207265616C697A61206C61205C6220434F4D50415C2764315C276364
            415C62302020792064616461206C61206E6563657369646164206465206D616E
            74656E657220656E206162736F6C75746120636F6E666964656E6369616C6964
            6164206C6F7320706C616E657320792070726F796563746F73206465206C6120
            5C6220434F4D50415C2764315C276364415C6230202079206465206375616C71
            75696572206F747261206E61747572616C657A612C20656C205C622054524142
            414A41444F52205C6230207365206F626C696761206120677561726461722065
            7363727570756C6F73616D656E7465206C6F73207365637265746F7320745C27
            6539636E69636F732C20636F6D65726369616C65732079206465206661627269
            636163695C2766336E206465206C6F732070726F647563746F732C2061206375
            796120656C61626F726163695C2766336E20636F6E63757272616E2064697265
            637461206F20496E646972656374616D656E7465206F206465206C6F73206375
            616C65732074656E676120636F6E6F63696D69656E746F20706F722072617A6F
            6E65732064652074726162616A6F2C2061735C27656420636F6D6F206465206C
            6F73206173756E746F732061646D696E69737472617469766F732C2063757961
            20646976756C676163695C2766336E2070756564612063617573617220706572
            6A756963696F732061206C61205C6220434F4D50415C2764315C276364415C62
            30202C20656E206C6120696E74656C6967656E6369612064652071756520656C
            20696E63756D706C696D69656E746F2065737065635C2765646669636F206465
            2065737461206F626C69676163695C2766336E2C206C6F206861725C27653120
            6163726565646F722061206C6120726573636973695C2766336E206465207375
            20436F6E747261746F2064652054726162616A6F2C20646520636F6E666F726D
            6964616420636F6E206C6F2064697370756573746F20656E20656C204172745C
            27656463756C6F203437206465206C61204C6579204665646572616C2064656C
            2054726162616A6F20792061206C61732070656E61732071756520696D706F6E
            6520656C20435C2766336469676F2050656E616C207061726120656C20446973
            747269746F204665646572616C2C20656E20737573204172745C27656463756C
            6F7320323130207920323131206F2073757320636F7272656C617469766F7320
            456E206C6F73206469766572736F7320635C2766336469676F732070656E616C
            6573206465206C61205265705C276661626C696361204D65786963616E612E5C
            625C7061720D0A5C7061720D0A5C7061720D0A445C27633943494D415C623020
            2E2D5C756C20204C45592041504C494341424C455C756C6E6F6E65202E20416D
            6261732070617274657320636F6E7669656E656E2071756520656E206361736F
            206465206A756963696F206F20696E746572707265746163695C2766336E2064
            65206C6173206F626C69676163696F6E65732064657269766164617320646520
            6573746520636F6E747261746F2079207061726120746F646F20617175656C6C
            6F20717565206E6F20736520656E6375656E74726520657870726573616D656E
            7465207061637461646F20656E20656C206D69736D6F2C20736520736F6D6574
            656E2061206C61206A7572697364696363695C2766336E206465206C6173206A
            756E74617320657370656369616C657320646520636F6E63696C696163695C27
            66336E207920617262697472616A652064652065737461206369756461642C20
            6465206163756572646F2061206C6F73206172745C27656463756C6F73203532
            37206672616363695C2766336E20696920696E6369736F203320792036393820
            6465206C61206C6579206665646572616C2064656C2074726162616A6F207669
            67656E74652E5C7061720D0A5C7061720D0A0D0A5C706172645C6E6F77696463
            746C7061725C73613132305C716A5C6220445C27633943494D41205052494D45
            52412E2D5C6230202044494153204E4F204C41424F5241444F532E204C6F7320
            645C2765646173206E6F206C61626F7261646F7320656E20656C205C27633172
            65612064652054726162616A6F206E6F207365725C2765316E20636F6E736964
            657261646F73207061726120656C20635C2765316C63756C6F2064656C207361
            6C6172696F2E5C7061720D0A5C625C7061720D0A445C27633943494D41205345
            47554E44412E2D5C623020205649415449434F532E204E6F206573745C276531
            206175746F72697A61646F20656C207061676F2064652076695C276531746963
            6F73207061726120656C20706572736F6E616C2E5C7061720D0A5C625C706172
            0D0A445C27633943494D4120544552434552412E2D5C62302020496E74656772
            696461642C2053656775726964616420656E20656C2054726162616A6F207920
            50726F74656363695C2766336E20616C204D6564696F20416D6269656E74652E
            20456C2074726162616A61646F7220736520636F6D70726F6D6574652061206E
            6F207472616E7367726564697220656C20656E746F726E6F2C206C7565676F20
            656E746F6E636573206120636C6173696669636172206C6F7320646573656368
            6F732079206120636F6E66696E61726C6F7320656E206C6F73206C7567617265
            73207175652064657369676E65206C6120656D707265736120636F6E20656C20
            70726F705C2766337369746F20646520707265736572766172207920666F6D65
            6E74617220656C206375696461646F20717565206D657265636520656C206D65
            64696F20616D6269656E74652E5C7061720D0A456C2074726162616A61646F72
            20736520636F6D70726F6D657465206120636F6E6475636972736520636F6E20
            686F6E65737469646164206520696E74656772696461642079206465206E6F20
            70726F706F6E65722C2073756765726972207920706172746963697061722065
            6E206163746F73207175652074656E67616E20636F6D6F2070726F705C276633
            7369746F20636F72726F6D70657220612066756E63696F6E6172696F7320705C
            276661626C69636F732C2070726F766565646F7265732C206574632E5C706172
            0D0A456C2074726162616A61646F7220736520636F6D70726F6D657465206120
            7265737065746172206C6173206E6F726D617320646520736567757269646164
            2C20657370656369616C6D656E746520647572616E746520656C20646573656D
            70655C2766316F20646520737573206C61626F7265732C20612075736172206C
            6F732065717569706F732064652073656775726964616420792061206E6F2070
            6F6E657220656E2072696573676F206C617320696E7374616C6163696F6E6573
            2C2065717569706F732C207065726F20736F62726520746F646F20656C206375
            696461646F206465206C617320706572736F6E61732C20636F6D70615C276631
            65726F732C2073757065727669736F7265732C20636F6C61626F7261646F7265
            732C206574632E5C7061720D0A4C6120436F6D70615C2766315C276564612074
            69656E6520636F6D6F2070726F705C2766337369746F2061646F707461722061
            6374697475646573207920636F6E64756374617320646520696E746567726964
            61642C2064652073656775726964616420656E20656C2074726162616A6F2079
            2064652070726F74656363695C2766336E20616C206D6564696F20616D626965
            6E74652C206D616E69666573745C2765316E646F736520636F6D6F20756E6120
            616C7465726E617469766120766961626C652070617261207265736F6C766572
            207920736F6C76656E7461722070726F626C656D61732079206E656365736964
            61646573206465206E75657374726F7320636C69656E746573206D656469616E
            746520756E20736572766963696F206566696369656E74652C2065666963617A
            20792065636F6E5C2766336D69636F2E5C7061720D0A0D0A5C706172645C6E6F
            77696463746C7061725C716A5C7061720D0A4C655C276564646F206573746520
            646F63756D656E746F20706F7220616D62617320706172746573207920656E74
            657261646F7320646520737520636F6E74656E69646F2C206465726563686F73
            2C206F626C69676163696F6E65732C20616C63616E636573207920667565727A
            61206C6567616C2C206C6F206669726D6120646520636F6D5C2766616E206163
            756572646F207920706F72206475706C696361646F2C206D616E696665737461
            6E646F20616D6261732070617274657320717565206573746520636F6E747261
            746F206861207369646F20656C2070726F647563746F20646520737573206C69
            627265732079206573706F6E74616E65617320766F6C756E74616465732C2071
            7565206E6F2068612068616269646F206572726F722C20656E67615C2766316F
            2C20646F6C6F2C206D616C612066652C2076696F6C656E6369612C20656E7269
            71756563696D69656E746F206E6920656D706F62726563696D69656E746F2069
            6C65676974696D6F2C206E69206E696E675C2766616E206F74726F2076696369
            6F20717565207065727475726265206C61206C69627265206D616E6966657374
            6163695C2766336E206465206C6120766F6C756E7461642C2071756564616E64
            6F20656C206F726967696E616C20612072657367756172646F206465205C6C64
            626C71756F7465204C4120454D50524553415C7264626C71756F7465202C2065
            6E206C61205C6366315C62204349554441442044454C204341524D454E2C2043
            414D50454348452C20454C20445C2763644120205C667332325C6C616E673230
            3538205B6672784442436F6E747261746F2E224665686361436F6E747261746F
            225D5C6C616E673130333420205C66733233202E5C7061720D0A5C7061720D0A
            5C6366305C62305C7061720D0A5C74726F77645C74726761706837305C74726C
            6566742D37305C7472706164646C37305C7472706164647237305C7472706164
            64666C335C7472706164646672330D0A5C63656C6C78353130335C63656C6C78
            3130303434200D0A5C706172645C696E74626C5C6E6F77696463746C7061725C
            71635C625C6673323520506F72206C61205C6C64626C71756F746520434F4D50
            415C2764315C276364415C7264626C71756F74655C63656C6C5C6C64626C7175
            6F746520454C2054524142414A41444F525C7264626C71756F74655C63656C6C
            5C726F775C74726F77645C74726761706837305C74726C6566742D37305C7472
            706164646C37305C7472706164647237305C747270616464666C335C74727061
            64646672330D0A5C63656C6C78353130335C63656C6C783130303434200D0A5C
            706172645C696E74626C5C6E6F77696463746C7061725C71635C63656C6C5C63
            656C6C5C726F775C74726F77645C74726761706837305C74726C6566742D3730
            5C7472706164646C37305C7472706164647237305C747270616464666C335C74
            72706164646672330D0A5C63656C6C78353130335C63656C6C78313030343420
            0D0A5C706172645C696E74626C5C6E6F77696463746C7061725C71635C63656C
            6C5C63656C6C5C726F775C74726F77645C74726761706837305C74726C656674
            2D37305C7472706164646C37305C7472706164647237305C747270616464666C
            335C7472706164646672330D0A5C63656C6C78353130335C63656C6C78313030
            3434200D0A5C706172645C696E74626C5C6E6F77696463746C7061725C71635C
            63656C6C5C63656C6C5C726F775C74726F77645C74726761706837305C74726C
            6566742D37305C7472706164646C37305C7472706164647237305C7472706164
            64666C335C7472706164646672330D0A5C63656C6C78353130335C63656C6C78
            3130303434200D0A5C706172645C696E74626C5C6E6F77696463746C7061725C
            7163205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5C62305C63656C6C5C62205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C62305C63656C6C5C726F775C74726F7764
            5C74726761706837305C74726C6566742D37305C747272683234305C74727061
            64646C37305C7472706164647237305C747270616464666C335C747270616464
            6672330D0A5C63656C6C78353130335C63656C6C783130303434200D0A5C7061
            72645C696E74626C5C6E6F77696463746C7061725C71635C625C667332332043
            2E20496C69616E612064656C204361726D656E204372757A20475C2766336D65
            7A5C62305C6C616E67313034365C63656C6C5C667332325C6C616E6731303334
            20432E205C625C6C616E6732303538205B5C6366315C756C5C66733230205554
            46384465636F6465283C5C6366305C756C6E6F6E655C66733232206672784442
            436F6E747261746F2E224E6F6D627265223E295D5C6C616E673130333420205C
            6366325C667332335C63656C6C5C726F77200D0A5C706172645C6E6F77696463
            746C7061725C6366305C62305C667332345C7061720D0A0D0A5C706172645C6E
            6F77696463746C7061725C73613234305C716A5C6366335C667332305C706172
            0D0A5C6366305C667331365C6C616E67323035385C7061720D0A0D0A5C706172
            645C6366335C625C667332325C6C616E67313033345C7061720D0A7D0D0A00}
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Top = 18.897650000000000000
        Width = 664.819327000000000000
        Condition = 'frxDBContrato."IdPersonal"'
        StartNewPage = True
      end
    end
  end
  object Contrato: TUniQuery
    Connection = connection.Uconnection
    Left = 680
    Top = 124
  end
  object frxDBContrato: TfrxDBDataset
    UserName = 'frxDBContrato'
    CloseDataSource = False
    DataSet = Contrato
    BCDToCurrency = False
    Left = 784
    Top = 126
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 728
    Top = 124
  end
  object frxDBLogistica: TfrxDBDataset
    UserName = 'frxDBLogistica'
    CloseDataSource = False
    DataSet = zLogistica
    BCDToCurrency = False
    Left = 578
    Top = 177
  end
  object zLogistica: TUniQuery
    Connection = connection.Uconnection
    Left = 666
    Top = 185
  end
  object frxReport: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.743119919000000000
    ReportOptions.LastChange = 43773.525705729160000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '       SueldoMensualC_letras:String;'
      ''
      'procedure Rich12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportGetValue
    OnUserFunction = frxReportUserFunction
    OnClosePreview = frxReportClosePreview
    OnReportPrint = 'no '
    Left = 721
    Top = 182
    Datasets = <
      item
        DataSet = frxDBContrato
        DataSetName = 'frxDBContrato'
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
    object Page8: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      MirrorMargins = True
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Top = 18.897650000000000000
        Width = 664.819327000000000000
        Condition = 'frxDBContrato."IdPersonal"'
        StartNewPage = True
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 755.905511810000000000
        Top = 41.574830000000000000
        Width = 664.819327000000000000
        DataSet = frxDBContrato
        DataSetName = 'frxDBContrato'
        RowCount = 0
        Stretched = True
        object Rich12: TfrxRichView
          ShiftMode = smDontShift
          Left = 3.779530000000000000
          Top = 35.440940000000010000
          Width = 665.197280000000000000
          Height = 710.551151810000000000
          StretchMode = smMaxHeight
          DataField = 'IdPersonal'
          DataSet = frxDBContrato
          DataSetName = 'frxDBContrato'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035385C6465666C616E6766653230
            35385C6465667461623730387B5C666F6E7474626C7B5C66305C66726F6D616E
            5C66707271325C6663686172736574302054696D6573204E657720526F6D616E
            3B7D7B5C66315C666E696C5C6663686172736574302054696D6573204E657720
            526F6D616E3B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C67726565
            6E305C626C7565303B5C7265643235355C677265656E305C626C7565303B5C72
            656435315C677265656E35315C626C75653135333B7D0D0A7B5C7374796C6573
            686565747B204E6F726D616C3B7D7B5C73312068656164696E6720313B7D7D0D
            0A7B5C2A5C67656E657261746F722052696368656432302031302E302E313833
            36327D5C766965776B696E64345C756331200D0A5C706172645C6E6F77696463
            746C7061725C71635C625C66305C667333315C6C616E67313033345C7061720D
            0A434F4E545241544F2020504F52205449454D504F20595C7061720D0A4F4252
            412044455445524D494E4144415C7061720D0A5C62305C7061720D0A0D0A5C70
            6172645C6E6F77696463746C7061725C716A5C66315C6673323320436F6E7472
            61746F20696E646976696475616C2064652074726162616A6F20706F72206F62
            72612064657465726D696E616461207175652063656C656272616E20706F7220
            756E612070617274652C5C622020434F4D50415C2764315C2763644120444520
            4D554C5449534552564943494F532050415241204D414E54454E494D49454E54
            4F20494E54454752414C45532C20532E412E20444520432E562E2C205C623020
            726570726573656E7461646120706F7220656C205C6220432E20496C69616E61
            2064656C204361726D656E204372757A20475C2766336D657A5C6230202C2063
            6F6D6F20706174725C2766336E207920706F72206C61206F747261206C612020
            432E5C6673323220205C625C6C616E6732303538205B5C6366315C756C5C6673
            323020555446384465636F6465283C5C6366305C756C6E6F6E655C6673323220
            6672784442436F6E747261746F2E224E6F6D627265223E295D5C6366325C6673
            32335C6C616E673130333420205C6366305C623020636F6D6F2074726162616A
            61646F72207920717569656E657320706F722072617A5C2766336E2064652062
            726576656461642073652064656E6F6D696E61725C2765316E20656E20656C20
            637572736F2064656C2070726573656E746520636F6E747261746F205C625C6C
            64626C71756F746520434F4D50415C2764315C276364415C7264626C71756F74
            655C6230202079205C625C6C64626C71756F74652054524142414A41444F525C
            7264626C71756F74655C6230202C20726573706563746976616D656E74652C20
            7920656C207175652073652073756A6574616E2061206C617320736967756965
            6E746573206465636C61726163696F6E6573207920636C5C2765317573756C61
            733A5C625C667332375C7061720D0A0D0A5C706172645C6E6F77696463746C70
            61725C7478363139355C7461625C7061720D0A0D0A5C706172645C6E6F776964
            63746C7061725C7163204445434C41524143494F4E45535C7061720D0A5C6673
            32335C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C716A2050
            52494D4552415C6230202E2D204C61205C6220434F4D50415C2764315C276364
            415C62302020657320756E6120736F636965646164206D657263616E74696C2C
            206465626964616D656E746520636F6E737469747569646120646520636F6E66
            6F726D6964616420636F6E206C6173206C65796573206D65786963616E61732C
            20717565207469656E6520656E747265206F7472617320616374697669646164
            6573206C6120646520534552564943494F532044453A205C62204D414E54454E
            494D49454E544F2C20494E47454E4945525C276363412C204445534152524F4C
            4C4F2C20494D504C454D454E544143494F4E2C20494E5354414C4143494F4E2C
            20504C414E454143495C2764324E2C2050524F44554343494F4E204445205349
            5354454D41532044452052454652494745524143494F4E2C2041495245204143
            4F4E444943494F4E41444F2C2053495354454D415320484944525C276330554C
            49434F532C204E45554D5C2763305449434F532C20454C5C2763384354524943
            4F532C20454C454354525C2764324E49434F532C20454C454354524F4D45435C
            2763304E49434F532C204D45435C2763304E49434F53205041524120494E5354
            414C4143494F4E455320504554524F4C455241532C20434F4D455243494F532C
            20484F54454C45532C2045534355454C41532C20484F53504954414C45532045
            20494E445553545249415320454E2047454E4552414C2E5C7061720D0A5C756C
            5C62305C7061720D0A5C756C6E6F6E655C667332325C7061720D0A5C625C6673
            323320534547554E44415C6230202E2D204C61205C6220434F4D50415C276431
            5C276364415C623020206465636C6172612020656E2076697274756420646520
            686162657273652061646A7564696361646F20656C20636F6E747261746F2070
            6F72207061727465206465206C6120636F6D70615C2766315C27656461205C62
            20545950484F4E4E204F464653484F5245205341504920444520432E562E5C62
            302020207265666572656E74652061205C625C6C64626C71756F746520536572
            766963696F7320496E7465677261646F73207061726120496E74657276656E63
            695C2766336E20646520506F7A6F73204D6172696E6F73207920536F706F7274
            6520656E20656C204D616E74656E696D69656E746F206120496E7374616C6163
            696F6E6573204D6172696E61732064652050455020636F6E2061706F796F2064
            6520756E6120456D626172636163695C2766336E2E5C7264626C71756F74655C
            62302020436F6E747261746F204E6F2E203634313030353831382E2053652065
            737461626C652071756520656C206D65635C2765316E69736D6F206465206C6F
            732074726162616A6F73207365206C6C65766172616E2061206361626F206D65
            6469616E7465205C62206F7264656E657320646520736572766963696F202853
            49545C623020292065787065646964617320706F7220656C20636C69656E7465
            20616E746573206D656E63696F6E61646F202C206469636861206F7264656E20
            646520736572766963696F20706F64725C276531207465726D696E617220616E
            74696369706164616D656E7465206F20706F64725C276531207365722070726F
            72726F6761646F206465206163756572646F2061206C6173206E656365736964
            616465732064656C20636C69656E74652C5C6220205C623020706F72206C6F20
            207175652020736520636F6E7472617461206C6F7320736572766963696F7320
            64656C205C622054524142414A41444F525C62302020612066696E2064652073
            617469736661636572206C61206E65636573696461642020656E20666F726D61
            207472616E7369746F7269612079206576656E7475616C206166656374612E5C
            756C5C625C7061720D0A5C756C6E6F6E655C62305C7061720D0A5C667332325C
            7061720D0A5C6220544552434552415C6230202E2D20456C20435C62202E205C
            6C616E6732303538205B5C6366315C756C5C6673323020555446384465636F64
            65283C5C6366305C756C6E6F6E655C66733232206672784442436F6E74726174
            6F2E224E6F6D627265223E295D5C6366325C667332335C6C616E673130333420
            205C6366305C62305C66733232206465636C61726120736572206465206E6163
            696F6E616C69646164205C625C6C616E6732303538204D65786963616E615C63
            66325C6C616E67313033342020205C6366305C6230206465205C6366315C625C
            6C616E6732303538205B5C756C5C6673323020555446384465636F6465283C5C
            756C6E6F6E655C66733232206672784442436F6E747261746F2E224564616422
            3E295D5C6366305C6C616E673130333420205C623020615C2766316F73206465
            20656461642C2065737461646F20636976696C5C6220205C6366315C6C616E67
            32303538205B5C756C5C6673323020555446384465636F6465283C5C756C6E6F
            6E655C66733232206672784442436F6E747261746F2E2245737461646F436976
            696C223E295D5C62305C6C616E6731303334202C20524643205C625C6C616E67
            32303538205B5C756C5C6673323020555446384465636F6465283C5C756C6E6F
            6E655C66733232206672784442436F6E747261746F2E22726663223E295D5C62
            3020205C6C616E67313033342043555250205C625C6C616E6732303538205B5C
            756C5C6673323020555446384465636F6465283C5C756C6E6F6E655C66733232
            206672784442436F6E747261746F2E2243757270223E295D205C6366305C6230
            5C6C616E673130333420636F6E20646F6D6963696C696F20656E5C6220205C63
            66315C6C616E6732303538205B5C756C5C6673323020555446384465636F6465
            283C5C756C6E6F6E655C66733232206672784442436F6E747261746F2E22446F
            6D6963696C696F223E295D2C205B6672784442436F6E747261746F2E22436975
            646164225D2C205B6672784442436F6E747261746F2E2245737461646F225D5C
            6366305C62305C6C616E6731303334202C20207175652073655C276631616C61
            2070617261206F5C276564722020746F646120636C617365206465206E6F7469
            6669636163696F6E65732C20656E206C6F7320745C276539726D696E6F732064
            65206C61204C6579204665646572616C2064656C2054726162616A6F2C20656C
            2070726573656E746520636F6E747261746F2079206C61732072656C6163696F
            6E657320717565207365206465726976656E2064656C206D69736D6F2C206F62
            6C69675C2765316E646F736520612070726F706F7263696F6E6172206375616C
            71756965722063616D62696F20646520646F6D6963696C696F20792C20736920
            6E6F206C6F20686963696572652C2061636570746120717565207365725C2765
            316E20765C2765316C69646173206C6173207175652073652070726163746971
            75656E20656E20656C20616E7465732073655C276631616C61646F2E5C706172
            0D0A5C7061720D0A5C7061720D0A5C62204355415254413A5C62302020456C20
            432E205C625C6C616E6732303538205B5C6366315C756C5C6673323020555446
            384465636F6465283C5C6366305C756C6E6F6E655C6673323220667278444243
            6F6E747261746F2E224E6F6D627265223E295D5C6366325C667332335C6C616E
            673130333420205C6366305C62305C66733232206861206D616E696665737461
            646F2061206C6120434F4D50415C2764315C2763644120657374617220656E20
            646973706F6E6962696C696461642064652073657220636F6E7472617461646F
            20706F72206F6272612064657465726D696E6164612061207175652073652072
            6566697269657265206C6120736567756E6461206465206C6173206465636C61
            726163696F6E65732C2061735C27656420636F6D6F2074656E6572206C6F7320
            636F6E6F63696D69656E746F7320792063617061636964616420737566696369
            656E74652C2061735C27656420636F6D6F206C612070725C2765316374696361
            20792061707469747564206E656365736172696173207061726120646573656D
            70655C276631617220656C2070756573746F206465205C6366315C625C6C616E
            6732303538205B5C756C5C6673323020555446384465636F6465283C5C756C6E
            6F6E655C66733232206672784462436F6E747261746F2E2250756573746F223E
            295D5C6366325C667332335C6C616E67313033342020205C6366305C62302065
            6E20656C2070726F796563746F5C6220205C623020205C625C667332325C6C64
            626C71756F74655C6673323320536572766963696F7320496E7465677261646F
            73207061726120496E74657276656E63695C2766336E20646520506F7A6F7320
            4D6172696E6F73207920536F706F72746520656E20656C204D616E74656E696D
            69656E746F206120496E7374616C6163696F6E6573204D6172696E6173206465
            2050455020636F6E2061706F796F20646520756E6120456D626172636163695C
            2766336E2E5C667332325C7264626C71756F74655C623020205C6220436F6E74
            7261746F204E6F2E203634313030353831382C5C623020206D6F7469766F2070
            6F7220656C206375616C206C6173207061727465732068616E2063656C656272
            61646F20656C2070726573656E746520636F6E747261746F2071756520736520
            636F6E7469656E6520616C2074656E6F72206465206C6173207369677569656E
            7465733A5C7061720D0A5C7061720D0A5C6366335C756C5C7061720D0A0D0A5C
            706172645C6B6565706E5C6E6F77696463746C7061725C73315C71635C636630
            5C756C6E6F6E655C625C6673323720434C415553554C41535C7061720D0A0D0A
            5C706172645C6E6F77696463746C7061725C716A5C62305C667332335C706172
            0D0A5C62205052494D4552415C6230202E2D205C756C204F424C49474143494F
            4E45535C756C6E6F6E65202E205C6220454C5C623020205C622054524142414A
            41444F525C623020207365206F626C6967612061207072657374617220737573
            20736572766963696F7320706572736F6E616C65732061206C61205C6220434F
            4D50415C2764315C276364415C62302020656E20656C20646F6D6963696C696F
            206465205C2765397374612C207562696361646F20656E2043414C4C45203338
            204E6F2E2036325C62202C205C623020454E5452452020313920592032352C20
            436F6C2E204375617568745C2765396D6F632C204369756461642064656C2043
            61726D656E2C2043616D70656368652C20432E502E2032343137305C6220205C
            27663220656E20656C206C756761722071756520706172612074616C20656665
            63746F207365206C6520696E64697175652C5C62302020636F6D6F5C63663220
            3A205C6366315C625C667332325C6C616E6732303538205B5C756C5C66733230
            20555446384465636F6465283C5C756C6E6F6E655C6673323220667278446243
            6F6E747261746F2E2250756573746F223E295D5C6366325C667332335C6C616E
            673130333420205C63663020205C623020205C625C6673323220656E20656C20
            70726F796563746F3A205C6C64626C71756F74655C6673323320536572766963
            696F7320496E7465677261646F73207061726120496E74657276656E63695C27
            66336E20646520506F7A6F73204D6172696E6F73207920536F706F7274652065
            6E20656C204D616E74656E696D69656E746F206120496E7374616C6163696F6E
            6573204D6172696E61732064652050455020636F6E2061706F796F2064652075
            6E6120456D626172636163695C2766336E2E5C667332325C7264626C71756F74
            655C623020205C6220436F6E747261746F204E6F2E203634313030353831385C
            623020205C667332332074726162616A6F207175652064656265725C27653120
            646573656D70655C2766316172206465736172726F6C6C616E646F207369656D
            707265207375206D61796F72206163746976696461642079206566696369656E
            6369612E204C61206F6375706163695C2766336E207072696E636970616C2064
            656C205C622054524142414A41444F525C623020207365725C27653120207072
            65737461722073757320736572766963696F7320636F6D6F3A205C6366315C62
            5C667332325C6C616E6732303538205B5C756C5C667332302055544638446563
            6F6465283C5C756C6E6F6E655C66733232206672784462436F6E747261746F2E
            2250756573746F223E295D5C6366325C667332335C6C616E673130333420205C
            623020205C636630207175656461206269656E20656E74656E6469646F207175
            65206573746120656E756D65726163695C2766336E206465206C61626F726573
            20657320656E756E636961746976612079206E6F206C696D697461746976612C
            20746F64612076657A2071756520656C205C622054524142414A41444F525C62
            3020207469656E65206F626C69676163695C2766336E206465206174656E6465
            722074616D62695C2765396E206375616C7175696572206F74726F2074726162
            616A6F20616E65786F206F20636F6E65786F20636F6E207375206F626C696761
            63695C2766336E207072696E636970616C2C206F206375616C65737175696572
            61206F747261206163746976696461642C207369656D7072652079206375616E
            646F207365206C6520726573706574652073752073616C6172696F2C2061756E
            206375616E646F206163636964656E74616C6D656E7465206861796120646520
            73657220646573656D70655C27663161646F2066756572612064656C206C7567
            61722064652074726162616A6F2E205C6220454C2054524142414A41444F5220
            5C6230206163617461725C276531207369656D70726520656E20746F646F7320
            737573206163746F732061206C6173205C2766337264656E6573207175652073
            7573206A65666573206C652064656E2C206C617320646973706F736963696F6E
            65732064656C205265676C616D656E746F20496E746572696F72206465205472
            6162616A6F206465206C61205C6220434F4D50415C2764315C276364415C6230
            2020717565206C65207365612061706C696361626C652C2079206C6173206465
            6D5C2765317320646973706F736963696F6E65732079205C2766337264656E65
            7320717565205C276539737461206C652064696374652E5C7061720D0A5C7061
            720D0A5C7061720D0A5C6220534547554E44415C6230202E2D205C756C204455
            524143495C2764334E2044454C20434F4E545241544F5C756C6E6F6E65202E20
            456C2070726573656E746520636F6E747261746F207365725C27653120706F72
            205C756C5C62205449454D504F2059204F4252412044455445524D494E414441
            2C205C756C6E6F6E655C6673323220656E20656C2070726F796563746F3A205C
            6C64626C71756F74655C6673323320536572766963696F7320496E7465677261
            646F73207061726120496E74657276656E63695C2766336E20646520506F7A6F
            73204D6172696E6F73207920536F706F72746520656E20656C204D616E74656E
            696D69656E746F206120496E7374616C6163696F6E6573204D6172696E617320
            64652050455020636F6E2061706F796F20646520756E6120456D626172636163
            695C2766336E2E5C667332325C7264626C71756F7465202C5C623020205C6673
            323320616C2076656E63696D69656E746F206465206375796F20745C27653972
            6D696E6F20636F6E636C7569725C27653120746F64612072656C6163695C2766
            336E2064657269766164612064656C206D69736D6F2073696E206E696E67756E
            6120726573706F6E736162696C69646164207061726120656C20706174725C27
            66336E5C66733232202E5C7061720D0A5C7061720D0A5C7061720D0A5C667332
            33204C61732070617274657320636F6E7669656E656E20656E20717565207061
            726120656C206361736F20646520717565205C6C64626C71756F746520454C20
            54524142414A41444F525C7264626C71756F7465202064656D75657374726520
            6C612066616C7461206465206361706163696461642C20617074697475646573
            206F206C617320666163756C7461646573207175652064696A6F2074656E6572
            2C205C6C64626C71756F746520454C20504154525C2764334E5C7264626C7175
            6F74652020706F64725C2765312072657363696E64697220737520636F6E7472
            61746F2064652074726162616A6F2073696E206E696E67756E6120726573706F
            6E736162696C696461642064652073752070617274652C20656E20745C276539
            726D696E6F73206465206C6F2064697370756573746F20706F7220656C206E75
            6D6572616C203437207920323038206465206C61206C6579206665646572616C
            2064656C2074726162616A6F20656E207669676F722C205C7061720D0A5C7061
            720D0A5C7061720D0A5C6220544552434552415C6230202E2D205C756C204A4F
            524E4144412044452054524142414A4F5C756C6E6F6E65202E20536572612063
            6F6D6F206C6F20696E6469717565206C61206C6579206665646572616C206465
            6C2074726162616A6F2E204C61206A6F726E6164612064652074726162616A6F
            206120717565207365207265666965726520656C20705C276531727261666F20
            616E746572696F72206F626564656365206120717565207365207469656E6520
            726570617274696461206C61206A6F726E61646120656E206C6F7320745C2765
            39726D696E6F732064656C204172745C27656463756C6F203539206465206C61
            204C6579204665646572616C2064656C2054726162616A6F2E5C7061720D0A5C
            7061720D0A4C617320636F6E646963696F6E65732064652074726162616A6F20
            656E206F627261207175656461725C2765316E2065737461626C656369646173
            20656E20656C205265676C616D656E746F20496E746572696F72206465205472
            6162616A6F20636F6E73696465725C2765316E646F7365205C27653973746520
            756E20616E65786F2061206C612070726573656E746520636C5C276531757375
            6C612E5C7061720D0A5C7061720D0A456C205C62205452414A41444F525C6230
            2020666163756C746120657870726573616D656E74652061206C61205C622043
            4F4D50415C2764315C276364415C6230202070617261206D6F64696669636172
            20656C20686F726172696F2064652074726162616A6F20616E746572696F722C
            206465206163756572646F20636F6E206C6173206E6563657369646164657320
            6465206C61206D69736D612E5C625C7061720D0A5C7061720D0A435541525441
            5C6230202E2D205C756C2053414C4152494F5C756C6E6F6E65202E20454C205C
            622054524142414A41444F525C6230202070657263696269725C27653120636F
            6D6F207375656C646F20706F72206C612070726573746163695C2766336E2064
            65206C6F7320736572766963696F732061207175652073652072656669657265
            206573746520636F6E747261746F2C206C612063616E7469646164206465205C
            6366315C625C667332325C6C616E6732303538205B6672784442436F6E747261
            746F2E2273496D706F72746553616C6172696F225D20285B5355454C444F5F4C
            455452415D29204E45544F5C6366305C667332335C6C616E673130333420205C
            623020706F7220747265696E746120645C27656461732E20456C207061676F20
            64656C2073616C6172696F207365725C2765312070616761646F206361746F72
            63656E616C2C20656E206C6173206F666963696E6173206465206C61205C6220
            434F4D50415C2764315C276364415C623020206F20656E20656C206C75676172
            20646F6E646520736520656E6375656E747265207072657374616E646F207375
            7320736572766963696F732061206E6F6D627265206465205C2765397374612E
            5C7061720D0A5C7061720D0A456C205C622054524142414A41444F525C623020
            20726563696269725C276531206C612070617274652070726F706F7263696F6E
            616C20646520616775696E616C646F2C2064656C20706572696F646F20616E75
            616C206465207661636163696F6E65732061207175652074656E676120646572
            6563686F2C20646520636F6E666F726D696461642061206C6F2065737461626C
            656369646F20656E206C6F73206172745C27656463756C6F7320373620792038
            37206465206C61204C4654202E506F722073752070617274652C20656C207472
            6162616A61646F722074656E64725C2765312074616D62695C2765396E202064
            65726563686F2020616C207061676F206465206C612070617274652070726F70
            6F7263696F6E616C206465206C61207072696D61207661636163696F6E616C20
            646520636F6E666F726D696461642061206C6F2071756520646973706F6E6520
            656C206172745C27656463756C6F203830206465206C61204C6579206465206C
            61206D6174657269612E5C7061720D0A5C7061720D0A5C7061720D0A5C706172
            0D0A0D0A5C706172645C6E6F77696463746C7061725C72692D32305C62205155
            494E54412E2D5C62302020416D62617320706172746573206465636C6172616E
            2071756520636F6E6F63656E20737573206F626C69676163696F6E6573207920
            70726F6869626963696F6E65732C20706F72206C6F2071756520726573706563
            746120616C20706174725C2766336E2C206C6F73204172742E20313332207920
            313333206465206C61204C4654207920706F72206C6F20717565207365207265
            666965726520616C2074726162616A61646F72206C6F73204172742E20313334
            20792031333520646520646963686F206F7264656E616D69656E746F206C6567
            616C2E5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C716A5C
            7061720D0A5C622053455854412E2D5C623020205449454D504F204558545241
            4F5244494E4152494F2E2051756564612070726F68696269646F20616C205452
            4142414A41444F522074726162616A6172207469656D706F2065787472616F72
            64696E6172696F207369206E6F20657320636F6E20636F6E73656E74696D6965
            6E746F2070726576696F2079206F7264656E20657363726974612C2064616461
            20706F72206C6120434F4D50415C2764315C276364412E204375616E646F2070
            6F72206375616C71756965722063697263756E7374616E636961206465626120
            74726162616A617220656C2054524142414A41444F52206D61796F7220746965
            6D706F2071756520656C2073655C276631616C61646F20636F6D6F206A6F726E
            616461206F7264696E617269612C20726563616261725C276531207072657669
            616D656E7465206465206C612020434F4D50415C2764315C27636441206C6120
            6F7264656E2061207175652073652072656669657265206573746120636C5C27
            65317573756C612C2073696E206375796F2072657175697369746F206E6F206C
            65207365725C2765312061626F6E6164612063616E746964616420616C67756E
            6120706F7220656C207469656D706F207175652074726162616A6520636F6E20
            65786365736F2061206C61206A6F726E616461206C6567616C2E5C7061720D0A
            5C7061720D0A5C622053455054494D412E2D5C6230202052454349424F204445
            2053414C4152494F532E20454C2054524142414A41444F52207365206F626C69
            67612061206F746F72676172206C6F7320645C2765646173206465207061676F
            206465207375656C646F7320756E2072656369626F2061206661766F72206465
            206C6120434F4D50415C2764315C276364412020706F72206C6120746F74616C
            69646164206465206C6F73207375656C646F7320646576656E6761646F732068
            617374612066656368612C20656E74656E64695C2765396E646F736520717565
            20656C206F746F7267616D69656E746F2064656C206D69736D6F20696D706C69
            6361725C27653120737520636F6E666F726D6964616420656E2071756520656C
            207375656C646F20726563696269646F20637562726520656C2074726162616A
            6F20646573656D70655C27663161646F2C20796120717565206375616C717569
            65722063616E74696461642061206C612071756520637265796572652074656E
            6572206465726563686F2064656265725C276531206578696769726C61207072
            65636973616D656E746520616C206F746F7267617220656C2072656369626F20
            6465207265666572656E6369612E204C61206669726D612064656C2072656369
            626F20636F72726573706F6E6469656E746520696D706C696361725C27653120
            756E207061676F20746F74616C2070617261206C6120434F4D50415C2764315C
            2763644120706F72206375616C717569657220636C617365206465207375656C
            646F732061207175652074757669657265206465726563686F20656C20545241
            42414A41444F5220706F72206C6F7320736572766963696F7320707265737461
            646F73206861737461206573612066656368612C2061756E206375616E646F20
            6E6F207365206469676120656E20656C2072656369626F20616E746572696F72
            2E20205C7061720D0A205C625C7061720D0A4F43544156415C6230202E2D2045
            6E206174656E63695C2766336E2061206C61206E61747572616C657A61206465
            6C2070756573746F2071756520646573656D70655C2766316120656C205C6220
            54524142414A41444F525C6230202C20656C206D69736D6F207365206F626C69
            6761206120646573656D70655C27663161722073752074726162616A6F20656E
            206375616C7175696572206C756761722064656C207465727269746F72696F20
            6E6163696F6E616C2C2061735C27656420636F6D6F20612068616365726C6F20
            656E206375616C7175696572206F74726F2070756573746F2073696E20706572
            6A756963696F2064652073752073616C6172696F2E5C7061720D0A5C625C7061
            720D0A4E4F56454E415C6230202E2D205C756C20434F4E464944454E4349414C
            494441445C756C6E6F6E65202E20456E206174656E63695C2766336E2061206C
            617320616374697669646164657320717565207265616C697A61206C61205C62
            20434F4D50415C2764315C276364415C62302020792064616461206C61206E65
            63657369646164206465206D616E74656E657220656E206162736F6C75746120
            636F6E666964656E6369616C69646164206C6F7320706C616E65732079207072
            6F796563746F73206465206C61205C6220434F4D50415C2764315C276364415C
            6230202079206465206375616C7175696572206F747261206E61747572616C65
            7A612C20656C205C622054524142414A41444F52205C6230207365206F626C69
            67612061206775617264617220657363727570756C6F73616D656E7465206C6F
            73207365637265746F7320745C276539636E69636F732C20636F6D6572636961
            6C65732079206465206661627269636163695C2766336E206465206C6F732070
            726F647563746F732C2061206375796120656C61626F726163695C2766336E20
            636F6E63757272616E2064697265637461206F20496E646972656374616D656E
            7465206F206465206C6F73206375616C65732074656E676120636F6E6F63696D
            69656E746F20706F722072617A6F6E65732064652074726162616A6F2C206173
            5C27656420636F6D6F206465206C6F73206173756E746F732061646D696E6973
            7472617469766F732C206375796120646976756C676163695C2766336E207075
            65646120636175736172207065726A756963696F732061206C61205C6220434F
            4D50415C2764315C276364415C6230202C20656E206C6120696E74656C696765
            6E6369612064652071756520656C20696E63756D706C696D69656E746F206573
            7065635C2765646669636F2064652065737461206F626C69676163695C276633
            6E2C206C6F206861725C276531206163726565646F722061206C612072657363
            6973695C2766336E20646520737520436F6E747261746F206465205472616261
            6A6F2C20646520636F6E666F726D6964616420636F6E206C6F20646973707565
            73746F20656E20656C204172745C27656463756C6F203437206465206C61204C
            6579204665646572616C2064656C2054726162616A6F20792061206C61732070
            656E61732071756520696D706F6E6520656C20435C2766336469676F2050656E
            616C207061726120656C20446973747269746F204665646572616C2C20656E20
            737573204172745C27656463756C6F7320323130207920323131206F20737573
            20636F7272656C617469766F7320456E206C6F73206469766572736F7320635C
            2766336469676F732070656E616C6573206465206C61205265705C276661626C
            696361204D65786963616E612E5C625C7061720D0A5C7061720D0A5C7061720D
            0A445C27633943494D415C6230202E2D5C756C20204C45592041504C49434142
            4C455C756C6E6F6E65202E20416D6261732070617274657320636F6E7669656E
            656E2071756520656E206361736F206465206A756963696F206F20696E746572
            707265746163695C2766336E206465206C6173206F626C69676163696F6E6573
            20646572697661646173206465206573746520636F6E747261746F2079207061
            726120746F646F20617175656C6C6F20717565206E6F20736520656E6375656E
            74726520657870726573616D656E7465207061637461646F20656E20656C206D
            69736D6F2C20736520736F6D6574656E2061206C61206A757269736469636369
            5C2766336E206465206C6173206A756E74617320657370656369616C65732064
            6520636F6E63696C696163695C2766336E207920617262697472616A65206465
            2065737461206369756461642C206465206163756572646F2061206C6F732061
            72745C27656463756C6F7320353237206672616363695C2766336E2069692069
            6E6369736F2033207920363938206465206C61206C6579206665646572616C20
            64656C2074726162616A6F20766967656E74652E5C7061720D0A5C7061720D0A
            0D0A5C706172645C6E6F77696463746C7061725C73613132305C716A5C622044
            5C27633943494D41205052494D4552412E2D5C6230202044494153204E4F204C
            41424F5241444F532E204C6F7320645C2765646173206E6F206C61626F726164
            6F7320656E20656C205C2763317265612064652054726162616A6F206E6F2073
            65725C2765316E20636F6E736964657261646F73207061726120656C20635C27
            65316C63756C6F2064656C2073616C6172696F2E5C7061720D0A5C625C706172
            0D0A445C27633943494D4120534547554E44412E2D5C62302020564941544943
            4F532E204E6F206573745C276531206175746F72697A61646F20656C20706167
            6F2064652076695C2765317469636F73207061726120656C20706572736F6E61
            6C2E5C7061720D0A5C625C7061720D0A445C27633943494D4120544552434552
            412E2D5C62302020496E74656772696461642C2053656775726964616420656E
            20656C2054726162616A6F20792050726F74656363695C2766336E20616C204D
            6564696F20416D6269656E74652E20456C2074726162616A61646F7220736520
            636F6D70726F6D6574652061206E6F207472616E7367726564697220656C2065
            6E746F726E6F2C206C7565676F20656E746F6E636573206120636C6173696669
            636172206C6F73206465736563686F732079206120636F6E66696E61726C6F73
            20656E206C6F73206C756761726573207175652064657369676E65206C612065
            6D707265736120636F6E20656C2070726F705C2766337369746F206465207072
            65736572766172207920666F6D656E74617220656C206375696461646F207175
            65206D657265636520656C206D6564696F20616D6269656E74652E5C7061720D
            0A456C2074726162616A61646F7220736520636F6D70726F6D65746520612063
            6F6E6475636972736520636F6E20686F6E65737469646164206520696E746567
            72696461642079206465206E6F2070726F706F6E65722C207375676572697220
            79207061727469636970617220656E206163746F73207175652074656E67616E
            20636F6D6F2070726F705C2766337369746F20636F72726F6D70657220612066
            756E63696F6E6172696F7320705C276661626C69636F732C2070726F76656564
            6F7265732C206574632E5C7061720D0A456C2074726162616A61646F72207365
            20636F6D70726F6D6574652061207265737065746172206C6173206E6F726D61
            73206465207365677572696461642C20657370656369616C6D656E7465206475
            72616E746520656C20646573656D70655C2766316F20646520737573206C6162
            6F7265732C20612075736172206C6F732065717569706F732064652073656775
            726964616420792061206E6F20706F6E657220656E2072696573676F206C6173
            20696E7374616C6163696F6E65732C2065717569706F732C207065726F20736F
            62726520746F646F20656C206375696461646F206465206C617320706572736F
            6E61732C20636F6D70615C27663165726F732C2073757065727669736F726573
            2C20636F6C61626F7261646F7265732C206574632E5C7061720D0A4C6120436F
            6D70615C2766315C27656461207469656E6520636F6D6F2070726F705C276633
            7369746F2061646F7074617220616374697475646573207920636F6E64756374
            617320646520696E74656772696461642C206465207365677572696461642065
            6E20656C2074726162616A6F20792064652070726F74656363695C2766336E20
            616C206D6564696F20616D6269656E74652C206D616E69666573745C2765316E
            646F736520636F6D6F20756E6120616C7465726E617469766120766961626C65
            2070617261207265736F6C766572207920736F6C76656E7461722070726F626C
            656D61732079206E65636573696461646573206465206E75657374726F732063
            6C69656E746573206D656469616E746520756E20736572766963696F20656669
            6369656E74652C2065666963617A20792065636F6E5C2766336D69636F2E5C70
            61720D0A0D0A5C706172645C6E6F77696463746C7061725C716A5C7061720D0A
            4C655C276564646F206573746520646F63756D656E746F20706F7220616D6261
            7320706172746573207920656E74657261646F7320646520737520636F6E7465
            6E69646F2C206465726563686F732C206F626C69676163696F6E65732C20616C
            63616E636573207920667565727A61206C6567616C2C206C6F206669726D6120
            646520636F6D5C2766616E206163756572646F207920706F72206475706C6963
            61646F2C206D616E6966657374616E646F20616D626173207061727465732071
            7565206573746520636F6E747261746F206861207369646F20656C2070726F64
            7563746F20646520737573206C69627265732079206573706F6E74616E656173
            20766F6C756E74616465732C20717565206E6F2068612068616269646F206572
            726F722C20656E67615C2766316F2C20646F6C6F2C206D616C612066652C2076
            696F6C656E6369612C20656E726971756563696D69656E746F206E6920656D70
            6F62726563696D69656E746F20696C65676974696D6F2C206E69206E696E675C
            2766616E206F74726F20766963696F20717565207065727475726265206C6120
            6C69627265206D616E69666573746163695C2766336E206465206C6120766F6C
            756E7461642C2071756564616E646F20656C206F726967696E616C2061207265
            7367756172646F206465205C6C64626C71756F7465204C4120454D5052455341
            5C7264626C71756F7465202C20656E206C61205C6366315C6220434955444144
            2044454C204341524D454E2C2043414D50454348452C20454C20445C27636441
            20205C667332325C6C616E6732303538205B6672784442436F6E747261746F2E
            224665686361436F6E747261746F225D5C6C616E673130333420205C66733233
            202E5C7061720D0A5C7061720D0A5C6366305C62305C7061720D0A5C74726F77
            645C74726761706837305C74726C6566742D37305C7472706164646C37305C74
            72706164647237305C747270616464666C335C7472706164646672330D0A5C63
            656C6C78353130335C63656C6C783130303434200D0A5C706172645C696E7462
            6C5C6E6F77696463746C7061725C71635C625C6673323520506F72206C61205C
            6C64626C71756F746520434F4D50415C2764315C276364415C7264626C71756F
            74655C63656C6C5C6C64626C71756F746520454C2054524142414A41444F525C
            7264626C71756F74655C63656C6C5C726F775C74726F77645C74726761706837
            305C74726C6566742D37305C7472706164646C37305C7472706164647237305C
            747270616464666C335C7472706164646672330D0A5C63656C6C78353130335C
            63656C6C783130303434200D0A5C706172645C696E74626C5C6E6F7769646374
            6C7061725C71635C63656C6C5C63656C6C5C726F775C74726F77645C74726761
            706837305C74726C6566742D37305C7472706164646C37305C74727061646472
            37305C747270616464666C335C7472706164646672330D0A5C63656C6C783531
            30335C63656C6C783130303434200D0A5C706172645C696E74626C5C6E6F7769
            6463746C7061725C71635C63656C6C5C63656C6C5C726F775C74726F77645C74
            726761706837305C74726C6566742D37305C7472706164646C37305C74727061
            64647237305C747270616464666C335C7472706164646672330D0A5C63656C6C
            78353130335C63656C6C783130303434200D0A5C706172645C696E74626C5C6E
            6F77696463746C7061725C71635C63656C6C5C63656C6C5C726F775C74726F77
            645C74726761706837305C74726C6566742D37305C7472706164646C37305C74
            72706164647237305C747270616464666C335C7472706164646672330D0A5C63
            656C6C78353130335C63656C6C783130303434200D0A5C706172645C696E7462
            6C5C6E6F77696463746C7061725C7163205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C62305C63656C6C5C62205F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C62305C
            63656C6C5C726F775C74726F77645C74726761706837305C74726C6566742D37
            305C747272683234305C7472706164646C37305C7472706164647237305C7472
            70616464666C335C7472706164646672330D0A5C63656C6C78353130335C6365
            6C6C783130303434200D0A5C706172645C696E74626C5C6E6F77696463746C70
            61725C71635C625C6673323320432E20496C69616E612064656C204361726D65
            6E204372757A20475C2766336D657A5C62305C6C616E67313034365C63656C6C
            5C667332325C6C616E673130333420432E205C625C6C616E6732303538205B5C
            6366315C756C5C6673323020555446384465636F6465283C5C6366305C756C6E
            6F6E655C66733232206672784442436F6E747261746F2E224E6F6D627265223E
            295D5C6C616E673130333420205C6366325C667332335C63656C6C5C726F7720
            0D0A5C706172645C6366335C667332325C7061720D0A5C7061720D0A5C706172
            0D0A5C7061720D0A5C7061720D0A5C7061720D0A5C7061720D0A5C7061720D0A
            5C7061720D0A5C7061720D0A5C7061720D0A3D3D3D3D5C7061720D0A5C706172
            0D0A5C7061720D0A5C7061720D0A5C7061720D0A5C7061720D0A7D0D0A00}
        end
      end
    end
  end
end
