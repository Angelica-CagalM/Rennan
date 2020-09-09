object frmAgregarMasivoRequisicion: TfrmAgregarMasivoRequisicion
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Material'
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
    Width = 566
    Height = 454
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 564
      Height = 33
      Align = alTop
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 562
        Height = 33
        Align = alTop
        TabOrder = 0
        object cxLabel3: TcxLabel
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'Agregar Material'
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
        inline frmBarraH11: TfrmBarraH1
          Left = 376
          Top = 1
          Width = 185
          Height = 31
          Align = alRight
          TabOrder = 2
          ExplicitLeft = 376
          ExplicitTop = 1
          ExplicitWidth = 185
          ExplicitHeight = 31
          inherited Panel1: TPanel
            Left = -253
            Width = 438
            Height = 31
            Align = alRight
            ExplicitLeft = -253
            ExplicitWidth = 438
            ExplicitHeight = 31
            inherited btnAdd: TcxButton
              Width = 57
              Height = 29
              Caption = 'Nuevo'
              Visible = False
              OnClick = btnAddClick
              ExplicitLeft = 1
              ExplicitWidth = 57
              ExplicitHeight = 29
            end
            inherited btnEdit: TcxButton
              Left = 58
              Width = 55
              Height = 29
              Enabled = False
              Visible = False
              ExplicitLeft = 58
              ExplicitWidth = 55
              ExplicitHeight = 29
            end
            inherited btnDelete: TcxButton
              Left = 113
              Width = 64
              Height = 29
              Enabled = False
              Visible = False
              ExplicitLeft = 113
              ExplicitWidth = 64
              ExplicitHeight = 29
            end
            inherited btnPrinter: TcxButton
              Left = 304
              Width = 53
              Height = 29
              Visible = False
              ExplicitLeft = 304
              ExplicitWidth = 53
              ExplicitHeight = 29
            end
            inherited btnDetalle: TcxButton
              Left = 357
              Height = 29
              OnClick = btnDetalleClick
              ExplicitLeft = 357
              ExplicitHeight = 29
            end
            inherited btnRefresh: TcxButton
              Left = 177
              Width = 74
              Height = 29
              Visible = False
              ExplicitLeft = 177
              ExplicitWidth = 74
              ExplicitHeight = 29
            end
            inherited btnExporta: TcxButton
              Left = 251
              Width = 53
              Height = 29
              Visible = False
              ExplicitLeft = 251
              ExplicitWidth = 53
              ExplicitHeight = 29
            end
          end
        end
        object cxActualizaDatos: TcxButton
          Left = 234
          Top = 1
          Width = 142
          Height = 31
          Hint = 'Refrescar Datos'
          Align = alRight
          Caption = 'Actualiza de B.D. Ing.'
          OptionsImage.ImageIndex = 72
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxActualizaDatosClick
        end
        object btnServicios: TcxButton
          Left = 148
          Top = 1
          Width = 86
          Height = 31
          Align = alRight
          Caption = 'Servicios'
          OptionsImage.ImageIndex = 62
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 4
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = btnServiciosClick
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 405
      Width = 564
      Height = 48
      Align = alBottom
      TabOrder = 1
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 562
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
        object cxExtraordinario: TcxTextEdit
          Left = 135
          Top = 11
          Hint = 'Partida/Extraordinario'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          TextHint = 'Partida/Extraordinario'
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 150
        end
        object lcbEquipo: TcxLookupComboBox
          Left = 336
          Top = 11
          ParentFont = False
          Properties.KeyFieldNames = 'Equipo'
          Properties.ListColumns = <
            item
              Caption = 'Descripci'#243'n'
              MinWidth = 0
              Width = 70
              FieldName = 'Equipo'
            end
            item
              Caption = 'Partida'
              MinWidth = 30
              Width = 30
              FieldName = 'sIdEquipo'
            end>
          Properties.ListSource = dsEquipos
          Style.HotTrack = False
          TabOrder = 1
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object cxBuscarEquipo: TcxButton
          Left = 502
          Top = 11
          Width = 32
          Height = 25
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 2
          OnClick = cxBuscarEquipoClick
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
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Partida/Extraordinario'
          Control = cxExtraordinario
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Equipo'
          Control = lcbEquipo
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignVert = avClient
          CaptionOptions.Text = 'cxButton3'
          CaptionOptions.Visible = False
          Control = cxBuscarEquipo
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 56
      Width = 564
      Height = 30
      Align = alTop
      TabOrder = 2
      object cxGuardias: TcxLookupComboBox
        Left = 129
        Top = 4
        ParentFont = False
        Properties.KeyFieldNames = 'IdTiporecurso'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = ds_Recurso
        Properties.OnChange = cxGuardiasPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 392
      end
      object cxLabelTipo: TcxLabel
        Left = 16
        Top = 4
        Caption = 'Tipo de Recurso'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxCantidad: TcxCalcEdit
        Left = 682
        Top = 3
        EditValue = 0.000000000000000000
        ParentFont = False
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
        Width = 101
      end
      object cxLabel1: TcxLabel
        Left = 620
        Top = 5
        Caption = 'Cantidad'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 86
      Width = 564
      Height = 319
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
        OnCellClick = View_Grid_MaterialesCellClick
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
          Caption = 'Material'
          DataBinding.FieldName = 'Insumo'
          Options.Editing = False
          Width = 399
        end
        object View_Grid_MaterialesColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Medida'
          Options.Editing = False
          Width = 76
        end
        object View_Grid_MaterialesColumn3: TcxGridDBColumn
          Caption = 'Existencia'
          DataBinding.FieldName = 'dExistencia'
          Visible = False
          Options.Editing = False
          Width = 49
        end
      end
      object cxViewMateriales: TcxGridLevel
        GridView = View_Grid_Materiales
      end
    end
    object PanelAdicionales: TPanel
      Left = 1
      Top = 34
      Width = 564
      Height = 22
      Align = alTop
      TabOrder = 4
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
        Width = 501
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
  object PanelDetalle: TPanel
    Left = 572
    Top = 0
    Width = 359
    Height = 454
    Align = alRight
    TabOrder = 1
    object cxGridDetalle: TcxGrid
      Left = 1
      Top = 1
      Width = 357
      Height = 452
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = mnuPop
      TabOrder = 0
      object cxViewDetalleMaterial: TcxGridDBTableView
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
        OnCellClick = cxViewDetalleMaterialCellClick
        OnCellDblClick = cxViewDetalleMaterialCellDblClick
        DataController.DataSource = dsExtraordinarios_part
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object cxColumnD0: TcxGridDBColumn
          Caption = 'Anexo'
          DataBinding.FieldName = 'sAnexo'
          Width = 50
        end
        object cxColumnD3: TcxGridDBColumn
          Caption = 'Partida'
          DataBinding.FieldName = 'Extraordinario'
          Width = 71
        end
        object cxColumnD2: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'Descripcion'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 222
        end
      end
      object cxGridDetalleLevel1: TcxGridLevel
        GridView = cxViewDetalleMaterial
      end
    end
  end
  object cxSplitterDetalle: TcxSplitter
    Left = 566
    Top = 0
    Width = 6
    Height = 454
    AlignSplitter = salRight
  end
  object Panel6: TPanel
    Left = 0
    Top = 454
    Width = 931
    Height = 35
    Align = alBottom
    TabOrder = 3
    object cxButton1: TcxButton
      Left = 722
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
    AfterScroll = Extraordinarios_partAfterScroll
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
