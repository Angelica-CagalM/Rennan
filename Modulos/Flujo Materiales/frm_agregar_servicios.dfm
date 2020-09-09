object frmAgregarMasivoServicios: TfrmAgregarMasivoServicios
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Accesorios'
  ClientHeight = 489
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 454
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 929
      Height = 33
      Align = alTop
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 927
        Height = 33
        Align = alTop
        TabOrder = 0
        object cxLabel3: TcxLabel
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'Accesorios'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHighlight
          Style.IsFontAssigned = True
          Transparent = True
        end
        object layer: TcxLabel
          Left = 698
          Top = 9
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object btnServicios: TcxButton
          Left = 796
          Top = 1
          Width = 130
          Height = 31
          Align = alRight
          Caption = 'Visualiza Servicios'
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 2
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = btnServiciosClick
        end
        object btnAgregarAccesorio: TcxButton
          Left = 497
          Top = 1
          Width = 139
          Height = 31
          Align = alRight
          Caption = 'Agregar Accesorios'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = btnAgregarAccesorioClick
          ExplicitLeft = 491
          ExplicitTop = -4
        end
        object btnEditAccesorio: TcxButton
          Tag = 11
          Left = 636
          Top = 1
          Width = 80
          Height = 31
          Hint = 'Editar Registro'
          Align = alRight
          Caption = 'Editar'
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = btnEditAccesorioClick
        end
        object btnEliminaAccesorio: TcxButton
          Left = 716
          Top = 1
          Width = 80
          Height = 31
          Align = alRight
          Caption = 'Eliminar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = btnEliminaAccesorioClick
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 405
      Width = 929
      Height = 48
      Align = alBottom
      TabOrder = 1
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 927
        Height = 46
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cbEquipos: TcxLookupComboBox
          Left = 56
          Top = 11
          ParentFont = False
          Properties.KeyFieldNames = 'sIdEquipo'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'digo'
              Width = 20
              FieldName = 'sIdEquipo'
            end
            item
              Caption = 'Descripci'#243'n'
              Width = 80
              FieldName = 'Equipo'
            end>
          Properties.ListSource = dsEquipos
          Style.HotTrack = False
          TabOrder = 0
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 400
        end
        object cxCantidad: TcxCalcEdit
          Left = 738
          Top = 11
          EditValue = 0.000000000000000000
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
          Width = 101
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
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Equipo'
          Control = cbEquipos
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Cantidad'
          Control = cxCantidad
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 56
      Width = 929
      Height = 349
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object View_Grid_Materiales: TcxGridDBTableView
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
        OnCellDblClick = View_Grid_MaterialesCellDblClick
        DataController.DataSource = ds_materiales
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = View_Grid_MaterialesDataControllerFilterChanged
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.OnBeforeChange = View_Grid_MaterialesDataControllerFilterBeforeChange
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object View_Grid_MaterialesColumn1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Options.Editing = False
          Width = 75
        end
        object View_Grid_MaterialesColumn4: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 399
        end
        object View_Grid_MaterialesColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Options.Editing = False
          Styles.OnGetContentStyle = View_Grid_MaterialesColumn2StylesGetContentStyle
          Width = 76
        end
      end
      object cxViewMateriales: TcxGridLevel
        GridView = View_Grid_Materiales
      end
    end
    object PanelAdicionales: TPanel
      Left = 1
      Top = 34
      Width = 929
      Height = 22
      Align = alTop
      TabOrder = 3
      Visible = False
      object progreso: TcxProgressBar
        Left = 62
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
        TabOrder = 0
        Width = 866
      end
      object LabelProceso: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        Caption = '  Progreso'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 454
    Width = 931
    Height = 35
    Align = alBottom
    TabOrder = 1
    Visible = False
    object cxButton1: TcxButton
      Left = 635
      Top = 1
      Width = 104
      Height = 33
      Align = alRight
      Caption = 'Agregar'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 0
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxActualizaClick
    end
    object cxButton2: TcxButton
      Left = 826
      Top = 1
      Width = 104
      Height = 33
      Align = alRight
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = dtbCancelarClick
    end
    object btnSave: TcxButton
      Left = 739
      Top = 1
      Width = 87
      Height = 33
      Align = alRight
      Caption = 'Guardar'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnSaveClick
    end
  end
  object mnuPop: TPopupMenu
    Tag = 9
    Images = connection.cxIconos16
    Left = 113
    Top = 96
    object ActualizarExtraordinarios1: TMenuItem
      Caption = 'Actualizar Todas las Partidas'
      ImageIndex = 59
      OnClick = ActualizarExtraordinarios1Click
    end
    object ActualizarExtraordinarios2: TMenuItem
      Caption = 'Actualizar Partidas del Material'
      ImageIndex = 61
      OnClick = ActualizarExtraordinarios2Click
    end
  end
  object zAnterior: TUniQuery
    Connection = connection.Uconnection
    Left = 352
    Top = 136
  end
  object materiales: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 64
    Top = 248
  end
  object ds_materiales: TDataSource
    DataSet = materiales
    Left = 104
    Top = 256
  end
  object zRecurso: TUniQuery
    Connection = connection.Uconnection
    Left = 80
    Top = 168
  end
  object ds_Recurso: TDataSource
    DataSet = zRecurso
    Left = 128
    Top = 160
  end
  object uCostos: TUniQuery
    Connection = connection.Uconnection
    Left = 536
    Top = 152
  end
  object ds_costos: TDataSource
    DataSet = uCostos
    Left = 600
    Top = 152
  end
  object zAsigna: TUniQuery
    Connection = connection.Uconnection
    Left = 536
    Top = 208
  end
  object uMedidas: TUniQuery
    Connection = connection.Uconnection
    Left = 448
    Top = 144
  end
  object ds_medidas: TDataSource
    DataSet = uMedidas
    Left = 448
    Top = 192
  end
  object uGrupoMaterial: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 664
    Top = 136
  end
  object dsGrupoMaterial: TDataSource
    AutoEdit = False
    DataSet = uGrupoMaterial
    Left = 664
    Top = 184
  end
  object Anexos: TUniQuery
    Connection = connection.Uconnection
    Left = 400
    Top = 152
  end
  object dsAnexos: TDataSource
    DataSet = Anexos
    Left = 400
    Top = 200
  end
  object Extraordinarias: TUniQuery
    Connection = connection.Uconnection
    Left = 240
    Top = 200
  end
  object dsExtraordinarias: TDataSource
    DataSet = Extraordinarias
    Left = 240
    Top = 248
  end
  object Extraordinarios_part: TUniQuery
    Connection = connection.Uconnection
    Left = 312
    Top = 200
  end
  object dsExtraordinarios_part: TDataSource
    DataSet = Extraordinarios_part
    Left = 312
    Top = 248
  end
  object dsEquipos: TDataSource
    DataSet = zEquipos
    Left = 448
    Top = 256
  end
  object zEquipos: TUniQuery
    Left = 416
    Top = 248
  end
end
