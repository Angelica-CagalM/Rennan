unit Frm_Embarcacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxLabel, Vcl.StdCtrls,
  cxButtons, Data.DB, MemDS, DBAccess, Uni, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxCheckBox, dxToggleSwitch,
  dxDBToggleSwitch, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDBEdit, dxLayoutControl, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, frm_barraH2, frm_barraH1, UnitExcepciones;

type
  TFrmEmbarcacion = class(TForm)
    PanelCentral: TPanel;
    zEmbarcacion: TUniQuery;
    dsEmbaracacion: TDataSource;
    Grid_Guardias: TcxGrid;
    Grid_GuardiasDBTableView1: TcxGridDBTableView;
    Grid_GuardiasLevel1: TcxGridLevel;
    Grid_GuardiasDBTableView1Column1: TcxGridDBColumn;
    Grid_GuardiasDBTableView1Column2: TcxGridDBColumn;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    Almacen: TUniQuery;
    dsAlmacen: TDataSource;
    PanelDown: TPanel;
    PanelTop: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtEmbarcacion: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cbAlmacen: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cbEdtTipo: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmbarcacion: TFrmEmbarcacion;
  titulo, titulo2,sArc: string;

implementation

uses frm_connection,UnitGenerales,global, frm_presupuesto;
{$R *.dfm}

procedure TFrmEmbarcacion.btnAddClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo+' [Agregando]';
  PanelDown.Visible:=True;
  pnlBtn2.Visible:=True;
  frmBarraH21.btnPost.Enabled:=True;
  frmBarraH21.btnCancel.Enabled:=True;
  zEmbarcacion.Append;
 // zEmbarcacion.FieldByName('sContrato').AsString:=global_contrato;
 // zEmbarcacion.FieldByName('iOrden').AsInteger:=0;
 ZEmbarcacion.FieldByName('Codigo').AsString:= autoFolio(zEmbarcacion, 'master_embarcaciones');
 zEmbarcacion.FieldByName('Activo').AsString:='Si';
 zEmbarcacion.FieldByName('IdAlmacen').AsString:=Almacen.FieldByName('IdAlmacen').AsString;
end;

procedure TFrmEmbarcacion.btnCancelClick(Sender: TObject);
begin
  pnlBtn2.Visible:=False;
  PanelDown.Visible:=False;
  zEmbarcacion.Cancel;
  cxLeyenda.Caption:=titulo;
end;

procedure TFrmEmbarcacion.btnDeleteClick(Sender: TObject);
begin
  If zEmbarcacion.RecordCount  > 0 then
  begin
     if MessageDlg('Desea eliminar el Personal '#13+zEmbarcacion.FieldByName('Embarcacion').AsString+'?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zEmbarcacion.Delete;
    end;
  end;
end;

procedure TFrmEmbarcacion.btnEditClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo+' [Editando]';
  PanelDown.Visible:=True;
  pnlBtn2.Visible:=True;
  frmBarraH21.btnPost.Enabled:=True;
  frmBarraH21.btnCancel.Enabled:=True;
  zEmbarcacion.Edit;
end;

procedure TFrmEmbarcacion.btnPostClick(Sender: TObject);
var
sId : Integer;
begin
 //zEmbarcacion.Post;

      try
       sId := zEmbarcacion.FieldByName('IdEmbarcacion').AsInteger;
        zEmbarcacion.Post;

       if global_frmActivo = 'frmPresupuesto' then
       begin
         try
             frmPresupuesto.zEmbarcacion.Refresh;
             frmPresupuesto.sIdEmbarcacion.DataBinding.DataSource.DataSet.FieldByName('sIdEmbarcacion').AsInteger := sId;
             frmPresupuesto.sIdEmbarcacion.SetFocus;
         Except
         end;
       end;

       frmBarraH21.btnPostClick(Sender);
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Embarcación', 'Al salvar registro', 0);
           frmBarraH21.btnCancel.Click ;
       end;
   end;

 btnCancelClick(Sender);
end;

procedure TFrmEmbarcacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmEmbarcacion.FormShow(Sender: TObject);
begin
  titulo:='Embarcaciones';
  cxLeyenda.Caption:=titulo;
  zEmbarcacion.Open;
  Almacen.Open;
end;

end.
