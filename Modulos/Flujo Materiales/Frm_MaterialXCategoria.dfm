object FrmMaterialXCategoria: TFrmMaterialXCategoria
  Left = 0
  Top = 0
  Caption = 'FrmMaterial Por Categoria'
  ClientHeight = 446
  ClientWidth = 782
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
  object PanelDatos: TPanel
    Left = 0
    Top = 272
    Width = 782
    Height = 174
    Align = alBottom
    TabOrder = 0
    object pnlBtn2: TPanel
      Left = 1
      Top = 137
      Width = 780
      Height = 36
      Align = alBottom
      TabOrder = 0
      inline frmBarraH21: TfrmBarraH2
        Left = 590
        Top = 1
        Width = 189
        Height = 34
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 590
        ExplicitTop = 1
        ExplicitWidth = 189
        ExplicitHeight = 34
        inherited Panel1: TPanel
          Left = 13
          Width = 176
          Height = 34
          Align = alRight
          AutoSize = True
          ExplicitLeft = 13
          ExplicitWidth = 176
          ExplicitHeight = 34
          inherited btnPost: TcxButton
            Left = 1
            Top = 1
            Height = 32
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 32
          end
          inherited btnCancel: TcxButton
            Left = 88
            Top = 1
            Height = 32
            Align = alRight
            OnClick = btnCancelClick
            ExplicitLeft = 88
            ExplicitTop = 1
            ExplicitHeight = 32
          end
        end
      end
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 780
      Height = 136
      Align = alClient
      TabOrder = 1
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cbCategoria: TcxDBLookupComboBox
        Left = 71
        Top = 11
        DataBinding.DataField = 'IdCategoria'
        DataBinding.DataSource = dsMatxCat
        ParentFont = False
        Properties.KeyFieldNames = 'IdPuesto'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsCategoria
        Style.HotTrack = False
        TabOrder = 0
        Width = 145
      end
      object cbMaterial: TcxDBLookupComboBox
        Left = 358
        Top = 11
        DataBinding.DataField = 'IdMaterial'
        DataBinding.DataSource = dsMatxCat
        ParentFont = False
        Properties.KeyFieldNames = 'IdInsumo'
        Properties.ListColumns = <
          item
            FieldName = 'Insumo'
          end>
        Properties.ListSource = dsMaterial
        Style.HotTrack = False
        TabOrder = 1
        Width = 145
      end
      object edtCantidad: TcxDBCalcEdit
        Left = 648
        Top = 11
        DataBinding.DataField = 'Cantidad'
        DataBinding.DataSource = dsMatxCat
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
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
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Categoria'
        Control = cbCategoria
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Material'
        Control = cbMaterial
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Cantidad'
        Control = edtCantidad
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 35
    Align = alTop
    TabOrder = 1
    inline frmBarraH11: TfrmBarraH1
      Left = 225
      Top = 1
      Width = 556
      Height = 33
      Align = alRight
      AutoSize = True
      TabOrder = 0
      ExplicitLeft = 225
      ExplicitTop = 1
      ExplicitWidth = 556
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 556
        Height = 33
        Align = alRight
        ExplicitWidth = 556
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          OnClick = btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          OnClick = btnDeleteClick
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 395
          Height = 31
          ExplicitLeft = 395
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 475
          Height = 31
          ExplicitLeft = 475
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Tag = 13
          Width = 74
          Height = 31
          ExplicitLeft = 321
          ExplicitWidth = 74
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      AutoSize = False
      Caption = 'Material por Categoria'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
      Height = 33
      Width = 224
    end
  end
  object grid_requsicion: TcxGrid
    Left = 0
    Top = 35
    Width = 782
    Height = 237
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object cxView_Requsicion: TcxGridDBTableView
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
      DataController.DataSource = dsMatxCat
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.AutoDataSetFilter = True
      DataController.Filter.TranslateBetween = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object cxView_RequsicionColumn3: TcxGridDBColumn
        Caption = 'Categoria'
        DataBinding.FieldName = 'Nombre'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Width = 30
      end
      object cxView_RequsicionColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Material'
        Options.Editing = False
        Width = 41
      end
    end
    object grid_requsicionLevel1: TcxGridLevel
      GridView = cxView_Requsicion
    end
  end
  object zMatxCat: TUniQuery
    Connection = connection.Uconnection
    Left = 144
    Top = 176
  end
  object zMaterial: TUniQuery
    Connection = connection.Uconnection
    Left = 264
    Top = 152
  end
  object zCategoria: TUniQuery
    Connection = connection.Uconnection
    Left = 344
    Top = 152
  end
  object dsMatxCat: TDataSource
    DataSet = zMatxCat
    Left = 80
    Top = 176
  end
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 224
    Top = 144
  end
  object dsCategoria: TDataSource
    DataSet = zCategoria
    Left = 400
    Top = 152
  end
end
