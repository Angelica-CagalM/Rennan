unit frm_agregar_personal;

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
  TfrmAgregarPersonal = class(TForm)
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
    cxLabelTitulo: TcxLabel;
    Grid_cuadrillaColumn2: TcxGridDBColumn;
    Panel2: TPanel;
    Grid_cuadrillaColumn4: TcxGridDBColumn;
    cxActualiza: TcxButton;
    empleados: TUniQuery;
    cxFecha: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxTexGuardia: TcxTextEdit;
    Panel3: TPanel;
    cxLabel3: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure cxActualizaClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgregarPersonal : TfrmAgregarPersonal;
  sOldId           : string;
  sOpcion          : string;

  implementation
 uses
    frm_noil, frmAsistenciaMedica,frm_EntregaEquipo;
{$R *.dfm}

procedure TfrmAgregarPersonal.cxActualizaClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    iGrid     := 0;
    indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
    Grid_cuadrilla.DataController.FocusedRowIndex := indice;

    with Grid_cuadrilla.DataController.DataSource.DataSet do
    for iGrid := 0 to Grid_cuadrilla.DataController.GetSelectedCount - 1 do
    begin
        indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
        Grid_cuadrilla.DataController.FocusedRowIndex := indice;

        if global_frmActivo='Asistencia_Medica' then
        begin
          zActualiza.Active:=False;
          AsignarSQL(zActualiza,'insert_asistencia_medica_equipoepp',pUpdate);
          FiltrarDataSet(zActualiza,'IdPersonal,Fecha',[empleados.FieldByName('CodigoPersonal').AsInteger,FechaSQL(cxFecha.Date)]);
          zActualiza.ExecSQL;
        end;

        if global_frmActivo='EntregaEpp' then
        begin
          zActualiza.Active:=False;
          AsignarSQL(zActualiza,'insert_equipoepp',pUpdate);
          FiltrarDataSet(zActualiza,'IdPersonal,Fecha',[empleados.FieldByName('CodigoPersonal').AsInteger,FechaSQL(cxFecha.Date)]);
          zActualiza.ExecSQL;
        end;

    end;
    if global_frmActivo='Asistencia_Medica' then
    begin
      frmAsistenciaMed.zPersonal.Refresh;
    end;

    if global_frmActivo='EntregaEpp' then
    begin
      frmEntregaEquipo.zEntregaEPP.Refresh;
    end;

    zActualiza.destroy;
end;

procedure TfrmAgregarPersonal.FormShow(Sender: TObject);
begin
  empleados.Active:=False;
  AsignarSQL(empleados,'master_personal_salida',pUpdate);
  empleados.Open;


  cxFecha.Date := Trunc(Now());

end;

procedure TfrmAgregarPersonal.frmBarra1btnExitClick(Sender: TObject);
begin
   Close;
end;

end.
