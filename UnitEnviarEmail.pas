unit UnitEnviarEmail;

interface
uses
  Messages,Dialogs,
  REST.Client, Data.Bind.Components, System.SysUtils,
  Data.Bind.ObjectScope, JSON, REST.Types,
  NetEncoding, EncdDecd, Classes,
  IdCoder, IdCoderMIME;


  Function Enviar_Email(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort:Integer; aplicaTLS:String): String;
  Function Convertir_FileToBase64(DirArchivo:String):AnsiString;
implementation

function Enviar_Email(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort: Integer; aplicaTLS:String): String;
var
  json_value: TJSONObject;
//  content: String;
  aParam: TRESTRequestParameter;
  LJsonObj: TJSONObject;
  jValue, LRows, nMsg: TJSONValue;
  responseMsg: TRESTResponse;
  clientMsg: TRESTClient;
  requestMsg: TRESTRequest;
  msg, encription: String;
  content,Resultado : AnsiString;
  slLinea : TStringList;
begin
try
  try
    //Obteber username apartir del correo
    slLinea := TStringList.Create;

    slLinea.Delimiter:='@'; //separador que utilizara DelimitedText
    slLinea.DelimitedText := sUsuario;


    if aplicaTLS='Si' then
      encription := 'tls';

    //Convertir Archivo adjunto a base 64 para poder enviarlo al json como string
   Resultado:= '';
   if not (sAdjunto='') then
   BEGIN
    Resultado :=  Convertir_FileToBase64(sAdjunto);
    Resultado := '"'+Resultado+'"';
   END;
    responseMsg := TRESTResponse.Create(nil);
    clientMsg   := TRESTClient.Create(nil);
    requestMsg  := TRESTRequest.Create(nil);
    clientMsg.BaseURL := 'http://74.208.182.122/api/sendmail';
    requestMsg.Client := clientMsg;
    requestMsg.Response := responseMsg;
    requestMsg.Method := rmPOST;
    content:='{'+
              '  "to": ['+sDestino+'],'+
              '  "username": "'+slLinea[0]+'",'+
              '  "password": "'+sClave+'",'+
              '  "encryption": "'+encription+'",'+
              '  "driver": "smtp",'+
              '  "host": "'+sServidor+'",'+
              '  "port": "'+IntToStr(iPort)+'",'+
              '  "from_adress": "'+sUsuario+'",'+
              '  "from_name": "automatizacion materialesyequipos",'+
              '  "subject": "'+sAsunto+'",'+
              '  "message": "'+sMensaje+'",'+
              '  "attachtments": ['+Resultado+']'+
              '}';
    {Agregar el contenido creado anteriormente haciendo el cast a tipo Json}
    aParam := requestMsg.Params.AddItem();
    aParam.Value := content;
    aParam.ContentType := ctAPPLICATION_JSON;
    requestMsg.Execute;

  {Recuperamos la respuesta del webservice}
    json_value := TJSONObject(responseMsg.JSONValue);
    msg := (json_value.GetValue('message').ToString);
  finally
    responseMsg.Free;
    clientMsg.free;
    requestMsg.free;;
  end;
Except
  on e:Exception do
  begin
    if pos('Error sending data',e.Message) > 0 then
    begin
      Msg:= 'Error de Acceso a Internet, no se pudo realizar el envío del correo electrónico. ' ;
    end
    else
    if pos('HTTP/1.1 500',e.Message) > 0 then
    begin
      Msg:= 'No fué posible realizar el envío de correo electrónico, verifique sus datos de configuración.';
    end
    else
      Msg:= e.Message;
  end;
end;
  result :=Msg;
end;

Function Convertir_FileToBase64(DirArchivo:String):AnsiString;
var
  SourceStr: TFileStream;
  Encoder: TIdEncoderMIME;
begin
  try
    if FileExists(DirArchivo) then
    begin
    SourceStr := TFileStream.Create(DirArchivo, fmOpenRead);
    Encoder := TIdEncoderMIME.Create(nil);
    result := Encoder.Encode(SourceStr);
    end
    else
      result := '';
  finally
    if FileExists(DirArchivo) then
    begin
    Encoder.Free;
    SourceStr.Free;
    end;
  end;
end;

end.
