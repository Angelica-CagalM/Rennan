unit Frm_Justificar;

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
  dxSkinXmas2008Blue, cxLabel, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxSplitter, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar
  ,UnitGenerales, MemDS, DBAccess, Uni,frm_connection, cxDBLookupComboBox,
  dxToggleSwitch, Vcl.Menus, cxButtons,UnitRH,global,UFunctionsGHH, frxClass,
  dxLayoutContainer, dxLayoutControl, frm_barraH1, frm_barraH2,
  dxLayoutcxEditAdapters, cxMemo, cxDBEdit, cxSpinEdit, cxTimeEdit, cxCheckBox,
  dxDBToggleSwitch, cxLookupEdit, cxDBLookupEdit;

type
  TFrmJustificar = class(TForm)
    Panel1: TPanel;
    cxLeyenda: TcxLabel;
    PanelCentral: TPanel;
    cxSplitter1: TcxSplitter;
    cxGridJustificar: TcxGrid;
    cxViewDocumentos: TcxGridDBTableView;
    colNombre: TcxGridDBColumn;
    ColNota: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ColAistencia: TcxGridDBColumn;
    ColCantidad: TcxGridDBColumn;
    ColHE: TcxGridDBColumn;
    ColHS: TcxGridDBColumn;
    Label1: TLabel;
    Fechas: TUniQuery;
    dsFechas: TDataSource;
    Justificar: TUniQuery;
    dsJustificar: TDataSource;
    Personal: TUniQuery;
    dsPersonal: TDataSource;
    ColGuardias: TcxGridDBColumn;
    frxAsistencia: TfrxReport;
    PanelDatos: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cbNombre: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cbCant: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTimeEdit1: TcxDBTimeEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBTimeEdit2: TcxDBTimeEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxImgActivo: TdxDBToggleSwitch;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxToggleJustificar: TdxToggleSwitch;
    colFehca: TcxGridDBColumn;
    Mes: TComboBox;
    diasT: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxjustificar: TcxButton;
    panelJustifica: TPanel;
    cbAnio: TcxComboBox;
    cbDias: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxViewDocumentosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxViewDocumentosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxjustificarClick(Sender: TObject);
    procedure frxAsistenciaGetValue(const VarName: string; var Value: Variant);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cbNombrePropertiesChange(Sender: TObject);
    procedure dxToggleSwitch1PropertiesChange(Sender: TObject);
    procedure MesChange(Sender: TObject);
    procedure validarJustificacion;
    procedure cbDiasPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJustificar: TFrmJustificar;
  btnPermisos : String;
  FechaTermino,FechaInicio: TDateTime;
  actual,f:TDateTime;
  dia,dia2,d,anio:String;
  dias : Integer;
implementation

{$R *.dfm}

procedure TFrmJustificar.btnAddClick(Sender: TObject);
begin
  PanelDAtos.Visible:=True;
  cxSplitter1.Visible:= True;
  Justificar.Append;
  Justificar.FieldByName('Asistencia').AsString:='No';
  Justificar.FieldByName('Fecha').AsdateTime:=Now;
end;

procedure TFrmJustificar.btnCancelClick(Sender: TObject);
begin
  PanelDAtos.Visible:=False;
  cxSplitter1.Visible:= False;
  Justificar.Cancel;
  PermisosBotones(frmJustificar,btnPermisos);
end;

procedure TFrmJustificar.btnDeleteClick(Sender: TObject);
begin
  If MessageDlg('Desea eliminar el registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    Justificar.Delete;
   end;
end;

procedure TFrmJustificar.btnEditClick(Sender: TObject);
begin
  PanelDAtos.Visible:=True;
  cxSplitter1.Visible:= True;
  Justificar.Edit;
end;

procedure TFrmJustificar.btnPostClick(Sender: TObject);
begin
  Justificar.Post;
  Justificar.Refresh;
  validarJustificacion;
  btnCancelClick(Sender);
end;

procedure TFrmJustificar.cbDiasPropertiesChange(Sender: TObject);
begin
  if cbDias.Text='Medio Dia' then
  begin
    justificar.FieldByName('Cantidad').AsFloat:=0.5;
  end
  else
  begin
    justificar.FieldByName('Cantidad').AsFloat:=1;
  end;

end;

procedure TFrmJustificar.cbNombrePropertiesChange(Sender: TObject);
begin
  if ((not cbNombre.EditValue = null) and (Justificar.State in [dsInsert, dsEdit])) then
  begin
    dsJustificar.DataSet.FieldByName('IdPersonal').AsInteger:=Personal.FieldByName('IdPersonal').AsInteger;
    dsJustificar.DataSet.FieldByName('Guardia').AsString:= Personal.FieldByName('Guardia').AsString;
  end;
end;

procedure TFrmJustificar.cxjustificarClick(Sender: TObject);
begin
   ReporteJustificar(FechaInicio, FechaTermino, FrmJustificar, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, '');
end;

procedure TFrmJustificar.cxViewDocumentosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Justificar.Edit;
end;

procedure TFrmJustificar.cxViewDocumentosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_RETURN) and (Justificar.State in [dsInsert, dsEdit])then
  begin

  end;
end;

