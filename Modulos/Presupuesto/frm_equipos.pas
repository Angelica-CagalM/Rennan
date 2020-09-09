unit frm_equipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, frxClass,unitValidacion,
  frxDBSet, RXDBCtrl,  Buttons, RxMemDS, utilerias, RXSpin, DateUtils, ZDataset,
  ZAbstractRODataset,  rxCurrEdit, rxToolEdit, masUtilerias, frm_repositorio,
  UnitExcepciones, unittbotonespermisos, UnitValidaTexto, UnitExcel,
  ComObj, UnitTablasImpactadas, unitactivapop, UFunctionsGHH,
  ZAbstractDataset, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxBarBuiltInMenu, dxLayoutContainer, cxPC, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxCurrencyEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxCalendar, dxLayoutControlAdapters, cxButtons, cxSpinEdit, cxCalc,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmEquipos = class(TForm)
    frmBarra1: TfrmBarra;
    DBequipos: TfrxDBDataset;
    ds_equipos: TDataSource;
    ds_DistribuciondeEquipos: TDataSource;
    MemoryEquipos: TRxMemoryData;
    MemoryEquiposAnno: TIntegerField;
    MemoryEquiposMes: TStringField;
    MemoryEquiposCantidad: TFloatField;
    ds_Memory: TDataSource;
    frxEquipos: TfrxReport;
    MemoryEquiposiMes: TIntegerField;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    DBAnexoDT4: TfrxDBDataset;
    AnexoDT41: TMenuItem;
    ActualizacindeCostos1: TMenuItem;
    frxAnexoDT4: TfrxReport;
    ds_tiposdeequipo: TDataSource;
    Equipos: TZQuery;
    MaximoItem: TZReadOnlyQuery;
    TiposdeEquipo: TZReadOnlyQuery;
    DistribuciondeEquipos: TZQuery;
    DistribuciondeEquipossIdEquipo: TStringField;
    DistribuciondeEquiposdIdFecha: TDateField;
    DistribuciondeEquiposdCantidad: TFloatField;
    DistribuciondeEquiposiAnno: TIntegerField;
    DistribuciondeEquipossMes: TStringField;
    AnexoDT4: TZReadOnlyQuery;
    EquipossContrato: TStringField;
    EquipossIdEquipo: TStringField;
    EquiposiItemOrden: TIntegerField;
    EquipossDescripcion: TStringField;
    EquipossIdTipoEquipo: TStringField;
    EquipossMedida: TStringField;
    EquiposdCantidad: TFloatField;
    EquiposdCostoMN: TFloatField;
    EquiposdCostoDLL: TFloatField;
    EquiposdVentaMN: TFloatField;
    EquiposdVentaDLL: TFloatField;
    EquiposdFechaInicio: TDateField;
    EquiposdFechaFinal: TDateField;
    EquiposlProrrateo: TStringField;
    EquiposiJornada: TIntegerField;
    EquiposiCobro: TStringField;
    EquiposlImprime: TStringField;
    ExportaaPlantillaExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    grid_equipos: TcxGrid;
    grid_equiposView: TcxGridDBTableView;
    grid_equiposViewColumn1: TcxGridDBColumn;
    grid_equiposViewColumn2: TcxGridDBColumn;
    grid_equiposViewColumn3: TcxGridDBColumn;
    grid_equiposViewColumn5: TcxGridDBColumn;
    grid_equiposViewColumn6: TcxGridDBColumn;
    grid_equiposLevel1: TcxGridLevel;
    Panel1: TPanel;
    Cantidad1: TMenuItem;
    Monto1: TMenuItem;
    AnexoDT4sContrato: TStringField;
    AnexoDT4sIdEquipo: TStringField;
    AnexoDT4iItemOrden: TIntegerField;
    AnexoDT4sDescripcion: TStringField;
    AnexoDT4sIdTipoEquipo: TStringField;
    AnexoDT4sMedida: TStringField;
    AnexoDT4dCantidad: TFloatField;
    AnexoDT4dCostoMN: TFloatField;
    AnexoDT4dCostoDLL: TFloatField;
    AnexoDT4dVentaMN: TFloatField;
    AnexoDT4dVentaDLL: TFloatField;
    AnexoDT4dFechaInicio: TDateField;
    AnexoDT4dFechaFinal: TDateField;
    AnexoDT4lProrrateo: TStringField;
    AnexoDT4lCobro: TStringField;
    AnexoDT4lImprime: TStringField;
    AnexoDT4iJornada: TIntegerField;
    AnexoDT4dMensual: TFloatField;
    AnexoDT4dMensualMonto: TFloatField;
    AnexoDT4dAnno: TIntegerField;
    AnexoDT4dMes: TIntegerField;
    pgPersonal: TcxPageControl;
    TabInformacion: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    tiItemOrden: TcxDBTextEdit;
    tsIdTipodeEquipo: TcxDBLookupComboBox;
    tsIdEquipo: TcxDBTextEdit;
    tsDescripcion: TcxDBTextEdit;
    tsMedida: TcxDBTextEdit;
    tiJornada: TcxDBTextEdit;
    tdCantidad: TcxDBCurrencyEdit;
    tdCostoMn: TcxDBCurrencyEdit;
    tdVentaMN: TcxDBCurrencyEdit;
    tdFechaInicio: TcxDBDateEdit;
    tdFechaFinal: TcxDBDateEdit;
    tdCostoDll: TcxDBCurrencyEdit;
    tdVentaDLL: TcxDBCurrencyEdit;
    tlImprime: TcxDBComboBox;
    tlCobro: TcxDBComboBox;
    tlProrrateo: TcxDBComboBox;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item11: TdxLayoutItem;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Group8: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item16: TdxLayoutItem;
    dxLayoutControl2Item17: TdxLayoutItem;
    dxLayoutControl2Item18: TdxLayoutItem;
    gbTarifaDiaria: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    tiAnno: TcxSpinEdit;
    tsMes: TcxComboBox;
    tdCantidadMensual: TcxCurrencyEdit;
    btnDistribuir: TcxButton;
    cxGrid1: TcxGrid;
    rxDistribucion: TcxGridDBTableView;
    rxDistribucionColumn1: TcxGridDBColumn;
    rxDistribucionColumn2: TcxGridDBColumn;
    rxDistribucionColumn3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group6: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsIdTipodeEquipoExit(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure grid_equiposEnter(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure EquiposAfterScroll(DataSet: TDataSet);
    procedure Grid_EquiposTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure DistribuciondeEquiposCalcFields(DataSet: TDataSet);
    procedure btnDistribuirClick(Sender: TObject);
    procedure ActualizacindeCostos1Click(Sender: TObject);
    procedure rxDistribucionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxDistribucionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure actualizarEquipo(idOrig: string);
    procedure Imprimir1Click(Sender: TObject);
    procedure ExportaaPlantillaExcel1Click(Sender: TObject);

    procedure formatoEncabezado();
    function estaReportado(sIdEquipo: string): boolean;
    function estaDistribuido(sIdEquipo: string): boolean;

    procedure tdFechaInicioChange(Sender: TObject);
    procedure EquiposdCantidadSetText(Sender: TField; const Text: string);
    procedure EquiposdCostoMNSetText(Sender: TField; const Text: string);
    procedure EquiposdCostoDLLSetText(Sender: TField; const Text: string);
    procedure EquiposdVentaMNSetText(Sender: TField; const Text: string);
    procedure EquiposBeforePost(DataSet: TDataSet);
    procedure EquiposPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EquiposdVentaDLLSetText(Sender: TField; const Text: string);
    procedure EquiposiJornadaSetText(Sender: TField; const Text: string);
    procedure Copy1Click(Sender: TObject);
    procedure Cantidad1Click(Sender: TObject);
    procedure Monto1Click(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

  private
  sMenuP: string;
    { Private declarations }
    procedure ImprimeDistribucion(sParamTipo :string);
  public
    { Public declarations }
  end;

var

  botonpermiso:tbotonespermisos;
  frmEquipos  : TfrmEquipos;
  sTipoEquipo : String ;
  Months: array[1..12] of string;
  sOldEquipo  : String ;
  sOldDescripcion: string;
  banderaAgregar:boolean;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;

  iId : string;

implementation

{$R *.dfm}

procedure TfrmEquipos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmEquipos.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxSpinEdit) then
        tcxSpinEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCurrencyEdit) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmEquipos.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCurrencyEdit) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmEquipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Equipos.Cancel ;
  action := cafree ;
  BotonPermiso.Free;
