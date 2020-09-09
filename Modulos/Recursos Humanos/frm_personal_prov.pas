unit frm_personal_prov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxSplitter, Vcl.ExtCtrls, frm_barraH1, cxContainer,
  cxEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, dxBarBuiltInMenu, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxGroupBox, cxRadioGroup, cxPC, dxLayoutControl, frm_barraH2, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, global,
  cxDBLookupComboBox, UnitExcepciones, MemDS, DBAccess, Uni, UnitGenerales;

type
  TfrmPersonalProv = class(TForm)
    PanelTop: TPanel;
    PanelPrincipal: TPanel;
    PanelCentro: TPanel;
    PanelDetalle: TPanel;
    SplitterDetalle: TcxSplitter;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelInfo: TPanel;
    cxGridEmpProvDBTableView1: TcxGridDBTableView;
    cxGridEmpProvLevel1: TcxGridLevel;
    cxGridEmpProv: TcxGrid;
    SplitterInfo: TcxSplitter;
    PanelBtn: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxPageControlDetalle: TcxPageControl;
    cxTabInformes: TcxTabSheet;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxColumn1: TcxGridDBColumn;
    cxColumn2: TcxGridDBColumn;
    cxColumn3: TcxGridDBColumn;
    cxColumn4: TcxGridDBColumn;
    cxColumn5: TcxGridDBColumn;
    cxColumn6: TcxGridDBColumn;
    cxColumn7: TcxGridDBColumn;
    cxColumn8: TcxGridDBColumn;
    cxColumn9: TcxGridDBColumn;
    cxColumn10: TcxGridDBColumn;
    cmbProveedor: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxCategoria: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxRFC: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxNSS: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxAlergia: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxRH: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxContacto: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxTelefono: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    uEmpP: TUniQuery;
    ds_empP: TDataSource;
    uProveedor: TUniQuery;
    ds_proveedor: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPersonalProv: TfrmPersonalProv;
  btnPermisos : String;

implementation

{$R *.dfm}

procedure TfrmPersonalProv.btnAddClick(Sender: TObject);
begin
  cxGridEmpProv.Enabled:=False;
  PanelInfo.Visible:=True;
  SplitterInfo.Visible:=True;
  frmBarraH11.btnAddClick(Sender);
  uEmpP.Append;
  uEmpP.FieldByName('Sexo').AsString:='Hombre';
  uEmpP.FieldByName('FechaNacimiento').AsDateTime:=Date;
  uEmpP.FieldByName('Activo').AsString:='Si';
  cmbProveedor.SetFocus;
end;

procedure TfrmPersonalProv.btnCancelClick(Sender: TObject);
begin
  cxGridEmpProv.Enabled:=True;
  frmBarraH11.btnActive;
  PanelInfo.Visible:=False;
  SplitterInfo.Visible:=False;
  uEmpP.Cancel;
end;

procedure TfrmPersonalProv.btnDeleteClick(Sender: TObject);
begin
  if uEmpP.RecordCount > 0 then begin
   if MessageDlg('¿Realmente desea eliminar el empleado '+uEmpP.FieldByName('NombreCompleto').AsString,mtInformation,[mbYes,mbNo],0) = mrYes then begin
      uEmpP.Delete;
      uEmpP.ApplyUpdates();
      uEmpP.Refresh;
   end;
  end
  else
    MessageDlg('No hay datos para eliminar',mtInformation,[mbOk],0);

end;

procedure TfrmPersonalProv.btnEditClick(Sender: TObject);
begin
  frmBarraH11.btnEditClick(Sender);
  cxGridEmpProv.Enabled:=False;
  PanelInfo.Visible:=True;
  SplitterInfo.Visible:=True;
  uEmpP.Edit;
end;

procedure TfrmPersonalProv.btnPostClick(Sender: TObject);
begin
  cxGridEmpProv.Enabled:=True;
  frmBarraH11.Enabled:=True;
  PanelInfo.Visible:=False;
  SplitterInfo.Visible:=False;
  uEmpP.Post;
  uEmpP.Refresh;
end;

procedure TfrmPersonalProv.btnRefreshClick(Sender: TObject);
begin
   uEmpP.Refresh;
end;

procedure TfrmPersonalProv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  guardar_leer_grid(cxGridEmpProvDBTableView1,frmPersonalProv,1);
  action:=caFree;
end;

procedure TfrmPersonalProv.FormShow(Sender: TObject);
begin
  btnPermisos:=global_btnPermisos;
  try
    PanelDetalle.Visible:=False;
    SplitterDetalle.Visible:=False;
    PanelInfo.Visible:=False;
    SplitterInfo.Visible:=False;

    uEmpP.Active:=False;
    AsignarSQL(uEmpP,'master_proveedor_personal',pUpdate);
    uempP.Open;

    uProveedor.Active:=False;
    AsignarSQL(uProveedor,'master_proveedores',pUpdate);
    FiltrarDataSet(uProveedor,'IdProveedor',[-1]);
    uProveedor.Open;
  except
  on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Personal por Proveedor', 'Al iniciar el formulario', 0);
    end;
  end;
  guardar_leer_grid(cxGridEmpProvDBTableView1,frmPersonalProv,0);

end;

procedure TfrmPersonalProv.EnterControl(Sender: TObject);
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

procedure TfrmPersonalProv.SalidaControl(Sender: TObject);
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


procedure TfrmPersonalProv.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.
