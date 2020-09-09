unit frm_Plantilla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, dxLayoutcxEditAdapters, cxDBEdit, dxLayoutContainer,
  cxDropDownEdit, cxMaskEdit, cxCalendar, cxTextEdit, dxLayoutControl, MemDS,
  DBAccess, Uni, unitgenerales, global,cxDBLookupComboBox, cxLookupEdit,
  cxDBLookupEdit, cxMemo;

type
  TfrmPlantilla = class(TForm)
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnNew: TcxButton;
    cxGridPaciente: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLeyenda: TcxLabel;
    cxGridPacienteColumn1: TcxGridDBColumn;
    PanelButton: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtDescripción: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    Panel1: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    dsPlantilla: TDataSource;
    Plantilla: TUniQuery;
    mDescripcion: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    cxGridPacienteColumn2: TcxGridDBColumn;
    cxGridPacienteColumn3: TcxGridDBColumn;
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxGridPacienteCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlantilla: TfrmPlantilla;

implementation

{$R *.dfm}

procedure TfrmPlantilla.btnCancelClick(Sender: TObject);
begin
  Plantilla.Cancel;
  PanelButton.Visible := False;
  btnNew.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;
end;

procedure TfrmPlantilla.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmPlantilla.EnterControl(Sender: TObject);
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
        tcxComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_EntradaERP;

     if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_EntradaERP;
end;

procedure TfrmPlantilla.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmPlantilla.btnDeleteClick(Sender: TObject);
var
  zActualiza : tUniquery;
  indice, iGrid    : integer;
  lContinua : boolean;
  SavePlace, SavePlace2 : TBookMark;
begin
   if MessageDlg('¿Desea eliminar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     Plantilla.Delete;
     Plantilla.ApplyUpdates();
   end;

   Plantilla.Refresh;
end;

procedure TfrmPlantilla.btnEditClick(Sender: TObject);
begin
  Plantilla.Edit;
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  PanelButton.Visible := True;
end;

procedure TfrmPlantilla.btnNewClick(Sender: TObject);
begin
  PanelButton.Visible := True;
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  Plantilla.Append;


end;

procedure TfrmPlantilla.btnSaveClick(Sender: TObject);
begin
  Plantilla.Post;
  Plantilla.Refresh;
  PanelButton.Visible := False;
  btnNew.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;

end;

procedure TfrmPlantilla.cxGridPacienteCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 if cxGridPaciente.OptionsView.CellAutoHeight then
      cxGridPaciente.OptionsView.CellAutoHeight := False
   else
      cxGridPaciente.OptionsView.CellAutoHeight := True;
end;

procedure TfrmPlantilla.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPlantilla.FormShow(Sender: TObject);
begin
  cxGridPaciente.DataController.Groups.FullExpand;
  PanelButton.Visible := False;
  AsignarSQL(Plantilla, 'master_plantilla', pUpdate);
  Plantilla.Open;


end;

end.
