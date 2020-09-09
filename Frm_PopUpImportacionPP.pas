unit Frm_PopUpImportacionPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZDataset,
   dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxButtons, cxLabel, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmPopUpImportacionPP = class(TForm)
    QrContratos: TZReadOnlyQuery;
    QrFolios: TZReadOnlyQuery;
    dsContratos: TDataSource;
    dsFolios: TDataSource;
//    FormAutoScaler1: TFormAutoScaler;
    cxPage: TcxPageControl;
    cxPrograma: TcxTabSheet;
    cxColumnas: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxAceptar: TcxButton;
    cxCancelar: TcxButton;
    cxDefinir: TcxButton;
    cxGuardar: TcxButton;
    cxCancelarDef: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxPartida: TcxComboBox;
    cxMedida: TcxComboBox;
    cxLabel4: TcxLabel;
    cxPonderado: TcxComboBox;
    cxVolumen: TcxComboBox;
    cxLabel5: TcxLabel;
    cxFolioPrograma: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxAceptarClick(Sender: TObject);
    procedure cxDefinirClick(Sender: TObject);
    procedure cxCancelarDefClick(Sender: TObject);
    procedure cxGuardarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure CargarValores;
  public
    { Public declarations }
    
  end;

var
  FrmPopUpImportacionPP: TFrmPopUpImportacionPP;

implementation
      //Texto1...texto30
uses frm_connection, global;

{$R *.dfm}

Procedure TFrmPopUpImportacionPP.CargarValores;
var
  i:Integer;
begin
  cxPartida.Properties.Items.Clear;
  cxPonderado.Properties.Items.Clear;
  cxMedida.Properties.Items.Clear;
  cxVolumen.Properties.Items.Clear;

  cxPonderado.Properties.Items.Add('No Aplica');
  cxMedida.Properties.Items.Add('No Aplica');
  cxVolumen.Properties.Items.Add('No Aplica');
  for I := 1 to 30 do
  begin
    cxPartida.Properties.Items.Add('Texto' + IntTostr(I));
    cxPonderado.Properties.Items.Add('Texto' + IntTostr(I));
    cxMedida.Properties.Items.Add('Texto' + IntTostr(I));
    cxVolumen.Properties.Items.Add('Texto' + IntTostr(I));
  end;

  cxPonderado.ItemIndex := 0;
  cxMedida.ItemIndex := 0;
  cxVolumen.ItemIndex := 0;

  if trim(QrFolios.FieldByName('sProjPartida').AsString) <> '' then
  begin
      cxPartida.ItemIndex   := cxPartida.Properties.Items.IndexOf(QrFolios.FieldByName('sProjPartida').AsString);
      cxPonderado.ItemIndex := cxPonderado.Properties.Items.IndexOf(QrFolios.FieldByName('sProjPonderado').AsString);
      cxMedida.ItemIndex    := cxMedida.Properties.Items.IndexOf(QrFolios.FieldByName('sProjMedida').AsString);
      cxVolumen.ItemIndex   := cxVolumen.Properties.Items.IndexOf(QrFolios.FieldByName('sProjVolumen').AsString);
  end;     
end;

procedure TFrmPopUpImportacionPP.cxAceptarClick(Sender: TObject);
begin
  if QrFolios.FieldByName('sProjPartida').AsString = '' then
  begin
      messageDLG('No ha definido las columnas para importar datos!', mtInformation, [mbOK], 0);

  end
  else
  begin
  
  end;
end;

procedure TFrmPopUpImportacionPP.cxCancelarClick(Sender: TObject);
begin
   close
end;

procedure TFrmPopUpImportacionPP.cxCancelarDefClick(Sender: TObject);
begin
   cxPage.ActivePageIndex:=0;
end;

procedure TFrmPopUpImportacionPP.cxDefinirClick(Sender: TObject);
begin
   cxPage.ActivePageIndex:=1;
   CargarValores;
end;

procedure TFrmPopUpImportacionPP.cxGuardarClick(Sender: TObject);
begin
   connection.zCommand.Active := False;
   connection.zCommand.SQL.Clear;
   connection.zCommand.SQL.Add('update ordenesdetrabajo set sProjPartida =:Partida, sProjPonderado =:Pond, sProjMedida =:Medida, sProjVolumen =:Volumen '+
                               'where sContrato =:Contrato and sNumeroOrden =:FolioProg');
   connection.zCommand.ParamByName('contrato').AsString  := global_contrato;
   connection.zCommand.ParamByName('FolioProg').AsString := QrFolios.FieldByName('sNumeroOrden').AsString;
   connection.zCommand.ParamByName('Partida').AsString   := cxPartida.Text;
   connection.zCommand.ParamByName('Pond').AsString      := cxPonderado.Text;
   connection.zCommand.ParamByName('Medida').AsString    := cxMedida.Text;
   connection.zCommand.ParamByName('Volumen').AsString   := cxVolumen.Text;
   connection.zCommand.ExecSQL;

   QrFolios.Refresh;
   cxPage.ActivePageIndex:=0;
end;

procedure TFrmPopUpImportacionPP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (QrFolios.RecordCount=0) and (ModalResult=MrOk) then
  begin
    Messagedlg('No Existen Folios en esta OT.',MtError,[MbOk],0);
    CanClose:=false;
  end;
end;

procedure TFrmPopUpImportacionPP.FormCreate(Sender: TObject);
begin
  cxPage.ActivePageIndex:=0;
end;

procedure TFrmPopUpImportacionPP.FormShow(Sender: TObject);
begin
  QrContratos.Active:=false;
  QrContratos.Open;

  QrFolios.Active:=false;
  QrFolios.ParamByName('contrato').AsString := global_contrato;
  QrFolios.Open;

  cxFolioPrograma.Clear;
  while not QrFolios.Eof do
  begin
     cxFolioPrograma.Properties.Items.Add(QrFolios.FieldByName('sIdFolio').AsString);
     QrFolios.Next;
  end;
  cxFolioPrograma.ItemIndex := 0;

  CargarValores;
end;

end.
