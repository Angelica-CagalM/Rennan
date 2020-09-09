unit Frm_Asignacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxProgressBar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, MemDS, DBAccess, Uni, cxCheckBox;

type
  TFrmAsignacion = class(TForm)
    PanelCentral: TPanel;
    Panel3: TPanel;
    cxLeyenda: TcxLabel;
    btnAdd: TcxButton;
    btnDetalle: TcxButton;
    PanelDetalle: TPanel;
    Grid_Entradas: TcxGrid;
    Grid_EntradasDBTableView1: TcxGridDBTableView;
    Grid_EntradasDBTableView1Column2: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column3: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column4: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column6: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column8: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column10: TcxGridDBColumn;
    Grid_EntradasLevel1: TcxGridLevel;
    PanelTop: TPanel;
    cxLeyenda2: TcxLabel;
    GridPartidas: TcxGrid;
    GridPartidasView: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxSplitterDetalle: TcxSplitter;
    zResguardo: TUniQuery;
    dsResguardo: TDataSource;
    zDetalle: TUniQuery;
    dsDetalle: TDataSource;
    GridPartidasViewColumn1: TcxGridDBColumn;
    GridPartidasViewColumn2: TcxGridDBColumn;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    Busca: TUniQuery;
    procedure btnDetalleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Grid_EntradasDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    Procedure addDevolcer();
    Procedure addEntrada();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAsignacion: TFrmAsignacion;
  devuelto:boolean;
implementation
   uses Frm_connection,Unitgenerales,global;
{$R *.dfm}

procedure TFrmAsignacion.addDevolcer;
Var
    indice, iGrid    : integer;
    lContinua : boolean;
  zEdit,zInsert:TUniquery;
