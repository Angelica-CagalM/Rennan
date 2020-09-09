unit frm_Reportecheck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxLayoutContainer, dxLayoutControl, frm_barraH2, cxSplitter,
  frm_barraH1, cxLabel, Vcl.ExtCtrls, dxLayoutcxEditAdapters, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, dxBarBuiltInMenu, MemDS,
  DBAccess, Uni, cxPC, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  Vcl.StdCtrls, cxButtons, UnitGenerales, Global, frxClass, frxDBSet;

type
  TfrmReporteCheck = class(TForm)
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    PanelDown: TPanel;
    PanelAcepta: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGridRegistroDBTableView1: TcxGridDBTableView;
    cxGridRegistroLevel1: TcxGridLevel;
    cxGridRegistro: TcxGrid;
    cxColumnRC1: TcxGridDBColumn;
    cxColumnRC2: TcxGridDBColumn;
    cxColumnRC3: TcxGridDBColumn;
    cxColumnRC4: TcxGridDBColumn;
    cmbCheck: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxFamilia: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    PanelTop2: TPanel;
    cxLeyenda2: TcxLabel;
    btnNuevo: TcxButton;
    btnEdita: TcxButton;
    Registro: TUniQuery;
    ds_Registro: TDataSource;
    Checklist: TUniQuery;
    ds_Checklist: TDataSource;
    cxSubFamilia: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxSplitterInfo: TcxSplitter;
    cxResponsable: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    filtroSubFamilia: TUniQuery;
    Descripciones: TUniQuery;
    ds_descripciones: TDataSource;
    Cumplimiento: TUniQuery;
    ds_cumplimiento: TDataSource;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    PanelDown2: TPanel;
    SplitDetalle: TcxSplitter;
    btnAcepDetalle: TcxButton;
    btnClose: TcxButton;
    reporte_registros: TfrxDBDataset;
    frxReporte: TfrxReport;
    reporte: TUniQuery;
    cxGridRegistroDBTableView1Column1: TcxGridDBColumn;
    cxGridRegistroDBTableView1Column2: TcxGridDBColumn;
    cxGridRegistroDBTableView1Column3: TcxGridDBColumn;
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure formClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbCheckExit(Sender: TObject);
    procedure RegistroAfterScroll(DataSet: TDataSet);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnEditaClick(Sender: TObject);
    procedure btnAcepDetalleClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReporteCheck: TfrmReporteCheck;
  titulo, titulo2, Grupo: string;
  abierto: boolean;
implementation

{$R *.dfm}

uses Ufrm_Loading, frm_connection;

procedure TfrmReporteCheck.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo+'[Añadiendo]';
    abierto:= True;
    frmBarraH11.Visible:=False;
    //btnDetalle.Enabled:= true;
    PanelDown.Visible:=True;
    cxSplitterInfo.Visible := True;
    cxGridRegistro.Enabled:= False;

    SplitDetalle.Visible:= False;
    PanelDetalle.Visible:=False;

    Registro.Append;
    Registro.FieldByName('Codigo').AsString := autoFolio(Registro, 'mto_registro_checklist');
    Registro.FieldByName('Fecha').AsDatetime:= date;
    Registro.FieldByName('Usuario').AsString:= GLOBAL_USUARIO;
    cxCodigo.SetFocus;

    connection.uUsuario.Locate('sIdUsuario',GLOBAL_USUARIO,[]);
    cxResponsable.Text:=connection.uUsuario.FieldByName('sNombre').AsString;
    cxFamilia.Text:='';
    cxSubfamilia.Text:='';
end;

procedure TfrmReporteCheck.btnDeleteClick(Sender: TObject);
var Checks : TUniquery;
begin
   abierto:= True;
  If Registro.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro, y su detalle, si los contiene?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if Registro.RecordCount > 0 then
      begin
        Checks := TUniquery.Create(nil);
        Checks.Connection := connection.Uconnection;
        Checks.SQL.Text := 'Delete from mto_registro_checklist_detalle where IdRegistroChecklist = :IdR';
        Checks.ParamByName('IdR').AsString := Registro.FieldByName('IdRegistroChecklist').AsString;
        Checks.ExecSQL;
        Checks.Destroy;

      Registro.Delete;
      Registro.ApplyUpdates();
      Registro.Refresh;
      Descripciones.Refresh;
      end
      else
        ShowMessage('No se puede eliminar, ya contiene datos de detalle.');

    end;
  abierto:= False;
end;

