unit frm_bajar_masivo;

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
  cxTimeEdit, dxBarBuiltInMenu, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, cxPC, cxLookupEdit, cxDBLookupEdit, dateUtils,
  cxProgressBar ;

type
  TfrmBajarMasivo = class(TForm)
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
    Grid_cuadrillaColumn3: TcxGridDBColumn;
    Panel2: TPanel;
    Grid_cuadrillaColumn4: TcxGridDBColumn;
    empleados: TUniQuery;
    cxTexGuardia: TcxTextEdit;
    Grid_cuadrillaColumn1: TcxGridDBColumn;
    Grid_cuadrillaColumn5: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    cxBajar: TcxButton;
    cxHoraBajada: TcxTimeEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxFechaBajada: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutItem4: TdxLayoutItem;
    cxCreaAdicional: TcxButton;
    cxGuardiaAdicional: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxCodigoGuardia: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutItem7: TdxLayoutItem;
    cxConectar: TcxButton;
    guardias: TUniQuery;
    ds_guardias: TDataSource;
    cxSplitBaja: TcxSplitter;
    Grid_adicional: TcxGrid;
    cxViewAdicional: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    guardia_adicional: TUniQuery;
    ds_guardia_adicional: TDataSource;
    cxGuardia: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    PanelProgreso: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxAdicionalInicio: TcxDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxAdicionalFinal: TcxDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxProyectoGuardia: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure cxBajarClick(Sender: TObject);
    procedure cxCreaAdicionalClick(Sender: TObject);
    procedure cxPageControl2Change(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure ActualizaDatosGuardia;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGuardiaExit(Sender: TObject);
    procedure cxConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBajarMasivo : TfrmBajarMasivo;
  sOldId           : string;
  sOpcion          : string;

  implementation
 uses
    frm_noil, frm_guardias;
{$R *.dfm}

procedure TfrmBajarMasivo.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmBajarMasivo.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmBajarMasivo.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmBajarMasivo.cxBajarClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
begin
    if empleados.RecordCount = 0 then
    begin
       messageDLG('No exite personal en '+frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('GuardiaNum').AsString+ 'para generar Guardia Adicional', mtInformation, [mbok], 0);
       exit;
    end;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    PanelProgreso.Visible := True;
    BarraMostrar(True, progreso, LabelProceso );

    iGrid     := 0;
    indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
    Grid_cuadrilla.DataController.FocusedRowIndex := indice;

    with Grid_cuadrilla.DataController.DataSource.DataSet do
    for iGrid := 0 to Grid_cuadrilla.DataController.GetSelectedCount - 1 do
    begin
        indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
        Grid_cuadrilla.DataController.FocusedRowIndex := indice;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update rh_guardia_personal set Activo =:Activo, FechaBajada =:FechaBajada where IdGuardiaPersonal =:IdGuardiaPersonal');
        zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := empleados.FieldByName('IdGuardiaPersonal').AsInteger;
        zActualiza.ParamByName('FechaBajada').AsDateTime   := cxFechaBajada.Date + cxHoraBajada.Time;
        zActualiza.ParamByName('Activo').AsString   := 'No';
        zActualiza.ExecSQL;

        BarraProgresoAvance(Progreso, 0,100,80/Grid_cuadrilla.DataController.GetSelectedCount);
    end;

    empleados.Refresh;
    if empleados.RecordCount = 0 then
    begin
        ActualizaDatosGuardia;
    end;
    BarraProgresoAvance(Progreso, 0,100,100);
    frm_guardias.FrmGuardias.zFiltroEmpleado.Refresh;
    zActualiza.destroy;
    PanelProgreso.Visible := False;
end;

procedure TfrmBajarMasivo.cxConectarClick(Sender: TObject);
var
    zActualiza, zGuardiaPersonal : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
begin
    if empleados.RecordCount = 0 then
    begin
       messageDLG('No exite personal en '+frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('GuardiaNum').AsString+ 'para generar Guardia Adicional', mtInformation, [mbok], 0);
       exit;
    end;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    zGuardiaPersonal:=tUniquery.create(nil);
    zGuardiaPersonal.Connection := Connection.uConnection;

    PanelProgreso.Visible := True;
    BarraMostrar(True, progreso, LabelProceso );

    iGrid     := 0;
    indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
    Grid_cuadrilla.DataController.FocusedRowIndex := indice;

    with Grid_cuadrilla.DataController.DataSource.DataSet do
    for iGrid := 0 to Grid_cuadrilla.DataController.GetSelectedCount - 1 do
    begin
        indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
        Grid_cuadrilla.DataController.FocusedRowIndex := indice;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update rh_guardia_personal set Activo =:Activo, FechaBajada =:FechaBajada where IdGuardiaPersonal =:IdGuardiaPersonal');
        zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := empleados.FieldByName('IdGuardiaPersonal').AsInteger;
        zActualiza.ParamByName('FechaBajada').AsDateTime   := cxFechaBajada.Date + cxHoraBajada.Time;
        zActualiza.ParamByName('Activo').AsString   := 'No';
        zActualiza.ExecSQL;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('insert into rh_guardia_personal(IdGuardiaDetalle,IdPersonal,FechaSubida) '+
                           'values (:IdGuardiaDetalle,:IdPersonal,:FechaSubida)');
        zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := guardias.FieldByName('IdGuardiaDetalle').AsInteger;
        zActualiza.ParamByName('IdPersonal').AsInteger       := empleados.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('FechaSubida').AsDateTime     := incDay(empleados.FieldByName('FechaFinal').AsDateTime,1);
        zActualiza.ExecSQL;

        zGuardiaPersonal.SQL.Clear;
        zGuardiaPersonal.SQL.Add('select IdGuardiaPersonal from rh_guardia_personal where IdGuardiaDetalle =:IdGuardiaDetalle and IdPersonal =:IdPersonal');
        zGuardiaPersonal.ParamByName('IdGuardiaDetalle').AsInteger := guardias.FieldByName('IdGuardiaDetalle').AsInteger;
        zGuardiaPersonal.ParamByName('IdPersonal').AsInteger       := empleados.FieldByName('IdPersonal').AsInteger;
        zGuardiaPersonal.Open;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('insert into rh_contratos(FechaContrato,IdPersonal,FechaInicio,FechaFinal,sNumeroOrden,IdPuestoEmpleado,IdSalario,IdguardiaPersonal,Trabajo) '+
                           'values (:Fechacontrato,:IdPersonal,:FechaInicio,:FechaFinal,:sNumeroOrden,:IdPuestoEmpleado,:IdSalario,:IdGuardiaPersonal,:Trabajo)');
        zActualiza.ParamByName('FechaContrato').AsDateTime := incDay(empleados.FieldByName('FechaFinal').AsDateTime,1);
        zActualiza.ParamByName('IdPersonal').AsInteger     := empleados.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('FechaInicio').AsDateTime   := incDay(empleados.FieldByName('FechaFinal').AsDateTime,1);
        zActualiza.ParamByName('FechaFinal').AsDateTime    := incDay(empleados.FieldByName('FechaFinal').AsDateTime, guardias.FieldByName('DiasTrabajados').AsInteger)+1 ;
        zActualiza.ParamByName('sNumeroOrden').AsString    := empleados.FieldByName('sNumeroOrden').AsString;
        zActualiza.ParamByName('IdPuestoEmpleado').AsInteger  := empleados.FieldByName('IdPuestoEmpleado').AsInteger;
        zActualiza.ParamByName('IdSalario').AsInteger      := empleados.FieldByName('IdSalario').AsInteger;
        zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := zGuardiaPersonal.FieldByName('IdGuardiaPersonal').AsInteger;
        zActualiza.ParamByName('Trabajo').AsString         := empleados.FieldByName('Trabajo').AsString;
        zActualiza.ExecSQL;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update rh_guardia_personal set Contrato =:Contrato where  IdGuardiaDetalle =:IdGuardiaDetalle and IdPersonal =:IdPersonal ');
        zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := guardias.FieldByName('IdGuardiaDetalle').AsInteger;
        zActualiza.ParamByName('IdPersonal').AsInteger       := empleados.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('Contrato').AsString          := 'Contratado';
        zActualiza.ExecSQL;

        BarraProgresoAvance(Progreso, 0,100,80/empleados.RecordCount);
    end;

    empleados.Refresh;
    if empleados.RecordCount = 0 then
    begin
        ActualizaDatosGuardia;
    end;
    BarraProgresoAvance(Progreso, 0,100,100);
    frm_guardias.FrmGuardias.zFiltroEmpleado.Refresh;
    zActualiza.destroy;
    zGuardiaPersonal.Destroy;
    PanelProgreso.Visible := False;

end;

procedure TfrmBajarMasivo.cxCreaAdicionalClick(Sender: TObject);
var
    zActualiza, zGuardiaAdicional, zGuardiaPersonal : tUniquery;
begin
    if empleados.RecordCount = 0 then
    begin
       messageDLG('No exite personal en '+frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('GuardiaNum').AsString+ 'para generar Guardia Adicional', mtInformation, [mbok], 0);
       exit;
    end;

    If MessageDlg('Desea Crear la '+cxGuardiaAdicional.Text+' y mover el personal actualemente A Bordo?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
        exit;
    end;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    zGuardiaAdicional:=tUniquery.create(nil);
    zGuardiaAdicional.Connection := Connection.uConnection;

    zGuardiaPersonal:=tUniquery.create(nil);
    zGuardiaPersonal.Connection := Connection.uConnection;

    PanelProgreso.Visible := True;
    BarraMostrar(True, progreso, LabelProceso );

    zActualiza.SQL.Clear;
    zActualiza.SQL.Add('insert into rh_guardia_detalle (IdGuardia, IdGuardiaDetalle_Enlace, Codigo,GuardiaNum, IdTipoNomina, FechaInicio,FechaFinal,FechaSubida,sIdPlataforma) '+
                      'values (:IdGuardia, :IdGuardiaDetalle_Enlace, :Codigo, :GuardiaNum, :IdTipoNomina, :FechaInicio,:FechaFinal,:FechaSubida,:sIdPlataforma) ');
    zActualiza.ParamByName('IdGuardia').AsInteger     := empleados.FieldByName('IdGuardia').AsInteger;
    zActualiza.ParamByName('IdGuardiaDetalle_Enlace').AsInteger := empleados.FieldByName('IdGuardiaDetalle').AsInteger;
    zActualiza.ParamByName('Codigo').AsString         := cxCodigoguardia.Text;
    zActualiza.ParamByName('GuardiaNum').AsString     := cxGuardiaAdicional.Text;
    zActualiza.ParamByName('IdTipoNomina').AsInteger  := empleados.FieldByName('IdTipoNomina').AsInteger;
    zActualiza.ParamByName('FechaInicio').AsDateTime  := incDay(empleados.FieldByName('FechaFinal').AsDateTime,1);
    zActualiza.ParamByName('FechaFinal').AsDateTime   := incDay(empleados.FieldByName('FechaFinal').AsDateTime, frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('DiasTrabajados').AsInteger)+1 ;
    zActualiza.ParamByName('FechaSubida').AsDateTime  := empleados.FieldByName('FechaFinal').AsDateTime;
    zActualiza.ParamByName('sIdPlataforma').AsString  := empleados.FieldByName('sIdPlataforma').AsString;
    zActualiza.ExecSQL;

    BarraProgresoAvance(Progreso, 0,100,5);

    zGuardiaAdicional.SQL.Clear;
    zGuardiaAdicional.SQL.Add('select IdGuardiaDetalle from rh_guardia_detalle where IdGuardiaDetalle_Enlace =:IdGuardiaDetalle_Enlace ');
    zGuardiaAdicional.ParamByName('IdGuardiaDetalle_Enlace').AsInteger := empleados.FieldByName('IdGuardiaDetalle').AsInteger;
    zGuardiaAdicional.Open;

    BarraProgresoAvance(Progreso, 0,100,10);

    empleados.First;
    while not empleados.Eof do
    begin
        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update rh_guardia_personal set Activo =:Activo, FechaBajada =:FechaBajada where IdGuardiaPersonal =:IdGuardiaPersonal');
        zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := empleados.FieldByName('IdGuardiaPersonal').AsInteger;
        zActualiza.ParamByName('FechaBajada').AsDateTime      := empleados.FieldByName('FechaFinal').AsDateTime;
        zActualiza.ParamByName('Activo').AsString   := 'No';
        zActualiza.ExecSQL;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('insert into rh_guardia_personal(IdGuardiaDetalle,IdPersonal,FechaSubida) '+
                           'values (:IdGuardiaDetalle,:IdPersonal,:FechaSubida)');
        zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := zGuardiaAdicional.FieldByName('IdGuardiaDetalle').AsInteger;
        zActualiza.ParamByName('IdPersonal').AsInteger       := empleados.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('FechaSubida').AsDateTime     := incDay(empleados.FieldByName('FechaFinal').AsDateTime,1);
        zActualiza.ExecSQL;

        zGuardiaPersonal.SQL.Clear;
        zGuardiaPersonal.SQL.Add('select IdGuardiaPersonal from rh_guardia_personal where IdGuardiaDetalle =:IdGuardiaDetalle and IdPersonal =:IdPersonal');
        zGuardiaPersonal.ParamByName('IdGuardiaDetalle').AsInteger := zGuardiaAdicional.FieldByName('IdGuardiaDetalle').AsInteger;
        zGuardiaPersonal.ParamByName('IdPersonal').AsInteger       := empleados.FieldByName('IdPersonal').AsInteger;
        zGuardiaPersonal.Open;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('insert into rh_contratos(FechaContrato,IdPersonal,FechaInicio,FechaFinal,sNumeroOrden,IdPuestoEmpleado,IdSalario,IdguardiaPersonal,Trabajo) '+
                           'values (:Fechacontrato,:IdPersonal,:FechaInicio,:FechaFinal,:sNumeroOrden,:IdPuestoEmpleado,:IdSalario,:IdGuardiaPersonal,:Trabajo)');
        zActualiza.ParamByName('FechaContrato').AsDateTime := incDay(empleados.FieldByName('FechaFinal').AsDateTime,1);
        zActualiza.ParamByName('IdPersonal').AsInteger     := empleados.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('FechaInicio').AsDateTime   := incDay(empleados.FieldByName('FechaFinal').AsDateTime,1);
        zActualiza.ParamByName('FechaFinal').AsDateTime    := incDay(empleados.FieldByName('FechaFinal').AsDateTime, frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('DiasTrabajados').AsInteger)+1 ;
        zActualiza.ParamByName('sNumeroOrden').AsString    := empleados.FieldByName('sNumeroOrden').AsString;
        zActualiza.ParamByName('IdPuestoEmpleado').AsInteger  := empleados.FieldByName('IdPuestoEmpleado').AsInteger;
        zActualiza.ParamByName('IdSalario').AsInteger      := empleados.FieldByName('IdSalario').AsInteger;
        zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := zGuardiaPersonal.FieldByName('IdGuardiaPersonal').AsInteger;
        zActualiza.ParamByName('Trabajo').AsString         := empleados.FieldByName('Trabajo').AsString;
        zActualiza.ExecSQL;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update rh_guardia_personal set Contrato =:Contrato where  IdGuardiaDetalle =:IdGuardiaDetalle and IdPersonal =:IdPersonal ');
        zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := zGuardiaAdicional.FieldByName('IdGuardiaDetalle').AsInteger;
        zActualiza.ParamByName('IdPersonal').AsInteger       := empleados.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('Contrato').AsString          := 'Contratado';
        zActualiza.ExecSQL;

        BarraProgresoAvance(Progreso, 0,100,80/empleados.RecordCount);

        empleados.Next;
    end;

    cxCodigoGuardia.Properties.ReadOnly := True;
    cxguardiaAdicional.Properties.ReadOnly := True;

    empleados.Refresh;
    if empleados.RecordCount = 0 then
    begin
        ActualizaDatosGuardia;
    end;

    guardia_adicional.Active:=False;
    AsignarSQL(guardia_adicional,'FiltraPersonal_BajarEnlace',pUpdate);
    FiltrarDataSet(guardia_adicional,'GuardiaDetalleEnlace', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger]);
    guardia_adicional.Open;

    BarraProgresoAvance(Progreso, 0,100,100);
    frm_guardias.FrmGuardias.zFiltroEmpleado.Refresh;
    frm_guardias.FrmGuardias.zGuardiasDetalle.Refresh;
    zActualiza.destroy;
    zGuardiaAdicional.destroy;
    zGuardiaPersonal.Destroy;
    PanelProgreso.Visible := False;
end;

procedure TfrmBajarMasivo.cxGuardiaExit(Sender: TObject);
begin
    if cxPageControl2.ActivePageIndex = 1 then
    begin
       Grid_adicional.Visible := True;
       cxSplitBaja.Visible := True;

       guardias.Locate('IdGuardiaDetalle',cxGuardia.Properties.DataController.DataSource.DataSet.FieldByName('IdGuardiaDetalle').AsInteger,[] );

       guardia_adicional.Active:=False;
       AsignarSQL(guardia_adicional,'FiltroEmpleados',pUpdate);
       if cxGuardia.Text = '' then
          FiltrarDataSet(guardia_adicional,'IdGuardiaDetalle', [-1])
       else
          FiltrarDataSet(guardia_adicional,'IdGuardiaDetalle', [guardias.FieldByName('IdguardiaDetalle').AsString]);
       guardia_adicional.Open;

       cxProyectoGuardia.Text := guardias.FieldByName('Guardia').AsString;
    end;
end;

procedure TfrmBajarMasivo.cxPageControl2Change(Sender: TObject);
begin
    if cxPageControl2.ActivePageIndex = 2 then
    begin
        Grid_adicional.Visible := False;
        cxSplitBaja.Visible    := False;
    end
    else
    begin
       Grid_adicional.Visible := True;
       cxSplitBaja.Visible := True;

       guardia_adicional.Active:=False;
       AsignarSQL(guardia_adicional,'FiltroEmpleados',pUpdate);
       if cxGuardia.Text = '' then
          FiltrarDataSet(guardia_adicional,'IdGuardiaDetalle', [-1])
       else
          FiltrarDataSet(guardia_adicional,'IdGuardiaDetalle', [guardias.FieldByName('IdGuardiaDetalle').AsInteger]);
       guardia_adicional.Open;
    end;

    if cxPageControl2.ActivePageIndex  = 0 then
    begin
        guardia_adicional.Active:=False;
        AsignarSQL(guardia_adicional,'FiltraPersonal_BajarEnlace',pUpdate);
        FiltrarDataSet(guardia_adicional,'GuardiaDetalleEnlace', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger]);
        guardia_adicional.Open;

        if empleados.RecordCount = 0 then
        begin
           cxAdicionalInicio.Date :=  date;
           cxAdicionalFinal.Date  :=  date;
        end
        else
        begin
           cxAdicionalInicio.Date :=  incDay(empleados.FieldByName('FechaFinal').AsDateTime,1);
           cxAdicionalFinal.Date  :=  incDay(empleados.FieldByName('FechaFinal').AsDateTime, frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('DiasTrabajados').AsInteger)+1 ;
        end;

        if guardia_adicional.RecordCount > 0 then
        begin
            cxCodigoGuardia.Properties.ReadOnly := True;
            cxguardiaAdicional.Properties.ReadOnly := True;
            cxCodigoGuardia.Text    := guardia_adicional.FieldByName('Codigo').AsString;
            cxguardiaAdicional.Text := guardia_adicional.FieldByName('GuardiaNum').AsString;
        end
        else
        begin
            cxCodigoGuardia.Properties.ReadOnly := False;
            cxguardiaAdicional.Properties.ReadOnly := False;
            cxCodigoGuardia.Text    := empleados.FieldByName('Codigo').AsString;
            cxguardiaAdicional.Text := empleados.FieldByName('GuardiaNum').AsString + '(ADICIONAL)';
        end;

        if empleados.RecordCount = 0 then
        begin
            cxCodigoGuardia.Properties.ReadOnly := True;
            cxguardiaAdicional.Properties.ReadOnly := True;
        end;

    end;
