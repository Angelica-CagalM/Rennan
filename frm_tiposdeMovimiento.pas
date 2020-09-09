unit frm_tiposdeMovimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, RxCombos,UnitValidacion, 
  ZAbstractRODataset, ZAbstractDataset, ZDataset, unitexcepciones,
  unittbotonespermisos, UnitValidaTexto, UnitTablasImpactadas, unitactivapop,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxImageComboBox, cxCurrencyEdit, cxContainer,
  dxBarBuiltInMenu, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxDBLookupComboBox, cxGroupBox, cxRadioGroup,
  cxDBEdit, cxCalc, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxSplitter, cxCheckBox, dxToggleSwitch,
  dxDBToggleSwitch, dxLayoutControl, cxPC, cxButtons, frm_barraH2, cxLabel,
  frm_barraH1, MemDS, DBAccess, Uni, cxColorComboBox, cxDBColorComboBox,
  unitGenerales;
type
  TfrmTiposdeMovimiento = class(TForm)
    ds_tiposdemovimiento: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    TiposdeMovimiento: TZQuery;
    TiposdeMovimientosContrato: TStringField;
    TiposdeMovimientosIdTipoMovimiento: TStringField;
    TiposdeMovimientosDescripcion: TStringField;
    TiposdeMovimientosClasificacion: TStringField;
    TiposdeMovimientosMedida: TStringField;
    TiposdeMovimientosTipo: TStringField;
    TiposdeMovimientoiOrden: TStringField;
    TiposdeMovimientolGrafica: TStringField;
    TiposdeMovimientoiColor: TIntegerField;
    TiposdeMovimientodVentaMN: TFloatField;
    TiposdeMovimientodVentaDLL: TFloatField;
    TiposdeMovimientolGenera: TStringField;
    TiposdeMovimientoiIdEstimacionContrato: TIntegerField;
    TiposdeMovimientodCantidad: TFloatField;
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelPrincipal: TPanel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitterMedio: TcxSplitter;
    grid_tiposdemovimiento: TcxGrid;
    cxView_tiposdemovimiento: TcxGridDBTableView;
    grid_tiposdemovimientoLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxMedida: TcxDBTextEdit;
    cxDescripcion: TcxDBTextEdit;
    cxClasificacion: TcxDBComboBox;
    cxTipoMov: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    zTiposdeMov: TUniQuery;
    dxGrafica: TdxDBToggleSwitch;
    dxLayoutItem7: TdxLayoutItem;
    cxOrden: TcxDBComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxVentaMN: TcxDBCurrencyEdit;
    cxVentaDLL: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxTipo: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxImprimir: TdxDBToggleSwitch;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxColor2: TcxDBColorComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxView_Tipodemovimiento: TcxGridDBColumn;
    cxView_Tipo: TcxGridDBColumn;
    cxView_Descripcion: TcxGridDBColumn;
    cxView_Clasificacion: TcxGridDBColumn;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgrd_tiposdemovimientCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure tlGraficaKeyPress(Sender: TObject; var Key: Char);
    procedure tsClasificacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsClasificacionEnter(Sender: TObject);
    procedure tsClasificacionExit(Sender: TObject);
    procedure tlGraficaEnter(Sender: TObject);
    procedure tlGraficaExit(Sender: TObject);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tdVentaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaDLLEnter(Sender: TObject);
    procedure tdVentaDLLExit(Sender: TObject);
    //procedure tiColoresChange(Sender: TObject);
    procedure tiColoresEnter(Sender: TObject);
    procedure tiColoresExit(Sender: TObject);
    procedure tiColoresKeyPress(Sender: TObject; var Key: Char);
    procedure TiposdeMovimientoAfterScroll(DataSet: TDataSet);
    procedure tiOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tiOrdenEnter(Sender: TObject);
    procedure tiOrdenExit(Sender: TObject);
    procedure tiColorEnter(Sender: TObject);
    procedure tiColorExit(Sender: TObject);
    procedure tsIdTipoMovimientoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_tiposdemovimientMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_tiposdemovimientMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_tiposdemovimientTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure tdVentaMNChange(Sender: TObject);
    procedure tdVentaDLLChange(Sender: TObject);
    procedure TiposdeMovimientoBeforePost(DataSet: TDataSet);
    procedure TiposdeMovimientodVentaMNSetText(Sender: TField;
      const Text: string);
    procedure TiposdeMovimientodVentaDLLSetText(Sender: TField;
      const Text: string);
    procedure cxColor2PropertiesChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure zTiposdeMovAfterScroll(DataSet: TDataSet);
    procedure zTiposdeMovBeforePost(DataSet: TDataSet);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxClasificacionPropertiesEditValueChanged(Sender: TObject);
    procedure cxOrdenPropertiesChange(Sender: TObject);
    procedure cxClasificacionPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTiposdeMovimiento: TfrmTiposdeMovimiento;
  //utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
  sIdOrig : string;
    btnPermisos,titulo : String;
