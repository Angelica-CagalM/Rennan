unit frm_embarcaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, RxLookup,
  rxToolEdit, rxCurrEdit, RXDBCtrl, UnitExcepciones,
  UnitTBotonesPermisos, UnitValidaTexto, UnitTablasImpactadas,unitactivapop,
  UFunctionsGHH, UnitValidacion, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxCalc, cxCheckBox, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;
  procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
type      
  TfrmEmbarcaciones = class(TForm)
    frmBarra1: TfrmBarra;
    DBTotalesxCategoria: TfrxDBDataset;
    frxEmbarcacion: TfrxReport;
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
    ds_tiposdeembarcacion: TDataSource;
    TiposdeEmbarcacion: TZReadOnlyQuery;
    ds_embarcaciones: TDataSource;
    embarcaciones: TZQuery;
    embarcacionessContrato: TStringField;
    embarcacionessIdEmbarcacion: TStringField;
    embarcacionessDescripcion: TStringField;
    embarcacionessIdTipoEmbarcacion: TStringField;
    embarcacionessImagen: TStringField;
    embarcacioneslStatus: TStringField;
    embarcacioneslSuministros: TStringField;
    embarcacioneslFases: TStringField;
    embarcacionesiJornada: TIntegerField;
    TiposdeEmbarcacionsIdTipoEmbarcacion: TStringField;
    TiposdeEmbarcacionsDescripcion: TStringField;
    TiposdeEmbarcacioniRenglon: TIntegerField;
    TiposdeEmbarcacionsTitulo: TStringField;
    embarcacionessTipo: TStringField;
    embarcacionessAplicaDiesel: TStringField;
    embarcacionesdCantidadInicial: TFloatField;
    embarcacionessIniciaDiesel: TStringField;
    embarcacionesdCantidadInicialAgua: TFloatField;
    pnl1: TPanel;
    grid_medios_transportes: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    DsPErnoctan: TDataSource;
    ZqRoPernoctan: TZReadOnlyQuery;
    embarcacionessIdPernocta: TStringField;
    embarcacionesiOrden: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    tsIdEmbarcacion: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    tsIdTipoEmbarcacion: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    tlStatus: TcxDBComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    tlSuministros: TcxDBComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    tiJornada: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    sPrioridad: TcxDBComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    lAplicaDiesel: TcxDBCheckBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dCantidadDiesel: TcxDBCalcEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dCantidadAgua: TcxDBCalcEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    tsOrdenamiento: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    sDescripcion: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    tsDescripcion: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgrdtCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure dbgrdtMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure dbgrdtTitleClick(Column: TColumn);
    procedure Paste1Click(Sender: TObject);
    procedure dbgrdtMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure Imprimir1Click(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function existeEnMovtosEMb(sIdEmb: string): boolean;
    procedure embarcacionesBeforePost(DataSet: TDataSet);
    procedure embarcacionesiJornadaSetText(Sender: TField; const Text: string);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmbarcaciones: TfrmEmbarcaciones;
  banderaagregar:boolean;
  sIdOrig, sTipoOrig, sAplicaDieselOrig: string;

implementation

{$R *.dfm}

procedure TfrmEmbarcaciones.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmEmbarcaciones.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmEmbarcaciones.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmEmbarcaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Embarcaciones.Cancel;
  action := cafree ;
end;

procedure TfrmEmbarcaciones.FormShow(Sender: TObject);
begin
 try
  sMenuP:=stMenu;

  OpcButton := '' ;
  sIdOrig := '';
  frmbarra1.btnCancel.Click ;

  embarcaciones.Active := False ;
  embarcaciones.Open ;

  ZqRoPernoctan.Active := False;
  ZqRoPernoctan.Open;

  TiposdeEmbarcacion.Active := False ;
  TiposdeEmbarcacion.SQL.Clear ;
  TiposdeEmbarcacion.SQL.Add('select * from tiposdeembarcacion order by sIdTipoEmbarcacion' ) ;
  TiposdeEmbarcacion.Open ;
 except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al iniciar el formulario', 0);
end;
 end;
end;

procedure TfrmEmbarcaciones.dbgrdtCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmEmbarcaciones.dbgrdtMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  // UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEmbarcaciones.dbgrdtMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   // UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEmbarcaciones.dbgrdtTitleClick(Column: TColumn);
begin
   // UtGrid.DbGridTitleClick(Column);
end;

procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin
if Zeo.FieldValues[Camp]<0 then
 Zeo.FieldValues[Camp]:=Zeo.FieldValues[Camp]*-1;
end;

procedure TfrmEmbarcaciones.embarcacionesBeforePost(DataSet: TDataSet);
begin
 PCAbsoluto(embarcaciones,'dCantidadInicial');
end;

procedure TfrmEmbarcaciones.embarcacionesiJornadaSetText(Sender: TField;
  const Text: string);
begin
sender.Value:=abs(StrToIntDef(text,0));
end;

function TfrmEmbarcaciones.existeEnMovtosEMb(sIdEmb: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT iIdDiario FROM movimientosdeembarcacion WHERE sIdEmbarcacion = :id LIMIT 1');
    ParamByName('id').Value := sIdEmb;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;
procedure TfrmEmbarcaciones.frmBarra1btnAddClick(Sender: TObject);

begin

  try
   banderaAgregar:=true;
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Embarcaciones.Append ;
   Embarcaciones.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   Embarcaciones.FieldValues ['lStatus'] := 'Activa' ;
   Embarcaciones.FieldValues ['lFases'] := 'No Aplica' ;
   Embarcaciones.FieldValues ['lSuministros'] := 'No Aplica' ;
   Embarcaciones.FieldValues ['sTipo'] := 'Secundario';
   Embarcaciones.FieldValues ['sAplicaDiesel'] := 'Si';
   Embarcaciones.FieldValues ['dCantidadInicial'] := 0;
   tsIdEmbarcacion.SetFocus ;
   grid_medios_transportes.Enabled:=false;



  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al agregar registro ', 0);
   end;
  end;

end;

procedure TfrmEmbarcaciones.frmBarra1btnEditClick(Sender: TObject);
begin
   banderaAgregar:=false;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sIdOrig := Embarcaciones.FieldByName('sIdEmbarcacion').AsString;
   sTipoOrig := Embarcaciones.FieldByName('sTipo').AsString;
   sAplicaDieselOrig := Embarcaciones.FieldByName('sAplicaDiesel').AsString;
   try
      Embarcaciones.Edit ;
      grid_medios_transportes.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al editar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
   end ;
   tsIdEmbarcacion.SetFocus;

end;

procedure TfrmEmbarcaciones.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lEdita: boolean;
  sAplicaDiesel: string;
begin
 //empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');nombres.Add('Clasificacion');
  nombres.Add('Status');
  nombres.Add('Suministros');nombres.Add('Prioridad');
  nombres.Add('Pernocta');
  nombres.Add('Ordenamiento');

  cadenas.Add(tsDescripcion.Text);cadenas.Add(tsIdTipoEmbarcacion.Text);
  cadenas.Add(tlStatus.Text);
  cadenas.Add(tlSuministros.Text);cadenas.Add(sPrioridad.Text);
  cadenas.Add(sDescripcion.Text);
  cadenas.Add(tsOrdenamiento.Text);


  if not validaTexto(nombres, cadenas, 'Identificacion', tsIdEmbarcacion.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  lEdita := false;
  if Embarcaciones.State = dsEdit then
  begin
    lEdita := true;
    sAplicaDiesel := lAplicaDiesel.EditValue;
//    .ValueUnchecked;
    if lAplicaDiesel.Checked then
      sAplicaDiesel := lAplicaDiesel.EditValue;//.ValueChecked;
    if (sPrioridad.Text <> sTipoOrig) or (sAplicaDiesel <> sAplicaDieselOrig) then
    begin
      if existeEnMovtosEMb(sIdOrig) then
      begin
        //el registro ya existe, no permitir cambiar los datos
        if sPrioridad.Text <> sTipoOrig then
        begin
          Embarcaciones.FieldByName('sTipo').AsString := 'Principal';
          ShowMessage('No es posible cambiar la clasificacion de la embarcacion porque esta ya fue usada en el modulo de Movimientos de Barcos');
        end;
        if sAplicaDiesel <> sAplicaDieselOrig then
        begin
          Embarcaciones.FieldByName('sAplicaDiesel').AsString := sAplicaDieselOrig;
          ShowMessage('No es posible cambiar aplica combustible de la embarcacion porque esta ya fue usada en el modulo de Movimientos de Barcos');
        end;
      end;
    end;
  end;

  try
     if Embarcaciones.FieldValues['sAplicaDiesel'] = 'Si' then
        Embarcaciones.FieldValues ['sIniciaDiesel'] := 'Si'
     else
        Embarcaciones.FieldValues ['sIniciaDiesel'] := 'No';

     Embarcaciones.FieldValues [ 'sContrato' ]  := Global_Contrato ;
     Embarcaciones.Post ;

     frmBarra1.btnPostClick(Sender);

  except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al salvar registro', 0);
     frmbarra1.btnCancel.Click ;
     lEdita := false;
     end;
  end;
     grid_medios_transportes.Enabled:=true;
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmEmbarcaciones.frmBarra1btnCancelClick(Sender: TObject);
begin
   Embarcaciones.Cancel;
   frmBarra1.btnCancelClick(Sender);
   grid_medios_transportes.Enabled:=true;
end;

procedure TfrmEmbarcaciones.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Embarcaciones.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select * from movimientosdeembarcacion where sIdEmbarcacion =:Embarcacion limit 1');
        connection.QryBusca.Params.ParamByName('Embarcacion').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Embarcacion').Value    := tsIdEmbarcacion.Text;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            messageDlg('No se puede Eliminar la Embarcación. Existen movimientos Registrados.', mtInformation, [mbOk], 0);
            exit;
        end;

        Embarcaciones.Delete ;
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al eliminar registro', 0);
          end;
      end
    end
end;

procedure TfrmEmbarcaciones.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Embarcaciones.Refresh ;
  TiposdeEmbarcacion.Refresh ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al actualizar Grid',0);  end;
 end;
end;

procedure TfrmEmbarcaciones.frmBarra1btnExitClick(Sender: TObject);
begin
    frmBarra1.btnExitClick(Sender);
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ;
    close;
end;

procedure TfrmEmbarcaciones.Imprimir1Click(Sender: TObject);
begin
frmBarra1.btnPrinter.Click
end;

procedure TfrmEmbarcaciones.Insertar1Click(Sender: TObject);
begin

    frmBarra1.btnAdd.Click
end;

procedure TfrmEmbarcaciones.Paste1Click(Sender: TObject);
begin
  try

  except
   on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al pegar registro', 0);
   end;
  end;
end;
{
procedure TfrmEmbarcaciones.dCantidadDieselChange(Sender: TObject);
begin
  // TRxDBCalcEditChangef(dCantidadDiesel,'Cantidad Inicial DIESEL');
end;

procedure TfrmEmbarcaciones.dCantidadAguaChange(Sender: TObject);
begin
//TRxDBCalcEditChangef(dCantidadAgua,'Cantidad Inicial AGUAL');
end;
 }

procedure TfrmEmbarcaciones.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmEmbarcaciones.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmEmbarcaciones.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmEmbarcaciones.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmEmbarcaciones.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmEmbarcaciones.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmEmbarcaciones.frmBarra1btnPrinterClick(Sender: TObject);
var
    QryEmbarcaciones : TZReadOnlyQuery;
begin
    QryEmbarcaciones := TZReadOnlyQuery.Create(self);
    QryEmbarcaciones.Connection := connection.zConnection;

    DBTotalesxCategoria.DataSet := QryEmbarcaciones;
    DBTotalesxCategoria.FieldAliases.Clear;

    QryEmbarcaciones.Active := False;
    QryEmbarcaciones.SQL.Clear;
    QryEmbarcaciones.SQL.Add('select * from embarcaciones order by sIdEmbarcacion');
    QryEmbarcaciones.Open;

    if not FileExists(global_files + global_miReporte + '_MAS_embarcaciones.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_MAS_embarcaciones.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

    If QryEmbarcaciones.RecordCount > 0 Then
       frxEmbarcacion.LoadFromFile (global_files + global_miReporte  + '_MAS_embarcaciones.fr3') ;
    frxEmbarcacion.ShowReport();

    if QryEmbarcaciones.RecordCount = 0 then
       ShowMessage('No existen registros para imprimir');
end;

function TfrmEmbarcaciones.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sIdEmbarcacion');ParamValuesSET.Add(embarcaciones.FieldByName('sIdEmbarcacion').AsString);
  ParamNamesWHERE.Add('sIdEmbarcacion');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('embarcaciones',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end;
end;

end.
