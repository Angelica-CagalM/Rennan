unit UFrmConfigCorreo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel, cxMaskEdit, cxSpinEdit,
  cxTextEdit, dxSkinsdxBarPainter, Menus, StdCtrls, cxButtons, cxClasses, dxBar,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, global, frm_connection, unitGenerales,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni,
  cxCheckBox, dxToggleSwitch, cxGroupBox, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope,JSON, REST.Types, UnitEnviarEmail;

type
  TFrmConfigCorreo = class(TForm)
    ly1: TdxLayoutControl;
    dxLyLayoutControl1Group_Root: TdxLayoutGroup;
    LblEmpresa: TcxLabel;
    dxlytmly1Item1: TdxLayoutItem;
    cxTextCorreo: TcxTextEdit;
    dxlytmly1Item2: TdxLayoutItem;
    cxTextContrasena: TcxTextEdit;
    dxlytmly1Item3: TdxLayoutItem;
    cxTextSMTP: TcxTextEdit;
    dxlytmly1Item4: TdxLayoutItem;
    cxSpinPuerto: TcxSpinEdit;
    dxlytmly1Item5: TdxLayoutItem;
    dxlytcrtdgrply1Group1: TdxLayoutAutoCreatedGroup;
    pnl1: TPanel;
    dxBarManager1: TdxBarManager;
    btn1: TcxButton;
    btn2: TcxButton;
    zCorreo: TUniQuery;
    tgTLS: TdxToggleSwitch;
    dxLayoutItem1: TdxLayoutItem;
    cxGroupCorreo: TcxGroupBox;
    dxLayoutItem2: TdxLayoutItem;
    edtCorreo: TcxTextEdit;
    cxLabel1: TcxLabel;
    edtAsunto: TcxTextEdit;
    cxLabel2: TcxLabel;
    btnEnviar: TcxButton;
    cxCheckCorreo: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem4: TdxLayoutItem;
    tgNotificarAutorizar: TdxToggleSwitch;
    responseMsg: TRESTResponse;
    clientMsg: TRESTClient;
    requestMsg: TRESTRequest;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure zCorreoAfterPost(DataSet: TDataSet);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTextCorreoEnter(Sender: TObject);
    procedure cxTextCorreoExit(Sender: TObject);
    procedure cxTextContrasenaEnter(Sender: TObject);
    procedure cxTextContrasenaExit(Sender: TObject);
    procedure cxTextSMTPEnter(Sender: TObject);
    procedure cxTextSMTPExit(Sender: TObject);
    procedure cxSpinPuertoEnter(Sender: TObject);
    procedure cxSpinPuertoExit(Sender: TObject);
    procedure cxCheckCorreoClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigCorreo: TFrmConfigCorreo;

implementation
uses UFrmEnviarCorreo;
{$R *.dfm}

procedure TFrmConfigCorreo.btn1Click(Sender: TObject);
begin
  zCorreo.FieldByName('IdEmpresa').AsInteger := connection.Ucontrato.FieldByName('IdEmpresa').AsInteger;
  zCorreo.FieldByName('sContrato').AsString  := Global_contrato;
  zCorreo.FieldByName('Correo').AsString     := cxTextCorreo.Text;
//  zCorreo.FieldByName('Contrasena').AsString := encriptar(cxTextContrasena.Text,10);
  zCorreo.FieldByName('Contrasena').AsString := cxTextContrasena.Text;
  zCorreo.FieldByName('SMTP').AsString       := cxTextSMTP.Text;
  zCorreo.FieldByName('Puerto').asInteger    := cxSpinPuerto.Value;
  zCorreo.FieldByName('sIdUsuario').AsString := global_usuario;
  zCorreo.FieldByName('AplicaTLS').AsString  := tgTLS.EditValue;
  zCorreo.FieldByName('NotificarAutorizar').AsString  := tgNotificarAutorizar.EditValue;

  zCorreo.Post;
  Close;
end;

procedure TFrmConfigCorreo.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfigCorreo.btnEnviarClick(Sender: TObject);
var
  msg: string;
  Adjunto: string;
  RutaArchivoAdjunto: string;
