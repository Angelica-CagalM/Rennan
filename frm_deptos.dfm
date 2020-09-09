object frmDeptos: TfrmDeptos
  Left = 457
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Departamentos'
  ClientHeight = 474
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1: TPanel
    Left = 0
    Top = 320
    Width = 953
    Height = 154
    Align = alBottom
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 951
      Height = 108
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object edtCodigo: TcxDBTextEdit
        Left = 62
        Top = 11
        DataBinding.DataField = 'Codigo'
        DataBinding.DataSource = ds_deptos
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
        Width = 195
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 62
        Top = 40
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = ds_deptos
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
        Width = 382
      end
      object lcbNivel: TcxDBLookupComboBox
        Left = 62
        Top = 69
        DataBinding.DataField = 'IdPadre'
        DataBinding.DataSource = ds_deptos
        ParentFont = False
        Properties.KeyFieldNames = 'IdDepartamento'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = dsPadre
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
        Width = 350
      end
      object dxDBToggleSwitch1: TdxDBToggleSwitch
        Left = 828
        Top = 11
        Caption = 'Activo'
        DataBinding.DataField = 'Activo'
        DataBinding.DataSource = ds_deptos
        ParentFont = False
        Properties.DisplayChecked = 'Si'
        Properties.DisplayUnchecked = 'No'
        Properties.StateIndicator.Kind = sikText
        Properties.StateIndicator.OffText = 'No'
        Properties.StateIndicator.OnText = 'Si'
        Properties.StateIndicator.Position = sipInside
        Properties.ValueChecked = 'Si'
        Properties.ValueUnchecked = 'No'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
      end
      object cmbEmpresa: TcxDBLookupComboBox
        Left = 320
        Top = 11
        DataBinding.DataField = 'IdEmpresa'
        DataBinding.DataSource = ds_deptos
        ParentFont = False
        Properties.KeyFieldNames = 'IdEmpresa'
        Properties.ListColumns = <
          item
            FieldName = 'Titulo'
          end>
        Properties.ListSource = ds_empresa
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 145
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'C'#243'digo'
        Control = edtCodigo
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Nombre'
        Control = cxDBTextEdit1
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Nivel'
        Control = lcbNivel
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'dxDBToggleSwitch1'
        CaptionOptions.Visible = False
        Control = dxDBToggleSwitch1
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Empresa'
        Control = cmbEmpresa
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 109
      Width = 951
      Height = 44
      Align = alBottom
      TabOrder = 1
      inline frmBarraH21: TfrmBarraH2
        Left = 742
        Top = 1
        Width = 208
        Height = 42
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 742
        ExplicitTop = 1
        ExplicitWidth = 208
        ExplicitHeight = 42
        inherited Panel1: TPanel
          Width = 208
          Height = 42
          BevelEdges = []
          ExplicitWidth = 208
          ExplicitHeight = 42
          inherited btnPost: TcxButton
            Left = 15
            Top = 6
            OnClick = btnPostClick
            ExplicitLeft = 15
            ExplicitTop = 6
          end
          inherited btnCancel: TcxButton
            Left = 108
            Top = 5
            OnClick = btnCancelClick
            ExplicitLeft = 108
            ExplicitTop = 5
          end
        end
      end
    end
  end
  object cxgrid_deptos: TcxGrid
    Left = 0
    Top = 35
    Width = 424
    Height = 285
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dbg_deptoDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = ds_deptos
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.TranslateBetween = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 4
      FilterRow.Visible = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NavigatorOffset = 25
      OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object Col_Grid__idepto: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 97
      end
      object Col_Grid__descripcion: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'Nombre'
        Width = 359
      end
      object dbg_deptoDBTableView1Column1: TcxGridDBColumn
        Caption = 'Nivel'
        DataBinding.FieldName = 'IdPadre'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'IdDepartamento'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = dsPadre
        Width = 243
      end
      object Col_Grid__jefatura: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
        Width = 150
      end
    end
    object dbg_deptoLevel1: TcxGridLevel
      GridView = dbg_deptoDBTableView1
    end
  end
  object panelBotones: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 35
    Align = alTop
    TabOrder = 2
    inline frmBarraH11: TfrmBarraH1
      Left = 360
      Top = 1
      Width = 592
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 360
      ExplicitTop = 1
      ExplicitWidth = 592
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 592
        Height = 33
        ExplicitWidth = 592
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 31
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 31
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 111
          Height = 31
          OnClick = btnEditClick
          ExplicitLeft = 111
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 191
          Height = 31
          OnClick = btnDeleteClick
          ExplicitLeft = 191
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 431
          Height = 31
          OnClick = btnPrinterClick
          ExplicitLeft = 431
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 511
          Height = 31
          ExplicitLeft = 511
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 271
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 271
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 351
          Height = 31
          ExplicitLeft = 351
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Departamentos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object cxVerDiagrama: TcxButton
      Left = 240
      Top = 1
      Width = 120
      Height = 33
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Anchors = [akRight]
      Caption = 'Ver Diagrama'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000004205689BC246B
        B8FF2367B6FF2165B4FF2063B3FF17457FBD0000000500000000000000000000
        00000000000000000000000000000000000000000000000000053181C5FF78C6
        F0FF68BBEDFF61B6EBFF63B6EBFF2366B5FF0000000700000000000000000000
        000000000000000000005D443CCF725349FF715248FF6E5046FF378AC9FF8DD5
        F5FF79CAF3FF73C5F1FF79C6F1FF256CB9FF0000000600000000000000000000
        0000000000000000000078594FFF0000000000000000000000033B91CDFFA1E3
        FAFF9CDFF8FF95DBF7FF8ED6F6FF2973BEFF0000000500000000000000000000
        000000000000000000007D5F54FF0000000000000000000000012F709ABE3E95
        CFFF3D93CEFF3C91CDFF3B90CCFF2A6997BF0000000200000000000000000000
        0000000000000000000083655AFF000000000000000000000001000000060000
        00090000000B0000000C0000000B000000070000000200000000000000000000
        00000000000000000000886C5FFF000000000000000000000004205689BC246B
        B8FF2367B6FF2165B4FF2063B3FF17457FBD0000000500000000000000000000
        000000000000000000008E7166FF0000000000000000000000053181C5FF78C6
        F0FF68BBEDFF61B6EBFF63B6EBFF2366B5FF0000000700000000000000000000
        0000000000000000000094786BFF927669FF917568FF8E7165FF378AC9FF8DD5
        F5FF79CAF3FF73C5F1FF79C6F1FF256CB9FF0000000600000000000000000000
        00000000000000000000997D70FF0000000000000000000000033B91CDFFA1E3
        FAFF9CDFF8FF95DBF7FF8ED6F6FF2973BEFF0000000500000000000000000000
        00010000000500000008987D71FF0000000A00000009000000072E709ABF3E95
        CFFF3D93CEFF3C91CDFF3B90CCFF2A6997BF0000000200000000000000000000
        0004205689BC246BB8FF2367B6FF2165B4FF2063B3FF17457FBD000000060000
        0001000000020000000200000002000000010000000000000000000000000000
        00053181C5FF78C6F0FF68BBEDFF61B6EBFF63B6EBFF2366B5FF000000070000
        0000000000000000000000000000000000000000000000000000000000000000
        0004378AC9FF8DD5F5FF79CAF3FF73C5F1FF79C6F1FF256CB9FF000000060000
        0000000000000000000000000000000000000000000000000000000000000000
        00033B91CDFFA1E3FAFF9CDFF8FF95DBF7FF8ED6F6FF2973BEFF000000050000
        0000000000000000000000000000000000000000000000000000000000000000
        00012F709ABE3E95CFFF3D93CEFF3C91CDFF3B90CCFF2A6997BF000000020000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxVerDiagramaClick
    end
  end
  object cxSplitterA: TcxSplitter
    Left = 424
    Top = 35
    Width = 6
    Height = 285
    AlignSplitter = salRight
  end
  object cxOrganizacion: TPanel
    Left = 430
    Top = 35
    Width = 523
    Height = 285
    Align = alRight
    TabOrder = 4
    object cxOrganizacion2: TdxDbOrgChart
      Left = 1
      Top = 1
      Width = 521
      Height = 283
      DataSource = ds_deptos
      KeyFieldName = 'IdDepartamento'
      ParentFieldName = 'IdPadre'
      TextFieldName = 'Nombre'
      OrderFieldName = 'Nombre'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      SelectedNodeColor = clGradientActiveCaption
      DefaultNodeWidth = 100
      Options = [ocSelect, ocFocus, ocButtons, ocDblClick, ocEdit, ocCanDrag, ocShowDrag, ocAnimate]
      DefaultImageAlign = iaLC
      BorderStyle = bsNone
      Align = alClient
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object ds_deptos: TDataSource
    AutoEdit = False
    DataSet = zDeptos
    Left = 136
    Top = 64
  end
  object zDeptos: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from master_departamento where Activo='#39'Si'#39)
    Left = 136
    Top = 120
  end
  object zPadre: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select    -5 as IdDepartamento, 0 as IdPadre, '#39#39' as Codigo, '#39'NIV' +
        'EL PRINCIPAL'#39' as Nombre, '#39#39' as  Activo'
      'UNION'
      
        'Select  d.IdDepartamento, d.IdPadre, d.Codigo, d.Nombre, d.Activ' +
        'o From master_departamento as d  Where d.Activo = '#39'Si'#39' and d.IdE' +
        'mpresa =:IdEmpresa')
    Left = 448
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdEmpresa'
        Value = nil
      end>
  end
  object dsPadre: TDataSource
    DataSet = zPadre
    Left = 448
    Top = 152
  end
  object uqEmpresa: TUniQuery
    Connection = connection.Uconnection
    Left = 590
    Top = 106
  end
  object ds_empresa: TDataSource
    DataSet = uqEmpresa
    Left = 590
    Top = 162
  end
end
