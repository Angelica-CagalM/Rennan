unit fmr_AsignarAlmacen;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls,
  cxSplitter, frm_barraH1, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxImage, MemDS,
  DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBLookupComboBox;

type
  TfmrAsignarAlmacen = class(TForm)
    Panel3: TPanel;
    cxLeyenda: TcxLabel;
    PanelCentral: TPanel;
    PanelDetalle: TPanel;
    cxSplitterDtelle: TcxSplitter;
    Panel1: TPanel;
    frmBarraH11: TfrmBarraH1;
    Proyecto: TUniQuery;
    dsProyecto: TDataSource;
    cxGridProyecto: TcxGrid;
    cxViewProyectos: TcxGridDBTableView;
    cxViewProyectosColumn1: TcxGridDBColumn;
    cxGridProyectoLevel1: TcxGridLevel;
    cxGridUsuarios: TcxGrid;
    cxViewUsuarios: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxViewUsuariosColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    zUsuarios: TUniQuery;
    dsUsuarios: TDataSource;
    cxSplitterUser: TcxSplitter;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    zAlmacen: TUniQuery;
    dsAlmacen: TDataSource;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxViewProyectosColumn3: TcxGridDBColumn;
    uGrupos: TUniQuery;
    ds_grupos: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure zUsuariosAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmrAsignarAlmacen: TfmrAsignarAlmacen;

implementation
   uses frm_connection,global;
{$R *.dfm}

procedure TfmrAsignarAlmacen.btnAddClick(Sender: TObject);
begin
cxSplitterDtelle.Visible := True;
PanelDetalle.Visible:=True;
end;

procedure TfmrAsignarAlmacen.cxCancelarDetalleClick(Sender: TObject);
begin
  PanelDown.Visible:=False;
  cxSplitterDtelle.Visible := False;
  PanelDetalle.Visible:=False;
end;

procedure TfmrAsignarAlmacen.cxGuardarDetalleClick(Sender: TObject);
begin
  zAlmacen.Append;
  zAlmacen.FieldByName('sIdUsuario').AsString:=zUsuarios.FieldByName('sIdUsuario').AsString;
  zAlmacen.FieldByName('IdAlmacen').AsInteger:=Proyecto.FieldByName('IdAlmacen').AsInteger;
  zAlmacen.Post;

  cxCancelarDetalleClick(Sender);
end;

procedure TfmrAsignarAlmacen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfmrAsignarAlmacen.FormShow(Sender: TObject);
begin
  zUsuarios.Open;
  Proyecto.SQL.Text:='(select IdAlmacen, Codigo, sDescripcion from alm_almacenes) UNION '+
  '(Select -1 as IdAlmacen ,'+ QuotedStr ('NO APLICA FILTRO')+' as Codigo, '+ QuotedStr ('NO APLICA FILTRO')+' as sDescripcion)';
  Proyecto.Open;
  cxViewUsuarios.ViewData.Expand(True);

  uGrupos.Active := False;
  uGrupos.Open;
end;

procedure TfmrAsignarAlmacen.zUsuariosAfterScroll(DataSet: TDataSet);
begin
  if zUsuarios.RecordCount > 0 then
  begin
    zAlmacen.Active:=False;
    zAlmacen.SQL.Text:='select a.*, '+
    'If(a.IdAlmacen = -1,'+QuotedStr ('ALM')+',(Select m.sDescripcion From alm_almacenes as m where m.IdAlmacen = a.IdAlmacen) )as Almacen '+
    'from alm_almacenesporusuario as a where a.sIdUsuario = :usuario';
    zAlmacen.ParamByName('usuario').AsString:=zUsuarios.FieldByName('sIdUsuario').AsString;
    zAlmacen.Open;
  end;
end;

end.