begin
if Length(Trim(RutaArchivoAdjunto)) = 0 then
    Adjunto := ''
  else
    Adjunto := RutaArchivoAdjunto;

  Adjunto := RutaArchivoAdjunto;

  if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
      msg:= Enviar_Email(cxTextCorreo.Text,
                cxTextContrasena.Text,
                cxTextSMTP.Text,
                '',
                edtAsunto.Text,
                '"'+edtCorreo.Text+'"',
                edtAsunto.Text,
                cxSpinPuerto.EditValue,
                tgTLS.EditValue)
  else
      msg:=EnviarMensaje(cxTextCorreo.Text,
                cxTextContrasena.Text,
                cxTextSMTP.Text,
                Adjunto,
                edtAsunto.Text,
                edtCorreo.Text,
                edtAsunto.Text,
                cxSpinPuerto.EditValue,
                tgTLS.EditValue);

   messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);
end;

procedure TFrmConfigCorreo.cxCheckCorreoClick(Sender: TObject);
begin
  cxGroupCorreo.Enabled:= not cxGroupCorreo.Enabled;
  if cxGroupCorreo.Enabled then
  begin
    edtCorreo.SetFocus;
  end;

end;

procedure TFrmConfigCorreo.cxSpinPuertoEnter(Sender: TObject);
begin
     cxSpinPuerto.Style.Color := global_color_entradaERP;
end;

procedure TFrmConfigCorreo.cxTextContrasenaEnter(Sender: TObject);
begin
    cxTextContrasena.Style.Color := global_color_entradaERP;
end;

procedure TFrmConfigCorreo.cxTextCorreoEnter(Sender: TObject);
begin
    cxTextCorreo.Style.Color := global_color_entradaERP;
end;

procedure TFrmConfigCorreo.cxSpinPuertoExit(Sender: TObject);
begin
    cxSpinPuerto.Style.Color := global_color_salidaERP;
end;

procedure TFrmConfigCorreo.cxTextContrasenaExit(Sender: TObject);
begin
    cxTextContrasena.Style.Color := global_color_salidaERP;
end;

procedure TFrmConfigCorreo.cxTextCorreoExit(Sender: TObject);
begin
    cxTextCorreo.Style.Color := global_color_salidaERP;
end;

procedure TFrmConfigCorreo.cxTextSMTPEnter(Sender: TObject);
begin
    cxTextSMTP.Style.Color := global_color_entradaERP;
end;

procedure TFrmConfigCorreo.cxTextSMTPExit(Sender: TObject);
begin
    cxTextSMTP.Style.Color := global_color_salidaERP;
end;

procedure TFrmConfigCorreo.FormCreate(Sender: TObject);
begin
  //if not AsignarSQL(zCorreo, 'master_configuracioncorreo', pReadOnly) then
  //  raise exception.Create(pErrorConsulta + ' [master_configuracioncorreo]');
end;

procedure TFrmConfigCorreo.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmConfigCorreo.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  LocIdEmpresa: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      lblEmpresa.Caption := 'Configuracion de Correo para '+global_usuario;
      //LocIdEmpresa := connection.contrato.FieldByName('mDescripcion').AsString;

      if zCorreo.Active then
        zCorreo.Refresh
      else
      begin
        zCorreo.ParamByName('Contrato').AsString  := global_contrato;
        zCorreo.ParamByName('Usuario').AsString  := global_usuario;
        zCorreo.ParamByName('Empresa').AsString  := connection.ucontrato.FieldByName('IdEmpresa').AsString;
        zCorreo.Open;
      end;

      if zCorreo.Recordcount > 0 then
      begin
        cxTextCorreo.Text     := zCorreo.FieldByName('Correo').AsString;
        //cxTextContrasena.Text := desencriptar(zCorreo.FieldByName('Contrasena').AsString,10);
        cxTextContrasena.Text := zCorreo.FieldByName('Contrasena').AsString;
        cxTextSMTP.Text       := zCorreo.FieldByName('SMTP').AsString;
        cxSpinPuerto.Value    := zCorreo.FieldByName('Puerto').asInteger;
        tgTLS.EditValue       := zCorreo.FieldByName('AplicaTLS').AsString;
        tgNotificarAutorizar.EditValue:= zCorreo.FieldByName('NotificarAutorizar').AsString;
        zCorreo.Edit;
      end
      else
        zCorreo.Insert;
    finally
    //  AutoFocus(TForm(Self));
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
    //  MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmConfigCorreo.zCorreoAfterPost(DataSet: TDataSet);
begin
    ActualizaDatos_una_tabla_maestra('usuarios', 'sIdUsuario', 'sMail = ', '', '', global_usuario, '"'+cxTextCorreo.Text+'"', '', '', 'actualizar', False);
end;



end.