end;

procedure TfrmEquipos.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cEquipos', PopupPrincipal);
  OpcButton := '' ;
  sTipoEquipo := '' ;
  frmbarra1.btnCancel.Click ;
  Equipos.Active := False ;
  Equipos.Params.ParamByName('Contrato').DataType := ftString ;
  Equipos.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Equipos.Params.ParamByName('Orden').DataType := ftString ;
  Equipos.Params.ParamByName('Orden').Value := 'iItemOrden' ;
  Equipos.Open ;


  Months[1] := 'ENERO';
  Months[2] := 'FEBRERO';
  Months[3] := 'MARZO';
  Months[4] := 'ABRIL';
  Months[5] := 'MAYO';
  Months[6] := 'JUNIO';
  Months[7] := 'JULIO';
  Months[8] := 'AGOSTO';
  Months[9] := 'SEPTIEMBRE';
  Months[10] := 'OCTUBRE';
  Months[11] := 'NOVIEMBRE';
  Months[12] := 'DICIEMBRE';

  TiposdeEquipo.Active := False ;
  TiposdeEquipo.Open ;

  BotonPermiso.permisosBotones(frmBarra1);
end;


procedure TfrmEquipos.tsIdTipodeEquipoExit(Sender: TObject);
begin
  If ( Equipos.State = dsEdit ) OR ( Equipos.State = dsInsert ) then
      If (OpcButton = 'New') then
          Equipos.fieldvalues[ 'sIdEquipo' ] := TiposdeEquipo.FieldValues[ 'sMascara' ] + trim(tiItemOrden.Text);
  SalidaControl(Sender);

