object frmFirmasNota: TfrmFirmasNota
  Left = 381
  Top = 353
  BorderIcons = [biSystemMenu]
  Caption = 'Firmantes Nota de Campo'
  ClientHeight = 460
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object panelDatos: TPanel
    Left = 0
    Top = 214
    Width = 1103
    Height = 211
    Align = alBottom
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1101
      Height = 209
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxDescripcion: TcxDBTextEdit
        Left = 316
        Top = 40
        DataBinding.DataField = 'sDescripcion'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 5
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 317
      end
      object cxFichaIzquierda: TcxDBTextEdit
        Left = 925
        Top = 11
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 16
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 162
      end
      object cxFichaCentro: TcxDBTextEdit
        Left = 925
        Top = 40
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 17
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 162
      end
      object cxFichaDerecha: TcxDBTextEdit
        Left = 925
        Top = 69
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 18
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 162
      end
      object cxFichaAdicional: TcxDBTextEdit
        Left = 925
        Top = 98
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 19
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 162
      end
      object cxModuloReporte: TcxDBLookupComboBox
        Left = 316
        Top = 11
        DataBinding.DataField = 'IdModuloReporte'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdModuloReporte'
        Properties.ListColumns = <
          item
            FieldName = 'VistaUsuario'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_modulo_reporte
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
        Width = 552
      end
      object cxFicha1: TcxDBTextEdit
        Left = 69
        Top = 37
        DataBinding.DataField = 'sFicha1'
        DataBinding.DataSource = ds_firma2
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
        Width = 121
      end
      object cxFicha2: TcxDBTextEdit
        Left = 69
        Top = 66
        DataBinding.DataField = 'sFicha2'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 121
      end
      object cxFicha3: TcxDBTextEdit
        Left = 69
        Top = 95
        DataBinding.DataField = 'sFicha3'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 121
      end
      object cxFicha4: TcxDBTextEdit
        Left = 69
        Top = 124
        DataBinding.DataField = 'sFicha4'
        DataBinding.DataSource = ds_firma2
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
        Width = 121
      end
      object cxIzquierdo: TcxDBLookupComboBox
        Left = 316
        Top = 69
        DataBinding.DataField = 'IdFirmante1'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdFirmante'
        Properties.ListColumns = <
          item
            Caption = 'Listado de Firmantes'
            FieldName = 'NombreFirmante'
          end>
        Properties.ListSource = dsFirmantes
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 6
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxCentro: TcxDBLookupComboBox
        Left = 316
        Top = 100
        DataBinding.DataField = 'IdFirmante2'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdFirmante'
        Properties.ListColumns = <
          item
            Caption = 'Listado de Firmantes'
            FieldName = 'NombreFirmante'
          end>
        Properties.ListSource = dsFirmantes
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 10
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxDerecho: TcxDBLookupComboBox
        Left = 316
        Top = 128
        DataBinding.DataField = 'IdFirmante3'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdFirmante'
        Properties.ListColumns = <
          item
            Caption = 'Listado de Firmantes'
            FieldName = 'NombreFirmante'
          end>
        Properties.ListSource = dsFirmantes
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 12
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxFirmaAdicional: TcxDBLookupComboBox
        Left = 316
        Top = 156
        DataBinding.DataField = 'IdFirmante4'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdFirmante'
        Properties.ListColumns = <
          item
            Caption = 'Listado de Firmantes'
            FieldName = 'NombreFirmante'
          end>
        Properties.ListSource = dsFirmantes
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 14
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxPuestoIzquierda: TcxDBLookupComboBox
        Left = 632
        Top = 69
        DataBinding.DataField = 'IdPuesto1'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdPuestoFirmante'
        Properties.ListColumns = <
          item
            Caption = 'Listado de Puestos'
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsPuestos
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 8
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxPuestoCentro: TcxDBLookupComboBox
        Left = 637
        Top = 100
        DataBinding.DataField = 'IdPuesto2'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdPuestoFirmante'
        Properties.ListColumns = <
          item
            Caption = 'Listado de Puestos'
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsPuestos
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 11
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxPuestoDerecha: TcxDBLookupComboBox
        Left = 637
        Top = 128
        DataBinding.DataField = 'IdPuesto3'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdPuestoFirmante'
        Properties.ListColumns = <
          item
            Caption = 'Listado de Puestos'
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsPuestos
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 13
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxPuestoAdicional: TcxDBLookupComboBox
        Left = 637
        Top = 156
        DataBinding.DataField = 'IdPuesto4'
        DataBinding.DataSource = ds_firma2
        ParentFont = False
        Properties.KeyFieldNames = 'IdPuestoFirmante'
        Properties.ListColumns = <
          item
            Caption = 'Listado de Puestos'
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsPuestos
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 15
        OnEnter = EnterControl
        OnExit = SalidaControl
        OnKeyUp = GlobalKeyUp
        Width = 145
      end
      object cxPersonal: TcxButton
        Left = 551
        Top = 69
        Width = 30
        Height = 25
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 7
        OnClick = cxPersonalClick
      end
      object cxPuesto: TcxButton
        Left = 846
        Top = 69
        Width = 30
        Height = 25
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 9
        OnClick = cxPuestoClick
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Descripci'#243'n:'
        Control = cxDescripcion
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 1
        AutoCreated = True
      end
      object dxLayoutControl1Item8: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ficha:'
        Visible = False
        Control = cxFichaIzquierda
        ControlOptions.AlignHorz = ahLeft
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 2
        AutoCreated = True
      end
      object dxLayoutControl1Item9: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ficha:'
        Visible = False
        Control = cxFichaCentro
        ControlOptions.AlignHorz = ahLeft
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ficha:'
        Visible = False
        Control = cxFichaDerecha
        ControlOptions.AlignHorz = ahLeft
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Fecha:'
        Visible = False
        Control = cxFichaAdicional
        ControlOptions.AlignHorz = ahLeft
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Modulo:'
        Control = cxModuloReporte
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Etiqueta'
        ButtonOptions.Buttons = <>
        Index = 0
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Texto 1:'
        Control = cxFicha1
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Texto 2:'
        Control = cxFicha2
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Texto 3:'
        Control = cxFicha3
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Texto 4:'
        Control = cxFicha4
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
      object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 3
        AutoCreated = True
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Firmante Izquierdo'
        Control = cxIzquierdo
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup7
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Firmante Centro'
        Control = cxCentro
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Firmante Derecho'
        Control = cxDerecho
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Firmante Adicional'
        Control = cxFirmaAdicional
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Puesto'
        Control = cxPuestoIzquierda
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup7
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Puesto'
        Control = cxPuestoCentro
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Puesto'
        Control = cxPuestoDerecha
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 4
        AutoCreated = True
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Puesto'
        Control = cxPuestoAdicional
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 5
        AutoCreated = True
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxPersonal
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxPuesto
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
  end
  object PanelSuperior: TPanel
    Left = 0
    Top = 0
    Width = 1103
    Height = 35
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1103
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 540
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 540
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
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
          OnClick = btnDeleteClick
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
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Firmantes'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object cxLabel1: TcxLabel
      Left = 355
      Top = 8
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
    object cxProgressBar1: TcxProgressBar
      Left = 447
      Top = 11
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 62
    end
  end
  object panelInferior: TPanel
    Left = 0
    Top = 425
    Width = 1103
    Height = 35
    Align = alBottom
    TabOrder = 2
    inline frmBarraH21: TfrmBarraH2
      Left = 913
      Top = 1
      Width = 189
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 913
      ExplicitTop = 1
      ExplicitWidth = 189
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 189
        Height = 33
        ExplicitWidth = 189
        ExplicitHeight = 33
        inherited btnPost: TcxButton
          Left = 1
          Top = 1
          Width = 95
          Height = 31
          Align = alRight
          OnClick = btnPostClick
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 95
          ExplicitHeight = 31
        end
        inherited btnCancel: TcxButton
          Left = 96
          Top = 1
          Width = 92
          Height = 31
          Align = alRight
          OnClick = btnCancelClick
          ExplicitLeft = 96
          ExplicitTop = 1
          ExplicitWidth = 92
          ExplicitHeight = 31
        end
      end
    end
  end
  object cxSplitterMedio: TcxSplitter
    Left = 0
    Top = 206
    Width = 1103
    Height = 8
    AlignSplitter = salBottom
  end
  object PanelGrid: TPanel
    Left = 0
    Top = 35
    Width = 1103
    Height = 171
    Align = alClient
    Caption = 'PanelGrid'
    Color = 14803425
    ParentBackground = False
    TabOrder = 4
    object grid_firmas: TcxGrid
      Left = 1
      Top = 1
      Width = 1101
      Height = 169
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 0
      object cxView_firmas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_firma2
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Click Aqui para Definir un Filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object colDescripcion: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'sDescripcion'
          Width = 230
        end
        object colFirmante1: TcxGridDBColumn
          Caption = 'Firmante Izquierdo'
          DataBinding.FieldName = 'Firmante1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 119
        end
        object colPuesto1: TcxGridDBColumn
          Caption = 'Puesto'
          DataBinding.FieldName = 'Puesto1'
          Width = 108
        end
        object colFirmante2: TcxGridDBColumn
          Caption = 'Firmante Centro'
          DataBinding.FieldName = 'Firmante2'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 106
        end
        object colPuesto2: TcxGridDBColumn
          Caption = 'Puesto'
          DataBinding.FieldName = 'Puesto2'
          Width = 107
        end
        object colFirmante3: TcxGridDBColumn
          Caption = 'Firmante Derecho'
          DataBinding.FieldName = 'Firmante3'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 106
        end
        object colPuesto3: TcxGridDBColumn
          Caption = 'Puesto'
          DataBinding.FieldName = 'Puesto3'
          Width = 107
        end
        object colFirma4: TcxGridDBColumn
          Caption = 'Firma Adicional'
          DataBinding.FieldName = 'Firmante4'
          Width = 107
        end
        object ColPuesto4: TcxGridDBColumn
          Caption = 'Puesto'
          DataBinding.FieldName = 'Puesto4'
          Width = 107
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxView_firmas
      end
    end
  end
  object PopupPrincipal: TPopupMenu
    Left = 113
    Top = 96
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16457
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Tag = 9
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
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object Imprimir1: TMenuItem
      Tag = 4
      Caption = 'Im&primir'
      ImageIndex = 5
      ShortCut = 16464
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
    end
    object Paste1: TMenuItem
      Tag = 1
      Caption = 'Pegar'
      ImageIndex = 12
      ShortCut = 16470
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
  object zFirma2: TUniQuery
    Left = 208
    Top = 147
  end
  object ds_firma2: TDataSource
    DataSet = zFirma2
    Left = 152
    Top = 152
  end
  object ds_modulo_reporte: TDataSource
    DataSet = uModuloReporte
    Left = 264
    Top = 152
  end
  object uModuloReporte: TUniQuery
    Left = 344
    Top = 139
  end
  object uFirmantes: TUniQuery
    Connection = connection.Uconnection
    Left = 456
    Top = 107
  end
  object uPuestos: TUniQuery
    Connection = connection.Uconnection
    Left = 456
    Top = 155
  end
  object dsFirmantes: TDataSource
    DataSet = uFirmantes
    Left = 512
    Top = 107
  end
  object dsPuestos: TDataSource
    DataSet = uPuestos
    Left = 512
    Top = 155
  end
end