begin
    Connection.qryUBusca.Active:=False;
    Connection.qryUBusca.SQL.Text:='Select a.iFolioEntrada, a.IdAlmacen, a.sNumeroOrden from almacen_entrada as a where a.iFolioMovimiento = :Salida';
    Connection.qryUBusca.ParamByName('Salida').AsString:=zResguardo.FieldByName('IdSalida').AsString;
    Connection.qryUBusca.Open;

    iGrid     := 0;
    indice := GridPartidasView.DataController.GetSelectedRowIndex(iGrid);
    GridPartidasView.DataController.FocusedRowIndex := indice;

    with GridPartidasView.DataController.DataSource.DataSet do
    for iGrid := 0 to GridPartidasView.DataController.GetSelectedCount - 1 do
    begin
        indice := GridPartidasView.DataController.GetSelectedRowIndex(iGrid);
        GridPartidasView.DataController.FocusedRowIndex := indice;

         if  dsDetalle.DataSet.FieldByName('Estatus').AsString ='EN RESGUARDO' then
         begin
           zInsert:=tUniquery.create(nil);
           zInsert.Connection := Connection.uConnection;

           zInsert.Active:=False;
           zInsert.SQL.Add('INSERT INTO bitacoradeentrada (sContrato, iItem, iFolioPedido, IdInsumo, dFechaEntrega, dCantidad, dPrecio,'+
           ' dNuevoPrecio, dCantidadAnterior, IdAlmacen, IdProveedor, sNumeroOrden, sNumeroActividad, sIdUsuario, mComentarios, IdFamilia, iFolioEntrada, dCantidadTotal, IdSerie, eCertificado, IdBitacoraEntrada) '+
            'VALUES (:sContrato, :iItem, :iFolioPedido, :IdInsumo, :dFechaEntrega, :dCantidad, :dPrecio, :dNuevoPrecio, :dCantidadAnterior, :IdAlmacen, :IdProveedor, :sNumeroOrden, :sNumeroActividad, :sIdUsuario, '+
            ':mComentarios, :IdFamilia, :iFolioEntrada, :dCantidadTotal, :IdSerie, :eCertificado, 0)');
           zInsert.ParamByName('sContrato').AsString:=Global_Contrato;
           zInsert.ParamByName('iItem').AsInteger:=0;
           zInsert.ParamByName('iFolioPedido').AsInteger:=0;
           zInsert.ParamByName('IdInsumo').AsInteger:=zDetalle.FieldByName('IdInsumo').AsInteger;
           zInsert.ParamByName('dFechaEntrega').AsDate:=now;
           zInsert.ParamByName('dCantidad').AsInteger:=zDetalle.FieldByName('Cantidad').AsInteger;
           zInsert.ParamByName('dPrecio').AsInteger:=0;
           zInsert.ParamByName('dNuevoPrecio').AsInteger:=0;
           zInsert.ParamByName('dCantidadAnterior').AsInteger:=0;
           zInsert.ParamByName('IdAlmacen').AsInteger:=Connection.qryUBusca.FieldByName('IdAlmacen').AsInteger;
           zInsert.ParamByName('IdProveedor').AsInteger:=0;
           zInsert.ParamByName('sNumeroOrden').AsString:=Connection.qryUBusca.FieldByName('sNumeroOrden').AsString;
           zInsert.ParamByName('sNumeroActividad').AsString:='N/A';
           zInsert.ParamByName('sIdUsuario').AsString:=global_usuario;
           zInsert.ParamByName('IdFamilia').AsInteger := zDetalle.FieldByName('IdFamilia').AsInteger;
           zInsert.ParamByName('iFolioEntrada').AsInteger:=Connection.qryUBusca.FieldByName('iFolioEntrada').AsInteger;
           zInsert.ParamByName('dCantidadTotal').AsInteger:=zDetalle.FieldByName('Cantidad').AsInteger;
           zInsert.ParamByName('IdSerie').AsInteger:=0;
           zInsert.ParamByName('eCertificado').AsString:='N/A';
           zInsert.ExecSQL;

           zEdit:=tUniquery.create(nil);
           zEdit.Connection := Connection.uConnection;    
                  
           zEdit.SQL.Add('UPDATE vale_resguardo_detalle SET Fecha=:Fecha, Estatus=:Estatus WHERE IdValeDetalle=:Id');
           zEdit.ParamByName('Fecha').AsDateTime:=now;
           zEdit.ParamByName('Estatus').AsString:='ENTREGADO';
           zEdit.ParamByName('Id').AsString:=zDetalle.FieldByName('IdValeDetalle').AsString;
           zEdit.ExecSQL;
           
           Devuelto:=True;
         end
         else
           Devuelto:=False;
    end;
end;