procedure TfrmReporteCheck.btnDetalleClick(Sender: TObject);
begin
    if PanelDetalle.Visible then
    begin
      SplitDetalle.Visible:= False;
      PanelDetalle.Visible:= False;
    end
    else begin
      titulo2:='Detalles';
      cxLeyenda2.Caption:=titulo2;
      AsignarSQL(descripciones,'mto_registro_checklist_detalle', pUpdate);
      FiltrarDataSet(Descripciones,'IdDetalle,IdRegistro,IdCumplimiento,Cumple',['-1',Registro.FieldByName('IdRegistroChecklist').AsInteger,'-1','-1']);
      Descripciones.Open;
      if Descripciones.RecordCount > 0 then begin
        btnNuevo.Visible:= false;
        btnEdita.Visible:=True;

      end
      else begin
        btnEdita.Visible:= False;
        btnNuevo.Visible:=true;
      end;
      SplitDetalle.Visible:=True;
      PanelDetalle.Visible:=True;
      PanelDown2.Visible:= false;
    end;
end;

procedure TfrmReporteCheck.cmbCheckExit(Sender: TObject);
var
  codigo: String;
  IdFamilia: Integer;
begin
  SalidaControl(Sender);
  AsignarSQL(filtroSubFamilia,'mto_checklist',pUpdate);
  FiltrarDataSet(filtroSubFamilia,'Id,Activo',[registro.FieldByName('IdChecklist').AsInteger,'-1']);
  filtroSubFamilia.Open;

  if filtroSubFamilia.RecordCount > 0 then begin
    codigo:=filtroSubFamilia.FieldByName('Codigo').AsString;
    AsignarSQL(FiltroSubFamilia,'alm_subfamilia',pUpdate);
    FiltrarDataSet(filtroSubFamilia,'Id,Codigo,IdFamilia',[-1,codigo,-1]);
    FiltroSubFamilia.Open;

    cxSubFamilia.Text:=FiltroSubFamilia.FieldByName('Nombre').AsString;

    IdFamilia:=FiltroSubFamilia.FieldByName('IdFamilia').AsInteger;
    AsignarSQL(FiltroSubFamilia,'alm_familias',pUpdate);
    FiltrarDataSet(filtroSubFamilia,'Id,IdGrupo,Codigo,Mto',[IdFamilia,-1,-1,-1]);
    FiltroSubFamilia.Open;
    cxFamilia.Text:=FiltroSubFamilia.FieldByName('Nombre').AsString;
    grupo:= FiltroSubFamilia.FieldByName('grupo').AsString;

  end;


end;

procedure TfrmReporteCheck.btnNuevoClick(Sender: TObject);
var
  grupos: String;
begin
  if Descripciones.RecordCount = 0  then begin
    AsignarSQL(filtroSubFamilia,'mto_grupo_checklist',pUpdate);
    FiltrarDataSet(filtroSubfamilia,'Id,Activo,IdCheck',[-1,'Si',Registro.FieldByName('IdChecklist').AsInteger]);
    filtroSubFamilia.Open;
    grupos:='';
    filtroSubFamilia.First;
    while not filtroSubFamilia.Eof do begin
      grupos:=grupos+filtroSubFamilia.FieldByName('IdGrupoChecklist').AsString+',';
      filtroSubFamilia.Next;
    end;
    abierto:= true;
    AsignarSQL(Cumplimiento, 'mto_grupo_checklist_cumplimiento', pUpdate);
    FiltrarDataSet(Cumplimiento, 'IdGrupo,Activo,Id',[grupos,'Si','-1']);
    Cumplimiento.Open;
    abierto:= false;
    Cumplimiento.RecordCount;
    Cumplimiento.First;
    while not Cumplimiento.Eof do begin
      Descripciones.Append;
      Descripciones.FieldByName('IdRegistroChecklist').AsInteger:=Registro.FieldByName('IdRegistroCheckList').AsInteger;
      Descripciones.FieldByName('IdGrupoChecklistCumplimiento').AsInteger:=Cumplimiento.FieldByName('IdGrupoChecklistCumplimiento').AsInteger;
      Descripciones.FieldByName('Cumple').AsString:='Si';
      Descripciones.FieldByName('AccionInmediata').AsString:='N/A';
      Descripciones.FieldByName('AccionAplazada').AsString:='N/A';
      Descripciones.Post;
      Cumplimiento.Next;
    end;
    Descripciones.Refresh;
    Descripciones.First;
    cxGrid2DBTableView1.OptionsData.Editing:=true;
    frmBarraH11.Visible:=False;
    btnNuevo.Enabled:=False;
    PanelDown2.Visible:=True;
    cxLeyenda2.Caption := titulo2 +'[Añadiendo]';
  end;
