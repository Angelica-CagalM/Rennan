object frmExistencia: TfrmExistencia
  Left = 255
  Top = 73
  BorderIcons = [biSystemMenu]
  Caption = 'Existencias'
  ClientHeight = 409
  ClientWidth = 733
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 733
    Height = 35
    Align = alTop
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Existencias'
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
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 733
    Height = 339
    Align = alClient
    TabOrder = 1
    object PanelDatos: TPanel
      Left = 1
      Top = 1
      Width = 731
      Height = 337
      Align = alClient
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 729
        Height = 335
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
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
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.DataSource = dsExistencias
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGrid1DBTableView1DataControllerFilterChanged
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.OnBeforeChange = cxGrid1DBTableView1DataControllerFilterBeforeChange
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Total:   0'
              Kind = skSum
              Column = cxGrid1DBTableView1Column3
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'C'#243'digo Material'
            DataBinding.FieldName = 'Codigo'
            Width = 150
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'Proyecto'
            Width = 200
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Asignado'
            DataBinding.FieldName = 'Existencia'
            Width = 150
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'Almacen'
            Width = 200
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object PanelTopD: TPanel
    Left = 0
    Top = 374
    Width = 733
    Height = 35
    Align = alBottom
    TabOrder = 2
    Visible = False
    inline frmBarraH21: TfrmBarraH2
      Left = 552
      Top = 1
      Width = 180
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 552
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Left = 4
        Width = 176
        Height = 33
        Align = alRight
        AutoSize = True
        ExplicitLeft = 4
        ExplicitWidth = 176
        ExplicitHeight = 33
        inherited btnPost: TcxButton
          Left = 1
          Top = 1
          Height = 31
          Align = alRight
          OnClick = btnPostClick
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitHeight = 31
        end
        inherited btnCancel: TcxButton
          Left = 88
          Top = 1
          Height = 31
          Align = alRight
          OnClick = btnCancelClick
          ExplicitLeft = 88
          ExplicitTop = 1
          ExplicitHeight = 31
        end
      end
    end
  end
  object frxOrdenCompra: TfrxDBDataset
    UserName = 'frxOrdenCompra'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 952
    Top = 229
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
  object dsExistencias: TDataSource
    DataSet = zExistencias
    Left = 417
    Top = 236
  end
  object zExistencias: TUniQuery
    Left = 513
    Top = 212
  end
end
