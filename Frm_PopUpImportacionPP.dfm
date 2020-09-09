object FrmPopUpImportacionPP: TFrmPopUpImportacionPP
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = ' Importacion Puntos de Programa (Ms Project)'
  ClientHeight = 167
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxPage: TcxPageControl
    Left = 0
    Top = 0
    Width = 355
    Height = 167
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxColumnas
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 165
    ClientRectLeft = 2
    ClientRectRight = 353
    ClientRectTop = 30
    object cxPrograma: TcxTabSheet
      Caption = 'Seleccionar Programa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object cxLabel1: TcxLabel
        Left = 25
        Top = 26
        Caption = 'Folio Programa'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxAceptar: TcxButton
        Left = 71
        Top = 91
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        ModalResult = 1
        TabOrder = 1
        OnClick = cxAceptarClick
      end
      object cxCancelar: TcxButton
        Left = 261
        Top = 91
        Width = 75
        Height = 25
        Caption = 'Cancerlar'
        TabOrder = 2
        OnClick = cxCancelarClick
      end
      object cxDefinir: TcxButton
        Left = 168
        Top = 91
        Width = 75
        Height = 25
        Caption = 'Definir'
        TabOrder = 3
        OnClick = cxDefinirClick
      end
      object cxFolioPrograma: TcxComboBox
        Left = 136
        Top = 26
        ParentFont = False
        TabOrder = 4
        Width = 200
      end
    end
    object cxColumnas: TcxTabSheet
      Caption = 'Definir Columnas'
      ImageIndex = 1
      object cxGuardar: TcxButton
        Left = 168
        Top = 97
        Width = 75
        Height = 25
        Caption = 'Guardar'
        TabOrder = 0
        OnClick = cxGuardarClick
      end
      object cxCancelarDef: TcxButton
        Left = 265
        Top = 97
        Width = 75
        Height = 25
        Caption = 'Cancerlar'
        TabOrder = 1
        OnClick = cxCancelarDefClick
      end
      object cxLabel2: TcxLabel
        Left = 11
        Top = 19
        Caption = 'Partida'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel3: TcxLabel
        Left = 11
        Top = 59
        Caption = 'Medida'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxPartida: TcxComboBox
        Left = 58
        Top = 18
        ParentFont = False
        TabOrder = 4
        Width = 95
      end
      object cxMedida: TcxComboBox
        Left = 59
        Top = 59
        ParentFont = False
        TabOrder = 5
        Text = 'cxMedida'
        Width = 94
      end
      object cxLabel4: TcxLabel
        Left = 174
        Top = 19
        Caption = 'Ponderado'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxPonderado: TcxComboBox
        Left = 245
        Top = 19
        ParentFont = False
        TabOrder = 7
        Text = 'cxPonderado'
        Width = 95
      end
      object cxVolumen: TcxComboBox
        Left = 245
        Top = 59
        ParentFont = False
        TabOrder = 8
        Text = 'cxVolumen'
        Width = 95
      end
      object cxLabel5: TcxLabel
        Left = 182
        Top = 59
        Caption = 'Volumen'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
  end
  object QrContratos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sContrato from contratos')
    Params = <>
    Left = 16
    Top = 8
  end
  object QrFolios: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sContrato, sNumeroOrden,mDescripcion, sIdConvenio, sIdFol' +
        'io, sProjPartida, sProjPonderado, sProjMedida, sProjVolumen from' +
        ' ordenesdetrabajo'
      'where sContrato =:Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 16
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object dsContratos: TDataSource
    AutoEdit = False
    DataSet = QrContratos
    Left = 16
    Top = 40
  end
  object dsFolios: TDataSource
    AutoEdit = False
    DataSet = QrFolios
    Left = 16
    Top = 80
  end
end
