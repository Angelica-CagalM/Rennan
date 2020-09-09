unit frm_Medicos;

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
  TfrmMedicos = class(TForm)
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnNew: TcxButton;
    cxGridPaciente: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLeyenda: TcxLabel;
    cxGridPacienteColumn1: TcxGridDBColumn;
    cxGridPacienteColumn2: TcxGridDBColumn;
    cxGridPacienteColumn3: TcxGridDBColumn;
    cxGridPacienteColumn4: TcxGridDBColumn;
    PanelButton: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtNombre: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    mTelefono: TcxDBMaskEdit;
    dxLayoutItem4: TdxLayoutItem;
    Panel1: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    dsMedico: TDataSource;
    Medico: TUniQuery;
    lcbEspecialidad: TcxDBLookupComboBox;
    lcbCiudad: TcxDBLookupComboBox;
    lcbestado: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    txtDireccion: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxGridPacienteColumn5: TcxGridDBColumn;
    cxGridPacienteColumn6: TcxGridDBColumn;
    dsEspecialidad: TDataSource;
    dsEstado: TDataSource;
    dsCiudad: TDataSource;
    Ciudad: TUniQuery;
    Estado: TUniQuery;
    Especialidad: TUniQuery;
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
  frmMedicos: TfrmMedicos;

implementation

{$R *.dfm}

procedure TfrmMedicos.btnCancelClick(Sender: TObject);
begin
  Medico.Cancel;
  PanelButton.Visible := False;
  btnNew.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;
end;

procedure TfrmMedicos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmMedicos.EnterControl(Sender: TObject);
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

procedure TfrmMedicos.SalidaControl(Sender: TObject);
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

procedure TfrmMedicos.btnDeleteClick(Sender: TObject);
var
  zActualiza : tUniquery;
  indice, iGrid    : integer;
  lContinua : boolean;
  SavePlace, SavePlace2 : TBookMark;
begin
   if MessageDlg('¿Desea eliminar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     Medico.Delete;
     Medico.ApplyUpdates();
   end;

   Medico.Refresh;
end;

procedure TfrmMedicos.btnEditClick(Sender: TObject);
begin
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  Medico.Edit;
  PanelButton.Visible := True;
end;

procedure TfrmMedicos.btnNewClick(Sender: TObject);
begin
  PanelButton.Visible := True;
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  Medico.Append;
  Medico.FieldValues['IdEspecialidad']  :=  Especialidad.FieldByName('IdEspecialidad').AsInteger;
  Medico.FieldValues['IdCiudad']        :=  Ciudad.FieldByName('IdCiudad').AsInteger;
  Medico.FieldValues['IdEstado']        :=  Estado.FieldByName('IdEstado').AsInteger;

end;

procedure TfrmMedicos.btnSaveClick(Sender: TObject);
begin
  Medico.Post;
  Medico.Refresh;
  PanelButton.Visible := False;
  btnNew.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;

end;

procedure TfrmMedicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmMedicos.FormShow(Sender: TObject);
begin
  PanelButton.Visible := False;
  AsignarSQL(Medico, 'master_medicos', pUpdate);
  Medico.Open;

  AsignarSQL(Especialidad, 'master_especialidad', pUpdate);
  Especialidad.Open;

  AsignarSQL(Ciudad, 'master_ciudad', pUpdate);
  Ciudad.Open;

  AsignarSQL(Estado, 'master_estado', pUpdate);
  Estado.Open;


end;

end.