end;

function TfrmEquipos.estaDistribuido(sIdEquipo: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT sIdEquipo FROM distribuciondeequipos WHERE sContrato = :Contrato AND sIdEquipo = :sIdEquipo LIMIT 1');
    ParamByName('Contrato').Value := Global_Contrato;
    ParamByName('sIdEquipo').Value := sIdEquipo;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

function TfrmEquipos.estaReportado(sIdEquipo: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT sIdEquipo FROM bitacoradeequipos WHERE sContrato = :Contrato AND sIdEquipo = :sIdEquipo LIMIT 1');
    ParamByName('Contrato').Value := Global_Contrato;
    ParamByName('sIdEquipo').Value := sIdEquipo;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;


procedure TfrmEquipos.frmBarra1btnAddClick(Sender: TObject);
begin
   banderaAgregar:=true;
 try
   pgPersonal.ActivePageIndex := 0;
   frmBarra1.btnAddClick(Sender);
   Equipos.Append ;

   MaximoItem.Active := False ;
   MaximoItem.SQL.Clear ;
   MaximoItem.SQL.Add('SELECT Max(iItemOrden) as Item FROM equipos where sContrato = :contrato Group By sContrato' ) ;
   MaximoItem.Params.ParamByName('Contrato').DataType := ftString ;
   MaximoItem.Params.ParamByName('Contrato').Value := Global_Contrato ;
   MaximoItem.Open ;
   If MaximoItem.FieldByName('Item').IsNull then
       Equipos.FieldValues [ 'iItemOrden' ] := 1
   else
       Equipos.FieldValues [ 'iItemOrden' ]  := MaximoItem.FieldValues['Item'] + 1 ;

   Equipos.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   Equipos.FieldValues ['sMedida'] := 'Dia' ;
   Equipos.FieldValues ['iJornada'] := 24 ;
   Equipos.FieldValues['sIdTipoEquipo'] := sTipoEquipo ;
   Equipos.FieldValues ['lProrrateo'] := 'Si' ;
   Equipos.FieldValues ['dFechaInicio'] := Date ;
   Equipos.FieldValues ['dFechaFinal'] := Date ;
   Equipos.FieldValues [ 'dCantidad' ] := 0 ;
   Equipos.FieldValues [ 'dCostoMN' ] := 0 ;
   Equipos.FieldValues [ 'dCostoDLL' ] := 0 ;
   Equipos.FieldValues [ 'dVentaMN' ] := 0 ;
   Equipos.FieldValues [ 'dVentaDLL' ] := 0 ;
   Equipos.FieldValues [ 'lImprime' ] := 'Si' ;
   Equipos.FieldValues [ 'lCobro' ]   := 'Si' ;

   sOldEquipo := '' ;
   sOldDescripcion := '';
   tsIdTipodeEquipo.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_equipos.Enabled:=false;
 Except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_equipos', 'Al agregar registro', 0);
  end;
 end;
end;

procedure TfrmEquipos.frmBarra1btnEditClick(Sender: TObject);
begin
   banderaagregar:=false;
   pgPersonal.ActivePageIndex := 0;
   frmBarra1.btnEditClick(Sender);
   try
       Equipos.Edit ;
       sOldEquipo := Equipos.FieldValues['sIdEquipo'] ;
       sOldDescripcion := Equipos.FieldValues['sDescripcion'] ;
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Equipos', 'Al editar registro', 0);
           frmbarra1.btnCancel.Click ;
       end;
   end;
   tsIdEquipo.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_equipos.Enabled:=false;
end;

procedure TfrmEquipos.actualizarEquipo(idOrig: string);
begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Update bitacoradeequipos set sIdEquipo =:Equipo, sDescripcion =:Descripcion where sContrato =:contrato and sIdEquipo =:EquipoOld');
    connection.zCommand.ParamByName('Contrato').AsString    := global_contrato;
    connection.zCommand.ParamByName('Descripcion').AsString := equipos.FieldValues['sDescripcion'];
    connection.zCommand.ParamByName('Equipo').AsString      := equipos.FieldValues['sIdEquipo'];
    connection.zCommand.ParamByName('EquipoOld').AsString   := idOrig;
    connection.zCommand.ExecSQL;
end;

procedure TfrmEquipos.frmBarra1btnPostClick(Sender: TObject);         
var
    lEdicion: boolean;
    sIdKardex, opcKardex: string;

  nombres, cadenas: TStringList;
  i : integer;
begin
  //empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Item Orden');    nombres.Add('T equipo');   nombres.Add('Descripcion');
  nombres.Add('U medidas');     nombres.Add('Costo MN');
  nombres.Add('Precio MN');     nombres.Add('Prorrateo?'); nombres.Add('Jornada');
  nombres.Add('Se imprime?');   nombres.Add('Se cobra?');
  nombres.Add('Cantidad');      nombres.Add('Costo DLL');
  nombres.Add('Precio DLL');
  cadenas.Add(tiItemorden.Text);cadenas.Add(tsIdTipodeEquipo.Text);cadenas.Add(tsDescripcion.Text);
  cadenas.Add(tsMedida.Text);   cadenas.Add(tdCostomn.text);
  cadenas.Add(tdVentaMn.Text);  cadenas.Add(tlProrrateo.Text);cadenas.Add(tiJornada.Text);
  cadenas.Add(tlImprime.Text);  cadenas.Add(tlCobro.Text);
  cadenas.Add(tdCantidad.Text); cadenas.Add(tdCostoDLL.Text);
  cadenas.Add(tdVentaDLL.Text);
  if not validaTexto(nombres, cadenas, 'Equipo id', tsIdEquipo.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

   //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicio.Date then
   begin
     showmessage('la fecha final es menor a la fecha inicial' );
     tdFechaFinal.SetFocus;
     exit;
   end;

  //Validacion de unidad de medida..
  try
      i := StrToInt(tsMedida.Text);
      messageDLg('No se aceptan numeros como Unidad de Medida.', mtInformation, [mbOk], 0);
      exit;
  Except
      //Continua...
  end;
    Equipos.fieldvalues['dFechaInicio'] :=tdfechaInicio.date;
    Equipos.fieldvalues['dFechaFinal'] :=tdfechaFinal.date;
   try
      lEdicion := false;
      If OpcButton = 'Edit' Then
      Begin
          lEdicion := true;
      End ;
      sTipoEquipo := Equipos.FieldValues['sIdTipoEquipo'] ;
      Equipos.Post;

      //Aqui solo hacemos una excepcion de edicion si el equipo fue reportado nadamas si permite editarlo..
      actualizarEquipo(sOldEquipo);
      //registrar la operacion en el kardex
      sIdKardex := Equipos.FieldByName('sIdEquipo').AsString;
      if lEdicion then
          opcKardex := 'Edita Equipo'
      else
          opcKardex := 'Crea Equipo';
      Kardex('Otros Movimientos', opcKardex, sIdKardex, 'ID Equipo', '', '', '' );

      frmBarra1.btnPostClick(Sender);
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Equipos', 'Al salvar registro', 0);
          frmbarra1.btnCancel.Click ;
          lEdicion := false;
      end;
   end;
  //en caso de ser edicion, aplicar cambio de ID en tablas dependientes
  if (lEdicion) and (Equipos.FieldByName('sIdEquipo').AsString <> sOldEquipo) then
  begin
    actualizarEquipo(sOldEquipo);
  end;

  BotonPermiso.permisosBotones(frmBarra1);
  grid_equipos.Enabled:=true;
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmEquipos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Equipos.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_equipos.Enabled:=true;
end;

procedure TfrmEquipos.frmBarra1btnDeleteClick(Sender: TObject);
var

  lSigue: boolean;
  sIdKardex, opcKardex: string;

begin
  If Equipos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //verificar si el equipo se encuentra en alguna de las siguientes tablas antes de borrar
      lSigue := true;
      //tabla bitacoradeequipos
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      Connection.QryBusca.SQL.Add('SELECT sIdEquipo FROM bitacoradeequipos ' +
                                  'WHERE sContrato = :Contrato AND sIdEquipo = :Equipo') ;
      Connection.QryBusca.ParamByName('Contrato').Value := global_contrato ;
      Connection.QryBusca.ParamByName('Equipo').Value := Equipos.FieldByName('sIdEquipo').AsString;
      Connection.QryBusca.Open ;
      If Connection.QryBusca.RecordCount > 0 Then Begin
          MessageDlg('El equipo que desea eliminar a sido utilizado en reportes diarios, por lo tanto no puede eliminarse.', mtInformation, [mbOk], 0);
          lSigue := false;
      End;
      If lSigue Then Begin
          //tabla distribuciondeequipos y equiposxpersonal
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('SELECT sIdEquipo FROM distribuciondeequipos '+
                                      'WHERE sContrato = :Contrato AND sIdEquipo = :Equipo ');
          Connection.QryBusca.ParamByName('Contrato').Value := Global_Contrato ;
          Connection.QryBusca.ParamByName('Equipo').Value := Equipos.FieldByName('sIdEquipo').AsString;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then Begin
              MessageDlg('El equipo que desea eliminar ha sido utilizado en distribución de personal, no puede eliminarse.', mtInformation, [mbOk], 0);
              lSigue := false;
          End;
      End;
      If lSigue Then Begin
          //tablas paquetesdeequipo, recursosequipo y recursosequiposnuevos
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('SELECT sIdEquipo FROM paquetesdeequipo '+
                                      'WHERE sContrato = :Contrato AND sIdEquipo = :Equipo '+
                                      'UNION SELECT sIdEquipo FROM recursosequipo '+
                                      'WHERE sContrato = :Contrato AND sIdEquipo = :Equipo '+
                                      'UNION SELECT sIdEquipo FROM recursosequiposnuevos '+
                                      'WHERE sContrato = :Contrato AND sIdEquipo = :Equipo');
          Connection.QryBusca.ParamByName('Contrato').Value := Global_Contrato ;
          Connection.QryBusca.ParamByName('Equipo').Value := Equipos.FieldByName('sIdEquipo').AsString;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then Begin
              MessageDlg('El equipo que desea eliminar ha sido utilizado en recursos de equipo, no puede eliminarse.', mtInformation, [mbOk], 0);
              lSigue := false;
          End;
      End;

      If lSigue Then
      Begin
          try
               sIdKardex := Equipos.FieldByName('sIdEquipo').AsString;
               Equipos.Delete ;
               opcKardex := 'Borra Equipo';
               Kardex('Otros Movimientos', opcKardex, sIdKardex, 'ID Equipo', '', '', '' );
          except
              on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Equipos', 'Al eliminar registro', 0);
              end;
          end;
      End;
    end;
end;

procedure TfrmEquipos.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Equipos.refresh ;
  TiposdeEquipo.refresh
 except
 on e : exception do begin
 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_equipos', 'Al actualizar registro', 0);
 end;
 end;
end;

procedure TfrmEquipos.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close
end;

procedure TfrmEquipos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmEquipos.Imprimir1Click(Sender: TObject);
begin
    frmbarra1.btnPrinter.Click;
end;

procedure TfrmEquipos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmEquipos.Monto1Click(Sender: TObject);
begin
    ImprimeDistribucion('Monto');
end;

procedure TfrmEquipos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmEquipos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmEquipos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmEquipos.Cantidad1Click(Sender: TObject);
begin
    ImprimeDistribucion('Cantidad');
end;

procedure TfrmEquipos.Copy1Click(Sender: TObject);
begin
     ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmEquipos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmEquipos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmEquipos.grid_equiposEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmEquipos.frmBarra1btnPrinterClick(Sender: TObject);
begin
    if Equipos.RecordCount > 0 then
    begin
        frxEquipos.PreviewOptions.MDIChild := False ;
        frxEquipos.PreviewOptions.Modal := True ;
        frxEquipos.PreviewOptions.Maximized := lCheckMaximized () ;
        frxEquipos.PreviewOptions.ShowCaptions := False ;
        frxEquipos.Previewoptions.ZoomMode := zmPageWidth ;
        frxEquipos.LoadFromFile(Global_Files + global_miReporte +'_CatalogoEquipos.fr3') ;
        if not FileExists(global_files + global_miReporte + '_CatalogoEquipos.fr3') Then
           showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_CatalogoEquipos.fr3 no existe, notifique al administrador del sistema')
        else
        //<ROJAS>
        frxEquipos.ShowReport() ;
        //
     end
     else
        messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmEquipos.tdFechaInicioChange(Sender: TObject);
begin
  if tdFechaFinal.Date<tdFechaInicio.Date then
   tdFechaFinal.Date:=tdFechainicio.Date;
end;

procedure TfrmEquipos.EquiposAfterScroll(DataSet: TDataSet);
begin
  if Equipos.State=dsbrowse then
  begin
    If frmBarra1.btnCancel.Enabled = False Then
    Begin
        DistribuciondeEquipos.Active := False ;
        DistribuciondeEquipos.Params.ParamByName('Contrato').DataType := ftString ;
        DistribuciondeEquipos.Params.ParamByName('Contrato').Value := global_contrato ;
        DistribuciondeEquipos.Params.ParamByName('Equipo').DataType := ftString ;
        DistribuciondeEquipos.Params.ParamByName('Equipo').Value := Equipos.FieldByName('sIdEquipo').AsString  ;
        DistribuciondeEquipos.Open ;

        tiAnno.Value := YearOf(Equipos.FieldByName('dFechaInicio').AsDateTime) ;
        tsMes.ItemIndex := MonthOf(Equipos.FieldByName('dFechaInicio').AsDateTime) - 1;
        tdCantidadMensual.Value := 0 ;
    End
  end;
end;

procedure TfrmEquipos.EquiposBeforePost(DataSet: TDataSet);
begin
 // zeoverififloat(tdcantidad,'cantidad',equipos,'dcantidad');
 PCAbsoluto(Equipos,'iItemOrden');
 PCAbsoluto(Equipos,'iJornada');
end;

procedure TfrmEquipos.EquiposdCantidadSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmEquipos.EquiposdCostoDLLSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmEquipos.EquiposdCostoMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmEquipos.EquiposdVentaDLLSetText(Sender: TField;
  const Text: string);
begin
 Sender.Value:=(strtofloatdef(text,0));
end;

procedure TfrmEquipos.EquiposdVentaMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmEquipos.EquiposiJornadaSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=(strtointdef(text,0));
end;

procedure TfrmEquipos.EquiposPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
showmessage('error al enviar');
end;

procedure TfrmEquipos.ExportaaPlantillaExcel1Click(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;

Procedure DatosPlantilla;
Var
  CadFecha, tmpNombre, cadena : String;
  fs: tStream;
  Alto : Extended;
  Ren, nivel : integer;
Begin
    Ren := 2;
  // Realizar los ajustes visuales y de formato de hoja
    Excel.ActiveWindow.Zoom := 100;
//  if rAnexoC.Checked then
//  begin
      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 10;
      Excel.Columns['C:C'].ColumnWidth := 15;
      Excel.Columns['D:D'].ColumnWidth := 40;
      Excel.Columns['E:M'].ColumnWidth := 12;


      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Id_Equipo';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Ordenamiento';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Costo MN';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Costo DLL';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Venta MN';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Venta DLL';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Fecha_Inicio';
      FormatoEncabezado;
      Hoja.Range['L1:L1'].Select;
      Excel.Selection.Value := 'Fecha_Final';
      FormatoEncabezado;
      Hoja.Range['M1:M1'].Select;
      Excel.Selection.Value := 'sIdTipoEquipo';
      FormatoEncabezado;
      Hoja.Range['N1:N1'].Select;
      Excel.Selection.Value := 'Jornada';
      FormatoEncabezado;

      connection.QryBusca.Active := False ;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('select * from equipos where sContrato =:Contrato order by iItemOrden');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
      connection.QryBusca.Open ;

      if connection.QryBusca.RecordCount > 0 then
      begin
           while not connection.QryBusca.Eof do
           begin
                Hoja.Cells[Ren,1].Select;
                Excel.Selection.Value := global_contrato;
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;
                Excel.Selection.Font.Size := 11;
                Excel.Selection.Font.Bold := False;
                Excel.Selection.Font.Name := 'Calibri';

                Hoja.Cells[Ren,2].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sIdEquipo'];
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,3].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['iItemOrden'];

                Hoja.Cells[Ren,4].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];
                Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
                Hoja.Cells[Ren,4].Value := '';

                if Alto > 15 then
                   Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
                Else
                   Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

                Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];

                Hoja.Cells[Ren,5].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,6].Select;
                Excel.Selection.NumberFormat := '@';
                Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidad'];
                Excel.Selection.HorizontalAlignment := xlRight;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,7].Select;
                Excel.Selection.NumberFormat := '@';
                Excel.Selection.Value := connection.QryBusca.FieldValues['dCostoMN'];
                Excel.Selection.HorizontalAlignment := xlRight;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,8].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dCostoDLL'];

                Hoja.Cells[Ren,9].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaMN'];

                Hoja.Cells[Ren,10].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaDLL'];

                Hoja.Cells[Ren,11].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

                Hoja.Cells[Ren,12].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

                Hoja.Cells[Ren,13].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sIdTipoEquipo'];

                Hoja.Cells[Ren,14].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['iJornada'];

                connection.QryBusca.Next;
                Inc(Ren);
           end;
      end;
      Hoja.Cells[2,2].Select;


  Hoja.Range['A1:N1'].Select;
  // Formato general de encabezado de datos..
  Excel.Selection.HorizontalAlignment                   := xlCenter;
  Excel.Selection.VerticalAlignment                     := xlCenter;
  Excel.Selection.Interior.ColorIndex := 5;
  Excel.Selection.Font.color          := clWhite;
  Excel.Selection.Interior.Pattern    := xlSolid;

  Hoja.Range['A1:A1'].Select;
