unit frm_VerPDF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, unitexcepciones, unittbotonespermisos,
  UnitValidaTexto, UnitTablasImpactadas, unitactivapop,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxGridCustomView, cxGrid, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, frxClass, DebenuPDFLibraryAX0912_TLB,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.OleCtrls,
  AcroPDFLib_TLB;

type
  TfrmVerPDF = class(TForm)
    pPDF: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CrearCompPDF(Padre: Twincontrol;MuestraError:Boolean = True);
    procedure CargarDocumento(PathPdf: string);
    procedure LimpiarCompPDF;
  private
    { Private declarations }
  public
    { Public declarations }
    CompPDF: TAcroPDF;
    dirPDF : String;
  end;
var
  frmVerPDF: TfrmVerPDF;
implementation

{$R *.dfm}

procedure TfrmVerPDF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Try
    if FileExists(dirPDF) then
      DeleteFile(dirPDF);

    if Assigned(CompPDF) or (CompPDF <> nil) then
    begin
      CompPDF.Free;
    end;
  except
  on e:Exception do
    ;//ShowMessage(e.Message);

  End;
end;

procedure TfrmVerPDF.FormShow(Sender: TObject);

begin
//  CargarPDF a acro
  dirPDF := global_Temp;
  try
    CrearCompPDF(pPDF,True);
  except
    ;
  end;

  CargarDocumento(dirPDF);

end;


procedure TfrmVerPDF.CrearCompPDF(Padre: Twincontrol;
  MuestraError: Boolean);
begin
  //
  try
    try
      CompPDF := TAcroPDF.Create(Nil);
      CompPDF.Parent := Padre;
      CompPDF.Align:= alClient;
      CompPDF.DoubleBuffered := False;
    except
      on e:Exception do
        if MuestraError then
          ShowMessage('Error al crear el Preview de archivos PDF de documentos, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat reader falló: '+e.Message)
        else;
    end;
  finally
    Padre.Visible := False;
  end;
end;


procedure TfrmVerPDF.CargarDocumento(PathPdf: string);
begin
  //Cargar pdf
  if (Assigned(CompPDF)) and (CompPDF <> nil) then
  begin
    if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
    begin
      CompPDF.LoadFile(PathPdf);
      CompPDF.Parent.Visible := True;
      CompPDF.SetFocus;
      //CompPDF.Show;
    end
    else
      LimpiarCompPDF;
  end;
end;


procedure TfrmVerPDF.LimpiarCompPDF;
var
  padre: TWinControl;
begin
  //Limpiar el componente
  if (Assigned(CompPDF)) and (CompPDF <> nil) then
  begin
    padre := CompPDF.Parent;
    FreeAndNil(CompPDF);
    CrearCompPDF(padre,False);
  end;
end;

end.
