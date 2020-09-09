object frmAsistencias: TfrmAsistencias
  Left = 336
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asistencias de Personal'
  ClientHeight = 661
  ClientWidth = 1178
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelGlobal: TPanel
    Left = 0
    Top = 49
    Width = 1178
    Height = 612
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1083
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 392
      Height = 610
      Align = alLeft
      TabOrder = 0
      object cxGridEmpleado: TcxGrid
        Left = 1
        Top = 1
        Width = 384
        Height = 608
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.InfoPanel.Visible = True
          OnCellClick = cxGridDBTableView4CellClick
          DataController.DataSource = dsEmpresa
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CodigoPersonal'
            Width = 76
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Nombre del Empleado'
            DataBinding.FieldName = 'Nombre'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 222
          end
          object colEmpresa: TcxGridDBColumn
            DataBinding.FieldName = 'Empresa'
            Visible = False
            GroupIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object Grid_Bitacora: TcxGrid
        Left = 1
        Top = 1
        Width = 384
        Height = 608
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object BView_Empleados: TcxGridDBTableView
          OnDblClick = BView_EmpleadosDblClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.InfoPanel.Visible = True
          OnCellClick = BView_EmpleadosCellClick
          DataController.DataSource = ds_empleados
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object BView_EmpleadosColumn2: TcxGridDBColumn
            Caption = 'Area'
            DataBinding.FieldName = 'Departamento'
            Visible = False
            Width = 65
          end
          object BView_EmpleadosColumn1: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CodigoPersonal'
            Width = 81
          end
          object mDescripcion: TcxGridDBColumn
            Caption = 'Nombre del Empleado'
            DataBinding.FieldName = 'NombreCompleto'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 268
          end
          object colCheck: TcxGridDBColumn
            DataBinding.FieldName = 'Activo'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Visible = False
            Width = 31
            IsCaptionAssigned = True
          end
        end
        object Grid_BitacoraLevel1: TcxGridLevel
          GridView = BView_Empleados
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 385
        Top = 1
        Width = 6
        Height = 608
        AlignSplitter = salRight
      end
    end
    object PanelCenral: TPanel
      Left = 393
      Top = 1
      Width = 784
      Height = 610
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 689
      object cxAsistencia: TcxGrid
        Left = 1
        Top = 1
        Width = 782
        Height = 608
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        Visible = False
        ExplicitWidth = 687
        object cxGridDBTableView3: TcxGridDBTableView
          OnDblClick = CxGridAsistenciaPersonalDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = DsDiasM
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Total'
            end
            item
              Format = 'Total Generador'
              Kind = skCount
              Column = cxGridDBColumn16
              DisplayText = 'Total Generador'
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Proyecto'
            DataBinding.FieldName = 'IdProyecto'
            Options.Editing = False
            Width = 39
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 48
          end
          object cxGridDBTableView3Column2: TcxGridDBColumn
            Caption = 'Hora de entrada'
            DataBinding.FieldName = 'HoraEntrada'
            Width = 77
          end
          object cxGridDBTableView3Column3: TcxGridDBColumn
            AlternateCaption = 'Hora de salida'
            DataBinding.FieldName = 'HoraSalida'
            Width = 77
          end
          object cxGridDBTableView3Column1: TcxGridDBColumn
            Caption = 'horas de Jornada'
            DataBinding.FieldName = 'Jornada'
            Width = 113
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'Asistencia'
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'Nota'
            HeaderAlignmentHorz = taCenter
            Width = 44
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxGridAsistencia: TcxGrid
        Left = 1
        Top = 1
        Width = 782
        Height = 608
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        Visible = False
        ExplicitWidth = 687
        object CxGridAsistenciaPersonal: TcxGridDBTableView
          OnDblClick = CxGridAsistenciaPersonalDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = ds_asistencias
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Total'
            end
            item
              Format = 'Total Generador'
              Kind = skCount
              Column = CxColumnCxGridMoePersonalColumn3
              DisplayText = 'Total Generador'
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxOrdenar: TcxGridDBColumn
            DataBinding.FieldName = 'FechaHoraRegistro'
            Options.Editing = False
            Width = 100
          end
          object CxOrdenaPersonal: TcxGridDBColumn
            Caption = 'Embarcaci'#243'n'
            DataBinding.FieldName = 'Embarcacion'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 224
          end
          object CxColumnCxGridMoePersonalColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Turno'
            HeaderAlignmentHorz = taCenter
            Width = 95
          end
          object CxColumnCxGridMoePersonalColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Guardia'
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
        end
        object CxLevel1: TcxGridLevel
          GridView = CxGridAsistenciaPersonal
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1178
    Height = 49
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1083
    DesignSize = (
      1178
      49)
    object Label1: TLabel
      Left = 214
      Top = 17
      Width = 66
      Height = 15
      Anchors = [akRight]
      Caption = 'Fecha Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 418
      Top = 17
      Width = 82
      Height = 15
      Anchors = [akRight]
      Caption = 'Fecha Termino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 644
      Top = 17
      Width = 44
      Height = 15
      Anchors = [akRight]
      Caption = 'Guardia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Asistencias de Personal'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dFechaInicio: TcxDateEdit
      Left = 286
      Top = 15
      Anchors = [akRight]
      ParentFont = False
      Properties.OnChange = dFechaInicioPropertiesChange
      TabOrder = 0
      OnKeyUp = GlobalKeyUp
      Width = 121
    end
    object dFechaTermino: TcxDateEdit
      Left = 506
      Top = 15
      Anchors = [akRight]
      ParentFont = False
      Properties.OnChange = dFechaTerminoPropertiesChange
      TabOrder = 1
      OnKeyDown = dFechaTerminoKeyDown
      OnKeyUp = GlobalKeyUp
      Width = 121
    end
    object cxImprimir: TcxButton
      Left = 984
      Top = 9
      Width = 91
      Height = 35
      Anchors = [akRight]
      Caption = 'Imprimir'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 3
      OnClick = cxImprimirClick
    end
    object cbGuardias: TcxLookupComboBox
      Left = 696
      Top = 15
      Anchors = [akRight]
      ParentFont = False
      Properties.KeyFieldNames = 'IdGuardia'
      Properties.ListColumns = <
        item
          FieldName = 'Guardia'
        end>
      Properties.ListSource = dsGuardias
      Properties.OnChange = cbGuardiasPropertiesChange
      TabOrder = 4
      OnExit = cbGuardiasExit
      Width = 280
    end
    object cxImprimeHorarios: TcxButton
      Left = 1083
      Top = 8
      Width = 91
      Height = 35
      Anchors = [akRight]
      Caption = 'Horarios'
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 5
      OnClick = cxImprimeHorariosClick
    end
  end
  object ds_asistencias: TDataSource
    DataSet = asistencias
    Left = 24
    Top = 360
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
    ReportOptions.LastChange = 43516.076135682870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   xCaracter : byte ;'
      '   dJornadasNormales,'
      '   dJornadasExtras : Double ;'
      '   Separador : string;'
      '   Cadena    : string;'
      '   mes, dia : string;'
      '   diasTotales : integer;'
      '   SumaTotal : double;'
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '   dJornadasNormales := 0 ;'
      '   dJornadasExtras := 0 ;'
      'end;'
      ''
      
        'procedure ReporteDiarioBarcoOnBeforePrint(Sender: TfrxComponent)' +
        ';'
      'var'
      '   FecAux : tDateTime;'
      '   Resultado : boolean;'
      '   iDia, iLeft : double;'
      'begin'
      ''
      '   try'
      
        '     FecAux := StrToDate('#39'29/02/'#39'+copy(dateTostr(<fecha_final>),' +
        '7,4));'
      '     Resultado := True;'
      '   except'
      '     Resultado := False;'
      '   end;'
      ''
      '    mes    := copy(dateTostr(<fecha_final>),4,2);'
      ''
      
        '    if (StrToInt(mes) =1) or (StrToInt(mes)=3) or (StrToInt(mes)' +
        '=5) or (StrToInt(mes)=7) or (StrToInt(mes)=8) or (StrToInt(mes)=' +
        '10) or (StrToInt(mes) = 12) then'
      '       diasTotales := 31;'
      ''
      '    if (StrToInt(mes)=2) then'
      '       diasTotales := 28;'
      ''
      '    if (StrToInt(mes)=2) and (Resultado =True) then'
      '       diasTotales := 29;'
      ''
      
        '    if (StrToInt(mes)=4) or (StrToInt(mes)=6) or (StrToInt(mes)=' +
        '9) or (StrToInt(mes)=11) then'
      '       diasTotales := 30;'
      ''
      '    memo100.text := '#39'1'#39' ;'
      '    memo101.text := '#39'2'#39' ;'
      '    memo102.text := '#39'3'#39' ;'
      '    memo103.text := '#39'4'#39' ;'
      '    memo104.text := '#39'5'#39' ;'
      '    memo105.text := '#39'6'#39' ;'
      '    memo106.text := '#39'7'#39' ;'
      '    memo107.text := '#39'8'#39' ;'
      '    memo108.text := '#39'9'#39' ;'
      '    memo109.text := '#39'10'#39' ;'
      '    memo110.text := '#39'11'#39' ;'
      '    memo111.text := '#39'12'#39' ;'
      '    memo112.text := '#39'13'#39' ;'
      '    memo113.text := '#39'14'#39' ;'
      '    memo114.text := '#39'15'#39' ;'
      '    memo115.text := '#39'16'#39' ;'
      '    memo116.text := '#39'17'#39' ;'
      '    memo117.text := '#39'18'#39' ;'
      '    memo118.text := '#39'19'#39' ;'
      '    memo119.text := '#39'20'#39' ;'
      '    memo120.text := '#39'21'#39' ;'
      '    memo121.text := '#39'22'#39' ;'
      '    memo122.text := '#39'23'#39' ;'
      '    memo123.text := '#39'24'#39' ;'
      '    memo124.text := '#39'25'#39' ;'
      '    memo125.text := '#39'26'#39' ;'
      '    memo126.text := '#39'27'#39' ;'
      '    memo127.text := '#39'28'#39' ;'
      '    memo128.text := '#39'29'#39' ;'
      '    memo129.text := '#39'30'#39' ;'
      ''
      '    if (StrToInt(mes) = 2) then'
      '         memo129.text := '#39#39' ;'
      ''
      '    if (StrToInt(mes) = 2)  and (Resultado =False) then'
      '        memo128.text := '#39#39' ;'
      ''
      ''
      
        '    if (StrToInt(mes) = 1) or (StrToInt(mes) = 3)  or (StrToInt(' +
        'mes) = 5)  or (StrToInt(mes) = 7)'
      
        '        or (StrToInt(mes) = 8)  or (StrToInt(mes) = 10)  or (Str' +
        'ToInt(mes) = 12) then'
      '         memo130.text := '#39'31'#39' ;'
      ''
      ''
      '    //Ahora oculta o mostrar si el mes tiene 30, 29, o 28'
      
        '    if (StrToInt(mes) = 2) or (StrToInt(mes) = 4) or (StrToInt(m' +
        'es) = 6)  or (StrToInt(mes) = 9)  or (StrToInt(mes) = 11) then'
      '    begin'
      '        if (StrToInt(mes) = 2) then'
      '           iDia := 74'
      '        else'
      '           iDia := 5;'
      ''
      '        if (StrToInt(mes)=2) and (Resultado =True) then'
      '          iDia := 40;'
      ''
      ''
      '        memo59.Width  := memo59.Width + iDia;'
      '        memo51.Width  := memo51.Width + iDia;'
      '        memo158.Width := memo158.Width + iDia;'
      ''
      '        //Salarios}'
      ''
      '        memo22.Left  := memo22.Left + iDia;'
      '        memo48.Left  := memo48.Left + iDia;'
      '        memo157.Left := memo157.Left + iDia;'
      ''
      '        iLeft := ( memo22.Left + (memo22.Width+1));'
      ''
      '        memo37.Left  := iLeft ;'
      '        memo39.Left  := iLeft ;'
      '        memo92.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo37.Width+1);'
      ''
      '        //Dia 1'
      '        memo100.Left  := iLeft ;'
      '        memo1.Left    := iLeft ;'
      '        memo156.Left  := iLeft ;'
      ''
      ''
      '        iLeft := iLeft + (memo100.Width+1);'
      ''
      '        //Dia 2'
      '        memo101.Left  := iLeft;'
      '        memo4.Left    := iLeft;'
      '        memo155.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo101.Width+1);'
      ''
      '        //Dia 3'
      '        memo102.Left  := iLeft;'
      '        memo47.Left   := iLeft;'
      '        memo154.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo102.Width+1);'
      ''
      '        //Dia 4'
      ''
      '        memo103.Left  := iLeft;'
      '        memo5.Left    := iLeft;'
      '        memo153.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo103.Width+1);'
      ''
      '        //Dia 5'
      '        memo104.Left  := iLeft;'
      '        memo7.Left    := iLeft  ;'
      '        memo152.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo104.Width+1);'
      ''
      '        //Dia 6'
      '        memo105.Left  := iLeft;'
      '        memo8.Left    := iLeft  ;'
      '        memo151.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo105.Width+1);'
      ''
      '        //Dia 7'
      '        memo106.Left  := iLeft ;'
      '        memo9.Left    := iLeft   ;'
      '        memo150.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo106.Width+1);'
      ''
      '        //Dia 8'
      ''
      '        memo107.Left  := iLeft ;'
      '        memo10.Left   := iLeft  ;'
      '        memo149.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo107.Width+1);'
      ''
      '        //Dia 9'
      '        memo108.Left  := iLeft ;'
      '        memo11.Left   := iLeft ;'
      '        memo148.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo108.Width+1);'
      ''
      '        //Dia 10'
      '        memo109.Left  := iLeft ;'
      '        memo13.Left   := iLeft  ;'
      '        memo147.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo109.Width+1);'
      ''
      '        //Dia 11'
      '        memo110.Left  := iLeft ;'
      '        memo14.Left   := iLeft  ;'
      '        memo146.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo110.Width+1);'
      ''
      '        //Dia 12'
      '        memo111.Left  := iLeft ;'
      '        memo15.Left   := iLeft  ;'
      '        memo145.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo111.Width+1);'
      ''
      '        //Dia 13'
      '        memo112.Left  := iLeft ;'
      '        memo16.Left   := iLeft  ;'
      '        memo144.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo112.Width+1);'
      ''
      '        //Dia 14'
      '        memo113.Left  := iLeft ;'
      '        memo17.Left   := iLeft  ;'
      '        memo143.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo113.Width+1);'
      ''
      '        //Dia 15'
      '        memo114.Left  := iLeft ;'
      '        memo25.Left   := iLeft  ;'
      '        memo142.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo114.Width+1);'
      ''
      '        //Dia 16'
      '        memo115.Left  := iLeft ;'
      '        memo27.Left   := iLeft  ;'
      '        memo141.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo115.Width+1);'
      ''
      '        //Dia 17'
      '        memo116.Left  := iLeft ;'
      '        memo28.Left   := iLeft  ;'
      '        memo140.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo116.Width+1);'
      ''
      '        //Dia 18'
      '        memo117.Left  := iLeft;'
      '        memo29.Left   := iLeft;'
      '        memo139.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo117.Width+1);'
      ''
      '        //Dia 19'
      '        memo118.Left  := iLeft ;'
      '        memo30.Left   := iLeft;'
      '        memo138.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo118.Width+1);'
      ''
      '        //Dia 20'
      '        memo119.Left  := iLeft;'
      '        memo31.Left   := iLeft;'
      '        memo137.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo119.Width+1);'
      ''
      '        //Dia 21'
      '        memo120.Left  := iLeft;'
      '        memo32.Left   := iLeft;'
      '        memo136.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo120.Width+1);'
      ''
      '        //Dia 22'
      '        memo121.Left  := iLeft;'
      '        memo33.Left   := iLeft;'
      '        memo135.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo121.Width+1);'
      ''
      '        //Dia 23'
      '        memo122.Left  := iLeft;'
      '        memo34.Left   := iLeft;'
      '        memo134.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo122.Width+1);'
      ''
      '        //Dia 24'
      '        memo123.Left  := iLeft;'
      '        memo35.Left   := iLeft;'
      '        memo133.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo123.Width+1);'
      ''
      '        //Dia 25'
      '        memo124.Left  := iLeft;'
      '        memo38.Left   := iLeft;'
      '        memo132.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo124.Width+1);'
      ''
      '        //Dia 26'
      '        memo125.Left  := iLeft;'
      '        memo40.Left   := iLeft;'
      '        memo131.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo125.Width+1);'
      ''
      '        //Dia 27'
      '        memo126.Left  := iLeft;'
      '        memo41.Left   := iLeft;'
      '        memo99.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo126.Width+1);'
      ''
      '        //Dia 28'
      '        memo127.Left  := iLeft;'
      '        memo42.Left   := iLeft;'
      '        memo98.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo127.Width+1);'
      ''
      '        //Dia 29'
      '        memo128.Left  := iLeft;'
      '        memo43.Left   := iLeft;'
      '        memo91.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo128.Width+1);'
      ''
      '        //Dia 30'
      '        memo129.Left  := iLeft;'
      '        memo44.Left   := iLeft;'
      '        memo56.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo129.Width+1);'
      ''
      '        if (StrToInt(mes) = 2)  and (Resultado =True) then'
      '        begin'
      '           memo129.Visible  := False;'
      '           memo44.Visible   := False;'
      '           memo56.Visible   := False;'
      '        end;'
      ''
      '        if (StrToInt(mes) = 2) and (Resultado =False) then'
      '        begin'
      '           memo128.Visible  := False;'
      '           memo43.Visible   := False;'
      '           memo91.Visible   := False;'
      ''
      '           memo129.Visible  := False;'
      '           memo44.Visible   := False;'
      '           memo56.Visible   := False;'
      '        end;'
      ''
      '        memo130.Visible:= False;'
      '        memo46.Visible := False;'
      '        memo54.Visible := False;'
      ''
      '        memo26.Left := memo26.Left - 6;'
      '        memo2.Left  := memo2.Left  - 6;'
      '        memo20.Left := memo20.Left - 6;'
      ''
      '    end;'
      'end;'
      ''
      'procedure Memo55OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  mes : string;'
      'begin'
      
        '    Cadena := '#39'DEL '#39'+ '#39'01'#39' +'#39' AL '#39'+  copy(dateToStr(<fecha_final' +
        '>),1,2) +'#39' DE '#39'+ ;'
      '    mes    := copy(dateTostr(<fecha_final>),4,2);'
      '    if StrToInt(mes)=1 then'
      '       mes := '#39'ENERO'#39
      '    else'
      '    if StrToInt(mes)=2 then'
      '       mes := '#39'FEBRERO'#39
      '    else'
      '    if StrToInt(mes)=3 then'
      '       mes := '#39'MARZO'#39
      '    else'
      '    if StrToInt(mes)=4 then'
      '       mes := '#39'ABRIL'#39
      '    else'
      '    if StrToInt(mes)=5 then'
      '       mes := '#39'MAYO'#39
      '    else'
      '    if StrToInt(mes)=6 then'
      '       mes := '#39'JUNIO'#39
      '    else'
      '    if StrToInt(mes)=7 then'
      '       mes := '#39'JULIO'#39
      '    else'
      '    if StrToInt(mes)=8 then'
      '       mes := '#39'AGOSTO'#39
      '    else'
      '    if StrToInt(mes)=9 then'
      '       mes := '#39'SEPTIEMBRE'#39
      '    else'
      '    if StrToInt(mes)=10 then'
      '       mes := '#39'OCTUBRE'#39
      '    else'
      '    if StrToInt(mes)=11 then'
      '       mes := '#39'NOVIEMBRE'#39
      '    else'
      '    if StrToInt(mes)=12 then'
      '       mes := '#39'DICIEMBRE'#39';'
      ''
      
        '    memo55.Text := cadena +mes+ '#39' DEL '#39'+ copy(dateTostr(<fecha_f' +
        'inal>),7,4);'
      'end;'
      ''
      ''
      'procedure Memo24OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COMPACTO> = '#39'Si'#39' then'
      '    begin'
      '       memo24.Color := $00D8D8D8 ;'
      '       memo59.Color := $00D8D8D8 ;'
      '       memo22.Color  := $00D8D8D8 ;'
      '       memo100.Color := $00D8D8D8 ;'
      '       memo101.Color := $00D8D8D8 ;'
      '       memo102.Color := $00D8D8D8 ;'
      '       memo103.Color := $00D8D8D8 ;'
      '       memo104.Color := $00D8D8D8 ;'
      '       memo105.Color := $00D8D8D8 ;'
      '       memo106.Color := $00D8D8D8 ;'
      '       memo107.Color := $00D8D8D8 ;'
      '       memo108.Color := $00D8D8D8 ;'
      '       memo109.Color := $00D8D8D8 ;'
      '       memo110.Color := $00D8D8D8 ;'
      '       memo111.Color := $00D8D8D8 ;'
      '       memo112.Color := $00D8D8D8 ;'
      '       memo113.Color := $00D8D8D8 ;'
      '       memo114.Color := $00D8D8D8 ;'
      '       memo115.Color := $00D8D8D8 ;'
      '       memo116.Color := $00D8D8D8 ;'
      '       memo117.Color := $00D8D8D8 ;'
      '       memo118.Color := $00D8D8D8 ;'
      '       memo119.Color := $00D8D8D8 ;'
      '       memo120.Color := $00D8D8D8 ;'
      '       memo121.Color := $00D8D8D8 ;'
      '       memo122.Color := $00D8D8D8 ;'
      '       memo123.Color := $00D8D8D8 ;'
      '       memo124.Color := $00D8D8D8 ;'
      '       memo125.Color := $00D8D8D8 ;'
      '       memo126.Color := $00D8D8D8 ;'
      '       memo127.Color := $00D8D8D8 ;'
      '       memo128.Color := $00D8D8D8 ;'
      '       memo129.Color := $00D8D8D8 ;'
      '       memo130.Color := $00D8D8D8 ;'
      '       memo26.Color  := $00D8D8D8 ;'
      '    end'
      '    else'
      '    begin'
      ''
      '    end;'
      'end;'
      ''
      'procedure Memo2OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '   SumaTotal := SumaTotal + (<dsGeneradorFolio."dCantTotal">*(<d' +
        'sGeneradorFolio."Salario">/diasTotales));'
      'end;'
      ''
      ''
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = frxAsistenciaGetValue
    OnReportPrint = 'no '
    Left = 104
    Top = 168
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
        DataSet = frmDiarioTurno2.dsGeneradorFolio
        DataSetName = 'dsGeneradorFolio'
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
    object ReporteDiarioBarco: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 3
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 162.519645980000000000
        Top = 18.897650000000000000
        Width = 1556.410454000000000000
        AllowSplit = True
        Condition = 'dsConfiguracion."sContrato"'
        ReprintOnNewPage = True
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 35.015770000000000000
          Width = 1515.591505590000000000
          Height = 52.913405350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Top = 139.842480630000000000
          Width = 74.614730580000000000
          Height = 22.677165350000000000
          Visible = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'M.N.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1391.718517874874000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1355.507843309748000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1319.297168744622000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1283.086494168850000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1246.875819603724000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1210.665145038598000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1174.454470473472000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1138.243795908345000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1102.033121343219000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1065.822446778093000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1029.611772202321000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          ShiftMode = smDontShift
          Left = 993.401097637195100000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          ShiftMode = smDontShift
          Left = 957.190423072068900000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          ShiftMode = smDontShift
          Left = 920.979748506942600000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          ShiftMode = smDontShift
          Left = 884.769073941816300000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          ShiftMode = smDontShift
          Left = 848.558399376690200000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          ShiftMode = smDontShift
          Left = 812.347724811563900000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          ShiftMode = smDontShift
          Left = 776.137050235792500000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          ShiftMode = smDontShift
          Left = 739.926375670666100000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          ShiftMode = smDontShift
          Left = 703.715701105540100000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          ShiftMode = smDontShift
          Left = 667.505026540413800000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          ShiftMode = smDontShift
          Left = 631.294351975287600000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          ShiftMode = smDontShift
          Left = 595.083677410161300000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          ShiftMode = smDontShift
          Left = 558.873002845035200000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          ShiftMode = smDontShift
          Left = 522.662328269263600000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          ShiftMode = smDontShift
          Left = 486.451653704137300000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          ShiftMode = smDontShift
          Left = 450.240979139011200000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          ShiftMode = smDontShift
          Left = 414.030304573885000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          ShiftMode = smDontShift
          Left = 377.819630008758700000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          ShiftMode = smDontShift
          Left = 341.608955443632500000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          ShiftMode = smDontShift
          Left = 305.582765040000000000
          Top = 139.842480630000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Left = 303.496094720000000000
          Top = 139.842480630000000000
          Height = 22.677165350000000000
          Visible = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'SUELDO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Left = 18.897650000000000000
          Top = 139.842480630000000000
          Width = 64.251985590000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          ShiftMode = smDontShift
          Left = 83.149660000000000000
          Top = 139.842480630000000000
          Width = 223.748043700000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Width = 151.181102360000000000
          Height = 41.574793390000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          Left = 1243.465370000000000000
          Width = 151.181102360000000000
          Height = 49.133853390000000000
          Visible = False
          DataField = 'bImagen'
          DataSet = frmReportePeriodo.dsConfiguracion
          DataSetName = 'dsConfiguracion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 35.905533780000000000
          Top = 57.133889999999990000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CODIGO DE COLORES')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 154.519790000000000000
          Top = 57.070831970000000000
          Width = 336.378170000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 566.929500000000000000
          Top = 21.456710000000000000
          Width = 336.378170000000000000
          Height = 22.677170240000000000
          OnBeforePrint = 'Memo50OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DIAS LABORADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 672.756340000000000000
          Top = 58.511771970000000000
          Width = 325.039580000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'Memo55OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 553.701048580000000000
          Top = 58.133890000000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PERIODO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 51.023558580000000000
          Top = 76.590600000000000000
          Width = 52.913346770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RETARDO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 111.606370000000000000
          Top = 76.590600000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1427.149601420000000000
          Top = 139.842610000000000000
          Width = 52.852252430000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 1421.103280000000000000
          Top = 26.456710000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 305.295071370000000000
          Top = 139.842610000000000000
          Height = 22.677165350000000000
          Visible = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'S. D.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 34.015770000000000000
          Top = 98.267780000000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'JUSTIFICADO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 111.496231420000000000
          Top = 98.267780000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16700346
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 179.196970000000000000
          Top = 98.267716540000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCUENTO')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 256.677431420000000000
          Top = 98.267716540000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 9803263
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 196.535560000000000000
          Top = 76.724409448818910000
          Width = 52.913346770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESPECIAL')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 256.629921259843000000
          Top = 76.724409450000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13434828
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 325.039580000000000000
          Top = 98.267780000000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VACACIONES')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 402.520041420000000000
          Top = 98.267780000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13296895
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 328.819110000000000000
          Top = 76.724409448818910000
          Width = 68.031466770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FIN SEMANA')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 402.520041420000000000
          Top = 76.724409448818910000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677172680000000000
        Top = 226.771800000000000000
        Width = 1556.410454000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = frmDiarioTurno2.dsGeneradorFolio
        DataSetName = 'dsGeneradorFolio'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 305.582765040000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad1"]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Width = 74.614730580000000000
          Height = 22.677165350000000000
          Visible = False
          OnAfterData = 'Memo2OnAfterData'
          OnBeforePrint = 'Memo2OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<dsGeneradorFolio."dCantTotal">*(<dsGeneradorFolio."Salario">/<' +
              'dsGeneradorFolio."DiasMes">)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 341.608955443632500000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo4OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad2"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 414.030304573885000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad4"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Left = 450.240979139011200000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad5"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 486.451653704137300000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo8OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad6"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 522.662328269263600000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad7"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 558.873002845035200000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad8"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          ShiftMode = smDontShift
          Left = 595.083677410161300000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad9"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          ShiftMode = smDontShift
          Left = 631.294351975287600000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad10"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          ShiftMode = smDontShift
          Left = 667.505026540413800000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad11"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Left = 703.715701105540100000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad12"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Left = 739.926375670666100000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad13"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 776.137050235792500000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad14"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Left = 848.558399376690200000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad16"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 884.769073941816300000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad17"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 920.979748506942600000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad18"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 957.190423072068900000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad19"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 993.401097637195100000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad20"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1029.611772202321000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad21"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1065.822446778093000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad22"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1102.033121343219000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad23"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1138.243795908345000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad24"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1174.454470473472000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo38OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad25"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1210.665145038598000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo40OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad26"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1246.875819603724000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo41OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad27"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1283.086494168850000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad28"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1319.297168744622000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo43OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad29"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1355.507843309748000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad30"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1391.718517874874000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo46OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad31"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          ShiftMode = smDontShift
          Left = 377.819630008758700000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo47OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad3"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 303.496094720000000000
          Height = 22.677165350000000000
          Visible = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."Salario"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          ShiftMode = smDontShift
          Left = 18.897650000000000000
          Width = 64.251985590000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Codigo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          ShiftMode = smDontShift
          Left = 83.149660000000000000
          Width = 223.748043700000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ' [dsGeneradorFolio."Nombre"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 812.347724811563900000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad15"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1427.149601420000000000
          Width = 52.852252430000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantTotal"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 305.295071370000000000
          Top = 0.000129369999996243
          Height = 22.677165350000000000
          Visible = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<dsGeneradorFolio."SD">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 355.275820000000000000
        Width = 1556.410454000000000000
        object Memo6: TfrxMemoView
          Left = 1368.189860000000000000
          Top = 20.338590000000010000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'Software No'#237'l Control de Personal *')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 1556.410454000000000000
        object Memo20: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Width = 74.614730580000000000
          Height = 22.677165350000000000
          Visible = False
          OnBeforePrint = 'Memo20OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<dsGeneradorFolio."dCantTotal">*(<dsGeneradorFolio."Salario' +
              '">/<dsGeneradorFolio."DiasMes">))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1427.149601420000000000
          Width = 52.852252430000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."dCantTotal">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          ShiftMode = smDontShift
          Left = 18.897650000000000000
          Width = 64.251985590000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1391.718517870000000000
          Width = 36.210674570000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1355.507843309748000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1319.297168744622000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1283.086494168850000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1246.875819603724000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1210.665145038598000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1174.454470473472000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1138.243795908345000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1102.033121343219000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1065.822446778093000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1029.611772202321000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          ShiftMode = smDontShift
          Left = 993.401097637195100000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          ShiftMode = smDontShift
          Left = 957.190423072068900000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          ShiftMode = smDontShift
          Left = 920.979748506942600000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          ShiftMode = smDontShift
          Left = 884.769073941816300000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          ShiftMode = smDontShift
          Left = 848.558399376690200000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          ShiftMode = smDontShift
          Left = 812.347724811563900000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          ShiftMode = smDontShift
          Left = 776.137050235792500000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          ShiftMode = smDontShift
          Left = 739.926375670666100000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          ShiftMode = smDontShift
          Left = 703.715701105540100000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          ShiftMode = smDontShift
          Left = 667.505026540413800000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          ShiftMode = smDontShift
          Left = 631.294351975287600000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          ShiftMode = smDontShift
          Left = 595.083677410161300000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          ShiftMode = smDontShift
          Left = 558.873002845035200000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          ShiftMode = smDontShift
          Left = 522.662328269263600000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          ShiftMode = smDontShift
          Left = 486.451653704137300000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          ShiftMode = smDontShift
          Left = 450.240979139011200000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          ShiftMode = smDontShift
          Left = 414.030304573885000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          ShiftMode = smDontShift
          Left = 377.819630008758700000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          ShiftMode = smDontShift
          Left = 341.608955443632500000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          ShiftMode = smDontShift
          Left = 305.582765040000000000
          Width = 36.210674565126220000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          ShiftMode = smDontShift
          Left = 303.496094720000000000
          Height = 22.677165350000000000
          Visible = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          ShiftMode = smDontShift
          Left = 83.149660000000000000
          Width = 223.748043700000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          ShiftMode = smDontShift
          Left = 305.295071370000000000
          Top = 0.000129370000024664
          Height = 22.677165350000000000
          Visible = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 0.000014650000000000
        Top = 204.094620000000000000
        Width = 1556.410454000000000000
        Condition = 'contrato."sContrato"'
        Stretched = True
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 184
  end
  object ds_empleados: TDataSource
    DataSet = empleados
    Left = 24
    Top = 280
  end
  object ds_folios: TDataSource
    AutoEdit = False
    DataSet = zFolios
    Left = 552
    Top = 176
  end
  object zFolios: TZReadOnlyQuery
    Connection = connection.zConnection
    AutoCalcFields = False
    SQL.Strings = (
      
        'select "<todos>" as sNumeroOrden, "<<Todos los Folios>>" as sIdF' +
        'olio from ordenesdetrabajo'
      'union'
      'select o.sNumeroOrden, o.sIdFolio from ordenesdetrabajo o'
      'where o.sContrato =:Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 1040
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 104
    Top = 128
  end
  object zContrato: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT sContrato,sMascara, mDescripcion FROM rd_proyectos')
    Left = 232
    Top = 320
  end
  object dsContrato: TDataSource
    DataSet = zContrato
    Left = 232
    Top = 360
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    Left = 416
    Top = 232
  end
  object dsEmbarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 368
    Top = 232
  end
  object empleados: TUniQuery
    Connection = connection.Uconnection
    Left = 22
    Top = 241
  end
  object asistencias: TUniQuery
    Connection = connection.Uconnection
    Left = 22
    Top = 319
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 272
    Top = 232
    object dxMemData1uno: TStringField
      FieldName = 'uno'
    end
    object dxMemData1dos: TIntegerField
      FieldName = 'dos'
    end
  end
  object Folios: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select '#39'<todos>'#39' as sNumeroOrden, '#39'<<Todos los Folios>>'#39' as sIdF' +
        'olio from ordenesdetrabajo'
      'union'
      'select o.sNumeroOrden, o.sIdFolio from ordenesdetrabajo o'
      'where o.sContrato =:Contrato')
    Left = 504
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end>
  end
  object Guardias: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT rg.IdGuardia,'
      
        'concat(rg.Guardia,'#39' '#39',(SELECT m.Embarcacion FROM master_embarcac' +
        'iones AS m WHERE m.IdEmbarcacion = rg.IdEmbarcacion)) AS Guardia'
      'FROM rh_guardias AS rg where rg.Activo = '#39'Si'#39
      'order by rg.iOrdenamiento')
    Left = 24
    Top = 153
  end
  object dsGuardias: TDataSource
    DataSet = Guardias
    Left = 24
    Top = 201
  end
  object generador_diario: TUniQuery
    Connection = connection.Uconnection
    Left = 288
    Top = 441
  end
  object dsRem: TDataSource
    DataSet = Reembolso
    Left = 362
    Top = 169
  end
  object Reembolso: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMaterno) as Nombre ' +
        'From rh_reembolso as r'
      'inner join master_personal as p on r.IdPersonal = p.IdPersonal '
      'where  Date(r.Fecha) Between :FechaI and :FechaF')
    Left = 738
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        Value = nil
      end>
  end
  object Personal: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT IdPersonal,'
      'concat(Nombre,'#39' '#39',APaterno,'#39' '#39',AMaterno) as Nombre'
      'FROM master_personal WHERE Activo = '#39'Si'#39';')
    Left = 162
    Top = 241
  end
  object dsPersonal: TDataSource
    DataSet = Personal
    Left = 162
    Top = 281
  end
  object zBonos: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMaterno) as Nombre,'
      'r.* From rh_bonos as r'
      'inner join master_personal as p on r.IdPersonal = p.IdPersonal '
      'where  Date(r.Fecha) Between :FechaI and :FechaF')
    Left = 403
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        Value = nil
      end>
  end
  object dsBonos: TDataSource
    DataSet = zBonos
    Left = 449
    Top = 170
  end
  object temG: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT rg.IdGuardia,'
      
        'concat(rg.IdGuardia,'#39' '#39',rg.Guardia,'#39' '#39',(SELECT m.Embarcacion FRO' +
        'M master_embarcaciones AS m WHERE m.IdEmbarcacion = rg.IdEmbarca' +
        'cion)) AS Guardia,'
      
        'concat(rg.Guardia,'#39' '#39',(SELECT m.Embarcacion FROM master_embarcac' +
        'iones AS m WHERE m.IdEmbarcacion = rg.IdEmbarcacion)) AS Guardia' +
        '2'
      'FROM rh_guardias AS rg'
      'order by rg.iOrdenamiento asc')
    Left = 104
    Top = 393
  end
  object dlgSavePDF: TSaveDialog
    DefaultExt = 'pdf'
    Left = 984
    Top = 328
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 1038
    Top = 327
  end
  object XML: TXMLDocument
    Left = 1036
    Top = 380
  end
  object DoctoXML: TUniQuery
    Connection = connection.Uconnection
    Left = 1036
    Top = 420
  end
  object dsDoctoXML: TDataSource
    DataSet = DoctoXML
    Left = 996
    Top = 420
  end
  object iconPDF_XML: TcxImageList
    FormatVersion = 1
    DesignInfo = 23331812
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          00090000000E0000000F00000010000000100000001100000011000000110000
          001200000012000000110000000C000000030000000000000000000000087B50
          43C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D59FFAA6C
          59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000000CAD73
          5FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1EDFFF8F1
          ECFFF8F0EBFFF8F0EAFFD5B6ADFF0000001100000000000000000000000CB077
          62FFFDFBFAFFF7EDE6FF5B524CFF4E443EFF4C413AFF484038FF463D36FF443A
          33FF413731FF3F362FFF3E352DFF3C312BFF393129FF382F27FF0000000BB079
          66FFFDFBFBFFF8EEE8FF5D544DFFFAF8F7FF4D433DFFF9F6F5FF473E37FFF9F4
          F2FF433932FFF7F1EFFF3F362FFFF7F0EDFFF7EEECFF393029FF0000000AB37C
          69FFFEFCFBFFF8F0EAFF5F564FFFFAF8F7FF4E443EFFF9F6F5FF494038FFF8F5
          F3FF453A35FFF7F3F0FF403730FFF7F0EEFF3C322CFF3A312BFF00000009B67F
          6CFFFEFDFCFFF9F0EBFF625952FF88817BFFFAF8F7FF857E78FF4B4139FFF9F6
          F3FF463D36FFF8F2F0FF413831FFF7F1EEFF3E332CFF3C312BFF00000009B983
          71FFFEFDFCFFFAF3EEFF645B55FFFAF9F8FF514740FFFAF8F6FF4D433CFFF9F6
          F5FFF9F5F2FFF9F3F2FF433932FFF7F2EFFF3F352DFF3D322CFF00000008BC88
          77FFFEFEFDFFFBF4EFFF675C56FFFBF9F8FF524841FFFAF8F7FF4E443EFFF9F7
          F5FF493F38FFF9F5F3FF443A33FFF8F2EFFF403630FF3E352DFF00000007BF8C
          7AFFFEFEFDFFFBF6F1FF685E59FF665C55FF635853FF5F564FFF5D524CFF594F
          49FF564B44FF524941FF4E453EFF4B413AFF493F38FF463D35FF00000006C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
          EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B000000000000000000000006C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
          F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B000000000000000000000005C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A000000000000000000000004C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000080000000000000000000000029775
          67C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927163C2000000050000000000000000000000010000
          0002000000030000000400000004000000050000000500000005000000060000
          0006000000060000000600000005000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          00090000000E0000000F00000010000000100000001100000011000000110000
          001200000012000000110000000C000000030000000000000000000000087B50
          43C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D59FFAA6C
          59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000000CAD73
          5FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1EDFFF8F1
          ECFFF8F0EBFFF8F0EAFFD5B6ADFF0000001100000000000000000000000CB077
          62FFFDFBFAFF7674D8FF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
          C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD0000000BB079
          66FFFDFBFBFF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
          EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF0000000AB37C
          69FFFEFCFBFF3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
          C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF00000009B67F
          6CFFFEFDFCFF4040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
          CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF00000009B983
          71FFFEFDFCFF4042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
          CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF00000008BC88
          77FFFEFEFDFF4243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
          F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF00000007BF8C
          7AFFFEFEFDFF7F7DE1FF4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
          CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD00000006C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
          EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B000000000000000000000006C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
          F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B000000000000000000000005C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A000000000000000000000004C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000080000000000000000000000029775
          67C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927163C2000000050000000000000000000000010000
          0002000000030000000400000004000000050000000500000005000000060000
          0006000000060000000600000005000000010000000000000000}
      end>
  end
  object zTiempo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMaterno) as Nombre,' +
        'r.IdGuardia,'
      'r.Nomina,r.IdTiempoExtra, r.IdPersonal, '
      'r.Nota, r.Monto, r.Fecha From rh_tiempoextra as r'
      'inner join master_personal as p on r.IdPersonal = p.IdPersonal '
      'where  Date(r.Fecha) Between :FechaI and :FechaF')
    Left = 280
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        Value = nil
      end>
  end
  object dsTiempo: TDataSource
    DataSet = zTiempo
    Left = 288
    Top = 368
  end
  object zAnticipo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select * from rh_anticipo')
    Left = 627
    Top = 231
  end
  object dsAnticipo: TDataSource
    DataSet = zAnticipo
    Left = 619
    Top = 175
  end
  object temE: TUniQuery
    Connection = connection.Uconnection
    Left = 232
    Top = 401
  end
  object DiasLaboradosM: TUniQuery
    Connection = connection.Uconnection
    Left = 165
    Top = 402
  end
  object DsDiasM: TDataSource
    DataSet = DiasLaboradosM
    Left = 165
    Top = 434
  end
  object Proyecto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select sNumeroOrden,sIdFolio from  ordenesdetrabajo;')
    Left = 165
    Top = 314
  end
  object dsProyecto: TDataSource
    DataSet = Proyecto
    Left = 165
    Top = 362
  end
  object zProyec: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select v.IdProyecto'
      'from  rh_verificar_manual as v'
      'Group By v.IdProyecto;')
    Left = 231
    Top = 442
  end
  object DiasPersonal: TUniQuery
    Connection = connection.Uconnection
    Left = 23
    Top = 394
  end
  object dsDiasPersonal: TDataSource
    DataSet = DiasPersonal
    Left = 23
    Top = 434
  end
  object Ubicacion: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select  sIdPlataforma, sDescripcion, lStatus,sIdActivo '
      'from plataformas where lStatus = '#39'Activa'#39)
    Left = 103
    Top = 242
  end
  object dsUbicacion: TDataSource
    DataSet = Ubicacion
    Left = 103
    Top = 282
  end
  object Puesto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select pm.IdPuestoEmpleado,'
      'concat (mp.Nombre,'#39' '#39',es.Especialidad) as Puesto'
      'from rh_puesto_empleado as pm'
      'inner join master_puesto as mp on (mp.IdPuesto = pm.IdPuesto)'
      
        'inner join master_puesto_especialidad as es on (es.IdEspecialida' +
        'd = pm.IdEspecialidad)')
    Left = 104
    Top = 312
  end
  object dsPuesto: TDataSource
    DataSet = Puesto
    Left = 104
    Top = 352
  end
  object dsTemG: TDataSource
    DataSet = temG
    Left = 103
    Top = 434
  end
  object Empresa: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select mp.IdPersonal, mp.CodigoPersonal, '
      'concat (mp.Nombre,'#39' '#39',mp.APaterno,'#39' '#39',mp.AMaterno) as Nombre, '
      
        '(Select FK_Titulo from master_empresa as me where mp.IdEmpresa =' +
        ' me.IdEmpresa) as Empresa'
      'from master_personal as mp where mp.Activo='#39'Si'#39)
    Left = 103
    Top = 202
  end
  object dsEmpresa: TDataSource
    DataSet = Empresa
    Left = 23
    Top = 122
  end
  object zGuar: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT rg.IdGuardiaDetalle,'
      
        'concat((Select g.Guardia from rh_guardias as g where g.IdGuardia' +
        ' = rg.IdGuardia),'
      
        #39' '#39',FechaLetra(rg.FechaInicio),'#39' al '#39',FechaLetra(rg.FechaFinal))' +
        ' AS Guardia'
      'FROM rh_guardia_detalle as rg')
    Left = 1043
    Top = 225
  end
  object dsGuar: TDataSource
    DataSet = zGuar
    Left = 1003
    Top = 225
  end
  object frxMailNominas: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 163
    Top = 186
  end
  object zValidar: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT * FROM validacion_nomina')
    Left = 739
    Top = 273
  end
end
