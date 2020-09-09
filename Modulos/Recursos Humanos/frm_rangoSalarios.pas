unit frm_rangoSalarios;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  MemDS, DBAccess, Uni, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxLabel, frm_barraH1, dxLayoutContainer, dxLayoutControl,
  frm_barraH2, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxSplitter,
  Vcl.ExtCtrls, dxLayoutcxEditAdapters, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  cxTextEdit, unitGenerales, global;

type
  TfrmRangoSalarios = class(TForm)
    PanelTop: TPanel;
    PanelInfo: TPanel;
    cxSplitterInfo: TcxSplitter;
    PanelCentral: TPanel;
    cxGridRangosDBTableView1: TcxGridDBTableView;
    cxGridRangosLevel1: TcxGridLevel;
    cxGridRangos: TcxGrid;
    PanelDown: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControlInfoGroup_Root: TdxLayoutGroup;
    dxLayoutControlInfo: TdxLayoutControl;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxColumn1: TcxGridDBColumn;
    cxColumn2: TcxGridDBColumn;
    cxColumn3: TcxGridDBColumn;
    cxColumn4: TcxGridDBColumn;
    cxColumn5: TcxGridDBColumn;
    cxColumn6: TcxGridDBColumn;
    cxColumn7: TcxGridDBColumn;
    uRangos: TUniQuery;
    uEmpresas: TUniQuery;
    uTiposNomina: TUniQuery;
    uMonedas: TUniQuery;
    ds_rangos: TDataSource;
    ds_empresas: TDataSource;
    ds_tiposNomina: TDataSource;
    ds_monedas: TDataSource;
    cxTitulo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxSD: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxImporte: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxMoneda: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxEmpresa: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxTipoNomina: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    //Eventos de focus entrar y salir de los componentes.
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRangoSalarios: TfrmRangoSalarios;
  FORMULARIO_ACTIVO : String;

implementation

{$R *.dfm}

uses frm_salarios;

procedure TfrmRangoSalarios.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmRangoSalarios.EnterControl(Sender: TObject);
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

procedure TfrmRangoSalarios.SalidaControl(Sender: TObject);
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

procedure TfrmRangoSalarios.btnAddClick(Sender: TObject);
begin
  frmBarraH11.btnAddClick(Sender);
  uRangos.Append;
  uRangos.FieldByName('FechaAplicacion').AsDateTime:=Now;
  uRangos.FieldByName('IdEmpresa').AsInteger:=uEmpresas.FieldByName('IdEmpresa').AsInteger;
  uRangos.FieldByName('IdMoneda').AsInteger:=uMonedas.FieldByName('IdMoneda').AsInteger;
  if GLOBAL_FRMACTIVO = 'frmSalarios' then
     uRangos.FieldByName('IdTipoNomina').AsInteger:= frm_salarios.frmSalarios.zqCatalogosGenerales.FieldByName('IdTipoNomina').AsInteger
  else
     uRangos.FieldByName('IdTipoNomina').AsInteger:=uTiposNomina.FieldByName('IdTipoNomina').AsInteger;
  PanelInfo.Visible:=True;
  cxSplitterInfo.Visible:=True;

  cxTitulo.SetFocus;
end;

procedure TfrmRangoSalarios.btnCancelClick(Sender: TObject);
begin
  frmBarraH11.btnActive;
  PanelInfo.Visible:=False;
  cxSplitterInfo.Visible:=False;
  uRangos.Cancel;
end;

procedure TfrmRangoSalarios.btnDeleteClick(Sender: TObject);
begin
  if uRangos.RecordCount > 0 then begin
    if MessageDlg('¿Realmente desea eliminar el registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      uRangos.Delete;
      uRangos.ApplyUpdates();
      uRangos.Refresh;
    end;
  end
  else begin
    MessageDlg('No hay datos que eliminar',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmRangoSalarios.btnEditClick(Sender: TObject);
begin
  frmBarraH11.btnEditClick(Sender);
  if uRangos.RecordCount > 0 then begin
    uRangos.Edit;
    PanelInfo.Visible:=True;
    cxSplitterInfo.Visible:=True;
  end
  else
    MessageDlg('No hay información disponible para editar',mtInformation,[mbOk],0);

end;

procedure TfrmRangoSalarios.btnPostClick(Sender: TObject);
begin
  PanelInfo.Visible:=False;
  cxSplitterInfo.Visible:=False;
  uRangos.FieldByName('Periodo').AsInteger := StrToInt(Copy(DateToStr(cxFecha.Date),7,4));
  uRangos.Post;
  uRangos.Refresh;

   btnCancelClick(Sender);
end;

procedure TfrmRangoSalarios.btnRefreshClick(Sender: TObject);
begin
  uRangos.Refresh;
end;

procedure TfrmRangoSalarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FORMULARIO_ACTIVO = 'frmSalarios' then
  begin
    frmSalarios.zRangoSalarios.Refresh;
    uRangos.Last;
    if (frmSalarios.zqCatalogosGenerales.State = dsInsert) or (frmSalarios.zqCatalogosGenerales.State = dsEdit) then
        frmSalarios.cxRangoSalario.DataBinding.DataSource.DataSet.FieldByName('IdRangoSalarios').AsInteger := uRangos.FieldByName('IdRangoSalarios').AsInteger;
  end;
   guardar_leer_grid(cxGridRangosDBTableView1,frmRangoSalarios,1);
  uRangos.Cancel ;
  action := cafree ;
end;

procedure TfrmRangoSalarios.FormShow(Sender: TObject);
begin
    FORMULARIO_ACTIVO := global_frmActivo;

    PanelInfo.Visible:=False;
    cxSplitterInfo.Visible:=False;

    AsignarSQL(uRangos,'nom_rangosalarios',pUpdate);
    FiltrarDataSet(uRangos,'IdEmpresa,IdTipoNomina,Titulo,IdMoneda,FechaAplicacion,IdRangoSalarios',[-1,-1,-1,-1,-1,-1]);
    uRangos.Open;

    AsignarSQL(uEmpresas,'master_empresa',pUpdate);
    FiltrarDataSet(uEmpresas,'IdEmpresa,bIdEmpresa,IdPadre',[-1,-1,-1]);
    uEmpresas.Open;

    AsignarSQL(uTiposNomina,'rh_tiponomina',pUpdate);
    FiltrarDataSet(uTiposNomina,'Id,IdMoneda,IdEmpresa',[-1,-1,-1]);
    uTiposNomina.Open;

    AsignarSQL(uMonedas,'master_moneda',pUpdate);
    FiltrarDataSet(uMonedas,'IdMoneda,Codigo,Activo',[-1,-1,'Si']);
    uMonedas.Open;
    guardar_leer_grid(cxGridRangosDBTableView1,frmRangoSalarios,0);

end;

end.
