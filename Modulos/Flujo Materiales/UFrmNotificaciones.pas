unit UFrmNotificaciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, dxLayoutcxEditAdapters, MemDS, DBAccess, Uni, cxCheckBox,
  dxToggleSwitch, dxDBToggleSwitch, cxCurrencyEdit, cxDBEdit, cxMaskEdit,
  cxSpinEdit, frm_barraH2, dxLayoutContainer, cxTextEdit, cxGroupBox,
  dxLayoutControl, cxLabel, frm_barraH1, Vcl.ExtCtrls, frm_connection,
  cxSplitter, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, global, UnitGenerales,
  cxCalendar, UnitExcepciones;

type
  TFrmNotificaciones = class(TForm)
    cxGridNotificacionesView: TcxGridDBTableView;
    cxGridNotificacionesLevel1: TcxGridLevel;
    cxGridNotificaciones: TcxGrid;
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    Panel2: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxGDatos: TcxGroupBox;
    dxLayoutControl4: TdxLayoutControl;
    cxTabla: TcxDBTextEdit;
    cxCampo: TcxDBTextEdit;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    panelInferior: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxLimiteDias: TcxDBSpinEdit;
    dxLayoutItem1: TdxLayoutItem;
    crrTiempo: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    tgActivo: TdxDBToggleSwitch;
    dxLayoutItem4: TdxLayoutItem;
    zNotificaciones: TUniQuery;
    dsNotificaciones: TDataSource;
    cxGridNotificacionesViewColumn1: TcxGridDBColumn;
    cxGridNotificacionesViewColumn2: TcxGridDBColumn;
    cxGridNotificacionesViewColumn3: TcxGridDBColumn;
    cxGridNotificacionesViewColumn4: TcxGridDBColumn;
    cxGridNotificacionesViewColumn5: TcxGridDBColumn;
    cxGridNotificacionesViewColumn6: TcxGridDBColumn;
    cxGridNotificacionesViewColumn7: TcxGridDBColumn;
    cxSplitterMedio: TcxSplitter;
    panelDatos: TPanel;
    cxMensaje: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    zMensaje: TUniQuery;
    ds_mensaje: TDataSource;
    cxAlerta: TcxDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxGridNotificacionesViewColumn8: TcxGridDBColumn;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure cxGridNotificacionesViewCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure cxAlertaPropertiesChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxAlertaPropertiesEditValueChanged(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotificaciones: TFrmNotificaciones;
  titulo : String;
  btnPermisos : String;
  SavePlace: TBookmark;


implementation

{$R *.dfm}

procedure TFrmNotificaciones.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmNotificaciones.EnterControl(Sender: TObject);
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

    if (sender is tcxDBSpinEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

end;

procedure TFrmNotificaciones.SalidaControl(Sender: TObject);
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
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;
end;


procedure TFrmNotificaciones.btnAddClick(Sender: TObject);
begin
 try
   cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitterMedio.Visible := True;
    cxGridNotificaciones.Enabled:=False;

    zNotificaciones.Append;
    cxMensaje.DataBinding.DataSource.DataSet.FieldByName('IdMensaje').AsInteger := zMensaje.FieldByName('IdMensaje').AsInteger;
    zNotificaciones.FieldByName('TipoAlerta').AsString    := 'Estatus';
    zNotificaciones.FieldByName('Tabla').AsString := '*';
    zNotificaciones.FieldByName('campoPrincipal').AsString := '*';
    zNotificaciones.FieldByName('Estatus').AsString := '*';
    zNotificaciones.FieldByName('LimiteDias').AsInteger := 1;
    zNotificaciones.FieldByName('Activo').AsString := 'Si';
    zNotificaciones.FieldByName('Folio').AsString := '*';
    zNotificaciones.FieldByName('sIdUsuario').AsString := global_usuario;

   cxMensaje.SetFocus ;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al agregar registro', 0);
  end;
  end;

  cxGridNotificaciones.Enabled:=False;
end;

procedure TFrmNotificaciones.btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  frmBarraH11.btnActive;

  zNotificaciones.Cancel;
  zMensaje.Filtered := False;


  cxGridNotificaciones.Enabled:=True;

  frmBarraH21.btnActive;
  cxLeyenda.Caption:=titulo;
  cxSplitterMedio.Visible := False;
  Panel2.Visible  :=False;


  PermisosBotones(FrmNotificaciones,btnPermisos);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'UFrmNotificaciones', 'Al cancelar', 0);
  end;
 end;
   frmBarraH11.btnActive;
  frmBarraH11.btnPrinter.Enabled := False;
  frmBarraH11.btnExporta.Enabled := False;
  frmBarraH11.btnDetalle.Enabled := False;
end;

procedure TFrmNotificaciones.btnDeleteClick(Sender: TObject);

begin
    If zNotificaciones.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        dsNotificaciones.DataSet.Delete;
        zNotificaciones.ApplyUpdates();
      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Notificaciones', 'Al eliminar registro', 0);
        end;
      end
    end

end;

procedure TFrmNotificaciones.btnEditClick(Sender: TObject);
begin
   cxLeyenda.Caption:=titulo+'[Editando]';
   frmBarraH11.btnEditClick(Sender);
   frmBarraH21.btnActive;

   cxSplitterMedio.Visible := True;
   Panel2.Visible  :=True;
   cxGridNotificaciones.Enabled:=False;
   zNotificaciones.Edit;
   cxMensaje.SetFocus;

end;

procedure TFrmNotificaciones.btnPostClick(Sender: TObject);
var
     SavePlace     : TBookmark;
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.btnActive;
    frmBarraH11.Visible:=True;
    cxGridNotificaciones.Enabled:=True;
    dsNotificaciones.DataSet.Post;
    dsNotificaciones.DataSet.Refresh;

    SavePlace := cxGridNotificacionesView.DataController.DataSource.DataSet.GetBookmark;
    zNotificaciones.Refresh;
    try
       cxGridNotificacionesView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
       cxGridNotificacionesView.DataController.DataSet.FreeBookmark(SavePlace);
    end;


    PermisosBotones(FrmNotificaciones,btnPermisos);
    frmBarraH11.btnActive;
    frmBarraH11.btnPrinter.Enabled := False;
    frmBarraH11.btnExporta.Enabled := False;
    frmBarraH11.btnDetalle.Enabled := False;
end;

procedure TFrmNotificaciones.btnRefreshClick(Sender: TObject);
begin
  zNotificaciones.Refresh;
end;

procedure TFrmNotificaciones.cxAlertaPropertiesChange(Sender: TObject);
begin
//if cxAlerta.EditValue = 'Fecha' then
//   cxFecha.Enabled := True;
end;

procedure TFrmNotificaciones.cxAlertaPropertiesEditValueChanged(
  Sender: TObject);
begin
if cxAlerta.EditValue = 'Fecha' then
   cxFecha.Enabled := True;
end;

procedure TFrmNotificaciones.cxGridNotificacionesViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxGridNotificacionesView.OptionsView.CellAutoHeight := not cxGridNotificacionesView.OptionsView.CellAutoHeight;
end;

procedure TFrmNotificaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 guardar_leer_grid(cxGridNotificacionesView,FrmNotificaciones,1);
action := cafree;
end;

procedure TFrmNotificaciones.FormShow(Sender: TObject);
begin
   titulo :=  'Notificaciones';
  cxLeyenda.Caption := titulo;
  frmBarraH11.btnActive;
  frmBarraH11.btnPrinter.Enabled := False;
  frmBarraH11.btnExporta.Enabled := False;
  frmBarraH11.btnDetalle.Enabled := False;
  panel2.Visible := False;
  cxSplitterMedio.Visible := False;

  cxFecha.Enabled := False;

  AsignarSQL(zNotificaciones,'master_notificacion', pUpdate);
  zNotificaciones.Open;

  AsignarSQL(zMensaje,'mensaje', pUpdate);
  zMensaje.Open;
   guardar_leer_grid(cxGridNotificacionesView,FrmNotificaciones,0);
end;

end.
