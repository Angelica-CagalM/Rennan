unit frm_SolicitudDetalle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxProgressBar, cxLabel, Vcl.ExtCtrls, cxDBLookupComboBox;

type
  TfrmSolicitudDetalle = class(TForm)
    Panel3: TPanel;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxGridSolicitudDetalle: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridSolicitudDetalleColumn1: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn2: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn3: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn4: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn5: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn6: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn7: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn8: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn9: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn10: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn11: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn12: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn13: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn14: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn15: TcxGridDBColumn;
    procedure cxGridSolicitudDetalleCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSolicitudDetalle: TfrmSolicitudDetalle;

implementation

uses
frm_SolicitudDeMateriales;

{$R *.dfm}

procedure TfrmSolicitudDetalle.cxGridSolicitudDetalleCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxGridSolicitudDetalle.OptionsView.CellAutoHeight then
      cxGridSolicitudDetalle.OptionsView.CellAutoHeight := False
   else
      cxGridSolicitudDetalle.OptionsView.CellAutoHeight := True;
end;

end.
