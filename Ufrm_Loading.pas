unit Ufrm_Loading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.WinXCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxLabel, Vcl.ComCtrls, Data.DB, dxmdaset, cxImage,
  cxDBEdit;

type
  Tfrm_Loading = class(TForm)
    cxDBImage1: TcxDBImage;
    DataSource1: TDataSource;
    dxMemData1: TdxMemData;
    dxMemData1Image: TBlobField;
    procedure FormShow(Sender: TObject);
    //procedure verForm(var flap: boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Loading: Tfrm_Loading;
implementation

{$R *.dfm}

{ Tfrm_Loading }

{ Tfrm_Loading }


procedure Tfrm_Loading.FormShow(Sender: TObject);
begin
  if FileExists('GIF_pruebaSEIS.gif') then
  begin
    dxMemData1.Edit;
    dxMemData1Image.LoadFromFile('GIF_pruebaSEIS.gif');
    dxMemData1.Post;

    dxMemData1.Refresh;
  end;
end;

end.
