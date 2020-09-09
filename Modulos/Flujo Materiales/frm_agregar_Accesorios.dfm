object frmAgregarMasivoAccesorios: TfrmAgregarMasivoAccesorios
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Accesorios'
  ClientHeight = 479
  ClientWidth = 924
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
    Width = 924
    Height = 444
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 922
      Height = 33
      Align = alTop
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 920
        Height = 33
        Align = alTop
        TabOrder = 0
        object cxLabel3: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          Caption = 'Lista de Accesorios'
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
        object btnAccesorios: TcxButton
          Left = 677
          Top = 0
          Width = 114
          Height = 31
          Align = alCustom
          Caption = 'Ver Accesorios'
          OptionsImage.ImageIndex = 21
          OptionsImage.Images = frmrepositorio.cxIconosMenus16
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = btnAccesoriosClick
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 56
      Width = 922
      Height = 41
      Align = alTop
      TabOrder = 1
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 920
        Height = 39
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGuardias: TcxLookupComboBox
          Left = 95
          Top = 11
          ParentFont = False
          Properties.KeyFieldNames = 'IdProveedor'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = ds_Proveedor
          Properties.OnChange = cxGuardiasPropertiesChange
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
          Width = 801
        end
        object cxLabelTipo: TcxLabel
          Left = 11
          Top = 11
          Caption = 'Proveedor  '
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
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
          AlignVert = avTop
          Control = cxGuardias
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxLabelTipo'
          CaptionOptions.Visible = False
          Control = cxLabelTipo
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 97
      Width = 922
      Height = 346
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object View_Grid_Accesorios: TcxGridDBTableView
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
        OnCellClick = View_Grid_AccesoriosCellClick
        OnCellDblClick = View_Grid_AccesoriosCellDblClick
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
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object View_Grid_AccesoriosColumn1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Options.Editing = False
          Width = 75
        end
        object View_Grid_AccesoriosColumn4: TcxGridDBColumn
          Caption = 'Material'
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 399
        end
        object View_Grid_AccesoriosColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Medida'
          Options.Editing = False
          Width = 76
        end
        object View_Grid_AccesoriosColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Width = 76
        end
      end
      object cxViewMateriales: TcxGridLevel
        GridView = View_Grid_Accesorios
      end
    end
    object PanelAdicionales: TPanel
      Left = 1
      Top = 34
      Width = 922
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
        Width = 859
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
    Top = 444
    Width = 924
    Height = 35
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 715
      Top = 1
      Width = 104
      Height = 33
      Align = alRight
      Caption = 'Agregar'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxActualizaClick
    end
    object cxButton2: TcxButton
      Left = 819
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
    Left = 376
  end
  object materiales: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    AfterScroll = materialesAfterScroll
    Left = 64
    Top = 248
  end
  object ds_materiales: TDataSource
    AutoEdit = False
    DataSet = materiales
    Left = 104
    Top = 256
  end
  object zProveedor: TUniQuery
    Connection = connection.Uconnection
    Left = 80
    Top = 168
  end
  object ds_Proveedor: TDataSource
    DataSet = zProveedor
    Left = 128
    Top = 160
  end
  object uCostos: TUniQuery
    Connection = connection.Uconnection
    Left = 384
    Top = 56
  end
  object ds_costos: TDataSource
    DataSet = uCostos
    Left = 600
    Top = 152
  end
  object zAsigna: TUniQuery
    Connection = connection.Uconnection
    Left = 496
  end
  object uMedidas: TUniQuery
    Connection = connection.Uconnection
    Left = 416
  end
  object ds_medidas: TDataSource
    DataSet = uMedidas
    Left = 528
    Top = 8
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
    Left = 624
    Top = 96
  end
  object Anexos: TUniQuery
    Connection = connection.Uconnection
    Left = 456
  end
  object dsAnexos: TDataSource
    DataSet = Anexos
    Left = 424
    Top = 56
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
  object zAccesorios: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = zAccesoriosAfterScroll
    Left = 360
    Top = 192
  end
  object dsAccesorios: TDataSource
    DataSet = zAccesorios
    Left = 368
    Top = 264
  end
  object dsEquipos: TDataSource
    DataSet = zEquipos
    Left = 600
    Top = 8
  end
  object zEquipos: TUniQuery
    Left = 296
    Top = 32
  end
end
