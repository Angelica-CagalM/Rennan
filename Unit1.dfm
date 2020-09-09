object Form1: TForm1
  Left = 288
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Captura/Edicion'
  ClientHeight = 415
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 70
    Caption = 'Registration'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 36
      Height = 13
      Caption = 'User ID'
    end
    object TextUserID: TEdit
      Left = 56
      Top = 24
      Width = 89
      Height = 21
      ImeName = 'Korean(Hangul) (MS-IME98)'
      TabOrder = 0
      OnKeyPress = TextUserIDKeyPress
    end
    object BtnRegister: TButton
      Left = 161
      Top = 23
      Width = 125
      Height = 25
      Caption = 'Register FP To DB'
      TabOrder = 1
      OnClick = BtnRegisterClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 312
    Top = 8
    Width = 353
    Height = 88
    Caption = 'Search'
    TabOrder = 1
    object Label2: TLabel
      Left = 165
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Time :'
    end
    object Label3: TLabel
      Left = 165
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Time :'
    end
    object lblSearch: TLabel
      Left = 205
      Top = 24
      Width = 121
      Height = 13
      AutoSize = False
    end
    object lblIdentify: TLabel
      Left = 205
      Top = 56
      Width = 137
      Height = 13
      AutoSize = False
    end
    object BtnSearch: TButton
      Left = 12
      Top = 20
      Width = 125
      Height = 25
      Caption = 'Search FP From DB'
      TabOrder = 0
      OnClick = BtnSearchClick
    end
    object BtnIdentify: TButton
      Left = 13
      Top = 52
      Width = 125
      Height = 25
      Caption = 'Identify User'
      TabOrder = 1
      OnClick = BtnIdentifyClick
    end
  end
  object ListSearchDB: TListView
    Left = 8
    Top = 100
    Width = 297
    Height = 233
    Columns = <
      item
        Caption = 'User ID'
        Width = 80
      end
      item
        Caption = 'FP ID'
        Width = 80
      end
      item
        Caption = 'Sample No.'
        Width = 100
      end>
    FullDrag = True
    GridLines = True
    RowSelect = True
    TabOrder = 2
    ViewStyle = vsReport
  end
  object ListResult: TListView
    Left = 307
    Top = 100
    Width = 357
    Height = 233
    Columns = <
      item
        Caption = 'User ID'
        Width = 80
      end
      item
        Caption = 'FP ID'
        Width = 80
      end
      item
        Caption = 'Sample No.'
        Width = 100
      end
      item
        Caption = 'Confidence'
        Width = 90
      end>
    GridLines = True
    TabOrder = 3
    ViewStyle = vsReport
  end
  object BtnRemove: TButton
    Left = 8
    Top = 341
    Width = 145
    Height = 25
    Caption = 'Remove Data'
    TabOrder = 4
    OnClick = BtnRemoveClick
  end
  object BtnSave: TButton
    Left = 159
    Top = 341
    Width = 145
    Height = 25
    Caption = 'Save DB To File'
    TabOrder = 5
    OnClick = BtnSaveClick
  end
  object BtnClear: TButton
    Left = 8
    Top = 373
    Width = 145
    Height = 25
    Caption = 'Clear DB'
    TabOrder = 6
    OnClick = BtnClearClick
  end
  object BtnLoad: TButton
    Left = 159
    Top = 373
    Width = 145
    Height = 25
    Caption = 'Load DB From File'
    TabOrder = 7
    OnClick = BtnLoadClick
  end
  object BtnExit: TButton
    Left = 518
    Top = 373
    Width = 145
    Height = 25
    Caption = 'Close'
    TabOrder = 8
    OnClick = BtnExitClick
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.FDB'
    Filter = 'Fdb Files|*.fdb'
    Left = 384
    Top = 344
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.FDB'
    Filter = 'FDB Files|*.fdb'
    Left = 352
    Top = 344
  end
end
