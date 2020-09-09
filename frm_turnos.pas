unit frm_turnos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, unitexcepciones, unittbotonespermisos,
  UnitValidaTexto, UnitTablasImpactadas, unitactivapop,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxContainer, dxLayoutcxEditAdapters, cxSplitter,
  dxLayoutContainer, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxDBEdit, cxTextEdit,
  dxLayoutControl, frm_barraH2, cxLabel, frm_barraH1, cxDBLookupComboBox, MemDS,
  DBAccess, Uni;

type
  TfrmTurnos = class(TForm)
    ds_turnos: TDataSource;
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
    Turnos: TZQuery;
    TurnossContrato: TStringField;
    TurnossIdTurno: TStringField;
    TurnossDescripcion: TStringField;
    TurnossOrigenTierra: TStringField;
    TurnossPrefijo: TStringField;
    TurnosiJornadas: TIntegerField;
    PanelSuperior: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    panelInferior: TPanel;
    frmBarraH21: TfrmBarraH2;
    PanelDatos: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxTurno: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDescripcion: TcxDBTextEdit;
    Desw: TdxLayoutItem;
    cxHoraInicio: TcxDBTimeEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxHoraFin: TcxDBTimeEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxSplitterMedio: TcxSplitter;
    cxHoras: TcxDBTimeEdit;
    dxLayoutItem3: TdxLayoutItem;
    grid_turnos: TcxGrid;
    grid_turnosDBTableView1: TcxGridDBTableView;
    grid_turnosLevel1: TcxGridLevel;
    cxVistaTurno: TcxGridDBColumn;
    cxVistaDescripcion: TcxGridDBColumn;
    cxVistaHoraInicio: TcxGridDBColumn;
    cxVistaHoraFin: TcxGridDBColumn;
    cxVistaHoras: TcxGridDBColumn;
    zTurnos: TUniQuery;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_turnosCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsOrigenTierraKeyPress(Sender: TObject; var Key: Char);

    procedure tsPrefijoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure grid_turnosDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTurnos: TfrmTurnos;
  sIdOrig : string;
  titulo : String;

implementation

{$R *.dfm}


procedure TfrmTurnos.EnterControl(Sender: TObject);
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

procedure TfrmTurnos.SalidaControl(Sender: TObject);
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

procedure TfrmTurnos.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


procedure TfrmTurnos.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    cxDescripcion.SetFocus
end;

procedure TfrmTurnos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  Turnos.Cancel ;
  action := cafree ;
end;

procedure TfrmTurnos.FormShow(Sender: TObject);
begin
  OpcButton := '' ;
  sIdOrig := '';
  frmBarraH21.btnCancel.Click ;
  Turnos.Active := False ;
  Turnos.Params.ParamByName('Contrato').DataType := ftString ;
  Turnos.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Turnos.Open ;
  frmBarraH11.btnPrinter.Enabled := False;
end;

procedure TfrmTurnos.grid_turnosCellClick(Column: TColumn);
begin
//  if frmBarra1.btnCancel.Enabled = True then
//      frmBarra1.btnCancel.Click ;
end;

procedure TfrmTurnos.grid_turnosDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;
end;

procedure TfrmTurnos.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmTurnos, popupprincipal);
   frmBarraH11.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Turnos.Append ;
   Turnos.FieldValues [ 'sContrato' ] := Global_Contrato ;
   cxTurno.SetFocus ;
   frmBarraH11.btnPrinter.Enabled := False;
   grid_turnos.Enabled := False;   
end;

procedure TfrmTurnos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarraH11.btnEditClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  sIdOrig := Turnos.FieldByName('sIdTurno').AsString;
  try
      //activapop(frmTurnos, popupprincipal);
      Turnos.Edit ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al editar registro', 0);
    frmBarraH21.btnCancel.Click ;
    end;
  end ;
  cxTurno.SetFocus ;
  frmBarraH11.btnPrinter.Enabled := False;
  grid_turnos.Enabled := False;
end;

procedure TfrmTurnos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lEdita: boolean;
begin
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Descripcion');nombres.Add('Obra en Tierra');nombres.Add('Prefijo');
   cadenas.Add(cxDescripcion.Text);//cadenas.Add(tsOrigenTierra.Text);cadenas.Add(tsPrefijo.Text);
   if not validaTexto(nombres, cadenas, 'Turno', cxTurno.Text) then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;
   {Continua insercion de datos}
   lEdita := false;
   if Turnos.State = dsEdit then
      lEdita := true;
   try
      Turnos.FieldValues [ 'sContrato' ]  := Global_Contrato ;
      //desactivapop(popupprincipal);
      Turnos.Post ;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      frmBarraH21.btnPostClick(Sender);
   except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al salvar registro', 0);
     frmBarraH21.btnCancel.Click ;
     lEdita := false;//cancelar la actualizacion de tablas dependientes
     end;
   end;
   if (lEdita) and (Turnos.FieldByName('sIdTurno').AsString <> sIdOrig) then
   begin
       tablasDependientes(sIdOrig);
   end;
   frmBarraH11.btnPrinter.Enabled := False;
   grid_turnos.Enabled := True;
