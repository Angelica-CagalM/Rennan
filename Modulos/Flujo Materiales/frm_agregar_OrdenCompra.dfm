object frmAgregarMasivoOrdenCompra: TfrmAgregarMasivoOrdenCompra
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Material'
  ClientHeight = 490
  ClientWidth = 1046
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 490
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1044
      Height = 40
      Align = alTop
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 1042
        Height = 38
        Align = alClient
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
        object btnAdd: TcxButton
          Tag = 10
          Left = 937
          Top = 1
          Width = 104
          Height = 36
          Hint = 'Nuevo Registro'
          Align = alRight
          Caption = 'Rechazar'
          OptionsImage.ImageIndex = 17
          OptionsImage.Images = connection.IconosBarra
          TabOrder = 2
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = btnAddClick
        end
        object cxCondicionar: TcxButton
          Tag = 10
          Left = 816
          Top = 1
          Width = 121
          Height = 36
          Hint = 'Nuevo Registro'
          Align = alRight
          Caption = 'Condicionar'
          OptionsImage.ImageIndex = 16
          OptionsImage.Images = connection.IconosBarra
          TabOrder = 3
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxCondicionarClick
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 451
      Width = 1044
      Height = 38
      Align = alBottom
      TabOrder = 1
      object cxActualiza: TcxButton
        Left = 828
        Top = 1
        Width = 111
        Height = 36
        Align = alRight
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 15
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxActualizaClick
        ExplicitLeft = 822
        ExplicitTop = 5
      end
      object dtbCancelar: TcxButton
        Left = 939
        Top = 1
        Width = 104
        Height = 36
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
    object Grid_Insumos: TcxGrid
      Left = 1
      Top = 41
      Width = 1044
      Height = 303
      Align = alClient
      TabOrder = 2
      ExplicitHeight = 322
      object Grid_InsumosView: TcxGridDBTableView
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
        OnCellClick = Grid_InsumosViewCellClick
        OnCellDblClick = Grid_InsumosViewCellDblClick
        DataController.DataSource = FrmInspeccionMateriales.ds_insumos
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = Grid_InsumosViewStylesGetContentStyle
        object Col_Insumo_OC: TcxGridDBColumn
          Caption = 'Orden Compra'
          DataBinding.FieldName = 'OrdenCompra'
          Width = 125
        end
        object Col_Insumo_Fecha: TcxGridDBColumn
          Caption = 'Fecha Ent.'
          DataBinding.FieldName = 'dFechaEntrega'
          Width = 69
        end
        object Col_Insumo_Proveedor: TcxGridDBColumn
          DataBinding.FieldName = 'Proveedor'
          Width = 87
        end
        object Col_Insumo_Planta: TcxGridDBColumn
          DataBinding.FieldName = 'Planta'
          Width = 48
        end
        object Col_Insumo_codigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Width = 75
        end
        object Col_Insumo_Numero: TcxGridDBColumn
          Caption = 'Numero Material'
          DataBinding.FieldName = 'NumeroMaterial'
          Width = 99
        end
        object Col_Insumo_Material: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'Material'
          Width = 177
        end
        object Col_Insumo_medida: TcxGridDBColumn
          DataBinding.FieldName = 'Medida'
          Width = 50
        end
        object Col_Insumo_Cantidad: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'dRequisicion'
          Width = 55
        end
        object Col_Insumo_Recep: TcxGridDBColumn
          Caption = 'Recibido'
          DataBinding.FieldName = 'dSumaCantidad'
          Width = 60
        end
        object Col_Insumo_restante: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'CantidadPendiente'
          Width = 65
        end
        object Col_Insumo_sStatus: TcxGridDBColumn
          Caption = 'Estatus'
          DataBinding.FieldName = 'sStatus'
          VisibleForCustomization = False
        end
        object Col_Insumo_Comentario: TcxGridDBColumn
          Caption = 'Comentario'
          DataBinding.FieldName = 'ComentarioStatus'
          Width = 120
        end
      end
      object dbgGrid_InsumosLevel1: TcxGridLevel
        GridView = Grid_InsumosView
      end
    end
    object PaneListaDatos: TPanel
      Left = 1
      Top = 344
      Width = 1044
      Height = 107
      Align = alBottom
      TabOrder = 3
      object dxLayoutControl5: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 1042
        Height = 105
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        ExplicitHeight = 86
        object cxCertificados: TcxTextEdit
          Left = 83
          Top = 11
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
          Width = 342
        end
        object cxNFactura: TcxTextEdit
          Left = 402
          Top = 11
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
          Width = 171
        end
        object tdCantidad: TcxCalcEdit
          Left = 966
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
          TabOrder = 4
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 108
        end
        object cxColada: TcxTextEdit
          Left = 809
          Top = 11
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
          Width = 129
        end
        object cxResultado: TcxComboBox
          Left = 83
          Top = 40
          ParentFont = False
          Properties.Items.Strings = (
            'PENDIENTE'
            'ACEPTABLE'
            'RECHAZADO')
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
          Width = 462
        end
        object cxParametro: TcxTextEdit
          Left = 566
          Top = 40
          ParentFont = False
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
          Width = 256
        end
        object cxFecha: TcxDateEdit
          Left = 895
          Top = 40
          ParentFont = False
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
          Width = 164
        end
        object cxComplemento: TcxComboBox
          Left = 599
          Top = 11
          ParentFont = False
          Properties.Items.Strings = (
            'LOTE'
            'COLADA'
            'CAT'#193'LOGO')
          Style.HotTrack = False
          TabOrder = 2
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 307
        end
        object cxSerie: TcxTextEdit
          Left = 83
          Top = 69
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 8
          Width = 233
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'Certificados'
          Control = cxCertificados
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Num. Factura'
          Control = cxNFactura
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem29: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Cantidad'
          Control = tdCantidad
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          Control = cxColada
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem12: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Resultado'
          Control = cxResultado
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Par'#225'metros'
          Control = cxParametro
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem14: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha Liberaci'#243'n'
          Control = cxFecha
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          CaptionOptions.Text = 'Complemento'
          Control = cxComplemento
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Serie'
          Control = cxSerie
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
  end
  object materiales: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 208
    Top = 224
  end
  object ds_materiales: TDataSource
    AutoEdit = False
    DataSet = materiales
    Left = 280
    Top = 224
  end
  object zMensaje: TUniQuery
    Connection = connection.Uconnection
    Left = 416
    Top = 199
  end
  object ds_mensaje: TDataSource
    Left = 448
    Top = 199
  end
  object zDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 560
    Top = 152
  end
  object ds_destino: TDataSource
    DataSet = zDestino
    Left = 726
    Top = 112
  end
  object zCorreo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select cc.* from master_cnf_correo cc'
      'inner join usuarios u on (u.sIdusuario = cc.sIdUsuario)'
      'where '
      '(cc.sContrato = :Contrato)  and'
      '(cc.IdEmpresa = :Empresa) AND (cc.sIdUsuario =:Usuario);')
    Left = 56
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        Value = nil
      end>
  end
  object zqEnviados: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select distinct pc.Correo  from master_proveedor_contacto pc')
    Left = 104
    Top = 263
  end
end
