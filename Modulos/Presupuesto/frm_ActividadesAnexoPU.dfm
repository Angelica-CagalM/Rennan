object frmActividadesAnexoPU: TfrmActividadesAnexoPU
  Left = 148
  Top = 108
  AlphaBlend = True
  Caption = 'Presupuesto'
  ClientHeight = 741
  ClientWidth = 1362
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    ParentFont = False
    PopupMenu = PopupPrincipal
    TabOrder = 0
    ExplicitLeft = 58
    Height = 741
    Width = 1362
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 59
      Height = 324
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      DockSite = True
      ParentBiDiMode = False
      TabOrder = 0
      object chkFiltroTodo: TcxCheckBox
        Left = 0
        Top = 184
        Caption = 'Mostrar'#13#10'Todos'
        ParentFont = False
        Properties.MultiLine = True
        State = cbsChecked
        TabOrder = 0
        OnClick = chkFiltroTodoClick
        Width = 59
      end
    end
    object pgAnexo: TPageControl
      Left = 61
      Top = 2
      Width = 1299
      Height = 324
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 72
      ExplicitWidth = 1230
      object TabSheet1: TTabSheet
        Caption = 'PRECIOS UNITARIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 1222
        ExplicitHeight = 0
        object Grid_Actividades: TcxGrid
          Left = 0
          Top = 0
          Width = 1291
          Height = 293
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1222
          object dbgcxGridPu: TcxGridDBTableView
            OnKeyDown = dbgcxGridPuKeyDown
            OnKeyUp = dbgcxGridPuKeyUp
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = dbgcxGridPuCellClick
            DataController.DataSource = ds_actividadesxanexo
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = 'Clck Aqui para Definir Un Filtro'
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = dbgcxGridPuStylesGetContentStyle
            object Col_simbolo: TcxGridDBColumn
              Caption = '      *'
              DataBinding.FieldName = 'NewSimbol'
              Width = 38
            end
            object Col_nivel: TcxGridDBColumn
              Caption = 'Nivel'
              DataBinding.FieldName = 'iNivel'
              Width = 39
            end
            object Col_wbs: TcxGridDBColumn
              Caption = 'Wbs'
              DataBinding.FieldName = 'sWbsSpace'
              Width = 41
            end
            object Col_partida: TcxGridDBColumn
              Caption = 'Partida'
              DataBinding.FieldName = 'sNumeroActividad'
              Width = 52
            end
            object Col_descripcion: TcxGridDBColumn
              Caption = 'Descripcion'
              DataBinding.FieldName = 'sDescripcion'
              Width = 581
            end
            object Col_Unidad: TcxGridDBColumn
              Caption = 'Unidad'
              DataBinding.FieldName = 'sMedida'
              Width = 59
            end
            object Col_cantAnexo: TcxGridDBColumn
              Caption = 'Cant. Anexo'
              DataBinding.FieldName = 'dCantidadAnexo'
              Width = 71
            end
            object Col_inicio: TcxGridDBColumn
              Caption = 'Inicio'
              DataBinding.FieldName = 'dFechaInicio'
            end
            object Col_final: TcxGridDBColumn
              Caption = 'Final'
              DataBinding.FieldName = 'dFechaFinal'
            end
            object Col_porcentaje: TcxGridDBColumn
              Caption = '   %'
              DataBinding.FieldName = 'dPonderado'
              Width = 54
            end
            object Col_preciounitario: TcxGridDBColumn
              Caption = 'Precio Unitario'
              DataBinding.FieldName = 'dVentaMN'
            end
            object Col_montomn: TcxGridDBColumn
              Caption = 'Monto MN'
              DataBinding.FieldName = 'SumaMN'
              Width = 133
            end
            object Col_ventadll: TcxGridDBColumn
              Caption = 'DLL'
              DataBinding.FieldName = 'SumaDLL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object Col_montodll: TcxGridDBColumn
              Caption = 'Monto DLL'
              DataBinding.FieldName = 'SumaDLL'
            end
          end
          object dbgcxGridApu: TcxGridLevel
            GridView = dbgcxGridPu
          end
        end
      end
    end
    object cxGrupo2: TcxGroupBox
      Left = 2
      Top = 332
      Align = alBottom
      Caption = 'cxGrupo2'
      PanelStyle.Active = True
      ParentFont = False
      TabOrder = 3
      Height = 407
      Width = 1358
      object dxLayoutControl1: TdxLayoutControl
        Left = 2
        Top = 2
        Width = 1354
        Height = 403
        Align = alClient
        TabOrder = 0
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 2
      Top = 326
      Width = 1358
      Height = 6
      AlignSplitter = salBottom
      ShowHint = False
      ParentShowHint = False
      ExplicitWidth = 1300
    end
  end
  object AnexoC: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39453.273154467600000000
    ReportOptions.LastChange = 42018.762392754630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin                      '
      '   if <Ficha_Tecnica."Unidad"> = '#39'CUADRILLA'#39' then'
      '    begin'
      
        '          memo16.Visible := False;                              ' +
        '                                                                ' +
        '                   '
      '          memo17.Visible := False;'
      '          memo18.Visible := False;'
      '          memo19.Visible := False;'
      
        '          memo10.Font.Style := fsBold ;                         ' +
        '                                                        '
      '          memo15.Font.Style := fsBold ;       '
      '    end'
      '    else'
      
        '    begin                                                       ' +
        '              '
      
        '          memo16.Visible := True;                               ' +
        '                      '
      '          memo17.Visible := True;'
      '          memo18.Visible := True;'
      
        '          memo19.Visible := True;                               ' +
        '       '
      '          memo15.Font.Style := 0;'
      
        '          memo10.Font.Style := 0;                               ' +
        '                                                                ' +
        '                '
      '    end;                  '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                  '
      'end;'
      ''
      'procedure GroupFooter3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if (<Ficha_Tecnica."Tipo"> = '#39'PERSONAL'#39')  then'
      '     begin'
      '          memo28.Visible := True;'
      '          memo42.Visible := True;               '
      '          memo13.Visible := True;    '
      '          memo13.Visible := True;               '
      '          memo30.Visible := True;              '
      '          memo13.StretchMode := smActualHeight;'
      '          memo13.AutoWidth   := True;'
      '          memo30.StretchMode := smActualHeight;'
      
        '          memo30.AutoWidth   := True;                           ' +
        '                               '
      '     end'
      '     else'
      '     begin'
      '          memo28.Visible := False;'
      '          memo42.Visible := False;               '
      '          memo13.Visible := False;'
      '          memo13.Visible := False;               '
      '          memo30.Visible := False;              '
      '          memo13.StretchMode := smActualHeight;'
      '          memo13.AutoWidth   := False;'
      '          memo30.StretchMode := smActualHeight;'
      
        '          memo30.AutoWidth   := False;                          ' +
        '            '
      '     end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 832
    Top = 178
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dbActividadesxAnexo
        DataSetName = 'dbActividadesxAnexo'
      end
      item
        DataSet = frxFicha_Tecnica
        DataSetName = 'Ficha_Tecnica'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' prueba'
        Value = Null
      end
      item
        Name = 'sumna'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        DataSet = frxFicha_Tecnica
        DataSetName = 'Ficha_Tecnica'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 6.338590000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."Id"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.929190000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[Ficha_Tecnica."Descripcion"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 420.189240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'Unidad'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."Unidad"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 571.811380000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'CostoMN'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CostoMN"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 493.323130000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'Cantidad'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."Cantidad"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 664.079160000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<Ficha_Tecnica."Cantidad"> * <Ficha_Tecnica."CostoMN">]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 105.826840000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."sNumeroActividad"'
        object Memo1: TfrxMemoView
          Top = 33.236240000000000000
          Width = 604.724800000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."DescripcionAnexo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 52.913420000000000000
          Top = 19.897650000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Width = 737.007874015748000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descripci'#242'n')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 19.897650000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLAVE  :')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 614.606680000000000000
          Top = 37.015770000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cantidad :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 614.606680000000000000
          Top = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidad    :')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 614.606680000000000000
          Top = 52.354360000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Precio U. :')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 671.299212600000000000
          Top = 37.236240000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CantidadAnexo"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 671.299212600000000000
          Top = 52.574830000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CostoMNAnexo"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 614.606680000000000000
          Top = 67.692950000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total        :')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 671.299212600000000000
          Top = 67.692950000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."CantidadAnexo"> * <Ficha_Tecnica."CostoMNAnexo"' +
              '>]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 671.150495830000000000
          Top = 21.897650000000000000
          Width = 64.401144170000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."MedidaAnexo"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 86.385900000000000000
          Width = 737.007874020000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C. Clave                                         Descripci'#242'n')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 419.968770000000000000
          Top = 86.370130000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '        Unidad           Cantidad')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 570.709030000000000000
          Top = 86.370130000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '         Precio U.                  Total')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."Tipo"'
        object Memo35: TfrxMemoView
          Left = 3.338590000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Ficha_Tecnica."Tipo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 26.566943780000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 665.574803150000000000
          Top = 0.110233780000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."total"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.110233780000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL DE  [Ficha_Tecnica."Tipo"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 215.433210000000000000
        Top = 517.795610000000000000
        Width = 740.409927000000000000
        object Memo58: TfrxMemoView
          Left = 474.133858270000000000
          Top = 111.889773540000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cargos Adicionales')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 474.133858270000000000
          Top = 141.929153390000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Otros Cargos')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 573.031850000000000000
          Top = 163.740260000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Precio Unitario')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 474.189240000000000000
          Top = 22.299212600000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Indirectos')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 474.125984250000000000
          Top = 51.779527560000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Financiamiento')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 474.133858270000000000
          Top = 82.409453700000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Utilidad')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 572.693157480000000000
          Top = 7.000000000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Costo Directo')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 587.779527560000000000
          Top = 22.220470000000000000
          Width = 68.031486300000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Indirectos"] % )')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 587.763779530000000000
          Top = 51.795300000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Financiamiento"] % )')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 587.897637800000000000
          Top = 82.393700790000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Utilidad"] % )')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 587.897637800000000000
          Top = 111.874015750000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Adicional1"] % )')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 671.968503940000000000
          Top = 22.299212600000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dIndirecto"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 671.968503940000000000
          Top = 37.039370080000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[<Ficha_Tecnica."totalPU"> +  <Ficha_Tecnica."dIndirecto">]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 671.968503940000000000
          Top = 51.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dFinanciamiento"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 671.968503940000000000
          Top = 82.393700790000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dUtilidad"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 671.968503940000000000
          Top = 111.874015750000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dAdicionales"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 671.968503940000000000
          Top = 7.181102360000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."totalPU"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 587.897637800000000000
          Top = 142.110236220000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Adicional2"] % )')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 671.968503940000000000
          Top = 127.370078740000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad"> + <F' +
              'icha_Tecnica."dAdicionales">]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 671.968503940000000000
          Top = 142.110236220000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dOtroAdicional"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 671.818897640000000000
          Top = 163.653543310000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad"> + <F' +
              'icha_Tecnica."dAdicionales"> + <Ficha_Tecnica."dOtroAdicional">]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 572.779527560000000000
          Top = 37.039370080000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 671.968503940000000000
          Top = 66.897637800000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento">]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 671.968503940000000000
          Top = 97.133858270000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad">]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 572.913730000000000000
          Top = 67.031540000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 572.913730000000000000
          Top = 97.267780000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 572.779527560000000000
          Top = 127.504020000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 109.047310000000000000
          Top = 188.976500000000000000
          Width = 559.370440000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."Tipo"'
        Stretched = True
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.338590000000000000
        Top = 430.866420000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupFooter3OnBeforePrint'
        Stretched = True
        object Memo28: TfrxMemoView
          Left = 443.614410000000000000
          Top = 0.110233780000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 493.228346460000000000
          Top = 0.110233780000000000
          Width = 64.251968503937000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."rendimiento"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 571.842519690000000000
          Top = 0.220470000000000000
          Width = 75.590551181102400000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '      Suma:'
            '      Total:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 665.520100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<Ficha_Tecnica."Cantidad"> * <Ficha_Tecnica."CostoMN"> ,Mas' +
              'terData1)]'
            '[Ficha_Tecnica."subtotal"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 63.913420000000000000
          Width = 661.417750000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 542.354670000000000000
          Top = 17.677180000000000000
          Width = 192.756030000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ANALISIS DE PRECIOS UNITARIOS'
            'LICITACION NO. [contrato."sLicitacion"]'
            'FECHA: [DATE]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 152.960730000000000000
          Top = 3.779530000000000000
          Width = 381.732530000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mCliente"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 640.622450000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ANEXO "H"')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 102.047310000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 138.181200000000000000
          Height = 50.692950000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 793.701300000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          Left = 302.821893330000000000
          Top = 44.935066670000000000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 510.559370000000000000
          Top = 27.677180000000000000
          Width = 204.094473540000000000
          Height = 14.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[setup."sRepresentante"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 593.606680000000000000
          Top = 41.472480000000000000
          Width = 120.944813540000000000
          Height = 15.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPRESENTANTE LEGAL')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 253.228510000000000000
          Top = 22.677180000000000000
          Width = 226.771653540000000000
          Height = 17.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dbActividadesxAnexo: TfrxDBDataset
    UserName = 'dbActividadesxAnexo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dMontoMN=dMontoMN'
      'dMontoDLL=dMontoDLL'
      'sWbsSpace=sWbsSpace'
      'sContrato=sContrato'
      'sIdConvenio=sIdConvenio'
      'iNivel=iNivel'
      'sSimbolo=sSimbolo'
      'sWbs=sWbs'
      'sWbsAnterior=sWbsAnterior'
      'sNumeroActividad=sNumeroActividad'
      'sTipoActividad=sTipoActividad'
      'sEspecificacion=sEspecificacion'
      'sActividadAnterior=sActividadAnterior'
      'mDescripcion=mDescripcion'
      'dFechaInicio=dFechaInicio'
      'dDuracion=dDuracion'
      'dFechaFinal=dFechaFinal'
      'dPonderado=dPonderado'
      'dCostoMN=dCostoMN'
      'dCostoDll=dCostoDll'
      'dVentaMN=dVentaMN'
      'dVentaDLL=dVentaDLL'
      'lCalculo=lCalculo'
      'sMedida=sMedida'
      'dCantidadAnexo=dCantidadAnexo'
      'dCargado=dCargado'
      'dInstalado=dInstalado'
      'dExcedente=dExcedente'
      'iColor=iColor'
      'lExtraordinario=lExtraordinario'
      'sIdFase=sIdFase'
      'iItemOrden=iItemOrden')
    DataSet = ActividadesxAnexo
    BCDToCurrency = False
    Left = 320
    Top = 64
  end
  object ds_actividadesxanexo: TDataSource
    Tag = 2123
    AutoEdit = False
    DataSet = ActividadesxAnexo
    Left = 448
    Top = 72
  end
  object dbPartidasxAlcance: TfrxDBDataset
    UserName = 'dbPartidasxAlcance'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'dCantidadAnexo=dCantidadAnexo'
      'sMedida=sMedida'
      'dPonderado=dPonderado'
      'iFase=iFase'
      'sDescripcion=sDescripcion'
      'dAvance=dAvance')
    BCDToCurrency = False
    Left = 97
    Top = 349
  end
  object frxDetalleAlcance: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39453.273154467600000000
    ReportOptions.LastChange = 40801.398641504600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin                      '
      '   if <Ficha_Tecnica."Unidad"> = '#39'CUADRILLA'#39' then'
      '    begin'
      
        '          memo16.Visible := False;                              ' +
        '                                                                ' +
        '                   '
      '          memo17.Visible := False;'
      '          memo18.Visible := False;'
      '          memo19.Visible := False;'
      
        '          memo10.Font.Style := fsBold ;                         ' +
        '                                                        '
      '          memo15.Font.Style := fsBold ;       '
      '    end'
      '    else'
      
        '    begin                                                       ' +
        '              '
      
        '          memo16.Visible := True;                               ' +
        '                      '
      '          memo17.Visible := True;'
      '          memo18.Visible := True;'
      
        '          memo19.Visible := True;                               ' +
        '       '
      '          memo15.Font.Style := 0;'
      
        '          memo10.Font.Style := 0;                               ' +
        '                                                                ' +
        '                '
      '    end;                  '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                  '
      'end;'
      ''
      'procedure GroupFooter3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if (<Ficha_Tecnica."Tipo"> = '#39'PERSONAL'#39')  then'
      '     begin'
      '          memo28.Visible := True;'
      '          memo42.Visible := True;               '
      '          memo13.Visible := True;    '
      '          memo13.Visible := True;               '
      '          memo30.Visible := True;              '
      '          memo13.StretchMode := smActualHeight;'
      '          memo13.AutoWidth   := True;'
      '          memo30.StretchMode := smActualHeight;'
      
        '          memo30.AutoWidth   := True;                           ' +
        '                               '
      '     end'
      '     else'
      '     begin'
      '          memo28.Visible := False;'
      '          memo42.Visible := False;               '
      '          memo13.Visible := False;'
      '          memo13.Visible := False;               '
      '          memo30.Visible := False;              '
      '          memo13.StretchMode := smActualHeight;'
      '          memo13.AutoWidth   := False;'
      '          memo30.StretchMode := smActualHeight;'
      
        '          memo30.AutoWidth   := False;                          ' +
        '            '
      '     end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 144
    Top = 204
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dbActividadesxAnexo
        DataSetName = 'dbActividadesxAnexo'
      end
      item
        DataSet = frxFicha_Tecnica
        DataSetName = 'Ficha_Tecnica'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' prueba'
        Value = Null
      end
      item
        Name = 'sumna'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        DataSet = frxFicha_Tecnica
        DataSetName = 'Ficha_Tecnica'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 6.338590000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."Id"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.929190000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[Ficha_Tecnica."Descripcion"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 420.189240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'Unidad'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."Unidad"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 571.811380000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'CostoMN'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CostoMN"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 493.323130000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'Cantidad'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."Cantidad"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 664.079160000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<Ficha_Tecnica."Cantidad"> * <Ficha_Tecnica."CostoMN">]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 105.826840000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."sNumeroActividad"'
        object Memo1: TfrxMemoView
          Top = 33.236240000000000000
          Width = 604.724800000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."DescripcionAnexo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 52.913420000000000000
          Top = 19.897650000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Width = 737.007874015748000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descripci'#242'n')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 19.897650000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLAVE  :')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 614.606680000000000000
          Top = 37.015770000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cantidad :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 614.606680000000000000
          Top = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidad    :')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 614.606680000000000000
          Top = 52.354360000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Precio U. :')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 671.299212600000000000
          Top = 37.236240000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CantidadAnexo"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 671.299212600000000000
          Top = 52.574830000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CostoMNAnexo"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 614.606680000000000000
          Top = 67.692950000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total        :')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 671.299212600000000000
          Top = 67.692950000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."CantidadAnexo"> * <Ficha_Tecnica."CostoMNAnexo"' +
              '>]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 671.150495830000000000
          Top = 21.897650000000000000
          Width = 64.401144170000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."MedidaAnexo"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 86.385900000000000000
          Width = 737.007874020000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C. Clave                                         Descripci'#242'n')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 419.968770000000000000
          Top = 86.370130000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '        Unidad           Cantidad')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 570.709030000000000000
          Top = 86.370130000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '         Precio U.                  Total')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."Tipo"'
        object Memo35: TfrxMemoView
          Left = 3.338590000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Ficha_Tecnica."Tipo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 26.566943780000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 665.574803150000000000
          Top = 0.110233780000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."total"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.110233780000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL DE  [Ficha_Tecnica."Tipo"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 215.433210000000000000
        Top = 517.795610000000000000
        Width = 740.409927000000000000
        object Memo58: TfrxMemoView
          Left = 474.133858270000000000
          Top = 111.889773540000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cargos Adicionales')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 474.133858270000000000
          Top = 141.929153390000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Otros Cargos')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 573.031850000000000000
          Top = 163.740260000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Precio Unitario')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 474.189240000000000000
          Top = 22.299212600000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Indirectos')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 474.125984250000000000
          Top = 51.779527560000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Financiamiento')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 474.133858270000000000
          Top = 82.409453700000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Utilidad')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 572.693157480000000000
          Top = 7.000000000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Costo Directo')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 587.779527560000000000
          Top = 22.220470000000000000
          Width = 68.031486300000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Indirectos"] % )')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 587.763779530000000000
          Top = 51.795300000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Financiamiento"] % )')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 587.897637800000000000
          Top = 82.393700790000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Utilidad"] % )')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 587.897637800000000000
          Top = 111.874015750000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Adicional1"] % )')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 671.968503940000000000
          Top = 22.299212600000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dIndirecto"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 671.968503940000000000
          Top = 37.039370080000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[<Ficha_Tecnica."totalPU"> +  <Ficha_Tecnica."dIndirecto">]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 671.968503940000000000
          Top = 51.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dFinanciamiento"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 671.968503940000000000
          Top = 82.393700790000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dUtilidad"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 671.968503940000000000
          Top = 111.874015750000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dAdicionales"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 671.968503940000000000
          Top = 7.181102360000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."totalPU"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 587.897637800000000000
          Top = 142.110236220000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Adicional2"] % )')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 671.968503940000000000
          Top = 127.370078740000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad"> + <F' +
              'icha_Tecnica."dAdicionales">]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 671.968503940000000000
          Top = 142.110236220000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dOtroAdicional"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 671.818897640000000000
          Top = 163.653543310000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad"> + <F' +
              'icha_Tecnica."dAdicionales"> + <Ficha_Tecnica."dOtroAdicional">]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 572.779527560000000000
          Top = 37.039370080000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 671.968503940000000000
          Top = 66.897637800000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento">]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 671.968503940000000000
          Top = 97.133858270000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad">]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 572.913730000000000000
          Top = 67.031540000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 572.913730000000000000
          Top = 97.267780000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 572.779527560000000000
          Top = 127.504020000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 109.047310000000000000
          Top = 188.976500000000000000
          Width = 559.370440000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '** [Ficha_Tecnica."MontoLetras"] **')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."Tipo"'
        Stretched = True
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.338590000000000000
        Top = 430.866420000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupFooter3OnBeforePrint'
        Stretched = True
        object Memo28: TfrxMemoView
          Left = 443.614410000000000000
          Top = 0.110233780000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 493.228346460000000000
          Top = 0.110233780000000000
          Width = 64.251968503937000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."rendimiento"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 571.842519690000000000
          Top = 0.220470000000000000
          Width = 75.590551181102400000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '      Suma:'
            '      Total:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 665.520100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<Ficha_Tecnica."Cantidad"> * <Ficha_Tecnica."CostoMN"> ,Mas' +
              'terData1)]'
            '[Ficha_Tecnica."subtotal"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 63.913420000000000000
          Width = 661.417750000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 542.354670000000000000
          Top = 17.677180000000000000
          Width = 192.756030000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ANALISIS DE PRECIOS UNITARIOS'
            'LICITACION NO. [contrato."sLicitacion"]'
            'FECHA: [DATE]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 152.960730000000000000
          Top = 3.779530000000000000
          Width = 381.732530000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mCliente"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 640.622450000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ANEXO "H"')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 102.047310000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 138.181200000000000000
          Height = 50.692950000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 793.701300000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          Left = 302.821893330000000000
          Top = 44.935066670000000000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 510.559370000000000000
          Top = 27.677180000000000000
          Width = 204.094473540000000000
          Height = 14.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[setup."sRepresentante"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 593.606680000000000000
          Top = 41.472480000000000000
          Width = 120.944813540000000000
          Height = 15.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPRESENTANTE LEGAL')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 253.228510000000000000
          Top = 22.677180000000000000
          Width = 226.771653540000000000
          Height = 17.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object PopupPrincipal: TPopupMenu
    OnPopup = PopupPrincipalPopup
    Left = 281
    Top = 64
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 6
      ShortCut = 16457
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 10
      ShortCut = 16453
      OnClick = Editar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Tag = 9
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 8
      ShortCut = 121
      OnClick = Registrar1Click
    end
    object Can1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
      OnClick = Can1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 5
      ShortCut = 16452
      OnClick = Eliminar1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 13
      ShortCut = 116
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ImprimirCosto: TMenuItem
      Tag = 4
      Caption = '&Imprimir Costos Catalogo'
      ImageIndex = 14
      ShortCut = 16464
      OnClick = ImprimirCostoClick
    end
    object ImprimirFichaTecnicaxPartida1: TMenuItem
      Tag = 4
      Caption = 'Imprimir Ficha Tecnica General'
      ImageIndex = 14
      OnClick = ImprimirFichaTecnicaxPartida1Click
    end
    object ImprimirFichaTecnicaxPartida2: TMenuItem
      Tag = 4
      Caption = 'Imprimir Ficha Tecnica x Partida'
      ImageIndex = 14
      OnClick = ImprimirFichaTecnicaxPartida2Click
    end
    object ExportaAnexoExcel1: TMenuItem
      Tag = 4
      Caption = 'Exporta Anexo a Excel'
      ImageIndex = 42
      OnClick = ExportaAnexoExcel1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Costosderecursos1: TMenuItem
      Caption = 'Costos de recursos Anexo C'
      ImageIndex = 55
      object Costodemateriales1: TMenuItem
        Caption = 'Personal'
        OnClick = Costodemateriales1Click
      end
      object Personal1: TMenuItem
        Caption = 'Equipo'
        OnClick = Personal1Click
      end
      object Equipo1: TMenuItem
        Caption = 'Materiales'
        OnClick = Equipo1Click
      end
      object Herramientas1: TMenuItem
        Caption = 'Basicos'
        Enabled = False
        Visible = False
        OnClick = Herramientas1Click
      end
      object Varios1: TMenuItem
        Caption = 'Herramientas'
        Enabled = False
        Visible = False
        OnClick = Varios1Click
      end
    end
    object mniDistribuciondeRecursos1: TMenuItem
      Caption = 'Distribucion de Recursos'
      ImageIndex = 67
      object mniDMO1: TMenuItem
        Caption = 'DMO'
        OnClick = mniDMO1Click
      end
      object mniDME1: TMenuItem
        Caption = 'DME'
        OnClick = mniDME1Click
      end
      object mniDMA1: TMenuItem
        Caption = 'DMA'
        OnClick = mniDMA1Click
      end
    end
    object PonderarConceptos: TMenuItem
      Tag = 1
      Caption = 'Ponderar Conceptos/Partidas'
      ImageIndex = 41
      ShortCut = 120
      OnClick = PonderarConceptosClick
    end
    object CalcularCostodelContrato1: TMenuItem
      Caption = 'Calcular Costos del Contrato'
      Visible = False
      OnClick = CalcularCostodelContrato1Click
    end
    object GraficadeAnalisisdePU1: TMenuItem
      Caption = 'Grafica de Analisis de P.U.'
      ImageIndex = 49
    end
    object ConvMayus: TMenuItem
      Tag = 1
      Caption = 'Convertir Descripciones a May'#250'sculas'
      ImageIndex = 4
      OnClick = ConvMayusClick
    end
    object ConvMinus: TMenuItem
      Tag = 1
      Caption = 'Convertir Descripciones a Min'#250'sculas'
      ImageIndex = 3
      OnClick = ConvMinusClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ComparativoInstaladoVsProgramadoVsGeneradoExcel1: TMenuItem
      Caption = 'Comparativo Instalado Vs Programado Vs Generado Excel'
      ImageIndex = 41
      OnClick = ComparativoInstaladoVsProgramadoVsGeneradoExcel1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 43
      ShortCut = 16472
      OnClick = Salir1Click
    end
  end
  object ds_Paquetes: TDataSource
    AutoEdit = False
    DataSet = Paquetes
    Left = 143
    Top = 136
  end
  object ActividadesxAnexo: TZQuery
    Connection = connection.zConnection
    AfterInsert = ActividadesxAnexoAfterInsert
    BeforePost = ActividadesxAnexoBeforePost
    SQL.Strings = (
      'Select *,'
      
        'Cast(IFNULL(Sum(dCantidadAnexo * dVentaMN),0) as  DECIMAL(20,2))' +
        ' as SumaMN,'
      
        'Cast(IFNULL(Sum(dCantidadAnexo * dVentaDLL),0) as  DECIMAL(20,2)' +
        ') as SumaDLL,'
      
        'SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxan' +
        'exo'
      'Where sContrato = :contrato And sIdConvenio = :Convenio'
      'Group by sNumeroActividad '
      'Order By mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador);'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tam'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Separador'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 1162
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tam'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Separador'
        ParamType = ptUnknown
      end>
    object ActividadesxAnexodMontoMN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoMN'
      Calculated = True
    end
    object ActividadesxAnexodMontoDLL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoDLL'
      Calculated = True
    end
    object ActividadesxAnexosWbsSpace: TStringField
      FieldKind = fkCalculated
      FieldName = 'sWbsSpace'
      Size = 200
      Calculated = True
    end
    object ActividadesxAnexosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesxAnexosIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object ActividadesxAnexoiNivel: TIntegerField
      FieldName = 'iNivel'
      Required = True
    end
    object ActividadesxAnexosSimbolo: TStringField
      FieldName = 'sSimbolo'
      Required = True
      Size = 1
    end
    object ActividadesxAnexosWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 100
    end
    object ActividadesxAnexosWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      OnChange = ActividadesxAnexosWbsAnteriorChange
      Size = 100
    end
    object ActividadesxAnexosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesxAnexosTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Required = True
      Size = 9
    end
    object ActividadesxAnexosEspecificacion: TStringField
      FieldName = 'sEspecificacion'
      Required = True
      Size = 15
    end
    object ActividadesxAnexosActividadAnterior: TStringField
      FieldName = 'sActividadAnterior'
      Required = True
      Size = 10
    end
    object ActividadesxAnexomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesxAnexodFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object ActividadesxAnexodDuracion: TFloatField
      FieldName = 'dDuracion'
      Required = True
    end
    object ActividadesxAnexodFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object ActividadesxAnexodPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
      OnSetText = ActividadesxAnexodPonderadoSetText
      DisplayFormat = '##0.0###'
    end
    object ActividadesxAnexodCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
      currency = True
    end
    object ActividadesxAnexodCostoDll: TFloatField
      FieldName = 'dCostoDll'
      Required = True
      currency = True
    end
    object ActividadesxAnexodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object ActividadesxAnexodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      currency = True
    end
    object ActividadesxAnexolCalculo: TStringField
      FieldName = 'lCalculo'
      Required = True
      Size = 2
    end
    object ActividadesxAnexodCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxAnexodCargado: TFloatField
      FieldName = 'dCargado'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxAnexodInstalado: TFloatField
      FieldName = 'dInstalado'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxAnexodExcedente: TFloatField
      FieldName = 'dExcedente'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxAnexoiColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
    object ActividadesxAnexolExtraordinario: TStringField
      FieldName = 'lExtraordinario'
      Required = True
      Size = 2
    end
    object ActividadesxAnexosIdFase: TStringField
      FieldName = 'sIdFase'
      Required = True
      Size = 5
    end
    object ActividadesxAnexoiItemOrden: TStringField
      FieldName = 'iItemOrden'
      Required = True
      Size = 100
    end
    object ActividadesxAnexosMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 10
    end
    object ActividadesxAnexosAnexo: TStringField
      FieldName = 'sAnexo'
    end
    object ActividadesxAnexoNewSimbol: TStringField
      FieldKind = fkCalculated
      FieldName = 'NewSimbol'
      OnGetText = ActividadesxAnexoNewSimbolGetText
      Calculated = True
    end
    object ActividadesxAnexosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 255
    end
    object ActividadesxAnexosTipoAnexo: TStringField
      FieldName = 'sTipoAnexo'
    end
    object ActividadesxAnexosWbsPU: TStringField
      FieldName = 'sWbsPU'
      Size = 100
    end
    object ActividadesxAnexoSumaMN: TFloatField
      FieldName = 'SumaMN'
      ReadOnly = True
      currency = True
    end
    object ActividadesxAnexoSumaDLL: TFloatField
      FieldName = 'SumaDLL'
      currency = True
    end
  end
  object SumAvance: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select Sum(dAvance) as dAvance From alcancesxactividad'
      
        'Where sContrato = :contrato And sNumeroActividad = :Actividad an' +
        'd sWbs=:wbs  Group By sContrato, sNumeroActividad')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end>
    Left = 248
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end>
  end
  object Paquetes: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = PaquetesCalcFields
    SQL.Strings = (
      
        'Select iNivel, iItemOrden, sWBS, sWBSAnterior, sNumeroActividad,' +
        ' mDescripcion, dFechaInicio, dFechaFinal, dDuracion from activid' +
        'adesxanexo Where sContrato = :contrato'
      
        'and sIdConvenio = :Convenio And sTipoActividad = "Paquete" order' +
        ' by iItemOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
    Left = 176
    Top = 132
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
    object PaquetesiNivel: TIntegerField
      FieldName = 'iNivel'
      Required = True
    end
    object PaquetessWBS: TStringField
      FieldName = 'sWBS'
      Required = True
      Size = 75
    end
    object PaquetessWBSAnterior: TStringField
      FieldName = 'sWBSAnterior'
      Required = True
      Size = 75
    end
    object PaquetessNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object PaquetesmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object PaquetesdFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object PaquetesdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object PaquetesdDuracion: TFloatField
      FieldName = 'dDuracion'
      Required = True
    end
    object PaquetessDescripcion: TStringField
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 80
      Calculated = True
    end
    object PaquetesiItemOrden: TStringField
      FieldName = 'iItemOrden'
      Required = True
      Size = 100
    end
  end
  object zFasesProyecto: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = PaquetesCalcFields
    SQL.Strings = (
      'select * from fasesxproyecto order by sDescripcion')
    Params = <>
    Left = 176
    Top = 164
  end
  object dsFasesxProyecto: TDataSource
    AutoEdit = False
    DataSet = zFasesProyecto
    Left = 143
    Top = 168
  end
  object Personal: TZQuery
    Connection = connection.zConnection
    OnCalcFields = PersonalCalcFields
    AfterInsert = PersonalAfterInsert
    BeforePost = PersonalBeforePost
    AfterPost = PersonalAfterPost
    BeforeDelete = PersonalBeforeDelete
    AfterDelete = PersonalAfterDelete
    OnDeleteError = PersonalDeleteError
    OnPostError = PersonalPostError
    SQL.Strings = (
      'Select sContrato, sWbs, sNumeroActividad, dRendimiento,'
      
        'sIdpersonal, dCantidad, dCostoMN , dCostoDLL, sNumeroPaquete,  s' +
        'Simbolo, dCostoTotalMN, dCostoTotalDLL, fila'
      'from recursospersonalnuevos Where'
      
        'sContrato = :Contrato And sWbs = :wbs and sNumeroActividad = :ac' +
        'tividad  and sSimbolo <> '#39'*'#39' group by fila, sNumeroPaquete, sIdP' +
        'ersonal'
      'order by sNumeroPaquete,fila, sIdPersonal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 269
    Top = 454
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object PersonalsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object PersonalsWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object PersonalsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 25
    end
    object PersonalsIdPersonal: TStringField
      FieldName = 'sIdPersonal'
      OnChange = PersonalsIdpersonalChange
    end
    object PersonaldCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '#,0.00000'
    end
    object PersonaldRendimiento: TFloatField
      FieldName = 'dRendimiento'
      DisplayFormat = '#,0.00000'
    end
    object PersonaldCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
      currency = True
    end
    object PersonaldCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      Required = True
      currency = True
    end
    object PersonalsNumeroPaquete: TStringField
      FieldName = 'sNumeroPaquete'
      Required = True
      Size = 15
    end
    object PersonalsDescripcion: TStringField
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 100
      Calculated = True
    end
    object Personalfila: TIntegerField
      FieldName = 'fila'
    end
    object PersonalsSimbolo: TStringField
      FieldName = 'sSimbolo'
    end
    object PersonaldCostoTotalMN: TFloatField
      FieldName = 'dCostoTotalMN'
      currency = True
    end
    object PersonaldCostoTotalDLL: TFloatField
      FieldName = 'dCostoTotalDLL'
      currency = True
    end
  end
  object ds_personal: TDataSource
    DataSet = Personal
    Left = 238
    Top = 457
  end
  object equipos: TZQuery
    Connection = connection.zConnection
    OnCalcFields = equiposCalcFields
    AfterInsert = equiposAfterInsert
    BeforePost = equiposBeforePost
    AfterPost = equiposAfterPost
    AfterDelete = equiposAfterDelete
    OnDeleteError = equiposDeleteError
    OnPostError = equiposPostError
    SQL.Strings = (
      'Select * from recursosequiposnuevos Where'
      
        'sContrato = :Contrato And sWbs = :wbs and sNumeroActividad = :ac' +
        'tividad Order By sIdEquipo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 269
    Top = 478
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object equipossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object equipossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 15
    end
    object equipossWbs: TStringField
      DisplayWidth = 40
      FieldName = 'sWbs'
      Size = 40
    end
    object equipossIdEquipo: TStringField
      FieldName = 'sIdEquipo'
      Required = True
      OnChange = equipossIdEquipoChange
      Size = 25
    end
    object equiposdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '#,0.00000'
    end
    object equiposdRendimiento: TFloatField
      FieldName = 'dRendimiento'
      Required = True
    end
    object equiposdCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
      currency = True
    end
    object equiposdCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      Required = True
      currency = True
    end
    object equipossDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 200
      Calculated = True
    end
    object equiposdCostoTotalMN: TFloatField
      FieldName = 'dCostoTotalMN'
      currency = True
    end
    object equiposdCostoTotalDLL: TFloatField
      FieldName = 'dCostoTotalDLL'
      currency = True
    end
  end
  object ds_equipos: TDataSource
    DataSet = equipos
    Left = 238
    Top = 481
  end
  object inventario: TZQuery
    Connection = connection.zConnection
    OnCalcFields = inventarioCalcFields
    AfterInsert = inventarioAfterInsert
    BeforePost = inventarioBeforePost
    AfterPost = inventarioAfterPost
    AfterDelete = inventarioAfterDelete
    OnDeleteError = inventarioDeleteError
    OnPostError = inventarioPostError
    SQL.Strings = (
      'Select * from recursosanexosnuevos Where sContrato = :Contrato'
      
        'And sWbs = :wbs and sNumeroActividad = :actividad Order By sIdin' +
        'sumo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 269
    Top = 398
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object inventariosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object inventariosWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object inventariosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 25
    end
    object inventariosIdInventario: TStringField
      FieldName = 'sIdInsumo'
      Required = True
      OnChange = inventariosIdInventarioChange
      Size = 25
    end
    object inventariodCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '#,0.00000'
    end
    object inventariodCostoMN: TFloatField
      FieldName = 'dCostoMN'
      currency = True
    end
    object inventariodCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      currency = True
    end
    object inventariosDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 200
      Calculated = True
    end
    object inventariodCostoTotalMN: TFloatField
      FieldName = 'dCostoTotalMN'
      currency = True
    end
    object inventariodCostoTotalDLL: TFloatField
      FieldName = 'dCostoTotalDLL'
      currency = True
    end
  end
  object ds_Inventario: TDataSource
    DataSet = inventario
    Left = 238
    Top = 401
  end
  object dsBasicos: TDataSource
    DataSet = basicos
    Left = 240
    Top = 512
  end
  object basicos: TZQuery
    Connection = connection.zConnection
    OnCalcFields = basicosCalcFields
    AfterInsert = basicosAfterInsert
    BeforePost = basicosBeforePost
    AfterPost = basicosAfterPost
    BeforeDelete = basicosBeforeDelete
    AfterDelete = basicosAfterDelete
    OnDeleteError = basicosDeleteError
    OnPostError = basicosPostError
    SQL.Strings = (
      'Select * from recursosbasicosnuevos Where'
      
        'sContrato = :Contrato And sWbs = :Wbs And sNumeroActividad = :ac' +
        'tividad and sSimbolo <> '#39'*'#39'  Order By sNumeroPaquete,fila, sIdBa' +
        'sico'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 269
    Top = 510
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object basicossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object basicossWbs: TStringField
      FieldName = 'sWbs'
      ReadOnly = True
      Size = 30
    end
    object basicossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object basicossIdBasico: TStringField
      FieldName = 'sIdBasico'
      Required = True
      OnChange = basicossIdBasicoChange
    end
    object basicosdCantidad: TFloatField
      DisplayWidth = 15
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '#,0.00000'
    end
    object basicosdRendimiento: TFloatField
      FieldName = 'dRendimiento'
      DisplayFormat = '#,0.00000'
    end
    object basicosdCostoMN: TFloatField
      FieldName = 'dCostoMN'
      currency = True
    end
    object basicosdCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      currency = True
    end
    object basicossNumeroPaquete: TStringField
      FieldName = 'sNumeroPaquete'
    end
    object basicossDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 150
      Calculated = True
    end
    object basicosfila: TIntegerField
      FieldName = 'fila'
    end
    object basicossSimbolo: TStringField
      FieldName = 'sSimbolo'
    end
    object basicosdCostoTotalMN: TFloatField
      FieldName = 'dCostoTotalMN'
      currency = True
    end
    object basicosdCostoTotalDLL: TFloatField
      FieldName = 'dCostoTotalDLL'
      currency = True
    end
  end
  object BuscaObjeto: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sIdPersonal as 1campo, sDescripcion, dCostoMN as 3Campo, ' +
        'dCostoDLL as 4Campo'
      'from personal Where sContrato =:Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 349
    Top = 537
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object BuscaObjetosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 250
    end
    object BuscaObjetoId: TStringField
      FieldName = 'Id'
      Size = 25
    end
    object BuscaObjetodVentaMN: TFloatField
      FieldName = 'dVentaMN'
    end
    object BuscaObjetodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
    end
    object BuscaObjetosMedida: TStringField
      FieldName = 'sMedida'
    end
  end
  object ds_buscaobjeto: TDataSource
    AutoEdit = False
    DataSet = BuscaObjeto
    Left = 316
    Top = 537
  end
  object ds_herramientas: TDataSource
    DataSet = herramientas
    Left = 238
    Top = 545
  end
  object ds_explosion: TDataSource
    DataSet = rxExplosion
    Left = 694
    Top = 385
  end
  object rxFicha_Tecnica: TRxMemoryData
    FieldDefs = <>
    Left = 864
    Top = 208
    object rxFicha_TecnicasContrato: TStringField
      FieldName = 'sContrato'
    end
    object rxFicha_TecnicasNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
    end
    object rxFicha_TecnicaDescripcionAnexo: TStringField
      DisplayWidth = 250
      FieldName = 'DescripcionAnexo'
      Size = 250
    end
    object rxFicha_TecnicaCantidadAnexo: TFloatField
      FieldName = 'CantidadAnexo'
    end
    object rxFicha_TecnicaMedidaAnexo: TStringField
      FieldName = 'MedidaAnexo'
    end
    object rxFicha_TecnicaCostoMNAnexo: TFloatField
      FieldName = 'CostoMNAnexo'
      currency = True
    end
    object rxFicha_TecnicaCostoDLLAnexo: TFloatField
      FieldName = 'CostoDLLAnexo'
      currency = True
    end
    object rxFicha_TecnicaTipo: TStringField
      FieldName = 'Tipo'
    end
    object rxFicha_TecnicaId: TStringField
      FieldName = 'Id'
    end
    object rxFicha_TecnicaDescripcion: TStringField
      DisplayWidth = 250
      FieldName = 'Descripcion'
      Size = 250
    end
    object rxFicha_TecnicaUnidad: TStringField
      FieldName = 'Unidad'
    end
    object rxFicha_TecnicaCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object rxFicha_TecnicaCostoMN: TFloatField
      FieldName = 'CostoMN'
      currency = True
    end
    object rxFicha_TecnicaCostoDLL: TFloatField
      FieldName = 'CostoDLL'
      currency = True
    end
    object rxFicha_TecnicaDirectos: TFloatField
      FieldName = 'Directos'
    end
    object rxFicha_TecnicaIndirectos: TFloatField
      FieldName = 'Indirectos'
    end
    object rxFicha_TecnicaFinanciamiento: TFloatField
      FieldName = 'Financiamiento'
    end
    object rxFicha_TecnicaUtilidad: TFloatField
      FieldName = 'Utilidad'
    end
    object rxFicha_TecnicaAdicional1: TFloatField
      FieldName = 'Adicional1'
    end
    object rxFicha_TecnicaAdicional2: TFloatField
      FieldName = 'Adicional2'
    end
    object rxFicha_TecnicaAdicional3: TFloatField
      FieldName = 'Adicional3'
    end
    object rxFicha_Tecnicarendimiento: TFloatField
      FieldName = 'rendimiento'
    end
    object rxFicha_Tecnicasubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object rxFicha_Tecnicatotal: TFloatField
      FieldName = 'total'
    end
    object rxFicha_TecnicatotalPU: TFloatField
      FieldName = 'totalPU'
    end
    object rxFicha_TecnicaEspacio: TStringField
      FieldName = 'Espacio'
    end
    object rxFicha_TecnicaNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object rxFicha_TecnicadIndirecto: TFloatField
      FieldName = 'dIndirecto'
    end
    object rxFicha_TecnicadFinanciamiento: TFloatField
      FieldName = 'dFinanciamiento'
    end
    object rxFicha_TecnicadUtilidad: TFloatField
      FieldName = 'dUtilidad'
    end
    object rxFicha_TecnicadAdicionales: TFloatField
      FieldName = 'dAdicionales'
    end
    object rxFicha_TecnicadOtroAdicional: TFloatField
      FieldName = 'dOtroAdicional'
    end
    object rxFicha_TecnicaCuadrilla: TStringField
      DisplayWidth = 15
      FieldName = 'Cuadrilla'
      Size = 15
    end
    object rxFicha_Tecnicafila: TIntegerField
      FieldName = 'fila'
    end
    object rxFicha_TecnicaRendimiento_paq: TFloatField
      FieldName = 'Rendimiento_paq'
    end
    object rxFicha_TecnicadTotalMN_paq: TFloatField
      FieldName = 'dTotalMN_paq'
    end
  end
  object frxFicha_Tecnica: TfrxDBDataset
    UserName = 'Ficha_Tecnica'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sNumeroActividad=sNumeroActividad'
      'DescripcionAnexo=DescripcionAnexo'
      'CantidadAnexo=CantidadAnexo'
      'MedidaAnexo=MedidaAnexo'
      'CostoMNAnexo=CostoMNAnexo'
      'CostoDLLAnexo=CostoDLLAnexo'
      'Tipo=Tipo'
      'Id=Id'
      'Descripcion=Descripcion'
      'Unidad=Unidad'
      'Cantidad=Cantidad'
      'CostoMN=CostoMN'
      'CostoDLL=CostoDLL'
      'Directos=Directos'
      'Indirectos=Indirectos'
      'Financiamiento=Financiamiento'
      'Utilidad=Utilidad'
      'Adicional1=Adicional1'
      'Adicional2=Adicional2'
      'Adicional3=Adicional3'
      'rendimiento=rendimiento'
      'subtotal=subtotal'
      'total=total'
      'totalPU=totalPU'
      'Espacio=Espacio'
      'Nivel=Nivel'
      'dIndirecto=dIndirecto'
      'dFinanciamiento=dFinanciamiento'
      'dUtilidad=dUtilidad'
      'dAdicionales=dAdicionales'
      'dOtroAdicional=dOtroAdicional'
      'Cuadrilla=Cuadrilla'
      'fila=fila'
      'Rendimiento_paq=Rendimiento_paq'
      'dTotalMN_paq=dTotalMN_paq')
    DataSet = rxFicha_Tecnica
    BCDToCurrency = False
    Left = 829
    Top = 209
  end
  object rxExplosion: TRxMemoryData
    FieldDefs = <>
    Left = 728
    Top = 384
    object StringField1: TStringField
      FieldName = 'sContrato'
    end
    object StringField5: TStringField
      FieldName = 'Tipo'
    end
    object StringField9: TStringField
      FieldName = 'Espacio'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Nivel'
    end
    object StringField6: TStringField
      FieldName = 'Id'
    end
    object StringField7: TStringField
      DisplayWidth = 250
      FieldName = 'Descripcion'
      Size = 250
    end
    object StringField8: TStringField
      FieldName = 'Unidad'
    end
    object FloatField4: TFloatField
      FieldName = 'Cantidad'
    end
    object FloatField5: TFloatField
      FieldName = 'CostoMN'
      currency = True
    end
    object FloatField6: TFloatField
      FieldName = 'CostoDLL'
      currency = True
    end
    object FloatField2: TFloatField
      FieldName = 'CostoMNAnexo'
      currency = True
    end
    object FloatField3: TFloatField
      FieldName = 'CostoDLLAnexo'
      currency = True
    end
  end
  object db_Explosion: TfrxDBDataset
    UserName = 'db_Explosion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'Tipo=Tipo'
      'Espacio=Espacio'
      'Nivel=Nivel'
      'Id=Id'
      'Descripcion=Descripcion'
      'Unidad=Unidad'
      'Cantidad=Cantidad'
      'CostoMN=CostoMN'
      'CostoDLL=CostoDLL'
      'CostoMNAnexo=CostoMNAnexo'
      'CostoDLLAnexo=CostoDLLAnexo')
    DataSet = rxExplosion
    BCDToCurrency = False
    Left = 757
    Top = 385
  end
  object herramientas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = herramientasCalcFields
    AfterInsert = herramientasAfterInsert
    BeforePost = herramientasBeforePost
    AfterPost = herramientasAfterPost
    BeforeDelete = herramientasBeforeDelete
    AfterDelete = herramientasAfterDelete
    OnDeleteError = herramientasDeleteError
    OnPostError = herramientasPostError
    SQL.Strings = (
      'Select * from recursosherramientasnuevos Where'
      
        'sContrato = :Contrato And sWbs = :wbs and sNumeroActividad = :ac' +
        'tividad and sSimbolo <> '#39'*'#39'  Order By sNumeroPaquete,fila, sIdHe' +
        'rramientas'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 269
    Top = 542
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object herramientassContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object herramientassWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object herramientassNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 15
    end
    object herramientassIdHerramientas: TStringField
      FieldName = 'sIdHerramientas'
      Required = True
      OnChange = herramientassIdHerramientasChange
      Size = 25
    end
    object herramientasdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '#,0.00000'
    end
    object herramientasdRendimiento: TFloatField
      FieldName = 'dRendimiento'
      DisplayFormat = '#,0.00000'
    end
    object herramientasdCostoMN: TFloatField
      FieldName = 'dCostoMN'
      currency = True
    end
    object herramientasdCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      currency = True
    end
    object herramientassDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Calculated = True
    end
    object herramientassNumeroPaquete: TStringField
      FieldName = 'sNumeroPaquete'
    end
    object herramientasfila: TIntegerField
      FieldName = 'fila'
    end
    object herramientassSimbolo: TStringField
      FieldName = 'sSimbolo'
    end
    object herramientasdCostoTotalMN: TFloatField
      FieldName = 'dCostoTotalMN'
      currency = True
    end
    object herramientasdCostoTotalDLL: TFloatField
      FieldName = 'dCostoTotalDLL'
      currency = True
    end
    object herramientaseTipoHerramienta: TStringField
      FieldName = 'eTipoHerramienta'
      Required = True
      Size = 8
    end
  end
  object MenuDos: TPopupMenu
    OnPopup = MenuDosPopup
    Left = 465
    Top = 528
    object EliminarRegistro1: TMenuItem
      Tag = 3
      Caption = 'Eliminar Registro'
      ImageIndex = 5
      OnClick = EliminarRegistro1Click
    end
    object EliminarTodoslosRegistros1: TMenuItem
      Caption = 'Eliminar Todos los Registros'
      ImageIndex = 5
      OnClick = EliminarTodoslosRegistros1Click
    end
    object InsertarCatalogodeMateriales1: TMenuItem
      Caption = 'Insertar Catalogo de Materiales'
      ImageIndex = 10
      Visible = False
      OnClick = InsertarCatalogodeMateriales1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    Left = 1072
    Top = 80
  end
  object mdGrafica: TRxMemoryData
    FieldDefs = <
      item
        Name = 'sTipoActividad'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'sWbs'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'dFechaInicio'
        DataType = ftDateTime
      end
      item
        Name = 'dFechaFinal'
        DataType = ftDateTime
      end
      item
        Name = 'iColor'
        DataType = ftInteger
      end>
    OnFilterRecord = mdGraficaFilterRecord
    Left = 1072
    Top = 112
  end
  object roqAnexo: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 594
    Top = 68
  end
  object SaveDialog1: TSaveDialog
    Left = 344
    Top = 64
  end
  object ds_anexos: TDataSource
    AutoEdit = False
    DataSet = Anexos
    Left = 143
    Top = 240
  end
  object Anexos: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = PaquetesCalcFields
    SQL.Strings = (
      'select * from anexos order by iOrden')
    Params = <>
    Left = 184
    Top = 233
  end
  object MenuTres: TPopupMenu
    Left = 505
    Top = 528
    object MenuItem1: TMenuItem
      Tag = 3
      Caption = 'Nueva Cuadrila'
      ImageIndex = 6
      ShortCut = 16462
      OnClick = MenuItem1Click
    end
  end
end
