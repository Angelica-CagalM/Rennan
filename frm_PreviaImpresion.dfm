object frmPreviaImpresion: TfrmPreviaImpresion
  Left = 0
  Top = 0
  ClientHeight = 452
  ClientWidth = 974
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 225
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 231
    Width = 385
    Height = 226
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 391
    Top = 0
    Width = 586
    Height = 321
    TabOrder = 2
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 584
      Height = 192
      Align = alTop
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      ExplicitWidth = 416
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
    end
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 193
      Width = 584
      Height = 127
      Align = alClient
      TabOrder = 1
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      ExplicitTop = 216
      ExplicitWidth = 416
      ExplicitHeight = 104
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
    end
  end
  object Panel4: TPanel
    Left = 391
    Top = 326
    Width = 586
    Height = 130
    TabOrder = 3
    object cxButton1: TcxButton
      Left = 10
      Top = 32
      Width = 121
      Height = 25
      Caption = 'Abrir Plantilla'
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 143
      Top = 32
      Width = 123
      Height = 25
      Caption = 'Guardar Plantilla'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 79
      Width = 121
      Height = 25
      Caption = 'Eliminar Plantilla'
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton4: TcxButton
      Left = 143
      Top = 80
      Width = 122
      Height = 25
      Caption = 'Limpiar Plantilla'
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton5: TcxButton
      Left = 272
      Top = 41
      Width = 91
      Height = 50
      Caption = 'Vista Previa'
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton6: TcxButton
      Left = 367
      Top = 40
      Width = 91
      Height = 50
      Caption = 'Imprimir'
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton7: TcxButton
      Left = 464
      Top = 40
      Width = 115
      Height = 50
      Caption = 'Guardar y Salir'
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
