object FrmReembolso: TFrmReembolso
  Left = 0
  Top = 0
  Caption = 'Reembolso'
  ClientHeight = 548
  ClientWidth = 1103
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
    Width = 664
    Height = 513
    Align = alClient
    TabOrder = 0
    object PanelDatos: TPanel
      Left = 1
      Top = 267
      Width = 662
      Height = 245
      Align = alBottom
      TabOrder = 0
      Visible = False
      object dxLayoutControl5: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 660
        Height = 208
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object mmJustificacion: TcxDBMemo
          Left = 85
          Top = 95
          DataBinding.DataField = 'Nota'
          DataBinding.DataSource = dsReembolso
          ParentFont = False
          Properties.OnChange = mmJustificacionPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 9
          Height = 44
          Width = 872
        end
        object cbdias: TcxDBTextEdit
          Left = 518
          Top = 11
          DataBinding.DataField = 'Dias'
          DataBinding.DataSource = dsReembolso
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 7
          OnExit = cbdiasExit
          Width = 228
        end
        object edtFolio: TcxDBTextEdit
          Left = 85
          Top = 11
          DataBinding.DataField = 'Folio'
          DataBinding.DataSource = dsReembolso
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 202
        end
        object cbPersonal: TcxDBLookupComboBox
          Left = 85
          Top = 39
          DataBinding.DataField = 'IdPersonal'
          DataBinding.DataSource = dsReembolso
          ParentFont = False
          Properties.KeyFieldNames = 'IdPersonal'
          Properties.ListColumns = <
            item
              FieldName = 'Personal'
            end>
          Properties.ListSource = dsPersonal
          Properties.OnChange = cbPersonalPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 202
        end
        object cbFechaI: TcxDBDateEdit
          Left = 292
          Top = 11
          DataBinding.DataField = 'FechaInicio'
          DataBinding.DataSource = dsReembolso
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          OnExit = cbFechaIExit
          Width = 43
        end
        object cbCiudadO: TcxDBLookupComboBox
          Left = 292
          Top = 39
          DataBinding.DataField = 'IdCiudad'
          DataBinding.DataSource = dsReembolso
          Enabled = False
          ParentFont = False
          Properties.KeyFieldNames = 'IdCiudad'
          Properties.ListColumns = <
            item
              FieldName = 'FK_Ciudad'
            end
            item
              FieldName = 'Estado'
            end>
          Properties.ListSource = dsCiudad
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 228
        end
        object cbCiudadD: TcxDBLookupComboBox
          Left = 518
          Top = 39
          DataBinding.DataField = 'IdCiudadDestino'
          DataBinding.DataSource = dsReembolso
          Enabled = False
          ParentFont = False
          Properties.KeyFieldNames = 'IdCiudad'
          Properties.ListColumns = <
            item
              FieldName = 'FK_Ciudad'
            end
            item
              FieldName = 'Estado'
            end>
          Properties.ListSource = dsCiudad
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 234
        end
        object cbPolitica: TcxComboBox
          Left = 85
          Top = 67
          ParentFont = False
          Properties.Items.Strings = (
            'Gerente'
            'SuperIntendente')
          Properties.OnChange = cbPoliticaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 121
        end
        object edtTotal: TcxDBCurrencyEdit
          Left = 292
          Top = 67
          DataBinding.DataField = 'Total'
          DataBinding.DataSource = dsReembolso
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 93
        end
        object edtFechaF: TcxDBDateEdit
          Left = 383
          Top = 11
          DataBinding.DataField = 'FechaFinal'
          DataBinding.DataSource = dsReembolso
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          OnExit = edtFechaFExit
          Width = 52
        end
        object dxLayoutGroup3: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Visible = False
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup5
          AlignHorz = ahClient
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem25: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Justificacion'
          Control = mmJustificacion
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem16: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Dias'
          Control = cbdias
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup5
          AlignHorz = ahClient
          Index = 1
          AutoCreated = True
        end
        object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup5
          AlignHorz = ahClient
          Index = 2
          AutoCreated = True
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Folio'
          Control = edtFolio
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem15: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Personal'
          Control = cbPersonal
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem26: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup8
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha Inicio'
          Control = cbFechaI
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem18: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          CaptionOptions.Text = 'Ciudad Origen'
          Control = cbCiudadO
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutItem20: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Ciudad Destino'
          Control = cbCiudadD
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutItem21: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Politica'
          Control = cbPolitica
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Total'
          Control = edtTotal
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 2
        end
        object dxLayoutItem17: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup8
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha Fin'
          Control = edtFechaF
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
      object pnlBtn2: TPanel
        Left = 1
        Top = 209
        Width = 660
        Height = 35
        Align = alBottom
        TabOrder = 1
        Visible = False
        inline frmBarraH21: TfrmBarraH2
          Left = 479
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 479
          ExplicitTop = 1
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Height = 33
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
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 662
      Height = 266
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = dsReembolso
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total'
            Kind = skCount
            Column = ColNota
            DisplayText = 'Total'
          end
          item
            Format = '$ #,00.00'
            Kind = skSum
            FieldName = 'Monto'
            Column = Cantidad
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Personal'
          Visible = False
          GroupIndex = 0
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
          Width = 68
        end
        object ColMes: TcxGridDBColumn
          Caption = 'Fecha Inicio'
          DataBinding.FieldName = 'FechaInicio'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.AssignedValues.DisplayFormat = True
          Width = 101
        end
        object ColNota: TcxGridDBColumn
          Caption = 'Justificacion'
          DataBinding.FieldName = 'Nota'
          Width = 101
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Dias'
          Width = 50
        end
        object Cantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Monto'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 84
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Monto Total'
          DataBinding.FieldName = 'Total'
          Width = 75
        end
        object colPendiente: TcxGridDBColumn
          Caption = 'Restante'
          DataBinding.FieldName = 'pagado'
          Width = 76
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TotalReem'
          Width = 72
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSubReembolso
        DataController.DetailKeyFieldNames = 'IdReembolso'
        DataController.KeyFieldNames = 'IdReembolso'
        DataController.MasterKeyFieldNames = 'IdReembolso'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView2Column1: TcxGridDBColumn
          Caption = 'Cconcepto'
          DataBinding.FieldName = 'Concepto'
          Width = 302
        end
        object cxGrid1DBTableView2Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Width = 337
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
  end
  object PanelLateral: TPanel
    Left = 672
    Top = 35
    Width = 431
    Height = 513
    Align = alRight
    TabOrder = 1
    Visible = False
    object PanelBotones: TPanel
      Left = 1
      Top = 1
      Width = 429
      Height = 48
      Align = alTop
      TabOrder = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 427
        Height = 46
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxNuevoDetalle: TcxButton
          Tag = 10
          Left = 174
          Top = 10
          Width = 81
          Height = 26
          Caption = 'Nuevo'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxNuevoDetalleClick
        end
        object cxEditaDetalle: TcxButton
          Tag = 11
          Left = 261
          Top = 10
          Width = 81
          Height = 26
          Caption = 'Editar'
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxEditaDetalleClick
        end
        object cxLabel1: TcxLabel
          Left = 10
          Top = 10
          Caption = 'Detalle Reembolso'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clHighlight
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = clHotLight
          Style.IsFontAssigned = True
          Transparent = True
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahRight
          AlignVert = avTop
          CaptionOptions.Text = 'cxNuevoDetalle'
          CaptionOptions.Visible = False
          Control = cxNuevoDetalle
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxEditaDetalle'
          CaptionOptions.Visible = False
          Control = cxEditaDetalle
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignVert = avClient
          CaptionOptions.Text = '                      '
          CaptionOptions.Visible = False
          Control = cxLabel1
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxGrid4: TcxGrid
      Left = 1
      Top = 49
      Width = 429
      Height = 207
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGridDBTableView2CellDblClick
        DataController.DataSource = dsReembolsoDetalle
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total'
            Kind = skCount
            DisplayText = 'Total'
          end
          item
            Format = '$ #,00.00'
            Kind = skSum
            FieldName = 'Monto'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object cxGridDBColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'Concepto'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 73
        end
        object cxGridDBTableView2Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Monto'
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 256
      Width = 429
      Height = 200
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object btnCargarXML: TcxButton
        Left = 295
        Top = 11
        Width = 116
        Height = 72
        Caption = 'Cargar XML / PDF'
        OptionsImage.Glyph.Data = {
          D61E0000424DD61E000000000000360000002800000038000000230000000100
          200000000000A01E000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040000000E0000
          000B000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003010102330B0B
          20860B0B1D7B06060B5D03030141000000260000001000000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000020E050524751616
          CDF91616BEEF17179BDD171779CB131351B60C0C2E9307071874040409580202
          013B000000240000001200000004000000000000000000000000000000000101
          010B0404041A0505051F05050521040404240101012602020227020202290202
          022B0202022C0202022D0202022D0202022D0202022D0202022D0202022C0202
          022C02020229010101260000001E00000026000000230000001F000000190000
          000E000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010F25040474B50707
          FFFF0505FFFF0B0BFFFF1212FFFF1717F9FF1818DBFB1111B3EC13138DD71414
          66C00B0B45AA06062D9006061A7305050D5A03030442010100260303012C3030
          288353534BAA54544EAB555553AE585859B05D5D5EB25D5D5DB35B5B5CB45C5C
          5CB55C5C5CB55C5C5DB65C5C5DB65C5C5DB65C5C5DB65C5C5DB65C5C5DB65C5C
          5CB55E5E5FB6535353AA11111164000000300000002D00000029000000210000
          0012000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020219370303B9DF0202
          FFFF0202FBFF0202FBFF0101FFFF0101FFFF0707FFFF2F2FFFFF2424FFFF0D0D
          FFFF1F1FFDFF2525EDFF1A1AC7F7151597E00D0D70C80B0B48A922224FB68080
          A3F0ABABBEFFB6B6BAFFC7C7BFFFD3D3C7FFDADAD1FFDEDEDEFFE7E7E9FFECEC
          EBFFECEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEFEFEFFFE8E8E7F75F5F5E9A0000000B0000000600000008000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000030324490404E4FE0404
          FFFF0505FBFF0909FBFF0C0CFBFF0707FBFF1616FBFF9090F9FF5C5CFBFF0505
          FEFF4D4DFFFF6A6AFFFF3232FFFF1111FFFF2121FFFF1515FFFF1A1AF8FF2020
          DDFF2C2CC4FF4040AFFF5858A1FF6E6E9BFF868699FFB0B0ACFFD7D7D2FFD9D9
          D5FFD9D8D5FFD8D8D5FFD8D8D5FFD8D8D5FFD8D8D5FFD8D8D5FFD8D8D5FFD8D8
          D5FFD9D9D6FFD8D8D4F8888886A2010101080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000103033F6E0101F8FF0505
          FFFF0909FBFF0D0DFBFF1111FCFF0404FCFF3939FDFFAFAFF4FF9090F3FF5E5E
          FCFF9595F8FFA7A7EAFF8A8AEDFF4E4EFDFF8B8BFBFF1C1CFFFF0101FFFF0000
          FFFF0000FFFF0000FFFF0202FAFF0909E7FF3939C3FFA0A0ABFFBABBC7FF9696
          BCFF9797BDFF9A9ABFFF9999BEFF9696BCFF9797BDFF9898BEFF9898BDFF9898
          BDFF9797BDFF9799BCFA646480BC0C0D185101010C4B00000B4D00000B4D0000
          0C4F00000B4E0000082F0000030D000000000000000000000000000000000000
          00000000000000000000000000000000000001010F1D04046C9F0606FFFF0707
          FEFF0C0CFCFF1010FCFF1414FCFF0000FCFF7070FAFF9B9BF5FFA0A0F2FFBBBB
          F6FF8888FDFF3C3CFCFF7D7DF6FFA0A0F9FFD7D7F6FF5050FBFF1010FBFF0808
          FBFF0606FCFF0303FCFF0101FEFF0000FFFF2121F3FF7D7EC0FF323498FF0000
          8AFF00008AFF00008CFF00008BFF00008BFF00008CFF00008CFF00008BFF0000
          8BFF00008AFF00008CFF000088FF02028EFF020396FF080996FF0C0C96FF0D0D
          96FF0A0A9FFF05065ECA02021964000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A1E34343489C55959F1FF3636
          EFFF2020F5FF1616F9FF1212FDFF0909FFFF3737F5FF7A7AE9FF7676E9FF8282
          EEFF9F9FF1FF8989F2FFA6A6F0FF8888F8FFB0B0F1FF5959EDFF1515FBFF0B0B
          FCFF0A0AFBFF0505FBFF0404FDFF0000FDFF2525EAFF7374BAFF0B0D96FF6E6F
          C3FF595BBAFF090992FF13149BFF7071C3FF5052B6FF4749B2FF4446B1FF1F22
          A3FF6C6DC2FF2123A4FF5657B9FF4142B1FF2426A6FF6E6FC3FF8D8ED0FF9092
          D1FF7C7DCCFF30329BEC03035DAE000000000000000000000000000000000000
          0000000000000000000000000000000000001F1F204AB2B2B0E8F3F3EEFFDCDC
          E2FFC9C9E2FFB8B8E3FF9696E6FF7272EAFF4F4FEEFF3434F1FF1E1EF7FF1D1D
          F8FF3737F1FF4444EEFF3333F4FF5D5DF2FF9A9AE7FF4F4FF3FF1818FCFF0F0F
          FDFF0E0EFBFF0909FBFF0202FEFF0000FAFF3D3EE4FF9294BFFF000197FF5E60
          C1FFF7F8FCFF4646B4FFA2A2D9FFD7D7F0FF5254BCFF7F80CCFFA1A2D9FF595B
          BEFFF2F2FAFF6F71C6FFB1B2E1FF8587CEFF5758BBFFD3D3EDFF9D9DD8FF6F70
          C6FF686BC5FF2B2D9DED050565AF000000000000000000000000000000000000
          0000000000000000000000000000000000002E2E2D61DCDCD9FFF6F6F1FFEFEF
          EAFFF7F7EDFFDDDDF0FFF1F1EFFFF2F2EEFFE6E6EDFFD7D7EEFFBEBEE9FF9999
          E4FF7272E8FF4F4FF0FF2F2FF4FF2020F6FF1C1CF5FF1313FAFF0808FEFF0909
          FFFF0A0AFFFF0909FCFF0000FEFF0303F6FF5858E0FFACADC9FF00009BFF0C0D
          9FFF9091D6FFDBDBF1FFF0F1FAFF5D5EC1FF0507A0FF8385D0FFB3B4E3FF8788
          D2FFF6F7FCFF9FA1DCFFB1B2E2FF8384CFFF5D5FC2FFC6C6EAFF4E4EB8FF0000
          9AFF0B0BA2FF090A93EC080B6AAE000000000000000000000000000000000000
          00000000000000000000000000000000000046464680E8E8E9FFF3F3EFFFEFEF
          EEFFB3B3F4FF6F6FFAFFA0A0F9FFF2F2F4FFFFFFF5FFFEFEF6FFFCFCF6FFF4F4
          F4FFE9E9F3FFDDDDF1FFCACAEEFFAFAFEBFF9090E9FF7676EAFF5454EDFF3131
          F0FF1515F5FF0404F9FF0000FFFF0E0EF6FF7474E0FFBABBD2FF0000A2FF0000
          A0FF282CB3FFECECF8FFC1C2EAFF2425A9FF00009DFF8082D3FFDCDCF3FFAEAF
          E2FF9999DAFFC0C1E9FFCACAECFF8081D1FF5B5DC5FFC2C2EAFF4241B9FF0000
          9DFF0204A6FF060999EC0A0C6FAE000000000000000000000000000000000000
          0000000000000000000000000000090909166464649EF3F3F4FFF2F2EFFFF1F1
          EFFFC8C8F4FF6767FBFF5C5CFBFFBDBDF9FFF9F9F9FFFFFFFAFFFDFDFBFFFFFF
          FBFFFFFFFBFFFFFFF8FFFFFFF4FFFBFBF3FFF3F3F1FFE9E9EEFFDADAEAFFC5C5
          E7FFAEAEE5FF9393E5FF6363E5FF5453DEFF9FA0DCFFB8BADAFF0000A8FF0203
          AAFF9B9CDDFFD2D2EFFFEFEFF9FF6A6BCBFF0608AAFF8788D6FFFFFFFFFFBBBC
          E8FF3335BAFFC7C8ECFFF9F9FDFF8283D5FF6062C9FFD1D1EFFF4647C1FF0000
          A6FF0A0EAEFF0A0D9EEC0A0C73AE000000000000000000000000000000000000
          000000000000000000000000000019191931848484BDF9F9F9FFEFEFEFFFF2F2
          F0FFF4F4F3FFCFCFF8FF6D6DFCFF6161FDFFD9D9FBFFFFFFFCFFFFFFFDFFFEFE
          FDFFFBFBFDFFFBFBFCFFFBFBFBFFFBFBF9FFFDFDF7FFFFFFF5FFFFFFF0FFFCFC
          ECFFF8F8E8FFF2F2E6FFD8D8DCFFC1C1CEFFD0D0D8FFA6A7DEFF0000ABFF5355
          C8FFE9E9F9FF5354C8FFA0A1E1FFC2C3ECFF4447C4FF8183D7FFFFFFFFFF9797
          DEFF0103AEFF9A9BDFFFFBFBFEFF797BD5FF575ACAFFBDBDE9FF4043C3FF0000
          ACFF0A0EB2FF0C0FA7F00C0F7EB7000000000000000000000000000000000000
          00000000000000000000000000002A2A2A4DADADADDEFAFAFAFFEFEFEFFFF3F3
          F4FFFAFAF5FFFFFFF8FFD1D1FBFF6A6AFFFF7F7FFEFFB9B9FFFFECECFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFAFFFFFFF7FFFFFFF5FFFFFFF2FFFCFC
          F0FFF2F2EEFFF1F1EFFFEAEADFFFE3E3D2FFEFEFE4FFB3B4E5FF0001B3FF2F32
          C5FF4D50CEFF0909AFFF1213B8FF4E51CDFF2428C0FF2529C0FF5659D0FF282A
          C0FF0000B0FF2023C0FF575AD0FF3539C6FF292CC2FF4B4DCCFF2124BFFF080B
          B7FF0E11BAFF0D11A3E30A0C6C9B000000000000000000000000000000000000
          00000000000000000000000000003B3B3B6ADADADAFCF8F8F8FFF2F2F2FFF5F5
          F6FFF6F6F7FFFBFBFAFFFFFFFDFFB7B7FFFF7878FFFF8B8BFFFFA6A6FFFFBFBF
          FFFFE7E7FFFFF5F5FFFFEDEDFFFFDDDDFCFFCECEFAFFC8C8F8FFC3C3F6FFDCDC
          F2FFF0F0EDFFF0F0EEFFDADADDFFD7D7D8FFF8F7F3FFE1E1F0FF6B6ED1FF393D
          C6FF2E30C3FF4346C8FF3A3DC5FF3335C4FF4043C8FF3B3EC6FF2C2FC1FF393C
          C5FF484BCAFF393CC4FD191CAAE6020586BD020584BA000083BB070A86BB0B0F
          89BC0B0F8FC40709628B0203293D000000000000000000000000000000000000
          000000000000000000000000000054545487EAEAEAFFF6F6F6FFF3F3F3FFF7F7
          F7FFF9F9F9FFFCFCFCFFFFFFFFFFD9D9FFFFBDBDFFFFD9D9FFFFB7B7FFFF7878
          FFFF8080FFFF9D9DFFFF9595FFFF7474FEFF6C6CFDFF7272FBFF7979F9FF7B7B
          F8FFBBBBF2FFEEEEEDFFE1E1DCFFDBDBDCFFF8F8F7FFF9F9F5FFF6F6F5FFDDDE
          EFFFDFE0F0FFE0E0F0FFE0E1F0FFDFE0F0FFDFE0F0FFDFE0F0FFDFDFF0FFDFE0
          F0FFE1E2F1FFDCDDEAF87C7C93A8010119240001131C0102151E0102151E0102
          16200102141D0001090D00000000000000000000000000000000000000000000
          000000000000000000000606060E717171A4F4F4F4FFF5F5F5FFF5F5F5FFF8F8
          F8FFFBFBFBFFFDFDFDFFFFFFFFFFE3E3FFFFABABFFFFD9D9FFFFF7F7FFFFADAD
          FFFF6868FFFF7373FFFF7F7FFFFF7272FFFF8C8CFDFFA0A0FAFFB1B1F8FF6363
          FBFF8D8DF7FFE1E1ECFFE6E6DAFFDFDFE0FFFAFAFAFFF5F5F4FFFCFCF6FFFFFF
          F9FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFF
          F8FFFFFFF9FFF7F7F2F797978F99020206080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001818182E8E8E8EBDF9F9F9FFF3F3F3FFF6F6F6FFF9F9
          F9FFFCFCFCFFFEFEFEFFFFFFFFFFEAEAFFFFADADFFFFA5A5FFFF8E8EFFFFA4A4
          FFFFF2F2FFFFFFFFFFFFFFFFFFFFFEFEFFFFE8E8FCFFCCCCFAFFB4B4F9FFBDBD
          F5FFE4E4F2FFEBEBE7FFDEDEDCFFEBEBE9FFFEFEFDFFF9F9F8FFF9F9F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF9F9F9FFF2F2F2F89393949F080808080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002A2A2A4DAEAEAED6F9F9F9FFF3F3F3FFF6F6F6FFFAFA
          FAFFFDFDFDFFFFFFFFFFFFFFFFFFEDEDFFFF6868FFFF6969FFFFD7D7FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFAFFFFFFF6FFFFFF
          F2FFF8F8F2FFE3E3E4FFE2E2DEFFF4F4F1FFFAFAFEFFF9F9FAFFF9F9FAFFF9F9
          FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9
          FAFFF9F9FBFFF1F2F4F89696949F080807080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000014343436DD0D0D0F0F9F9F9FFF4F4F4FFF7F7F7FFFBFB
          FBFFFEFEFEFFFFFFFFFFFFFFFFFF8D8DFFFF7B7BFFFFD9D9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFF6F6F6FFF2F2
          F3FFF7F7F5FFE5E5E2FFAAAAC4FF8284BDFF8E90C6FF8E8FC4FF8E8FC4FF8E8F
          C4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8F
          C4FF8C8DC3FF9394C2F88080899F060607080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000080808105F5F5F8EE6E6E6FFF8F8F8FFF4F4F4FFF8F8F8FFFBFB
          FBFFFEFEFEFFFFFFFFFFC6C6FFFF4545FFFFABABFFFFFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFF6F6F6FFF1F1
          F2FFFEFEF7FFDADBDDFF5758A5FF000089FF0A0A91FF0B0A91FF0B0A91FF0B0A
          91FF0B0A91FF0B0A91FF0B0A91FF0B0A91FF0B0A91FF0B0A91FF0B0A91FF0B0A
          91FF0A0A92FF0D0D8EF81516579F010104080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001C1C1C32818181B0F2F2F2FFFAFAFAFFF6F6F6FFF8F8F8FFFBFB
          FBFFFEFEFEFFE0E0FFFF9393FFFF7979FFFFD5D5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF9F9F9FFF6F6F6FFF1F1
          F2FFFFFFF7FFC4C4D4FF3A3BA0FF000092FF000398FF000398FF000398FF0003
          98FF000398FF000398FF000398FF000398FF000398FF000398FF000398FF0003
          98FF000399FF000395F80102529F000004080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003D3D3D61A2A2A2C9FCFCFCFFFBFBFBFFF7F7F7FFF7F7F6FFFCFC
          FAFFF3F3FEFF9595FFFFCACAFFFF9191FFFFDCDCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF8F8F8FFF5F5F5FFF1F1
          F2FFFFFFF4FFA8A9CBFF2021A1FF0000A0FF070AA3FF0609A3FF0609A3FF0609
          A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609
          A3FF0609A4FF06099FF804065A9F000005080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002626263E8A8A8AB2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FFFFE0E0FFFF6666FFFF9B9BFFFFAAAAFFFFEBEBFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFBFBFBFFF7F7F7FFF4F4F4FFF2F2
          F3FFFFFFEFFF8D8EC4FF0C0FA4FF0000A9FF090DA9FF080CA9FF080CA9FF080C
          A9FF080CA9FF080CA9FF080CA9FF080CA9FF080CA9FF080CA9FF080CA9FF080C
          A9FF080CAAFF080CA5F70608609E000005080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606060A232323366464647A8787879D949494B5B8B8B7D2DBDB
          DBEEEBEBFCFFA2A2FFFFA2A2FFFFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF9F9F9FFF5F5F5FFF3F3F3FFF6F6
          F4FFF4F4E7FF6F71BFFF0002AAFF0408B1FF0B0FB0FF0A0EB0FF0A0EB0FF0A0E
          B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
          B0FF0A0EB1FF0A0EACF8070A6EA8000005080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A0E1B1B1B29343434454F4F
          4E605D5D5B7B72727A988E8E9DB9C0C0BFD7E1E1DEF0F8F8F8FDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF8F8F8FFF5F5F5FFF0F0F1FFFBFA
          F3FFDFDFE0FF4F52C0FF0000B4FF0E12B9FF0D11B9FF0D11B9FF0D11B9FF0D11
          B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11
          B9FF0D11B9FF0F12B3F7080A6A99000106080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1B18263A3A394D5B5B5B6C707070898A8A8AA8A7A7
          A7C0BCBCBCD1D1D1D1E3E9E9E9F5FCFCFCFFFBFBFBFFFAFAFAFFF6F6F7FFFFFF
          F9FFC9C9CBF3393A84B703056A930B0E739A0C0E739A0C0E739A0C0E739A0C0E
          739A0C0E739A0C0E739A0C0E739A0C0E739A0C0E739A0C0E739A0C0E739A0C0E
          739A0C0F749D0A0C6A9003042F43000002030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202031010
          101A2C2C2C404C4C4C636E6E6E85878787A7A5A5A5C2B8B8B8D0CACACAE0D8D8
          D6ED7A7A719C0E0E172400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010101010606060B171717252F2F2F47575757786161
          6287252520350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OptionsImage.Layout = blGlyphTop
        TabOrder = 5
        OnClick = btnCargarXMLClick
      end
      object edtFecha: TcxDBDateEdit
        Left = 88
        Top = 39
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = dsReembolsoDetalle
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        OnExit = edtFechaExit
        Width = 166
      end
      object edtRFC: TcxDBTextEdit
        Left = 88
        Top = 67
        DataBinding.DataField = 'RFC'
        DataBinding.DataSource = dsReembolsoDetalle
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 201
      end
      object edtRS: TcxDBTextEdit
        Left = 88
        Top = 95
        DataBinding.DataField = 'RazonSocial'
        DataBinding.DataSource = dsReembolsoDetalle
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 121
      end
      object edtMontoDetalle: TcxDBTextEdit
        Left = 88
        Top = 123
        DataBinding.DataField = 'Monto'
        DataBinding.DataSource = dsReembolsoDetalle
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 121
      end
      object cbConcepto: TcxDBComboBox
        Left = 88
        Top = 11
        DataBinding.DataField = 'Concepto'
        DataBinding.DataSource = dsReembolsoDetalle
        ParentFont = False
        Properties.Items.Strings = (
          'Transporte'
          'Peajes'
          'Viaje'
          'Hospedaje'
          'Renta de auto'
          'Alimentos')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
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
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'cxButton5'
        CaptionOptions.Visible = False
        Control = btnCargarXML
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Fecha'
        Control = edtFecha
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avClient
        Index = 0
        AutoCreated = True
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'RFC'
        Control = edtRFC
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Razon social'
        Control = edtRS
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 3
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Monto'
        Control = edtMontoDetalle
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 4
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        CaptionOptions.Text = 'Concepto'
        Control = cbConcepto
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 456
      Width = 429
      Height = 56
      Align = alBottom
      TabOrder = 3
      Visible = False
      object dxLayoutControl7: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 427
        Height = 54
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        DesignSize = (
          427
          54)
        object cxButton7: TcxButton
          Left = 237
          Top = 10
          Width = 87
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Guardar'
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton7Click
        end
        object cxButton8: TcxButton
          Left = 330
          Top = 10
          Width = 87
          Height = 28
          Anchors = [akTop, akRight]
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
          OnClick = cxButton8Click
        end
        object dxLayoutControl7Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'cxButton7'
          CaptionOptions.Visible = False
          Control = cxButton7
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl7Group_Root
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'cxButton8'
          CaptionOptions.Visible = False
          Control = cxButton8
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 664
    Top = 35
    Width = 8
    Height = 513
    AlignSplitter = salRight
  end
  object PanelMenu: TPanel
    Left = 0
    Top = 0
    Width = 1103
    Height = 35
    Align = alTop
    TabOrder = 3
    DesignSize = (
      1103
      35)
    object LabelProceso: TcxLabel
      Left = 202
      Top = 10
      Caption = 'Procesando'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Visible = False
    end
    object progreso: TcxProgressBar
      Left = 276
      Top = 7
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      TabOrder = 1
      Visible = False
      Width = 198
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Reembolso'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    inline frmBarraH11: TfrmBarraH1
      Left = 540
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 3
      ExplicitLeft = 540
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
          ExplicitLeft = 401
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Height = 31
          OnClick = btnDetalleClick
          ExplicitLeft = 481
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Height = 31
          OnClick = btnExportaClick
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
  end
  object zReembolso: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select r.*,concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMaterno) as Per' +
        'sonal,'
      'DATE(DATE_ADD(r.FechaInicio , INTERVAL 1 MONTH)) as final,'
      
        'if ((Select SUM(Monto) from rh_reembolso_detalle where IdReembol' +
        'so = r.IdReembolso)>=r.Total,r.Total, (Select SUM(Monto) from rh' +
        '_reembolso_detalle where IdReembolso = r.IdReembolso) ) as Total' +
        'Reem, '
      'if(Pendiente<0,0,Pendiente) as pagado'
      'From rh_reembolso as r'
      'inner join master_personal as p on r.IdPersonal = p.IdPersonal')
    Left = 136
    Top = 115
  end
  object dsReembolso: TDataSource
    DataSet = zReembolso
    Left = 208
    Top = 115
  end
  object zPersonal: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select p.IdPersonal, concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMater' +
        'no) as Personal From  master_personal as p where p.Activo = '#39'Si'#39 +
        ';')
    Left = 136
    Top = 179
  end
  object dsPersonal: TDataSource
    DataSet = zPersonal
    Left = 208
    Top = 171
  end
  object zReembolsoDetalle: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select r.* From rh_reembolso_detalle as r where r.IdReembolso = ' +
        ':IdReembolso;')
    Left = 728
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdReembolso'
        Value = nil
      end>
  end
  object dsReembolsoDetalle: TDataSource
    DataSet = zReembolsoDetalle
    Left = 808
    Top = 147
  end
  object zEstados: TUniQuery
    Connection = connection.Uconnection
    Left = 280
    Top = 115
  end
  object dsEstados: TDataSource
    DataSet = zEstados
    Left = 280
    Top = 171
  end
  object dsDoctoXML: TDataSource
    DataSet = DoctoXML
    Left = 940
    Top = 260
  end
  object DoctoXML: TUniQuery
    Connection = connection.Uconnection
    Left = 964
    Top = 156
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 1038
    Top = 271
  end
  object XML: TXMLDocument
    Left = 1004
    Top = 332
  end
  object dlgSavePDF: TSaveDialog
    DefaultExt = 'pdf'
    Left = 1016
    Top = 232
  end
  object zCiudad: TUniQuery
    Connection = connection.Uconnection
    Left = 360
    Top = 115
  end
  object dsCiudad: TDataSource
    DataSet = zCiudad
    Left = 360
    Top = 171
  end
  object zSubRembolso: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select  r.IdReembolso,concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMate' +
        'rno) as Personal,'
      'd.Concepto,d.Monto as Cantidad'
      'From rh_reembolso as r'
      
        'inner join rh_reembolso_detalle as d on (d.IdReembolso = r.IdRee' +
        'mbolso)'
      'inner join master_personal as p on r.IdPersonal = p.IdPersonal')
    Left = 432
    Top = 115
  end
  object dsSubReembolso: TDataSource
    DataSet = zSubRembolso
    Left = 432
    Top = 163
  end
end