End;

Begin
  Resultado := True;
  Try
    Hoja := Libro.Sheets[1];
    Hoja.Select;
    try
       Hoja.Name := 'EQUIPO '+ global_contrato;
    Except
       Hoja.Name := 'EQUIPO '+ global_contrato;
    end;
    DatosPlantilla;
  Except
    on e:exception do
    Begin
      Resultado := False;
      CadError := 'Se ha producido el siguiente error al generar la Plantilla de Equipos' + #10 + #10 + e.Message;
    End;
  End;

  Result := Resultado;
End;

begin
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  If Not SaveDialog1.Execute Then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    FreeAndNil(Excel);
    showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  Excel.Visible := True;
  Excel.DisplayAlerts := False;
  Excel.ScreenUpdating := True;

  Libro := Excel.Workbooks.Add;    // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
  CadError := '';

  if GenerarPlantilla then
    // Grabar el archivo de excel con el nombre dado
    messageDlg('La Plantilla se Genero Correctamente!' , mtConfirmation, [mbOk], 0) ;

      Excel := '';

  if CadError <> '' then
    showmessage(CadError);

end;

procedure TfrmEquipos.Grid_EquiposTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
Var
  sCampo : String ;
begin
  sCampo := Field.FieldName ;
  Equipos.Active := False ;
  Equipos.Params.ParamByName('Contrato').DataType := ftString ;
  Equipos.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Equipos.Params.ParamByName('Orden').DataType := ftString ;
  Equipos.Params.ParamByName('Orden').Value := sCampo ;
  Equipos.Open ;
