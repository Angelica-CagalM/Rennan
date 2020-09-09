unit frm_opc_firmantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinsdxNavBarPainter,
  dxSkinsdxNavBarAccordionViewPainter, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, cxLabel, frm_barraH1, dxNavBarCollns,
  dxNavBarGroupItems, cxClasses, dxNavBarBase, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxNavBar, MemDS, DBAccess, Uni, frm_barraH2, dxLayoutContainer,
  dxLayoutControl, unitgenerales, unitMetodos,global,frm_connection,
  dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxTextEdit, cxDBEdit,cxImage,
  cxGroupBox;

type
  TfrmOpcFirmantes = class(TForm)
    PanelTop: TPanel;
    dxNavBar1: TdxNavBar;
    PanelPrincipal: TPanel;
    viewDatos: TcxGridDBTableView;
    gridDatosLevel1: TcxGridLevel;
    gridDatos: TcxGrid;
    PanelDatos: TPanel;
    cxSplitterDatos: TcxSplitter;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Separator1: TdxNavBarSeparator;
    dxFirmantes: TdxNavBarGroup;
    frmBarraH11: TfrmBarraH1;
    cxTitulo: TcxLabel;
    cxColumnD1: TcxGridDBColumn;
    cxColumnD2: TcxGridDBColumn;
    uDatos: TUniQuery;
    dsDatos: TDataSource;
    frmBarraH21: TfrmBarraH2;
    layoutDatosGroup_Root: TdxLayoutGroup;
    layoutDatos: TdxLayoutControl;
    cxDescripcion: TcxDBTextEdit;
    dxItemDescripcion: TdxLayoutItem;
    cxRelacionar: TcxCheckBox;
    dxItemCheck: TdxLayoutItem;
    cxRelacion: TcxDBLookupComboBox;
    dxItemLook: TdxLayoutItem;
    uSub: TUniQuery;
    dsSub: TDataSource;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    groupImage: TcxGroupBox;
    itemImagen: TdxLayoutItem;
    imgFirma: TcxDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxNavBar1Item1Click(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure cxRelacionarPropertiesChange(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure imgFirmaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcFirmantes: TfrmOpcFirmantes;
  seleccion : Integer;

implementation

{$R *.dfm}

procedure TfrmOpcFirmantes.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmOpcFirmantes.imgFirmaDblClick(Sender: TObject);
begin
  tcxImage(ImgFirma).LoadFromFile;
end;

procedure TfrmOpcFirmantes.EnterControl(Sender: TObject);
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

procedure TfrmOpcFirmantes.SalidaControl(Sender: TObject);
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

procedure TfrmOpcFirmantes.btnAddClick(Sender: TObject);
begin
  if uDatos.RecordCount>0 then begin
    uDatos.Append;
    cxRelacionar.Checked:=False;
    PanelDatos.Visible:=True;
    cxSplitterDatos.Visible:=True;
  end;
end;

procedure TfrmOpcFirmantes.btnCancelClick(Sender: TObject);
begin
  udatos.Cancel;
  PanelDatos.Visible:=False;
  cxSplitterDatos.Visible:=False;
end;

procedure TfrmOpcFirmantes.btnDeleteClick(Sender: TObject);
begin
  if uDatos.RecordCount>0 then begin
    if MessageDlg('¿Realmente desea eliminar el registro ',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
      uDatos.Delete;
      uDatos.ApplyUpdates();
      uDatos.Refresh;
    end;
  end
  else
    MessageDlg('No hay datos a eliminar',mtInformation,[mbOk],0);

end;

procedure TfrmOpcFirmantes.btnEditClick(Sender: TObject);
begin
  if uDatos.RecordCount>0 then begin
    uDatos.Edit;
    if seleccion = 1 then begin
      if uDatos.FieldByName('IdEmpleado').AsInteger = -1 then
        cxRelacionar.Checked:=False
      else
        cxRelacionar.Checked:=True;
    end
    else begin
      if uDatos.FieldByName('IdPuesto').AsInteger = -1 then
        cxRelacionar.Checked:=False
      else
        cxRelacionar.Checked:=True;
    end;
    PanelDatos.Visible:=True;
    cxSplitterDatos.Visible:=True;
  end;
end;

procedure TfrmOpcFirmantes.btnPostClick(Sender: TObject);
var
  valor: Integer;
begin
  if not cxRelacionar.Checked then
    valor:=-1
  else
    valor:=cxRelacion.EditValue;
  if seleccion = 1 then
    udatos.FieldByName('IdEmpleado').AsInteger:=valor
  else
    uDatos.FieldByName('IdPuesto').AsInteger:=Valor;
  uDatos.Post;
  uDatos.Refresh;
  PanelDatos.Visible:=False;
  cxSplitterDatos.Visible:=False;

end;

procedure TfrmOpcFirmantes.btnRefreshClick(Sender: TObject);
begin
  udatos.Refresh;

end;

procedure TfrmOpcFirmantes.cxRelacionarPropertiesChange(Sender: TObject);
begin
    cxRelacion.Enabled:=cxRelacionar.Checked;
end;

procedure TfrmOpcFirmantes.dxNavBar1Item1Click(Sender: TObject);
begin
  seleccion:=1;
  //consulta principal
  uDatos.Active:=False;
  AsignarSQL(uDatos,'rd_firmas_firmantes_simple',pUpdate);
  uDatos.Open;
  //consulta secundaria
  uSub.Active:=False;
  AsignarSQL(uSub,'master_personal_salida',pUpdate);
  FiltrarDataSet(uSub,'Empresa,Activo',[connection.uContrato.FieldByName('IdEmpresa').AsInteger,'Si']);
  uSub.Open;
  //columnas del grid
  cxColumnD1.DataBinding.FieldName:='NombreFirmante';
  cxColumnD2.DataBinding.FieldName:='Empleado';
  //items del layout
  dxItemDescripcion.CaptionOptions.Text:='Firmante ';
  dxItemLook.CaptionOptions.Text:='Empleados ';
  cxDescripcion.DataBinding.DataField:='NombreFirmante';
  cxRelacionar.Caption:='Relacionar con un empleado existente: ';
  cxRelacion.DataBinding.DataField:='IdEmpleado';
  cxRelacion.Properties.KeyFieldNames:='IdPersonal';
  cxRelacion.Properties.ListFieldNames:='NombreCompleto';
  cxRelacion.Properties.ListColumns.ColumnByFieldName('NombreCompleto').Caption:='Listado de Empleados';
  itemImagen.Visible:=True;

end;

procedure TfrmOpcFirmantes.dxNavBar1Item2Click(Sender: TObject);
begin
  seleccion:=2;
  //consulta principal
  uDatos.Active:=False;
  AsignarSQL(uDatos,'rd_firmas_puestos_simple',pUpdate);
  uDatos.Open;
  //consulta secundaria
  uSub.Active:=False;
  AsignarSQL(uSub,'master_puesto',pUpdate);
  FiltrarDataSet(uSub,'Empresa,Activo',[connection.uContrato.FieldByName('IdEmpresa').AsInteger,'Si']);
  uSub.Open;
  //columnas del grid
  cxColumnD1.DataBinding.FieldName:='Descripcion';
  cxColumnD2.DataBinding.FieldName:='Puesto';
  //items del layout
  dxItemDescripcion.CaptionOptions.Text:='Puesto ';
  dxItemLook.CaptionOptions.Text:='Puestos ';
  cxDescripcion.DataBinding.DataField:='Descripcion';
  cxRelacionar.Caption:='Relacionar con un puesto existente: ';
  cxRelacion.DataBinding.DataField:='IdPuesto';
  cxRelacion.Properties.KeyFieldNames:='IdPuesto';
  cxRelacion.Properties.ListFieldNames:='NombreCompleto';
  cxRelacion.Properties.ListColumns.ColumnByFieldName('NombreCompleto').Caption:='Listado de Empleados';
  itemImagen.Visible:=False;
end;

procedure TfrmOpcFirmantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrmOpcFirmantes.FormShow(Sender: TObject);
begin
  dxNavBar1.ActiveGroup:=dxFirmantes;
  dxNavBar1Item1Click(Sender);

end;

end.
