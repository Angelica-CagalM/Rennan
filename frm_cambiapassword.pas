unit frm_cambiapassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, frm_connection, global, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, Sockets,  DB, strUtils,
  ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlUpdate, unitexcepciones, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxTextEdit, MemDS, DBAccess, Uni;

type
  Tfrmcambiopassword = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnAdelante: TBitBtn;
    btnAbortar: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    tsIdUsuario: TcxTextEdit;
    tsPassword: TcxTextEdit;
    tsPassword1: TcxTextEdit;
    tsPassword2: TcxTextEdit;
    usuarios: TUniQuery;
    procedure btnAbortarClick(Sender: TObject);
    procedure tsPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure tsPasswordEnter(Sender: TObject);
    procedure tsPasswordExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdelanteClick(Sender: TObject);
    procedure tsPassword1Enter(Sender: TObject);
    procedure tsPassword1Exit(Sender: TObject);
    procedure tsPassword1KeyPress(Sender: TObject; var Key: Char);
    procedure tsPassword2Enter(Sender: TObject);
    procedure tsPassword2Exit(Sender: TObject);
    procedure tsPassword2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcambiopassword : Tfrmcambiopassword;
  intentos : byte ;
  mensaje  : string ;
  sVector   : Array [1..100] of String ;

implementation

uses frm_noil ;
{$R *.dfm}

procedure Tfrmcambiopassword.btnAbortarClick(Sender: TObject);
begin
  close
end;

procedure Tfrmcambiopassword.tsPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsPassword1.SetFocus 
end;

procedure Tfrmcambiopassword.tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsPassword.SetFocus
end;

procedure Tfrmcambiopassword.tsPasswordEnter(Sender: TObject);
begin
    tsPassword.Style.Color := global_color_entradaERP
end;

procedure Tfrmcambiopassword.tsPasswordExit(Sender: TObject);
begin
    tsPassword.Style.Color := global_color_salidaPU
end;

procedure Tfrmcambiopassword.FormShow(Sender: TObject);
begin
    tsIdUsuario.Text := global_usuario ;
    tsPassword.Text := '' ;
    tsPassword1.Text := '' ;
    tsPassword2.Text := '' ;
    tsPassword.SetFocus
end;

procedure Tfrmcambiopassword.btnAdelanteClick(Sender: TObject);
Begin

 If (tsIdUsuario.Text <> 'root') And (tsIdUsuario.Text <> 'ROOT') Then
  Begin
    If global_password = tsPassword.Text Then
        If tsPassword1.Text = tsPassword2.Text Then
            If global_password <> tsPassword1.Text Then
            Begin
                try
                    usuarios.Active := False ;
                    usuarios.SQL.Clear ;
                    usuarios.SQL.Add('UPDATE usuarios SET sPassword = AES_ENCRYPT(:Password, '+ QuotedStr('AES2016')+') Where sIdUsuario = :Usuario') ;
                    usuarios.Params.ParamByName('Usuario').DataType := ftString ;
                    usuarios.Params.ParamByName('Usuario').value := global_usuario ;
                    usuarios.Params.ParamByName('Password').DataType := ftString ;
                    usuarios.Params.ParamByName('Password').value := tsPassword1.Text ;
                    usuarios.ExecSQL ;
                    global_password := tsPassword2.Text;
                except
                    on e : exception do begin
                       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cambio de Password de Validacion/Autorizacion', 'Al salvar registro', 0);
                    end;
                end;

                application.MessageBox('Se ha cambiado su contraseña' , 'Noíl-DSAI') ;
                close ;
            End
            Else
              application.MessageBox('Error, la nueva contraseña debe ser diferente a la contraseña anterior.' , 'Noíl-DSAI')
        Else
            application.MessageBox('Error, la nueva contraseña y la confirmación de la nueva contraseña deben ser iguales' , 'Noíl-DSAI')
    Else
        application.MessageBox('Error, contraseña del Usuario incorrecta, introduzca la contraseña correcta.' , 'Noíl-DSAI') ;
end;
end ;

procedure Tfrmcambiopassword.tsPassword1Enter(Sender: TObject);
begin
    tsPassword1.Style.Color := global_color_entradaERP
end;

procedure Tfrmcambiopassword.tsPassword1Exit(Sender: TObject);
begin
    tsPassword1.Style.Color := global_color_salidaPU
end;

procedure Tfrmcambiopassword.tsPassword1KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsPassword2.SetFocus
end;

procedure Tfrmcambiopassword.tsPassword2Enter(Sender: TObject);
begin
    tsPassword2.Style.Color := global_color_entradaERP
end;

procedure Tfrmcambiopassword.tsPassword2Exit(Sender: TObject);
begin
    tsPassword2.Style.Color := global_color_salidaPU
end;

procedure Tfrmcambiopassword.tsPassword2KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnAdelante.SetFocus
end;

end.