implementation

{$R *.dfm}

procedure TfrmTiposdeMovimiento.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then
//    tiOrden.SetFocus
end;

procedure TfrmTiposdeMovimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TiposdeMovimiento.Cancel ;
  action := cafree ;
  //utgrid.destroy;
  botonpermiso.Free;
end;

procedure TfrmTiposdeMovimiento.FormShow(Sender: TObject);
begin
  titulo := 'Tipos de Movimientos';
  cxLeyenda.Caption := titulo;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adTiposMov', PopupPrincipal);

  OpcButton := '' ;
  sIdOrig := '';

   panel2.Visible := False;
   cxSplitterMedio.Visible := False;

   panelDetalle.Visible := False;
   cxSplitterOpciones.Visible := False;

    AsignarSQL(zTiposdeMov,'tiposdemovimiento', pUpdate);
    zTiposdeMov.Open;
end;

procedure TfrmTiposdeMovimiento.dbgrd_tiposdemovimientCellClick(Column: TColumn);
begin
//  if frmBarraH21.btnCancel.Enabled = True then
//      frmBarraH21.btnCancel.Click ;
end;

procedure TfrmTiposdeMovimiento.dbgrd_tiposdemovimientMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmTiposdeMovimiento.dbgrd_tiposdemovimientMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmTiposdeMovimiento.dbgrd_tiposdemovimientTitleClick(
  Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmTiposdeMovimiento, popupprincipal);
   frmBarraH11.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   //tiColores.ItemIndex := 0 ;
   zTiposdeMov.Append ;
   zTiposdeMov.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   zTiposdeMov.FieldValues [ 'sClasificacion' ]  := 'Tiempo en Operacion' ;
   zTiposdeMov.FieldValues [ 'sDescripcion' ]  := '*' ;
   zTiposdeMov.FieldValues [ 'lGrafica' ]   := 'No' ;
   zTiposdeMov.FieldValues [ 'iColor' ]     := 0 ;
   zTiposdeMov.FieldValues [ 'dVentaMN' ]   := 0 ;
   zTiposdeMov.FieldValues [ 'dVentaDLL' ]  := 0 ;
   zTiposdeMov.FieldValues [ 'sTipo' ]      := '' ;
   zTiposdeMov.FieldValues [ 'lGenera' ]    := 'Si' ;
   zTiposdeMov.FieldValues [ 'iIdEstimacionContrato' ] := 0;
   zTiposdeMov.FieldValues [ 'dCantidad' ]  := 0 ;

   if cxClasificacion.Properties.Items.Text = 'Tiempo en Operación' then
      zTiposdeMov.FieldByName('iOrden').AsString := '1';

   if cxClasificacion.Properties.Items.Text = 'REcursos' then
      zTiposdeMov.FieldByName('iOrden').AsString := '2';

