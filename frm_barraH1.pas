unit frm_barraH1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Global, cxControls,
  dxSkinscxPCPainter, dxLayoutControlAdapters, dxLayoutContainer, cxClasses,
  dxLayoutControl;

type
  TfrmBarraH1 = class(TFrame)
    Panel1: TPanel;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnPrinter: TcxButton;
    btnDetalle: TcxButton;
    btnRefresh: TcxButton;
    btnExporta: TcxButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);

  private
    { Private declarations }
  public
    procedure btnActive;
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses frm_repositorio;

procedure TfrmBarraH1.btnActive;
begin
  btnAdd.Enabled := True ;
  btnEdit.Enabled := True ;
  btnDelete.Enabled := True ;
  btnPrinter.Enabled := True;
  btnRefresh.Enabled := True;
  btnDetalle.Enabled := True;
  btnExporta.Enabled := True;
end;

procedure TfrmBarraH1.btnAddClick(Sender: TObject);
begin
  OpcButton := 'New' ;
  btnAdd.Enabled := False ;
  btnEdit.Enabled := False ;
  btnDelete.Enabled := False ;
  btnPrinter.Enabled := False ;
  btnRefresh.Enabled := False;
  btnDetalle.Enabled := False;
  btnExporta.Enabled := False;
end;

procedure TfrmBarraH1.btnEditClick(Sender: TObject);
begin
  OpcButton := 'Edit' ;
  btnAdd.Enabled := False ;
  btnEdit.Enabled := False ;
  btnDelete.Enabled := False ;
  btnPrinter.Enabled := False ;
  btnRefresh.Enabled := False;
  btnDetalle.Enabled := False;
  btnExporta.Enabled := False;
end;
end.
