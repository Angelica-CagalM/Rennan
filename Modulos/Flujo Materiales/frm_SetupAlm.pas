unit frm_SetupAlm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, unitGenerales,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls, cxGroupBox, cxPC, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, Menus, cxButtons, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, global, frm_connection,
  ExtDlgs, cxPCdxBarPopupMenu, dxGDIPlusClasses, cxFilterControl,
  cxDBFilterControl,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxScrollBox,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxLabel,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxImage, dxLayoutContainer,
  cxClasses, dxLayoutControl, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch;

type
  TfrmSetupAlm = class(TForm)
    cxPageControl1: TcxPageControl;
    Panel1: TPanel;
    btnGuardar: TcxButton;
    cxCancelar: TcxButton;
    OpenPicture: TOpenPictureDialog;
    Periodos: TZReadOnlyQuery;
    cxTabSheet1: TcxTabSheet;
    Label1: TLabel;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxEmpresa: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxRazonSocial: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxRfc: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDireccion: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxCiudad: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxTelefono: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxCorreo: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxWeb: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxImagen: TcxDBImage;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxReportesNombre: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxRutaOCGuarda: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutControl1: TdxLayoutControl;
    cxGroupBox3: TcxGroupBox;
    dxLayoutControl5: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBImage1: TcxDBImage;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxGroupBox5: TcxGroupBox;
    dxLayoutControl6: TdxLayoutControl;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    cxGroupBox6: TcxGroupBox;
    dxLayoutControl7: TdxLayoutControl;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    togFiltro: TdxDBToggleSwitch;
    dxLayoutItem1: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxAccesoClick(Sender: TObject);
    procedure cxImagenDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
    procedure IniciaConf;
  public
    { Public declarations }
  end;

var
  frmSetupAlm: TfrmSetupAlm;
  sOldNumDigitos : string;
  lContinua : boolean;

implementation
uses
    frm_periodos;

{$R *.dfm}
procedure TfrmSetupAlm.btnGuardarClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  error:boolean ;
begin
  if connection.uConfiguracion.State = dsEdit then
  begin
    error:=False;
    lContinua := True;

    if error = False then
    begin
      if OpenPicture.FileName<>'' then
      begin
        try
          BlobField := connection.uConfiguracion.FieldByName('bImagen');
          BS := connection.uConfiguracion.CreateBlobStream(BlobField, bmWrite);
          try
          Pic := TJpegImage.Create;
            try
              Pic.LoadFromFile(OpenPicture.FileName);
              Pic.SaveToStream(Bs);
            finally
              Pic.Free;
            end;
          finally
            bS.Free
          end
        except
        end;
      end;

      connection.uConfiguracion.Post;

      if lContinua then
          connection.uconfiguracion.refresh
      else
         connection.uConfiguracion.Edit;
    end;

  end;

  close;
end;


procedure TfrmSetupAlm.cxAccesoClick(Sender: TObject);
begin
    Application.CreateForm(TfrmPeriodos, frmPeriodos);
    frmPeriodos.ShowModal ;
end;

procedure TfrmSetupAlm.cxCancelarClick(Sender: TObject);
begin
  if connection.uConfiguracion.State = dsEdit then
     connection.uConfiguracion.Cancel;
  Close;
end;

procedure TfrmSetupAlm.cxImagenDblClick(Sender: TObject);
begin
   tcxImage(cxImagen).LoadFromFile;
end;

procedure TfrmSetupAlm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= cafree;
end;

procedure TfrmSetupAlm.FormShow(Sender: TObject);

begin
  if global_contrato <> '' then
  begin
    periodos.Active := false;
    periodos.Open;

    if connection.uConfiguracion.RecordCount > 0 then
       connection.uConfiguracion.Edit;
  end;
end;

procedure TfrmSetupAlm.IniciaConf;
begin

end;

end.
