unit frm_firmantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,
  DBGrids, ComCtrls, global, DB, Menus,  ExtCtrls,
  ZDataset, ZAbstractRODataset, ZAbstractDataset, rxToolEdit,
  UnitExcepciones, UnitValidaTexto,
  unitactivapop,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Silver, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinFoggy, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxSplitter, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxCore,
  cxDateUtils, cxCalendar, cxDBEdit, unitgenerales, MemDS, DBAccess, Uni;
  function IsDate(ADate: string): Boolean;
  type
  TfrmFirmas = class(TForm)
    frmBarra1: TfrmBarra;
    ds_ordenesdetrabajo: TDataSource;
    dsFirmas: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    pgControl: TPageControl;
    TabDependenca: TTabSheet;
    TabContratista: TTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    tsPuesto6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    tsPuesto3: TDBEdit;
    tsPuesto4: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    tsPuesto8: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    TabRequisiciones: TTabSheet;
    TabOrdenesCompra: TTabSheet;
    TabEntradasSalidas: TTabSheet;
    Label21: TLabel;
    tsPuesto11: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    tsPuesto12: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    tsPuesto13: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    tsPuesto14: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    tsPuesto15: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    tsPuesto16: TDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    tsPuesto17: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    tsPuesto18: TDBEdit;
    Label38: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    TabEstimaciones: TTabSheet;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    tsPuesto19: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    tsPuesto20: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    tsPuesto21: TDBEdit;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    tsPuesto22: TDBEdit;
    ds_turnos: TDataSource;
    ts1: TTabSheet;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_Firmantes: TcxGrid;
    tcxdIdFecha: TcxGridDBColumn;
    tcxsIdTurno: TcxGridDBColumn;
    tcxFirmante1: TcxGridDBColumn;
    tcxFirmante2: TcxGridDBColumn;
    tcxFirmante3: TcxGridDBColumn;
    tcxFirmante4: TcxGridDBColumn;
    tcxFirmante5: TcxGridDBColumn;
    tcxFirmante10: TcxGridDBColumn;
    dbedtsPuesto30: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    tcxFirmante30: TcxGridDBColumn;
    Label62: TLabel;
    Label4: TLabel;
    Label39: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label40: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    cbActualizarOrdenes: TCheckBox;
    Label61: TLabel;
    cmbTurnos: TDBLookupComboBox;
    cxSplitter1: TcxSplitter;
    tdIdFecha: TcxDateEdit;
    tsPuesto1: TcxDBTextEdit;
    tsPuesto2: TcxDBTextEdit;
    tsPuesto5: TcxDBTextEdit;
    tsPuesto9: TcxDBTextEdit;
    tsPuesto10: TcxDBTextEdit;
    tsPuesto7: TcxDBTextEdit;
    tsCapitan: TcxDBTextEdit;
    cxgrdbtblvwGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column5: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    ordenesdetrabajo: TUniQuery;
    Firmas: TUniQuery;
    ReporteDiario: TUniQuery;
    QryTurnos: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_firmantesEnter(Sender: TObject);
    procedure grid_firmantesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_firmantesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grid_firmantesCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma1KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma2KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma3KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma4KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma5KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma6KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma7KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma8KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma9KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma10KeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsPuesto1KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma1Enter(Sender: TObject);
    procedure tsFirma1Exit(Sender: TObject);
    procedure tsPuesto2KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma2Enter(Sender: TObject);
    procedure tsFirma2Exit(Sender: TObject);
    procedure tsPuesto3KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma3Enter(Sender: TObject);
    procedure tsFirma3Exit(Sender: TObject);
    procedure tsPuesto4KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma4Enter(Sender: TObject);
    procedure tsFirma4Exit(Sender: TObject);
    procedure tsPuesto5KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma5Enter(Sender: TObject);
    procedure tsFirma5Exit(Sender: TObject);
    procedure tsPuesto6KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma6Enter(Sender: TObject);
    procedure tsFirma6Exit(Sender: TObject);
    procedure tsPuesto7KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma7Enter(Sender: TObject);
    procedure tsFirma7Exit(Sender: TObject);
    procedure tsPuesto8KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma8Enter(Sender: TObject);
    procedure tsFirma8Exit(Sender: TObject);
    procedure tsPuesto9KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma9Enter(Sender: TObject);
    procedure tsFirma9Exit(Sender: TObject);
    procedure tsPuesto10KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma10Enter(Sender: TObject);
    procedure tsFirma10Exit(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure FirmasAfterPost(DataSet: TDataSet);
    procedure tsPuesto11KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma11KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto12KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto13KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma12KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma13KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto14KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto15KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto16KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma14KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma15KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma16KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto17KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto18KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma17KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma18KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma11Enter(Sender: TObject);
    procedure tsFirma12Enter(Sender: TObject);
    procedure tsFirma13Enter(Sender: TObject);
    procedure tsFirma14Enter(Sender: TObject);
    procedure tsFirma15Enter(Sender: TObject);
    procedure tsFirma16Enter(Sender: TObject);
    procedure tsFirma17Enter(Sender: TObject);
    procedure tsFirma18Enter(Sender: TObject);
    procedure tsFirma11Exit(Sender: TObject);
    procedure tsFirma12Exit(Sender: TObject);
    procedure tsFirma13Exit(Sender: TObject);
    procedure tsFirma14Exit(Sender: TObject);
    procedure tsFirma15Exit(Sender: TObject);
    procedure tsFirma16Exit(Sender: TObject);
    procedure tsFirma18Exit(Sender: TObject);
    procedure tsFirma17Exit(Sender: TObject);
    procedure tsPuesto19KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma19KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto20KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma20KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto21KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma21KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto22KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma22KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma20Enter(Sender: TObject);
    procedure tsFirma20Exit(Sender: TObject);
    procedure tsFirma21Exit(Sender: TObject);
    procedure tsFirma22Exit(Sender: TObject);
    procedure tsFirma19Enter(Sender: TObject);
    procedure tsFirma21Enter(Sender: TObject);
    procedure tsFirma22Enter(Sender: TObject);
    procedure tsFirma19Exit(Sender: TObject);
    procedure grid_firmantesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_firmantesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_firmantesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure tsFirma7ClickBtn(Sender: TObject);
  private
//    procedure TraerNombre(Comp: tdbadveditbtn);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFirmas: TfrmFirmas;
  Opcion : String ;
  Registro_Actual : String ;
  banderaagregar:boolean;
  btnPermisos : String;
  
implementation

{$R *.dfm}

procedure TfrmFirmas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 guardar_leer_grid(cxgrdbtblvwGrid1DBTableView1,frmFirmas,1);
  firmas.Cancel;
  action := cafree;
end;

procedure TfrmFirmas.grid_firmantesEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmFirmas.grid_firmantesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmFirmas.grid_firmantesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;


procedure TfrmFirmas.grid_firmantesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmFirmas.grid_firmantesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmFirmas.grid_firmantesTitleClick(Column: TColumn);
begin
// UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmFirmas.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
   try
    OpcButton := '' ;
    frmBarra1.btnCancel.Click ;
    pgcontrol.ActivePageIndex := 0 ;
    TabContratista.Caption := 'Firmantes por parte de : ' + connection.uconfiguracion.FieldValues['sNombre'] ;
    OrdenesdeTrabajo.Active := False ;

    If global_orden = '' then
    begin
        param_global_contrato := global_contrato;
        global_turno_reporte  := global_turno;
    end;

    OrdenesdeTrabajo.Active := False;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value    := global_Contrato ;
    OrdenesdeTrabajo.Open ;

    If global_orden <> '' Then
    Begin
        Firmas.Active := False ;
        Firmas.Params.ParamByName('Contrato').DataType := ftString ;
        Firmas.Params.ParamByName('Contrato').Value   := param_Global_Contrato ;
        Firmas.Open ;
    End
    Else
    Begin
        Firmas.Active := False ;
        Firmas.Params.ParamByName('Contrato').DataType := ftString ;
        Firmas.Params.ParamByName('Contrato').Value := param_Global_Contrato ;
        Firmas.Open ;
    End ;

    QryTurnos.Active := False;
    Qryturnos.ParamByName('Contrato').AsString := param_global_contrato;
    QryTurnos.Open;

    cmbTurnos.KeyValue := global_turno_reporte;
    Grid_Firmantes.SetFocus;
    PermisosBotones(frmFirmas,btnPermisos);
    frmBarra1.btnPrinter.Enabled := False;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al iniciar registro', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
 guardar_leer_grid(cxgrdbtblvwGrid1DBTableView1,frmFirmas,0);

end;

procedure TfrmFirmas.grid_firmantesCellClick(Column: TColumn);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmFirmas.frmBarra1btnAddClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  banderaAgregar:=true;

  try
    If ordenesdetrabajo.RecordCount  > 0 Then
    Begin
      frmBarra1.btnAddClick(Sender);
      Insertar1.Enabled  := False;
      Editar1.Enabled    := False;
      Registrar1.Enabled :=  True;
      Can1.Enabled       :=  True;
      Eliminar1.Enabled  := False;
      Refresh1.Enabled   := False;
      Salir1.Enabled     := False;

      connection.QryUBusca.Active := False ;
      connection.QryUBusca.SQL.Clear ;
      connection.QryUBusca.SQL.Add('Select * from firmas where sContrato = :contrato Order By dIdFecha Desc') ;
      connection.QryUBusca.Params.ParamByName('Contrato').DataType :=           ftString ;
      connection.QryUBusca.Params.ParamByName('Contrato').Value := param_global_contrato ;
      connection.QryUBusca.Open ;

      Firmas.Append ;
      If connection.QryUBusca.RecordCount > 0 Then
      Begin
        firmas.FieldValues [ 'sContrato' ]  := Global_Contrato ;
        Firmas.FieldValues [ 'dIdFecha' ]   := connection.QryUBusca.FieldValues [ 'dIdFecha' ] ;
        Firmas.FieldValues [ 'sIdTurno' ]   := global_turno_reporte ;
        Firmas.FieldValues [ 'sNumeroOrden' ]   := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString ;
        tdIdFecha.Date := connection.QryUBusca.Fieldbyname('didfecha').AsDateTime ;
        Firmas.FieldValues [ 'sFirmante1' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante1' ] ;
        Firmas.FieldValues [ 'sFirmante2' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante2' ] ;
        Firmas.FieldValues [ 'sFirmante3' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante3' ] ;
        Firmas.FieldValues [ 'sFirmante4' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante4' ] ;
        Firmas.FieldValues [ 'sFirmante5' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante5' ] ;
        Firmas.FieldValues [ 'sFirmante6' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante6' ] ;
        Firmas.FieldValues [ 'sFirmante7' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante7' ] ;
        Firmas.FieldValues [ 'sFirmante8' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante8' ] ;
        Firmas.FieldValues [ 'sFirmante9' ]  :=  connection.QryUBusca.FieldValues [ 'sFirmante9' ] ;
        Firmas.FieldValues [ 'sFirmante10' ] := connection.QryUBusca.FieldValues [ 'sFirmante10' ] ;
        Firmas.FieldValues [ 'sFirmante11' ] := connection.QryUBusca.FieldValues [ 'sFirmante11' ] ;
        Firmas.FieldValues [ 'sFirmante12' ] := connection.QryUBusca.FieldValues [ 'sFirmante12' ] ;
        Firmas.FieldValues [ 'sFirmante13' ] := connection.QryUBusca.FieldValues [ 'sFirmante13' ] ;
        Firmas.FieldValues [ 'sFirmante14' ] := connection.QryUBusca.FieldValues [ 'sFirmante14' ] ;
        Firmas.FieldValues [ 'sFirmante15' ] := connection.QryUBusca.FieldValues [ 'sFirmante15' ] ;
        Firmas.FieldValues [ 'sFirmante16' ] := connection.QryUBusca.FieldValues [ 'sFirmante16' ] ;
        Firmas.FieldValues [ 'sFirmante17' ] := connection.QryUBusca.FieldValues [ 'sFirmante17' ] ;
        Firmas.FieldValues [ 'sFirmante18' ] := connection.QryUBusca.FieldValues [ 'sFirmante18' ] ;
        Firmas.FieldValues [ 'sFirmante19' ] := connection.QryUBusca.FieldValues [ 'sFirmante19' ] ;
        Firmas.FieldValues [ 'sFirmante20' ] := connection.QryUBusca.FieldValues [ 'sFirmante20' ] ;
        Firmas.FieldValues [ 'sFirmante21' ] := connection.QryUBusca.FieldValues [ 'sFirmante21' ] ;
        Firmas.FieldValues [ 'sFirmante22' ] := connection.QryUBusca.FieldValues [ 'sFirmante22' ] ;
        Firmas.FieldValues [ 'sFirmante31' ] := connection.QryUBusca.FieldValues [ 'sFirmante31' ] ;
        Firmas.FieldValues [ 'sPuesto1' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto1' ] ;
        Firmas.FieldValues [ 'sPuesto2' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto2' ] ;
        Firmas.FieldValues [ 'sPuesto3' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto3' ] ;
        Firmas.FieldValues [ 'sPuesto4' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto4' ] ;
        Firmas.FieldValues [ 'sPuesto5' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto5' ] ;
        Firmas.FieldValues [ 'sPuesto6' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto6' ] ;
        Firmas.FieldValues [ 'sPuesto7' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto7' ] ;
        Firmas.FieldValues [ 'sPuesto8' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto8' ] ;
        Firmas.FieldValues [ 'sPuesto9' ]    :=    connection.QryUBusca.FieldValues [ 'sPuesto9' ] ;
        Firmas.FieldValues [ 'sPuesto10' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto10' ] ;
        Firmas.FieldValues [ 'sPuesto11' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto11' ] ;
        Firmas.FieldValues [ 'sPuesto12' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto12' ] ;
        Firmas.FieldValues [ 'sPuesto13' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto13' ] ;
        Firmas.FieldValues [ 'sPuesto14' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto14' ] ;
        Firmas.FieldValues [ 'sPuesto15' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto15' ] ;
        Firmas.FieldValues [ 'sPuesto16' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto16' ] ;
        Firmas.FieldValues [ 'sPuesto17' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto17' ] ;
        Firmas.FieldValues [ 'sPuesto18' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto18' ] ;
        Firmas.FieldValues [ 'sPuesto19' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto19' ] ;
        Firmas.FieldValues [ 'sPuesto20' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto20' ] ;
        Firmas.FieldValues [ 'sPuesto21' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto21' ] ;
        Firmas.FieldValues [ 'sPuesto22' ]   :=   connection.QryUBusca.FieldValues [ 'sPuesto22' ] ;
      End
      Else
      Begin
        tdIdFecha.Date := Date ;
        Firmas.FieldValues ['dIdFecha'] := Date;
        Firmas.FieldValues [ 'sFirmante1' ]  := '*';
        Firmas.FieldValues [ 'sFirmante2' ]  := '*';
        Firmas.FieldValues [ 'sFirmante3' ]  := '*';
        Firmas.FieldValues [ 'sFirmante4' ]  := '*';
        Firmas.FieldValues [ 'sFirmante5' ]  := '*';
        Firmas.FieldValues [ 'sFirmante6' ]  := '*';
        Firmas.FieldValues [ 'sFirmante7' ]  := '*';
        Firmas.FieldValues [ 'sFirmante8' ]  := '*';
        Firmas.FieldValues [ 'sFirmante9' ]  := '*';
        Firmas.FieldValues [ 'sFirmante10' ] := '*';
        Firmas.FieldValues [ 'sFirmante11' ] := '*';
        Firmas.FieldValues [ 'sFirmante12' ] := '*';
        Firmas.FieldValues [ 'sFirmante13' ] := '*';
        Firmas.FieldValues [ 'sFirmante14' ] := '*';
        Firmas.FieldValues [ 'sFirmante15' ] := '*';
        Firmas.FieldValues [ 'sFirmante16' ] := '*';
        Firmas.FieldValues [ 'sFirmante17' ] := '*';
        Firmas.FieldValues [ 'sFirmante18' ] := '*';
        Firmas.FieldValues [ 'sFirmante19' ] := '*';
        Firmas.FieldValues [ 'sFirmante20' ] := '*';
        Firmas.FieldValues [ 'sFirmante21' ] := '*';
        Firmas.FieldValues [ 'sFirmante22' ] := '*';
        Firmas.FieldValues [ 'sFirmante31' ] := '*';
        Firmas.FieldValues [ 'sPuesto1' ]    := '*';
        Firmas.FieldValues [ 'sPuesto2' ]    := '*';
        Firmas.FieldValues [ 'sPuesto3' ]    := '*';
        Firmas.FieldValues [ 'sPuesto4' ]    := '*';
        Firmas.FieldValues [ 'sPuesto5' ]    := '*';
        Firmas.FieldValues [ 'sPuesto6' ]    := '*';
        Firmas.FieldValues [ 'sPuesto7' ]    := '*';
        Firmas.FieldValues [ 'sPuesto8' ]    := '*';
        Firmas.FieldValues [ 'sPuesto9' ]    := '*';
        Firmas.FieldValues [ 'sPuesto10' ]   := '*';
        Firmas.FieldValues [ 'sPuesto11' ]   := '*';
        Firmas.FieldValues [ 'sPuesto12' ]   := '*';
        Firmas.FieldValues [ 'sPuesto13' ]   := '*';
        Firmas.FieldValues [ 'sPuesto14' ]   := '*';
        Firmas.FieldValues [ 'sPuesto15' ]   := '*';
        Firmas.FieldValues [ 'sPuesto16' ]   := '*';
        Firmas.FieldValues [ 'sPuesto17' ]   := '*';
        Firmas.FieldValues [ 'sPuesto18' ]   := '*';
        Firmas.FieldValues [ 'sPuesto19' ]   := '*';
        Firmas.FieldValues [ 'sPuesto20' ]   := '*';
        Firmas.FieldValues [ 'sPuesto21' ]   := '*';
        Firmas.FieldValues [ 'sPuesto22' ]   := '*';
      End;
      pgControl.ActivePageIndex := 0;
      tdIdFecha.SetFocus;
    End;

    frmBarra1.btnPrinter.Enabled := False;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al agregar registro', 0);
    end;
  end;
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmFirmas.frmBarra1btnEditClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
  try
    banderaAgregar:=false;
    grid_firmantes.Enabled:=false;

    lValido := True ;
    If lValido Then
    Begin
      frmBarra1.btnEditClick(Sender);
      Insertar1.Enabled  := False;
      Editar1.Enabled    := False;
      Registrar1.Enabled :=  True;
      Can1.Enabled       :=  True;
      Eliminar1.Enabled  := False;
      Refresh1.Enabled   := False;
      Salir1.Enabled     := False;
      try
        tdIdFecha.Date:=StrToDateTime( '01/01/2018 00:00:00' );
        Firmas.Edit;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Firmantes', 'Al editar registro', 0);
          frmbarra1.btnCancel.Click ;
        end;
      end ;
      tdIdFecha.SetFocus
    End;
    frmBarra1.btnPrinter.Enabled := False;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al editar registro', 0);
    end;
  end;
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmFirmas.frmBarra1btnPostClick(Sender: TObject);
Var
    lValido : Boolean ;
    nombres, cadenas: TStringList;
    QryFirmas : TZReadOnlyQuery;
begin
  QryFirmas := TZReadOnlyQuery.Create(self);
  QryFirmas.Connection := connection.zConnection;

  grid_firmantes.Enabled:=true;
  try
    lValido := True;
    If lValido Then
    Begin
      if Firmas.State = dsEdit then
         Firmas.FieldValues [ 'dIdFecha' ]   := tdIdFecha.Date;

      firmas.Post;

      Insertar1.Enabled  :=  True;
      Editar1.Enabled    :=  True;
      Registrar1.Enabled := False;
      Can1.Enabled       := False;
      Eliminar1.Enabled  :=  True;
      Refresh1.Enabled   :=  True;
      Salir1.Enabled     :=  True;
      frmBarra1.btnCancelClick(Sender);
    End;
    desactivapop(popupprincipal);
    PermisosBotones(frmFirmas,btnPermisos);
    frmBarra1.btnPrinter.Enabled := False;
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al salvar registro', 0);
      frmbarra1.btnCancel.Click;
      banderaagregar:=false;
    end;
  end;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmFirmas.frmBarra1btnCancelClick(Sender: TObject);
begin
  try
    grid_firmantes.Enabled:=true;
    frmBarra1.btnCancelClick(Sender);
    Insertar1.Enabled  :=  True;
    Editar1.Enabled    :=  True;
    Registrar1.Enabled := False;
    Can1.Enabled       := False;
    Eliminar1.Enabled  :=  True;
    Refresh1.Enabled   :=  True;
    Salir1.Enabled     :=  True;
    firmas.Cancel;
    desactivapop(popupprincipal);
    PermisosBotones(frmFirmas,btnPermisos);
    frmBarra1.btnPrinter.Enabled :=   False;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al cancelar', 0);
    end;
  end;
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmFirmas.frmBarra1btnDeleteClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
  try

    lValido := True;
    If lValido Then
    Begin
      If Firmas.RecordCount  > 0 then
        If MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Firmas.Delete;
        end
    End
  except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al eliminar registro', 0);
  end;
  end;
end;

procedure TfrmFirmas.frmBarra1btnRefreshClick(Sender: TObject);
begin
  try
    Firmas.active := False;
    Firmas.Open;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al actualizar grid', 0);
    end;
  end;
end;

procedure TfrmFirmas.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled  :=  True;
  Editar1.Enabled    :=  True;
  Registrar1.Enabled := False;
  Can1.Enabled       := False;
  Eliminar1.Enabled  :=  True;
  Refresh1.Enabled   :=  True;
  Salir1.Enabled     :=  True;
  close
end;
function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;
procedure TfrmFirmas.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
  Begin
     tsPuesto1.SetFocus
  End
end;

procedure TfrmFirmas.tsFirma1KeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//    tsFirma7.SetFocus
end;

procedure TfrmFirmas.tsFirma2KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto3.SetFocus
end;

procedure TfrmFirmas.tsFirma3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto4.SetFocus
end;

procedure TfrmFirmas.tsFirma4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto5.SetFocus
end;

procedure TfrmFirmas.tsFirma5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto6.SetFocus
end;

procedure TfrmFirmas.tsFirma6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto8.SetFocus
end;

procedure TfrmFirmas.tsFirma7KeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//    tsFirma9.SetFocus
end;

procedure TfrmFirmas.tsFirma8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto2.SetFocus
end;

procedure TfrmFirmas.tsFirma9KeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//    tsfirma10.SetFocus
end;

procedure TfrmFirmas.tsFirma10KeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//    tsFirma1.SetFocus
end;

procedure TfrmFirmas.tsFirma11Enter(Sender: TObject);
begin
//    tsFirma11.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma11Exit(Sender: TObject);
begin
//    tsFirma11.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma11KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto12.SetFocus
end;

procedure TfrmFirmas.tsFirma12Enter(Sender: TObject);
begin
//    tsFirma12.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma12Exit(Sender: TObject);
begin
//    tsFirma12.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma12KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto13.SetFocus
end;

procedure TfrmFirmas.tsFirma13Enter(Sender: TObject);
begin
//    tsFirma13.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma13Exit(Sender: TObject);
begin
//    tsFirma13.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma13KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto11.SetFocus
end;

procedure TfrmFirmas.tsFirma14Enter(Sender: TObject);
begin
//    tsFirma14.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma14Exit(Sender: TObject);
begin
//    tsFirma14.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma14KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto15.SetFocus
end;

procedure TfrmFirmas.tsFirma15Enter(Sender: TObject);
begin
//    tsFirma15.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma15Exit(Sender: TObject);
begin
//    tsFirma15.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma15KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto16.SetFocus
end;

procedure TfrmFirmas.tsFirma16Enter(Sender: TObject);
begin
//    tsFirma16.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma16Exit(Sender: TObject);
begin
//    tsFirma16.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma16KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto14.SetFocus
end;

procedure TfrmFirmas.tsFirma17Enter(Sender: TObject);
begin
//    tsFirma17.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma17Exit(Sender: TObject);
begin
//    tsFirma17.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto18.SetFocus
end;

procedure TfrmFirmas.tsFirma18Enter(Sender: TObject);
begin
//    tsFirma18.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma18Exit(Sender: TObject);
begin
//    tsFirma18.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto17.SetFocus
end;

procedure TfrmFirmas.tsFirma19Enter(Sender: TObject);
begin
//    tsFirma19.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma19Exit(Sender: TObject);
begin
//    tsFirma19.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto20.SetFocus
end;

procedure TfrmFirmas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmFirmas.Paste1Click(Sender: TObject);
begin
try
//UtGrid.AddRowsFromClip;
except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al pegar registro', 0);
  end;
end;
end;

procedure TfrmFirmas.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure TfrmFirmas.tsFirma7ClickBtn(Sender: TObject);
begin
//  TraerNombre(tdbadveditbtn(Sender));
end;

//procedure TfrmFirmas.TraerNombre(Comp:tdbadveditbtn);
//begin
//
//end;

procedure TfrmFirmas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmFirmas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmFirmas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmFirmas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmFirmas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmFirmas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmFirmas.tsPuesto1KeyPress(Sender: TObject; var Key: Char);
begin
//  If Key = #13 Then
//      tsFirma1.SetFocus
end;

procedure TfrmFirmas.tsFirma1Enter(Sender: TObject);
begin
//    tsFirma1.Color := global_color_entradaERP
end;

procedure TfrmFirmas.tsFirma1Exit(Sender: TObject);
begin
//    tsFirma1.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto20KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma20.SetFocus
end;

procedure TfrmFirmas.tsPuesto21KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma21.SetFocus
end;

procedure TfrmFirmas.tsPuesto22KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma22.SetFocus
end;

procedure TfrmFirmas.tsPuesto2KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma2.SetFocus
end;

procedure TfrmFirmas.tsFirma20Enter(Sender: TObject);
begin
//    tsFirma20.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma20Exit(Sender: TObject);
begin
//    tsFirma20.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma20KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsPuesto21.SetFocus
end;

procedure TfrmFirmas.tsFirma21Enter(Sender: TObject);
begin
//    tsFirma21.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma21Exit(Sender: TObject);
begin
//    tsFirma21.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma21KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsPuesto22.SetFocus
end;

procedure TfrmFirmas.tsFirma22Enter(Sender: TObject);
begin
//    tsFirma22.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma22Exit(Sender: TObject);
begin
//    tsFirma22.Color := global_color_salida
end;

procedure TfrmFirmas.tsFirma22KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsPuesto19.SetFocus
end;

procedure TfrmFirmas.tsFirma2Enter(Sender: TObject);
begin
//    tsFirma2.Color := global_color_entradaERP
end;

procedure TfrmFirmas.tsFirma2Exit(Sender: TObject);
begin
//    tsFirma2.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto3KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma3.SetFocus
end;

procedure TfrmFirmas.tsFirma3Enter(Sender: TObject);
begin
//    tsFirma3.Color := global_color_Entrada
end;

procedure TfrmFirmas.tsFirma3Exit(Sender: TObject);
begin
//    tsFirma3.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto4KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma4.SetFocus
end;

procedure TfrmFirmas.tsFirma4Enter(Sender: TObject);
begin
//    tsFirma4.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma4Exit(Sender: TObject);
begin
//    tsFirma4.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto5KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma5.SetFocus
end;

procedure TfrmFirmas.tsFirma5Enter(Sender: TObject);
begin
//    tsFirma5.Color := global_color_entradaERP
end;

procedure TfrmFirmas.tsFirma5Exit(Sender: TObject);
begin
//    tsFirma5.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto6KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma6.SetFocus
end;

procedure TfrmFirmas.tsFirma6Enter(Sender: TObject);
begin
//    tsFirma6.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma6Exit(Sender: TObject);
begin
//    tsFirma6.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto7KeyPress(Sender: TObject; var Key: Char);
begin
//    If KEy = #13 Then
//        tsFirma7.SetFocus
end;

procedure TfrmFirmas.tsFirma7Enter(Sender: TObject);
begin
//    tsFirma7.Color := global_color_Entrada
end;

procedure TfrmFirmas.tsFirma7Exit(Sender: TObject);
begin
//    tsFirma7.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto8KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma8.SetFocus
end;

procedure TfrmFirmas.tsFirma8Enter(Sender: TObject);
begin
//    tsFirma8.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma8Exit(Sender: TObject);
begin
//    tsFirma8.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto9KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma9.SetFocus
end;

procedure TfrmFirmas.tsFirma9Enter(Sender: TObject);
begin
//    tsFirma9.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma9Exit(Sender: TObject);
begin
//    tsFirma9.Color := global_color_salida
end;

procedure TfrmFirmas.tsPuesto10KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma10.SetFocus
end;

procedure TfrmFirmas.tsPuesto11KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma11.SetFocus
end;

procedure TfrmFirmas.tsPuesto12KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma12.SetFocus
end;

procedure TfrmFirmas.tsPuesto13KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma13.SetFocus
end;

procedure TfrmFirmas.tsPuesto14KeyPress(Sender: TObject; var Key: Char);
begin
//  If Key = #13 then
//    tsFirma14.SetFocus
end;

procedure TfrmFirmas.tsPuesto15KeyPress(Sender: TObject; var Key: Char);
begin
//  If Key = #13 then
//    tsFirma15.SetFocus
end;

procedure TfrmFirmas.tsPuesto16KeyPress(Sender: TObject; var Key: Char);
begin
//  If Key = #13 then
//    tsFirma16.SetFocus
end;

procedure TfrmFirmas.tsPuesto17KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma17.SetFocus
end;

procedure TfrmFirmas.tsPuesto18KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma18.SetFocus
end;

procedure TfrmFirmas.tsPuesto19KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 Then
//        tsFirma19.SetFocus
end;

procedure TfrmFirmas.tsFirma10Enter(Sender: TObject);
begin
//    tsFirma10.Color := global_color_entrada
end;

procedure TfrmFirmas.tsFirma10Exit(Sender: TObject);
begin
//    tsFirma10.Color := global_color_salida
end;

procedure TfrmFirmas.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Style.Color := global_color_entradaERP
end;

procedure TfrmFirmas.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Style.Color := global_color_salida;
end;

procedure TfrmFirmas.tsNumeroOrdenExit(Sender: TObject);
begin
 try
    Firmas.Active := False ;
    Firmas.Params.ParamByName('Contrato').DataType := ftString ;
    Firmas.Params.ParamByName('Contrato').Value := global_contrato ;
    Firmas.Open ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al seleccionar frente de trabajo', 0);
  end;
 end;
end;

procedure TfrmFirmas.tsNumeroOrdenEnter(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;

end;

procedure TfrmFirmas.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        Grid_Firmantes.SetFocus
end;

procedure TfrmFirmas.FirmasAfterPost(DataSet: TDataSet);
begin
if cbActualizarOrdenes.Checked then
begin
  ShowMessage('Se van a actualizar las firmas en todos los frentes registrados...');
  connection.QryUBusca.Active:= false;
  connection.QryUBusca.SQL.Clear;
  connection.QryUBusca.SQL.Add('select sContrato, sNumeroOrden from ordenesdetrabajo ');
  connection.QryUBusca.Open;

  while not connection.QryUBusca.Eof  do
  begin
    connection.zUCommand.Active:=False;
    connection.zUCommand.SQL.Clear;
    connection.zUCommand.SQL.Add(' INSERT INTO firmas SET '+
                                '     sContrato=:Contrato, '+
                                '     sNumeroOrden=:Orden, '+
                                '     dIdFecha=:Fecha, '+
                                '     sFirmante1=:sFirmante1,'+
                                '     sFirmante2=:sFirmante2,'+
                                '     sFirmante3=:sFirmante3,'+
                                '     sFirmante4=:sFirmante4,'+
                                '     sFirmante5=:sFirmante5,'+
                                '     sFirmante6=:sFirmante6,'+
                                '     sFirmante7=:sFirmante7,'+
                                '     sFirmante8=:sFirmante8,'+
                                '     sFirmante9=:sFirmante9,'+
                                '     sFirmante10=:sFirmante10,'+
                                '     sFirmante11=:sFirmante11,'+
                                '     sFirmante12=:sFirmante12,'+
                                '     sFirmante13=:sFirmante13,'+
                                '     sFirmante14=:sFirmante14,'+
                                '     sFirmante15=:sFirmante15,'+
                                '     sFirmante16=:sFirmante16,'+
                                '     sFirmante17=:sFirmante17,'+
                                '     sFirmante18=:sFirmante18,'+
                                '     sPuesto1=:sPuesto1,'+
                                '     sPuesto2=:sPuesto2,'+
                                '     sPuesto3=:sPuesto3,'+
                                '     sPuesto4=:sPuesto4,'+
                                '     sPuesto5=:sPuesto5,'+
                                '     sPuesto6=:sPuesto6,'+
                                '     sPuesto7=:sPuesto7,'+
                                '     sPuesto8=:sPuesto8,'+
                                '     sPuesto9=:sPuesto9,'+
                                '     sPuesto10=:sPuesto10,' +
                                '     sPuesto11=:sPuesto11,' +
                                '     sPuesto12=:sPuesto12,' +
                                '     sPuesto13=:sPuesto13,' +
                                '     sPuesto14=:sPuesto14,' +
                                '     sPuesto15=:sPuesto15,' +
                                '     sPuesto16=:sPuesto16,' +
                                '     sPuesto17=:sPuesto17,' +
                                '     sPuesto18=:sPuesto18' +
                                ' ON DUPLICATE KEY UPDATE '+
                                '     sFirmante1=:sFirmante1,'+
                                '     sFirmante2=:sFirmante2,'+
                                '     sFirmante3=:sFirmante3,'+
                                '     sFirmante4=:sFirmante4,'+
                                '     sFirmante5=:sFirmante5,'+
                                '     sFirmante6=:sFirmante6,'+
                                '     sFirmante7=:sFirmante7,'+
                                '     sFirmante8=:sFirmante8,'+
                                '     sFirmante9=:sFirmante9,'+
                                '     sFirmante10=:sFirmante10,'+
                                '     sFirmante11=:sFirmante11,'+
                                '     sFirmante12=:sFirmante12,'+
                                '     sFirmante13=:sFirmante13,'+
                                '     sFirmante14=:sFirmante14,'+
                                '     sFirmante15=:sFirmante15,'+
                                '     sFirmante16=:sFirmante16,'+
                                '     sFirmante17=:sFirmante17,'+
                                '     sFirmante18=:sFirmante18,'+
                                '     sPuesto1=:sPuesto1,'+
                                '     sPuesto2=:sPuesto2,'+
                                '     sPuesto3=:sPuesto3,'+
                                '     sPuesto4=:sPuesto4,'+
                                '     sPuesto5=:sPuesto5,'+
                                '     sPuesto6=:sPuesto6,'+
                                '     sPuesto7=:sPuesto7,'+
                                '     sPuesto8=:sPuesto8,'+
                                '     sPuesto9=:sPuesto9,'+
                                '     sPuesto10=:sPuesto10,' +
                                '     sPuesto11=:sPuesto11,'+
                                '     sPuesto12=:sPuesto12,'+
                                '     sPuesto13=:sPuesto13,'+
                                '     sPuesto14=:sPuesto14,'+
                                '     sPuesto15=:sPuesto15,'+
                                '     sPuesto16=:sPuesto16,'+
                                '     sPuesto17=:sPuesto17,'+
                                '     sPuesto18=:sPuesto18' );

    connection.zUCommand.Params.ParamByName('sFirmante1').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante1').Value := tsFirma1.Text;

    connection.zUCommand.Params.ParamByName('sFirmante2').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante2').Value := tsFirma2.Text;

    connection.zUCommand.Params.ParamByName('sFirmante3').DataType:=ftString ;
//    connection.zUCommand.Params.ParamByName('sFirmante3').Value := tsFirma3.Text;

    connection.zUCommand.Params.ParamByName('sFirmante4').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante4').Value := tsFirma4.Text;

    connection.zUCommand.Params.ParamByName('sFirmante5').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante5').Value := tsFirma5.Text;

    connection.zUCommand.Params.ParamByName('sFirmante6').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante6').Value := tsFirma6.Text;

    connection.zUCommand.Params.ParamByName('sFirmante7').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante7').Value := tsFirma7.Text;

    connection.zUCommand.Params.ParamByName('sFirmante8').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante8').Value := tsFirma8.Text;

    connection.zUCommand.Params.ParamByName('sFirmante9').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante9').Value := tsFirma9.Text;

    connection.zUCommand.Params.ParamByName('sFirmante10').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante10').Value := tsFirma10.Text;

    connection.zUCommand.Params.ParamByName('sFirmante11').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante11').Value := tsFirma11.Text;

    connection.zUCommand.Params.ParamByName('sFirmante12').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante12').Value := tsFirma12.Text;

    connection.zUCommand.Params.ParamByName('sFirmante13').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante13').Value := tsFirma13.Text;

    connection.zUCommand.Params.ParamByName('sFirmante14').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante14').Value := tsFirma14.Text;

    connection.zUCommand.Params.ParamByName('sFirmante15').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante15').Value := tsFirma15.Text;

    connection.zUCommand.Params.ParamByName('sFirmante16').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante16').Value := tsFirma16.Text;

    connection.zUCommand.Params.ParamByName('sFirmante17').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante17').Value := tsFirma17.Text;

    connection.zUCommand.Params.ParamByName('sFirmante18').DataType:=ftString;
//    connection.zUCommand.Params.ParamByName('sFirmante18').Value := tsFirma18.Text;

    connection.zUCommand.Params.ParamByName('sPuesto1').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto1').Value := tsPuesto1.Text;

    connection.zUCommand.Params.ParamByName('sPuesto2').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto2').Value := tsPuesto2.Text;

    connection.zUCommand.Params.ParamByName('sPuesto3').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto3').Value := tsPuesto3.Text;

    connection.zUCommand.Params.ParamByName('sPuesto4').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto4').Value := tsPuesto4.Text;

    connection.zUCommand.Params.ParamByName('sPuesto5').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto5').Value := tsPuesto5.Text;

    connection.zUCommand.Params.ParamByName('sPuesto6').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto6').Value := tsPuesto6.Text;

    connection.zUCommand.Params.ParamByName('sPuesto7').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto7').Value := tsPuesto7.Text;

    connection.zUCommand.Params.ParamByName('sPuesto8').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto8').Value := tsPuesto8.Text;

    connection.zUCommand.Params.ParamByName('sPuesto9').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto9').Value := tsPuesto9.Text;

    connection.zUCommand.Params.ParamByName('sPuesto10').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto10').Value := tsPuesto10.Text;

    connection.zUCommand.Params.ParamByName('sPuesto11').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto11').Value := tsPuesto11.Text;

    connection.zUCommand.Params.ParamByName('sPuesto12').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto12').Value := tsPuesto12.Text;

    connection.zUCommand.Params.ParamByName('sPuesto13').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto13').Value := tsPuesto13.Text;

    connection.zUCommand.Params.ParamByName('sPuesto14').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto14').Value := tsPuesto14.Text;

    connection.zUCommand.Params.ParamByName('sPuesto15').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto15').Value := tsPuesto15.Text;

    connection.zUCommand.Params.ParamByName('sPuesto16').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto16').Value := tsPuesto16.Text;

    connection.zUCommand.Params.ParamByName('sPuesto17').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto17').Value := tsPuesto17.Text;

    connection.zUCommand.Params.ParamByName('sPuesto18').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('sPuesto18').Value := tsPuesto18.Text;

    connection.zUCommand.Params.ParamByName('Contrato').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('Contrato').Value   := Connection.QryUBusca.FieldValues['sContrato'];

    connection.zUCommand.Params.ParamByName('Orden').DataType:=ftString;
    connection.zUCommand.Params.ParamByName('Orden').Value:=connection.QryUBusca.FieldValues['sNumeroOrden'];

    connection.zUCommand.Params.ParamByName('Fecha').DataType:=ftDate;
    connection.zUCommand.Params.ParamByName('Fecha').Value:=tdIdFecha.Date;
//    try
      connection.zUCommand.ExecSQL;
//    except
//      ShowMessage('No se pudo actualizar las firmas del dia ' + DateToStr(tdIdFecha.Date) + ' de la orden ' + connection.QryUBusca.FieldValues['sNumeroOrden']);
//    end;
    connection.QryUBusca.Next;
  end
end

end;

end.
