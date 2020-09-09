object frmAgregarPersonal: TfrmAgregarPersonal
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Empleados'
  ClientHeight = 473
  ClientWidth = 768
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grid_Personal: TcxGrid
    Left = 0
    Top = 33
    Width = 768
    Height = 405
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
        Width = 85
      end
      object Grid_cuadrillaColumn2: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'NombreCompleto'
        Options.Editing = False
        Width = 271
      end
    end
    object cxViewCuadrilla: TcxGridLevel
      GridView = Grid_cuadrilla
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 33
    Align = alTop
    TabOrder = 1
    object cxLabelTitulo: TcxLabel
      Left = 1
      Top = 34
      Align = alClient
      Caption = 'Agregar Personal a Guardia'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object cxTexGuardia: TcxTextEdit
      Left = 407
      Top = 34
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
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 766
      Height = 33
      Align = alTop
      TabOrder = 2
      object cxLabel3: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Agregar Personal'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 438
    Width = 768
    Height = 35
    Align = alBottom
    TabOrder = 2
    object cxActualiza: TcxButton
      Left = 663
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
    object cxFecha: TcxDateEdit
      Left = 327
      Top = 6
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 245
      Top = 7
      Caption = 'Fecha'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
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
    Left = 376
    Top = 168
  end
  object empleados: TUniQuery
    Connection = connection.Uconnection
    Left = 304
    Top = 160
  end
end