end;

procedure TfrmEquipos.DistribuciondeEquiposCalcFields(DataSet: TDataSet);
begin
    Case MonthOf(DistribuciondeEquipos.FieldValues['dIdFecha']) Of
        1 : DistribuciondeEquipossMes.Value := 'ENERO' ;
        2 : DistribuciondeEquipossMes.Value := 'FEBRERO' ;
        3 : DistribuciondeEquipossMes.Value := 'MARZO' ;
        4 : DistribuciondeEquipossMes.Value := 'ABRIL' ;
        5 : DistribuciondeEquipossMes.Value := 'MAYO' ;
        6 : DistribuciondeEquipossMes.Value := 'JUNIO' ;
        7 : DistribuciondeEquipossMes.Value := 'JULIO' ;
        8 : DistribuciondeEquipossMes.Value := 'AGOSTO' ;
        9 : DistribuciondeEquipossMes.Value := 'SEPTIEMBRE' ;
        10 : DistribuciondeEquipossMes.Value := 'OCTUBRE' ;
        11 : DistribuciondeEquipossMes.Value := 'NOVIEMBRE' ;
        12 : DistribuciondeEquipossMes.Value := 'DICIEMBRE' ;
    End ;
    DistribuciondeEquiposiAnno.Value := YearOf (DistribuciondeEquipos.FieldValues['dIdFecha'])
