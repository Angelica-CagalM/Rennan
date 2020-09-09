unit Frm_FechaVigencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, cxGroupBox,
  cxRadioGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxBarBuiltInMenu, cxPC, global, Data.DB, MemDS, DBAccess, Uni,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, unitMetodos, unitGenerales;

type
  TFrmFechaVigencia = class(TForm)
    edtFechaVigencia: TcxDateEdit;
    btnAceptar: TcxButton;
    btnCancelar: TcxButton;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    cxPageControlF: TcxPageControl;
    cxPageVigencia: TcxTabSheet;
    cxPageDiasL: TcxTabSheet;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxFechaIni: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxFechaFin: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxAceptaT2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxCancelaT2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    uConsulta: TUniQuery;
    ds_consulta: TDataSource;
    Empresa: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxAceptaT2Click(Sender: TObject);
    procedure cxCancelaT2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFechaVigencia: TFrmFechaVigencia;

implementation

{$R *.dfm}

uses frm_Connection;
procedure TFrmFechaVigencia.btnAceptarClick(Sender: TObject);
begin
  global_resultModal:=True;
  Close;
end;

procedure TFrmFechaVigencia.btnCancelarClick(Sender: TObject);
begin
  global_resultModal:=False;
  Close;
end;

procedure TFrmFechaVigencia.cxAceptaT2Click(Sender: TObject);
begin
  global_resultModal:=True;
  Close;
end;

procedure TFrmFechaVigencia.cxCancelaT2Click(Sender: TObject);
begin
  global_resultModal:=False;
  Close;
end;

procedure TFrmFechaVigencia.FormShow(Sender: TObject);
begin
 if cxPageControlF.ActivePage = cxPageVigencia then begin
   edtFechaVigencia.Date:=Now;
   uConsulta.Active:=False;
   AsignarSQL(uConsulta,'master_empresa',pUpdate);
   FiltrarDataSet(uConsulta,'IdEmpresa,bIdEmpresa,IdPadre',[-1,-1,-1]);
   uConsulta.Open;
   Empresa.EditValue:=uConsulta.FieldByName('IdEmpresa').AsInteger;
 end
 else begin
   if cxPageControlF.ActivePage = cxPageDiasL then begin
     cxFechaIni.Date := Now;
     cxFechaFin.Date := Now;

   end;
 end;
end;

end.
