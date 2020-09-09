unit frm_contratar_masivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin, DateUtils,
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
  dxLayoutContainer, dxLayoutControl, cxPC, cxCurrencyEdit, cxLookupEdit,
  cxDBLookupEdit, unitTarifa, UFunctionsGHH, cxProgressBar ;

type
  TfrmContratarMasivo = class(TForm)
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
    Pegar1: TMenuItem;
    Copiar1: TMenuItem;
    ds_empleados: TDataSource;
    Panel1: TPanel;
    cxLabelTitulo: TcxLabel;
    PanelContrata: TPanel;
    empleados: TUniQuery;
    cxCancela: TcxButton;
    cxPageContratos: TcxPageControl;
    cxTabNoContratado: TcxTabSheet;
    grid_Personal: TcxGrid;
    Grid_cuadrilla: TcxGridDBTableView;
    Grid_cuadrillaColumn4: TcxGridDBColumn;
    Grid_cuadrillaColumn2: TcxGridDBColumn;
    Grid_cuadrillaColumn3: TcxGridDBColumn;
    cxViewCuadrilla: TcxGridLevel;
    cxTabContratados: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxContratar: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxFechaContrato: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxInicioContrato: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxFinContrato: TcxDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxAdicionales: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    Grid_cuadrillaColumn5: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zNocontratado: TUniQuery;
    ds_NoContratado: TDataSource;
    salarios: TUniQuery;
    ds_salarios: TDataSource;
    cxGridContratado: TcxGrid;
    cxViewContratado: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxContrato: TcxButton;
    cxCredencial: TcxButton;
    Grid_cuadrillaColumn1: TcxGridDBColumn;
    cxModificar: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    puestos: TUniQuery;
    ds_puestos: TDataSource;
    tipo_nomina: TUniQuery;
    ds_tiponomina: TDataSource;
    Grid_cuadrillaColumn6: TcxGridDBColumn;
    cxTipoNomina: TcxLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxSalario: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxPuesto: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxViewContratadoColumn1: TcxGridDBColumn;
    cxViewContratadoColumn2: TcxGridDBColumn;
    Grid_cuadrillaColumn7: TcxGridDBColumn;
    cxSueldo: TcxLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    sueldos: TUniQuery;
    ds_sueldos: TDataSource;
    frxReportCR: TfrxReport;
    Contrato: TUniQuery;
    frxDBContrato: TfrxDBDataset;
    reporte: TUniQuery;
    progreso: TcxProgressBar;
    LabelProceso: TcxLabel;
    btnSeguridad: TcxButton;
    btnLogistica: TcxButton;
    frxDBLogistica: TfrxDBDataset;
    zLogistica: TUniQuery;
    frxReport: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure cxContratarClick(Sender: TObject);
    procedure cxPageContratosChange(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxModificarClick(Sender: TObject);
    procedure cxPuestoExit(Sender: TObject);
    procedure cxSalarioExit(Sender: TObject);
    procedure Grid_cuadrillaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxContratoClick(Sender: TObject);
    procedure cxCredencialClick(Sender: TObject);
    procedure frxReportCRClosePreview(Sender: TObject);
    procedure frxReportCRGetValue(const VarName: string; var Value: Variant);
    procedure btnLogisticaClick(Sender: TObject);
    procedure btnSeguridadClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure frxReportClosePreview(Sender: TObject);
    procedure cxInicioContratoExit(Sender: TObject);
    function frxReportCRUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    function frxReportUserFunction(const MethodName: string;
      var Params: Variant): Variant;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratarMasivo : TfrmContratarMasivo;
  sOldId           : string;
  sOpcion          : string;

  implementation
 uses
    frm_noil, frm_guardias, frm_FechaVigencia;
{$R *.dfm}

procedure TfrmContratarMasivo.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmContratarMasivo.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmContratarMasivo.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;


procedure TfrmContratarMasivo.btnLogisticaClick(Sender: TObject);
var
  empGrid, Id: String;
  indice, iGrid  : integer;
begin
    iGrid     := 0;
    indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
    cxViewContratado.DataController.FocusedRowIndex := indice;

    with cxViewContratado.DataController.DataSource.DataSet do
    for iGrid := 0 to cxViewContratado.DataController.GetSelectedCount - 1 do
    begin
        indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
        cxViewContratado.DataController.FocusedRowIndex := indice;

        try
          empGrid := empGrid + cxViewContratado.DataController.DataSet.FieldByName('CodigoPersonal').AsString +',';
        except
          ;
        end;
    end;
  AsignarSQL(zLogistica,'reporte_logistica',pUpdate);
  FiltrarDataSet(zLogistica,'CodsPersonal',[empGrid]);
  zLogistica.Open;

  frxReportCR.LoadFromFile(global_files +global_miReporte+ '_RH_ReporteLogistica.fr3');
  frxReportCR.ShowReport();
end;

procedure TfrmContratarMasivo.btnSeguridadClick(Sender: TObject);
var
  empGrid, Id: String;
  indice, iGrid  : integer;
begin
    iGrid     := 0;
    indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
    cxViewContratado.DataController.FocusedRowIndex := indice;

    with cxViewContratado.DataController.DataSource.DataSet do
    for iGrid := 0 to cxViewContratado.DataController.GetSelectedCount - 1 do
    begin
        indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
        cxViewContratado.DataController.FocusedRowIndex := indice;

        try
          empGrid := empGrid + cxViewContratado.DataController.DataSet.FieldByName('CodigoPersonal').AsString +',';
        except
          ;
        end;
    end;
  AsignarSQL(zLogistica,'reporte_logistica',pUpdate);
  FiltrarDataSet(zLogistica,'CodsPersonal',[empGrid]);
  zLogistica.Open;

  frxReportCR.LoadFromFile(global_files +global_miReporte+ '_RH_ReporteSeguridad.fr3');
  frxReportCR.ShowReport();
end;

procedure TfrmContratarMasivo.cxCancelaClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lFijo : boolean;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    lFijo := False;
    iGrid     := 0;
    indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
    cxViewContratado.DataController.FocusedRowIndex := indice;

    with cxViewContratado.DataController.DataSource.DataSet do
    for iGrid := 0 to cxViewContratado.DataController.GetSelectedCount - 1 do
    begin
        indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
        cxViewContratado.DataController.FocusedRowIndex := indice;

        if cxViewContratado.DataController.DataSet.FieldByName('TipoPersonal').AsString <> 'FIJO' then
        begin
            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update rh_guardia_personal set contrato =:Contrato where IdGuardiaPersonal =:IdGuardiaPersonal ');
            zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := cxViewContratado.DataController.DataSet.FieldByName('IdGuardiaPersonal').AsInteger;
            zActualiza.ParamByName('contrato').AsString := 'Sin Contratar';
            zActualiza.ExecSQL;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('delete from nuc_personalimss where IdGuardiaDetalle =:IdGuardiaDetalle and IdPersonal =:IdPersonal ');
            zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger;
            zActualiza.ParamByName('IdPersonal').AsInteger       := cxViewContratado.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
            zActualiza.ExecSQL;
        end
        else
           lFijo := True;
    end;

    if lFijo then
       messageDLG('Existe Personal Fijo: No es posible Cancelar Contrato', mtInformation,[mbOk],0);

    cxViewContratado.DataController.ClearSelection;
    zNocontratado.Refresh;
    empleados.Refresh;
    frm_guardias.FrmGuardias.zFiltroEmpleado.Refresh;
    zActualiza.destroy;

end;

procedure TfrmContratarMasivo.cxContratarClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid, iPuestoEmpleado    : integer;
    sSalario : string;
begin
  zActualiza:=tUniquery.create(nil);
  zActualiza.Connection := Connection.uConnection;

  sSalario := '';
  iGrid     := 0;
  if Grid_cuadrilla.DataController.GetSelectedCount > 0 then
  begin
    indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
    Grid_cuadrilla.DataController.FocusedRowIndex := indice;

    with Grid_cuadrilla.DataController.DataSource.DataSet do
    for iGrid := 0 to Grid_cuadrilla.DataController.GetSelectedCount - 1 do
    begin
        indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
        Grid_cuadrilla.DataController.FocusedRowIndex := indice;
        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update rh_guardia_personal set contrato =:Contrato where IdGuardiaPersonal =:IdGuardiaPersonal ');
        zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdGuardiaPersonal').AsInteger;
        zActualiza.ParamByName('contrato').AsString := 'Contratado';
        zActualiza.ExecSQL;

        //Actualizar en No para que sólo se deja un puesto_empleado Activo.
        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('Update rh_puesto_empleado set Activo ='+QuotedStr('No')+' where IdPersonal =:IdPersonal and IdEmpresa =:IdEmpresa ');
        zActualiza.ParamByName('IdPersonal').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('IdEmpresa').AsInteger  := Grid_cuadrilla.DataController.DataSet.FieldByName('IdEmpresa').AsInteger;
        zActualiza.ExecSQL;

        //Consultar si ese puesto no está dado de alta para el empleado.
        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('select IdPuesto from rh_puesto_empleado where IdEmpresa =:IdEmpresa and IdPersonal =:IdPersonal and IdPuesto =:IdPuesto ');
        zActualiza.ParamByName('IdEmpresa').AsInteger  := Grid_cuadrilla.DataController.DataSet.FieldByName('IdEmpresa').AsInteger;
        zActualiza.ParamByName('IdPersonal').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
        if cxModificar.Checked then
           zActualiza.ParamByName('IdPuesto').AsInteger := puestos.FieldByName('IdPuesto').AsInteger
        else
           zActualiza.ParamByName('IdPuesto').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPuesto').AsInteger;
        zActualiza.Open;

        if zActualiza.RecordCount = 0 then
        begin
            //Sino existe el puesto asignado al empleado se inserta para poderlo obtener y mostrar el puesto en el contrato
            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('insert into rh_puesto_empleado (IdEmpresa, IdPuesto, IdDepartamento, FechaAplicacion, Activo, IdPersonal) values '+
                               '(:IdEmpresa, :IdPuesto, :IdDepartamento, :FechaAplicacion, :Activo, :IdPersonal)');
            zActualiza.ParamByName('IdEmpresa').AsInteger  := Grid_cuadrilla.DataController.DataSet.FieldByName('IdEmpresa').AsInteger;
            if cxModificar.Checked then
               zActualiza.ParamByName('IdPuesto').AsInteger   := puestos.FieldByName('IdPuesto').AsInteger
            else
               zActualiza.ParamByName('IdPuesto').AsInteger   := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPuesto').AsInteger;
            zActualiza.ParamByName('IdDepartamento').AsInteger   := 1;
            zActualiza.ParamByName('IdPersonal').AsInteger       := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
            zActualiza.ParamByName('FechaAplicacion').AsDateTime := date;
            zActualiza.ParamByName('Activo').AsString            := 'Si';
            zActualiza.ExecSQL;
        end
        else
        begin
            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('Update rh_puesto_empleado set Activo ='+QuotedStr('Si')+' where IdEmpresa =:IdEmpresa and IdPersonal =:IdPersonal and IdPuesto =:IdPuesto ');
            zActualiza.ParamByName('IdEmpresa').AsInteger  := Grid_cuadrilla.DataController.DataSet.FieldByName('IdEmpresa').AsInteger;
            zActualiza.ParamByName('IdPersonal').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
            if cxModificar.Checked then
               zActualiza.ParamByName('IdPuesto').AsInteger := puestos.FieldByName('IdPuesto').AsInteger
            else
               zActualiza.ParamByName('IdPuesto').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPuesto').AsInteger;
            zActualiza.ExecSQL;
        end;

        //Ahora buscamos el puesto dentro de puestos empleados.
        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('select IdPuestoEmpleado from rh_puesto_empleado where IdPersonal =:IdPersonal and IdPuesto =:IdPuesto ');
        zActualiza.ParamByName('IdPersonal').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
        if cxModificar.Checked then
           zActualiza.ParamByName('IdPuesto').AsInteger   := puestos.FieldByName('IdPuesto').AsInteger
        else
           zActualiza.ParamByName('IdPuesto').AsInteger   := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPuesto').AsInteger;
        zActualiza.Open;

        iPuestoEmpleado := zActualiza.FieldByName('IdPuestoEmpleado').AsInteger;


        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update rh_contratos set FechaContrato =:FechaContrato, FechaInicio =:FechaInicio, FechaFinal =:FechaFinal, Trabajo =:Trabajo, IdPuestoEmpleado =:IdPuestoEmpleado, IdSalario =:IdSalario where IdGuardiaPersonal =:IdGuardiaPersonal ');
        zActualiza.ParamByName('FechaContrato').AsDateTime := cxFechaContrato.Date;
        zActualiza.ParamByName('FechaInicio').AsDateTime   := cxInicioContrato.Date;
        zActualiza.ParamByName('FechaFinal').AsDateTime    := cxFinContrato.Date;
        zActualiza.ParamByName('Trabajo').AsString         := cxAdicionales.Text;
        zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdGuardiaPersonal').AsInteger;
        if cxModificar.Checked then
        begin
            zActualiza.ParamByName('IdSalario').AsInteger := salarios.FieldByName('IdSalario').AsInteger;
            zActualiza.ParamByName('IdPuestoEmpleado').AsInteger  := iPuestoEmpleado;
        end
        else
        begin
            zActualiza.ParamByName('IdPuestoEmpleado').AsInteger  := iPuestoEmpleado;
            zActualiza.ParamByName('IdSalario').AsInteger := Grid_cuadrilla.DataController.DataSet.FieldByName('IdSalario').AsInteger;
        end;
        zActualiza.ExecSQL;

        if salarios.FieldByName('IdRangoSalarios').AsInteger = 0 then
        begin
          if sueldos.RecordCount > 0 then
          begin
              if sSalario <> salarios.FieldByName('TituloSalario').AsString then
              begin
                  sSalario := salarios.FieldByName('TituloSalario').AsString;
                  If MessageDlg('Desea Asignar el Sueldo de '+cxSueldo.Text+' al Puesto de '+cxPuesto.Text+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  begin
                    zActualiza.SQL.Clear;
                    zActualiza.SQL.Add('update rhu_salario set IdRangoSalarios =:IdRangoSalarios where IdSalario =:IdSalario ');
                    zActualiza.ParamByName('IdSalario').AsInteger := salarios.FieldByName('IdSalario').AsInteger;
                    zActualiza.ParamByName('IdRangoSalarios').AsInteger := sueldos.FieldByName('IdRangoSalarios').AsInteger;
                    zActualiza.ExecSQL;
                  end;
              end;
          end;
        end;

        //Ahora se insertan datos en la tabla que se usará en nóminas altas y bajas del imss   "REINGRESO"

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('insert into nuc_personalimss (IdPersonalIMSS, IdPersonal, FechaMovimiento, FechaRegistro, TipoMovimiento, Jornada, CobraFestivos, RegistroPatronal, SalarioDiario, SalarioIntegrado, Procesado, IdGuardiaDetalle, IdDepartamento, '+
                           ' IdPuesto, IdTipoNomina, IdEmpresa, PagaVacaciones, PagaPrimaVac, PagaAguinaldo, PagaIndemnizacion, PagaPrimaAnt, Paga20DiasAnio, PagaInfonavit, id_tipo_jornada, id_tipo_contrato, id_tipo_regimen ) values '+
                           ' (:IdPersonalIMSS, :IdPersonal, :FechaMovimiento, :FechaRegistro, :TipoMovimiento, :Jornada, :CobraFestivos, :RegistroPatronal, :SalarioDiario, :SalarioIntegrado, :Procesado, :IdGuardiaDetalle, :IdDepartamento, '+
                           ' :IdPuesto, :IdTipoNomina, :IdEmpresa, :PagaVacaciones, :PagaPrimaVac, :PagaAguinaldo, :PagaIndemnizacion, :PagaPrimaAnt, :Paga20DiasAnio, :PagaInfonavit, :id_tipo_jornada, :id_tipo_contrato, :id_tipo_regimen )');
        zActualiza.ParamByName('IdPersonalIMSS').AsInteger   := Noil_maximoId('', 'nuc_personalimss', 'IdPersonalIMSS');
        zActualiza.ParamByName('IdPersonal').AsInteger       := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('FechaMovimiento').AsDateTime := cxInicioContrato.Date;
        zActualiza.ParamByName('FechaRegistro').AsDateTime   := date;
        zActualiza.ParamByName('TipoMovimiento').AsString    := 'Reingreso';
        zActualiza.ParamByName('Jornada').AsInteger          := 12;
        zActualiza.ParamByName('CobraFestivos').AsInteger    := 0;
        zActualiza.ParamByName('RegistroPatronal').AsString  := Grid_cuadrilla.DataController.DataSet.FieldByName('RegPatronal').AsString;
        zActualiza.ParamByName('SalarioDiario').AsFloat      := salarios.FieldByName('Salario').AsFloat;
        zActualiza.ParamByName('SalarioIntegrado').AsFloat   := salarios.FieldByName('SalarioIntegrado').AsFloat;
        zActualiza.ParamByName('Procesado').AsString         := 'Si';
        zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger;
        zActualiza.ParamByName('IdDepartamento').AsInteger   := 1;
        if cxModificar.Checked then
           zActualiza.ParamByName('IdPuesto').AsInteger      := puestos.FieldByName('IdPuesto').AsInteger
        else
           zActualiza.ParamByName('IdPuesto').AsInteger      := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPuesto').AsInteger;
        zActualiza.ParamByName('IdTipoNomina').AsInteger     := salarios.FieldByName('IdTipoNomina').AsInteger;
        zActualiza.ParamByName('IdEmpresa').AsInteger        := Grid_cuadrilla.DataController.DataSet.FieldByName('IdEmpresa').AsInteger;
        zActualiza.ParamByName('PagaVacaciones').AsInteger   := 1;
        zActualiza.ParamByName('PagaPrimaVac').AsInteger     := 1;
        zActualiza.ParamByName('PagaAguinaldo').AsInteger    := 1;
        zActualiza.ParamByName('PagaIndemnizacion').AsInteger:= 1;
        zActualiza.ParamByName('PagaPrimaAnt').AsInteger     := 1;
        zActualiza.ParamByName('Paga20DiasAnio').AsInteger   := 1;
        zActualiza.ParamByName('PagaInfonavit').AsInteger    := 1;
        zActualiza.ParamByName('id_tipo_jornada').AsInteger  := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('id_tipo_jornada').AsInteger;
        zActualiza.ParamByName('id_tipo_contrato').AsInteger := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('id_tipo_contrato').AsInteger;
        zActualiza.ParamByName('id_tipo_regimen').AsInteger  := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('id_tipo_regimen').AsInteger;
        zActualiza.ExecSQL;

        //Ahora se insertan datos en la tabla que se usará en nóminas altas y bajas del imss   "BAJA"

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('insert into nuc_personalimss (IdPersonalIMSS, IdPersonal, FechaMovimiento, FechaRegistro, TipoMovimiento, Jornada, CobraFestivos, RegistroPatronal, SalarioDiario, SalarioIntegrado, Procesado, IdGuardiaDetalle, IdDepartamento, '+
                           ' IdPuesto, IdTipoNomina, IdEmpresa, PagaVacaciones, PagaPrimaVac, PagaAguinaldo, PagaIndemnizacion, PagaPrimaAnt, Paga20DiasAnio, PagaInfonavit ) values '+
                           ' (:IdPersonalIMSS,:IdPersonal, :FechaMovimiento, :FechaRegistro, :TipoMovimiento, :Jornada, :CobraFestivos, :RegistroPatronal, :SalarioDiario, :SalarioIntegrado, :Procesado, :IdGuardiaDetalle, :IdDepartamento, '+
                           ' :IdPuesto, :IdTipoNomina, :IdEmpresa, :PagaVacaciones, :PagaPrimaVac, :PagaAguinaldo, :PagaIndemnizacion, :PagaPrimaAnt, :Paga20DiasAnio, :PagaInfonavit)');
        zActualiza.ParamByName('IdPersonalIMSS').AsInteger   := Noil_maximoId('', 'nuc_personalimss', 'IdPersonalIMSS');
        zActualiza.ParamByName('IdPersonal').AsInteger       := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPersonal').AsInteger;
        zActualiza.ParamByName('FechaMovimiento').AsDateTime := cxFinContrato.Date;
        zActualiza.ParamByName('FechaRegistro').AsDateTime   := date;
        zActualiza.ParamByName('TipoMovimiento').AsString    := 'Baja';
        zActualiza.ParamByName('Jornada').AsInteger          := 12;
        zActualiza.ParamByName('CobraFestivos').AsInteger    := 0;
        zActualiza.ParamByName('RegistroPatronal').AsString  := Grid_cuadrilla.DataController.DataSet.FieldByName('RegPatronal').AsString;
        zActualiza.ParamByName('SalarioDiario').AsFloat      := salarios.FieldByName('Salario').AsFloat;
        zActualiza.ParamByName('SalarioIntegrado').AsFloat   := salarios.FieldByName('SalarioIntegrado').AsFloat;
        zActualiza.ParamByName('Procesado').AsString         := 'No';
        zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger;
        zActualiza.ParamByName('IdDepartamento').AsInteger   := 1;
        if cxModificar.Checked then
           zActualiza.ParamByName('IdPuesto').AsInteger      := puestos.FieldByName('IdPuesto').AsInteger
        else
           zActualiza.ParamByName('IdPuesto').AsInteger      := Grid_cuadrilla.DataController.DataSet.FieldByName('IdPuesto').AsInteger;
        zActualiza.ParamByName('IdTipoNomina').AsInteger     := salarios.FieldByName('IdTipoNomina').AsInteger;
        zActualiza.ParamByName('IdEmpresa').AsInteger        := Grid_cuadrilla.DataController.DataSet.FieldByName('IdEmpresa').AsInteger;
        zActualiza.ParamByName('PagaVacaciones').AsInteger   := 1;
        zActualiza.ParamByName('PagaPrimaVac').AsInteger     := 1;
        zActualiza.ParamByName('PagaAguinaldo').AsInteger    := 1;
        zActualiza.ParamByName('PagaIndemnizacion').AsInteger:= 1;
        zActualiza.ParamByName('PagaPrimaAnt').AsInteger     := 1;
        zActualiza.ParamByName('Paga20DiasAnio').AsInteger   := 1;
        zActualiza.ParamByName('PagaInfonavit').AsInteger    := 1;
        zActualiza.ExecSQL;
    end;

    Grid_cuadrilla.DataController.ClearSelection;
    zNocontratado.Refresh;
    sueldos.Refresh;
    empleados.Refresh;
    frm_guardias.FrmGuardias.zFiltroEmpleado.Refresh;
    zActualiza.destroy;
    end
  else
  begin
    ShowMessage( 'Seleccione el personal a contratar.' );
  end;

end;

procedure TfrmContratarMasivo.cxContratoClick(Sender: TObject);
var
  empGrid, empContrato: String;
  indice, iGrid    : integer;
begin
    iGrid     := 0;
    indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
    cxViewContratado.DataController.FocusedRowIndex := indice;

    with cxViewContratado.DataController.DataSource.DataSet do
    for iGrid := 0 to cxViewContratado.DataController.GetSelectedCount - 1 do
    begin
        indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
        cxViewContratado.DataController.FocusedRowIndex := indice;

        try
          empGrid := empGrid + cxViewContratado.DataController.DataSet.FieldByName('CodigoPersonal').AsString +',';
          empContrato := empContrato + IntToStr(cxViewContratado.DataController.DataSet.FieldByName('IdContrato').AsInteger) +',';
        except
          ;
        end;
    end;

    frm_contratar_masivo.frmContratarMasivo.FormStyle := fsNormal;

    AsignarSQL(Contrato,'reporte_contrato',pUpdate);
    FiltrarDataSet(Contrato,'IdPersonal,Codigo,Contrato',[empleados.FieldByName('IdPersonal').AsInteger,empGrid,empContrato]);
    Contrato.Open;

    frxReport.AddFunction('function UTF8Decode(const S: UTF8String): WideString');
    frxReport.LoadFromFile(global_files + global_miReporte+empleados.FieldByName('NombreReporteContrato').AsString);
    frxReport.ShowReport();
end;

procedure TfrmContratarMasivo.cxCredencialClick(Sender: TObject);
var
  empGrid, Id: String;
  indice, iGrid  : integer;
begin
    iGrid     := 0;
    indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
    cxViewContratado.DataController.FocusedRowIndex := indice;

    with cxViewContratado.DataController.DataSource.DataSet do
    for iGrid := 0 to cxViewContratado.DataController.GetSelectedCount - 1 do
    begin
        indice := cxViewContratado.DataController.GetSelectedRowIndex(iGrid);
        cxViewContratado.DataController.FocusedRowIndex := indice;

        try
          empGrid := empGrid + cxViewContratado.DataController.DataSet.FieldByName('CodigoPersonal').AsString +',';
        except
          ;
        end;
    end;

    frm_contratar_masivo.frmContratarMasivo.FormStyle := fsNormal;

    Application.CreateForm(TfrmFechaVigencia, frmFechaVigencia);
    frmFechaVigencia.cxPageControlF.ActivePage:=frmFechaVigencia.cxPageVigencia;
    frmFechaVigencia.cxPageControlF.HideTabs:=True;
    frmFechaVigencia.showModal;

    if global_resultModal = True then
    begin
      if FrmFechaVigencia.Empresa.ItemIndex = 0 then
      begin
        Id:='6';
      end
      else
      begin
        Id:='7';
      end;
      AsignarSQL(reporte,'reporte_credencial_siani',pUpdate);
      FiltrarDataSet(reporte,'FechaVigencia,IdEmpresa,ListaPersonal',[FechaSQL(FrmFechaVigencia.edtFechaVigencia.Date),
      Id,empGrid]);
      reporte.Open;

      procReporteCredencialPrint(empleados.FieldByName('IdEmpresa').AsInteger,'',empleados.FieldByName('NombreReporteCredencial').AsString, reporte, frmContratarMasivo, frxReportCR.OnGetValue, progreso, connection.uconfiguracion.FieldByName('sFormatos').AsString, '')

    end;

end;

procedure TfrmContratarMasivo.cxInicioContratoExit(Sender: TObject);
begin
   cxFinContrato.Date  := incDay(cxInicioContrato.Date, zNocontratado.FieldByName('DiasTrabajados').AsInteger -1);
end;

procedure TfrmContratarMasivo.cxModificarClick(Sender: TObject);
begin
    if cxModificar.Checked then
    begin
        cxPuesto.Enabled := True;
        cxSalario.Enabled := True;
        cxSueldo.Enabled := True;
    end
    else
    begin
        cxPuesto.Enabled := False;
        cxSalario.Enabled := False;
        cxSueldo.Enabled := False;
    end;
end;

procedure TfrmContratarMasivo.cxPageContratosChange(Sender: TObject);
begin
    if cxPageContratos.ActivePageIndex = 0 then
    begin
       cxCancela.Enabled :=False;
       cxCredencial.Enabled :=False;
       cxContrato.Enabled :=False;
       btnSeguridad.Enabled :=False;
       btnLogistica.Enabled :=False;
       if zNocontratado.RecordCount > 0 then
       begin
          PanelContrata.Visible := True;
          sueldos.Active:=False;
          AsignarSQL(sueldos,'nom_rangosalarios',pUpdate);
          FiltrarDataSet(sueldos,'IdRangoSalarios,IdEmpresa,IdTipoNomina,Titulo,FechaAplicacion,IdMoneda', ['-1',zNocontratado.FieldByName('IdEmpresa').AsInteger,'-1','-1','-1','-1']);
          sueldos.Open;
       end;
    end
    else
    begin
       if frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('Estado').AsString = 'Activa' then
       begin
           cxCancela.Enabled :=True;
           cxCredencial.Enabled :=True;
           cxContrato.Enabled :=True;
           btnLogistica.Enabled :=True;
           btnSeguridad.Enabled :=True;
           PanelContrata.Visible := False;
       end;
    end;

end;

procedure TfrmContratarMasivo.cxPuestoExit(Sender: TObject);
begin
    cxTipoNomina.EditValue := puestos.FieldByName('IdTipoNomina').AsInteger;
    if salarios.Locate('Sueldo',puestos.FieldByName('Nombre').AsString,[loPartialKey]) then
       cxSalario.EditValue  := salarios.FieldByName('IdSalario').AsInteger;
end;

procedure TfrmContratarMasivo.cxSalarioExit(Sender: TObject);
begin
//    sueldos.Filtered :=False;
//    sueldos.Filter   := 'Periodo ='+IntToStr(salarios.FieldByName('Periodo').AsInteger);
//    sueldos.Filtered :=True;

    cxSueldo.EditValue := salarios.FieldByName('IdRangoSalarios').AsInteger;
    if sueldos.Locate('IdRangoSalarios',salarios.FieldByName('IdRangoSalarios').AsInteger,[]) then
       cxSueldo.EditValue  := sueldos.FieldByName('IdRangoSalarios').AsInteger;
end;

procedure TfrmContratarMasivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frm_guardias.FrmGuardias.PanelPrincipal.Enabled := True;
end;

procedure TfrmContratarMasivo.FormShow(Sender: TObject);
var
    zInsertaContratos, zContratos : tUniquery;
begin
    zInsertaContratos:=tUniquery.create(nil);
    zInsertaContratos.Connection := Connection.uConnection;

    zContratos:=tUniquery.create(nil);
    zContratos.Connection := Connection.uConnection;

    zContratos.Active:=False;
    AsignarSQL(zContratos,'FiltraContrato_guardias',pUpdate);
    FiltrarDataSet(zContratos,'GuardiaDetalle', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger]);
    zContratos.Open;

    frm_guardias.FrmGuardias.zFiltroEmpleado.First;
    while not frm_guardias.FrmGuardias.zFiltroEmpleado.Eof do
    begin
        if not (zContratos.Locate('IdGuardiaPersonal', frm_guardias.FrmGuardias.zFiltroEmpleado.FieldByName('IdGuardiaPersonal').AsInteger,[] )) then
        begin
          if frm_guardias.FrmGuardias.zFiltroEmpleado.FieldByName('TipoPersonal').AsString <> 'FIJO' then
          begin
            zInsertaContratos.SQL.Clear;
            zInsertaContratos.SQL.Add('insert into rh_contratos(FechaContrato,IdPersonal,FechaInicio,FechaFinal,sNumeroOrden,IdPuestoEmpleado,IdSalario,IdguardiaPersonal,Trabajo) '+
                               'values (:Fechacontrato,:IdPersonal,:FechaInicio,:FechaFinal,:sNumeroOrden,:IdPuestoEmpleado,:IdSalario,:IdGuardiaPersonal,:Trabajo)');
            zInsertaContratos.ParamByName('FechaContrato').AsDateTime := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime;
            zInsertaContratos.ParamByName('IdPersonal').AsInteger     := frm_guardias.FrmGuardias.zFiltroEmpleado.FieldByName('IdPersonal').AsInteger;
            zInsertaContratos.ParamByName('FechaInicio').AsDateTime   := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime;
            zInsertaContratos.ParamByName('FechaFinal').AsDateTime    := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime;
            zInsertaContratos.ParamByName('sNumeroOrden').AsString    := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('sNumeroOrden').AsString;

            if frm_guardias.FrmGuardias.zFiltroEmpleado.FieldByName('IdPuestoEmpleado').AsInteger > 0 then
               zInsertaContratos.ParamByName('IdPuestoEmpleado').AsInteger     := frm_guardias.FrmGuardias.zFiltroEmpleado.FieldByName('IdPuestoEmpleado').AsInteger;

            if frm_guardias.FrmGuardias.zFiltroEmpleado.FieldByName('IdSalario').AsInteger = 0 then
               zInsertaContratos.ParamByName('IdSalario').AsInteger   := 1
            else
               zInsertaContratos.ParamByName('IdSalario').AsInteger   := frm_guardias.FrmGuardias.zFiltroEmpleado.FieldByName('IdSalario').AsInteger;
            zInsertaContratos.ParamByName('IdGuardiaPersonal').AsInteger := frm_guardias.FrmGuardias.zFiltroEmpleado.FieldByName('IdGuardiaPersonal').AsInteger;
            zInsertaContratos.ParamByName('Trabajo').AsString         := '';
            zInsertaContratos.ExecSQL;
          end;
        end;

        frm_guardias.FrmGuardias.zFiltroEmpleado.Next;
    end;

    zInsertaContratos.destroy;

    zNocontratado.Active:=False;
    AsignarSQL(zNocontratado,'FiltraPersonal_Nocontratado',pUpdate);
    FiltrarDataSet(zNocontratado,'GuardiaDetalle', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger]);
    zNocontratado.Open;

    empleados.Active:=False;
    AsignarSQL(empleados,'FiltraPersonal_contratado',pUpdate);
    FiltrarDataSet(empleados,'GuardiaDetalle', [frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger]);
    empleados.Open;

    tipo_nomina.Active:=False;
    AsignarSQL(tipo_nomina,'rh_tiponomina',pUpdate);
    FiltrarDataSet(tipo_nomina,'Id,IdMoneda,IdEmpresa', ['-1','-1',zNocontratado.FieldByName('IdEmpresa').AsInteger]);
    tipo_nomina.Open;

    puestos.Active:=False;
    AsignarSQL(puestos,'master_puesto',pUpdate);
    FiltrarDataSet(puestos,'IdPuesto,Nomina,Empresa,Activo', ['-1','-1','-1','Si']);
    puestos.Open;

    puestos.Filtered := False;
    puestos.Filter   := 'Nomina = '+QuotedStr('CATORCENAL');
    puestos.Filtered := True;

    salarios.Active:=False;
    AsignarSQL(salarios,'rhu_salarios',pUpdate);
    FiltrarDataSet(salarios,'Id,Empresa,Nomina,Activo', ['-1','-1','-1','Si']);
    salarios.Open;

    sueldos.Active:=False;
    AsignarSQL(sueldos,'nom_rangosalarios',pUpdate);
    FiltrarDataSet(sueldos,'IdRangoSalarios,IdEmpresa,IdTipoNomina,Titulo,FechaAplicacion,IdMoneda', ['-1',zNocontratado.FieldByName('IdEmpresa').AsInteger,'-1','-1','-1','-1']);
    sueldos.Open;

    cxFechaContrato.Date  := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime;
    cxInicioContrato.Date := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime;
    cxFinContrato.Date    := frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime;

    cxLabelTitulo.Caption := ' Contratar Empleados '+ '('+ frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('GuardiaNum').AsString +')';
