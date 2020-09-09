object frm_Loading: Tfrm_Loading
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Loading'
  ClientHeight = 128
  ClientWidth = 157
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clNone
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBImage1: TcxDBImage
    Left = 0
    Top = 0
    Align = alClient
    DataBinding.DataField = 'Image'
    DataBinding.DataSource = DataSource1
    Properties.GraphicClassName = 'TdxSmartImage'
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Transparent = True
    Height = 128
    Width = 157
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 35
    Top = 32
  end
  object dxMemData1: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 91
    Top = 32
    object dxMemData1Image: TBlobField
      FieldName = 'Image'
    end
  end
end