end;

procedure TfrmEquipos.btnDistribuirClick(Sender: TObject);
begin
    //Función para distribuir equipos..
    DistribuyerecursosPeEqMaHeIn(tsMes.Text, tiAnno.Text, Equipos.FieldValues['sIdEquipo'] , 'sIdEquipo', 'distribuciondeequipos', 'equipos', tdCantidadMensual.Value, Equipos.FieldByName('dCantidad').AsFloat);

    DistribuciondeEquipos.refresh ;
    DistribuciondeEquipos.Last ;
    If tsMes.Text <> 'DICIEMBRE' Then
       tsMes.ItemIndex := tsMes.ItemIndex + 1
    Else
       tsMes.ItemIndex := 0 ;

    tdCantidadMensual.SetFocus
end;

procedure TfrmEquipos.ActualizacindeCostos1Click(Sender: TObject);
begin
    If MessageDlg('Desea actualizar el costo de todo el equipo existente en reportes diarios?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'UPDATE bitacoradeequipos b, Equipos p SET b.dCostoMN = p.dCostoMN, b.dCostoDLL = p.dCostoDLL Where b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo And p.sContrato = :Contrato') ;
         connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
         connection.zCommand.ExecSQL () ;
         messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0);
    End;
end;

procedure TfrmEquipos.rxDistribucionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    If DistribuciondeEquipos.RecordCount > 0 Then
    Begin
        tsMes.ItemIndex := MonthOf(DistribuciondeEquipos.FieldValues['dIdFecha']) - 1 ;
        tiAnno.Value := DistribuciondeEquiposiAnno.Value ;
        tdCantidadMensual.Value := DistribuciondeEquipos.FieldValues['dCantidad'] ;
    End
    Else
    Begin
        tsMes.ItemIndex := MonthOf(Equipos.FieldValues['dFechaInicio'])  ;
        tiAnno.Value := YearOf(Equipos.FieldValues['dFechaInicio']) ;
        tdCantidadMensual.Value := 0  ;
    End
