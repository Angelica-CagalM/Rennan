unit Frm_ConfBiometrico;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, frm_barraH1, cxLabel, Vcl.ExtCtrls, dxLayoutContainer, dxLayoutControl,
  frm_barraH2, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, MemDS, DBAccess, Uni, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.OleCtrls, zkemkeeper_TLB;

type
  TFrmConfBiometrico = class(TForm)
    PanelCentral: TPanel;
    PanelMenu: TPanel;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    PanelDatos: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    edtDireccion: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtPuerto: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtDesc: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    CbUbicacion: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    zConfiguracion: TUniQuery;
    dsConfiguracion: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxButton1: TcxButton;
    CZKEM1: TCZKEM;
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfBiometrico: TFrmConfBiometrico;

implementation
  uses frm_connection,UnitGenerales;
{$R *.dfm}

procedure TFrmConfBiometrico.btnAddClick(Sender: TObject);
begin
PanelDatos.Visible:=true;
zConfiguracion.Append;
end;

procedure TFrmConfBiometrico.btnCancelClick(Sender: TObject);
begin
PanelDatos.Visible:=False;
end;

procedure TFrmConfBiometrico.btnEditClick(Sender: TObject);
begin
 zConfiguracion.Edit;
 PanelDatos.Visible:=true;
end;

procedure TFrmConfBiometrico.btnPostClick(Sender: TObject);
begin
zConfiguracion.Post;
zConfiguracion.Refresh;
PanelDatos.Visible:=False;
end;

procedure TFrmConfBiometrico.btnRefreshClick(Sender: TObject);
begin
zConfiguracion.Refresh;
end;

procedure TFrmConfBiometrico.cxButton1Click(Sender: TObject);
begin

  if CZKEM1.Connect_Net(zConfiguracion.FieldByName('Direccion_ip').AsString ,zConfiguracion.FieldByName('Puerto').AsInteger) then
   begin
      ShowMessage('Biometrico Conectado');
   end
   else
   begin
      ShowMessage('No se pudo conectar al Biometrico');
   end;
end;

procedure TFrmConfBiometrico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmConfBiometrico.FormShow(Sender: TObject);
begin
 AsignarSQL(zConfiguracion,'configuracion_biometrico',pUpdate);
 zConfiguracion.Open;
end;

end.
