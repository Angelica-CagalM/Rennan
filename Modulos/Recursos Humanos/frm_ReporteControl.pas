unit frm_ReporteControl;

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
  dxSkinXmas2008Blue, frm_barraH1, cxProgressBar, cxLabel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxImage, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  frm_barraH2, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxDBEdit, cxCalendar, MemDS, DBAccess, Uni;

type
  TFrmReporteControl = class(TForm)
    PanelCentral: TPanel;
    PanelMenu: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    cxGridGenerador: TcxGrid;
    CxGridMoePersonal: TcxGridDBTableView;
    CxColNombre: TcxGridDBColumn;
    CxColCategoria: TcxGridDBColumn;
    CxColProyecto: TcxGridDBColumn;
    CxEembarque: TcxGridDBColumn;
    CxColFechaInicio: TcxGridDBColumn;
    CxColFechaFin: TcxGridDBColumn;
    CxLevel1: TcxGridLevel;
    PanelDatos: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbEmpleado: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cbCategoria: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cbProyecto: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cbEmbarque: TcxDBDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cbDesembarque: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    mmComentarios: TcxDBMemo;
    dxLayoutItem6: TdxLayoutItem;
    zEmpleados: TUniQuery;
    dsEmpleados: TDataSource;
    zCargo: TUniQuery;
    dsCargo: TDataSource;
    Proyecto: TUniQuery;
    dsProyecto: TDataSource;
    Control: TUniQuery;
    dsControl: TDataSource;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edtTotalDias: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    CxColDias: TcxGridDBColumn;
    CxColComentarios: TcxGridDBColumn;
    cbUbicacion: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    Ubicacion: TUniQuery;
    dsUbicacion: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReporteControl: TFrmReporteControl;
  titulo, titulo2: string;
implementation
uses frm_connection,UnitGenerales,global;
{$R *.dfm}

procedure TFrmReporteControl.btnAddClick(Sender: TObject);
begin
  PanelDatos.Visible:=True;
  Control.Append;
end;

procedure TFrmReporteControl.btnCancelClick(Sender: TObject);
begin
  PanelDatos.Visible:=False;
  Control.Cancel;
end;

procedure TFrmReporteControl.btnDeleteClick(Sender: TObject);
begin
 if MessageDlg('Desea eliminar el registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      control.Delete;
      control.ApplyUpdates();
      Control.Refresh;
    end;
end;

procedure TFrmReporteControl.btnEditClick(Sender: TObject);
begin
 Control.Edit;
 PanelDatos.Visible:=True;
end;

procedure TFrmReporteControl.btnPostClick(Sender: TObject);
begin
Control.Post;
Control.Refresh;
btnCancelClick(Sender);
end;

procedure TFrmReporteControl.btnRefreshClick(Sender: TObject);
begin
 Control.Refresh;
end;

procedure TFrmReporteControl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmReporteControl.FormShow(Sender: TObject);
begin
  titulo:='Control de Subida y Bajadas';
  cxLeyenda.Caption:=titulo;
  zEmpleados.Open;
  zCargo.Open;
  proyecto.Open;
  Ubicacion.Open;
  AsignarSQL(Control,'ControReporte',pUpdate);
  FiltrarDataSet(Control,'Activo',['Si']);
  Control.Open;
end;

procedure TFrmReporteControl.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmReporteControl.SalidaControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBTimeEdit) then
         tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TFrmReporteControl.EnterControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDateEdit) then
        tcxDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBTimeEdit) then
         tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;
end;

end.