end;

procedure TfrmTurnos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarrah21.btnCancelClick(Sender);
   Turnos.Cancel ;
   frmBarraH11.btnPrinter.Enabled := False;
   grid_turnos.Enabled := True;
end;

procedure TfrmTurnos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Turnos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(Turnos.FieldByName('sIdTurno').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      try
        Turnos.Delete ;
      except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmTurnos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Turnos.Active := False ;
  Turnos.Open ;
end;

procedure TfrmTurnos.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTurnos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    //tsOrigenTierra.SetFocus
end;

procedure TfrmTurnos.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmTurnos.Paste1Click(Sender: TObject);
begin
  //UtGrid.AddRowsFromClip;
end;

procedure TfrmTurnos.Copy1Click(Sender: TObject);
begin
 //UtGrid.CopyRowsToClip;
end;

procedure TfrmTurnos.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmTurnos.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmTurnos.btnAddClick(Sender: TObject);
begin
//activapop(frmTurnos, popupprincipal);
   frmBarraH11.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Turnos.Append ;
   Turnos.FieldValues [ 'sContrato' ] := Global_Contrato ;
   cxTurno.SetFocus ;

   frmBarraH11.btnPrinter.Enabled := False;
   grid_turnos.Enabled := False;
end;

procedure TfrmTurnos.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    panelInferior.Visible := False;
    PanelDatos.Visible:=False;
    cxSplitterMedio.Visible := False;

    frmBarraH11.btnActive;
    grid_turnos.Enabled:=True;
    ds_turnos.DataSet.Cancel;

end;

procedure TfrmTurnos.btnDeleteClick(Sender: TObject);
begin
If Turnos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(Turnos.FieldByName('sIdTurno').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      try
        Turnos.Delete ;
      except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmTurnos.btnEditClick(Sender: TObject);
begin
 frmBarraH11.btnEditClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  sIdOrig := Turnos.FieldByName('sIdTurno').AsString;
  try

      Turnos.Edit ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al editar registro', 0);
    frmBarraH21.btnCancel.Click ;
    end;
  end ;
  cxTurno.SetFocus ;

  frmBarraH11.btnPrinter.Enabled := False;
  grid_turnos.Enabled := False;
end;

procedure TfrmTurnos.btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lEdita: boolean;
begin
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Descripcion');nombres.Add('Obra en Tierra');nombres.Add('Prefijo');
   cadenas.Add(cxDescripcion.Text);//cadenas.Add(tsOrigenTierra.Text);cadenas.Add(tsPrefijo.Text);
   if not validaTexto(nombres, cadenas, 'Turno', cxTurno.Text) then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;
   {Continua insercion de datos}
   lEdita := false;
   if Turnos.State = dsEdit then
      lEdita := true;
   try
      Turnos.FieldValues [ 'sContrato' ]  := Global_Contrato ;
      //desactivapop(popupprincipal);
      Turnos.Post ;
//      Insertar1.Enabled := True ;
//      Editar1.Enabled := True ;
//      Registrar1.Enabled := False ;
//      Can1.Enabled := False ;
//      Eliminar1.Enabled := True ;
//      Refresh1.Enabled := True ;
//      Salir1.Enabled := True ;
      frmBarraH21.btnPostClick(Sender);
   except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al salvar registro', 0);
     frmBarraH21.btnCancel.Click ;
     lEdita := false;//cancelar la actualizacion de tablas dependientes
     end;
   end;
   if (lEdita) and (Turnos.FieldByName('sIdTurno').AsString <> sIdOrig) then
   begin
       tablasDependientes(sIdOrig);
   end;
   frmBarraH11.btnPrinter.Enabled := False;
   grid_turnos.Enabled := True;
end;

procedure TfrmTurnos.btnRefreshClick(Sender: TObject);
begin
 Turnos.Active := False ;
  Turnos.Open ;
end;

procedure TfrmTurnos.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmTurnos.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

procedure TfrmTurnos.Refresh1Click(Sender: TObject);
begin
    frmBarraH11.btnRefresh.Click
end;

procedure TfrmTurnos.Salir1Click(Sender: TObject);
begin
//    frmBarraH1.btnExit.Click
end;



procedure TfrmTurnos.tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    cxDESCRIPCION.SetFocus
end;

function TfrmTurnos.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sIdTurno');ParamValuesSET.Add(Turnos.FieldByName('sIdTurno').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdTurno');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('turnos',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
end;

function TfrmTurnos.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdTurno');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('turnos',ParamNamesWHERE,ParamValuesWHERE);
end;




procedure TfrmTurnos.tsOrigenTierraKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        //tsPrefijo.SetFocus
end;


procedure TfrmTurnos.tsPrefijoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        //tsIdTurno.SetFocus
end;

end.
