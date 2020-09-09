object frmTipoMaterial: TfrmTipoMaterial
  Left = 255
  Top = 73
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tipo de Material'
  ClientHeight = 282
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 757
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Tipo de Material'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitWidth = 193
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 689
    Height = 247
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 757
    ExplicitHeight = 356
    object PanelDatos: TPanel
      Left = 1
      Top = 1
      Width = 687
      Height = 237
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 755
      ExplicitHeight = 346
      object PanelTopD: TPanel
        Left = 1
        Top = 201
        Width = 685
        Height = 35
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 310
        ExplicitWidth = 753
        inline frmBarraH21: TfrmBarraH2
          Left = 504
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 572
          ExplicitTop = 1
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Height = 33
            Align = alRight
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              Left = 5
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnPostClick
              ExplicitLeft = 5
              ExplicitTop = 1
              ExplicitHeight = 31
            end
            inherited btnCancel: TcxButton
              Left = 92
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnCancelClick
              ExplicitLeft = 92
              ExplicitTop = 1
              ExplicitHeight = 31
            end
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 685
        Height = 200
        Align = alClient
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        ExplicitWidth = 753
        ExplicitHeight = 309
        object cxMedida: TcxDBLookupComboBox
          Left = 63
          Top = 40
          DataBinding.DataField = 'IdMedida'
          DataBinding.DataSource = dsAlm_Insumo
          ParentFont = False
          Properties.KeyFieldNames = 'IdMedida'
          Properties.ListColumns = <
            item
              Caption = 'Medida:'
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsMedida
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
          Width = 220
        end
        object cxTipoMaterial: TcxDBLookupComboBox
          Left = 417
          Top = 11
          DataBinding.DataField = 'IdTipoRecurso'
          DataBinding.DataSource = dsAlm_Insumo
          ParentFont = False
          Properties.KeyFieldNames = 'IdTipoRecurso'
          Properties.ListColumns = <
            item
              Caption = 'Tipo de Material:'
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsTipoMaterial
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
          Width = 200
        end
        object cxFamilia: TcxDBLookupComboBox
          Left = 417
          Top = 40
          DataBinding.DataField = 'IdFamilia'
          DataBinding.DataSource = dsAlm_Insumo
          ParentFont = False
          Properties.KeyFieldNames = 'IdFamilia'
          Properties.ListColumns = <
            item
              Caption = 'Familia:'
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsFamilia
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
          Width = 220
        end
        object cxMaterial: TcxDBMemo
          Left = 63
          Top = 96
          DataBinding.DataField = 'Material'
          DataBinding.DataSource = dsAlm_Insumo
          ParentFont = False
          Properties.ScrollBars = ssVertical
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
          Height = 93
          Width = 611
        end
        object cxCodigo: TcxDBTextEdit
          Left = 63
          Top = 11
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsAlm_Insumo
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 200
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Medida:'
          Control = cxMedida
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 0
          AutoCreated = True
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          CaptionOptions.Text = 'Tipo de Material:'
          Control = cxTipoMaterial
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          CaptionOptions.Text = 'Familia:'
          Control = cxFamilia
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Material:'
          Control = cxMaterial
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'C'#243'digo:'
          Control = cxCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 238
      Width = 687
      Height = 8
      AlignSplitter = salBottom
      ExplicitTop = 347
      ExplicitWidth = 755
    end
  end
  object frxOrdenCompra: TfrxDBDataset
    UserName = 'frxOrdenCompra'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 952
    Top = 229
  end
  object rxPrecios: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sIdInsumo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'sIdProveedor'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dFecha1'
        DataType = ftDate
      end
      item
        Name = 'dFecha2'
        DataType = ftDate
      end
      item
        Name = 'dFecha3'
        DataType = ftDate
      end
      item
        Name = 'dFecha4'
        DataType = ftDate
      end
      item
        Name = 'dFecha5'
        DataType = ftDate
      end
      item
        Name = 'dFecha6'
        DataType = ftDate
      end
      item
        Name = 'dFecha7'
        DataType = ftDate
      end
      item
        Name = 'dFecha8'
        DataType = ftDate
      end
      item
        Name = 'dCosto1'
        DataType = ftFloat
      end
      item
        Name = 'dCosto2'
        DataType = ftFloat
      end
      item
        Name = 'dCosto3'
        DataType = ftFloat
      end
      item
        Name = 'dCosto4'
        DataType = ftFloat
      end
      item
        Name = 'dCosto5'
        DataType = ftFloat
      end
      item
        Name = 'dCosto6'
        DataType = ftFloat
      end
      item
        Name = 'dCosto7'
        DataType = ftFloat
      end
      item
        Name = 'dCosto8'
        DataType = ftFloat
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'sOrdenCompra1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra8'
        DataType = ftString
        Size = 20
      end>
    Left = 592
    Top = 112
    object rxPreciossContrato: TStringField
      FieldName = 'sContrato'
    end
    object rxPreciossIdInsumo: TStringField
      FieldName = 'sIdInsumo'
      Size = 40
    end
    object rxPreciosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object rxPreciossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
    end
    object rxPreciosdFecha1: TDateField
      FieldName = 'dFecha1'
    end
    object rxPreciosdFecha2: TDateField
      FieldName = 'dFecha2'
    end
    object rxPreciosdFecha3: TDateField
      FieldName = 'dFecha3'
    end
    object rxPreciosdFecha4: TDateField
      FieldName = 'dFecha4'
    end
    object rxPreciosdFecha5: TDateField
      FieldName = 'dFecha5'
    end
    object rxPreciosdFecha6: TDateField
      FieldName = 'dFecha6'
    end
    object rxPreciosdFecha7: TDateField
      FieldName = 'dFecha7'
    end
    object rxPreciosdFecha8: TDateField
      FieldName = 'dFecha8'
    end
    object rxPreciosdCosto1: TFloatField
      FieldName = 'dCosto1'
    end
    object rxPreciosdCosto2: TFloatField
      FieldName = 'dCosto2'
    end
    object rxPreciosdCosto3: TFloatField
      FieldName = 'dCosto3'
    end
    object rxPreciosdCosto4: TFloatField
      FieldName = 'dCosto4'
    end
    object rxPreciosdCosto5: TFloatField
      FieldName = 'dCosto5'
    end
    object rxPreciosdCosto6: TFloatField
      FieldName = 'dCosto6'
    end
    object rxPreciosdCosto7: TFloatField
      FieldName = 'dCosto7'
    end
    object rxPreciosdCosto8: TFloatField
      FieldName = 'dCosto8'
    end
    object rxPreciosItem: TIntegerField
      FieldName = 'Item'
    end
    object rxPreciossOrdenCompra1: TStringField
      FieldName = 'sOrdenCompra1'
    end
    object rxPreciossOrdenCompra2: TStringField
      FieldName = 'sOrdenCompra2'
    end
    object rxPreciossOrdenCompra3: TStringField
      FieldName = 'sOrdenCompra3'
    end
    object rxPreciossOrdenCompra4: TStringField
      FieldName = 'sOrdenCompra4'
    end
    object rxPreciossOrdenCompra5: TStringField
      FieldName = 'sOrdenCompra5'
    end
    object rxPreciossOrdenCompra6: TStringField
      FieldName = 'sOrdenCompra6'
    end
    object rxPreciossOrdenCompra7: TStringField
      FieldName = 'sOrdenCompra7'
    end
    object rxPreciossOrdenCompra8: TStringField
      FieldName = 'sOrdenCompra8'
    end
  end
  object frxPrecios: TfrxDBDataset
    UserName = 'frxPrecios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sIdInsumo=sIdInsumo'
      'mDescripcion=mDescripcion'
      'sIdProveedor=sIdProveedor'
      'dFecha1=dFecha1'
      'dFecha2=dFecha2'
      'dFecha3=dFecha3'
      'dFecha4=dFecha4'
      'dFecha5=dFecha5'
      'dFecha6=dFecha6'
      'dFecha7=dFecha7'
      'dFecha8=dFecha8'
      'dCosto1=dCosto1'
      'dCosto2=dCosto2'
      'dCosto3=dCosto3'
      'dCosto4=dCosto4'
      'dCosto5=dCosto5'
      'dCosto6=dCosto6'
      'dCosto7=dCosto7'
      'dCosto8=dCosto8'
      'Item=Item'
      'sOrdenCompra1=sOrdenCompra1'
      'sOrdenCompra2=sOrdenCompra2'
      'sOrdenCompra3=sOrdenCompra3'
      'sOrdenCompra4=sOrdenCompra4'
      'sOrdenCompra5=sOrdenCompra5'
      'sOrdenCompra6=sOrdenCompra6'
      'sOrdenCompra7=sOrdenCompra7'
      'sOrdenCompra8=sOrdenCompra8')
    DataSet = rxPrecios
    BCDToCurrency = False
    Left = 656
    Top = 141
  end
  object styleGrid: TcxStyleRepository
    Scalable = True
    Left = 108
    Top = 144
    PixelsPerInch = 96
    object cxstylBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
    object cxstylRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxstylBlack: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object PopupPrincipal: TPopupMenu
    Left = 169
    Top = 120
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
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
    end
    object Can1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 4
      ShortCut = 122
    end
    object Copiar1: TMenuItem
      Caption = '&Copiar'
      ImageIndex = 11
      ShortCut = 16451
    end
    object Pegar1: TMenuItem
      Caption = '&Pegar'
      ImageIndex = 12
      ShortCut = 16470
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      ImageIndex = 5
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object ComentariosAdicionales: TMenuItem
      Caption = 'ComentariosAdicionales'
      ImageIndex = 8
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object cxmglst1: TcxImageList
    FormatVersion = 1
    DesignInfo = 11011016
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 1072
    Top = 112
  end
  object datasetfrximgfirmas: TfrxDBDataset
    UserName = 'datasetfrximgfirmas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'bimagen14=bimagen14'
      'bimagen16=bimagen16'
      'bImagen14Sello=bImagen14Sello')
    BCDToCurrency = False
    Left = 896
    Top = 144
  end
  object pm1: TPopupMenu
    Images = connection.cxIconos16
    Left = 257
    Top = 144
    object MenuItem1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
    end
    object MenuItem2: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Tag = 9
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
    end
    object MenuItem5: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
    end
    object MenuItem6: TMenuItem
      Caption = '&Copiar'
      ShortCut = 16451
    end
    object MenuItem7: TMenuItem
      Caption = '&Pegar'
      ShortCut = 16470
    end
    object MenuItem8: TMenuItem
      Caption = '-'
    end
    object MenuItem9: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object MenuItem10: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object MenuItem11: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object MenuItem12: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 488
    Top = 136
  end
  object dsAlm_Insumo: TDataSource
    DataSet = zAlm_Insumo
    Left = 34
    Top = 237
  end
  object dsTipoMaterial: TDataSource
    DataSet = zTipoMaterial
    Left = 82
    Top = 269
  end
  object zMedida: TUniQuery
    Left = 154
    Top = 205
  end
  object dsMedida: TDataSource
    DataSet = zMedida
    Left = 162
    Top = 269
  end
  object zFamilia: TUniQuery
    Left = 218
    Top = 197
  end
  object dsFamilia: TDataSource
    DataSet = zFamilia
    Left = 234
    Top = 261
  end
  object zTipoMaterial: TUniQuery
    Left = 88
    Top = 216
  end
  object zAlm_Insumo: TUniQuery
    Left = 352
    Top = 248
  end
end