//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Tiempo en Operacion' Then
//      zTiposdeMov.FieldValues['iOrden'] := '1' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Recursos' Then
//      zTiposdeMov.FieldValues['iOrden'] := '2' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Tiempo Muerto' Then
//      zTiposdeMov.FieldValues['iOrden'] := '3' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Notas' Then
//      zTiposdeMov.FieldValues['iOrden'] := '4' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Movimiento de Barco' Then
//      zTiposdeMov.FieldValues['iOrden'] := '5' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Clasificacion de Pernoctas' Then
//      zTiposdeMov.FieldValues['iOrden'] := '6' ;

   Case cxColor2.ItemIndex Of
        0 : cxColor2.ItemIndex := 0 ;
        1 : cxColor2.ItemIndex := 8 ;
        2 : cxColor2.ItemIndex := 9 ;
        3 : cxColor2.ItemIndex := 11 ;
        4 : cxColor2.ItemIndex := 10 ;
        5 : cxColor2.ItemIndex := 11 ;
        6 : cxColor2.ItemIndex := 13 ;
        7 : cxColor2.ItemIndex := 15 ;
        8 : cxColor2.ItemIndex := 14 ;
        9 : cxColor2.ItemIndex := 2 ;
        10 : cxColor2.ItemIndex := 3 ;
        11 : cxColor2.ItemIndex := 5 ;
        12 : cxColor2.ItemIndex := 4 ;
        13 : cxColor2.ItemIndex := 6 ;
        14 : cxColor2.ItemIndex := 7 ;
        15 : cxColor2.ItemIndex := 1 ;
   End ;
//
//   tsIdTipoMovimiento.SetFocus ;
  // BotonPermiso.permisosBotones(frmBarra1);
   frmBarraH11.btnPrinter.Enabled := False;
   grid_tiposdemovimiento.Enabled := False;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnEditClick(Sender: TObject);
begin
   //activapop(frmTiposdeMovimiento, popupprincipal);
   frmBarraH11.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sIdOrig := zTiposdeMov.FieldByName('sIdTipoMovimiento').AsString;
   try
      TiposdeMovimiento.Edit ;
   except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al editar registro', 0);
      //  frmBarraH21.btnCancel.Click ;
       end;
   end ;
//   tsIdTipoMovimiento.SetFocus;
  // BotonPermiso.permisosBotones(frmBarra1);
   frmBarraH11.btnPrinter.Enabled := False;
   grid_tiposdemovimiento.Enabled := False;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnPostClick(Sender: TObject);
var
   nombres, cadenas: TStringList;
   lEdita: boolean;
begin
   desactivapop(popupprincipal);
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Orden de Impresion');nombres.Add('Descripcion');nombres.Add('Clasificaion');nombres.Add('Grafica');
   cadenas.Add(cxOrden.Text);cadenas.Add(cxDescripcion.Text);cadenas.Add(cxClasificacion.Text);
   if not validaTexto(nombres, cadenas, 'Tipo de Movimiento', cxTipoMov.Text) then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   //end;
   {Continua insercion de datos}
   lEdita := false;
   if TiposdeMovimiento.State = dsEdit then
      lEdita := true;
//MessageDlg( inttostr ( cmbColor.Selected ) , mtInformation, [mbOk], 0);
   try                                      //estaba como comentario
      TiposdeMovimiento.FieldValues['iColor'] := cxColor2.Text ;
      TiposdeMovimiento.Post ;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      //frmBarraH21.btnPostClick(Sender);
   except                          //estaba como comentario
//      MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al salvar registro', 0);
      //  frmBarraH21.btnCancel.Click ;  //estabacomocomentario
        lEdita := false;//cancelar la actualizacion de tablas dependientes
       end;
   end;
   if (lEdita) and (TiposdeMovimiento.FieldByName('sIdTipoMovimiento').AsString <> sIdOrig) then
   begin
       tablasDependientes(sIdOrig);
   end;
  // BotonPermiso.permisosBotones(frmBarra1);                //estabacomocomentario
   frmBarraH11.btnPrinter.Enabled := False;
   grid_tiposdemovimiento.Enabled := True;