end;

procedure TfrmReporteCheck.btnEditaClick(Sender: TObject);
begin
  if Descripciones.RecordCount > 0 then begin
    Descripciones.First;
    cxGrid2DBTableView1.OptionsData.Editing:=true;
    cxLeyenda2.Caption := titulo2 +'[Editando]';
    frmBarraH11.Visible:=False;
    PanelDown2.Visible:=true;
    btnEdita.Enabled:=False;
  end
  else
    MessageDlg('No hay datos para editar.',mtInformation,[mbOk],0);
end;

procedure TfrmReporteCheck.btnAcepDetalleClick(Sender: TObject);
begin
  frmBarraH11.Visible:=True;
  PanelDown2.Visible:=False;
  btnNuevo.Enabled:=True;
  btnEdita.Enabled:=True;
  cxGrid2DBTableView1.OptionsData.Editing:=False;
  if Descripciones.State in [dsInsert,dsEdit] then
    Descripciones.Post;
end;

procedure TfrmReporteCheck.btnCloseClick(Sender: TObject);
begin
  frmBarraH11.Visible:=True;
  PanelDown2.Visible:=False;
  btnNuevo.Enabled:=true;
  btnEdita.Enabled:=True;
  cxGrid2DBTableView1.OptionsData.Editing:=False;
//  Descripciones.CachedUpdates := False;
  if Descripciones.State in [dsInsert,dsEdit] then
    Descripciones.Post;
end;

procedure TfrmReporteCheck.btnEditClick(Sender: TObject);
begin
    AsignarSQL(Descripciones, 'mto_registro_checklist_detalle',pUpdate);
    FiltrarDataSet(Descripciones,'IdDetalle,IdRegistro,IdCumplimiento,Cumple', ['-1',Registro.FieldByName('IdRegistroChecklist').AsInteger,'-1','Si']);
    descripciones.Open;
    if Descripciones.RecordCount = 0 then begin
      cxLeyenda.Caption:=titulo+'[Editando]';
      abierto:= True;
      PanelDown.Visible:=True;
      cxSplitterInfo.Visible:=True;
      frmBarraH11.Visible:=False;
      //btnDetalle.Visible:= False;
      cxGridRegistro.Enabled:=False;
      Registro.Edit;
      cxCodigo.SetFocus;

      connection.uUsuario.Locate('sIdUsuario',GLOBAL_USUARIO,[]);
      cxResponsable.Text:=connection.uUsuario.FieldByName('sNombre').AsString;
    end
    else
      MessageDlg('El registro seleccionado ya tiene detalles, no es posible editar',mtInformation,[mbOk],0);
end;

procedure TfrmReporteCheck.btnPostClick(Sender: TObject);
begin
  cxLeyenda.Caption:= titulo;
  //btnDetalle.Visible:= true;
  frmBarraH11.Visible:= True;
  cxGridRegistro.Enabled:= True;
  PanelDown.Visible:=False;
  cxSplitterInfo.Visible:=False;
  Registro.Post;
  Registro.Refresh;
  abierto:= False;
end;

procedure TfrmReporteCheck.btnPrinterClick(Sender: TObject);
var
  sql: String;
  Fecha: TDate;