end;

procedure TfrmEquipos.rxDistribucionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    If DistribuciondeEquipos.RecordCount > 0 Then
    Begin
        tsMes.ItemIndex := MonthOf(DistribuciondeEquipos.FieldValues['dIdFecha']) - 1 ;
        tiAnno.Value := DistribuciondeEquiposiAnno.Value ;
        tdCantidadMensual.Value := DistribuciondeEquipos.FieldValues['dCantidad'] ;
    End
    Else
    Begin
        tsMes.ItemIndex := MonthOf(Equipos.FieldValues['dFechaInicio'])  ;
        tiAnno.Value := YearOf(Equipos.FieldValues['dFechaInicio']) ;
        tdCantidadMensual.Value := 0  ;
    End
end;

procedure TfrmEquipos.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
end;

procedure TfrmEquipos.ImprimeDistribucion(sParamTipo: string);
begin
   If Equipos.RecordCount > 0 Then
   begin
        AnexoDT4.Active := False ;
        AnexoDT4.Params.ParamByName('Contrato').DataType := ftString ;
        AnexoDT4.Params.ParamByName('Contrato').Value := global_Contrato ;
        AnexoDT4.Open ;

        if AnexoDT4.RecordCount > 0 then
        begin
          frxAnexoDT4.PreviewOptions.MDIChild := False ;
          frxAnexoDT4.PreviewOptions.Modal := True ;
          frxAnexoDT4.PreviewOptions.Maximized := lCheckMaximized () ;
          frxAnexoDT4.PreviewOptions.ShowCaptions := False ;
          frxAnexoDT4.Previewoptions.ZoomMode := zmPageWidth ;

          if sParamTipo = 'Cantidad' then
          begin
              frxAnexoDT4.LoadFromFile(Global_Files+ global_miReporte + '_DmoEquipo.fr3') ;
              if not FileExists(global_files + global_miReporte + '_DmoEquipo.fr3') Then
                 showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_DmoEquipo.fr3 no existe, notifique al administrador del sistema')
              else
                 frxAnexoDT4.ShowReport() ;
          end;

          if sParamTipo = 'Monto' then
          begin
              frxAnexoDT4.LoadFromFile(Global_Files+ global_miReporte + '_DmoEquipoMonto.fr3') ;
              if not FileExists(global_files + global_miReporte + '_DmoEquipoMonto.fr3') Then
                 showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_DmoEquipoMonto.fr3 no existe, notifique al administrador del sistema')
              else
                 frxAnexoDT4.ShowReport() ;
          end;
       end
       else
          messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
   end
   else
       ShowMessage('No existen registros para Generar la Distribucion Mensual de Equipos');
end;

end.