end;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnCancelClick(Sender: TObject);
begin
   //desactivapop(popupprincipal);
  // frmBarraH21.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   TiposdeMovimiento.Cancel ;
  // BotonPermiso.permisosBotones(frmBarra1);
   frmBarraH11.btnPrinter.Enabled := False;
   grid_tiposdemovimiento.Enabled := True;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If TiposdeMovimiento.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(TiposdeMovimiento.FieldByName('sIdTipoMovimiento').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      try
        TiposdeMovimiento.Delete ;
      except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al eliminar registro', 0);
       end;
      end
    end
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnRefreshClick(Sender: TObject);
begin
  TiposdeMovimiento.Active := False ;
  TiposdeMovimiento.Open ;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnExitClick(Sender: TObject);
begin
   //frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close
end;

procedure TfrmTiposdeMovimiento.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
 //   tsClasificacion.SetFocus
end;

procedure TfrmTiposdeMovimiento.Insertar1Click(Sender: TObject);
begin
   // frmBarra1.btnAdd.Click
end;

procedure TfrmTiposdeMovimiento.Paste1Click(Sender: TObject);
begin
  //UtGrid.AddRowsFromClip;
end;

procedure TfrmTiposdeMovimiento.Copy1Click(Sender: TObject);
begin
   //UtGrid.CopyRowsToClip;
end;





procedure TfrmTiposdeMovimiento.btnAddClick(Sender: TObject);
begin
 //activapop(frmTiposdeMovimiento, popupprincipal);
 cxLeyenda.Caption:=titulo+'[Añadiendo]';
   frmBarraH11.btnAddClick(Sender);
   panel2.Visible := True;
   cxSplitterMedio.Visible := True;
   frmBarraH11.btnActive;
   zTiposdeMov.Active := False;
   zTiposdeMov.Open;

   zTiposdeMov.Append ;
   zTiposdeMov.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   zTiposdeMov.FieldValues [ 'sClasificacion' ]  := 'Tiempo en Operacion' ;
   zTiposdeMov.FieldValues [ 'sDescripcion' ]  := '*' ;
   zTiposdeMov.FieldValues [ 'lGrafica' ]   := 'No' ;
   zTiposdeMov.FieldValues [ 'iColor' ]     := 0 ;
   zTiposdeMov.FieldValues [ 'dVentaMN' ]   := 0 ;
   zTiposdeMov.FieldValues [ 'dVentaDLL' ]  := 0 ;
   zTiposdeMov.FieldValues [ 'sTipo' ]      := '' ;
   zTiposdeMov.FieldValues [ 'lGenera' ]    := 'Si' ;
   zTiposdeMov.FieldValues [ 'iIdEstimacionContrato' ] := 0;
   zTiposdeMov.FieldValues [ 'dCantidad' ]  := 0 ;
   zTiposdeMov.FieldValues [ 'lImprimeCeros' ]  := 'Si';
   If zTiposdeMov.FieldValues['sClasificacion'] = 'Tiempo en Operacion' Then
      zTiposdeMov.FieldValues['iOrden'] := '1' ;
   If zTiposdeMov.FieldValues['sClasificacion'] = 'Recursos' Then
      zTiposdeMov.FieldValues['iOrden'] := '2' ;
   If zTiposdeMov.FieldValues['sClasificacion'] = 'Tiempo Muerto' Then
      zTiposdeMov.FieldValues['iOrden'] := '3' ;
   If zTiposdeMov.FieldValues['sClasificacion'] = 'Notas' Then
      zTiposdeMov.FieldValues['iOrden'] := '4' ;
   If zTiposdeMov.FieldValues['sClasificacion'] = 'Movimiento de Barco' Then
      zTiposdeMov.FieldValues['iOrden'] := '5' ;
   If zTiposdeMov.FieldValues['sClasificacion'] = 'Clasificacion de Pernoctas' Then
      zTiposdeMov.FieldValues['iOrden'] := '6' ;

   Case cxColor2.ItemIndex Of
        0 : cxColor2.ItemIndex := 0 ;
        1 : cxColor2.ItemIndex := 8 ;
        2 : cxColor2.ItemIndex := 9 ;
        3 : cxColor2.ItemIndex := 11 ;
        4 : cxColor2.ItemIndex := 10 ;
        5 : cxColor2.ItemIndex := 11 ;
        6 : cxColor2.ItemIndex := 13 ;
        7 : cxColor2.ItemIndex := 15 ;
        8 : cxColor2.ItemIndex := 14 ;
        9 : cxColor2.ItemIndex := 2 ;
        10 : cxColor2.ItemIndex := 3 ;
        11 : cxColor2.ItemIndex := 5 ;
        12 : cxColor2.ItemIndex := 4 ;
        13 : cxColor2.ItemIndex := 6 ;
        14 : cxColor2.ItemIndex := 7 ;
        15 : cxColor2.ItemIndex := 1 ;
   End ;
//
//   tsIdTipoMovimiento.SetFocus ;
  // BotonPermiso.permisosBotones(frmBarra1);
   frmBarraH11.btnPrinter.Enabled := False;
    frmBarraH11.Enabled := True;
   grid_tiposdemovimiento.Enabled := False;
end;

procedure TfrmTiposdeMovimiento.btnCancelClick(Sender: TObject);
begin
     cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    cxSplitterMedio.Visible := False;
    frmBarraH11.btnActive;
    grid_tiposdemovimiento.Enabled:=True;
    ds_tiposdemovimiento.DataSet.Cancel;
end;

procedure TfrmTiposdeMovimiento.btnDeleteClick(Sender: TObject);
begin
 If zTiposdeMov.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(zTiposdeMov.FieldByName('sIdTipoMovimiento').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      try
        zTiposdeMov.Delete ;
      except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al eliminar registro', 0);
       end;
      end
    end
end;

procedure TfrmTiposdeMovimiento.btnEditClick(Sender: TObject);
begin
 //activapop(frmTiposdeMovimiento, popupprincipal);
  cxLeyenda.Caption:=titulo+'[Editando]';

   frmBarraH11.btnEditClick(Sender);
   Panel2.Visible:=True;
   cxSplitterMedio.Visible := True;

   sIdOrig := zTiposdeMov.FieldByName('sIdTipoMovimiento').AsString;
   try
      zTiposdeMov.Edit ;
      cxTipoMov.SetFocus;
   except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al editar registro', 0);
       frmBarraH21.btnCancel.Click ;
       end;
   end ;


end;

procedure TfrmTiposdeMovimiento.btnPostClick(Sender: TObject);
var
   nombres, cadenas: TStringList;
   lEdita: boolean;
begin

   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('sIdTipoMovimiento');
   nombres.Add('Descripcion');
   nombres.Add('Tipo');

   cadenas.Add(cxTipoMov.Text);
   cadenas.Add(cxDescripcion.Text);
   cadenas.Add(cxTipo.Text);

   if not validaTexto(nombres, cadenas, 'Tipo de Movimiento', cxTipoMov.Text) then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;

   {Continua insercion de datos}
   lEdita := false;
   if zTiposdeMov.State = dsEdit then
      lEdita := true;
//MessageDlg( inttostr ( cmbColor.Selected ) , mtInformation, [mbOk], 0);
  try                                      //estaba como comentario
     // zTiposdeMov.FieldValues['iColor'] := cxColor2.Text ;
      zTiposdeMov.Post ;

      frmBarraH21.btnPostClick(Sender);
   except                          //estaba como comentario
//      MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al salvar registro', 0);
       end;
   end;

     frmBarraH11.btnActive;

     cxLeyenda.Caption:=titulo;
     Panel2.Visible  :=False;
     cxSplitterMedio.Visible := False;

    grid_tiposdemovimiento.Enabled := True;
     PermisosBotones(frmTiposdeMovimiento,btnPermisos);
end;




procedure TfrmTiposdeMovimiento.btnRefreshClick(Sender: TObject);
begin
  zTiposdeMov.Refresh;
end;


procedure TfrmTiposdeMovimiento.tlGraficaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
   // tiColores.SetFocus
end;


procedure TfrmTiposdeMovimiento.tsClasificacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  //  tlGrafica.SetFocus
end;


procedure TfrmTiposdeMovimiento.tsIdTipoMovimientoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  //  tiorden.SetFocus

end;

procedure TfrmTiposdeMovimiento.zTiposdeMovAfterScroll(DataSet: TDataSet);
begin
   Case cxColor2.ItemIndex Of
        0 : cxColor2.ItemIndex := 0 ;
        1 : cxColor2.ItemIndex := 1 ;
        2 : cxColor2.ItemIndex := 2 ;
        3 : cxColor2.ItemIndex := 3 ;
        4 : cxColor2.ItemIndex := 4 ;
        5 : cxColor2.ItemIndex := 5 ;
        6 : cxColor2.ItemIndex := 6 ;
        7 : cxColor2.ItemIndex := 7 ;
        8 : cxColor2.ItemIndex := 8 ;
        9 : cxColor2.ItemIndex := 9 ;
        10 : cxColor2.ItemIndex := 10 ;
        11 : cxColor2.ItemIndex := 11 ;
        12 : cxColor2.ItemIndex := 12 ;
        13 : cxColor2.ItemIndex := 13 ;
        14 : cxColor2.ItemIndex := 14 ;
        15 : cxColor2.ItemIndex := 15 ;
   End ;
end;

procedure TfrmTiposdeMovimiento.zTiposdeMovBeforePost(DataSet: TDataSet);
begin
   PCAbsoluto(TiposdeMovimiento,'dVentaMN');
   PCAbsoluto(TiposdeMovimiento,'dVentaDLL');
end;

procedure TfrmTiposdeMovimiento.tsDescripcionEnter(Sender: TObject);
begin
  //  tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tsDescripcionExit(Sender: TObject);
begin
  //  tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tsClasificacionEnter(Sender: TObject);
begin
  //  tsClasificacion.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tsClasificacionExit(Sender: TObject);
begin
 //   tsClasificacion.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tlGraficaEnter(Sender: TObject);
begin
   //tlGrafica.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tlGraficaExit(Sender: TObject);
begin
    //tlGrafica.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tdVentaMNChange(Sender: TObject);
begin
   //tdbeditchangef(tdVentaMN,'Venta MN');
end;

procedure TfrmTiposdeMovimiento.tdVentaMNEnter(Sender: TObject);
begin
  //  tdVentaMN.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tdVentaMNExit(Sender: TObject);
begin
    //tdVentaMN.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tdVentaMNKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if not keyFiltroTdbedit(tdVentaMN,key) then
//   key:=#0;
//  If Key = #13 then
//    tdVentaDLL.SetFocus
end;

procedure TfrmTiposdeMovimiento.tiColorEnter(Sender: TObject);
begin
//  ticolor.color:= global_color_entradaERP;
end;

procedure TfrmTiposdeMovimiento.tdVentaDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if not keyFiltroTdbedit(tdVentaDLL,key) then
//   key:=#0;
//  If key = #13 then
//    tsidTipoMovimiento.SetFocus
end;

function TfrmTiposdeMovimiento.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sIdTipoMovimiento');ParamValuesSET.Add(TiposdeMovimiento.FieldByName('sIdTipoMovimiento').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdTipoMovimiento');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('tiposdemovimiento',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
end;

function TfrmTiposdeMovimiento.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdTipoMovimiento');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('tiposdemovimiento',ParamNamesWHERE,ParamValuesWHERE);
end;

procedure TfrmTiposdeMovimiento.tdVentaDLLChange(Sender: TObject);
begin
//tdbeditchangef(tdVentaDLL,'Venta DLL');
end;

procedure TfrmTiposdeMovimiento.tdVentaDLLEnter(Sender: TObject);
begin
//    tdVentaDLL.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tdVentaDLLExit(Sender: TObject);
begin
   // tdVentaDLL.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.cxClasificacionPropertiesChange(
  Sender: TObject);
begin
//  if cxClasificacion = 'Tiempo en Operacion'  then
//      cxOrden.Properties.Items.Text := '1';
//
//  if cxClasificacion.Properties.Items.Text = 'Recursos'  then
//      cxOrden.Properties.Items.Text := '2';
end;

procedure TfrmTiposdeMovimiento.cxClasificacionPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxClasificacion.Properties.Items.Text = 'Tiempo en Operacion'  then
      cxOrden.Properties.Items.Text := '1';

  if cxClasificacion.Properties.Items.Text = 'Recursos'  then
      cxOrden.Properties.Items.Text := '2';
//
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Tiempo en Operacion' Then
//      zTiposdeMov.FieldValues['iOrden'] := '1' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Recursos' Then
//      zTiposdeMov.FieldValues['iOrden'] := '2' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Tiempo Muerto' Then
//      zTiposdeMov.FieldValues['iOrden'] := '3' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Notas' Then
//      zTiposdeMov.FieldValues['iOrden'] := '4' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Movimiento de Barco' Then
//      zTiposdeMov.FieldValues['iOrden'] := '5' ;
//   If zTiposdeMov.FieldValues['sClasificacion'] = 'Clasificacion de Pernoctas' Then
//      zTiposdeMov.FieldValues['iOrden'] := '6' ;

end;

procedure TfrmTiposdeMovimiento.cxColor2PropertiesChange(Sender: TObject);
begin
    Case cxColor2.ItemIndex Of
        0 : cxcolor2.ItemIndex := 0 ;
        1 : cxcolor2.ItemIndex := 1 ;
        2 : cxcolor2.ItemIndex := 2 ;
        3 : cxcolor2.ItemIndex := 3 ;
        4 : cxcolor2.ItemIndex := 4 ;
        5 : cxcolor2.ItemIndex := 5 ;
        6 : cxcolor2.ItemIndex := 6 ;
        7 : cxcolor2.ItemIndex := 7 ;
        8 : cxcolor2.ItemIndex := 8 ;
        9 : cxcolor2.ItemIndex := 9 ;
        10 : cxcolor2.ItemIndex := 10 ;
        11 : cxcolor2.ItemIndex := 11 ;
        12 : cxcolor2.ItemIndex := 12 ;
        13 : cxcolor2.ItemIndex := 13 ;
        14 : cxcolor2.ItemIndex := 14 ;
        15 : cxcolor2.ItemIndex := 15 ;
    End
end;

procedure TfrmTiposdeMovimiento.cxOrdenPropertiesChange(Sender: TObject);
begin
  if cxClasificacion.Properties.Items.Text = 'Tiempo en Operacion'  then
      cxOrden.Properties.Items.Text := '1';

  if cxClasificacion.Properties.Items.Text = 'Recursos'  then
      cxOrden.Properties.Items.Text := '2';
end;

procedure TfrmTiposdeMovimiento.tiColoresEnter(Sender: TObject);
begin
 //   tiColores.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tiColoresExit(Sender: TObject);
begin
 //   tiColores.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tiColoresKeyPress(Sender: TObject;
  var Key: Char);