end;

procedure TfrmContratarMasivo.frmBarra1btnExitClick(Sender: TObject);
begin
   Close
end;

procedure TfrmContratarMasivo.frxReportClosePreview(Sender: TObject);
begin
     frm_contratar_masivo.frmContratarMasivo.FormStyle := fsStayOnTop;
end;

procedure TfrmContratarMasivo.frxReportCRClosePreview(Sender: TObject);
begin
   frm_contratar_masivo.frmContratarMasivo.FormStyle := fsStayOnTop;
end;

procedure TfrmContratarMasivo.frxReportCRGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
     Value := LetraMontos('MXN','PESOS', Contrato.FieldByName('SDI').AsFloat );
  end;

  if CompareText(VarName, 'SUELDO_LETRA') = 0 then
  begin
     Value := LetraMontos('MXN','PESOS', Contrato.FieldByName('Importe').AsFloat );
  end;
end;

function TfrmContratarMasivo.frxReportCRUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  if ansicomparetext('UTF8Decode', MethodName) = 0 then begin
      try
        result := UTF8Decode(params[0]);
      except
        result := 'FEHLER';
      end;
  end;
end;

procedure TfrmContratarMasivo.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
     Value := LetraMontos('MXN','PESOS', Contrato.FieldByName('SDI').AsFloat );
  end;

  if CompareText(VarName, 'SUELDO_LETRA') = 0 then
  begin
     Value := LetraMontos('MXN','PESOS', Contrato.FieldByName('Importe').AsFloat );
  end;
end;

function TfrmContratarMasivo.frxReportUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  if ansicomparetext('UTF8Decode', MethodName) = 0 then begin
      try
        result := UTF8Decode(params[0]);
      except
        result := 'FEHLER';
      end;
  end;
end;

procedure TfrmContratarMasivo.Grid_cuadrillaCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if zNocontratado.RecordCount > 0 then
    begin
        cxTipoNomina.EditValue := zNocontratado.FieldByName('IdTipoNomina').AsInteger;
        cxSalario.EditValue := zNocontratado.FieldByName('IdSalario').AsInteger;
        cxPuesto.EditValue := zNocontratado.FieldByName('IdPuesto').AsInteger;
        cxSueldo.EditValue := zNocontratado.FieldByName('IdRangoSalarios').AsInteger;
    end;
end;

end.


