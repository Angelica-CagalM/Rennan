unit frm_Consulta;

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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, dxSkinscxPCPainter,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxClasses,
  dxLayoutControl, cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxCalendar,
  cxDBEdit, dxLayoutControlAdapters, Data.DB, MemDS, DBAccess, Uni, unitgenerales,
  cxMemo, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompSilverlight, Datasnap.DBClient, Datasnap.DSConnect, global, unitMetodos;

type
  TfrmConsulta = class(TForm)
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnNew: TcxButton;
    cxLeyenda: TcxLabel;
    Panel1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lcbPaciente: TcxDBLookupComboBox;
    lcbEstudio: TcxDBLookupComboBox;
    lcbSolicitante: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    txtSexo: TcxTextEdit;
    txtEdad: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Panel2: TPanel;
    dFecha: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    btnPaciente: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    btnMedico: TcxButton;
    btnEstudio: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    zTipoEstudio: TUniQuery;
    dsTipoEstudio: TDataSource;
    zMedico: TUniQuery;
    dsMedico: TDataSource;
    zPaciente: TUniQuery;
    dsPaciente: TDataSource;
    Panel3: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    mComentarios: TcxDBMemo;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    zConsulta: TUniQuery;
    dsConsulta: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPacienteClick(Sender: TObject);
    procedure btnEstudioClick(Sender: TObject);
    procedure btnMedicoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure lcbPacientePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}
uses
frm_Pacientes, frm_TipoEstudio, frm_Medicos, frm_impresiones;

procedure TfrmConsulta.btnPacienteClick(Sender: TObject);
begin
    if (zConsulta.State = dsInsert ) or (zConsulta.State = dsEdit) then
   begin
     global_frmActivo:='Paciente' ;
//     if not MostrarFormChild('frmPacientes', global_dxBarManagerPrincipal) then
//     begin
       Application.CreateForm(TfrmPacientes, frmPacientes);
       frmPacientes.FormStyle:= fsStayOnTop  ;
       frmPacientes.Height := 500;
       frmPacientes.Width := 800;
       frmPacientes.Show;
       frmPacientes.Caption:='Búsqueda de Pacientes';
       if frmPacientes.ShowModal = mrOk then
       begin
         lcbPaciente.Properties.ListSource := frmPacientes.dsPaciente;
         dsConsulta.DataSet.FieldByName('IdPaciente').AsInteger:= frmPacientes.result;
         txtEdad.Text := frmPacientes.edad;
         txtSexo.Text := frmPacientes.sexo;
       end;
//     end;
   end;

//    global_frmActivo :='Paciente'  ;
//    Application.CreateForm(TfrmPacientes, frmPacientes);
//    frmPacientes.FormStyle:= fsStayOnTop  ;
//    frmPacientes.Height := 500;
//    frmPacientes.Width := 800;
//    frmPacientes.show
end;

procedure TfrmConsulta.btnMedicoClick(Sender: TObject);
begin
//    if (zPaciente.State = dsInsert ) or (zPaciente.State = dsEdit) then
//   begin
//     global_frmActivo:='Medico' ;
//     if not MostrarFormChild('frmPacientes', global_dxBarManagerPrincipal) then
//     begin
//       Application.CreateForm(frmPacientes, frmPacientes);
//       frmMedicos.FormStyle:= fsStayOnTop  ;
//       frmMedicos.Height := 500;
//       frmMedicos.Width := 800;
//       frmPacientes.Show;
//       frmPacientes.Caption:='Búsqueda de Pacientes';
//       if frmPacientes.ShowModal = mrOk then
//       begin
//         lcbPaciente.Properties.ListSource := frmPacientes.dsPaciente;
//         dsConsulta.DataSet.FieldByName('IdPaciente').AsInteger:= frmPacientes.result;
//       end;
//     end;
//   end;

    Application.CreateForm(TfrmMedicos, frmMedicos);
    frmMedicos.FormStyle:= fsStayOnTop  ;
    frmMedicos.Height := 500;
    frmMedicos.Width := 800;
    frmMedicos.show
end;

procedure TfrmConsulta.btnEstudioClick(Sender: TObject);
begin
    global_frmActivo:='TipoEstudio' ;
    Application.CreateForm(TfrmTipoEstudio, frmTipoEstudio);
    frmTipoEstudio.FormStyle:= fsStayOnTop  ;
    frmTipoEstudio.Height := 500;
    frmTipoEstudio.Width := 800;
    frmTipoEstudio.show
end;

procedure TfrmConsulta.cxButton11Click(Sender: TObject);
begin
    Application.CreateForm(TfrmImpresiones, frmImpresiones);
    frmImpresiones.show
end;

procedure TfrmConsulta.cxButton6Click(Sender: TObject);
begin
  lcbPaciente.Enabled := True;
  lcbEstudio.Enabled := True;
  lcbSolicitante.Enabled := True;
  txtEdad.Enabled := True;
  txtSexo.Enabled := True;
  mComentarios.Enabled := True;
  dFecha.Enabled := True;
//  btnPaciente.Enabled := True;
//  btnEstudio.Enabled := True;
//  btnMedico.Enabled := True;
  zConsulta.Append;
  zConsulta.FieldByName('IdPaciente').AsInteger := zPaciente.FieldByName('IdPaciente').AsInteger;
  zConsulta.FieldByName('IdMedico').AsInteger   := zMedico.FieldByName('IdMedico').AsInteger;
  zConsulta.FieldByName('IdEstudio').AsInteger  := zTipoEstudio.FieldByName('IdEstudio').AsInteger;
end;

procedure TfrmConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TfrmConsulta.FormShow(Sender: TObject);
begin
  AsignarSQL(zConsulta, 'master_consulta', pUpdate);
  zConsulta.Open;

  AsignarSQL(zPaciente, 'master_paciente', pUpdate);
  zPaciente.Open;

  AsignarSQL(zTipoEstudio, 'master_estudios', pUpdate);
  zTipoEstudio.Open;

  AsignarSQL(zMedico, 'master_medicos', pUpdate);
  zMedico.Open;
end;

procedure TfrmConsulta.lcbPacientePropertiesChange(Sender: TObject);
begin
    if zPaciente.Locate('IdPaciente', lcbPaciente.EditValue, []) then
    begin
      txtEdad.Text := zPaciente.FieldByName('Edad').AsString;
      txtSexo.Text  := zPaciente.FieldByName('Sexo').AsString;
    end;
end;

end.
