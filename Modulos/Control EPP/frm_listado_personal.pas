unit frm_listado_personal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, unittbotonespermisos, UnitValidaTexto, unitActivaPop,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxContainer, cxDBEdit, masUtilerias, cxSplitter, cxLabel,
  cxDBLookupComboBox, cxButtons, cxCheckBox, unitGenerales,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit,
  cxTimeEdit, cxLookupEdit, cxDBLookupEdit,System.DateUtils;

type
  TfrmListadoPersonal = class(TForm)
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    grid_Personal: TcxGrid;
    Grid_cuadrilla: TcxGridDBTableView;
    cxViewCuadrilla: TcxGridLevel;
    Pegar1: TMenuItem;
    Copiar1: TMenuItem;
    ds_empleados: TDataSource;
    Panel1: TPanel;
    Grid_cuadrillaColumn2: TcxGridDBColumn;
    Panel2: TPanel;
    Grid_cuadrillaColumn4: TcxGridDBColumn;
    empleados: TUniQuery;
    cxLabel3: TcxLabel;
    cxBtnSaltar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure cxBtnSaltarClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListadoPersonal : TfrmListadoPersonal;
  sOldId           : string;
  sOpcion          : string;

  implementation
 uses
    frm_noil, frmAsistenciaMedica,frm_EntregaEquipo;
{$R *.dfm}

procedure TfrmListadoPersonal.cxBtnSaltarClick(Sender: TObject);
var
orden:Integer;
begin
 orden:=empleados.FieldByName('iOrden').value;
 empleados.Edit;
 empleados.FieldByName('iOrden').value := (orden+1) ;
 empleados.Post;
 empleados.Refresh;
end;

procedure TfrmListadoPersonal.FormShow(Sender: TObject);
begin
  empleados.Active:=False;
  AsignarSQL(empleados,'Listado_personal_epp',pUpdate);
  empleados.Open;

end;

procedure TfrmListadoPersonal.frmBarra1btnExitClick(Sender: TObject);
begin
   Close;
end;

end.