procedure TFrmJustificar.dxToggleSwitch1PropertiesChange(Sender: TObject);
begin
  Justificar.First;
  while  not Justificar.Eof do
  begin
    Justificar.Edit;
    if dxToggleJustificar.Checked=True then
    begin
     justificar.FieldByName('Asistencia').AsString:='Si';
    end
    else
    begin
     justificar.FieldByName('Asistencia').AsString:='No';
    end;
    Justificar.Post;
    Justificar.Next;
  end;
  Justificar.Refresh;
end;

procedure TFrmJustificar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmJustificar.FormShow(Sender: TObject);
begin
 btnPermisos := global_btnPermisos;

 fechas.Active:=False;
 AsignarSQL(Fechas,'justificacion',pUpdate);
 FiltrarDataSet(Fechas,'Activo',['Si']);
 Fechas.Open;

 Personal.Active:=False;
 AsignarSQL(personal,'Personal_justificar',pUpdate);
 FiltrarDataSet(Personal,'Activo',['Si']);
 Personal.Open;

 Justificar.Active:=False;
 Justificar.ParamByName('FechaI').Value:=fechaSQL(FechaInicio);
 Justificar.ParamByName('FechaT').Value:=fechaSQL(FechaTermino);
 Justificar.Open;

 PermisosBotones(frmJustificar,btnPermisos);
end;

procedure TFrmJustificar.frxAsistenciaGetValue(const VarName: string;
  var Value: Variant);
begin
//if CompareText(VarName, 'FECHA_FINAL') = 0 then
//    Value := dFechaTermino.Date;
end;

procedure TFrmJustificar.MesChange(Sender: TObject);
begin
  Actual:=now;
  anio:=cbAnio.EditValue;

  if (mes.Text = 'ENERO') then
  begin
     FechaInicio:=StrToDateTime( '01/01/'+anio );
     FechaTermino:=StrToDateTime( '31/01/'+anio );
     d:='01';
  end;
  if (mes.Text = 'FEBRERO')then
  begin
     FechaInicio:=StrToDateTime( '01/02/'+anio );
     FechaTermino:=StrToDateTime( '28/02/'+anio );
     d:='02';
  end;
  if  (mes.Text = 'MARZO') then
  begin
     FechaInicio:=StrToDateTime( '01/03/'+anio );
     FechaTermino:=StrToDateTime( '31/03/'+anio );
     d:='03';
  end;
  if (mes.Text = 'ABRIL') then
  begin
     FechaInicio:=StrToDateTime( '01/04/'+anio );
     FechaTermino:=StrToDateTime( '30/04/'+anio );
     d:='04';
  end;
  if (mes.Text = 'MAYO') then
  begin
     FechaInicio:=StrToDateTime( '01/05/'+anio );
     FechaTermino:=StrToDateTime( '31/05/'+anio );
     d:='05';
  end;
  if (mes.Text = 'JUNIO') then
  begin
     FechaInicio:=StrToDateTime( '01/06/'+anio );
     FechaTermino:=StrToDateTime( '30/06/'+anio );
     d:='06';
  end;
  if (mes.Text = 'JULIO') then
  begin
     FechaInicio:=StrToDateTime( '01/07/'+anio );
     FechaTermino:=StrToDateTime( '31/07/'+anio );
     d:='07';
  end;
  if (mes.Text = 'AGOSTO') then
  begin
     FechaInicio:=StrToDateTime( '01/08/'+anio );
     FechaTermino:=StrToDateTime( '31/08/'+anio );
     d:='08';
  end;
  if (mes.Text = 'SEPTIEMBRE') then
  begin
     FechaInicio:=StrToDateTime( '01/09/'+anio );
     FechaTermino:=StrToDateTime( '30/09/'+anio );
     d:='09';
  end;
  if (mes.Text = 'OCTUBRE') then
  begin
     FechaInicio:=StrToDateTime( '01/10/'+anio );
     FechaTermino:=StrToDateTime( '31/10/'+anio );
     d:='10';
  end;
  if (mes.Text = 'NOVIEMBRE') then
  begin
     FechaInicio:=StrToDateTime( '01/11/'+anio );
     FechaTermino:=StrToDateTime( '30/11/'+anio );
     d:='11';
  end;
  if (mes.Text = 'DICIEMBRE') then
  begin
     FechaInicio:=StrToDateTime( '01/12/'+anio );
     FechaTermino:=StrToDateTime( '31/12/'+anio );
     d:='12';
  end;

 dia:=FormatDateTime('yyyy/mm/dd',actual);
 F:=StrToDateTime( '10/'+d+'/'+anio );
 dia2:=FormatDateTime('dd',actual);

 validarJustificacion;

 Justificar.Active:=False;
 Justificar.ParamByName('FechaI').Value:=fechaSQL(FechaInicio);
 Justificar.ParamByName('FechaT').Value:=fechaSQL(FechaTermino);
 Justificar.Open;

end;

procedure TFrmJustificar.validarJustificacion;
begin
 if actual > f then
 begin
  dxToggleJustificar.Enabled:=False;
  diasT.Caption:='Termino tiempo para justificar'
 end
 else
 begin
   dias:=StrToInt(dia2);
   dias:=dias-10;
   dia2:=IntToStr(dias);
   dxToggleJustificar.Enabled:=True;
   diasT.Caption:='Quedan '+dia2+' dias para justificar'
 end;
end;

end.