end;

procedure TfrmBajarMasivo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frm_guardias.FrmGuardias.PanelPrincipal.Enabled := True;
end;

procedure TfrmBajarMasivo.FormShow(Sender: TObject);
begin
  empleados.Active:=False;
  AsignarSQL(empleados,'FiltraPersonal_BajarGuardia',pUpdate);
  FiltrarDataSet(empleados,'GuardiaDetalle', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger]);
  empleados.Open;

  guardia_adicional.Active:=False;
  AsignarSQL(guardia_adicional,'FiltraPersonal_BajarEnlace',pUpdate);
  FiltrarDataSet(guardia_adicional,'GuardiaDetalleEnlace', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger]);
  guardia_adicional.Open;

  guardias.Active:=False;
  AsignarSQL(guardias,'FiltraGuardia_activa',pUpdate);
  FiltrarDataSet(guardias,'Estado', ['Activa']);
  guardias.Open;

  if DateOf(frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaFinal').AsDatetime) >= date  then
  begin
     cxFechaBajada.Date := date;
     cxFechaBajada.Properties.ReadOnly := False;
  end
  else
  begin
     cxFechaBajada.Date := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime;
     cxFechaBajada.Properties.ReadOnly := True;
  end;
  cxHoraBajada.Time := time;
  cxTexGuardia.Text := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('GuardiaNum').AsString +' (DEL '+ DateToSTr(frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime) +' AL '+DateToStr(frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime)+') ';

  Grid_adicional.Visible := False;
  cxSplitBaja.Visible    := False;
  PanelProgreso.Visible  := False;
end;

procedure TfrmBajarMasivo.frmBarra1btnExitClick(Sender: TObject);
begin
   Close
end;

procedure TfrmBajarMasivo.ActualizaDatosGuardia;
var
   zDetalleFechas, zActualiza : tUniquery;
   SavePlace     : TBookmark;
begin
    zDetalleFechas:=tUniquery.create(nil);
    zDetalleFechas.Connection := Connection.uConnection;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    zDetalleFechas.SQL.Clear;
    zDetalleFechas.SQL.Add('select min(FechaSubida) as FechaSubida, max(FechaBajada) as FechaBajada from rh_guardia_personal where IdGuardiaDetalle =:IdGuardiaDetalle');
    zDetalleFechas.ParamByName('IdGuardiaDetalle').AsInteger := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger;
    zDetalleFechas.Open;

    BarraProgresoAvance(Progreso, 0,100,85);

    zActualiza.SQL.Clear;
    zActualiza.SQL.Add('update rh_guardia_detalle set Estado =:Estado, FechaSubida =:FechaSubida, FechaBajada =:FechaBajada where IdGuardiaDetalle =:IdGuardiaDetalle');
    zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger;
    zActualiza.ParamByName('FechaSubida').AsDateTime     := zDetalleFechas.FieldByName('FechaSubida').AsDateTime;
    zActualiza.ParamByName('FechaBajada').AsDateTime     := zDetalleFechas.FieldByName('FechaBajada').AsDateTime;
    zActualiza.ParamByName('Estado').AsString            := 'Bajo';
    zActualiza.ExecSQL;

    SavePlace := frmGuardias.BView_filtro.DataController.DataSource.DataSet.GetBookmark;
    frmGuardias.zGuardiasDetalle.Refresh;
    try
       frmGuardias.BView_filtro.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
       frmGuardias.BView_filtro.DataController.DataSet.FreeBookmark(SavePlace);
    end;

    BarraProgresoAvance(Progreso, 0,100,90);

    zDetalleFechas.Destroy;
    zActualiza.Destroy;
end;


end.
