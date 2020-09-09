unit frm_TipoEstudio;

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
  cxDBLookupEdit;

type
  TfrmTipoEstudio = class(TForm)
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
    dsEstudio: TDataSource;
    Estudio: TUniQuery;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoEstudio: TfrmTipoEstudio;

implementation

{$R *.dfm}

procedure TfrmTipoEstudio.btnCancelClick(Sender: TObject);
begin
  Estudio.Cancel;
  PanelButton.Visible := False;
  btnNew.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;
end;

procedure TfrmTipoEstudio.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmTipoEstudio.EnterControl(Sender: TObject);
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
end;

procedure TfrmTipoEstudio.SalidaControl(Sender: TObject);
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
end;

procedure TfrmTipoEstudio.btnDeleteClick(Sender: TObject);
var
  zActualiza : tUniquery;
  indice, iGrid    : integer;
  lContinua : boolean;
  SavePlace, SavePlace2 : TBookMark;
begin
   if MessageDlg('¿Desea eliminar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     Estudio.Delete;
     Estudio.ApplyUpdates();
   end;

   Estudio.Refresh;
end;

procedure TfrmTipoEstudio.btnEditClick(Sender: TObject);
begin
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  Estudio.Edit;
  PanelButton.Visible := True;
end;

procedure TfrmTipoEstudio.btnNewClick(Sender: TObject);
begin
  PanelButton.Visible := True;
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  Estudio.Append;


end;

procedure TfrmTipoEstudio.btnSaveClick(Sender: TObject);
begin
  Estudio.Post;
  Estudio.Refresh;
  PanelButton.Visible := False;
  btnNew.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;

end;

procedure TfrmTipoEstudio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTipoEstudio.FormShow(Sender: TObject);
begin
  PanelButton.Visible := False;
  AsignarSQL(Estudio, 'master_estudios', pUpdate);
  Estudio.Open;


end;

end.
