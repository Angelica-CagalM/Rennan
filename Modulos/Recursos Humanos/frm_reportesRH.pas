unit frm_reportesRH;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, global, db, StdCtrls, unitGenerales,
  Mask, DBCtrls, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones,UnitValidaTexto, ShellApi,
  unitactivapop,StrUtils, UnitValidacion, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExportaExcel, dxBarBuiltInMenu, cxPC, cxButtons,masUtilerias,
  cxPCdxBarPopupMenu, utilerias, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxLayoutcxEditAdapters, frm_barraH2, frm_barraH1, MemDS, DBAccess, Uni,
  dxLayoutContainer, cxDBEdit, cxGroupBox, dxLayoutControl, cxSplitter, cxLabel,
  dxLayoutControlAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  cxCalendar, frxClass, cxGridChartView, cxGridDBChartView, cxImageComboBox,
  Frm_VerPDF, System.ImageList, Vcl.ImgList, UnitMetodos,
  dxSkinsdxNavBarPainter, dxSkinsdxNavBarAccordionViewPainter,
  dxNavBarGroupItems, dxNavBarCollns, dxNavBarBase, dxNavBar, frxDBSet;
type
  TfrmReportesRH = class(TForm)
    PopupPrincipal: TPopupMenu;
    N2: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    frxReport1: TfrxReport;
    PanelPrincipal: TPanel;
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    PanelBottom: TPanel;
    PanelOpc: TPanel;
    dxOpciones: TdxNavBar;
    dxReportes: TdxNavBarGroup;
    dxCartaResponsiva: TdxNavBarItem;
    dxOpcionesSeparator1: TdxNavBarSeparator;
    PanelCentral: TPanel;
    PanelDatos: TPanel;
    cxGridEmpleadosDBTableView1: TcxGridDBTableView;
    cxGridEmpleadosLevel1: TcxGridLevel;
    cxGridEmpleados: TcxGrid;
    frmBarraH21: TfrmBarraH2;
    cxGridEmpleadosColumn1: TcxGridDBColumn;
    cxGridEmpleadosColumn2: TcxGridDBColumn;
    cxGridEmpleadosColumn3: TcxGridDBColumn;
    cxGridEmpleadosColumn0: TcxGridDBColumn;
    cxGridEmpleadosColumn4: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxEmpresa: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxGridEmpleadosColumn5: TcxGridDBColumn;
    zEmpleados: TUniQuery;
    ds_empleados: TDataSource;
    frxDataSet: TfrxDBDataset;
    reporte_filtro: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportesRH : TfrmReportesRH;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco,  Archivo   : string;
  bCuentasBanco  : boolean;
  titulo,titulo2 : string;
  lNoGuardarDocto :boolean;
  btnPermisos     :String;

implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas,
    frm_catalogos_almacen, frm_Catalogos_rh_tipos, frm_proveedores;
{$R *.dfm}

  procedure TfrmReportesRH.EnterControl(Sender: TObject);
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

  procedure TfrmReportesRH.SalidaControl(Sender: TObject);
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

  procedure TfrmReportesRH.FormShow(Sender: TObject);
  begin
    btnPermisos := global_btnPermisos;
      try
        zEmpleados.Active:=False;
        AsignarSQL(zEmpleados,'reportesRH_carta',pUpdate);
        FiltrarDataSet(zEmpleados,'Id',[-1]);
        zEmpleados.Open;
        PermisosBotones(frmReportesRH,btnPermisos);
      except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Información a Reportar', 'Al iniciar el formulario', 0);
      end;
   end;
  end;

  procedure TfrmReportesRH.FormClose(Sender: TObject;
    var Action: TCloseAction);
  begin
    action := cafree ;
  end;

  procedure TfrmReportesRH.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Key = VK_RETURN then
    begin
      Perform( CM_DIALOGKEY, VK_TAB, 0 );
      Key := 0;
    end;
  end;

end.
