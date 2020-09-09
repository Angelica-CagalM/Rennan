unit Frm_MaterialXCategoria;

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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, frm_barraH1, frm_barraH2, Vcl.ExtCtrls,
  MemDS, DBAccess, Uni, dxLayoutcxEditAdapters, cxDropDownEdit, cxCalc,
  cxDBEdit, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl;

type
  TFrmMaterialXCategoria = class(TForm)
    PanelDatos: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    cxView_RequsicionColumn3: TcxGridDBColumn;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    grid_requsicionLevel1: TcxGridLevel;
    zMatxCat: TUniQuery;
    zMaterial: TUniQuery;
    zCategoria: TUniQuery;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbCategoria: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cbMaterial: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    edtCantidad: TcxDBCalcEdit;
    dxLayoutItem3: TdxLayoutItem;
    dsMatxCat: TDataSource;
    dsMaterial: TDataSource;
    dsCategoria: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMaterialXCategoria: TFrmMaterialXCategoria;

implementation
    uses frm_connection,UnitGenerales,Comobj,global,frm_agregar_masivoOP_SS7;
{$R *.dfm}

procedure TFrmMaterialXCategoria.btnAddClick(Sender: TObject);
begin
PanelDatos.Visible:=True;
 zMatxCat.Append;
end;

procedure TFrmMaterialXCategoria.btnCancelClick(Sender: TObject);
begin
 zMatxCat.cancel;
 PanelDatos.Visible:=False;
end;

procedure TFrmMaterialXCategoria.btnDeleteClick(Sender: TObject);
begin
 zMatxCat.Delete;
 zMatxCat.Refresh;
end;

procedure TFrmMaterialXCategoria.btnEditClick(Sender: TObject);
begin
PanelDatos.Visible:=True;
 zMatxCat.Edit;
end;

procedure TFrmMaterialXCategoria.btnPostClick(Sender: TObject);
begin
 zMatxCat.Post;
 PanelDatos.Visible:=False;
 zMatxCat.Refresh;
end;

procedure TFrmMaterialXCategoria.btnRefreshClick(Sender: TObject);
begin
 zMatxCat.Refresh;
end;

procedure TFrmMaterialXCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:= caFree;
end;

procedure TFrmMaterialXCategoria.FormShow(Sender: TObject);
begin
  PanelDatos.Visible:=False;
  AsignarSQL(zMatxCat,'materialxcategoria',pUpdate);
  zMatxCat.Open;

  zMaterial.Active:=False;
  AsignarSQL(zMaterial,'alm_insumos_epp',pUpdate);
  FiltrarDataSet(zMaterial,'Usuario,Codigo',[global_usuario,'-1']);
  zMaterial.Open;

  zCategoria.Active:=False;
  AsignarSQL(zCategoria,'master_puesto',pUpdate);
  zCategoria.Open;

end;

end.
