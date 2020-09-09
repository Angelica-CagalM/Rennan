object fmrAsignarAlmacen: TfmrAsignarAlmacen
  Left = 0
  Top = 0
  Caption = 'Asignar almacen'
  ClientHeight = 486
  ClientWidth = 1172
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1172
    Height = 35
    Align = alTop
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Asignados'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
    inline frmBarraH11: TfrmBarraH1
      Left = 608
      Top = 1
      Width = 563
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 608
      ExplicitTop = 1
      ExplicitWidth = 563
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 563
        Height = 33
        ExplicitWidth = 563
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 2
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 2
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 82
          Height = 31
          ExplicitLeft = 82
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 162
          Height = 31
          ExplicitLeft = 162
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 402
          Height = 31
          ExplicitLeft = 402
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 482
          Height = 31
          ExplicitLeft = 482
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 242
          Height = 31
          ExplicitLeft = 242
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 322
          Height = 31
          ExplicitLeft = 322
          ExplicitHeight = 31
        end
      end
    end
  end
  object PanelCentral: TPanel
    Left = 311
    Top = 35
    Width = 435
    Height = 451
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 433
      Height = 449
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsAlmacen
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No hay Proyectos>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'sIdUsuario'
          Width = 94
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'Almacen'
          Width = 204
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object PanelDetalle: TPanel
    Left = 752
    Top = 35
    Width = 420
    Height = 451
    Align = alRight
    TabOrder = 2
    Visible = False
    object cxGridProyecto: TcxGrid
      Left = 1
      Top = 1
      Width = 418
      Height = 414
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxViewProyectos: TcxGridDBTableView
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
        DataController.DataSource = dsProyecto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No hay Proyectos>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxViewProyectosColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
          Width = 104
        end
        object cxViewProyectosColumn3: TcxGridDBColumn
          Caption = 'Almacen'
          DataBinding.FieldName = 'sDescripcion'
          Width = 312
        end
      end
      object cxGridProyectoLevel1: TcxGridLevel
        GridView = cxViewProyectos
      end
    end
    object PanelDown: TPanel
      Left = 1
      Top = 415
      Width = 418
      Height = 35
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        418
        35)
      object cxCancelarDetalle: TcxButton
        Left = 327
        Top = 6
        Width = 84
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxCancelarDetalleClick
      end
      object cxGuardarDetalle: TcxButton
        Left = 234
        Top = 6
        Width = 87
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Guardar'
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxGuardarDetalleClick
      end
    end
  end
  object cxSplitterDtelle: TcxSplitter
    Left = 746
    Top = 35
    Width = 6
    Height = 451
    AlignSplitter = salRight
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 305
    Height = 451
    Align = alLeft
    TabOrder = 4
    object cxGridUsuarios: TcxGrid
      Left = 1
      Top = 1
      Width = 303
      Height = 449
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxViewUsuarios: TcxGridDBTableView
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
        DataController.DataSource = dsUsuarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No hay usuarios>'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'sIdUsuario'
          Width = 80
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'sNombre'
          HeaderAlignmentHorz = taCenter
          Width = 211
        end
        object cxViewUsuariosColumn1: TcxGridDBColumn
          Caption = 'Perfil'
          DataBinding.FieldName = 'sIdGrupo'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'sIdGrupo'
          Properties.ListColumns = <
            item
              FieldName = 'sDescripcion'
            end>
          Properties.ListSource = ds_grupos
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 169
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxViewUsuarios
      end
    end
  end
  object cxSplitterUser: TcxSplitter
    Left = 305
    Top = 35
    Width = 6
    Height = 451
  end
  object Proyecto: TUniQuery
    Connection = connection.Uconnection
    Left = 784
    Top = 115
  end
  object dsProyecto: TDataSource
    DataSet = Proyecto
    Left = 880
    Top = 179
  end
  object zUsuarios: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select '
      '  u.sIdUsuario, '
      '  u.sNombre, '
      '  u.sMail, '
      '  u.IdDepartamento, '
      '  u.sPuesto,'
      '  u.sIdGrupo'
      'from usuarios as u where u.lActivo = '#39'Si'#39)
    AfterScroll = zUsuariosAfterScroll
    Left = 112
    Top = 187
  end
  object dsUsuarios: TDataSource
    DataSet = zUsuarios
    Left = 168
    Top = 187
  end
  object zAlmacen: TUniQuery
    Connection = connection.Uconnection
    Left = 367
    Top = 171
  end
  object dsAlmacen: TDataSource
    DataSet = zAlmacen
    Left = 432
    Top = 171
  end
  object uGrupos: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from grupos;')
    AfterScroll = zUsuariosAfterScroll
    Left = 112
    Top = 243
  end
  object ds_grupos: TDataSource
    DataSet = uGrupos
    Left = 168
    Top = 243
  end
end
