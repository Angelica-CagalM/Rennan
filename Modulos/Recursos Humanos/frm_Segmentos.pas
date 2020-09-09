unit frm_Segmentos;

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
  dxSkinXmas2008Blue, cxLabel, frm_barraH1, Vcl.ExtCtrls, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer, dxLayoutControl,
  frm_barraH2, dxLayoutcxEditAdapters, cxMemo, cxDBEdit, cxTextEdit, MemDS,
  DBAccess, Uni, dxLayoutControlAdapters;

type
  TFrmSegmentos = class(TForm)
    PanelCentral: TPanel;
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    GridSegmentosDBTableView1: TcxGridDBTableView;
    GridSegmentosLevel1: TcxGridLevel;
    GridSegmentos: TcxGrid;
    GridSegmentosDBTableView1Column1: TcxGridDBColumn;
    GridSegmentosDBTableView1Column2: TcxGridDBColumn;
    GridSegmentosDBTableView1Column3: TcxGridDBColumn;
    Segmento: TUniQuery;
    dsSegmento: TDataSource;
    PanelDonw: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControl1: TdxLayoutControl;
    edtCodigo: TcxDBTextEdit;
    edtSegmento: TcxDBTextEdit;
    mmObservacion: TcxDBMemo;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSegmentos: TFrmSegmentos;
  titulo:String;

implementation

{$R *.dfm}
 uses frm_connection;
procedure TFrmSegmentos.btnAddClick(Sender: TObject);
begin
 cxLeyenda.Caption:=titulo + '[Añadiendo]';
 PanelDonw.Visible:=True;
 Segmento.Append;
end;

procedure TFrmSegmentos.btnCancelClick(Sender: TObject);
begin
 PanelDonw.Visible:=False;
 Segmento.Cancel;
 cxLeyenda.Caption:=titulo;
end;

procedure TFrmSegmentos.btnDeleteClick(Sender: TObject);
begin
 If Segmento.RecordCount  > 0 then
 begin
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Segmento.Delete;
      Segmento.Refresh;
    end
 end;
end;

procedure TFrmSegmentos.btnEditClick(Sender: TObject);
begin
 cxLeyenda.Caption:=titulo + '[Editando]';
 PanelDonw.Visible:=True;
 Segmento.Edit;
end;

procedure TFrmSegmentos.btnPostClick(Sender: TObject);
begin
 Segmento.Post;
 segmento.Refresh;
 btnCancelClick(Sender)
end;

procedure TFrmSegmentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmSegmentos.FormShow(Sender: TObject);
begin
  titulo:='Segmento';
  cxLeyenda.Caption:=titulo;
  Segmento.Open;
end;

end.
