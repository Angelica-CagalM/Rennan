unit frm_repositorio;

interface

uses
  SysUtils, Classes, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ImgList, Controls,frxDBSet,// frxClass,
  System.ImageList, cxGridDBTableView, MemDS, DBAccess, Uni, cxTextEdit,
  frxClass,System.Math;

type
  Tfrmrepositorio = class(TDataModule)
    IconosTodos48: TcxImageList;
    IconosTodos32: TcxImageList;
    IconosTodos24: TcxImageList;
    IconosTodos16: TcxImageList;
    IconosBarra: TcxImageList;
    VistasRepositorio: TcxGridViewRepository;
    BViewRHEstados: TcxGridDBBandedTableView;
    Nombre: TcxGridDBBandedColumn;
    BViewCompanias: TcxGridDBBandedTableView;
    BViewCompaniassIdCompania1: TcxGridDBBandedColumn;
    BViewCompaniassRazonSocial1: TcxGridDBBandedColumn;
    BView_Medidas: TcxGridDBBandedTableView;
    BView_MedidasColumn1: TcxGridDBBandedColumn;
    BView_MedidasColumn2: TcxGridDBBandedColumn;
    BView_PrecioDivisas: TcxGridDBBandedTableView;
    BView_PrecioDivisasColumn1: TcxGridDBBandedColumn;
    BView_PrecioDivisasColumn2: TcxGridDBBandedColumn;
    BView_PrecioDivisasColumn3: TcxGridDBBandedColumn;
    BView_CentroCosto: TcxGridDBTableView;
    BView_CentroCostoColumn1: TcxGridDBColumn;
    BView_CentroCostoColumn2: TcxGridDBColumn;
    frxOrdenCompra: TfrxDBDataset;
    reporte: TUniQuery;
    frxDBRequisicion: TfrxDBDataset;
    frxDBEntradas: TfrxDBDataset;
    frxDBEntrada: TfrxDBDataset;
    frxDBAvisoEmbarque: TfrxDBDataset;
    Db_proyecto: TfrxDBDataset;
    frxOrdenCompras: TfrxDBDataset;
    cxIconosMenus16: TcxImageList;
    frxDBInspeccion: TfrxDBDataset;
    ds_Presupuestos: TfrxDBDataset;
    ds_Presupuesto: TfrxDBDataset;
    Costo_presupuesto: TfrxDBDataset;
    ds_PProyectos: TfrxDBDataset;
    reportePP: TUniQuery;
    reportePr: TUniQuery;
    zDetallePrecioUnitario: TFloatField;
    zDetalleIdPresupuestoDetalle: TIntegerField;
    zDetallesContrato: TStringField;
    zDetallesNumeroOrden: TStringField;
    zDetalleIdRecurso: TIntegerField;
    zDetalleIdTipoRecurso: TIntegerField;
    zDetalleCodigo: TStringField;
    zDetalleDescripcion: TStringField;
    zDetalleIdMedida: TIntegerField;
    zDetalleCantidad: TFloatField;
    zDetalleCosto: TFloatField;
    zDetallePU: TFloatField;
    zDetalleTipoRecurso: TStringField;
    zDetalleUMedida: TStringField;
    zDetalleAdicional: TFloatField;
    zDetalleCostoAdicional: TFloatField;
    zDetalleTotalCosto: TFloatField;
    zDetallenumCom: TIntegerField;
    reportePrJornadas: TFloatField;
    reportePrFinanciamiento: TFloatField;
    reportePrCostoFinanciamiento: TFloatField;
    reportePrProyecto: TStringField;
    frxDBDataset1: TfrxDBDataset;
    frxDBSolicitud: TfrxDBDataset;
    ds_GProv: TfrxDBDataset;
    reportePG: TUniQuery;
    reportePI: TUniQuery;
    ds_GProvI: TfrxDBDataset;

    procedure reportePrCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrepositorio: Tfrmrepositorio;

implementation

{$R *.dfm}



procedure Tfrmrepositorio.reportePrCalcFields(DataSet: TDataSet);
begin
if reportePr.RecordCount > 0 then begin
  //calculo el costo total (jornadas*cantidad*costo)
  reportePr.FieldByName('TotalCosto').AsFloat     := reportePr.FieldByName('Cantidad').AsFloat * reportePr.FieldByName('Costo').AsFloat * reportePr.FieldByName('Jornadas').AsFloat;
  //calculo el costo adicional
  reportePr.FieldByName('CostoAdicional').AsFloat := RoundTo(reportePr.FieldByName('TotalCosto').AsFloat * reportePr.FieldByName('Adicional').AsFloat / 100,-2);
  //calculo el costo con financiamiento
  reportePr.FieldByName('CostoFinanciamiento').AsFloat := RoundTo((reportePr.FieldByName('TotalCosto').AsFloat+reportePr.FieldByName('CostoAdicional').AsFloat) * reportePr.FieldByName('Financiamiento').AsFloat / 100,-2);
  //sumo todos los costos para obtener el precio unitario (importe)
  reportePr.FieldByName('PrecioUnitario').AsFloat := RoundTo(reportePr.FieldByName('TotalCosto').AsFloat + reportePr.FieldByName('CostoAdicional').AsFloat + reportePr.FieldByName('CostoFinanciamiento').AsFloat,-2);
   end;
end;

end.
