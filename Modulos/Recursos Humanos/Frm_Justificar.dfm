object FrmJustificar: TFrmJustificar
  Left = 0
  Top = 0
  Caption = 'Justicar Asistencia '
  ClientHeight = 485
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 553
      Top = 1
      Width = 481
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 553
      ExplicitTop = 1
      ExplicitWidth = 481
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 481
        Height = 33
        Anchors = [akTop, akRight, akBottom]
        ExplicitWidth = 481
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 0
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 0
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 160
          Height = 31
          OnClick = btnEditClick
          ExplicitLeft = 160
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Tag = 11
          Left = 320
          Height = 31
          OnClick = btnDeleteClick
          ExplicitLeft = 320
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = -80
          Height = 31
          Visible = False
          ExplicitLeft = -80
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 400
          Height = 31
          ExplicitLeft = 400
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 80
          Height = 31
          ExplicitLeft = 80
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 240
          Height = 31
          ExplicitLeft = 240
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = -1
      Top = -4
      Caption = 'Justificar Asistencia'
      ParentColor = False
      ParentFont = False
      Style.Color = clNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object PanelCentral: TPanel
    Left = 0
    Top = 35
    Width = 1035
    Height = 450
    Align = alClient
    TabOrder = 1
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 202
      Width = 1033
      Height = 12
      AlignSplitter = salBottom
      Visible = False
    end
    object cxGridJustificar: TcxGrid
      Left = 1
      Top = 41
      Width = 1033
      Height = 161
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxViewDocumentos: TcxGridDBTableView
        OnKeyDown = cxViewDocumentosKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Enabled = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FilterBox.Visible = fvNever
        OnCellDblClick = cxViewDocumentosCellDblClick
        DataController.DataSource = dsJustificar
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'USD   $ #,00.00'
            Kind = skSum
            FieldName = 'dMontoDLL'
          end
          item
            Format = 'Total Folio'
            Kind = skCount
            DisplayText = 'Total Folio'
          end
          item
            Format = 'MN   $ #,00.00'
            Kind = skSum
            FieldName = 'dMontoMN'
            Column = ColNota
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object colNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          HeaderAlignmentHorz = taCenter
          Width = 178
        end
        object colFehca: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 143
        end
        object ColNota: TcxGridDBColumn
          Caption = 'Nota / Justificacion'
          DataBinding.FieldName = 'Nota'
          HeaderAlignmentHorz = taCenter
          Width = 265
        end
        object ColAistencia: TcxGridDBColumn
          DataBinding.FieldName = 'Asistencia'
          PropertiesClassName = 'TdxToggleSwitchProperties'
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'No'
          Properties.StateIndicator.OnText = 'Si'
          Properties.StateIndicator.Position = sipInside
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          Width = 105
        end
        object ColCantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Width = 92
        end
        object ColHE: TcxGridDBColumn
          Caption = 'Hora Entrada'
          DataBinding.FieldName = 'HoraEntrada'
          Width = 106
        end
        object ColHS: TcxGridDBColumn
          Caption = 'Hora Salida'
          DataBinding.FieldName = 'HoraSalida'
          Width = 109
        end
        object ColGuardias: TcxGridDBColumn
          DataBinding.FieldName = 'Guardia'
          Visible = False
          GroupIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxViewDocumentos
      end
    end
    object PanelDatos: TPanel
      Left = 1
      Top = 214
      Width = 1033
      Height = 235
      Align = alBottom
      TabOrder = 2
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 1031
        Height = 197
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 499
          Top = 10
          DataBinding.DataField = 'HoraEntrada'
          DataBinding.DataSource = dsJustificar
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 230
        end
        object cxDBMemo1: TcxDBMemo
          Left = 58
          Top = 94
          DataBinding.DataField = 'Nota'
          DataBinding.DataSource = dsJustificar
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 7
          Height = 89
          Width = 687
        end
        object cxDBTimeEdit2: TcxDBTimeEdit
          Left = 499
          Top = 38
          DataBinding.DataField = 'HoraSalida'
          DataBinding.DataSource = dsJustificar
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 288
        end
        object cbNombre: TcxDBLookupComboBox
          Left = 58
          Top = 10
          DataBinding.DataField = 'IdPersonal'
          DataBinding.DataSource = dsJustificar
          ParentFont = False
          Properties.KeyFieldNames = 'IdPersonal'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsPersonal
          Properties.OnChange = cbNombrePropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 341
        end
        object cbCant: TcxDBTextEdit
          Left = 321
          Top = 38
          DataBinding.DataField = 'Cantidad'
          DataBinding.DataSource = dsJustificar
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
          Width = 38
        end
        object cxImgActivo: TdxDBToggleSwitch
          Left = 10
          Top = 67
          Caption = 'Activo'
          DataBinding.DataField = 'Asistencia'
          DataBinding.DataSource = dsJustificar
          ParentFont = False
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'No'
          Properties.StateIndicator.OnText = 'Si'
          Properties.StateIndicator.Position = sipInside
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          Transparent = True
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 499
          Top = 66
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = dsJustificar
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 121
        end
        object cbDias: TcxComboBox
          Left = 58
          Top = 38
          ParentFont = False
          Properties.Items.Strings = (
            'Medio Dia'
            'Dia Completo')
          Properties.OnChange = cbDiasPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 205
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup3
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Hora de Entrada'
          Control = cxDBTimeEdit1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Nota'
          Control = cxDBMemo1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'Hora de salida'
          Control = cxDBTimeEdit2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Nombre'
          Control = cbNombre
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Cantidad'
          Control = cbCant
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'cxImgActivo'
          CaptionOptions.Visible = False
          Control = cxImgActivo
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'Fecha'
          Control = cxDBDateEdit1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup1
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignVert = avClient
          CaptionOptions.Text = 'Tiempo'
          Control = cbDias
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
      object pnlBtn2: TPanel
        Left = 1
        Top = 198
        Width = 1031
        Height = 36
        Align = alBottom
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 841
          Top = 1
          Width = 189
          Height = 34
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 841
          ExplicitTop = 1
          ExplicitWidth = 189
          ExplicitHeight = 34
          inherited Panel1: TPanel
            Width = 189
            Height = 34
            ExplicitWidth = 189
            ExplicitHeight = 34
            inherited btnPost: TcxButton
              Left = 3
              Top = 1
              OnClick = btnPostClick
              ExplicitLeft = 3
              ExplicitTop = 1
            end
            inherited btnCancel: TcxButton
              Left = 96
              Top = 1
              OnClick = btnCancelClick
              ExplicitLeft = 96
              ExplicitTop = 1
            end
          end
        end
      end
    end
    object panelJustifica: TPanel
      Left = 1
      Top = 1
      Width = 1033
      Height = 40
      Align = alTop
      TabOrder = 3
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 904
        Height = 38
        Align = alLeft
        TabOrder = 0
        DesignSize = (
          904
          38)
        object Label1: TLabel
          Left = 7
          Top = 8
          Width = 23
          Height = 15
          Caption = 'Mes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object cxjustificar: TcxButton
          Left = 668
          Top = 2
          Width = 101
          Height = 30
          Anchors = [akTop, akRight]
          Caption = 'Justificaciones'
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 0
          WordWrap = True
          OnClick = cxjustificarClick
        end
        object diasT: TcxLabel
          Left = 262
          Top = 4
          Anchors = [akTop, akRight]
          Caption = 'Quedan dias para justificar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object Mes: TComboBox
          Left = 36
          Top = 4
          Width = 145
          Height = 21
          TabOrder = 2
          Text = 'ENERO'
          OnChange = MesChange
          Items.Strings = (
            'ENERO'
            'FEBRERO'
            'MARZO'
            'ABRIL'
            'MAYO'
            'JUNIO'
            'JULIO'
            'AGOSTO'
            'SEPTIEMBRE'
            'OCTUBRE'
            'NOVIEMBRE'
            'DICIEMBRE')
        end
        object dxToggleJustificar: TdxToggleSwitch
          Tag = 11
          Left = 471
          Top = 4
          Caption = 'Justificar Todo'
          Checked = True
          ParentFont = False
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'No'
          Properties.StateIndicator.OnText = 'Si'
          Properties.StateIndicator.Position = sipInside
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          Properties.OnChange = dxToggleSwitch1PropertiesChange
          TabOrder = 3
          Transparent = True
        end
        object cbAnio: TcxComboBox
          Left = 187
          Top = 4
          ParentFont = False
          Properties.Items.Strings = (
            '2010'
            '2011'
            '2012'
            '2013'
            '2014'
            '2015'
            '2016'
            '2017'
            '2018'
            '2019'
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029'
            '2030'
            '2031'
            '2032'
            '2033'
            '2034'
            '2035'
            '2036'
            '2037'
            '2038'
            '2039'
            '2040')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Text = '2010'
          OnClick = MesChange
          Width = 78
        end
      end
    end
  end
  object Fechas: TUniQuery
    Left = 56
    Top = 113
  end
  object dsFechas: TDataSource
    DataSet = Fechas
    Left = 128
    Top = 113
  end
  object Justificar: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select '
      
        '(Select concat(mp.Nombre,'#39' '#39',mp.APaterno, '#39' '#39',mp.AMaterno) From ' +
        'master_personal as mp where mp.IdPersonal = p.IdPersonal) as Nom' +
        'bre,'
      'p.* From rh_justificar_personal as p'
      'where DATE(p.Fecha) between :FechaI and :FechaT;')
    Left = 609
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaT'
        Value = nil
      end>
  end
  object dsJustificar: TDataSource
    DataSet = Justificar
    Left = 665
    Top = 193
  end
  object Personal: TUniQuery
    Connection = connection.Uconnection
    Left = 289
    Top = 161
  end
  object dsPersonal: TDataSource
    DataSet = Personal
    Left = 337
    Top = 169
  end
  object frxAsistencia: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43210.706097662040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = frxAsistenciaGetValue
    OnReportPrint = 'no '
    Left = 456
    Top = 152
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmReportePeriodo.dsConfiguracion
        DataSetName = 'dsConfiguracion'
      end
      item
        DataSetName = 'dsEmpleados'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clNavy
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 223.000000000000000000
      Left = 613.000000000000000000
      Top = 186.000000000000000000
      Width = 336.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 910.866730000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich1: TfrxRichView
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 676.535870000000000000
          Height = 147.401670000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302043656E74757279
            205363686F6F6C626F6F6B3B7D7B5C66315C666E696C5C666368617273657430
            205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31373133347D5C766965776B696E64345C756331200D0A5C
            706172645C6E6F77696463746C7061725C68797068706172305C716A5C6B6572
            6E696E67315C66305C6673323220434F4E545241544F20444520505245535441
            43495C2764334E20444520534552564943494F5320504552534F4E414C455320
            494E444550454E4449454E544553205155452043454C454252414E20504F5220
            554E41205041525445204C4120534F4349454441442044454E4F4D494E414441
            205C625C6C64626C71756F746520434F422045534F4C4C4F525C7264626C7175
            6F7465202C20532E412E20444520432E562E2C205C6230204120515549454E20
            454E204C4F20535543455349564F205345204C452044454E4F4D494E41525C27
            633120454C205C625C6C64626C71756F746520505245535441544152494F5C72
            64626C71756F7465202C5C62302020434F4D504152454349454E444F20454E20
            45535445204143544F2053552041504F444552414441204C4547414C205C6220
            4552414E44454D492053415241492047414C4943494120584F4C414C50412C20
            5C6230205920504F52204C41204F5452412050415254455C6220205F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F2C5C62302020504F522053552050524F5049
            4F204445524543484F2C204120515549454E20454E204C4F2053554345534956
            4F205345204C452044454E4F4D494E41525C27633120454C205C625C6C64626C
            71756F746520505245535441444F525C7264626C71756F746520204F205C6C64
            626C71756F746520505245535441444F5220444520534552564943494F532050
            4552534F4E414C455320494E444550454E4449454E5445535C7264626C71756F
            7465202C205C6230204445204143554552444F2041204C4153204445434C4152
            4143494F4E4553205920434C5C2763315553554C4153205349475549454E5445
            533A5C6B65726E696E67305C66315C667331365C7061720D0A7D0D0A00}
        end
        object Rich2: TfrxRichView
          Left = 30.236240000000000000
          Top = 166.299320000000000000
          Width = 676.535870000000000000
          Height = 710.551640000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302043656E74757279
            205363686F6F6C626F6F6B3B7D7B5C66315C666E696C5C666368617273657430
            205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C6772
            65656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368
            656432302031302E302E31373133347D5C766965776B696E64345C756331200D
            0A5C706172645C6E6F77696463746C7061725C68797068706172305C71635C6B
            65726E696E67315C625C66305C66733232204465636C61726163696F6E65733A
            5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C687970687061
            72305C716A5C7061720D0A492E204465636C61726120656C2050726573746174
            6172696F2C20706F7220636F6E647563746F2064652073752061706F64657261
            6461206C6567616C3A5C7061720D0A5C62305C7061720D0A0D0A5C706172645C
            6E6F77696463746C7061725C68797068706172305C73613132305C716A20492E
            312E2053657220756E6120736F636965646164206465626964616D656E746520
            636F6E7374697475696461207920765C2765316C6964616D656E746520657869
            7374656E746520636F6D6F20706572736F6E61206D6F72616C20646520636F6E
            666F726D696461642061206C61206C656769736C6163695C2766336E20646520
            6C6F732045737461646F7320556E69646F73204D65786963616E6F7320736567
            5C2766616E20636F6E73746120656E20656C20696E737472756D656E746F206E
            6F74617269616C206E5C2766616D65726F2064696563696E75657665206D696C
            20747265736369656E746F73206469656369735C27653969732C20746F6D6F20
            63696E6375656E746120792063756174726F2C206465206665636861206E7565
            7665206465206A756E696F2064656C20615C2766316F20646F73206D696C2064
            69656369735C27653969732C2070617361646F20616E7465206C612066652064
            656C204C6963656E636961646F2053616C7661646F72204F726F70657A612043
            6173696C6C61732C204E6F746172696F20505C276661626C69636F204E5C2766
            616D65726F205665696E74696E7565766520656E205A61706F70616E2C204A61
            6C6973636F2E5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C
            68797068706172305C716A5C7061720D0A492E322E2053752061706F64657261
            6461206C6567616C206375656E746120636F6E20706C656E6173207920737566
            696369656E74657320666163756C746164657320706172612063656C65627261
            7220656C2070726573656E746520636F6E747261746F2C206F626C6967616E64
            6F206120737520706F64657264616E746520656E206C6F7320745C276539726D
            696E6F73207920636F6E646963696F6E657320616C2065666563746F20657374
            61626C656369646F2074616C207920636F6D6F206C6F20616372656469746120
            636F6E20656C20696E737472756D656E746F206E6F74617269616C206E5C2766
            616D65726F207665696E7465206D696C206369656E746F2063756172656E7461
            20792073696574652C20546F6D6F2063696E6375656E74612079207369657465
            2C2064652066656368612073656973206465206F6374756272652064656C2061
            5C2766316F20646F73206D696C206469656369735C27653969732C2070617361
            646F20616E7465206C612066652064656C204C6963656E636961646F2053616C
            7661646F72204F726F70657A6120436173696C6C61732C204E6F746172696F20
            505C276661626C69636F204E5C2766616D65726F205665696E74696E75657665
            20656E205A61706F70616E2C204A616C6973636F2E205C7061720D0A5C706172
            0D0A492E332E2D2054656E657220636F6D6F20646F6D6963696C696F20666973
            63616C20656C207562696361646F20656E204176656E69646120432C204E5C27
            66616D65726F204578746572696F72203832352C20496E746572696F7220352C
            20436F6C6F6E69612053656174746C652C205A61706F70616E2C204A616C6973
            636F2C20432E502E2034353131302C20636F6E20526567697374726F20466564
            6572616C20646520436F6E747269627579656E74657320204345533136303631
            354E54342E5C7061720D0A5C7061720D0A492E342E20457320737520766F6C75
            6E746164206C612063656C6562726163695C2766336E2064656C207072657365
            6E746520636F6E747261746F20656E20746F646F732079206361646120756E6F
            2064652073757320745C276539726D696E6F732E5C7061720D0A5C7061720D0A
            5C622049492E204465636C61726120706F722073752070726F70696F20646572
            6563686F20656C20507265737461646F723A5C7061720D0A5C62305C7061720D
            0A49492E312E2053657220756E6120706572736F6E6120665C27656473696361
            2C206D61796F7220646520656461642C206465206E6163696F6E616C69646164
            205F5F5F5F5F5F5F5F5F5F5F5F5F2C206465207365786F205F5F5F5F5F5F5F5F
            2C2065737461646F20636976696C205F5F5F5F5F5F5F5F2C20636F6E20646F6D
            6963696C696F20706172746963756C617220656C207562696361646F20656E20
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F3B20436C617665205C2764616E6963612064652052656769
            7374726F20646520506F626C6163695C2766336E205F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F207920526567697374726F204665646572616C20646520
            436F6E747269627579656E746573205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F2E5C7061720D0A5C7061720D0A49492E322E20517565206375656E7461
            20636F6E20706C656E617320666163756C74616465732070617261206F626C69
            676172736520656E206C6F7320745C276539726D696E6F732064656C20707265
            73656E746520636F6E747261746F2E205C7061720D0A5C7061720D0A49492E33
            2E20457320737520766F6C756E746164206C612063656C6562726163695C2766
            336E2064656C2070726573656E746520636F6E747261746F20656E20746F646F
            732079206361646120756E6F2064652073757320745C276539726D696E6F732E
            5C7061720D0A5C7061720D0A5C62204949492E204465636C61726163696F6E65
            732064656C20507265737461746172696F20792064656C20507265737461646F
            722028656E206164656C616E7465206C617320506172746573292E5C7061720D
            0A5C62305C7061720D0A4949492E312E204465636C6172616E206C6F73207265
            70726573656E74616E746573206465206C6173205C62205061727465735C6230
            2020717565207469656E656E206C617320666163756C74616465732073756669
            6369656E74657320706172612063656C65627261722065737465207469706F20
            6465206163746F73206A75725C2765646469636F733B5C7061720D0A5C706172
            0D0A0D0A5C70617264204949492E322E204D616E696669657374616E20717565
            207365207265636F6E6F63656E206D757475612079207265635C27656470726F
            63616D656E7465206C6120706572736F6E616C6964616420636F6E2071756520
            7365206F7374656E74616E206C6173205C62205061727465735C623020207061
            726120746F646F73206C6F732065666563746F73206C6567616C657320792063
            6F6E747261637475616C65732061207175652068617961206C756761722C2079
            2070726563697361646F7320656E206C6F73205C6366315C6B65726E696E6730
            5C66315C667331365C7061720D0A7D0D0A00}
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 910.866730000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich4: TfrxRichView
          Align = baCenter
          Left = 31.937028500000000000
          Top = 11.338590000000000000
          Width = 676.535870000000000000
          Height = 891.969080000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302043656E74757279
            205363686F6F6C626F6F6B3B7D7B5C66315C666E696C5C666368617273657430
            205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C6772
            65656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368
            656432302031302E302E31373133347D5C766965776B696E64345C756331200D
            0A5C706172645C6E6F77696463746C7061725C68797068706172305C716A5C6B
            65726E696E67315C66305C6673323220745C276539726D696E6F732064656C20
            70726573656E746520636F6E747261746F3B5C7061720D0A5C7061720D0A4949
            492E332E204465636C6172616E206C6173205C62205061727465735C62302020
            7175652063656C656272616E20656C2070726573656E746520636F6E74726174
            6F206465206D616E65726120766F6C756E74617269612C206C69627265207920
            726573706F6E7361626C652C2073696E2071756520616C2065666563746F2065
            786973746120646F6C6F2C206C6573695C2766336E2C206572726F7220792F6F
            20616C675C2766616E20766963696F206465206C6120766F6C756E7461642071
            7565206C6F20696E76616C6964653B20795C7061720D0A5C7061720D0A494949
            2E342E20486563686173206C6173206465636C61726163696F6E657320717565
            20616E7465636564656E207920612065666563746F2064652070657266656363
            696F6E617220656C2070726573656E746520636F6E747261746F2C207365206F
            626C6967616E206465206D616E657261207265635C27656470726F6361206120
            6C6173207369677569656E7465733A5C7061720D0A5C7061720D0A0D0A5C7061
            72645C6B6565706E5C6E6F77696463746C7061725C68797068706172305C6669
            2D3732305C6C693732305C71635C6220436C5C2765317573756C61733A5C7061
            720D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C
            716A5C62305C7061720D0A5C62204F626A65746F5C7061720D0A5C62305C7061
            720D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C
            66693730385C716A5C62205072696D6572612E5C623020204C6173205C622050
            61727465735C62302020636F6E7669656E656E2071756520656C206F626A6574
            6F2064656C2070726573656E746520636F6E747261746F20636F6E7369737465
            20656E2071756520656C205C6220507265737461646F72205C62302070726F70
            6F7263696F6E65205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F3B20206C6F73206375616C6573207365725C
            2765316E20707265737461646F732061206661766F722064656C205072657374
            61746172696F206F206465206C617320656E7469646164657320705C27666162
            6C69636173206F2070726976616461732C20706572736F6E617320665C276564
            7369636173206F206D6F72616C65732C20717565205C27653973746520696E64
            697175652E5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C68
            797068706172305C716A5C7061720D0A5C625C7061720D0A5C7061720D0A436F
            6E74726170726573746163695C2766336E5C7061720D0A5C62305C7061720D0A
            0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C666937
            30385C716A5C6220536567756E64615C6230202E20436F6E7669656E656E206C
            6173205C62205061727465735C62302020717565206C6120636F6E7472617072
            6573746163695C2766336E2071756520656C205C622050726573746174617269
            6F5C6230202064656265725C27653120706167617220616C205C622050726573
            7461646F72205C623020706F72206C6F7320736572766963696F7320636F6E74
            72617461646F73207365725C27653120646520636F6E666F726D696461642063
            6F6E20656C20416E65786F20556E6F2C20656C206375616C20636F6E7469656E
            6520656C20746162756C61646F7220636F72726573706F6E6469656E74652061
            6C207061676F20706F72206C6F7320736572766963696F732E5C7061720D0A0D
            0A5C706172645C6E6F77696463746C7061725C68797068706172305C716A5C70
            61720D0A0D0A5C706172645C6E6F77696463746C7061725C6879706870617230
            5C66693730385C716A204C6120726563657063695C2766336E2064656C207061
            676F20706F722070617274652064656C205C6220507265737461646F72205C62
            3020696D706C69636120656C207265636F6E6F63696D69656E746F2079206163
            6570746163695C2766336E2064652071756520656C207061676F206675652068
            6563686F20656E207469656D706F207920666F726D6120706F72207061727465
            2064656C205C6220507265737461746172696F2C5C6230202061735C27656420
            636F6D6F206C612061636570746163695C2766336E20706F7220706172746520
            64656C206D69736D6F205C6220507265737461646F72205C6230206465207175
            6520656C206D6F6E746F2064656C206D69736D6F20657320656C20636F727265
            63746F2E5C7061720D0A5C7061720D0A0D0A5C706172645C6E6F77696463746C
            7061725C68797068706172305C716A5C7061720D0A5C6220496D70756573746F
            735C7061720D0A5C7061720D0A0D0A5C706172645C6E6F77696463746C706172
            5C68797068706172305C66693730385C716A20546572636572612E5C62302020
            446520636F6E666F726D6964616420636F6E206C61206672616363695C276633
            6E20562064656C206172745C27656463756C6F203934206465206C61204C6579
            2064656C20496D70756573746F20736F627265206C612052656E74612C20656C
            205C6220507265737461646F72205C62302068615C6220205C623020636F6D75
            6E696361646F20616C5C622020507265737461746172696F205C623020717565
            206F70746120706F722071756520656C205C6220507265737461746172696F5C
            623020206C6C6576652061206361626F206C6120726574656E63695C2766336E
            20646520696D70756573746F20736F627265206C612072656E74612071756520
            636F72726573706F6E646120736F62726520656C206D6F6E746F206465206C61
            20636F6E74726170726573746163695C2766336E206D656E63696F6E61646120
            656E206C6120636C5C2765317573756C6120616E746572696F722C20706F7220
            6C6F2071756520656C205C6220507265737461746172696F5C62302020736520
            6F626C696761206120726574656E6572207920656E746572617220656C20696D
            70756573746F20736F627265206C612072656E74612071756520736520636175
            736520636F6E206D6F7469766F2064656C207061676F206465206C6120636F6E
            74726170726573746163695C2766336E2065666563747561646120616C205C62
            20507265737461646F725C6230202E5C7061720D0A5C7061720D0A456C205C62
            20507265737461746172696F5C623020207365206F626C696761206120657870
            65646972207920656E74726567617220616C205C6220507265737461646F725C
            62302020656C20636F6D70726F62616E74652066697363616C20636F72726573
            706F6E6469656E7465207175652063756D706C6120636F6E20746F646F73206C
            6F732072657175697369746F732065737461626C656369646F7320656E206C61
            73206C657965732066697363616C65732061706C696361626C65732E5C706172
            0D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C71
            6A5C625C7061720D0A5C62305C7061720D0A5C62204F626C69676163696F6E65
            732064656C20507265737461646F725C7061720D0A5C7061720D0A0D0A5C7061
            72645C6E6F77696463746C7061725C68797068706172305C66693730385C716A
            204375617274612E5C62302020456C205C6220507265737461646F72205C6230
            2074656E64725C276531206C6173207369677569656E746573206F626C696761
            63696F6E65733A5C7061720D0A0D0A5C706172645C6366315C6B65726E696E67
            305C66315C667331365C7061720D0A7D0D0A00}
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader3: TfrxPageHeader
        FillType = ftBrush
        Height = 910.866730000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich3: TfrxRichView
          Align = baCenter
          Left = 31.937028500000000000
          Top = 11.338590000000000000
          Width = 676.535870000000000000
          Height = 891.969080000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302043656E74757279
            205363686F6F6C626F6F6B3B7D7B5C66315C666E696C5C666368617273657430
            205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C6772
            65656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368
            656432302031302E302E31373133347D5C766965776B696E64345C756331200D
            0A5C706172645C6E6F77696463746C7061725C68797068706172305C716A5C6B
            65726E696E67315C66305C667332325C7061720D0A0D0A5C70617264200D0A7B
            5C706E746578745C663020412E5C7461627D7B5C2A5C706E5C706E6C766C626F
            64795C706E66305C706E696E64656E743336305C706E7374617274315C706E75
            636C74727B5C706E747874612E7D7D0D0A5C6E6F77696463746C7061725C6879
            7068706172305C66692D3432365C6C693432365C716A2044656265725C276531
            207072657374617220656C20736572766963696F20636F6E20746F6461207265
            73706F6E736162696C696461642C2070726F626964616420792064696C696765
            6E6369613B20795C7061720D0A0D0A5C706172647B5C2A5C706E5C706E6C766C
            636F6E745C706E66305C706E696E64656E74305C706E7374617274315C706E64
            65637B5C706E747874612E7D7D0D0A5C6E6F77696463746C7061725C68797068
            706172305C66692D3432365C6C693432365C716A5C7061720D0A0D0A5C706172
            645C6E6F77696463746C7061725C68797068706172305C66692D3432365C6C69
            3432365C716A20422E5C7461622044656265725C27653120636F727265676972
            206C617320616E6F6D616C5C27656461732064656C20736572766963696F2071
            7565206C65207365616E207265706F72746164617320706F7220656C205C6220
            507265737461746172696F5C6230202C2064656E74726F206465206C61732034
            38202863756172656E74612079206F63686F2920686F72617320736967756965
            6E74657320616C207265706F72746520717565207365206861676120706F7220
            6573637269746F2E5C7061720D0A5C7061720D0A5C7061720D0A0D0A5C706172
            645C6E6F77696463746C7061725C68797068706172305C716A5C622044657265
            63686F732064656C20507265737461646F725C7061720D0A5C756C5C7061720D
            0A5C756C6E6F6E655C746162205175696E74612E5C62302020456C205C622050
            7265737461646F72205C62302074656E64725C276531206C6F73207369677569
            656E746573206465726563686F733A5C7061720D0A5C7061720D0A0D0A5C7061
            7264200D0A7B5C706E746578745C663020412E5C7461627D7B5C2A5C706E5C70
            6E6C766C626F64795C706E66305C706E696E64656E743336305C706E73746172
            74315C706E75636C74727B5C706E747874612E7D7D0D0A5C6E6F77696463746C
            7061725C68797068706172305C66692D3432365C6C693432365C716A5C747832
            353536205265636962697220656C207061676F206F706F7274756E6F20646520
            6C6120636F6E74726170726573746163695C2766336E20612071756520736520
            68616365207265666572656E63696120656E206C6120636C5C2765317573756C
            61205C6220536567756E64615C6230202064656C2070726573656E746520636F
            6E747261746F20706F722070617274652064656C205C62205072657374617461
            72696F5C6230202C206D656469616E746520656C206C696272616D69656E746F
            207920656E747265676120646520636865717565206E6F6D696E617469766F2C
            20656C206375616C20726563696269725C2765312073616C766F206275656E20
            636F62726F2C206F20656E207375206361736F206D656469616E74652061626F
            6E6F206F207472616E73666572656E63696120656C656374725C2766336E6963
            6120656E206C61206375656E74612071756520616C2065666563746F20696E64
            6971756520656C205C6220507265737461646F722E5C7061720D0A0D0A5C7061
            72647B5C2A5C706E5C706E6C766C636F6E745C706E66305C706E696E64656E74
            3239345C706E7374617274315C706E6465637B5C706E747874612E7D7D0D0A5C
            6E6F77696463746C7061725C68797068706172305C6C693432365C716A5C6230
            5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C687970687061
            72305C66692D3432365C6C693432365C716A5C74783235353620422E5C746162
            204120717565207365206C6520696E666F726D65206D656469616E7465206573
            637269746F2064656E74726F2064656C20706C617A6F20646520343820286375
            6172656E74612079206F63686F2920686F726173207369677569656E74657320
            726573706563746F206465206375616C717569657220616E6F6D616C5C276564
            61207175652073652070726573656E74652C20706F7220656C20736572766963
            696F20707265737461646F2E5C7061720D0A0D0A5C706172645C6E6F77696463
            746C7061725C68797068706172305C716A5C625C7061720D0A5C7061720D0A4F
            626C69676163696F6E65732064656C20507265737461746172696F5C7061720D
            0A5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C6879706870
            6172305C66693730385C716A2053657874612E205C623020456C5C6220205072
            65737461746172696F205C62302074656E64725C276531206C61732073696775
            69656E746573206F626C69676163696F6E65733A5C7061720D0A0D0A5C706172
            645C6E6F77696463746C7061725C68797068706172305C716A5C7061720D0A0D
            0A5C70617264200D0A7B5C706E746578745C663020412E5C7461627D7B5C2A5C
            706E5C706E6C766C626F64795C706E66305C706E696E64656E743336305C706E
            7374617274315C706E75636C74727B5C706E747874612E7D7D0D0A5C6E6F7769
            6463746C7061725C68797068706172305C66692D3336305C6C693432365C716A
            5C747832353536205061676172206F706F7274756E616D656E7465206C612063
            6F6E74726170726573746163695C2766336E2061207175652073652068616365
            207265666572656E63696120656E206C6120636C5C2765317573756C61205365
            67756E64612064656C2070726573656E746520636F6E747261746F3B20795C70
            61720D0A0D0A5C706172647B5C2A5C706E5C706E6C766C636F6E745C706E6630
            5C706E696E64656E743239345C706E7374617274315C706E6465637B5C706E74
            7874612E7D7D0D0A5C6E6F77696463746C7061725C68797068706172305C6C69
            3432365C716A5C7478323535365C7061720D0A0D0A5C706172645C6E6F776964
            63746C7061725C68797068706172305C66692D3336305C6C693432365C716A5C
            74783235353620422E5C74616220536520636F6D70726F6D657465206120696E
            666F726D617220616C205C6220507265737461646F72205C62302064656E7472
            6F206465206C6173203438202863756172656E74612079206F63686F2920686F
            726173207369677569656E746573207920706F72206573637269746F2C206465
            206C617320616E6F6D616C5C27656461732064656C20736572766963696F2071
            7565206465746563746520612066696E2064652071756520646963686F205C62
            20507265737461646F725C6230202070726F63656461206120737520636F7272
            656363695C2766336E2064656E74726F2064656C20706C617A6F206D656E6369
            6F6E61646F20656E206C6120636C5C2765317573756C6120746572636572612C
            20617061727461646F20422C2064656C2070726573656E746520696E73747275
            6D656E746F2E5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C
            68797068706172305C716A5C756C5C625C7061720D0A5C756C6E6F6E65204465
            726563686F732064656C20507265737461746172696F5C7061720D0A5C706172
            0D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C66
            693730385C716A20535C2765397074696D612E5C62302020456C205C62205072
            65737461746172696F205C62302074656E64725C276531206C6F732073696775
            69656E746573206465726563686F733A5C7061720D0A0D0A5C706172645C6E6F
            77696463746C7061725C68797068706172305C716A5C7061720D0A0D0A5C7061
            7264200D0A7B5C706E746578745C663020412E5C7461627D7B5C2A5C706E5C70
            6E6C766C626F64795C706E66305C706E696E64656E743336305C706E73746172
            74315C706E75636C74727B5C706E747874612E7D7D0D0A5C6E6F77696463746C
            7061725C68797068706172305C66692D3432365C6C693432365C716A20412072
            656369626972206C6F7320736572766963696F73206F626A65746F2064656C20
            70726573656E746520636F6E747261746F2C20636F6E206C6120646562696461
            2064696C6967656E6369612C20686F6E726164657A2C2070726F6E7469747564
            20792070726F666573696F6E616C69736D6F20656E20656C20646573656D7065
            5C2766316F206465206C6F73206D69736D6F733B20795C7061720D0A0D0A5C70
            6172647B5C2A5C706E5C706E6C766C636F6E745C706E66305C706E696E64656E
            74305C706E7374617274315C706E6465637B5C706E747874612E7D7D0D0A5C6E
            6F77696463746C7061725C68797068706172305C66692D3432365C6C69343236
            5C716A5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C687970
            68706172305C66692D3432365C6C693432365C716A20422E5C74616220412071
            7565206375616C717569657220616E6F6D616C5C2765646120717565206C6C65
            6761726520612070726573656E746172736520636F6E206D6F7469766F206465
            206C612070726573746163695C2766336E206465206C6F732073657276696369
            6F732C20736561206174656E6469646120706F7220656C205C62205072657374
            61646F722E5C62305C7061720D0A0D0A5C706172645C6E6F77696463746C7061
            725C68797068706172305C716A5C7061720D0A5C7061720D0A5C62204E617475
            72616C657A612064656C20436F6E747261746F5C7061720D0A5C62305C706172
            0D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C66
            693730385C716A5C62204F63746176612E205C62302044616461206C61206E61
            747572616C657A612064656C2070726573656E746520636F6E747261746F2C20
            6C6173205C62205061727465735C62302020736162656E207920616365707461
            6E20717565206E6F206578697374652072656C6163695C2766336E206C61626F
            72616C20656E74726520656C6C61732E205C7061720D0A5C7061720D0A5C7061
            720D0A0D0A5C706172645C6366315C6B65726E696E67305C66315C667331365C
            7061720D0A7D0D0A00}
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader4: TfrxPageHeader
        FillType = ftBrush
        Height = 910.866730000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich5: TfrxRichView
          Align = baCenter
          Left = 31.937028500000000000
          Top = 11.338590000000000000
          Width = 676.535870000000000000
          Height = 891.969080000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302043656E74757279
            205363686F6F6C626F6F6B3B7D7B5C66315C666E696C5C666368617273657430
            205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C6772
            65656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368
            656432302031302E302E31373133347D5C766965776B696E64345C756331200D
            0A5C706172645C6E6F77696463746C7061725C68797068706172305C716A5C6B
            65726E696E67315C625C66305C66733232205465726D696E6163695C2766336E
            2064656C20436F6E747261746F5C7061720D0A5C7061720D0A0D0A5C70617264
            5C6E6F77696463746C7061725C68797068706172305C66693730385C716A204E
            6F76656E612E205C623020456E206361736F2064652071756520656C205C6220
            507265737461746172696F5C62302020706F7220616C67756E612072617A5C27
            66336E20646563696461207072657363696E64697220656E207061727465206F
            206465206C6120746F74616C69646164206465206C6F7320736572766963696F
            73206F626A65746F2064656C2070726573656E746520636F6E747261746F2C20
            64656265725C276531206E6F746966696361722074616C2063697263756E7374
            616E63696120636F6E20313020286469657A2920645C2765646173206E617475
            72616C657320646520616E74656C6163695C2766336E20706F72206573637269
            746F20616C205C6220507265737461646F723B205C6230206465206E6F206861
            6365726C6F2064656E74726F2064656C20706C617A6F206D656E63696F6E6164
            6F2C205C276539737465206E6F207365725C27653120726573706F6E7361626C
            65206465206C617320636F6E73656375656E6369617320717565206573746F20
            6F636173696F6E652E5C7061720D0A0D0A5C706172645C6E6F77696463746C70
            61725C68797068706172305C716A5C7061720D0A5C7061720D0A5C6220526573
            636973695C2766336E2064656C20436F6E747261746F5C7061720D0A5C706172
            0D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C66
            693730385C716A20445C27653963696D612E5C623020205365725C2765316E20
            63617573617320646520726573636973695C2766336E2064656C207072657365
            6E746520636F6E747261746F3A5C7061720D0A0D0A5C706172645C6E6F776964
            63746C7061725C68797068706172305C716A5C7061720D0A0D0A5C7061726420
            0D0A7B5C706E746578745C663020412E5C7461627D7B5C2A5C706E5C706E6C76
            6C626F64795C706E66305C706E696E64656E743336305C706E7374617274315C
            706E75636C74727B5C706E747874612E7D7D0D0A5C6E6F77696463746C706172
            5C68797068706172305C66692D3432365C6C693432365C716A204E6F20636F72
            72656769722064656E74726F206465206C6F73203438202863756172656E7461
            2079206F63686F2920686F726173207369677569656E7465732061206C612066
            656368612064656C207265706F72746520612071756520736520726566696572
            65206C6120636C5C2765317573756C61205C62205175696E74615C6230202069
            6E6369736F2042292C206C617320616E6F6D616C5C2765646173206465746563
            746164617320656E206C612070726573746163695C2766336E2064656C207365
            72766963696F3B5C7061720D0A0D0A5C706172647B5C2A5C706E5C706E6C766C
            636F6E745C706E66305C706E696E64656E74305C706E7374617274315C706E64
            65637B5C706E747874612E7D7D0D0A5C6E6F77696463746C7061725C68797068
            706172305C66692D3432365C6C693432365C716A5C7061720D0A0D0A5C706172
            645C6E6F77696463746C7061725C68797068706172305C66692D3432365C6C69
            3432365C716A20422E5C74616220456C20696E63756D706C696D69656E746F20
            64656C207061676F20646520636F6E74726170726573746163695C2766336E20
            707265766973746120656E206C6120636C5C2765317573756C61205C62205365
            67756E64615C6230202064656C2070726573656E746520636F6E747261746F2E
            5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C687970687061
            72305C716A5C625C7061720D0A5C756C5C7061720D0A5C756C6E6F6E6520446F
            6D6963696C696F73205C7061720D0A5C62305C7061720D0A0D0A5C706172645C
            6E6F77696463746C7061725C68797068706172305C66693730385C716A5C6220
            445C27653963696D6F207072696D6572612E205C6230204C6173205C6C64626C
            71756F74655C62205061727465735C62305C7264626C71756F74652020657374
            61626C6563656E20636F6D6F20646F6D6963696C696F2070617261206F5C2765
            64722079207265636962697220746F646F207469706F206465206E6F74696669
            636163696F6E65732072656C6163696F6E6164617320636F6E20656C20707265
            73656E746520636F6E747261746F2C206C6F73207369677569656E7465733A5C
            7061720D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172
            305C716A5C7061720D0A5C6220507265737461746172696F3A5C623020205C6B
            65726E696E6730204156454E49444120432C204E5C2764614D45524F20455854
            4552494F52203832352C20494E544552494F5220352C20434F4C4F4E49412053
            454154544C452C205A41504F50414E2C204A414C4953434F2C20432E502E2034
            353131305C6B65726E696E6731202E5C7061720D0A5C6220507265737461646F
            723A205C6230205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2E5C7061720D0A5C706172
            0D0A546F646173206C6173206E6F74696669636163696F6E6573206465626572
            5C2765316E207365722068656368617320706F72206573637269746F20792065
            6E20656C20646F6D6963696C696F206465206C6173205C62205061727465735C
            6230202E5C7061720D0A5C7061720D0A5C7061720D0A5C6220566967656E6369
            615C7061720D0A5C7061720D0A0D0A5C706172645C6E6F77696463746C706172
            5C68797068706172305C66693730385C716A20445C27653963696D6F20736567
            756E64612E5C62302020456C2070726573656E746520636F6E747261746F2073
            652063656C6562726120706F72207469656D706F20696E646566696E69646F2C
            2073696E20656D626172676F20706F64725C27653120646172736520706F7220
            7465726D696E61646F20706F72206375616C717569657261206465206C617320
            5C62205061727465735C6230202C2070726576696F20617669736F20656E2074
            5C276539726D696E6F73206465206C6120636C5C2765317573756C6120696E6D
            65646961746120616E746572696F722C20636F6E20756E6120616E7469636970
            6163695C2766336E20646520313020286469657A2920645C2765646173206E61
            747572616C65732E5C7061720D0A0D0A5C706172645C6E6F77696463746C7061
            725C68797068706172305C716A5C7061720D0A5C7061720D0A5C62204D6F6469
            6669636163696F6E65735C7061720D0A5C62305C7061720D0A0D0A5C70617264
            5C6E6F77696463746C7061725C68797068706172305C66693730385C716A5C62
            20445C27653963696D6F20746572636572615C6230202E20456C207072657365
            6E746520636F6E747261746F20706F64725C2765312073657220726576697361
            646F20656E206375616C7175696572206D6F6D656E746F20612065666563746F
            206465206D6F6469666963617220737520636F6E74656E69646F206174656E64
            69656E646F2061206C6173206E65636573696461646573206465206C6173205C
            62205061727465735C62302020792061206C6F732063616D62696F732065636F
            6E5C2766336D69636F732C2074616C657320636F6D6F20696E666C6163695C27
            66336E2C206465666C6163695C2766336E2C20646576616C756163695C276633
            6E2C20656E747265206F74726F732E204375616C7175696572206D6F64696669
            636163695C2766336E2064656265725C27653120646520706C61736D61727365
            20706F72206573637269746F207920736572206669726D61646120706F72206C
            6173205C62205061727465735C6230202E205C7061720D0A5C7061720D0A5C70
            61720D0A0D0A5C706172645C6E6F77696463746C7061725C6879706870617230
            5C716A5C6220545C27656474756C6F732064656C20636C617573756C61646F5C
            7061720D0A5C756C5C7061720D0A0D0A5C706172645C756C6E6F6E6520445C27
            653963696D6F206375617274612E205C6230204C6173205C6220506172746573
            5C62302020616375657264616E20717565206C6F7320745C27656474756C6F73
            206465206C617320636C5C2765317573756C61732071756520696E7465677261
            6E20656C205C6366315C6B65726E696E67305C66315C667331365C7061720D0A
            7D0D0A00}
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader5: TfrxPageHeader
        FillType = ftBrush
        Height = 910.866730000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich6: TfrxRichView
          Align = baCenter
          Left = 31.937028500000000000
          Top = 11.338590000000000000
          Width = 676.535870000000000000
          Height = 891.969080000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302043656E74757279
            205363686F6F6C626F6F6B3B7D7B5C66315C666E696C5C666368617273657430
            205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C6772
            65656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368
            656432302031302E302E31373133347D5C766965776B696E64345C756331200D
            0A5C706172645C6E6F77696463746C7061725C68797068706172305C66693730
            385C716A5C6B65726E696E67315C66305C667332322070726573656E74652063
            6F6E747261746F2073652065737461626C6563656E205C2766616E6963616D65
            6E746520636F6E20656C206F626A657469766F2064652061636C617261722079
            20666163696C69746172206C61206C6563747572612064656C206D69736D6F2C
            2073696E207175652070756564616E20746F6D61727365206F20696E74657270
            7265746172736520636F6D6F20636F6D70726F6D69736F73206469766572736F
            73206F2061646963696F6E616C65732061206C6F207061637461646F20656E20
            6361646120756E612064652064696368617320636C5C2765317573756C61732E
            205C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C6879706870
            6172305C716A5C756C5C625C7061720D0A5C756C6E6F6E655C7061720D0A4A75
            72697364696363695C2766336E5C7061720D0A5C62305C7061720D0A5C625C74
            616220445C27653963696D6F207175696E74612E205C6230204C6173205C6220
            5061727465735C62302020736520736F6D6574656E20657870726573616D656E
            746520616E7465206C6120636F6D706574656E636961206465206C6F73205472
            6962756E616C657320436976696C6573206465206C6120436975646164206465
            204D5C2765397869636F2C207061726120656C206361736F206465206375616C
            717569657220636F6E74726F766572736961206F20696E746572707265746163
            695C2766336E2064656C2070726573656E746520636F6E747261746F2C207265
            6E756E6369616E646F20657870726573616D656E74652061206C61206A757269
            7364696363695C2766336E206F20636F6D706574656E63696120717565207075
            646965726120636F72726573706F6E6465726C657320656E207669727475642C
            20646520737520646F6D6963696C696F2061637475616C206F2066757475726F
            206F206375616C71756965722063617573612067656E657261646F7261206465
            20636F6D706574656E6369612E205C7061720D0A5C7061720D0A4C655C276564
            646F20656E20737520746F74616C6964616420656C2070726573656E74652063
            6F6E747261746F2079206269656E20656E746572616461732064652073752063
            6F6E74656E69646F207920616C63616E636573206C6567616C6573206C617320
            5C62205061727465735C6230202C206C6F206669726D616E20656E206C612043
            6975646164206465204D5C2765397869636F2C20616C20645C2765646120205F
            5F5F5F5F5F5F5F2064656C206D657320646520205F5F5F5F5F5F5F5F5F64656C
            20615C2766316F20646F73206D696C205F5F5F5F5F5F5F5F5F5F5F5F5F5F2C20
            616C206D617267656E20792063616C63652070617261206D656A6F7220636F6E
            7374616E6369612E5C7061720D0A5C7061720D0A5C74726F77645C7472676170
            6831305C7472706164646C31305C7472706164647231305C747270616464666C
            335C7472706164646672330D0A5C63656C6C7839333930200D0A5C706172645C
            696E74626C5C6E6F77696463746C7061725C68797068706172305C71635C625C
            7061720D0A5C7061720D0A5C7061720D0A0D0A5C706172645C696E74626C5C6E
            6F77696463746C7061725C68797068706172305C74783433355C7061720D0A0D
            0A5C706172645C696E74626C5C6E6F77696463746C7061725C68797068706172
            305C71635C7061720D0A202020205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A50524553544144
            4F523A5C7061720D0A0D0A5C706172645C696E74626C5C6E6F77696463746C70
            61725C68797068706172305C6C693435395C7163205F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2E5C63656C6C5C726F77200D0A
            5C706172645C6E6F77696463746C7061725C68797068706172305C62305C7061
            720D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C
            71635C7061720D0A5C7061720D0A5C625C7061720D0A5C7061720D0A0D0A5C70
            6172645C6E6F77696463746C7061725C68797068706172305C7061720D0A0D0A
            5C706172645C6E6F77696463746C7061725C68797068706172305C7163205F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C687970
            68706172305C6C6933345C716320505245535441544152494F5C7061720D0A45
            52414E44454D492053415241492047414C4943494120584F4C414C50412E5C70
            61720D0A0D0A5C706172645C6E6F77696463746C7061725C6879706870617230
            5C71632041504F444552414441204C4547414C2044455C7061720D0A0D0A5C70
            6172645C6E6F77696463746C7061725C68797068706172305C71635C74783433
            35325C6C64626C71756F746520434F422045534F4C4C4F525C7264626C71756F
            7465202C20532E412E20646520432E562E5C62305C7061720D0A0D0A5C706172
            645C77696463746C7061725C73613230305C736C3237365C736C6D756C74315C
            6B65726E696E67305C7061720D0A0D0A5C706172645C6366315C66315C667331
            365C7061720D0A7D0D0A00}
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader6: TfrxPageHeader
        FillType = ftBrush
        Height = 910.866730000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich7: TfrxRichView
          Align = baCenter
          Left = 67.842563500000000000
          Top = 30.236240000000000000
          Width = 604.724800000000000000
          Height = 816.378480000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743020417269616C3B7D
            7B5C66315C6673776973735C66707271325C6663686172736574302041726961
            6C204E6172726F773B7D7B5C66325C666E696C5C666368617273657430205461
            686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E
            305C626C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368656432
            302031302E302E31373133347D5C766965776B696E64345C756331200D0A5C70
            6172645C77696463746C7061725C73613230305C736C3237365C736C6D756C74
            315C716A5C625C66305C6673323020414E45584F20554E4F2044454C20434F4E
            545241544F2044452050524553544143495C2764334E20444520534552564943
            494F5320504552534F4E414C455320494E444550454E4449454E544553204345
            4C45425241444F20434F4E204645434841205F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5C7061720D0A554E49434F2E2D205C623020446520636F6E666F726D69
            64616420636F6E206C6F2064697370756573746F20656E206C615C622020434C
            415553554C4120534547554E44415C62302064656C20636F6E747261746F2C20
            5C625C6C64626C71756F746520454C20505245535441544152494F5C7264626C
            71756F746520205C6230206C652070616761725C27653120756E612069677561
            6C6120616C205C625C6C64626C71756F746520454C20505245535441444F525C
            7264626C71756F74655C623020706F72206C612063616E7469646164206E6574
            61206465205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F63616461206361746F7263656E612C206573746F206573
            2C20706F73746572696F722061206C6120726574656E63695C2766336E206465
            20696D70756573746F7320726573706563746976612E205C7061720D0A456C20
            736572766963696F207365725C27653120707265737461646F20647572616E74
            65206361746F72636520645C27656461732C20706F73746572696F726D656E74
            6520686162725C27653120756E20696E74657276616C6F20706F7220656C206D
            69736D6F206E5C2766616D65726F20646520645C276564617320646F6E64655C
            6220205C6C64626C71756F746520454C20505245535441444F525C7264626C71
            756F746520205C6230206E6F20636F6C61626F7261725C27653120636F6E205C
            625C6C64626C71756F746520454C20505245535441544152494F5C7264626C71
            756F7465202E205C7061720D0A5C6C64626C71756F746520454C205052455354
            41544152494F5C7264626C71756F746520205C6230207365206F626C69676120
            612070616761722061205C625C6C64626C71756F746520454C20505245535441
            444F525C7264626C71756F746520205C623020676173746F7320646520747261
            6E73706F727465207920686F73706564616A65206375616E646F20736F6C6963
            6974652073757320736572766963696F732079206375616E646F206C6F732066
            696E616C6963652E205C7061720D0A456E20656C20737570756573746F207175
            65205C625C6C64626C71756F746520454C20505245535441444F525C7264626C
            71756F746520205C6230206E6F20707565646120646573656D62617263617220
            7061726120696E696369617220656C20696E74657276616C6F20646573637269
            746F20656E20705C276531727261666F20696E6D65646961746F20616E746572
            696F722C205C625C6C64626C71756F746520454C20505245535441544152494F
            5C7264626C71756F74655C623020207365206F626C6967612061207061676172
            20617175656C6C6F7320645C2765646173207472616E736375727269646F7320
            686173746120656C20646573656D626172636F2E205C7061720D0A4173696D69
            736D6F205C625C6C64626C71756F746520454C20505245535441544152494F5C
            7264626C71756F746520205C6230207365206F626C6967612061207061676172
            2061205C625C6C64626C71756F746520454C20505245535441444F525C726462
            6C71756F746520205C623020676173746F7320646520686F73706564616A6520
            6375616E646F205C276539737465206E6F2070756564612061626F7264617220
            6C6120656D626172636163695C2766336E205C2766616E6963616D656E746520
            656E206361736F7320666F72747569746F73206F20667565727A61206D61796F
            722E20456E206573746520737570756573746F207365206C652070616761725C
            27653120206361646120645C27656461207472616E736375727269646F206861
            73746120656C20656D6261727175652E205C7061720D0A412066696E616C2064
            656C20615C2766316F2C205C625C6C64626C71756F746520454C205052455354
            41544152494F5C7264626C71756F74655C623020206C65206F746F726761725C
            2765312061205C625C6C64626C71756F746520454C20505245535441444F525C
            7264626C71756F74655C623020756E207061676F2065787472616F7264696E61
            72696F20706F7220737520636F6D70726F6D69736F2079206C65616C7461642C
            206571756976616C656E74652061206C61206D69736D612063616E7469646164
            20717565207065726369626520636F6D6F20696775616C206120636164612063
            61746F7263656E612E205C7061720D0A4C4549444F205920454E54455241444F
            532044454C2050524553454E544520414E45584F20414C20434F4E545241544F
            2020504F5220515549454E455320454E20454C2020494E5445525649454E454E
            204C4F202052415449464943414E204649524D414E444F20414C2043414C4345
            205920414C204D415247454E205041524120434F4E5354414E434941204C4547
            414C20444520535520434F4E54454E49444F2C205355534352494249454E444F
            4C4F20454E204D455849434F2C20414C20444941205F5F2044454C204D455320
            5F5F5F5F5F5F5F5F5F5F5F2044454C20415C2764314F205F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C
            68797068706172305C71635C7061720D0A0D0A5C706172645C6E6F7769646374
            6C7061725C68797068706172305C746162202020205C6366315C6B65726E696E
            67315C625C663120454C20505245535441544152494F3A5C7461625C7461625C
            7461625C7461625C74616220202020202020454C20505245535441444F523A5C
            7061720D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172
            305C71635C7061720D0A5C7061720D0A0D0A5C706172645C6E6F77696463746C
            7061725C68797068706172305C7061720D0A5C7061720D0A5C7061720D0A5C70
            61720D0A5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5C7461622020202020205F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7461625C7061720D0A45
            52414E44454D492053415241492047414C4943494120584F4C414C50412E5C74
            61625C7461622020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020205C7461622041504F44
            4552414441204C4547414C2044455C7061720D0A0D0A5C706172645C77696463
            746C7061725C73613230305C736C3237365C736C6D756C74315C716A20202020
            202020202020205C6C64626C71756F746520434F422045534F4C4C4F525C7264
            626C71756F7465202C20532E412E20444520432E562E205C6366305C6B65726E
            696E67305C62305C66305C7061720D0A0D0A5C706172645C6366315C66325C66
            7331365C7061720D0A7D0D0A00}
        end
      end
    end
    object Page7: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader7: TfrxPageHeader
        FillType = ftBrush
        Height = 850.394250000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich8: TfrxRichView
          Align = baCenter
          Left = 69.732328500000000000
          Top = 60.472480000000000000
          Width = 600.945270000000000000
          Height = 748.346940000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302043656E74757279
            205363686F6F6C626F6F6B3B7D7B5C66315C666E696C5C666368617273657430
            205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C726564305C6772
            65656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368
            656432302031302E302E31373133347D5C766965776B696E64345C756331200D
            0A5C706172645C6E6F77696463746C7061725C68797068706172305C71725C6B
            65726E696E67315C625C66305C6673323220434955444144204445204D5C2763
            395849434F2C2041205F5F5F5F20444520205F5F5F5F5F5F4445205F5F5F5F2E
            5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C687970687061
            72305C736C3336305C736C6D756C74315C62305C7061720D0A5C7061720D0A5C
            7061720D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172
            305C7061720D0A5C62204552414E44454D492053415241492047414C49434941
            20584F4C414C50412E5C7061720D0A41504F444552414441204C4547414C2044
            455C623020205C7061720D0A5C6220434F422045534F4C4C4F522C20532E4120
            2E444520432E562E5C623020205C7061720D0A5C622050205220452053204520
            4E205420452E5C7061720D0A5C62305C7061720D0A5C7061720D0A5C7061720D
            0A5C7061720D0A5C7061720D0A0D0A5C706172645C6E6F77696463746C706172
            5C68797068706172305C66693730385C736C3336305C736C6D756C74315C716A
            20506F722065737465206D6564696F2C20636F6D756E69636F20717565206465
            20636F6E666F726D6964616420636F6E206C6F2065737461626C656369646F20
            706F72206C61206672616363695C2766336E20562C2064656C206172745C2765
            6463756C6F203934206465206C61204C65792064656C20496D70756573746F20
            536F627265206C612052656E74612C20717565206C6F7320696E677265736F73
            20717565207065726369626F206465206C6120656D70726573615C622020434F
            422045534F4C4C4F522C20532E412E20444520432E562E5C6230202C20706F72
            20636F6E636570746F206465206C612070726573746163695C2766336E206465
            20736572766963696F7320706572736F6E616C657320696E646570656E646965
            6E7465732C206D616E6966696573746F206D6920636F6E666F726D6964616420
            71756520616C206D6F6D656E746F206465206566656374756172736520656C20
            7061676F206465206D697320686F6E6F726172696F732C207365612061706C69
            63616461206C6120726574656E63695C2766336E2064656C20496D7075657374
            6F20536F627265206C612052656E7461205C622028495352295C62302020636F
            6E20656C2074726174616D69656E746F20646520696E677265736F7320617369
            6D696C61626C657320612073616C6172696F732E5C7061720D0A5C7061720D0A
            506F72206C6F20616E746572696F722C20616C20726563696269722065737465
            2074726174616D69656E746F20646520696E677265736F73206173696D696C61
            626C657320612073616C6172696F732C20656C20737573637269746F20717565
            6461206578696D69646F206465206C61206F626C69676163695C2766336E2064
            6520656D6974697220636F6D70726F62616E7465732066697363616C65732079
            2064656C20747261736C61646F2064656C20496D70756573746F20616C205661
            6C6F7220416772656761646F205C622028495641295C6230202E5C7061720D0A
            0D0A5C706172645C6E6F77696463746C7061725C68797068706172305C666937
            30385C716A5C7061720D0A5C7061720D0A53696E206D5C2765317320706F7220
            656C206D6F6D656E746F20717565645C276633206120737573205C2766337264
            656E65732E5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C68
            797068706172305C7061720D0A5C7061720D0A5C7061720D0A5C7061720D0A5C
            7061720D0A0D0A5C706172645C6E6F77696463746C7061725C68797068706172
            305C71635C62205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F2E5C62305C7061720D0A0D0A5C706172645C6E6F77696463746C
            7061725C68797068706172305C7061720D0A5C7061720D0A0D0A5C706172645C
            6366315C6B65726E696E67305C66315C667331365C7061720D0A7D0D0A00}
        end
      end
    end
    object Page8: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
end
