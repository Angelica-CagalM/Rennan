unit frm_ConfiguraMail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, frm_barra, StdCtrls, DBCtrls,
  Mask, ExtCtrls, jpeg, ExtDlgs, DB, Global, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxMemo, Buttons, cxTextEdit, cxGroupBox;

type
  TfrmConfiguraMail = class(TForm)
    SpeedButton1: TSpeedButton;
    cxGroupBox1: TcxGroupBox;
    txtDestino: TcxTextEdit;
    txtCC: TcxTextEdit;
    txtCCO: TcxTextEdit;
    txtAsunto: TcxTextEdit;
    txtTexto: TcxMemo;
    cmdAcept: TButton;
    cmdCancelar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure cmdCancelarClick(Sender: TObject);
    procedure cmdAceptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtDestinoKeyPress(Sender: TObject; var Key: Char);
    procedure txtCCKeyPress(Sender: TObject; var Key: Char);
    procedure txtCCOKeyPress(Sender: TObject; var Key: Char);
    procedure txtAsuntoKeyPress(Sender: TObject; var Key: Char);
    procedure txtTextoKeyPress(Sender: TObject; var Key: Char);
    procedure cmdAceptKeyPress(Sender: TObject; var Key: Char);
    procedure txtDestinoEnter(Sender: TObject);
    procedure txtDestinoExit(Sender: TObject);
    procedure txtCCEnter(Sender: TObject);
    procedure txtCCExit(Sender: TObject);
    procedure txtCCOEnter(Sender: TObject);
    procedure txtCCOExit(Sender: TObject);
    procedure txtAsuntoEnter(Sender: TObject);
    procedure txtAsuntoExit(Sender: TObject);
    procedure txtTextoEnter(Sender: TObject);
    procedure txtTextoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguraMail: TfrmConfiguraMail;
  localOpcion : string;

implementation

{$R *.dfm}

procedure TfrmConfiguraMail.cmdAceptClick(Sender: TObject);
begin
    if LocalOpcion  = 'Editar' then
    begin
         Connection.qryBusca.Active := False ;
         Connection.qryBusca.SQL.Clear ;
         Connection.qryBusca.SQL.Add('Update usuarios set sDestino =:Destino, sCC =:CC, sCCO =:CCO, sAsunto =:Asunto, sContenido =:Contenido where sIdUsuario =:Usuario ') ;
         Connection.qryBusca.Params.ParamByName('Usuario').DataType   := ftString ;
         Connection.qryBusca.Params.ParamByName('Usuario').Value      := global_usuario;
         Connection.qryBusca.Params.ParamByName('Destino').DataType   := ftString ;
         Connection.qryBusca.Params.ParamByName('Destino').Value      := txtDestino.Text;
         Connection.qryBusca.Params.ParamByName('CC').DataType        := ftString ;
         Connection.qryBusca.Params.ParamByName('CC').Value           := txtCC.Text;
         Connection.qryBusca.Params.ParamByName('CCO').DataType       := ftString ;
         Connection.qryBusca.Params.ParamByName('CCO').Value          := txtCCO.Text;
         Connection.qryBusca.Params.ParamByName('Asunto').DataType    := ftString ;
         Connection.qryBusca.Params.ParamByName('Asunto').Value       := txtAsunto.Text;
         Connection.qryBusca.Params.ParamByName('Contenido').DataType := ftString ;
         Connection.qryBusca.Params.ParamByName('Contenido').Value    := txtTexto.Text;
         Connection.qryBusca.ExecSQL ;
    end
    else
    begin
         mUserMail[1] := txtDestino.Text;
         mUserMail[2] := txtCC.Text;
         muserMail[3] := txtCCO.Text;
         mUserMail[4] := txtAsunto.Text;
         mUserMail[5] := txtTexto.Text;
    end;

     frmConfiguraMail.Close;
end;

procedure TfrmConfiguraMail.cmdAceptKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
     cmdCancelar.SetFocus
end;

procedure TfrmConfiguraMail.cmdCancelarClick(Sender: TObject);
begin
     mUserMail[1] := '';
     mUserMail[2] := '';
     muserMail[3] := '';
     mUserMail[4] := '';
     mUserMail[5] := '';

     frmConfiguraMail.Close;
end;

procedure TfrmConfiguraMail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;



procedure TfrmConfiguraMail.FormShow(Sender: TObject);
begin
     LocalOpcion := '';
     //Busqueda de los datos del usuario..
     Connection.qryBusca.Active := False ;
     Connection.qryBusca.SQL.Clear ;
     Connection.qryBusca.SQL.Add('select * from usuarios where sIdUsuario =:Usuario and lEnviaCorreo = "Si" ') ;
     Connection.qryBusca.Params.ParamByName('Usuario').DataType := ftString ;
     Connection.qryBusca.Params.ParamByName('Usuario').Value    := global_Usuario;
     Connection.qryBusca.Open ;

     if connection.QryBusca.RecordCount > 0 then
     begin
          txtDestino.Text := connection.QryBusca.FieldValues['sDestino'];
          txtCC.Text      := connection.QryBusca.FieldValues['sCC'];
          txtCCO.Text     := connection.QryBusca.FieldValues['sCCO'];
          txtAsunto.Text  := connection.QryBusca.FieldValues['sAsunto'];
          txtTexto.Text   := connection.QryBusca.FieldValues['sContenido'];
          LocalOpcion     := 'Editar';
     end
     else
     begin
          mUserMail[1] := '';
          mUserMail[2] := '';
          muserMail[3] := '';
          mUserMail[4] := '';
          mUserMail[5] := '';
          LocalOpcion  := 'Nuevo';
     end;

end;

procedure TfrmConfiguraMail.txtAsuntoEnter(Sender: TObject);
begin
     txtAsunto.style.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtAsuntoExit(Sender: TObject);
begin
     txtAsunto.style.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtAsuntoKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
       txtTexto.SetFocus
end;

procedure TfrmConfiguraMail.txtCCEnter(Sender: TObject);
begin
     txtCC.style.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtCCExit(Sender: TObject);
begin
     txtCC.style.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtCCKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
       txtCCO.SetFocus
end;

procedure TfrmConfiguraMail.txtCCOEnter(Sender: TObject);
begin
     txtCCO.style.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtCCOExit(Sender: TObject);
begin
     txtCCO.style.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtCCOKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
       txtAsunto.SetFocus
end;

procedure TfrmConfiguraMail.txtDestinoEnter(Sender: TObject);
begin
     txtDestino.style.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtDestinoExit(Sender: TObject);
begin
      txtDestino.style.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtDestinoKeyPress(Sender: TObject; var Key: Char);
begin
    If key = #13 then
       txtCC.SetFocus
end;

procedure TfrmConfiguraMail.txtTextoEnter(Sender: TObject);
begin
     txtTexto.style.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtTextoExit(Sender: TObject);
begin
    txtTexto.style.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtTextoKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
     cmdAcept.SetFocus
end;

end.