begin
//  If key = #13 then
//    tdVentaMN.SetFocus
end;

procedure TfrmTiposdeMovimiento.tiColorExit(Sender: TObject);
begin
 // ticolor.Color:=global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tiOrdenEnter(Sender: TObject);
begin
  //  tiOrden.color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tiOrdenExit(Sender: TObject);
begin
 //   tiOrden.color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tiOrdenKeyPress(Sender: TObject; var Key: Char);
begin
//  if key = #13 then
//    tsDescripcion.SetFocus
end;

procedure TfrmTiposdeMovimiento.TiposdeMovimientoAfterScroll(
  DataSet: TDataSet);
begin
//   Case tiColor.ItemIndex Of
//        0 : tiColores.ItemIndex := 0 ;
//        1 : tiColores.ItemIndex := 1 ;
//        2 : tiColores.ItemIndex := 2 ;
//        3 : tiColores.ItemIndex := 3 ;
//        4 : tiColores.ItemIndex := 4 ;
//        5 : tiColores.ItemIndex := 5 ;
//        6 : tiColores.ItemIndex := 6 ;
//        7 : tiColores.ItemIndex := 7 ;
//        8 : tiColores.ItemIndex := 8 ;
//        9 : tiColores.ItemIndex := 9 ;
//        10 : tiColores.ItemIndex := 10 ;
//        11 : tiColores.ItemIndex := 11 ;
//        12 : tiColores.ItemIndex := 12 ;
//        13 : tiColores.ItemIndex := 13 ;
//        14 : tiColores.ItemIndex := 14 ;
//        15 : tiColores.ItemIndex := 15 ;
//   End ;
end;

procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin
if Zeo.FieldValues[Camp]<0 then
 Zeo.FieldValues[Camp]:=Zeo.FieldValues[Camp]*-1;
end;
procedure TfrmTiposdeMovimiento.TiposdeMovimientoBeforePost(DataSet: TDataSet);
begin
   PCAbsoluto(TiposdeMovimiento,'dVentaMN');
   PCAbsoluto(TiposdeMovimiento,'dVentaDLL');
end;

procedure TfrmTiposdeMovimiento.TiposdeMovimientodVentaDLLSetText(
  Sender: TField; const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmTiposdeMovimiento.TiposdeMovimientodVentaMNSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));
end;


procedure TfrmTiposdeMovimiento.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmTiposdeMovimiento.EnterControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBColorComboBox) then
        tcxDBColorComboBox(sender).Style.Color := global_color_entradaERP;

end;

procedure TfrmTiposdeMovimiento.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBColorComboBox) then
        tcxDBColorComboBox(sender).Style.Color := global_color_SalidaERP;
end;


end.