begin
    sql:='';

    AsignarSQL(Descripciones, 'mto_registro_checklist_detalle',pUpdate);
    FiltrarDataSet(Descripciones,'IdDetalle,IdRegistro,IdCumplimiento,Cumple', ['-1',Registro.FieldByName('IdRegistroChecklist').AsInteger,'-1','Si']);
    descripciones.Open;
    if Descripciones.RecordCount > 0 then begin
      cmbCheckExit(Sender);
      Checklist.Locate('IdChecklist',Registro.FieldByName('IdChecklist').AsInteger,[]);
      //fecha:= Registro.FieldByName(Fecha).AsDateTime;
      Registro.Locate('Fecha',Registro.FieldByName('Fecha').AsDateTime,[]);
      sql:='SELECT d.*,:Fecha as Fecha, :cc as CC, :Usuario as Responsable, :familia as Subgrupo, :paramG as headerg, :subfamilia as Seccion, ';
      sql:=sql+'(select w.Descripcion from mto_grupo_checklist_cumplimiento w where w.IdGrupoChecklistCumplimiento= d.IdGrupoChecklistcumplimiento) as Descripciones, ';
      sql:=sql+'(SELECT g.Nombre from mto_grupo_checklist g WHERE g.IdGrupoChecklist=(SELECT w.IdGrupoChecklist from mto_grupo_checklist_cumplimiento w where w.IdGrupoChecklistcumplimiento = d.IdGrupoChecklistcumplimiento)) as Grupo ';
      sql:=sql+' FROM mto_registro_checklist_detalle d';
      sql:=sql+' WHERE (:Id = -1 or (:Id <> -1 and :Id = IdRegistroCheckList))';
      reporte.SQL.Text:=sql;
      reporte.Params.ParamByName('paramG').AsString:=Grupo;
      reporte.Params.ParamByName('familia').AsString:=cxFamilia.Text;
      reporte.Params.ParamByName('subfamilia').AsString:=cxSubFamilia.Text;
      reporte.Params.ParamByName('Usuario').AsString:=registro.FieldByName('Responsable').AsString;
      reporte.Params.ParamByName('Id').AsInteger:=Registro.FieldByName('IdRegistroChecklist').AsInteger;
      reporte.Params.ParamByName('cc').AsString:=Checklist.FieldByName('Codigo').AsString;
      reporte.Params.ParamByName('Fecha').AsDate:=Registro.FieldByName('Fecha').AsDateTime;
      reporte.Open;

      frxReporte.LoadFromFile(global_files+global_miReporte+'_Checklist.fr3');
      frxReporte.ShowReport();
    end;
end;

procedure TfrmReporteCheck.btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  PanelDown.Visible:= False;
  cxSplitterInfo.Visible:=False;
  frmBarraH11.Visible:=True;
  //btnDetalle.Visible:= True;
  cxGridRegistro.Enabled:=True;
  Registro.Cancel;
  abierto:= False;
end;

procedure TfrmReporteCheck.formClose(Sender: TObject; var Action: TCloseAction);
begin

    guardar_leer_grid(cxGridRegistroDBTableView1,frmReporteCheck,1);
    guardar_leer_grid(cxGrid2DBTableView1,frmReporteCheck,1);
    Registro.Cancel;
    action := cafree;

end;

procedure TfrmReporteCheck.FormShow(Sender: TObject);
begin
  titulo:= 'Reporte de Check List';
  cxLeyenda.Caption:= titulo;

  titulo2:= 'Detalle';
  cxLeyenda2.Caption:= titulo2;

  PanelDown.Visible:= False;
  cxSplitterInfo.Visible:= False;

  PanelDetalle.Visible:= False;
  SplitDetalle.Visible:= False;
  //btnDetalle.Enabled:= True;

  abierto:= True;
  Registro.Active:=False;
  Registro.SQL.Clear;
  AsignarSQL(Registro,'mto_registro_checklist',pUpdate);
  FiltrarDataSet(Registro, 'IdRegistro,IdCheck,Usuario',['-1','-1','-1']);
  Registro.Open;
  abierto:= False;

  AsignarSQL(Checklist,'mto_checklist',pUpdate);
  FiltrarDataSet(Checklist,'Id,Activo',[-1,'Si']);
  CheckList.Open;

  abierto:= true;
  AsignarSQL(Cumplimiento, 'mto_grupo_checklist_cumplimiento', pUpdate);
  FiltrarDataSet(Cumplimiento, 'IdGrupo,Activo,Id',['-1','-1','-1']);
  Cumplimiento.Open;
  abierto:= false;

  cxGridRegistroDBTableView1.DataController.Groups.FullExpand;
  guardar_leer_grid(cxGridRegistroDBTableView1,frmReporteCheck,0);
  guardar_leer_grid(cxGrid2DBTableView1,frmReporteCheck,0);
end;

procedure TfrmReporteCheck.EnterControl(Sender: TObject);
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
end;

procedure TfrmReporteCheck.SalidaControl(Sender: TObject);
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
end;

procedure TfrmReporteCheck.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmReporteCheck.RegistroAfterScroll(DataSet: TDataSet);
begin
  if PanelDetalle.Visible then
    if not abierto then begin
       Descripciones.SQL.Clear;
       AsignarSQL(descripciones,'mto_registro_checklist_detalle', pUpdate);
       FiltrarDataSet(Descripciones,'IdDetalle,IdRegistro,IdCumplimiento,Cumple',['-1',Registro.FieldByName('IdRegistroChecklist').AsInteger,'-1','-1']);
       Descripciones.Open;
      if Descripciones.RecordCount > 0 then begin
        btnNuevo.Visible:= false;
        btnEdita.Visible:= true;
      end
      else begin
        btnEdita.Visible:= False;
        btnNuevo.Visible:=true;
      end;
    end;
end;

end.
