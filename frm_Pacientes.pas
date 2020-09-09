unit frm_Pacientes;

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
  DBAccess, Uni, unitgenerales, global,cxDBLookupComboBox;

type
  TfrmPacientes = class(TForm)
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
    dFecha: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cbSexo: TcxDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    mTelefono: TcxDBMaskEdit;
    dxLayoutItem4: TdxLayoutItem;
    Panel1: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    dsPaciente: TDataSource;
    Paciente: TUniQuery;
    btnAgregar: TcxButton;
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
    procedure btnAgregarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    result:Integer;
    sexo,edad : String;

  end;

var
  frmPacientes: TfrmPacientes;

implementation

{$R *.dfm}

procedure TfrmPacientes.btnAgregarClick(Sender: TObject);
begin
  if global_frmActivo = 'Paciente' then
   begin
     result := Paciente.FieldByName('IdPaciente').AsInteger;
     sexo   := Paciente.FieldByName('Sexo').AsString;
     edad   := Paciente.FieldByName('Edad').AsString;
     ModalResult := mrOk;
   end;
end;

procedure TfrmPacientes.btnCancelClick(Sender: TObject);
begin
  Paciente.Cancel;
  PanelButton.Visible := False;
  btnNew.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;
end;

procedure TfrmPacientes.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmPacientes.EnterControl(Sender: TObject);
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

procedure TfrmPacientes.SalidaControl(Sender: TObject);
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

procedure TfrmPacientes.btnDeleteClick(Sender: TObject);
var
  zActualiza : tUniquery;
  indice, iGrid    : integer;
  lContinua : boolean;
  SavePlace, SavePlace2 : TBookMark;
begin
   if MessageDlg('¿Desea eliminar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     Paciente.Delete;
     Paciente.ApplyUpdates();
   end;

   Paciente.Refresh;
end;

procedure TfrmPacientes.btnEditClick(Sender: TObject);
begin
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;

  Paciente.Edit;
  PanelButton.Visible := True;
end;

procedure TfrmPacientes.btnNewClick(Sender: TObject);
begin
  PanelButton.Visible := True;
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  Paciente.Append;
  Paciente.FieldValues['FechaRegistro']  := now;


end;

procedure TfrmPacientes.btnSaveClick(Sender: TObject);
begin


  Paciente.Post;
  Paciente.Refresh;
  PanelButton.Visible := False;
  btnNew.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;

end;

procedure TfrmPacientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPacientes.FormShow(Sender: TObject);
begin
  PanelButton.Visible := False;
  AsignarSQL(Paciente, 'master_paciente', pUpdate);
  paciente.Open;


end;

end.
