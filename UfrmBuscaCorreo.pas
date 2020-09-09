unit UfrmBuscaCorreo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, UnitGenerales, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Vcl.ExtCtrls;

type
  TFrmBuscaCorreo = class(TForm)
    cxViewBusca: TcxGridDBTableView;
    cxGridBuscaLevel: TcxGridLevel;
    cxGridBusca: TcxGrid;
    cxViewBuscaNombre: TcxGridDBColumn;
    cxViewBuscaColumn2: TcxGridDBColumn;
    cxViewBuscaCorreo: TcxGridDBColumn;
    zUsuario: TUniQuery;
    dsUsuario: TDataSource;
    Panel1: TPanel;
    btnAceptar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure cxViewBuscaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Result:String;
    separador : String;


  end;

var
  FrmBuscaCorreo: TFrmBuscaCorreo;

implementation

{$R *.dfm}

procedure TFrmBuscaCorreo.btnAceptarClick(Sender: TObject);
var
  indice, iGrid    : integer;
  Correos:String;
begin
  with cxViewBusca.DataController.DataSource.DataSet do
    for iGrid := 0 to cxViewBusca.DataController.GetSelectedCount - 1 do
    begin
        indice := cxViewBusca.DataController.GetSelectedRowIndex(iGrid);
        cxViewBusca.DataController.FocusedRowIndex := indice;
        Correos := cxViewBusca.DataController.DataSet.FieldByName('sMail').AsString+';'+Correos;
    end;
  Result := Correos;

  ModalResult:=mrOk;
end;

procedure TFrmBuscaCorreo.cxViewBuscaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 //cxViewBusca.Controller.SelectedRowCount;
end;

procedure TFrmBuscaCorreo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Close;
end;

procedure TFrmBuscaCorreo.FormShow(Sender: TObject);
begin
   AsignarSQL(zUsuario, 'usuarios', pupdate);
   zUsuario.Open;

end;

end.
