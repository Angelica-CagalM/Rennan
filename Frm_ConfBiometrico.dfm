object FrmConfBiometrico: TFrmConfBiometrico
  Left = 0
  Top = 0
  Caption = 'Configuracion Biometrico'
  ClientHeight = 468
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCentral: TPanel
    Left = 0
    Top = 35
    Width = 782
    Height = 433
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 780
      Height = 295
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsConfiguracion
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Direccion'
          DataBinding.FieldName = 'Direccion_ip'
          Width = 156
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Puerto'
          Width = 162
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Ubicacion'
          DataBinding.FieldName = 'ubicacion'
          Width = 168
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 292
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object PanelDatos: TPanel
      Left = 1
      Top = 296
      Width = 780
      Height = 136
      Align = alBottom
      TabOrder = 1
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 778
        Height = 98
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object edtDireccion: TcxDBTextEdit
          Left = 69
          Top = 10
          DataBinding.DataField = 'Direccion_ip'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 0
          Width = 164
        end
        object edtPuerto: TcxDBTextEdit
          Left = 227
          Top = 10
          DataBinding.DataField = 'Puerto'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 1
          Width = 151
        end
        object CbUbicacion: TcxDBComboBox
          Left = 393
          Top = 10
          DataBinding.DataField = 'ubicacion'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Properties.Items.Strings = (
            'Recepcion'
            'ControlEPP'
            'Medico')
          Style.HotTrack = False
          TabOrder = 2
          Width = 204
        end
        object edtDesc: TcxDBTextEdit
          Left = 607
          Top = 10
          DataBinding.DataField = 'Descripcion'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 3
          Width = 223
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
          CaptionOptions.Text = 'Direccion ip'
          Control = edtDireccion
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Puerto'
          Control = edtPuerto
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Ubicacion'
          Control = CbUbicacion
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'Descripcion'
          Control = edtDesc
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
      object pnlBtn2: TPanel
        Left = 1
        Top = 99
        Width = 778
        Height = 36
        Align = alBottom
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 601
          Top = 1
          Width = 176
          Height = 34
          Align = alRight
          AutoSize = True
          TabOrder = 0
          ExplicitLeft = 601
          ExplicitTop = 1
          ExplicitWidth = 176
          ExplicitHeight = 34
          inherited Panel1: TPanel
            Width = 176
            Height = 34
            Align = alRight
            AutoSize = True
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
    end
    object CZKEM1: TCZKEM
      Left = 540
      Top = 427
      Width = 34
      Height = 22
      TabOrder = 2
      Visible = False
      ControlData = {00090000670C000018090000}
    end
  end
  object PanelMenu: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 35
    Align = alTop
    TabOrder = 1
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Configuracion Biometrico'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitWidth = 218
    end
    inline frmBarraH11: TfrmBarraH1
      Left = 219
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 219
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        Align = alRight
        ExplicitWidth = 562
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
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Height = 31
          Visible = False
          ExplicitLeft = 401
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Height = 31
          Visible = False
          ExplicitLeft = 481
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Height = 31
          Visible = False
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxButton1: TcxButton
      Left = 108
      Top = 1
      Width = 111
      Height = 33
      Align = alRight
      Caption = 'Probra Conexion'
      TabOrder = 2
      OnClick = cxButton1Click
    end
  end
  object zConfiguracion: TUniQuery
    Connection = connection.Uconnection
    Left = 392
    Top = 123
  end
  object dsConfiguracion: TDataSource
    DataSet = zConfiguracion
    Left = 448
    Top = 123
  end
end