procedure TFrmAsignacion.addEntrada;
begin
  Connection.qryUBusca.Active:=False;
  Connection.qryUBusca.SQL.Text:='select s.sContrato, s.IdAlmacen, sNumeroOrden, v.IdSalida From vale_resguardo as v Inner join almacen_salida as s on (v.IdSalida = s.iFolioSalida) where v.IdSalida = :Salida';
  Connection.qryUBusca.ParamByName('Salida').AsString:=zResguardo.FieldByName('IdSalida').AsString;
  Connection.qryUBusca.Open;

  Connection.qryUBusca2.Active:=False;
  Connection.qryUBusca2.SQL.Add('INSERT INTO almacen_entrada (sContrato, IdAlmacen, iFolioPedido, dFechaEntrega, IdOrdenCompra, IdProveedor, sNumeroOrden, dFecha, sIdUsuario, mComentarios, IdTipo, iFolioEntrada, sFolioEntrada, iPeriodo, iFolioMovimiento, sEntrega) '+
                               'VALUES (:sContrato, :IdAlmacen, :iFolioPedido, :dFechaEntrega, :IdOrdenCompra, :IdProveedor, :sNumeroOrden, :dFecha, :sIdUsuario, :mComentarios, :IdTipo, 0, :sFolioEntrada, :iPeriodo, :iFolioMovimiento, :sEntrega)');
  Connection.qryUBusca2.ParamByName('sContrato').AsString := GLOBAL_CONTRATO;
  Connection.qryUBusca2.ParamByName('sNumeroOrden').AsString:=Connection.qryUBusca.FieldByName('sNumeroOrden').AsString;
  Connection.qryUBusca2.ParamByName('IdAlmacen').AsInteger := Connection.qryUBusca.FieldByName('IdAlmacen').AsInteger;
  Connection.qryUBusca2.ParamByName('iFolioPedido').AsInteger:=0;
  Connection.qryUBusca2.ParamByName('dFechaEntrega').AsDate := Now;
  Connection.qryUBusca2.ParamByName('IdOrdenCompra').AsInteger:=0;
  Connection.qryUBusca2.ParamByName('IdProveedor').AsInteger:=0;
  Connection.qryUBusca2.ParamByName('dFecha').AsDate := Now;
  Connection.qryUBusca2.ParamByName('sIdUsuario').AsString:=Global_Usuario;
  Connection.qryUBusca2.ParamByName('mComentarios').AsString:='Devolucion de Asignaciones';
  Connection.qryUBusca2.ParamByName('IdTipo').AsInteger:=3;
  Connection.qryUBusca2.ParamByName('sFolioEntrada').AsString:='DEVOLICION';
  Connection.qryUBusca2.ParamByName('iPeriodo').AsInteger:=0;
  Connection.qryUBusca2.ParamByName('iFolioMovimiento').AsInteger:=Connection.qryUBusca.FieldByName('IdSalida').AsInteger;
  Connection.qryUBusca2.ParamByName('sEntrega').AsString:='';
  Connection.QryUBusca2.ExecSQL;
end;

procedure TFrmAsignacion.btnAddClick(Sender: TObject);
begin
  if zResguardo.FieldByName('Estatus').AsString <> 'CANCELADO'  then
  begin
    PanelDetalle.Visible:=True;
    PanelDown.Visible:=True;
  end
  else
    showMessage('No se puede realizar la devolución');
end;

procedure TFrmAsignacion.btnDetalleClick(Sender: TObject);
begin
  PanelDetalle.Visible := Not PanelDetalle.Visible;
  cxSplitterDetalle.Visible:= not cxSplitterDetalle.Visible;
end;

procedure TFrmAsignacion.cxCancelarDetalleClick(Sender: TObject);
begin
PanelDown.Visible:=False;
end;

procedure TFrmAsignacion.cxGuardarDetalleClick(Sender: TObject);

begin
    Busca.Active:=False;
    Busca.SQL.Text:='Select a.* from almacen_entrada as a where a.iFolioMovimiento = :Salida';
    Busca.ParamByName('Salida').AsString:=zResguardo.FieldByName('IdSalida').AsString;
    Busca.Open;

  if MessageDlg('Desea crear la entrada de material recbido ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    if Busca.RecordCount = 0 then
    begin
      try
        addEntrada;
      except
        on e: Exception do
        begin
         ShowMessage('Error al devolber!');
        end;
      end;

    end;

    try
      addDevolcer;
      if devuelto then
      begin
       zDetalle.Refresh;
       ShowMessage('Devolucion existosa!');
      end;
    except
      on e: Exception do
      begin
         ShowMessage('Error al devolber!');
      end;
    end;

  end;
  cxCancelarDetalleClick(Sender);
end;

procedure TFrmAsignacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmAsignacion.FormShow(Sender: TObject);
begin
  AsignarSQL(zResguardo,'vale_resguardo',pUpdate);
  FiltrarDataSet(zResguardo,'Usuario',[global_usuario]);
  zResguardo.Open;

end;

procedure TFrmAsignacion.Grid_EntradasDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  AsignarSQL(zDetalle,'vale_detalle',pUpdate);
  FiltrarDataSet(zDetalle,'vale',[zResguardo.FieldByName('IdVale').AsString]);
  zDetalle.Open;
end;

end.
