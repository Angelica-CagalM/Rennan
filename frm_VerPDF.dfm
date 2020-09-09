object frmVerPDF: TfrmVerPDF
  Left = 288
  Top = 322
  BorderIcons = [biSystemMenu]
  Caption = 'Vista Previa PDF'
  ClientHeight = 473
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pPDF: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 739
    Height = 467
    Align = alClient
    Caption = 'PDF'
    TabOrder = 0
    ExplicitWidth = 706
    ExplicitHeight = 415
  end
end
