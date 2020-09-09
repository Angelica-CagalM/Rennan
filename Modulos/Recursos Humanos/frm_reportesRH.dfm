object frmReportesRH: TfrmReportesRH
  Left = 353
  Top = 73
  HorzScrollBar.Color = clBtnFace
  HorzScrollBar.ParentColor = False
  VertScrollBar.Color = clBtnFace
  VertScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informaci'#243'n a Reportar'
  ClientHeight = 499
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelPrincipal: TPanel
    Left = 161
    Top = 0
    Width = 900
    Height = 499
    Align = alClient
    TabOrder = 0
    object PanelTop: TPanel
      Left = 1
      Top = 1
      Width = 898
      Height = 43
      Align = alTop
      TabOrder = 0
      object cxLeyenda: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        Caption = 'Tabla...Agregando Datos'
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
    object PanelBottom: TPanel
      Left = 1
      Top = 464
      Width = 898
      Height = 34
      Align = alBottom
      TabOrder = 1
      inline frmBarraH21: TfrmBarraH2
        Left = 717
        Top = 1
        Width = 180
        Height = 32
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 717
        ExplicitTop = 1
        inherited Panel1: TPanel
          ExplicitHeight = 32
        end
      end
    end
    object PanelCentral: TPanel
      Left = 1
      Top = 44
      Width = 898
      Height = 420
      Align = alClient
      TabOrder = 2
      object PanelDatos: TPanel
        Left = 1
        Top = 1
        Width = 896
        Height = 56
        Align = alTop
        TabOrder = 0
        object dxLayoutControl1: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 894
          Height = 54
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxFecha: TcxDBDateEdit
            Left = 50
            Top = 10
            ParentFont = False
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
          object cxEmpresa: TcxDBTextEdit
            Left = 234
            Top = 10
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
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
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Fecha:'
            Control = cxFecha
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Empresa:'
            Control = cxEmpresa
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxGridEmpleados: TcxGrid
        Left = 1
        Top = 57
        Width = 896
        Height = 362
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGridEmpleadosDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_empleados
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          object cxGridEmpleadosColumn5: TcxGridDBColumn
            Caption = 'Agregar'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.AllowGrayed = True
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'False'
            Properties.ReadOnly = False
            Properties.ValueGrayed = 'False'
            Width = 97
          end
          object cxGridEmpleadosColumn0: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoPersonal'
            Width = 140
          end
          object cxGridEmpleadosColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 181
          end
          object cxGridEmpleadosColumn2: TcxGridDBColumn
            Caption = 'A. Paterno'
            DataBinding.FieldName = 'APaterno'
            Width = 184
          end
          object cxGridEmpleadosColumn3: TcxGridDBColumn
            Caption = 'A. Materno'
            DataBinding.FieldName = 'AMaterno'
            Width = 148
          end
          object cxGridEmpleadosColumn4: TcxGridDBColumn
            Caption = 'CURP'
            DataBinding.FieldName = 'curp'
            Width = 144
          end
        end
        object cxGridEmpleadosLevel1: TcxGridLevel
          GridView = cxGridEmpleadosDBTableView1
        end
      end
    end
  end
  object PanelOpc: TPanel
    Left = 0
    Top = 0
    Width = 161
    Height = 499
    Align = alLeft
    TabOrder = 1
    object dxOpciones: TdxNavBar
      Left = 1
      Top = 1
      Width = 159
      Height = 497
      Align = alClient
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 17
      ViewStyle.ColorSchemeName = 'Blue'
      OptionsImage.LargeImages = connection.cxIconos16
      OptionsImage.SmallImages = connection.cxIconos16
      object dxReportes: TdxNavBarGroup
        Caption = 'Reportes'
        LargeImageIndex = 9
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        SmallImageIndex = 9
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxCartaResponsiva
          end
          item
            Item = dxOpcionesSeparator1
          end>
      end
      object dxCartaResponsiva: TdxNavBarItem
        Caption = 'Carta Responsiva'
        Hint = 'Carta Responsiva'
        LargeImageIndex = 13
        SmallImageIndex = 13
      end
      object dxOpcionesSeparator1: TdxNavBarSeparator
        Caption = 'dxOpcionesSeparator1'
      end
    end
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 649
    object N2: TMenuItem
      Caption = '-'
    end
    object Refresh1: TMenuItem
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
  object frxReport1: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43162.445445694400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Begin'
      ''
      'End.')
    OnReportPrint = 'no '
    Left = 587
    Top = 65535
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
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
    object ConcentradoEmpleados: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Color = 8210719
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 476.220780000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Width = 264.566929130000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Berlin Sans FB'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 264.566929130000000000
          Width = 132.283464570000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Berlin Sans FB'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CATEGORIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 396.850393700000000000
          Width = 154.960629920000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Berlin Sans FB'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IMSS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 551.811023620000000000
          Width = 188.976377950000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Berlin Sans FB'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CURP')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.015770000000010000
        Top = 525.354670000000100000
        Width = 740.409927000000000000
        RowCount = 0
        object Memo27: TfrxMemoView
          Top = 3.779530000000022000
          Width = 264.566929130000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000136000
          Width = 132.283379130000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 396.850650000000000000
          Top = 3.779530000000136000
          Width = 154.960559130000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779530000000136000
          Width = 188.976329130000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 58.367965460000000000
        Top = 990.236860000000000000
        Width = 740.409927000000000000
        object Memo62: TfrxMemoView
          Align = baCenter
          Left = 45.354599090000020000
          Width = 649.700728820000000000
          Height = 58.367965460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8210719
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            
              'SERVICIOS SIANI, S.A. DE C.V.  CALLE PRIVADA BALLENA No. 4 K.M. ' +
              '9.5 CARRETERA CARMEN-PUERTO'
            
              'REAL FRACCIONAMIENTO HACIENDA DEL MAR, CD. DEL CARMEN, CAMP.    ' +
              '     C.P. 24157   TEL. (01 938) '
            
              '1186211 '#8211' 01 800 00 SIANI  www.siani.com.mx E-MAIL: corporativo@' +
              'siani.com.mx ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 28.456710000000000000
          Top = 59.472480000000000000
          Width = 675.490404790000000000
          Height = 37.795285350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 8210719
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 11.338590000000000000
          Width = 151.181102360000000000
          Height = 86.929153390000000000
          DataField = 'logotipo'
          DataSet = frmDiarioTurno2.dsConfiguracion
          DataSetName = 'dsConfiguracion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo45: TfrxMemoView
          Left = 173.078679130000000000
          Top = 40.952711970000000000
          Width = 430.458351560000000000
          Height = 41.574820240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8210719
          Font.Height = -35
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SERVICIOS SIANI, S.A. DE C.V.')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 268.346630000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Top = 80.200370909999970000
          Width = 738.189240010000000000
          Height = 137.634980810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'ASUNTO: CARTA RESPONSIVA'
            ''
            
              'El que suscribe, Lic. Elizabeth Ramirez '#193'lvarez en caracter de R' +
              'epresentante Legal de la empresa SERVICIOS SIANI, S.A. DE C.V. s' +
              'ede en Cd. del Carmen, Campeche.'
            ''
            
              'Por medio de la Presente expresamos que mi representada ASUME CU' +
              'ALQUIER RESPONSABILIDAD CIVIL O LABORAL o de cualquier otro tipo' +
              ' de acci'#243'n que pudiese reclamar los trabajadores de SERVICIOS SI' +
              'ANI, S.A. DE C.V. Deslindando de responsabilidad alguna a la emp' +
              'resa ')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 786.363636370000000000
          Top = 4.609770910000009000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 827.272727270000000000
          Top = 4.609770910000009000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 868.181818180000000000
          Top = 4.609770910000009000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 909.090909090000000000
          Top = 4.609770910000009000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 950.000000000000000000
          Top = 4.609770910000009000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 990.909090910000000000
          Top = 4.609770910000009000
          Width = 112.840372230000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '"% CUMPLIMIENTO'
            '(CURSO REALIZADO '
            '/CURSO '
            'PROGRAMADO)*100"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 1103.636363640000000000
          Top = 4.609770910000009000
          Width = 68.294917680000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Empleados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 56.692949999999990000
          Width = 80.551020010000000000
          Height = 20.469550810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'ATENCION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 83.149660000000000000
          Top = 56.692949999999990000
          Width = 382.913420010000000000
          Height = 20.469550810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 217.700804490000000000
          Width = 738.189240010000000000
          Height = 35.587670810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              ' ya que la relaci'#243'n laboral de los trabajadores que a continuaci' +
              #243'n se relacionan es '#250'nica y exclusivamente con mi '
            'Representada')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 325.039580000000000000
          Top = 196.535560000000000000
          Width = 413.149660010000000000
          Height = 20.409448820000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 328.819110000000000000
          Top = 3.779529999999994000
          Width = 216.614100010000000000
          Height = 20.469550810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'CD. DEL CARMEN, CAMPECHE A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779529999999994000
          Width = 190.157390010000000000
          Height = 20.469550810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 346.190552030000000000
        Top = 582.047620000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Top = 7.559059999999931000
          Width = 738.189240010000000000
          Height = 35.587670810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Respecto a los Trabajadores antes mencionados por la que concier' +
              'ne a las prestaciones de servicios de la empresa SERVICIOS SIANI' +
              ', S.A. DE C.V. le presta a: ')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 786.363636370000000000
          Top = 7.559059999999931000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 827.272727270000000000
          Top = 7.559059999999931000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 868.181818180000000000
          Top = 7.559059999999931000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 909.090909090000000000
          Top = 7.559059999999931000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 950.000000000000000000
          Top = 7.559059999999931000
          Width = 41.022190410000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 990.909090910000000000
          Top = 7.559059999999931000
          Width = 112.840372230000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '"% CUMPLIMIENTO'
            '(CURSO REALIZADO '
            '/CURSO '
            'PROGRAMADO)*100"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 1103.636363640000000000
          Top = 7.559059999999931000
          Width = 68.294917680000000000
          Height = 61.842573080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Empleados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Align = baCenter
          Left = 282.685328495000000000
          Top = 171.516203580000000000
          Width = 175.039270010000000000
          Height = 24.249080810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Atentamente')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 257.008040000000000000
          Top = 25.626469090000000000
          Width = 481.181200010000000000
          Height = 20.409448820000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Top = 44.524119090000000000
          Width = 738.189240010000000000
          Height = 69.603440810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              'se anexan para los efectos de altas legales del IMSS, as'#237' como t' +
              'ambien mi representada se hace responsable del pago oportuno de ' +
              'las aportaciones y prestaciones de la ley a favor de los citados' +
              ' trabajadores.'
            ''
            
              'Sin mas por el momento quedamos de usted para cualquier atenci'#243'n' +
              '.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baCenter
          Left = 243.000263495000000000
          Top = 275.075449090000000000
          Width = 254.409400010000000000
          Height = 24.249080810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Lic. Luc'#237'a Ram'#237'rez Alvarez')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baCenter
          Left = 243.023861140000000000
          Top = 303.043821220000100000
          Width = 254.362204720000000000
          Height = 24.249080810000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Berlin Sans FB'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Gerente Administrativo')
          ParentFont = False
        end
      end
    end
  end
  object zEmpleados: TUniQuery
    Connection = connection.Uconnection
    Left = 72
    Top = 240
  end
  object ds_empleados: TDataSource
    AutoEdit = False
    DataSet = zEmpleados
    Left = 72
    Top = 280
  end
  object frxDataSet: TfrxDBDataset
    UserName = 'informacion_reportar'
    CloseDataSource = False
    DataSet = reporte_filtro
    BCDToCurrency = False
    Left = 546
    Top = 1
  end
  object reporte_filtro: TUniQuery
    Connection = connection.Uconnection
    Left = 500
    Top = 65534
  end
end
