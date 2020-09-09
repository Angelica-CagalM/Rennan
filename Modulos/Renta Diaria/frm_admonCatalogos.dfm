object frmAdmonCatalogos: TfrmAdmonCatalogos
  Left = 363
  Top = 274
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Administraci'#243'n de Catalogos del Sistema'
  ClientHeight = 385
  ClientWidth = 612
  Color = 7847370
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgCatalogos: TPageControl
    Left = 0
    Top = 0
    Width = 612
    Height = 385
    Hint = 'Datos Generadores'
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnChange = pgCatalogosChange
    object TabTipEmbarcacion: TTabSheet
      Caption = 'Tipos de Embarcaci'#243'n'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object grid_tiposdeembarcacion: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran los tipos de enbarcaci'#243'n, puede editarlos al da' +
          'r click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_tiposdeembarcacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoEmbarcacion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 333
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sTitulo'
            Title.Alignment = taCenter
            Title.Caption = 'Titulo'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iRenglon'
            Title.Alignment = taRightJustify
            Title.Caption = 'Renglon'
            Width = 58
            Visible = True
          end>
      end
    end
    object TabTipEquipos: TTabSheet
      Caption = 'Tipos de Equipo'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object grid_tiposdeequipo: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran los tipos de equipos, puede editarlos al dar cl' +
          'ick en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_tiposdeequipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoEquipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 301
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sMascara'
            Title.Alignment = taCenter
            Title.Caption = 'Mascara'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lPersonalEQ'
            Title.Alignment = taCenter
            Title.Caption = 'Personal y EQ'
            Width = 85
            Visible = True
          end>
      end
    end
    object TabTipEstimacion: TTabSheet
      Caption = 'Tipos de Estimaci'#243'n'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object grid_tiposdeEstimacion: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran los tipos de estimaci'#243'n, puede editarlos al dar' +
          ' click  en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_TiposdeEstimacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoEstimacion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 321
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Width = 49
            Visible = True
          end>
      end
    end
    object TabTipOrden: TTabSheet
      Caption = 'Tipos de Orden'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 5
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object grid_tiposdeOrden: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran los tipos de orden, puede editarlos al dar clic' +
          'k en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_TiposdeOrden
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 377
            Visible = True
          end>
      end
    end
    object TabTipPermiso: TTabSheet
      Caption = 'Tipos de Permiso'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object grid_tiposdePermiso: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran los tipos de permisos, puede editarlos al dar c' +
          'lick  en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_TiposdePermiso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoPermiso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 341
            Visible = True
          end>
      end
    end
    object TabTipPersonal: TTabSheet
      Caption = 'Tipos de Personal'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object grid_tiposdepersonal: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_tiposdepersonal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoPersonal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 298
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sMascara'
            Title.Alignment = taCenter
            Title.Caption = 'Mascara'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lPersonalEQ'
            Title.Caption = 'Personal y EQ'
            Width = 82
            Visible = True
          end>
      end
    end
    object tabEstatus: TTabSheet
      Caption = 'Estatus de Ordenes de Trabajo'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object Grid_estatus: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_estatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cIdStatus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Estatus'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 340
            Visible = True
          end>
      end
    end
    object TabFases: TTabSheet
      Caption = 'Fases de los Proyectos'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object grid_fasesxproyecto: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_fasesxproyecto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdFase'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Fase'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 319
            Visible = True
          end>
      end
    end
    object TabCategorias: TTabSheet
      Caption = 'Categorias'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object dbCategorias: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran las categorias, puede editarlos al dar click en' +
          ' cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_Categorias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopOpciones
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdCategoria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Categoria'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaVigencia'
            Title.Alignment = taCenter
            Title.Caption = 'F. Inicio'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sMiGrupoResumen'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo Resumen Personal'
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lPersonalAnexo'
            Title.Alignment = taCenter
            Title.Caption = 'P. Anexo'
            Width = 66
            Visible = True
          end>
      end
    end
    object TabDirecciones: TTabSheet
      Caption = 'Direcciones'
      ImageIndex = 11
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object DBGrid1: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran las direcciones, puede editarlos al dar click e' +
          'n cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = dsDirecciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iIdDireccion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Direccion'
            Width = 340
            Visible = True
          end>
      end
    end
    object TabCondiciones: TTabSheet
      Caption = 'Condiciones Climatologicas'
      ImageIndex = 12
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object DBGrid2: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran las condiciones climatologicas, puede editarlos' +
          ' al dar click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = dsCondiciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iIdCondicion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Direccion'
            Width = 340
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sMedida'
            Title.Caption = 'Medida'
            Visible = True
          end>
      end
    end
    object TabRecursos: TTabSheet
      Caption = 'Mezclas/Recursos'
      ImageIndex = 13
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object DBGrid3: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran las mezclas/recursos, puede editarlos al dar cl' +
          'ick en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = dsMezclas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iIdRecursoExistencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripcion'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sMedida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iIdRecursoExistencia'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lCombustible'
            Title.Alignment = taCenter
            Title.Caption = 'EsCombustible?'
            Width = 118
            Visible = True
          end>
      end
    end
    object TabBarco: TTabSheet
      Caption = 'Movimientos de Barco'
      ImageIndex = 14
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
    end
    object TabSheet2: TTabSheet
      Caption = 'Reprogramacion Barco'
      ImageIndex = 17
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object DBGrid5: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_reprograma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iOrden'
            Title.Alignment = taCenter
            Title.Caption = 'No. Reprog.'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Alignment = taCenter
            Title.Caption = 'F. Inicio'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Alignment = taCenter
            Title.Caption = 'F. Final'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dDuracion'
            Title.Alignment = taCenter
            Title.Caption = 'Duracion'
            Width = 77
            Visible = True
          end>
      end
    end
    object pgMonedas: TTabSheet
      Caption = 'Tipos Moneda'
      ImageIndex = 18
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object dbGridMonedas: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Hint = 
          'Aqu'#237' se muestran los tipos de de moneda, puede editarlos al dar ' +
          'click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_Moneda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdMoneda'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcionCorta'
            Title.Alignment = taCenter
            Title.Caption = 'Moneda'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dIVA'
            Title.Alignment = taCenter
            Title.Caption = '% IVA'
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Embarcacion Vigencia'
      ImageIndex = 23
      ExplicitLeft = 0
      ExplicitTop = 106
      ExplicitWidth = 0
      ExplicitHeight = 275
      object Grd_BarcoVigencia: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 295
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_BarcoVigencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdEmbarcacion'
            Title.Alignment = taCenter
            Title.Caption = 'Id Embarcacion'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Width = 198
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Alignment = taCenter
            Title.Caption = 'F. Inicio'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Alignment = taCenter
            Title.Caption = 'F. Final'
            Width = 84
            Visible = True
          end>
      end
    end
  end
  object ds_TiposdeEstimacion: TDataSource
    DataSet = TiposdeEstimacion
    Left = 17
    Top = 337
  end
  object TiposdeEstimacion: TZQuery
    Connection = connection.zConnection
    BeforePost = TiposdeEstimacionBeforePost
    OnDeleteError = TiposdeEstimacionDeleteError
    OnPostError = TiposdeEstimacionPostError
    SQL.Strings = (
      'select * from tiposdeestimacion order by sIdTipoEstimacion')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 45
    Top = 337
    object TiposdeEstimacionsIdTipoEstimacion: TStringField
      FieldName = 'sIdTipoEstimacion'
      Required = True
      Size = 2
    end
    object TiposdeEstimacionsDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 30
    end
    object TiposdeEstimacioniGrupo: TIntegerField
      FieldName = 'iGrupo'
      Required = True
      OnSetText = TiposdeEstimacioniGrupoSetText
    end
    object TiposdeEstimacionmComentarios: TMemoField
      FieldName = 'mComentarios'
      Required = True
      BlobType = ftMemo
    end
  end
  object ds_tiposdeembarcacion: TDataSource
    DataSet = TiposdeEmbarcacion
    Left = 80
    Top = 336
  end
  object TiposdeEmbarcacion: TZQuery
    Connection = connection.zConnection
    BeforePost = TiposdeEmbarcacionBeforePost
    OnDeleteError = TiposdeEmbarcacionDeleteError
    OnPostError = TiposdeEmbarcacionPostError
    SQL.Strings = (
      'select * from tiposdeembarcacion order by sIdTipoEmbarcacion')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 108
    Top = 335
    object TiposdeEmbarcacionsIdTipoEmbarcacion: TStringField
      FieldName = 'sIdTipoEmbarcacion'
      Required = True
      Size = 4
    end
    object TiposdeEmbarcacionsDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object TiposdeEmbarcacioniRenglon: TIntegerField
      FieldName = 'iRenglon'
      Required = True
      OnSetText = TiposdeEmbarcacioniRenglonSetText
    end
    object TiposdeEmbarcacionsTitulo: TStringField
      FieldName = 'sTitulo'
      Required = True
      Size = 30
    end
  end
  object ds_tiposdeequipo: TDataSource
    DataSet = TiposdeEquipo
    Left = 80
    Top = 252
  end
  object TiposdeEquipo: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdeEquipoDeleteError
    OnPostError = TiposdeEquipoPostError
    SQL.Strings = (
      'select * from tiposdeequipo Order By sIdTipoEquipo')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 108
    Top = 252
  end
  object ds_tiposdepersonal: TDataSource
    DataSet = TiposdePersonal
    Left = 80
    Top = 280
  end
  object TiposdePersonal: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdePersonalDeleteError
    OnPostError = TiposdePersonalPostError
    SQL.Strings = (
      'select * from tiposdepersonal Order By sIdTipoPersonal')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 108
    Top = 280
  end
  object TiposdePermiso: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdePermisoDeleteError
    OnPostError = TiposdePermisoPostError
    SQL.Strings = (
      'select * from tiposdepermiso order by sIdTipoPermiso')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 108
    Top = 307
  end
  object ds_TiposdePermiso: TDataSource
    DataSet = TiposdePermiso
    Left = 80
    Top = 308
  end
  object ds_TiposdeOrden: TDataSource
    DataSet = TiposdeOrden
    Left = 17
    Top = 197
  end
  object TiposdeOrden: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdeOrdenDeleteError
    OnPostError = TiposdeOrdenPostError
    SQL.Strings = (
      'select * from tiposdeorden Order By sIdTipoOrden')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 46
    Top = 197
  end
  object ds_estatus: TDataSource
    DataSet = Estatus
    Left = 142
    Top = 308
  end
  object Estatus: TZQuery
    Connection = connection.zConnection
    OnDeleteError = EstatusDeleteError
    OnPostError = EstatusPostError
    SQL.Strings = (
      'select * from estatus order by cIdStatus')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 171
    Top = 307
  end
  object ds_fasesxproyecto: TDataSource
    DataSet = FasesxProyecto
    Left = 142
    Top = 336
  end
  object FasesxProyecto: TZQuery
    Connection = connection.zConnection
    OnDeleteError = FasesxProyectoDeleteError
    OnPostError = FasesxProyectoPostError
    SQL.Strings = (
      'select * from fasesxproyecto order by sIdFase')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 170
    Top = 336
  end
  object ds_Categorias: TDataSource
    DataSet = Categorias
    Left = 17
    Top = 253
  end
  object Categorias: TZQuery
    Connection = connection.zConnection
    BeforeEdit = CategoriasBeforeEdit
    AfterEdit = CategoriasAfterEdit
    BeforePost = CategoriasBeforePost
    AfterPost = CategoriasAfterPost
    BeforeDelete = CategoriasBeforeDelete
    OnDeleteError = CategoriasDeleteError
    OnPostError = CategoriasPostError
    OnNewRecord = CategoriasNewRecord
    SQL.Strings = (
      
        'select * from categorias order by dFechaVigencia DESC, sIdCatego' +
        'ria')
    Params = <>
    Left = 46
    Top = 253
  end
  object dsDirecciones: TDataSource
    DataSet = qryDirecciones
    Left = 18
    Top = 169
  end
  object qryDirecciones: TZQuery
    Connection = connection.zConnection
    AfterScroll = qryDireccionesAfterScroll
    BeforePost = qryDireccionesBeforePost
    AfterPost = qryDireccionesAfterPost
    AfterCancel = qryDireccionesAfterCancel
    BeforeDelete = qryDireccionesBeforeDelete
    OnDeleteError = qryDireccionesDeleteError
    OnPostError = qryDireccionesPostError
    SQL.Strings = (
      'select * from direcciones')
    Params = <>
    Left = 46
    Top = 169
    object qryDireccionesiIdDireccion: TLargeintField
      FieldName = 'iIdDireccion'
      OnChange = qryDireccionesiIdDireccionChange
      OnSetText = qryDireccionesiIdDireccionSetText
    end
    object qryDireccionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 60
    end
  end
  object dsCondiciones: TDataSource
    DataSet = qryCondiciones
    Left = 377
    Top = 308
  end
  object qryMezclas: TZQuery
    Connection = connection.zConnection
    OnDeleteError = qryMezclasDeleteError
    OnPostError = qryMezclasPostError
    SQL.Strings = (
      'select * from recursosdeexistencias')
    Params = <>
    Left = 406
    Top = 336
  end
  object dsMezclas: TDataSource
    DataSet = qryMezclas
    Left = 378
    Top = 336
  end
  object dsTiposMovimiento: TDataSource
    DataSet = QryTiposdeMovimiento
    Left = 320
    Top = 336
  end
  object ds_reprograma: TDataSource
    DataSet = QryReprograma
    Left = 260
    Top = 336
  end
  object QryReprograma: TZQuery
    Connection = connection.zConnection
    AfterInsert = QryReprogramaAfterInsert
    AfterEdit = QryReprogramaAfterEdit
    BeforePost = QryReprogramaBeforePost
    OnDeleteError = QryReprogramaDeleteError
    OnPostError = QryReprogramaPostError
    SQL.Strings = (
      'select * from reprogramacion_barco'
      'where sContrato =:Contrato ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 289
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object QryReprogramaiOrden: TIntegerField
      FieldName = 'iOrden'
    end
    object DateField2: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object DateField3: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object QryReprogramadDuracion: TIntegerField
      FieldName = 'dDuracion'
    end
  end
  object ds_Moneda: TDataSource
    DataSet = Monedas
    Left = 204
    Top = 308
  end
  object Monedas: TZQuery
    Connection = connection.zConnection
    OnDeleteError = MonedasDeleteError
    OnPostError = MonedasPostError
    SQL.Strings = (
      'select * from tiposdemoneda ')
    Params = <>
    Left = 232
    Top = 308
  end
  object QryTiposdeMovimiento: TZQuery
    Connection = connection.zConnection
    AfterInsert = QryTiposdeMovimientoAfterInsert
    BeforePost = QryTiposdeMovimientoBeforePost
    OnDeleteError = QryTiposdeMovimientoDeleteError
    OnPostError = QryTiposdeMovimientoPostError
    SQL.Strings = (
      'select * from tiposdemovimiento where sContrato =:Contrato'
      'And sClasificacion="Movimiento de Barco"'
      'order by iOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 349
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object QryTiposdeMovimientosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object QryTiposdeMovimientosIdTipoMovimiento: TStringField
      FieldName = 'sIdTipoMovimiento'
      Required = True
      Size = 10
    end
    object QryTiposdeMovimientosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 100
    end
    object QryTiposdeMovimientosClasificacion: TStringField
      FieldName = 'sClasificacion'
      Size = 26
    end
    object QryTiposdeMovimientosMedida: TStringField
      FieldName = 'sMedida'
      Size = 10
    end
    object QryTiposdeMovimientosTipo: TStringField
      FieldName = 'sTipo'
      Size = 12
    end
    object QryTiposdeMovimientoiOrden: TStringField
      FieldName = 'iOrden'
      OnSetText = QryTiposdeMovimientoiOrdenSetText
      Size = 1
    end
    object QryTiposdeMovimientolGrafica: TStringField
      FieldName = 'lGrafica'
      Size = 2
    end
    object QryTiposdeMovimientoiColor: TIntegerField
      FieldName = 'iColor'
    end
    object QryTiposdeMovimientodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      OnSetText = QryTiposdeMovimientodVentaMNSetText
      currency = True
    end
    object QryTiposdeMovimientodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      OnSetText = QryTiposdeMovimientodVentaDLLSetText
      currency = True
    end
    object QryTiposdeMovimientolGenera: TStringField
      FieldName = 'lGenera'
      Size = 2
    end
    object QryTiposdeMovimientoiIdEstimacionContrato: TIntegerField
      FieldName = 'iIdEstimacionContrato'
      Required = True
      OnGetText = QryTiposdeMovimientoiIdEstimacionContratoGetText
    end
    object QryTiposdeMovimientodCantidad: TFloatField
      FieldName = 'dCantidad'
    end
  end
  object qryCondiciones: TZQuery
    Connection = connection.zConnection
    AfterScroll = qryCondicionesAfterScroll
    AfterPost = qryCondicionesAfterPost
    AfterCancel = qryCondicionesAfterCancel
    BeforeDelete = qryCondicionesBeforeDelete
    OnDeleteError = qryCondicionesDeleteError
    OnPostError = qryCondicionesPostError
    SQL.Strings = (
      'select * from condiciones')
    Params = <>
    Left = 406
    Top = 307
    object qryCondicionesiIdCondicion: TLargeintField
      FieldName = 'iIdCondicion'
      OnChange = qryCondicionesiIdCondicionChange
      OnSetText = qryCondicionesiIdCondicionSetText
    end
    object qryCondicionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 100
    end
    object qryCondicionessMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 45
    end
  end
  object ds_BarcoVigencia: TDataSource
    DataSet = QryBarcoVigencia
    Left = 444
    Top = 312
  end
  object QryBarcoVigencia: TZQuery
    Connection = connection.zConnection
    OnCalcFields = QryBarcoVigenciaCalcFields
    AfterInsert = QryBarcoVigenciaAfterInsert
    BeforePost = QryBarcoVigenciaBeforePost
    OnDeleteError = QryBarcoVigenciaDeleteError
    OnPostError = QryBarcoVigenciaPostError
    SQL.Strings = (
      'select * from embarcacion_vigencia'
      'where sContrato =:Contrato order by dFechaInicio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 473
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object StringField11: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object QryBarcoVigenciasIdEmbarcacion: TStringField
      FieldName = 'sIdEmbarcacion'
      OnChange = QryBarcoVigenciasIdEmbarcacionChange
    end
    object QryBarcoVigenciasDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Calculated = True
    end
    object DateField1: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object DateField4: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
  end
  object PopOpciones: TPopupMenu
    OnPopup = PopOpcionesPopup
    Left = 384
    Top = 216
    object CrearVigencia: TMenuItem
      Caption = 'Crear Nueva Vigencia de Categorias'
      OnClick = CrearVigenciaClick
    end
  end
end
