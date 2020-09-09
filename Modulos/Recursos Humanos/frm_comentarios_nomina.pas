unit frm_comentarios_nomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, unittbotonespermisos, UnitValidaTexto, unitActivaPop,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxContainer, cxDBEdit, masUtilerias, cxSplitter, cxLabel,
  cxDBLookupComboBox, cxButtons, cxCheckBox, unitGenerales,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit,
  cxTimeEdit, cxLookupEdit, cxDBLookupEdit, cxMemo, dxBarBuiltInMenu,
  dxNavBarOfficeNavigationBar, dxSkinsdxNavBarPainter,
  dxSkinsdxNavBarAccordionViewPainter, dxNavBar, UnitRH ;

type
  TfrmComentariosNomina = class(TForm)
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    grid_Personal: TcxGrid;
    Grid_cuadrilla: TcxGridDBTableView;
    Grid_cuadrillaColumn1: TcxGridDBColumn;
    cxViewCuadrilla: TcxGridLevel;
    Pegar1: TMenuItem;
    Copiar1: TMenuItem;
    ds_empleados: TDataSource;
    Panel1: TPanel;
    cxLabelTitulo: TcxLabel;
    Grid_cuadrillaColumn2: TcxGridDBColumn;
    Grid_cuadrillaColumn3: TcxGridDBColumn;
    Grid_cuadrillaColumn4: TcxGridDBColumn;
    empleados: TUniQuery;
    cxTexGuardia: TcxTextEdit;
    Grid_cuadrillaColumn5: TcxGridDBColumn;
    Panel3: TPanel;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    reporte: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Grid_cuadrillaColumn5PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComentariosNomina : TfrmComentariosNomina;
  sOldId           : string;
  sOpcion          : string;

  implementation
 uses
    frm_noil, Frm_PreNomina;
{$R *.dfm}


procedure TfrmComentariosNomina.cxButton1Click(Sender: TObject);
begin
  reporte.Active:=False;
  AsignarSQL(reporte,'comentarios_prenomina',pUpdate);
  FiltrarDataSet(reporte,'Personal,Nomina',[-1,FrmPreNomina.lcbNomina.EditValue]);
  reporte.Open;
  ReporteComentariosNomina(reporte,frmComentariosNomina,frxReport1.OnGetValue,nil);
end;

procedure TfrmComentariosNomina.FormShow(Sender: TObject);
begin

  empleados.Active:=False;
  AsignarSQL(empleados,'nom_nominapersonalAsignado',pUpdate);
  FiltrarDataSet(empleados,'IdNomina', [FrmPreNomina.lcbNomina.EditValue]);
  empleados.Open;

  Grid_cuadrilla.DataController.Groups.FullExpand;
end;

procedure TfrmComentariosNomina.frmBarra1btnExitClick(Sender: TObject);
begin
   Close
end;

procedure TfrmComentariosNomina.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'FECHA_INICIO') = 0 then
     Value := Now;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
     Value := Now;
end;

procedure TfrmComentariosNomina.Grid_cuadrillaColumn5PropertiesEditValueChanged(
  Sender: TObject);
begin
  empleados.Refresh;
end;

procedure TfrmComentariosNomina.Refresh1Click(Sender: TObject);
begin
  empleados.Refresh;
end;

end.
