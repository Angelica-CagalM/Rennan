object frmBajarMasivo: TfrmBajarMasivo
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Empleados'
  ClientHeight = 500
  ClientWidth = 794
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
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grid_Personal: TcxGrid
    Left = 0
    Top = 164
    Width = 794
    Height = 142
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
      object Grid_cuadrillaColumn4: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CodigoPersonal'
        Options.Editing = False
        Width = 86
      end
      object Grid_cuadrillaColumn2: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'NombreCompleto'
        Options.Editing = False
        Width = 247
      end
      object Grid_cuadrillaColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Puesto'
        Options.Editing = False
        Width = 258
      end
      object Grid_cuadrillaColumn5: TcxGridDBColumn
        Caption = 'Fecha Subida'
        DataBinding.FieldName = 'FechaSubidaP'
        Width = 87
      end
      object Grid_cuadrillaColumn1: TcxGridDBColumn
        Caption = 'Total Dias'
        DataBinding.FieldName = 'DiasT'
        Width = 64
      end
    end
    object cxViewCuadrilla: TcxGridLevel
      GridView = Grid_cuadrilla
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 33
    Align = alTop
    TabOrder = 1
    object cxLabelTitulo: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      AutoSize = False
      Caption = ' Bajar Personal de Guardia'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
      Height = 31
      Width = 432
    end
    object cxTexGuardia: TcxTextEdit
      Left = 433
      Top = 1
      Align = alRight
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 360
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 794
    Height = 109
    Align = alTop
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 44
      Width = 1
      Height = 89
      Color = 14803425
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 87
      ClientRectLeft = 2
      ClientRectRight = 2
      ClientRectTop = 2
    end
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 792
      Height = 107
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Properties.ActivePage = cxTabSheet3
      Properties.CustomButtons.Buttons = <>
      OnChange = cxPageControl2Change
      ClientRectBottom = 105
      ClientRectLeft = 2
      ClientRectRight = 790
      ClientRectTop = 30
      object cxTabSheet1: TcxTabSheet
        Caption = 'Crear Guardia Adicional'
        ImageIndex = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 788
          Height = 75
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGuardiaAdicional: TcxTextEdit
            Left = 330
            Top = 11
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
            Width = 263
          end
          object cxCodigoGuardia: TcxTextEdit
            Left = 104
            Top = 11
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
          object cxAdicionalInicio: TcxDateEdit
            Left = 104
            Top = 39
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 121
          end
          object cxAdicionalFinal: TcxDateEdit
            Left = 330
            Top = 39
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 135
          end
          object cxCreaAdicional: TcxButton
            Left = 658
            Top = 11
            Width = 114
            Height = 30
            Caption = 'Crear Adicional'
            OptionsImage.ImageIndex = 44
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxCreaAdicionalClick
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Guardia Num.'
            Control = cxGuardiaAdicional
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Codigo Guardia'
            Control = cxCodigoGuardia
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            CaptionOptions.Text = 'Inicio Guardia'
            Control = cxAdicionalInicio
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahLeft
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'T'#233'rmino Guardia'
            Control = cxAdicionalFinal
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahLeft
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Visible = False
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            SizeOptions.Height = 33
            SizeOptions.Width = 119
            Control = cxCreaAdicional
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Conectar con Guardia'
        ImageIndex = 1
        object dxLayoutControl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 788
          Height = 75
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxConectar: TcxButton
            Left = 646
            Top = 11
            Width = 131
            Height = 35
            Caption = 'Asignar Personal'
            OptionsImage.ImageIndex = 20
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxConectarClick
          end
          object cxGuardia: TcxLookupComboBox
            Left = 137
            Top = 11
            ParentFont = False
            Properties.KeyFieldNames = 'IdGuardiaDetalle'
            Properties.ListColumns = <
              item
                FieldName = 'GuardiaDetalle'
              end>
            Properties.ListSource = ds_guardias
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            OnExit = cxGuardiaExit
            Width = 432
          end
          object cxProyectoGuardia: TcxTextEdit
            Left = 137
            Top = 39
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 121
          end
          object dxLayoutControl3Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutControl3Group_Root
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Visible = False
            Control = cxConectar
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            CaptionOptions.Text = 'Conectar con Guardia'
            Control = cxGuardia
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            CaptionOptions.Text = 'Proyecto/Guardia'
            Control = cxProyectoGuardia
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl3Group_Root
            Index = 0
            AutoCreated = True
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Bajar Personal'
        ImageIndex = 2
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 788
          Height = 75
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxBajar: TcxButton
            Left = 663
            Top = 11
            Width = 114
            Height = 35
            Caption = 'Bajar'
            OptionsImage.ImageIndex = 23
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxBajarClick
          end
          object cxFechaBajada: TcxDateEdit
            Left = 432
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
            Width = 121
          end
          object cxHoraBajada: TcxTimeEdit
            Left = 592
            Top = 11
            EditValue = 0d
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 65
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avBottom
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahRight
            AlignVert = avClient
            CaptionOptions.Visible = False
            Control = cxBajar
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'Fecha Bajada'
            Control = cxFechaBajada
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'Hora'
            Control = cxHoraBajada
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
    end
  end
  object cxSplitBaja: TcxSplitter
    Left = 0
    Top = 306
    Width = 794
    Height = 6
    AlignSplitter = salBottom
  end
  object Grid_adicional: TcxGrid
    Left = 0
    Top = 312
    Width = 794
    Height = 188
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupPrincipal
    TabOrder = 4
    object cxViewAdicional: TcxGridDBTableView
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
      DataController.DataSource = ds_guardia_adicional
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CodigoPersonal'
        Options.Editing = False
        Width = 86
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'NombreCompleto'
        Options.Editing = False
        Width = 247
      end
      object cxGridDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Puesto'
        Options.Editing = False
        Width = 258
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'Fecha Subida'
        DataBinding.FieldName = 'FechaSubida'
        Width = 87
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = 'Total Dias'
        DataBinding.FieldName = 'DiasT'
        Width = 64
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxViewAdicional
    end
  end
  object PanelProgreso: TPanel
    Left = 0
    Top = 142
    Width = 794
    Height = 22
    Align = alTop
    TabOrder = 5
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
      Left = 145
      Top = 1
      Align = alRight
      ParentFont = False
      Properties.AssignedValues.Max = True
      TabOrder = 1
      Visible = False
      Width = 648
    end
  end
  object PopupPrincipal: TPopupMenu
    Tag = 9
    Images = connection.cxIconos16
    Left = 193
    Top = 168
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
    Left = 376
    Top = 168
  end
  object empleados: TUniQuery
    Connection = connection.Uconnection
    Left = 304
    Top = 160
  end
  object guardias: TUniQuery
    Connection = connection.Uconnection
    Left = 288
    Top = 232
  end
  object ds_guardias: TDataSource
    AutoEdit = False
    DataSet = guardias
    Left = 344
    Top = 232
  end
  object guardia_adicional: TUniQuery
    Connection = connection.Uconnection
    Left = 408
    Top = 248
  end
  object ds_guardia_adicional: TDataSource
    AutoEdit = False
    DataSet = guardia_adicional
    Left = 480
    Top = 256
  end
end
