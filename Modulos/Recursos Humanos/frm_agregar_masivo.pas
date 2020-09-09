unit frm_agregar_masivo;

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
  cxTimeEdit, cxLookupEdit, cxDBLookupEdit ;

type
  TfrmAgregarMasivo = class(TForm)
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
    Grid_cuadrillaColumn1: TcxGridDBColumn;
    cxViewCuadrilla: TcxGridLevel;
    Pegar1: TMenuItem;
    Copiar1: TMenuItem;
    ds_empleados: TDataSource;
    Panel1: TPanel;
    cxLabelTitulo: TcxLabel;
    Grid_cuadrillaColumn2: TcxGridDBColumn;
    Grid_cuadrillaColumn3: TcxGridDBColumn;
    Panel2: TPanel;
    Grid_cuadrillaColumn4: TcxGridDBColumn;
    cxActualiza: TcxButton;
    empleados: TUniQuery;
    cxFechaSubida: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxTexGuardia: TcxTextEdit;
    cxHora: TcxTimeEdit;
    cxLabel1: TcxLabel;
    Grid_cuadrillaColumn5: TcxGridDBColumn;
    Panel3: TPanel;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    Panel4: TPanel;
    cxCheckGuardias: TcxCheckBox;
    cxGuardias: TcxLookupComboBox;
    guardias: TUniQuery;
    ds_guardias: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure cxActualizaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGuardiasExit(Sender: TObject);
    procedure cxCheckGuardiasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgregarMasivo : TfrmAgregarMasivo;
  sOldId           : string;
  sOpcion          : string;

  implementation
 uses
    frm_noil, frm_guardias;
{$R *.dfm}

procedure TfrmAgregarMasivo.cxActualizaClick(Sender: TObject);
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

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('insert into rh_guardia_personal(IdGuardiaDetalle,IdPersonal,FechaSubida,Contrato) '+
                           'values (:IdGuardiaDetalle,:IdPersonal,:FechaSubida,:Contrato)');
        zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger;
        zActualiza.ParamByName('IdPersonal').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('FechaSubida').AsDateTime   := cxFechaSubida.Date + cxHora.Time;
        if Grid_cuadrilla.DataController.DataSet.FieldByName('TipoPersonal').AsString = 'FIJO' then
           zActualiza.ParamByName('Contrato').AsString := 'Contratado'
        else
           zActualiza.ParamByName('Contrato').AsString := 'Sin Contratar';
        zActualiza.ExecSQL;
    end;

    empleados.Refresh;
    frm_guardias.FrmGuardias.zFiltroEmpleado.Refresh;
    zActualiza.destroy;
end;

procedure TfrmAgregarMasivo.cxCheckGuardiasClick(Sender: TObject);
begin
    if cxCheckGuardias.Checked = False then
    begin
       empleados.Active:=False;
       AsignarSQL(empleados,'FiltraPersonal_agregaGuardia',pUpdate);
       FiltrarDataSet(empleados,'Empresa', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdEmpresa').AsInteger]);
       empleados.Open;
       cxGuardias.EditValue := -1;
       cxGuardias.Enabled := False;
    end
    else
    begin
        if guardias.RecordCount > 0 then
        begin
           cxGuardias.EditValue := guardias.FieldByName('IdGuardiaDetalle').AsInteger;
           empleados.Active:=False;
           AsignarSQL(empleados,'FiltroEmpleados',pUpdate);
           FiltrarDataSet(empleados,'IdGuardiaDetalle', [guardias.FieldByName('IdguardiaDetalle').AsString]);
           empleados.Open;
        end;
        cxGuardias.Enabled := True;
    end;

end;

procedure TfrmAgregarMasivo.cxGuardiasExit(Sender: TObject);
begin
    if guardias.RecordCount > 0 then
    begin
        empleados.Active:=False;
        AsignarSQL(empleados,'FiltroEmpleados',pUpdate);
        FiltrarDataSet(empleados,'IdGuardiaDetalle', [guardias.FieldByName('IdguardiaDetalle').AsString]);
        empleados.Open;
    end;
end;

procedure TfrmAgregarMasivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   frm_guardias.FrmGuardias.PanelPrincipal.Enabled := True;
end;

procedure TfrmAgregarMasivo.FormShow(Sender: TObject);
begin
  empleados.Active:=False;
  AsignarSQL(empleados,'FiltraPersonal_agregaGuardia',pUpdate);
  FiltrarDataSet(empleados,'Empresa', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdEmpresa').AsInteger]);
  empleados.Open;

  guardias.Active:=False;
  AsignarSQL(guardias,'FiltraGuardia_activa',pUpdate);
  FiltrarDataSet(guardias,'Estado', ['Bajo']);
  guardias.Open;

  cxFechaSubida.Date := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime;

  cxTexGuardia.Text := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('GuardiaNum').AsString +' (DEL '+ DateToSTr(frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime) +' AL '+DateToStr(frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime)+') ';
end;

procedure TfrmAgregarMasivo.frmBarra1btnExitClick(Sender: TObject);
begin
   Close
end;

end.
