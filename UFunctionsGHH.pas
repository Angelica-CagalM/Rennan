unit UFunctionsGHH;

interface
Uses ZConnection, Classes, ZDataSet, SysUtils,DB,Variants, Windows,global, frm_connection,utilerias,
      Controls,Jpeg,Graphics,ExtCtrls,Clipbrd,ShellApi,Messages,Dialogs,axctrls,strUtils,ComCtrls, uni;

Function Conectar(var conexion:TzConnection;Server,DataBase:string;Port:integer):boolean;
Function CompressImage(ArchOrig:TFilename;Porcentaje:Integer):TFilename;
Procedure MostrarBitmap(Const Bitmap:  TBitmap;Const Image:  TImage);
Function LoadGraphicsFile(Const Filename: String):  TBitmap;
Function ImagePasteFromClipBoard:TFilename;
Procedure MessageError(CAdena:WideString);
Function PermisosExportar(conexion:TUniConnection;Grupo,Programa:string):String;
Function SwbsPrincipal(psContrato,psConvenio,psTipo,psItemO:String;ptconexion:TzConnection):string;
Function AjustarCadena(cadena:String):String;Overload;
Function AjustarCadena(cadena:String;Area:Integer):String;Overload;
Function AjustarCadena(cadena:String;Area:Integer;Inicio:Boolean):String;Overload;
Function GetItemOrden(ItemPredecesor,ItemSucesor:String;Level:Integer):String;
Function GetProjectText(var Task:Variant; PosText:Integer):String;
Function ValidaOTProject(var ActProject:Variant;PgbAvance: TProgressBar=nil):Boolean;
Function GetPrjField(Var Task:Variant;Const Id:LongInt):Variant;
Function ShowBasicVariantType(varVar: Variant):String;
function MyCopyFields(Destino:TDataSet;Fuente: TDataSet): Integer;
Function sHrsToExt(Horas:String):Extended;
type
  TeFilter = (prNinguno,prIgual,prDiferente,prMayor,prMayorIgual,prMenor,prMenorIgual);

  TContrato=class
  public
    Id:string;
    sContrato:string;
    sNumeroOrden:string;
  end;

const
  NCero=20;
  NLevel=20;

implementation

Function sHrsToExt(Horas:String):Extended;
var
  iHoras,iMinutos:Integer;
  iSegundos:Extended;
  TmpCad,TmpHr,TmpMin,TmpSeg:String;
  PosSep:Integer;
begin
  TmpCad:=Horas;
  PosSep:=Pos(':',Tmpcad);
  if PosSep>0 then
  begin
    TmpHr:=AnsiMidStr(TmpCad,1,PosSep-1);
    TmpCad:=AnsiMidStr(TmpCad,PosSep+1,Length(TmpCad)-PosSep);

  end;

  PosSep:=Pos(':',Tmpcad);
  if PosSep>0 then
  begin
    TmpMin:=AnsiMidStr(TmpCad,1,PosSep-1);
    TmpCad:=AnsiMidStr(TmpCad,PosSep+1,Length(TmpCad)-PosSep);
  end
  else
    if Tmpcad<>'' then
    begin
      TmpMin:=Tmpcad;
      TmpCad:='';
    end;

  if TmpCad<>'' then
    TmpSeg:=TmpCad;

  iHoras:=StrToIntDef(TmpHr,0) * 60;
  iMinutos:=StrToIntDef(TmpMin,0);
  iSegundos:=StrToIntDef(TmpSeg,0)/60;

  Result:=(iHoras + iMinutos + iSegundos)/1440;

end;

function MyCopyFields(Destino:TDataSet;Fuente: TDataSet): Integer;
// copies matching fields in current records- returns number of fields copied
var
  c: Integer;
  Campodestino, CAmpoFuente: TField;
begin
          // **************************************************************************************
                      // ** Barrer todos los campos de destino, localizarlos en fuente y copiarlos tal cual
                      // **************************************************************************************
  C := 0;
  try
    while C < Destino.FieldCount do
    Begin
      CampoDestino := Destino.Fields[C];    // Utilizar variables de campo para simplificar el código
      CampoFuente := Fuente.FindField(CampoDestino.FieldName);


  //  CampoFuente.DataType
      if Assigned(CampoFuente) then     // Verificar si se ha localizado el campo en la tabla fuente
      begin
        if ((campodestino.DataType=ftMemo) or (campodestino.DataType=ftfmtMemo) or (campodestino.DataType=ftWideMemo))  and (length(trim(campofuente.AsString))=0) then
          Destino.FieldValues[campodestino.FieldName]:='*'
        else
          Destino.FieldValues[campodestino.FieldName] := CampoFuente.Value // Si se ha localizado en ambas tablas, se debe asignar el valor fuente a la tabla destino
      end Else
        if (CampoDestino.Required) then // SI no se encuentra el campo, se debe verificar si el campo en destino es requerido (NOT NULL)
        begin
         // Ok, cuando entra en esta parte se supone que el campo no se encuentra dentro de la tabla fuente pero si en la destino
      // se debe verificar primero si el campo que falta de asignar es un campo establecido como NOT-NUL en la base de datos
          Case campodestino.DataType Of
            ftString, ftWideString: Destino.FieldValues[campodestino.FieldName] := '';             // Cadenas poner a nada
            ftSmallInt, ftInteger, ftLargeInt,
            ftWord, ftBytes: Destino.FieldValues[campodestino.FieldName] := 0;                     // Enteros poner el valor a cero
            ftFloat, ftCurrency: Destino.FieldValues[campodestino.FieldName] := 0.00;              // Decimales poner a ceros
            ftDate: Destino.Fieldbyname(campodestino.FieldName).AsInteger := Trunc(Now);                 // Fechas poner el día de hoy
            ftTime, ftTimeStamp: Destino.FieldValues[campodestino.FieldName] := Time;
            ftDateTime: Destino.FieldValues[campodestino.FieldName] := Now;
            ftMemo, ftfmtMemo, ftWideMemo: Destino.FieldValues[campodestino.FieldName] := '';     // Campos memo dejar un espacio en blanco (parace que este es el error
          End;
        // Si se trata de un campo requerido se debe analizar cual es su tipo y entonces se deberá asignar el
        // valor por default o bien un 0 o un '' dependiendo de su tipo en caso de no contar con valor por default
                    // Si es NULO y no requerido se debe asignar valor de nada segun su tipo
          // Si es numerico y no requerido se debe asignar valor de 0
        end;
      Inc(C);
    End;
  finally
    result:=c;
  end;
end;


Function AjustarCadena(cadena:String;Area:Integer;Inicio:Boolean):String;
var
  I,x:Integer;
  CadTmp,CadSpace:String;
begin
  CadTmp:=trim(cadena);
  i:=Area - Length(cadTmp);
  CadSpace:='';
  for x := 1 to i do
    CadSpace:=CadSpace + ' ';

  if Inicio then
    CadTmp:=CadSpace + CadTmp
  else
    CadTmp:=CadTmp + CadSpace;
  result:='´' + cadTmp + '´';

end;

Function AjustarCadena(cadena:String;Area:Integer):String;Overload;
var
  CadTmp,CadRes:string;
  i,cCaracter,Mitad,TamCad:Integer;

begin
  CadTmp:=trim(Cadena);
  TamCad:=Length(CadTmp);
  Mitad:=Trunc(Tamcad/2);
  cCaracter:=1;
  CadRes:='´';
  for i := 1 to Area do
  begin
    if (i>=(Trunc(Area/2)-Mitad)) and (cCaracter<=Tamcad) then
    begin
      cadRes:=CadRes+CadTmp[CCaracter];
      Inc(cCaracter);
    end
    else
      cadRes:=CadRes+' ';
  end;
  CadRes:=CadRes+'´';
  Result:=CadRes;
end;

Function AjustarCadena(Cadena:String):String;
const
  Area=40;
var
  CadTmp,CadRes:string;
  i,cCaracter,Mitad,TamCad:Integer;

begin
  CadTmp:=trim(Cadena);
  TamCad:=Length(CadTmp);
  Mitad:=Trunc(Tamcad/2);
  cCaracter:=1;
  CadRes:='´';
  for i := 1 to Area do
  begin
    if (i>=(Trunc(Area/2)-Mitad)) and (cCaracter<=Tamcad) then
    begin
      cadRes:=CadRes+CadTmp[CCaracter];
      Inc(cCaracter);
    end
    else
      cadRes:=CadRes+' ';
  end;
  CadRes:=CadRes+'´';
  Result:=CadRes;
end;

Function SwbsPrincipal(psContrato,psConvenio,psTipo,psItemO:String;ptconexion:TzConnection):string;
var
  error:Boolean;
  QrAct:TzReadOnlyQuery;
begin
  result:='';
  Error:=false;
  QrAct:=TzReadOnlyQuery.Create(nil);
  QrAct.Connection:=ptconexion;
  QrAct.SQL.Text:='select swbs from actividadesxanexo where scontrato=:contrato '+
                  'and sidconvenio=:convenio and stipoActividad=:tipo ' +
                  'and swbsanterior=:item';
  QrAct.ParamByName('contrato').AsString:=pscontrato;
  QrAct.ParamByName('convenio').AsString:=psconvenio;
  QrAct.ParamByName('tipo').AsString:=psTipo;
  QrAct.ParamByName('item').AsString:=psItemO;

  try
    try
      QrAct.Open
    except
      error:=true;
    end;

    if not error then
    begin
      if QrAct.RecordCount>0 then
        result:=QrAct.FieldByName('swbs').AsString;
    end;
  finally
    freeandnil(QrAct);
  end;
end;

Function PermisosExportar(conexion:TUniConnection;Grupo,Programa:string):String;
var
  QrPermisosExp:tUniQuery;
  Error:boolean;
begin
  result:='';
  Error:=false;
  QrPermisosExp:=tUniQuery.Create(nil);
  QrPermisosExp.Connection:=conexion;
  QrPermisosExp.SQL.Text:='SELECT sFormatos ' +
                          'FROM gruposxprograma ' +
                          'WHERE sIdGrupo = :grupo AND sIdPrograma = :modulo';
  QrPermisosExp.ParamByName('grupo').AsString:=grupo;
  QrPermisosExp.ParamByName('modulo').AsString:=Programa;
  try
    try
      QrPermisosExp.Open;
    except
      error:=true;
    end;

    if not error then
    begin
      if QrPermisosExp.RecordCount=1 then
        result:=QrPermisosExp.FieldByName('sFormatos').AsString;
    end;
  finally
    freeandnil(QrPermisosExp);
  end;
end;

Procedure MessageError(Cadena:widestring);
begin
  MessageDlg(Cadena,Mterror,[mbok],0);
end;

Function ImagePasteFromClipboard:TFilename;
var
  f : TFileStream;
  Jpg : TJpegImage;
  Hand : THandle;
  Buffer : Array [0..MAX_PATH] of Char;
  numFiles : Integer;
  File_Name : String;
  Jpg_Bmp : String;
  BitMap : TBitMap;
  ImageAux : TImage;
  Picture : TPicture;
  TempPath: array [0..MAX_PATH-1] of Char;
  FNombre:TFileName;
begin
  ImageAux := TImage.Create(nil);
  Result:='';

  if Clipboard.HasFormat(CF_HDROP) then   //Checar si es Drag and Drop
  begin
    Clipboard.Open;
    try
      Hand := Clipboard.GetAsHandle(CF_HDROP);
      If Hand <> 0 then
      begin
        numFiles := DragQueryFile(Hand, $FFFFFFFF, nil, 0) ;
        if numFiles > 1 then
        begin
          Clipboard.Close;
          ImageAux.Free;
          MessageError('El Portapapeles contiene más de un único fichero. No es posible pegar');
          Exit;
        end;
        Buffer[0] := #0;
        DragQueryFile( Hand, 0, buffer, sizeof(buffer)) ;
        File_Name := buffer;
      end;
    finally
      Clipboard.close;
    end;

    f := TFileStream.Create(File_Name, fmOpenRead);
    Jpg := TJpegImage.Create;
    Bitmap := TBitmap.Create;

    try        //Checar si es un JPG o BMP
      Jpg.LoadFromStream(f);
      ImageAux.Picture.Assign(Jpg);
      Jpg_Bmp := 'JPG';
    except
      f.seek(0,soFromBeginning);
      Jpg_Bmp := '';
    end;

    if Jpg_Bmp = '' then
    begin
      try
        Bitmap.LoadFromStream(f);
        Jpg.Assign(Bitmap);
        ImageAux.Picture.Assign(Jpg);
        Jpg_Bmp := 'BMP';
      except
        Jpg_Bmp := '';
      end;
    end;

    Jpg.Free;
    Bitmap.Free;
    f.Free;

    GetTempPath(SizeOf(TempPath), TempPath);
    FNombre:=TempPath +'ClpbtempGHH'+formatdatetime('dddddd hhnnss',now)+'.jpg';

    try
      if Jpg_Bmp = '' then
      begin
        MessageError('Fichero seleccionado no contiene ninguna Imagen del Tipo JPEG o BMP');
      end
      else
      begin
        ImageAux.Picture.SaveToFile(FNombre);
        Result:=CompressImage(FNombre,90);
      end;
    finally
      ImageAux.Free;
      if FileExists(FNombre) then
        DeleteFile(Pchar(FNombre));
   end;

  end
  else
    if (Clipboard.HasFormat(CF_BITMAP))  or (Clipboard.HasFormat(CF_PICTURE)) then
      ImageAux.Picture.Assign(Clipboard)
    else
    begin
      ImageAux.Free;
      MessageError('El Portapapeles no contiene ninguna Imagen del Tipo JPEG o BMP');
      Exit;
    end;

    GetTempPath(SizeOf(TempPath), TempPath);
    FNombre:=TempPath +'ClpbtempGHH'+formatdatetime('dddddd hhnnss',now)+'.jpg';
    Jpg := TJpegImage.Create;
    Picture := TPicture.Create;
    try
      try
        if (Clipboard.HasFormat(CF_BITMAP)) then
        begin
          Jpg.Assign(ImageAux.Picture.Graphic);
          jpg.SaveToFile(FNombre);
          Result:=CompressImage(FNombre,90);
        end;
        if (Clipboard.HasFormat(CF_PICTURE)) then
        begin
          Picture.Assign(Clipboard);
          Picture.SaveToFile(FNombre);
          Result:=CompressImage(FNombre,90);
        end;
      except
        on e:Exception do
        begin
          ImageAux.Free;
          MessageError('El Portapapeles no contiene ninguna Imagen del Tipo JPEG o BMP');
        end;
      end;
    finally
      if Fileexists(Fnombre) then
        DeleteFile(PChar(FNombre));
      freeandnil(Jpg);
      FreeandNil(Picture);
    end;
end;

Function LoadGraphicsFile(Const Filename: String):  TBitmap;
Var
  Picture: TPicture;
  f : TFileStream;
  graphic : TOleGraphic;
Begin
  Result := NIL;
  If FileExists(Filename) Then
  Begin
    Result := TBitmap.Create;
    Try
      Picture := TPicture.Create;
      graphic := TOleGraphic.Create;
      Try
        f := TFileStream.Create (Filename,fmOpenRead or fmShareDenyNone);
        try
          try
            Graphic.LoadFromStream(f);
            Picture.Assign(Graphic);
          except
            on e:exception do
            begin
              if e.ClassName='EOleSysError' then
              begin
                try
                  Picture.LoadFromFile(Filename);
                except
                  Result:=nil;
                end;
              end;
            end;
          end;
          Try
            Result.Assign(Picture.Graphic);
          Except
            Result.Width  := Picture.Graphic.Width;
            Result.Height := Picture.Graphic.Height;
            Result.PixelFormat := pf24bit;
            Result.Canvas.Draw(0, 0, Picture.Graphic);
          End;
        finally
          freeandnil(f);
        end;
      Finally
        Picture.Free;
        freeandnil(graphic);
      End;
    Except
      Result.Free;
      Raise;
    End;
  End;
End;

Procedure MostrarBitmap(Const Bitmap:  TBitmap;Const Image :  TImage);
Var
    Half      :  INTEGER;
    Height    :  INTEGER;
    NewBitmap :  TBitmap;
    TargetArea:  TRect;
    Width     :  INTEGER;
Begin
  NewBitmap := TBitmap.Create;
  TRY
    NewBitmap.Width  := Image.Width;
    NewBitmap.Height := Image.Height;
    NewBitmap.PixelFormat := pf24bit;
    NewBitmap.Canvas.FillRect(NewBitmap.Canvas.ClipRect);
    If (Bitmap.Width / Bitmap.Height) < (Image.Width / Image.Height)Then
    Begin
      TargetArea.Top    := 0;
      TargetArea.Bottom := NewBitmap.Height;
      Width := MulDiv(NewBitmap.Height, Bitmap.Width, Bitmap.Height);
      Half := (NewBitmap.Width - Width) DIV 2;
      TargetArea.Left  := Half;
      TargetArea.Right := TargetArea.Left + Width;
    End
    Else
    Begin
      TargetArea.Left    := 0;
      TargetArea.Right   := NewBitmap.Width;
      Height := MulDiv(NewBitmap.Width, Bitmap.Height, Bitmap.Width);
      Half := (NewBitmap.Height - Height) DIV 2;
      TargetArea.Top    := Half;
      TargetArea.Bottom := TargetArea.Top + Height
    End;
    NewBitmap.Canvas.StretchDraw(TargetArea, Bitmap);
    Image.Picture.Graphic := NewBitmap
  Finally
    NewBitmap.Free
  End;
End;

Function CompressImage(ArchOrig:TFilename;Porcentaje:Integer):TFilename;
var
  Aux,Original,pantalla:Timage;
  TempPath: array [0..MAX_PATH-1] of Char;
  jpg:TJpegImage;
  Bitmap,bmp: TBitmap;
  Alto,Ancho,Comp:Integer;
  FNombre:TFileName;
  f : TFileStream;
  graphic : TOleGraphic;
begin
  Result:='';
  Comp:=Porcentaje;
  if (Porcentaje=0) or (Porcentaje>100) then
    Comp:=100;
  if Length(trim(ArchOrig))>0 then
  begin
    if FileExists(ArchOrig) then
    begin
      ancho:=0;
      Alto:=0;
      Original:=Timage.Create(nil);
      graphic := TOleGraphic.Create;

      Original.AutoSize:=true;
      try
        f := TFileStream.Create (ArchOrig,fmOpenRead or fmShareDenyNone);
        try
          try
            graphic.LoadFromStream(f);
            Original.Picture.Assign(graphic);
          except
            on e:Exception do
            begin
              if e.ClassName='EOleSysError' then
              begin
                try
                  Original.Picture.LoadFromFile(ArchOrig);
                except
                  Result:='';
                end;
              end;
            end;
          end;
        finally
          f.Free;
        end;
        Ancho:=Original.Width;
        Alto:=Original.Height;
      finally
        freeandnil(Original);
        freeandnil(graphic);
      end;

      if Alto>2000 then
      begin
        Alto:=trunc(alto/3);
        Ancho:=trunc(Ancho/3);
      end
      else
      begin
        if Alto>1000 then
        begin
          Alto:=trunc(alto/2);
          Ancho:=trunc(Ancho/2);
        end;
      end;

      Aux:=Timage.Create(nil);
      Aux.Width:=ancho;
      Aux.Height:=alto;
      Bitmap := TBitmap.Create;
      Bitmap.Width  := aux.Width;
      Bitmap.Height := aux.Height;
      Bitmap.PixelFormat := pf24bit;
      Bitmap.Canvas.Brush.Color := clRed;
      Bitmap.Canvas.FillRect(Bitmap.Canvas.ClipRect);
      MostrarBitmap(Bitmap, Aux);
      Bitmap.Free;
      Bitmap := LoadGraphicsFile(ArchOrig);
      MostrarBitmap(Bitmap, Aux);

      try
        GetTempPath(SizeOf(TempPath), TempPath);
        FNombre:=TempPath +'imgtempGHH'+formatdatetime('dddddd hhnnss',now)+'.jpg'; //'imgtemp2327ghh.jpg';
        jpg := TJpegImage.Create;
        bmp := TBitmap.Create;
        bmp.Assign(aux.Picture.Bitmap);
        jpg.Assign(Bmp);
        Pantalla:=Timage.Create(nil);

        try
          jpg.CompressionQuality := comp;
          jpg.Compress;
          try
            pantalla.Picture.Assign(jpg);
          except
            pantalla.Picture.Assign(nil);
          end;
          pantalla.Picture.SaveToFile(fNombre);
        finally
          freeandnil(jpg);
          freeandnil(pantalla);
          freeandnil(bmp);
        end;
      finally
        freeandnil(Aux);
        freeandnil(Bitmap);
        if fileexists(FNombre)  then
        begin
          Result:=FNombre;
        end;
      end;
    end;
  end;
end;

Function Conectar(var conexion:TzConnection;Server,DataBase:string;Port:integer):boolean;
var
  error,isroot:boolean;
  QrAcceso:TzReadOnlyQuery;
  local_Pass:String;
begin
  error:=false;
  isRoot:=false;
  Conexion.Disconnect;
  Conexion.HostName:=Global_ServAcceso;
  Conexion.Database:='';
  Conexion.Catalog:='';
  Conexion.Port:=Global_PortAcceso;
  Conexion.User:=IntelUser;
  Conexion.Password:=NoilPass;
  conexion.Protocol:=connection.zConnection.Protocol;
  try
    Conexion.Connect;
  except
    on e:exception do
    begin
      if pos('Access denied',e.message)>0 then
      begin
        Conexion.Disconnect;
        Conexion.User :=IntelUser;
        Conexion.Password :=NoilPass ;
        conexion.HostName:=server;
        Conexion.Database := '' ;
        Conexion.Catalog := '' ;
        conexion.Port:=port;
        conexion.Protocol:=connection.zConnection.Protocol;
        Try
          Conexion.Connect ;
        except
          on e : exception do
          begin
            if pos('Access denied',e.message)>0 then
            begin
              Conexion.Disconnect;
              Conexion.User :='root';
              Conexion.Password :=NoilPass ;
              conexion.HostName:=server;
              Conexion.Database := database ;
              Conexion.Catalog := database ;
              conexion.Port:=port;
              conexion.Protocol:=connection.zConnection.Protocol;
              Try
                Conexion.Connect ;
                isRoot:=true;
              except
                error:=true;
              End;
            end
            else
              error:=true;
          end;
        End;

        if not error then
        begin
          If not Conexion.Ping Then
          begin
              error:=true;
          end;
        end;
      end
      else
        error:=true;
    end;
  end;

  if not error then
  begin
    if conexion.Ping then
    begin
      if not isroot then
      begin
        QrAcceso:=TzReadOnlyquery.Create(nil);
        QrAcceso.Connection:=Conexion;
        QrAcceso.SQL.Text:='select * from adminintel.acceso where user=' + quotedstr(global_bduser) +
                              ' and servidor=' +quotedstr(server);
        try
          QrAcceso.Open;
        except
          on E:exception do
          begin
            error:=true;
          end;
        end;

        if not error then
        begin
          try
            if QrAcceso.RecordCount=1 then
              local_Pass:=desencripta(QrAcceso.FieldByName('password').AsString)
            else
              local_Pass:=NoilPass;

          finally
            freeandnil(QrAcceso);
          end;

          Conexion.Disconnect;
          Conexion.HostName := server ;
          Conexion.Port := port;
          Conexion.User :=global_bduser;
          Conexion.Password :=Local_pass;
          Conexion.Database :=database ;
          conexion.Protocol:=connection.zConnection.Protocol;

          try
            Conexion.Connect;
          except
            on E:exception do
              error:=true;
          end;
        end;
      End;
    end;
  end;
  result:=not error;
end;

Function GetITemOrden(ItemPredecesor,ItemSucesor:String;Level:Integer):String;
var
  TmpOrden:String;
  NewList:TStringList;
  PriorList,NextList:TstringList;
  ModePrior,ModeNext,ModeNow:String;
  NumSecc:Integer;
  iPos:Integer;
  PosDigitPrior,DigitPrior,
  PosDigitNext,DigitNext:Byte;
  Res:String;
  CadCero:String;
begin
  NewList:=TStringList.Create;
  PriorList:=TstringList.Create;
  NextList:=TStringlist.Create;
  try
    Res:='';
    PriorList.Delimiter:='.';
    CadCero:=DupeString('0',nCero);

    if Length(trim(ItemPredecesor))>0 then
      PriorList.DelimitedText:=ItemPredecesor
    else
      PriorList.DelimitedText:=DupeString(CadCero + '.',nLevel)+cadCero;

    NextList.Delimiter:='.';
    if Length(trim(ItemSucesor))>0 then
      NextList.DelimitedText:=ItemSucesor
    else
      NextList.DelimitedText:=DupeString(CadCero + '.',nLevel)+cadCero;

    NewList.Delimiter:='.';
    NewList.DelimitedText:=DupeString(CadCero + '.',nLevel)+cadCero;

    for IPos := 0 to level-1 do
      NewList[iPos]:=PriorList[IPos];

    ModePrior:=PriorList[Level];
    ModeNext:=NextList[Level];
    ModeNow:=NewList[Level];
    TmpOrden:=ModeNow;
    NumSecc:=Length(ModePrior);
    PosDigitPrior:=0;
    PosDigitNext:=NumSecc;
    for IPos := 1 to NumSecc do
    begin
      if ModePrior[Ipos]<>ModeNext[Ipos] then
      begin
        DigitPrior:=StrToInt(ModePrior[Ipos]);
        DigitNext:=StrToInt(ModeNext[Ipos]);
        if DigitPrior<>0 then
          PosDigitPrior:=Ipos;
        if DigitNext=0 then
        begin
          if DigitPrior<9 then
          begin
            Inc(DigitPrior);
            ModeNow[Ipos]:=char(DigitPrior+48);
          end
          else
          begin
            ModeNow[Ipos-1]:='1';
            ModeNow[Ipos]:='0';
          end;
        end
        else
        begin
          if (DigitNext-DigitPrior)=1 then
            ModeNow[Ipos]:=ModePrior[Ipos]
          else
            if DigitNext<9 then
            begin
              Inc(DigitPrior);
              ModeNow[Ipos]:=char(DigitPrior+48);
            end
            else
            begin
              PosDigitNext:=Ipos;
              ModeNow[Ipos]:=ModePrior[Ipos];
            end;
        end;
      end
      else
        ModeNow[Ipos]:=ModePrior[Ipos];
    end;

    if ModeNow=TmpOrden then
      ModeNow[trunc(NumSecc/2)]:='1';

    if ModeNow=ModePrior then
      ModeNow[PosDigitPrior+trunc((PosDigitNext-PosDigitPrior)/2)+1]:='9';

    NewList[Level]:=ModeNow;
    res:=NewList.DelimitedText;
  finally
    NewList.Destroy;
    PriorList.Destroy;
    NextList.Destroy;
  end;
  result:=res;
end;

Function ValidaOTProject(var ActProject:Variant;PgbAvance: TProgressBar=nil):Boolean;
var
  Reng:Integer;
  Task:Variant;
begin
 (*
  for Reng:=0 to ActProject.Tasks.Count-1 do
  begin
      Task:=ActProject.Tasks.item[Reng+1];

      iNivel := Task.outlinelevel;
      ImpsNumeroActividad :=GetProjectText(Task,PosPda+1);

      ImpmDescripcion := Task.Name;
      ImpdCantidadAnexo :=1;
      if PosPonderado>0 then
        ImpdPonderado := GetProjectText(Task,PosPonderado)
      else
        ImpdPonderado :='0';
      ImpdFechaInicio := Task.start;
      ImpdFechaFinal := Task.Finish;

      if not Task.Summary then
      begin
        ImpsMedida:='Actividad';
        ImpsTipo:='ADM';
        sTipo:='Actividad';
      end
      else
      begin
        ImpsMedida:='';
        ImpsTipo:='ADM';
        sTipo:='Paquete';
      end;
      sWbs:=Task.wbs;
      iPos:=LastDelimiter('.',sWbs);
      CadTmp:='';
      if iPos>0 then
        CadTmp:=AnsiMidStr(sWbs,1,iPos-1);
  end;     *)
end;



function GetProjectText(var Task: Variant; PosText: Integer):String;
var
  Res:String;
begin
  res:='';
  case PosText of
    1:  res:=Task.text1;
    2:  res:=Task.text2;
    3:  res:=Task.text3;
    4:  res:=Task.text4;
    5:  res:=Task.text5;
    6:  res:=Task.text6;
    7:  res:=Task.text7;
    8:  res:=Task.text8;
    9:  res:=Task.text9;
    10: res:=Task.text10;
    11: res:=Task.text11;
    12: res:=Task.text12;
    13: res:=Task.text13;
    14: res:=Task.text14;
    15: res:=Task.text15;
    16: res:=Task.text16;
    17: res:=Task.text17;
    18: res:=Task.text18;
    19: res:=Task.text19;
    20: res:=Task.text20;
    21: res:=Task.text21;
    22: res:=Task.text22;
    23: res:=Task.text23;
    24: res:=Task.text24;
    25: res:=Task.text25;
    26: res:=Task.text26;
    27: res:=Task.text27;
    28: res:=Task.text28;
    29: res:=Task.text29;
    30: res:=Task.text30;
  else
    res:='';
  end;
  Result:=res;
end;



Function GetPrjField(Var Task:Variant;Const Id:LongInt):Variant;
{$Region 'Constantes Task de MsProject'}
const
  pjTaskWork = $0B400000;
  pjTaskBaselineWork = $0B400001;
  pjTaskActualWork = $0B400002;
  pjTaskWorkVariance = $0B400003;
  pjTaskRemainingWork = $0B400004;
  pjTaskCost = $0B400005;
  pjTaskBaselineCost = $0B400006;
  pjTaskActualCost = $0B400007;
  pjTaskFixedCost = $0B400008;
  pjTaskCostVariance = $0B400009;
  pjTaskRemainingCost = $0B40000A;
  pjTaskBCWP = $0B40000B;
  pjTaskBCWS = $0B40000C;
  pjTaskSV = $0B40000D;
  pjTaskName = $0B40000E;
  pjTaskNotes = $0B40000F;
  pjTaskWBS = $0B400010;
  pjTaskConstraintType = $0B400011;
  pjTaskConstraintDate = $0B400012;
  pjTaskCritical = $0B400013;
  pjTaskLevelDelay = $0B400014;
  pjTaskFreeSlack = $0B400015;
  pjTaskTotalSlack = $0B400016;
  pjTaskID = $0B400017;
  pjTaskMilestone = $0B400018;
  pjTaskPriority = $0B400019;
  pjTaskSubproject = $0B40001A;
  pjTaskBaselineDuration = $0B40001B;
  pjTaskActualDuration = $0B40001C;
  pjTaskDuration = $0B40001D;
  pjTaskDurationVariance = $0B40001E;
  pjTaskRemainingDuration = $0B40001F;
  pjTaskPercentComplete = $0B400020;
  pjTaskPercentWorkComplete = $0B400021;
  pjTaskFixedDuration = $0B400022;
  pjTaskStart = $0B400023;
  pjTaskFinish = $0B400024;
  pjTaskEarlyStart = $0B400025;
  pjTaskEarlyFinish = $0B400026;
  pjTaskLateStart = $0B400027;
  pjTaskLateFinish = $0B400028;
  pjTaskActualStart = $0B400029;
  pjTaskActualFinish = $0B40002A;
  pjTaskBaselineStart = $0B40002B;
  pjTaskBaselineFinish = $0B40002C;
  pjTaskStartVariance = $0B40002D;
  pjTaskFinishVariance = $0B40002E;
  pjTaskPredecessors = $0B40002F;
  pjTaskSuccessors = $0B400030;
  pjTaskResourceNames = $0B400031;
  pjTaskResourceInitials = $0B400032;
  pjTaskText1 = $0B400033;
  pjTaskStart1 = $0B400034;
  pjTaskFinish1 = $0B400035;
  pjTaskText2 = $0B400036;
  pjTaskStart2 = $0B400037;
  pjTaskFinish2 = $0B400038;
  pjTaskText3 = $0B400039;
  pjTaskStart3 = $0B40003A;
  pjTaskFinish3 = $0B40003B;
  pjTaskText4 = $0B40003C;
  pjTaskStart4 = $0B40003D;
  pjTaskFinish4 = $0B40003E;
  pjTaskText5 = $0B40003F;
  pjTaskStart5 = $0B400040;
  pjTaskFinish5 = $0B400041;
  pjTaskText6 = $0B400042;
  pjTaskText7 = $0B400043;
  pjTaskText8 = $0B400044;
  pjTaskText9 = $0B400045;
  pjTaskText10 = $0B400046;
  pjTaskMarked = $0B400047;
  pjTaskFlag1 = $0B400048;
  pjTaskFlag2 = $0B400049;
  pjTaskFlag3 = $0B40004A;
  pjTaskFlag4 = $0B40004B;
  pjTaskFlag5 = $0B40004C;
  pjTaskFlag6 = $0B40004D;
  pjTaskFlag7 = $0B40004E;
  pjTaskFlag8 = $0B40004F;
  pjTaskFlag9 = $0B400050;
  pjTaskFlag10 = $0B400051;
  pjTaskRollup = $0B400052;
  pjTaskCV = $0B400053;
  pjTaskProject = $0B400054;
  pjTaskOutlineLevel = $0B400055;
  pjTaskUniqueID = $0B400056;
  pjTaskNumber1 = $0B400057;
  pjTaskNumber2 = $0B400058;
  pjTaskNumber3 = $0B400059;
  pjTaskNumber4 = $0B40005A;
  pjTaskNumber5 = $0B40005B;
  pjTaskSummary = $0B40005C;
  pjTaskCreated = $0B40005D;
  pjTaskSheetNotes = $0B40005E;
  pjTaskUniquePredecessors = $0B40005F;
  pjTaskUniqueSuccessors = $0B400060;
  pjTaskObjects = $0B400061;
  pjTaskLinkedFields = $0B400062;
  pjTaskResume = $0B400063;
  pjTaskStop = $0B400064;
  pjTaskResumeNoEarlierThan = $0B400065;
  pjTaskOutlineNumber = $0B400066;
  pjTaskDuration1 = $0B400067;
  pjTaskDuration2 = $0B400068;
  pjTaskDuration3 = $0B400069;
  pjTaskCost1 = $0B40006A;
  pjTaskCost2 = $0B40006B;
  pjTaskCost3 = $0B40006C;
  pjTaskHideBar = $0B40006D;
  pjTaskConfirmed = $0B40006E;
  pjTaskUpdateNeeded = $0B40006F;
  pjTaskContact = $0B400070;
  pjTaskResourceGroup = $0B400071;
  pjTaskACWP = $0B400078;
  pjTaskType = $0B400080;
  pjTaskRecurring = $0B400081;
  pjTaskEffortDriven = $0B400084;
  pjTaskParentTask = $0B400087;
  pjTaskOvertimeWork = $0B4000A3;
  pjTaskActualOvertimeWork = $0B4000A4;
  pjTaskRemainingOvertimeWork = $0B4000A5;
  pjTaskRegularWork = $0B4000A6;
  pjTaskOvertimeCost = $0B4000A8;
  pjTaskActualOvertimeCost = $0B4000A9;
  pjTaskRemainingOvertimeCost = $0B4000AA;
  pjTaskFixedCostAccrual = $0B4000C8;
  pjTaskIndicators = $0B4000CD;
  pjTaskHyperlink = $0B4000D9;
  pjTaskHyperlinkAddress = $0B4000DA;
  pjTaskHyperlinkSubAddress = $0B4000DB;
  pjTaskHyperlinkHref = $0B4000DC;
  pjTaskIsAssignment = $0B4000E0;
  pjTaskOverallocated = $0B4000E1;
  pjTaskExternalTask = $0B4000E8;
  pjTaskSubprojectReadOnly = $0B4000F6;
  pjTaskResponsePending = $0B4000FA;
  pjTaskTeamStatusPending = $0B4000FB;
  pjTaskLevelCanSplit = $0B4000FC;
  pjTaskLevelAssignments = $0B4000FD;
  pjTaskWorkContour = $0B400100;
  pjTaskCost4 = $0B400102;
  pjTaskCost5 = $0B400103;
  pjTaskCost6 = $0B400104;
  pjTaskCost7 = $0B400105;
  pjTaskCost8 = $0B400106;
  pjTaskCost9 = $0B400107;
  pjTaskCost10 = $0B400108;
  pjTaskDate1 = $0B400109;
  pjTaskDate2 = $0B40010A;
  pjTaskDate3 = $0B40010B;
  pjTaskDate4 = $0B40010C;
  pjTaskDate5 = $0B40010D;
  pjTaskDate6 = $0B40010E;
  pjTaskDate7 = $0B40010F;
  pjTaskDate8 = $0B400110;
  pjTaskDate9 = $0B400111;
  pjTaskDate10 = $0B400112;
  pjTaskDuration4 = $0B400113;
  pjTaskDuration5 = $0B400114;
  pjTaskDuration6 = $0B400115;
  pjTaskDuration7 = $0B400116;
  pjTaskDuration8 = $0B400117;
  pjTaskDuration9 = $0B400118;
  pjTaskDuration10 = $0B400119;
  pjTaskStart6 = $0B40011A;
  pjTaskFinish6 = $0B40011B;
  pjTaskStart7 = $0B40011C;
  pjTaskFinish7 = $0B40011D;
  pjTaskStart8 = $0B40011E;
  pjTaskFinish8 = $0B40011F;
  pjTaskStart9 = $0B400120;
  pjTaskFinish9 = $0B400121;
  pjTaskStart10 = $0B400122;
  pjTaskFinish10 = $0B400123;
  pjTaskFlag11 = $0B400124;
  pjTaskFlag12 = $0B400125;
  pjTaskFlag13 = $0B400126;
  pjTaskFlag14 = $0B400127;
  pjTaskFlag15 = $0B400128;
  pjTaskFlag16 = $0B400129;
  pjTaskFlag17 = $0B40012A;
  pjTaskFlag18 = $0B40012B;
  pjTaskFlag19 = $0B40012C;
  pjTaskFlag20 = $0B40012D;
  pjTaskNumber6 = $0B40012E;
  pjTaskNumber7 = $0B40012F;
  pjTaskNumber8 = $0B400130;
  pjTaskNumber9 = $0B400131;
  pjTaskNumber10 = $0B400132;
  pjTaskNumber11 = $0B400133;
  pjTaskNumber12 = $0B400134;
  pjTaskNumber13 = $0B400135;
  pjTaskNumber14 = $0B400136;
  pjTaskNumber15 = $0B400137;
  pjTaskNumber16 = $0B400138;
  pjTaskNumber17 = $0B400139;
  pjTaskNumber18 = $0B40013A;
  pjTaskNumber19 = $0B40013B;
  pjTaskNumber20 = $0B40013C;
  pjTaskText11 = $0B40013D;
  pjTaskText12 = $0B40013E;
  pjTaskText13 = $0B40013F;
  pjTaskText14 = $0B400140;
  pjTaskText15 = $0B400141;
  pjTaskText16 = $0B400142;
  pjTaskText17 = $0B400143;
  pjTaskText18 = $0B400144;
  pjTaskText19 = $0B400145;
  pjTaskText20 = $0B400146;
  pjTaskText21 = $0B400147;
  pjTaskText22 = $0B400148;
  pjTaskText23 = $0B400149;
  pjTaskText24 = $0B40014A;
  pjTaskText25 = $0B40014B;
  pjTaskText26 = $0B40014C;
  pjTaskText27 = $0B40014D;
  pjTaskText28 = $0B40014E;
  pjTaskText29 = $0B40014F;
  pjTaskText30 = $0B400150;
  pjTaskResourcePhonetics = $0B40015D;
  pjTaskIndex = $0B400168;
  pjTaskAssignmentDelay = $0B40016E;
  pjTaskAssignmentUnits = $0B40016F;
  pjTaskCostRateTable = $0B400170;
  pjTaskPreleveledStart = $0B400171;
  pjTaskPreleveledFinish = $0B400172;
  pjTaskEstimated = $0B40018C;
  pjTaskIgnoreResourceCalendar = $0B40018F;
  pjTaskCalendar = $0B400192;
  pjTaskDuration1Estimated = $0B400193;
  pjTaskDuration2Estimated = $0B400194;
  pjTaskDuration3Estimated = $0B400195;
  pjTaskDuration4Estimated = $0B400196;
  pjTaskDuration5Estimated = $0B400197;
  pjTaskDuration6Estimated = $0B400198;
  pjTaskDuration7Estimated = $0B400199;
  pjTaskDuration8Estimated = $0B40019A;
  pjTaskDuration9Estimated = $0B40019B;
  pjTaskDuration10Estimated = $0B40019C;
  pjTaskBaselineDurationEstimated = $0B40019D;
  pjTaskOutlineCode1 = $0B4001A0;
  pjTaskOutlineCode2 = $0B4001A2;
  pjTaskOutlineCode3 = $0B4001A4;
  pjTaskOutlineCode4 = $0B4001A6;
  pjTaskOutlineCode5 = $0B4001A8;
  pjTaskOutlineCode6 = $0B4001AA;
  pjTaskOutlineCode7 = $0B4001AC;
  pjTaskOutlineCode8 = $0B4001AE;
  pjTaskOutlineCode9 = $0B4001B0;
  pjTaskOutlineCode10 = $0B4001B2;
  pjTaskDeadline = $0B4001B5;
  pjTaskStartSlack = $0B4001B6;
  pjTaskFinishSlack = $0B4001B7;
  pjTaskVAC = $0B4001B9;
  pjTaskGroupBySummary = $0B4001BE;
  pjTaskWBSPredecessors = $0B4001C1;
  pjTaskWBSSuccessors = $0B4001C2;
  pjTaskResourceType = $0B4001C3;
  pjTaskHyperlinkScreenTip = $0B4001C4;
  pjTaskBaseline1Start = $0B4001E2;
  pjTaskBaseline1Finish = $0B4001E3;
  pjTaskBaseline1Cost = $0B4001E4;
  pjTaskBaseline1Work = $0B4001E5;
  pjTaskBaseline1Duration = $0B4001E7;
  pjTaskBaseline2Start = $0B4001ED;
  pjTaskBaseline2Finish = $0B4001EE;
  pjTaskBaseline2Cost = $0B4001EF;
  pjTaskBaseline2Work = $0B4001F0;
  pjTaskBaseline2Duration = $0B4001F2;
  pjTaskBaseline3Start = $0B4001F8;
  pjTaskBaseline3Finish = $0B4001F9;
  pjTaskBaseline3Cost = $0B4001FA;
  pjTaskBaseline3Work = $0B4001FB;
  pjTaskBaseline3Duration = $0B4001FD;
  pjTaskBaseline4Start = $0B400203;
  pjTaskBaseline4Finish = $0B400204;
  pjTaskBaseline4Cost = $0B400205;
  pjTaskBaseline4Work = $0B400206;
  pjTaskBaseline4Duration = $0B400208;
  pjTaskBaseline5Start = $0B40020E;
  pjTaskBaseline5Finish = $0B40020F;
  pjTaskBaseline5Cost = $0B400210;
  pjTaskBaseline5Work = $0B400211;
  pjTaskBaseline5Duration = $0B400213;
  pjTaskCPI = $0B400219;
  pjTaskSPI = $0B40021A;
  pjTaskCVPercent = $0B40021B;
  pjTaskSVPercent = $0B40021C;
  pjTaskEAC = $0B40021D;
  pjTaskTCPI = $0B40021E;
  pjTaskStatus = $0B40021F;
  pjTaskBaseline6Start = $0B400220;
  pjTaskBaseline6Finish = $0B400221;
  pjTaskBaseline6Cost = $0B400222;
  pjTaskBaseline6Work = $0B400223;
  pjTaskBaseline6Duration = $0B400225;
  pjTaskBaseline7Start = $0B40022B;
  pjTaskBaseline7Finish = $0B40022C;
  pjTaskBaseline7Cost = $0B40022D;
  pjTaskBaseline7Work = $0B40022E;
  pjTaskBaseline7Duration = $0B400230;
  pjTaskBaseline8Start = $0B400236;
  pjTaskBaseline8Finish = $0B400237;
  pjTaskBaseline8Cost = $0B400238;
  pjTaskBaseline8Work = $0B400239;
  pjTaskBaseline8Duration = $0B40023B;
  pjTaskBaseline9Start = $0B400241;
  pjTaskBaseline9Finish = $0B400242;
  pjTaskBaseline9Cost = $0B400243;
  pjTaskBaseline9Work = $0B400244;
  pjTaskBaseline9Duration = $0B400246;
  pjTaskBaseline10Start = $0B40024C;
  pjTaskBaseline10Finish = $0B40024D;
  pjTaskBaseline10Cost = $0B40024E;
  pjTaskBaseline10Work = $0B40024F;
  pjTaskBaseline10Duration = $0B400251;
  pjTaskEnterpriseCost1 = $0B400257;
  pjTaskEnterpriseCost2 = $0B400258;
  pjTaskEnterpriseCost3 = $0B400259;
  pjTaskEnterpriseCost4 = $0B40025A;
  pjTaskEnterpriseCost5 = $0B40025B;
  pjTaskEnterpriseCost6 = $0B40025C;
  pjTaskEnterpriseCost7 = $0B40025D;
  pjTaskEnterpriseCost8 = $0B40025E;
  pjTaskEnterpriseCost9 = $0B40025F;
  pjTaskEnterpriseCost10 = $0B400260;
  pjTaskEnterpriseDate1 = $0B400261;
  pjTaskEnterpriseDate2 = $0B400262;
  pjTaskEnterpriseDate3 = $0B400263;
  pjTaskEnterpriseDate4 = $0B400264;
  pjTaskEnterpriseDate5 = $0B400265;
  pjTaskEnterpriseDate6 = $0B400266;
  pjTaskEnterpriseDate7 = $0B400267;
  pjTaskEnterpriseDate8 = $0B400268;
  pjTaskEnterpriseDate9 = $0B400269;
  pjTaskEnterpriseDate10 = $0B40026A;
  pjTaskEnterpriseDate11 = $0B40026B;
  pjTaskEnterpriseDate12 = $0B40026C;
  pjTaskEnterpriseDate13 = $0B40026D;
  pjTaskEnterpriseDate14 = $0B40026E;
  pjTaskEnterpriseDate15 = $0B40026F;
  pjTaskEnterpriseDate16 = $0B400270;
  pjTaskEnterpriseDate17 = $0B400271;
  pjTaskEnterpriseDate18 = $0B400272;
  pjTaskEnterpriseDate19 = $0B400273;
  pjTaskEnterpriseDate20 = $0B400274;
  pjTaskEnterpriseDate21 = $0B400275;
  pjTaskEnterpriseDate22 = $0B400276;
  pjTaskEnterpriseDate23 = $0B400277;
  pjTaskEnterpriseDate24 = $0B400278;
  pjTaskEnterpriseDate25 = $0B400279;
  pjTaskEnterpriseDate26 = $0B40027A;
  pjTaskEnterpriseDate27 = $0B40027B;
  pjTaskEnterpriseDate28 = $0B40027C;
  pjTaskEnterpriseDate29 = $0B40027D;
  pjTaskEnterpriseDate30 = $0B40027E;
  pjTaskEnterpriseDuration1 = $0B40027F;
  pjTaskEnterpriseDuration2 = $0B400280;
  pjTaskEnterpriseDuration3 = $0B400281;
  pjTaskEnterpriseDuration4 = $0B400282;
  pjTaskEnterpriseDuration5 = $0B400283;
  pjTaskEnterpriseDuration6 = $0B400284;
  pjTaskEnterpriseDuration7 = $0B400285;
  pjTaskEnterpriseDuration8 = $0B400286;
  pjTaskEnterpriseDuration9 = $0B400287;
  pjTaskEnterpriseDuration10 = $0B400288;
  pjTaskEnterpriseFlag1 = $0B400293;
  pjTaskEnterpriseFlag2 = $0B400294;
  pjTaskEnterpriseFlag3 = $0B400295;
  pjTaskEnterpriseFlag4 = $0B400296;
  pjTaskEnterpriseFlag5 = $0B400297;
  pjTaskEnterpriseFlag6 = $0B400298;
  pjTaskEnterpriseFlag7 = $0B400299;
  pjTaskEnterpriseFlag8 = $0B40029A;
  pjTaskEnterpriseFlag9 = $0B40029B;
  pjTaskEnterpriseFlag10 = $0B40029C;
  pjTaskEnterpriseFlag11 = $0B40029D;
  pjTaskEnterpriseFlag12 = $0B40029E;
  pjTaskEnterpriseFlag13 = $0B40029F;
  pjTaskEnterpriseFlag14 = $0B4002A0;
  pjTaskEnterpriseFlag15 = $0B4002A1;
  pjTaskEnterpriseFlag16 = $0B4002A2;
  pjTaskEnterpriseFlag17 = $0B4002A3;
  pjTaskEnterpriseFlag18 = $0B4002A4;
  pjTaskEnterpriseFlag19 = $0B4002A5;
  pjTaskEnterpriseFlag20 = $0B4002A6;
  pjTaskEnterpriseNumber1 = $0B4002BB;
  pjTaskEnterpriseNumber2 = $0B4002BC;
  pjTaskEnterpriseNumber3 = $0B4002BD;
  pjTaskEnterpriseNumber4 = $0B4002BE;
  pjTaskEnterpriseNumber5 = $0B4002BF;
  pjTaskEnterpriseNumber6 = $0B4002C0;
  pjTaskEnterpriseNumber7 = $0B4002C1;
  pjTaskEnterpriseNumber8 = $0B4002C2;
  pjTaskEnterpriseNumber9 = $0B4002C3;
  pjTaskEnterpriseNumber10 = $0B4002C4;
  pjTaskEnterpriseNumber11 = $0B4002C5;
  pjTaskEnterpriseNumber12 = $0B4002C6;
  pjTaskEnterpriseNumber13 = $0B4002C7;
  pjTaskEnterpriseNumber14 = $0B4002C8;
  pjTaskEnterpriseNumber15 = $0B4002C9;
  pjTaskEnterpriseNumber16 = $0B4002CA;
  pjTaskEnterpriseNumber17 = $0B4002CB;
  pjTaskEnterpriseNumber18 = $0B4002CC;
  pjTaskEnterpriseNumber19 = $0B4002CD;
  pjTaskEnterpriseNumber20 = $0B4002CE;
  pjTaskEnterpriseNumber21 = $0B4002CF;
  pjTaskEnterpriseNumber22 = $0B4002D0;
  pjTaskEnterpriseNumber23 = $0B4002D1;
  pjTaskEnterpriseNumber24 = $0B4002D2;
  pjTaskEnterpriseNumber25 = $0B4002D3;
  pjTaskEnterpriseNumber26 = $0B4002D4;
  pjTaskEnterpriseNumber27 = $0B4002D5;
  pjTaskEnterpriseNumber28 = $0B4002D6;
  pjTaskEnterpriseNumber29 = $0B4002D7;
  pjTaskEnterpriseNumber30 = $0B4002D8;
  pjTaskEnterpriseNumber31 = $0B4002D9;
  pjTaskEnterpriseNumber32 = $0B4002DA;
  pjTaskEnterpriseNumber33 = $0B4002DB;
  pjTaskEnterpriseNumber34 = $0B4002DC;
  pjTaskEnterpriseNumber35 = $0B4002DD;
  pjTaskEnterpriseNumber36 = $0B4002DE;
  pjTaskEnterpriseNumber37 = $0B4002DF;
  pjTaskEnterpriseNumber38 = $0B4002E0;
  pjTaskEnterpriseNumber39 = $0B4002E1;
  pjTaskEnterpriseNumber40 = $0B4002E2;
  pjTaskEnterpriseOutlineCode1 = $0B4002E3;
  pjTaskEnterpriseOutlineCode2 = $0B4002E5;
  pjTaskEnterpriseOutlineCode3 = $0B4002E7;
  pjTaskEnterpriseOutlineCode4 = $0B4002E9;
  pjTaskEnterpriseOutlineCode5 = $0B4002EB;
  pjTaskEnterpriseOutlineCode6 = $0B4002ED;
  pjTaskEnterpriseOutlineCode7 = $0B4002EF;
  pjTaskEnterpriseOutlineCode8 = $0B4002F1;
  pjTaskEnterpriseOutlineCode9 = $0B4002F3;
  pjTaskEnterpriseOutlineCode10 = $0B4002F5;
  pjTaskEnterpriseOutlineCode11 = $0B4002F7;
  pjTaskEnterpriseOutlineCode12 = $0B4002F9;
  pjTaskEnterpriseOutlineCode13 = $0B4002FB;
  pjTaskEnterpriseOutlineCode14 = $0B4002FD;
  pjTaskEnterpriseOutlineCode15 = $0B4002FF;
  pjTaskEnterpriseOutlineCode16 = $0B400301;
  pjTaskEnterpriseOutlineCode17 = $0B400303;
  pjTaskEnterpriseOutlineCode18 = $0B400305;
  pjTaskEnterpriseOutlineCode19 = $0B400307;
  pjTaskEnterpriseOutlineCode20 = $0B400309;
  pjTaskEnterpriseOutlineCode21 = $0B40030B;
  pjTaskEnterpriseOutlineCode22 = $0B40030D;
  pjTaskEnterpriseOutlineCode23 = $0B40030F;
  pjTaskEnterpriseOutlineCode24 = $0B400311;
  pjTaskEnterpriseOutlineCode25 = $0B400313;
  pjTaskEnterpriseOutlineCode26 = $0B400315;
  pjTaskEnterpriseOutlineCode27 = $0B400317;
  pjTaskEnterpriseOutlineCode28 = $0B400319;
  pjTaskEnterpriseOutlineCode29 = $0B40031B;
  pjTaskEnterpriseOutlineCode30 = $0B40031D;
  pjTaskEnterpriseText1 = $0B40031F;
  pjTaskEnterpriseText2 = $0B400320;
  pjTaskEnterpriseText3 = $0B400321;
  pjTaskEnterpriseText4 = $0B400322;
  pjTaskEnterpriseText5 = $0B400323;
  pjTaskEnterpriseText6 = $0B400324;
  pjTaskEnterpriseText7 = $0B400325;
  pjTaskEnterpriseText8 = $0B400326;
  pjTaskEnterpriseText9 = $0B400327;
  pjTaskEnterpriseText10 = $0B400328;
  pjTaskEnterpriseText11 = $0B400329;
  pjTaskEnterpriseText12 = $0B40032A;
  pjTaskEnterpriseText13 = $0B40032B;
  pjTaskEnterpriseText14 = $0B40032C;
  pjTaskEnterpriseText15 = $0B40032D;
  pjTaskEnterpriseText16 = $0B40032E;
  pjTaskEnterpriseText17 = $0B40032F;
  pjTaskEnterpriseText18 = $0B400330;
  pjTaskEnterpriseText19 = $0B400331;
  pjTaskEnterpriseText20 = $0B400332;
  pjTaskEnterpriseText21 = $0B400333;
  pjTaskEnterpriseText22 = $0B400334;
  pjTaskEnterpriseText23 = $0B400335;
  pjTaskEnterpriseText24 = $0B400336;
  pjTaskEnterpriseText25 = $0B400337;
  pjTaskEnterpriseText26 = $0B400338;
  pjTaskEnterpriseText27 = $0B400339;
  pjTaskEnterpriseText28 = $0B40033A;
  pjTaskEnterpriseText29 = $0B40033B;
  pjTaskEnterpriseText30 = $0B40033C;
  pjTaskEnterpriseText31 = $0B40033D;
  pjTaskEnterpriseText32 = $0B40033E;
  pjTaskEnterpriseText33 = $0B40033F;
  pjTaskEnterpriseText34 = $0B400340;
  pjTaskEnterpriseText35 = $0B400341;
  pjTaskEnterpriseText36 = $0B400342;
  pjTaskEnterpriseText37 = $0B400343;
  pjTaskEnterpriseText38 = $0B400344;
  pjTaskEnterpriseText39 = $0B400345;
  pjTaskEnterpriseText40 = $0B400346;
  pjTaskBaseline1DurationEstimated = $0B400347;
  pjTaskBaseline2DurationEstimated = $0B400348;
  pjTaskBaseline3DurationEstimated = $0B400349;
  pjTaskBaseline4DurationEstimated = $0B40034A;
  pjTaskBaseline5DurationEstimated = $0B40034B;
  pjTaskBaseline6DurationEstimated = $0B40034C;
  pjTaskBaseline7DurationEstimated = $0B40034D;
  pjTaskBaseline8DurationEstimated = $0B40034E;
  pjTaskBaseline9DurationEstimated = $0B40034F;
  pjTaskBaseline10DurationEstimated = $0B400350;
  pjTaskEnterpriseProjectCost1 = $0B400351;
  pjTaskEnterpriseProjectCost2 = $0B400352;
  pjTaskEnterpriseProjectCost3 = $0B400353;
  pjTaskEnterpriseProjectCost4 = $0B400354;
  pjTaskEnterpriseProjectCost5 = $0B400355;
  pjTaskEnterpriseProjectCost6 = $0B400356;
  pjTaskEnterpriseProjectCost7 = $0B400357;
  pjTaskEnterpriseProjectCost8 = $0B400358;
  pjTaskEnterpriseProjectCost9 = $0B400359;
  pjTaskEnterpriseProjectCost10 = $0B40035A;
  pjTaskEnterpriseProjectDate1 = $0B40035B;
  pjTaskEnterpriseProjectDate2 = $0B40035C;
  pjTaskEnterpriseProjectDate3 = $0B40035D;
  pjTaskEnterpriseProjectDate4 = $0B40035E;
  pjTaskEnterpriseProjectDate5 = $0B40035F;
  pjTaskEnterpriseProjectDate6 = $0B400360;
  pjTaskEnterpriseProjectDate7 = $0B400361;
  pjTaskEnterpriseProjectDate8 = $0B400362;
  pjTaskEnterpriseProjectDate9 = $0B400363;
  pjTaskEnterpriseProjectDate10 = $0B400364;
  pjTaskEnterpriseProjectDate11 = $0B400365;
  pjTaskEnterpriseProjectDate12 = $0B400366;
  pjTaskEnterpriseProjectDate13 = $0B400367;
  pjTaskEnterpriseProjectDate14 = $0B400368;
  pjTaskEnterpriseProjectDate15 = $0B400369;
  pjTaskEnterpriseProjectDate16 = $0B40036A;
  pjTaskEnterpriseProjectDate17 = $0B40036B;
  pjTaskEnterpriseProjectDate18 = $0B40036C;
  pjTaskEnterpriseProjectDate19 = $0B40036D;
  pjTaskEnterpriseProjectDate20 = $0B40036E;
  pjTaskEnterpriseProjectDate21 = $0B40036F;
  pjTaskEnterpriseProjectDate22 = $0B400370;
  pjTaskEnterpriseProjectDate23 = $0B400371;
  pjTaskEnterpriseProjectDate24 = $0B400372;
  pjTaskEnterpriseProjectDate25 = $0B400373;
  pjTaskEnterpriseProjectDate26 = $0B400374;
  pjTaskEnterpriseProjectDate27 = $0B400375;
  pjTaskEnterpriseProjectDate28 = $0B400376;
  pjTaskEnterpriseProjectDate29 = $0B400377;
  pjTaskEnterpriseProjectDate30 = $0B400378;
  pjTaskEnterpriseProjectDuration1 = $0B400379;
  pjTaskEnterpriseProjectDuration2 = $0B40037A;
  pjTaskEnterpriseProjectDuration3 = $0B40037B;
  pjTaskEnterpriseProjectDuration4 = $0B40037C;
  pjTaskEnterpriseProjectDuration5 = $0B40037D;
  pjTaskEnterpriseProjectDuration6 = $0B40037E;
  pjTaskEnterpriseProjectDuration7 = $0B40037F;
  pjTaskEnterpriseProjectDuration8 = $0B400380;
  pjTaskEnterpriseProjectDuration9 = $0B400381;
  pjTaskEnterpriseProjectDuration10 = $0B400382;
  pjTaskEnterpriseProjectOutlineCode1 = $0B40038D;
  pjTaskEnterpriseProjectOutlineCode2 = $0B40038E;
  pjTaskEnterpriseProjectOutlineCode3 = $0B40038F;
  pjTaskEnterpriseProjectOutlineCode4 = $0B400390;
  pjTaskEnterpriseProjectOutlineCode5 = $0B400391;
  pjTaskEnterpriseProjectOutlineCode6 = $0B400392;
  pjTaskEnterpriseProjectOutlineCode7 = $0B400393;
  pjTaskEnterpriseProjectOutlineCode8 = $0B400394;
  pjTaskEnterpriseProjectOutlineCode9 = $0B400395;
  pjTaskEnterpriseProjectOutlineCode10 = $0B400396;
  pjTaskEnterpriseProjectOutlineCode11 = $0B400397;
  pjTaskEnterpriseProjectOutlineCode12 = $0B400398;
  pjTaskEnterpriseProjectOutlineCode13 = $0B400399;
  pjTaskEnterpriseProjectOutlineCode14 = $0B40039A;
  pjTaskEnterpriseProjectOutlineCode15 = $0B40039B;
  pjTaskEnterpriseProjectOutlineCode16 = $0B40039C;
  pjTaskEnterpriseProjectOutlineCode17 = $0B40039D;
  pjTaskEnterpriseProjectOutlineCode18 = $0B40039E;
  pjTaskEnterpriseProjectOutlineCode19 = $0B40039F;
  pjTaskEnterpriseProjectOutlineCode20 = $0B4003A0;
  pjTaskEnterpriseProjectOutlineCode21 = $0B4003A1;
  pjTaskEnterpriseProjectOutlineCode22 = $0B4003A2;
  pjTaskEnterpriseProjectOutlineCode23 = $0B4003A3;
  pjTaskEnterpriseProjectOutlineCode24 = $0B4003A4;
  pjTaskEnterpriseProjectOutlineCode25 = $0B4003A5;
  pjTaskEnterpriseProjectOutlineCode26 = $0B4003A6;
  pjTaskEnterpriseProjectOutlineCode27 = $0B4003A7;
  pjTaskEnterpriseProjectOutlineCode28 = $0B4003A8;
  pjTaskEnterpriseProjectOutlineCode29 = $0B4003A9;
  pjTaskEnterpriseProjectOutlineCode30 = $0B4003AA;
  pjTaskEnterpriseProjectFlag1 = $0B4003C9;
  pjTaskEnterpriseProjectFlag2 = $0B4003CA;
  pjTaskEnterpriseProjectFlag3 = $0B4003CB;
  pjTaskEnterpriseProjectFlag4 = $0B4003CC;
  pjTaskEnterpriseProjectFlag5 = $0B4003CD;
  pjTaskEnterpriseProjectFlag6 = $0B4003CE;
  pjTaskEnterpriseProjectFlag7 = $0B4003CF;
  pjTaskEnterpriseProjectFlag8 = $0B4003D0;
  pjTaskEnterpriseProjectFlag9 = $0B4003D1;
  pjTaskEnterpriseProjectFlag10 = $0B4003D2;
  pjTaskEnterpriseProjectFlag11 = $0B4003D3;
  pjTaskEnterpriseProjectFlag12 = $0B4003D4;
  pjTaskEnterpriseProjectFlag13 = $0B4003D5;
  pjTaskEnterpriseProjectFlag14 = $0B4003D6;
  pjTaskEnterpriseProjectFlag15 = $0B4003D7;
  pjTaskEnterpriseProjectFlag16 = $0B4003D8;
  pjTaskEnterpriseProjectFlag17 = $0B4003D9;
  pjTaskEnterpriseProjectFlag18 = $0B4003DA;
  pjTaskEnterpriseProjectFlag19 = $0B4003DB;
  pjTaskEnterpriseProjectFlag20 = $0B4003DC;
  pjTaskEnterpriseProjectNumber1 = $0B4003F1;
  pjTaskEnterpriseProjectNumber2 = $0B4003F2;
  pjTaskEnterpriseProjectNumber3 = $0B4003F3;
  pjTaskEnterpriseProjectNumber4 = $0B4003F4;
  pjTaskEnterpriseProjectNumber5 = $0B4003F5;
  pjTaskEnterpriseProjectNumber6 = $0B4003F6;
  pjTaskEnterpriseProjectNumber7 = $0B4003F7;
  pjTaskEnterpriseProjectNumber8 = $0B4003F8;
  pjTaskEnterpriseProjectNumber9 = $0B4003F9;
  pjTaskEnterpriseProjectNumber10 = $0B4003FA;
  pjTaskEnterpriseProjectNumber11 = $0B4003FB;
  pjTaskEnterpriseProjectNumber12 = $0B4003FC;
  pjTaskEnterpriseProjectNumber13 = $0B4003FD;
  pjTaskEnterpriseProjectNumber14 = $0B4003FE;
  pjTaskEnterpriseProjectNumber15 = $0B4003FF;
  pjTaskEnterpriseProjectNumber16 = $0B400400;
  pjTaskEnterpriseProjectNumber17 = $0B400401;
  pjTaskEnterpriseProjectNumber18 = $0B400402;
  pjTaskEnterpriseProjectNumber19 = $0B400403;
  pjTaskEnterpriseProjectNumber20 = $0B400404;
  pjTaskEnterpriseProjectNumber21 = $0B400405;
  pjTaskEnterpriseProjectNumber22 = $0B400406;
  pjTaskEnterpriseProjectNumber23 = $0B400407;
  pjTaskEnterpriseProjectNumber24 = $0B400408;
  pjTaskEnterpriseProjectNumber25 = $0B400409;
  pjTaskEnterpriseProjectNumber26 = $0B40040A;
  pjTaskEnterpriseProjectNumber27 = $0B40040B;
  pjTaskEnterpriseProjectNumber28 = $0B40040C;
  pjTaskEnterpriseProjectNumber29 = $0B40040D;
  pjTaskEnterpriseProjectNumber30 = $0B40040E;
  pjTaskEnterpriseProjectNumber31 = $0B40040F;
  pjTaskEnterpriseProjectNumber32 = $0B400410;
  pjTaskEnterpriseProjectNumber33 = $0B400411;
  pjTaskEnterpriseProjectNumber34 = $0B400412;
  pjTaskEnterpriseProjectNumber35 = $0B400413;
  pjTaskEnterpriseProjectNumber36 = $0B400414;
  pjTaskEnterpriseProjectNumber37 = $0B400415;
  pjTaskEnterpriseProjectNumber38 = $0B400416;
  pjTaskEnterpriseProjectNumber39 = $0B400417;
  pjTaskEnterpriseProjectNumber40 = $0B400418;
  pjTaskEnterpriseProjectText1 = $0B400419;
  pjTaskEnterpriseProjectText2 = $0B40041A;
  pjTaskEnterpriseProjectText3 = $0B40041B;
  pjTaskEnterpriseProjectText4 = $0B40041C;
  pjTaskEnterpriseProjectText5 = $0B40041D;
  pjTaskEnterpriseProjectText6 = $0B40041E;
  pjTaskEnterpriseProjectText7 = $0B40041F;
  pjTaskEnterpriseProjectText8 = $0B400420;
  pjTaskEnterpriseProjectText9 = $0B400421;
  pjTaskEnterpriseProjectText10 = $0B400422;
  pjTaskEnterpriseProjectText11 = $0B400423;
  pjTaskEnterpriseProjectText12 = $0B400424;
  pjTaskEnterpriseProjectText13 = $0B400425;
  pjTaskEnterpriseProjectText14 = $0B400426;
  pjTaskEnterpriseProjectText15 = $0B400427;
  pjTaskEnterpriseProjectText16 = $0B400428;
  pjTaskEnterpriseProjectText17 = $0B400429;
  pjTaskEnterpriseProjectText18 = $0B40042A;
  pjTaskEnterpriseProjectText19 = $0B40042B;
  pjTaskEnterpriseProjectText20 = $0B40042C;
  pjTaskEnterpriseProjectText21 = $0B40042D;
  pjTaskEnterpriseProjectText22 = $0B40042E;
  pjTaskEnterpriseProjectText23 = $0B40042F;
  pjTaskEnterpriseProjectText24 = $0B400430;
  pjTaskEnterpriseProjectText25 = $0B400431;
  pjTaskEnterpriseProjectText26 = $0B400432;
  pjTaskEnterpriseProjectText27 = $0B400433;
  pjTaskEnterpriseProjectText28 = $0B400434;
  pjTaskEnterpriseProjectText29 = $0B400435;
  pjTaskEnterpriseProjectText30 = $0B400436;
  pjTaskEnterpriseProjectText31 = $0B400437;
  pjTaskEnterpriseProjectText32 = $0B400438;
  pjTaskEnterpriseProjectText33 = $0B400439;
  pjTaskEnterpriseProjectText34 = $0B40043A;
  pjTaskEnterpriseProjectText35 = $0B40043B;
  pjTaskEnterpriseProjectText36 = $0B40043C;
  pjTaskEnterpriseProjectText37 = $0B40043D;
  pjTaskEnterpriseProjectText38 = $0B40043E;
  pjTaskEnterpriseProjectText39 = $0B40043F;
  pjTaskEnterpriseProjectText40 = $0B400440;
  pjTaskResourceEnterpriseOutlineCode1 = $0B400441;
  pjTaskResourceEnterpriseOutlineCode2 = $0B400442;
  pjTaskResourceEnterpriseOutlineCode3 = $0B400443;
  pjTaskResourceEnterpriseOutlineCode4 = $0B400444;
  pjTaskResourceEnterpriseOutlineCode5 = $0B400445;
  pjTaskResourceEnterpriseOutlineCode6 = $0B400446;
  pjTaskResourceEnterpriseOutlineCode7 = $0B400447;
  pjTaskResourceEnterpriseOutlineCode8 = $0B400448;
  pjTaskResourceEnterpriseOutlineCode9 = $0B400449;
  pjTaskResourceEnterpriseOutlineCode10 = $0B40044A;
  pjTaskResourceEnterpriseOutlineCode11 = $0B40044B;
  pjTaskResourceEnterpriseOutlineCode12 = $0B40044C;
  pjTaskResourceEnterpriseOutlineCode13 = $0B40044D;
  pjTaskResourceEnterpriseOutlineCode14 = $0B40044E;
  pjTaskResourceEnterpriseOutlineCode15 = $0B40044F;
  pjTaskResourceEnterpriseOutlineCode16 = $0B400450;
  pjTaskResourceEnterpriseOutlineCode17 = $0B400451;
  pjTaskResourceEnterpriseOutlineCode18 = $0B400452;
  pjTaskResourceEnterpriseOutlineCode19 = $0B400453;
  pjTaskResourceEnterpriseOutlineCode20 = $0B400454;
  pjTaskResourceEnterpriseOutlineCode21 = $0B400455;
  pjTaskResourceEnterpriseOutlineCode22 = $0B400456;
  pjTaskResourceEnterpriseOutlineCode23 = $0B400457;
  pjTaskResourceEnterpriseOutlineCode24 = $0B400458;
  pjTaskResourceEnterpriseOutlineCode25 = $0B400459;
  pjTaskResourceEnterpriseOutlineCode26 = $0B40045A;
  pjTaskResourceEnterpriseOutlineCode27 = $0B40045B;
  pjTaskResourceEnterpriseOutlineCode28 = $0B40045C;
  pjTaskResourceEnterpriseOutlineCode29 = $0B40045D;
  pjTaskResourceEnterpriseRBS = $0B40045E;
  pjTaskPhysicalPercentComplete = $0B40045F;
  pjTaskDemandedRequested = $0B400460;
  pjTaskStatusIndicator = $0B400461;
  pjTaskEarnedValueMethod = $0B400462;
  pjTaskResourceEnterpriseMultiValueCode20 = $0B400469;
  pjTaskResourceEnterpriseMultiValueCode21 = $0B40046A;
  pjTaskResourceEnterpriseMultiValueCode22 = $0B40046B;
  pjTaskResourceEnterpriseMultiValueCode23 = $0B40046C;
  pjTaskResourceEnterpriseMultiValueCode24 = $0B40046D;
  pjTaskResourceEnterpriseMultiValueCode25 = $0B40046E;
  pjTaskResourceEnterpriseMultiValueCode26 = $0B40046F;
  pjTaskResourceEnterpriseMultiValueCode27 = $0B400470;
  pjTaskResourceEnterpriseMultiValueCode28 = $0B400471;
  pjTaskResourceEnterpriseMultiValueCode29 = $0B400472;
  pjTaskActualWorkProtected = $0B400473;
  pjTaskActualOvertimeWorkProtected = $0B400474;
  pjTaskGuid = $0B400477;
  pjTaskCalendarGuid = $0B400478;
  pjTaskDeliverableGuid = $0B40047A;
  pjTaskDeliverableType = $0B40047B;
  pjTaskDeliverableStart = $0B400480;
  pjTaskDeliverableFinish = $0B400481;
  pjTaskIsPublished = $0B40048D;
  pjTaskStatusManagerName = $0B40048E;
  pjTaskErrorMessage = $0B40048F;
  pjTaskBudgetWork = $0B400493;
  pjTaskBudgetCost = $0B400494;
  pjTaskBaselineFixedCostAccrual = $0B400495;
  pjTaskBaselineDeliverableStart = $0B400496;
  pjTaskBaselineDeliverableFinish = $0B400497;
  pjTaskBaselineBudgetWork = $0B400498;
  pjTaskBaselineBudgetCost = $0B400499;
  pjTaskBaseline1FixedCostAccrual = $0B40049C;
  pjTaskBaseline1DeliverableStart = $0B40049D;
  pjTaskBaseline1DeliverableFinish = $0B40049E;
  pjTaskBaseline1BudgetWork = $0B40049F;
  pjTaskBaseline1BudgetCost = $0B4004A0;
  pjTaskBaseline2FixedCostAccrual = $0B4004A3;
  pjTaskBaseline2DeliverableStart = $0B4004A4;
  pjTaskBaseline2DeliverableFinish = $0B4004A5;
  pjTaskBaseline2BudgetWork = $0B4004A6;
  pjTaskBaseline2BudgetCost = $0B4004A7;
  pjTaskBaseline3FixedCostAccrual = $0B4004AA;
  pjTaskBaseline3DeliverableStart = $0B4004AB;
  pjTaskBaseline3DeliverableFinish = $0B4004AC;
  pjTaskBaseline3BudgetWork = $0B4004AD;
  pjTaskBaseline3BudgetCost = $0B4004AE;
  pjTaskBaseline4FixedCostAccrual = $0B4004B1;
  pjTaskBaseline4DeliverableStart = $0B4004B2;
  pjTaskBaseline4DeliverableFinish = $0B4004B3;
  pjTaskBaseline4BudgetWork = $0B4004B4;
  pjTaskBaseline4BudgetCost = $0B4004B5;
  pjTaskBaseline5FixedCostAccrual = $0B4004B8;
  pjTaskBaseline5DeliverableStart = $0B4004B9;
  pjTaskBaseline5DeliverableFinish = $0B4004BA;
  pjTaskBaseline5BudgetWork = $0B4004BB;
  pjTaskBaseline5BudgetCost = $0B4004BC;
  pjTaskBaseline6FixedCostAccrual = $0B4004BF;
  pjTaskBaseline6DeliverableStart = $0B4004C0;
  pjTaskBaseline6DeliverableFinish = $0B4004C1;
  pjTaskBaseline6BudgetWork = $0B4004C2;
  pjTaskBaseline6BudgetCost = $0B4004C3;
  pjTaskBaseline7FixedCostAccrual = $0B4004C6;
  pjTaskBaseline7DeliverableStart = $0B4004C7;
  pjTaskBaseline7DeliverableFinish = $0B4004C8;
  pjTaskBaseline7BudgetWork = $0B4004C9;
  pjTaskBaseline7BudgetCost = $0B4004CA;
  pjTaskBaseline8FixedCostAccrual = $0B4004CD;
  pjTaskBaseline8DeliverableStart = $0B4004CE;
  pjTaskBaseline8DeliverableFinish = $0B4004CF;
  pjTaskBaseline8BudgetWork = $0B4004D0;
  pjTaskBaseline8BudgetCost = $0B4004D1;
  pjTaskBaseline9FixedCostAccrual = $0B4004D4;
  pjTaskBaseline9DeliverableStart = $0B4004D5;
  pjTaskBaseline9DeliverableFinish = $0B4004D6;
  pjTaskBaseline9BudgetWork = $0B4004D7;
  pjTaskBaseline9BudgetCost = $0B4004D8;
  pjTaskBaseline10FixedCostAccrual = $0B4004DB;
  pjTaskBaseline10DeliverableStart = $0B4004DC;
  pjTaskBaseline10DeliverableFinish = $0B4004DD;
  pjTaskBaseline10BudgetWork = $0B4004DE;
  pjTaskBaseline10BudgetCost = $0B4004DF;
  pjTaskRecalcFlags = $0B4004E2;
  pjTaskDeliverableName = $0B4004FC;
  pjTaskActive = $0B4004FF;
  pjTaskManual = $0B400500;
  pjTaskPlaceholder = $0B400501;
  pjTaskWarning = $0B400502;
  pjTaskStartText = $0B400505;
  pjTaskFinishText = $0B400506;
  pjTaskDurationText = $0B400507;
  pjTaskIsStartValid = $0B40050F;
  pjTaskIsFinishValid = $0B400510;
  pjTaskIsDurationValid = $0B400511;
  pjTaskBaselineStartText = $0B400513;
  pjTaskBaselineFinishText = $0B400514;
  pjTaskBaselineDurationText = $0B400515;
  pjTaskBaseline1StartText = $0B400516;
  pjTaskBaseline1FinishText = $0B400517;
  pjTaskBaseline1DurationText = $0B400518;
  pjTaskBaseline2StartText = $0B400519;
  pjTaskBaseline2FinishText = $0B40051A;
  pjTaskBaseline2DurationText = $0B40051B;
  pjTaskBaseline3StartText = $0B40051C;
  pjTaskBaseline3FinishText = $0B40051D;
  pjTaskBaseline3DurationText = $0B40051E;
  pjTaskBaseline4StartText = $0B40051F;
  pjTaskBaseline4FinishText = $0B400520;
  pjTaskBaseline4DurationText = $0B400521;
  pjTaskBaseline5StartText = $0B400522;
  pjTaskBaseline5FinishText = $0B400523;
  pjTaskBaseline5DurationText = $0B400524;
  pjTaskBaseline6StartText = $0B400525;
  pjTaskBaseline6FinishText = $0B400526;
  pjTaskBaseline6DurationText = $0B400527;
  pjTaskBaseline7StartText = $0B400528;
  pjTaskBaseline7FinishText = $0B400529;
  pjTaskBaseline7DurationText = $0B40052A;
  pjTaskBaseline8StartText = $0B40052B;
  pjTaskBaseline8FinishText = $0B40052C;
  pjTaskBaseline8DurationText = $0B40052D;
  pjTaskBaseline9StartText = $0B40052E;
  pjTaskBaseline9FinishText = $0B40052F;
  pjTaskBaseline9DurationText = $0B400530;
  pjTaskBaseline10StartText = $0B400531;
  pjTaskBaseline10FinishText = $0B400532;
  pjTaskBaseline10DurationText = $0B400533;
  pjTaskIgnoreWarnings = $0B400534;
  pjTaskAssignmentPeakUnits = $0B400537;
  pjTaskScheduledStart = $0B40053A;
  pjTaskScheduledFinish = $0B40053B;
  pjTaskScheduledDuration = $0B40053C;
  pjResourceID = $0C400000;
  pjResourceName = $0C400001;
  pjResourceInitials = $0C400002;
  pjResourceGroup = $0C400003;
  pjResourceMaxUnits = $0C400004;
  pjResourceBaseCalendar = $0C400005;
  pjResourceStandardRate = $0C400006;
  pjResourceOvertimeRate = $0C400007;
  pjResourceText1 = $0C400008;
  pjResourceText2 = $0C400009;
  pjResourceCode = $0C40000A;
  pjResourceActualCost = $0C40000B;
  pjResourceCost = $0C40000C;
  pjResourceWork = $0C40000D;
  pjResourceActualWork = $0C40000E;
  pjResourceBaselineWork = $0C40000F;
  pjResourceOvertimeWork = $0C400010;
  pjResourceBaselineCost = $0C400011;
  pjResourceCostPerUse = $0C400012;
  pjResourceAccrueAt = $0C400013;
  pjResourceNotes = $0C400014;
  pjResourceRemainingCost = $0C400015;
  pjResourceRemainingWork = $0C400016;
  pjResourceWorkVariance = $0C400017;
  pjResourceCostVariance = $0C400018;
  pjResourceOverallocated = $0C400019;
  pjResourcePeakUnits = $0C40001A;
  pjResourceUniqueID = $0C40001B;
  pjResourceSheetNotes = $0C40001C;
  pjResourcePercentWorkComplete = $0C40001D;
  pjResourceText3 = $0C40001E;
  pjResourceText4 = $0C40001F;
  pjResourceText5 = $0C400020;
  pjResourceObjects = $0C400021;
  pjResourceLinkedFields = $0C400022;
  pjResourceEMailAddress = $0C400023;
  pjResourceRegularWork = $0C400026;
  pjResourceActualOvertimeWork = $0C400027;
  pjResourceRemainingOvertimeWork = $0C400028;
  pjResourceOvertimeCost = $0C40002F;
  pjResourceActualOvertimeCost = $0C400030;
  pjResourceRemainingOvertimeCost = $0C400031;
  pjResourceBCWS = $0C400033;
  pjResourceBCWP = $0C400034;
  pjResourceACWP = $0C400035;
  pjResourceSV = $0C400036;
  pjResourceAvailableFrom = $0C400039;
  pjResourceAvailableTo = $0C40003A;
  pjResourceIndicators = $0C400056;
  pjResourceText6 = $0C400061;
  pjResourceText7 = $0C400062;
  pjResourceText8 = $0C400063;
  pjResourceText9 = $0C400064;
  pjResourceText10 = $0C400065;
  pjResourceStart1 = $0C400066;
  pjResourceStart2 = $0C400067;
  pjResourceStart3 = $0C400068;
  pjResourceStart4 = $0C400069;
  pjResourceStart5 = $0C40006A;
  pjResourceFinish1 = $0C40006B;
  pjResourceFinish2 = $0C40006C;
  pjResourceFinish3 = $0C40006D;
  pjResourceFinish4 = $0C40006E;
  pjResourceFinish5 = $0C40006F;
  pjResourceNumber1 = $0C400070;
  pjResourceNumber2 = $0C400071;
  pjResourceNumber3 = $0C400072;
  pjResourceNumber4 = $0C400073;
  pjResourceNumber5 = $0C400074;
  pjResourceDuration1 = $0C400075;
  pjResourceDuration2 = $0C400076;
  pjResourceDuration3 = $0C400077;
  pjResourceCost1 = $0C40007B;
  pjResourceCost2 = $0C40007C;
  pjResourceCost3 = $0C40007D;
  pjResourceFlag10 = $0C40007E;
  pjResourceFlag1 = $0C40007F;
  pjResourceFlag2 = $0C400080;
  pjResourceFlag3 = $0C400081;
  pjResourceFlag4 = $0C400082;
  pjResourceFlag5 = $0C400083;
  pjResourceFlag6 = $0C400084;
  pjResourceFlag7 = $0C400085;
  pjResourceFlag8 = $0C400086;
  pjResourceFlag9 = $0C400087;
  pjResourceHyperlink = $0C40008A;
  pjResourceHyperlinkAddress = $0C40008B;
  pjResourceHyperlinkSubAddress = $0C40008C;
  pjResourceHyperlinkHref = $0C40008D;
  pjResourceIsAssignment = $0C400090;
  pjResourceTaskSummaryName = $0C40009F;
  pjResourceCanLevel = $0C4000A3;
  pjResourceWorkContour = $0C4000A4;
  pjResourceCost4 = $0C4000A6;
  pjResourceCost5 = $0C4000A7;
  pjResourceCost6 = $0C4000A8;
  pjResourceCost7 = $0C4000A9;
  pjResourceCost8 = $0C4000AA;
  pjResourceCost9 = $0C4000AB;
  pjResourceCost10 = $0C4000AC;
  pjResourceDate1 = $0C4000AD;
  pjResourceDate2 = $0C4000AE;
  pjResourceDate3 = $0C4000AF;
  pjResourceDate4 = $0C4000B0;
  pjResourceDate5 = $0C4000B1;
  pjResourceDate6 = $0C4000B2;
  pjResourceDate7 = $0C4000B3;
  pjResourceDate8 = $0C4000B4;
  pjResourceDate9 = $0C4000B5;
  pjResourceDate10 = $0C4000B6;
  pjResourceDuration4 = $0C4000B7;
  pjResourceDuration5 = $0C4000B8;
  pjResourceDuration6 = $0C4000B9;
  pjResourceDuration7 = $0C4000BA;
  pjResourceDuration8 = $0C4000BB;
  pjResourceDuration9 = $0C4000BC;
  pjResourceDuration10 = $0C4000BD;
  pjResourceFinish6 = $0C4000BE;
  pjResourceFinish7 = $0C4000BF;
  pjResourceFinish8 = $0C4000C0;
  pjResourceFinish9 = $0C4000C1;
  pjResourceFinish10 = $0C4000C2;
  pjResourceFlag11 = $0C4000C3;
  pjResourceFlag12 = $0C4000C4;
  pjResourceFlag13 = $0C4000C5;
  pjResourceFlag14 = $0C4000C6;
  pjResourceFlag15 = $0C4000C7;
  pjResourceFlag16 = $0C4000C8;
  pjResourceFlag17 = $0C4000C9;
  pjResourceFlag18 = $0C4000CA;
  pjResourceFlag19 = $0C4000CB;
  pjResourceFlag20 = $0C4000CC;
  pjResourceNumber6 = $0C4000CD;
  pjResourceNumber7 = $0C4000CE;
  pjResourceNumber8 = $0C4000CF;
  pjResourceNumber9 = $0C4000D0;
  pjResourceNumber10 = $0C4000D1;
  pjResourceNumber11 = $0C4000D2;
  pjResourceNumber12 = $0C4000D3;
  pjResourceNumber13 = $0C4000D4;
  pjResourceNumber14 = $0C4000D5;
  pjResourceNumber15 = $0C4000D6;
  pjResourceNumber16 = $0C4000D7;
  pjResourceNumber17 = $0C4000D8;
  pjResourceNumber18 = $0C4000D9;
  pjResourceNumber19 = $0C4000DA;
  pjResourceNumber20 = $0C4000DB;
  pjResourceStart6 = $0C4000DC;
  pjResourceStart7 = $0C4000DD;
  pjResourceStart8 = $0C4000DE;
  pjResourceStart9 = $0C4000DF;
  pjResourceStart10 = $0C4000E0;
  pjResourceText11 = $0C4000E1;
  pjResourceText12 = $0C4000E2;
  pjResourceText13 = $0C4000E3;
  pjResourceText14 = $0C4000E4;
  pjResourceText15 = $0C4000E5;
  pjResourceText16 = $0C4000E6;
  pjResourceText17 = $0C4000E7;
  pjResourceText18 = $0C4000E8;
  pjResourceText19 = $0C4000E9;
  pjResourceText20 = $0C4000EA;
  pjResourceText21 = $0C4000EB;
  pjResourceText22 = $0C4000EC;
  pjResourceText23 = $0C4000ED;
  pjResourceText24 = $0C4000EE;
  pjResourceText25 = $0C4000EF;
  pjResourceText26 = $0C4000F0;
  pjResourceText27 = $0C4000F1;
  pjResourceText28 = $0C4000F2;
  pjResourceText29 = $0C4000F3;
  pjResourceText30 = $0C4000F4;
  pjResourcePhonetics = $0C4000FC;
  pjResourceIndex = $0C4000FD;
  pjResourceAssignmentDelay = $0C400101;
  pjResourceAssignmentUnits = $0C400102;
  pjResourceBaselineStart = $0C400103;
  pjResourceBaselineFinish = $0C400104;
  pjResourceConfirmed = $0C400105;
  pjResourceFinish = $0C400106;
  pjResourceLevelingDelay = $0C400107;
  pjResourceResponsePending = $0C400108;
  pjResourceStart = $0C400109;
  pjResourceTeamStatusPending = $0C40010A;
  pjResourceUpdateNeeded = $0C40010B;
  pjResourceCV = $0C40010C;
  pjResourceCostRateTable = $0C40010D;
  pjResourceWorkgroup = $0C400110;
  pjResourceProject = $0C400111;
  pjResourceOutlineCode1 = $0C400116;
  pjResourceOutlineCode2 = $0C400118;
  pjResourceOutlineCode3 = $0C40011A;
  pjResourceOutlineCode4 = $0C40011C;
  pjResourceOutlineCode5 = $0C40011E;
  pjResourceOutlineCode6 = $0C400120;
  pjResourceOutlineCode7 = $0C400122;
  pjResourceOutlineCode8 = $0C400124;
  pjResourceOutlineCode9 = $0C400126;
  pjResourceOutlineCode10 = $0C400128;
  pjResourceMaterialLabel = $0C40012B;
  pjResourceType = $0C40012C;
  pjResourceVAC = $0C40012D;
  pjResourceGroupbySummary = $0C400132;
  pjResourceWindowsUserAccount = $0C400137;
  pjResourceHyperlinkScreenTip = $0C400138;
  pjResourceWBS = $0C400154;
  pjResourceBaseline1Work = $0C400156;
  pjResourceBaseline1Cost = $0C400157;
  pjResourceBaseline1Start = $0C40015C;
  pjResourceBaseline1Finish = $0C40015D;
  pjResourceBaseline2Work = $0C400160;
  pjResourceBaseline2Cost = $0C400161;
  pjResourceBaseline2Start = $0C400166;
  pjResourceBaseline2Finish = $0C400167;
  pjResourceBaseline3Work = $0C40016A;
  pjResourceBaseline3Cost = $0C40016B;
  pjResourceBaseline3Start = $0C400170;
  pjResourceBaseline3Finish = $0C400171;
  pjResourceBaseline4Work = $0C400174;
  pjResourceBaseline4Cost = $0C400175;
  pjResourceBaseline4Start = $0C40017A;
  pjResourceBaseline4Finish = $0C40017B;
  pjResourceBaseline5Work = $0C40017E;
  pjResourceBaseline5Cost = $0C40017F;
  pjResourceBaseline5Start = $0C400184;
  pjResourceBaseline5Finish = $0C400185;
  pjResourceBaseline6Work = $0C400188;
  pjResourceBaseline6Cost = $0C400189;
  pjResourceBaseline6Start = $0C40018E;
  pjResourceBaseline6Finish = $0C40018F;
  pjResourceBaseline7Work = $0C400192;
  pjResourceBaseline7Cost = $0C400193;
  pjResourceBaseline7Start = $0C400198;
  pjResourceBaseline7Finish = $0C400199;
  pjResourceBaseline8Work = $0C40019C;
  pjResourceBaseline8Cost = $0C40019D;
  pjResourceBaseline8Start = $0C4001A2;
  pjResourceBaseline8Finish = $0C4001A3;
  pjResourceBaseline9Work = $0C4001A6;
  pjResourceBaseline9Cost = $0C4001A7;
  pjResourceBaseline9Start = $0C4001AC;
  pjResourceBaseline9Finish = $0C4001AD;
  pjResourceBaseline10Work = $0C4001B0;
  pjResourceBaseline10Cost = $0C4001B1;
  pjResourceBaseline10Start = $0C4001B6;
  pjResourceBaseline10Finish = $0C4001B7;
  pjResourceEnterpriseUniqueID = $0C4001BB;
  pjResourceEnterpriseCost1 = $0C4001BE;
  pjResourceEnterpriseCost2 = $0C4001BF;
  pjResourceEnterpriseCost3 = $0C4001C0;
  pjResourceEnterpriseCost4 = $0C4001C1;
  pjResourceEnterpriseCost5 = $0C4001C2;
  pjResourceEnterpriseCost6 = $0C4001C3;
  pjResourceEnterpriseCost7 = $0C4001C4;
  pjResourceEnterpriseCost8 = $0C4001C5;
  pjResourceEnterpriseCost9 = $0C4001C6;
  pjResourceEnterpriseCost10 = $0C4001C7;
  pjResourceEnterpriseDate1 = $0C4001C8;
  pjResourceEnterpriseDate2 = $0C4001C9;
  pjResourceEnterpriseDate3 = $0C4001CA;
  pjResourceEnterpriseDate4 = $0C4001CB;
  pjResourceEnterpriseDate5 = $0C4001CC;
  pjResourceEnterpriseDate6 = $0C4001CD;
  pjResourceEnterpriseDate7 = $0C4001CE;
  pjResourceEnterpriseDate8 = $0C4001CF;
  pjResourceEnterpriseDate9 = $0C4001D0;
  pjResourceEnterpriseDate10 = $0C4001D1;
  pjResourceEnterpriseDate11 = $0C4001D2;
  pjResourceEnterpriseDate12 = $0C4001D3;
  pjResourceEnterpriseDate13 = $0C4001D4;
  pjResourceEnterpriseDate14 = $0C4001D5;
  pjResourceEnterpriseDate15 = $0C4001D6;
  pjResourceEnterpriseDate16 = $0C4001D7;
  pjResourceEnterpriseDate17 = $0C4001D8;
  pjResourceEnterpriseDate18 = $0C4001D9;
  pjResourceEnterpriseDate19 = $0C4001DA;
  pjResourceEnterpriseDate20 = $0C4001DB;
  pjResourceEnterpriseDate21 = $0C4001DC;
  pjResourceEnterpriseDate22 = $0C4001DD;
  pjResourceEnterpriseDate23 = $0C4001DE;
  pjResourceEnterpriseDate24 = $0C4001DF;
  pjResourceEnterpriseDate25 = $0C4001E0;
  pjResourceEnterpriseDate26 = $0C4001E1;
  pjResourceEnterpriseDate27 = $0C4001E2;
  pjResourceEnterpriseDate28 = $0C4001E3;
  pjResourceEnterpriseDate29 = $0C4001E4;
  pjResourceEnterpriseDate30 = $0C4001E5;
  pjResourceEnterpriseDuration1 = $0C4001E6;
  pjResourceEnterpriseDuration2 = $0C4001E7;
  pjResourceEnterpriseDuration3 = $0C4001E8;
  pjResourceEnterpriseDuration4 = $0C4001E9;
  pjResourceEnterpriseDuration5 = $0C4001EA;
  pjResourceEnterpriseDuration6 = $0C4001EB;
  pjResourceEnterpriseDuration7 = $0C4001EC;
  pjResourceEnterpriseDuration8 = $0C4001ED;
  pjResourceEnterpriseDuration9 = $0C4001EE;
  pjResourceEnterpriseDuration10 = $0C4001EF;
  pjResourceEnterpriseFlag1 = $0C4001FA;
  pjResourceEnterpriseFlag2 = $0C4001FB;
  pjResourceEnterpriseFlag3 = $0C4001FC;
  pjResourceEnterpriseFlag4 = $0C4001FD;
  pjResourceEnterpriseFlag5 = $0C4001FE;
  pjResourceEnterpriseFlag6 = $0C4001FF;
  pjResourceEnterpriseFlag7 = $0C400200;
  pjResourceEnterpriseFlag8 = $0C400201;
  pjResourceEnterpriseFlag9 = $0C400202;
  pjResourceEnterpriseFlag10 = $0C400203;
  pjResourceEnterpriseFlag11 = $0C400204;
  pjResourceEnterpriseFlag12 = $0C400205;
  pjResourceEnterpriseFlag13 = $0C400206;
  pjResourceEnterpriseFlag14 = $0C400207;
  pjResourceEnterpriseFlag15 = $0C400208;
  pjResourceEnterpriseFlag16 = $0C400209;
  pjResourceEnterpriseFlag17 = $0C40020A;
  pjResourceEnterpriseFlag18 = $0C40020B;
  pjResourceEnterpriseFlag19 = $0C40020C;
  pjResourceEnterpriseFlag20 = $0C40020D;
  pjResourceEnterpriseNumber1 = $0C400222;
  pjResourceEnterpriseNumber2 = $0C400223;
  pjResourceEnterpriseNumber3 = $0C400224;
  pjResourceEnterpriseNumber4 = $0C400225;
  pjResourceEnterpriseNumber5 = $0C400226;
  pjResourceEnterpriseNumber6 = $0C400227;
  pjResourceEnterpriseNumber7 = $0C400228;
  pjResourceEnterpriseNumber8 = $0C400229;
  pjResourceEnterpriseNumber9 = $0C40022A;
  pjResourceEnterpriseNumber10 = $0C40022B;
  pjResourceEnterpriseNumber11 = $0C40022C;
  pjResourceEnterpriseNumber12 = $0C40022D;
  pjResourceEnterpriseNumber13 = $0C40022E;
  pjResourceEnterpriseNumber14 = $0C40022F;
  pjResourceEnterpriseNumber15 = $0C400230;
  pjResourceEnterpriseNumber16 = $0C400231;
  pjResourceEnterpriseNumber17 = $0C400232;
  pjResourceEnterpriseNumber18 = $0C400233;
  pjResourceEnterpriseNumber19 = $0C400234;
  pjResourceEnterpriseNumber20 = $0C400235;
  pjResourceEnterpriseNumber21 = $0C400236;
  pjResourceEnterpriseNumber22 = $0C400237;
  pjResourceEnterpriseNumber23 = $0C400238;
  pjResourceEnterpriseNumber24 = $0C400239;
  pjResourceEnterpriseNumber25 = $0C40023A;
  pjResourceEnterpriseNumber26 = $0C40023B;
  pjResourceEnterpriseNumber27 = $0C40023C;
  pjResourceEnterpriseNumber28 = $0C40023D;
  pjResourceEnterpriseNumber29 = $0C40023E;
  pjResourceEnterpriseNumber30 = $0C40023F;
  pjResourceEnterpriseNumber31 = $0C400240;
  pjResourceEnterpriseNumber32 = $0C400241;
  pjResourceEnterpriseNumber33 = $0C400242;
  pjResourceEnterpriseNumber34 = $0C400243;
  pjResourceEnterpriseNumber35 = $0C400244;
  pjResourceEnterpriseNumber36 = $0C400245;
  pjResourceEnterpriseNumber37 = $0C400246;
  pjResourceEnterpriseNumber38 = $0C400247;
  pjResourceEnterpriseNumber39 = $0C400248;
  pjResourceEnterpriseNumber40 = $0C400249;
  pjResourceEnterpriseOutlineCode1 = $0C40024A;
  pjResourceEnterpriseOutlineCode2 = $0C40024C;
  pjResourceEnterpriseOutlineCode3 = $0C40024E;
  pjResourceEnterpriseOutlineCode4 = $0C400250;
  pjResourceEnterpriseOutlineCode5 = $0C400252;
  pjResourceEnterpriseOutlineCode6 = $0C400254;
  pjResourceEnterpriseOutlineCode7 = $0C400256;
  pjResourceEnterpriseOutlineCode8 = $0C400258;
  pjResourceEnterpriseOutlineCode9 = $0C40025A;
  pjResourceEnterpriseOutlineCode10 = $0C40025C;
  pjResourceEnterpriseOutlineCode11 = $0C40025E;
  pjResourceEnterpriseOutlineCode12 = $0C400260;
  pjResourceEnterpriseOutlineCode13 = $0C400262;
  pjResourceEnterpriseOutlineCode14 = $0C400264;
  pjResourceEnterpriseOutlineCode15 = $0C400266;
  pjResourceEnterpriseOutlineCode16 = $0C400268;
  pjResourceEnterpriseOutlineCode17 = $0C40026A;
  pjResourceEnterpriseOutlineCode18 = $0C40026C;
  pjResourceEnterpriseOutlineCode19 = $0C40026E;
  pjResourceEnterpriseOutlineCode20 = $0C400270;
  pjResourceEnterpriseOutlineCode21 = $0C400272;
  pjResourceEnterpriseOutlineCode22 = $0C400274;
  pjResourceEnterpriseOutlineCode23 = $0C400276;
  pjResourceEnterpriseOutlineCode24 = $0C400278;
  pjResourceEnterpriseOutlineCode25 = $0C40027A;
  pjResourceEnterpriseOutlineCode26 = $0C40027C;
  pjResourceEnterpriseOutlineCode27 = $0C40027E;
  pjResourceEnterpriseOutlineCode28 = $0C400280;
  pjResourceEnterpriseOutlineCode29 = $0C400282;
  pjResourceEnterpriseRBS = $0C400284;
  pjResourceEnterpriseText1 = $0C400286;
  pjResourceEnterpriseText2 = $0C400287;
  pjResourceEnterpriseText3 = $0C400288;
  pjResourceEnterpriseText4 = $0C400289;
  pjResourceEnterpriseText5 = $0C40028A;
  pjResourceEnterpriseText6 = $0C40028B;
  pjResourceEnterpriseText7 = $0C40028C;
  pjResourceEnterpriseText8 = $0C40028D;
  pjResourceEnterpriseText9 = $0C40028E;
  pjResourceEnterpriseText10 = $0C40028F;
  pjResourceEnterpriseText11 = $0C400290;
  pjResourceEnterpriseText12 = $0C400291;
  pjResourceEnterpriseText13 = $0C400292;
  pjResourceEnterpriseText14 = $0C400293;
  pjResourceEnterpriseText15 = $0C400294;
  pjResourceEnterpriseText16 = $0C400295;
  pjResourceEnterpriseText17 = $0C400296;
  pjResourceEnterpriseText18 = $0C400297;
  pjResourceEnterpriseText19 = $0C400298;
  pjResourceEnterpriseText20 = $0C400299;
  pjResourceEnterpriseText21 = $0C40029A;
  pjResourceEnterpriseText22 = $0C40029B;
  pjResourceEnterpriseText23 = $0C40029C;
  pjResourceEnterpriseText24 = $0C40029D;
  pjResourceEnterpriseText25 = $0C40029E;
  pjResourceEnterpriseText26 = $0C40029F;
  pjResourceEnterpriseText27 = $0C4002A0;
  pjResourceEnterpriseText28 = $0C4002A1;
  pjResourceEnterpriseText29 = $0C4002A2;
  pjResourceEnterpriseText30 = $0C4002A3;
  pjResourceEnterpriseText31 = $0C4002A4;
  pjResourceEnterpriseText32 = $0C4002A5;
  pjResourceEnterpriseText33 = $0C4002A6;
  pjResourceEnterpriseText34 = $0C4002A7;
  pjResourceEnterpriseText35 = $0C4002A8;
  pjResourceEnterpriseText36 = $0C4002A9;
  pjResourceEnterpriseText37 = $0C4002AA;
  pjResourceEnterpriseText38 = $0C4002AB;
  pjResourceEnterpriseText39 = $0C4002AC;
  pjResourceEnterpriseText40 = $0C4002AD;
  pjResourceEnterpriseGeneric = $0C4002AE;
  pjResourceEnterpriseBaseCalendar = $0C4002AF;
  pjResourceEnterpriseRequiredValues = $0C4002B0;
  pjResourceEnterpriseNameUsed = $0C4002B1;
  pjResourceDemandedRequested = $0C4002B2;
  pjResourceEnterprise = $0C4002B3;
  pjResourceEnterpriseIsCheckedOut = $0C4002B4;
  pjResourceEnterpriseCheckedOutBy = $0C4002B5;
  pjResourceEnterpriseLastModifiedDate = $0C4002B6;
  pjResourceEnterpriseTeamMember = $0C4002B7;
  pjResourceEnterpriseInactive = $0C4002B8;
  pjResourceBookingType = $0C4002BB;
  pjResourceEnterpriseMultiValue20 = $0C4002BC;
  pjResourceEnterpriseMultiValue21 = $0C4002BE;
  pjResourceEnterpriseMultiValue22 = $0C4002C0;
  pjResourceEnterpriseMultiValue23 = $0C4002C2;
  pjResourceEnterpriseMultiValue24 = $0C4002C4;
  pjResourceEnterpriseMultiValue25 = $0C4002C6;
  pjResourceEnterpriseMultiValue26 = $0C4002C8;
  pjResourceEnterpriseMultiValue27 = $0C4002CA;
  pjResourceEnterpriseMultiValue28 = $0C4002CC;
  pjResourceEnterpriseMultiValue29 = $0C4002CE;
  pjResourceActualWorkProtected = $0C4002D0;
  pjResourceActualOvertimeWorkProtected = $0C4002D1;
  pjResourceCreated = $0C4002D6;
  pjResourceGuid = $0C4002D8;
  pjResourceCalendarGuid = $0C4002D9;
  pjResourceErrorMessage = $0C4002E2;
  pjResourceDefaultAssignmentOwner = $0C4002E4;
  pjResourceBudget = $0C4002F0;
  pjResourceBudgetWork = $0C4002F1;
  pjResourceBudgetCost = $0C4002F2;
  pjImportResource = $0C4002F3;
  pjResourceBaselineBudgetWork = $0C4002F4;
  pjResourceBaselineBudgetCost = $0C4002F5;
  pjResourceBaseline1BudgetWork = $0C4002F8;
  pjResourceBaseline1BudgetCost = $0C4002F9;
  pjResourceBaseline2BudgetWork = $0C4002FC;
  pjResourceBaseline2BudgetCost = $0C4002FD;
  pjResourceBaseline3BudgetWork = $0C400300;
  pjResourceBaseline3BudgetCost = $0C400301;
  pjResourceBaseline4BudgetWork = $0C400304;
  pjResourceBaseline4BudgetCost = $0C400305;
  pjResourceBaseline5BudgetWork = $0C400308;
  pjResourceBaseline5BudgetCost = $0C400309;
  pjResourceBaseline6BudgetWork = $0C40030C;
  pjResourceBaseline6BudgetCost = $0C40030D;
  pjResourceBaseline7BudgetWork = $0C400310;
  pjResourceBaseline7BudgetCost = $0C400311;
  pjResourceBaseline8BudgetWork = $0C400314;
  pjResourceBaseline8BudgetCost = $0C400315;
  pjResourceBaseline9BudgetWork = $0C400318;
  pjResourceBaseline9BudgetCost = $0C400319;
  pjResourceBaseline10BudgetWork = $0C40031C;
  pjResourceBaseline10BudgetCost = $0C40031D;
  pjResourceIsTeam = $0C400320;
  pjResourceCostCenter = $0C400321;
  pjTaskDelay = $0B400014;
{$EndRegion}
begin
  case Id of
    pjTaskActualCost                            : Result  :=  Task.ActualCost           ;
    pjTaskActualDuration                        : Result  :=  Task.ActualDuration       ;
    pjTaskActualFinish                          : Result  :=  Task.ActualFinish         ;
    pjTaskActualOvertimeCost                    : Result  :=  Task.ActualOvertimeCost   ;
    pjTaskActualOvertimeWork                    : Result  :=  Task.ActualOvertimeWork   ;
    pjTaskActualOvertimeWorkProtected           : Result  :=  Task.ActualOvertimeWorkProtected   ;
    pjTaskActualStart                           : Result  :=  Task.ActualStart   ;
    pjTaskActualWork                            : Result  :=  Task.ActualWork   ;
    pjTaskActualWorkProtected                   : Result  :=  Task.ActualWorkProtected   ;
    pjTaskACWP                                  : Result  :=  Task.ACWP   ;
    pjTaskBaselineCost                          : Result  :=  Task.BaselinenCost   ;
    pjTaskBaselineDuration,
    pjTaskBaselineDurationText                  : Result  :=  Task.BaselinenDuration   ;
    pjTaskBaselineDurationEstimated             : Result  :=  Task.BaselinenDurationEstimated   ;
    pjTaskBaselineFinish,
    pjTaskBaselineFinishText                    : Result  :=  Task.BaselinenFinish   ;
    pjTaskBaselineStart,
    pjTaskBaselineStartText                     : Result  :=  Task.BaselinenStart   ;
    pjTaskBaselineWork                          : Result  :=  Task.BaselinenWork   ;
    pjTaskBCWP                                  : Result  :=  Task.BCWP   ;
    pjTaskBCWS                                  : Result  :=  task.BCWS;
    pjTaskCalendar                              : Result  :=  task.Calendar;
    pjTaskConfirmed                             : Result  :=  task.Confirmed;
    pjTaskConstraintDate                        : Result  :=  task.ConstraintDate;
    pjTaskConstraintType                        : Result  :=  task.ConstraintType;
    pjTaskContact                               : Result  :=  task.Contact;
    pjTaskCost                                  : Result  :=  task.Cost;
    pjTaskCost1                                 : Result  :=  task.Cost1;
    pjTaskCost2                                 : Result  :=  task.Cost2;
    pjTaskCost3                                 : Result  :=  task.Cost3;
    pjTaskCost4                                 : Result  :=  task.Cost4;
    pjTaskCost5                                 : Result  :=  task.Cost5;
    pjTaskCost6                                 : Result  :=  task.Cost6;
    pjTaskCost7                                 : Result  :=  task.Cost7;
    pjTaskCost8                                 : Result  :=  task.Cost8;
    pjTaskCost9                                 : Result  :=  task.Cost9;
    pjTaskCost10                                : Result  :=  task.Cost10;
    pjTaskCostVariance                          : Result  :=  task.CostVariance;
    pjTaskCPI                                   : Result  :=  task.CPI;
    pjTaskCreated                               : Result  :=  task.Created;
    pjTaskCritical                              : Result  :=  task.Critical;
    pjTaskCV                                    : Result  :=  task.CV;
    pjTaskCVPercent                             : Result  :=  task.CVPercent;
    pjTaskDate1                                 : Result  :=  task.Date1;
    pjTaskDate2                                 : Result  :=  task.Date2;
    pjTaskDate3                                 : Result  :=  task.Date3;
    pjTaskDate4                                 : Result  :=  task.Date4;
    pjTaskDate5                                 : Result  :=  task.Date5;
    pjTaskDate6                                 : Result  :=  task.Date6;
    pjTaskDate7                                 : Result  :=  task.Date7;
    pjTaskDate8                                 : Result  :=  task.Date8;
    pjTaskDate9                                 : Result  :=  task.Date9;
    pjTaskDate10                                : Result  :=  task.Date10;
    pjTaskDeadline                              : Result  :=  task.Deadline;
    pjTaskDuration,
    pjTaskDurationText                          : Result  :=  task.Duration;
    pjTaskDuration1                             : Result  :=  task.Duration1;
    pjTaskDuration2                             : Result  :=  task.Duration2;
    pjTaskDuration3                             : Result  :=  task.Duration3;
    pjTaskDuration4                             : Result  :=  task.Duration4;
    pjTaskDuration5                             : Result  :=  task.Duration5;
    pjTaskDuration6                             : Result  :=  task.Duration6;
    pjTaskDuration7                             : Result  :=  task.Duration7;
    pjTaskDuration8                             : Result  :=  task.Duration8;
    pjTaskDuration9                             : Result  :=  task.Duration9;
    pjTaskDuration10                            : Result  :=  task.Duration10;
    pjTaskDuration1Estimated                    : Result  :=  task.Duration1Estimated;
    pjTaskDuration2Estimated                    : Result  :=  task.Duration2Estimated;
    pjTaskDuration3Estimated                    : Result  :=  task.Duration3Estimated;
    pjTaskDuration4Estimated                    : Result  :=  task.Duration4Estimated;
    pjTaskDuration5Estimated                    : Result  :=  task.Duration5Estimated;
    pjTaskDuration6Estimated                    : Result  :=  task.Duration6Estimated;
    pjTaskDuration7Estimated                    : Result  :=  task.Duration7Estimated;
    pjTaskDuration8Estimated                    : Result  :=  task.Duration8Estimated;
    pjTaskDuration9Estimated                    : Result  :=  task.Duration9Estimated;
    pjTaskDuration10Estimated                   : Result  :=  task.Duration10Estimated;
    pjTaskDurationVariance                      : Result  :=  task.DurationVariance;
    pjTaskEAC                                   : Result  :=  task.EAC;
    pjTaskEarlyFinish                           : Result  :=  task.EarlyFinish;
    pjTaskEarlyStart                            : Result  :=  task.EarlyStart;
    pjTaskEarnedValueMethod                     : Result  :=  task.EarnedValueMethod;
    pjTaskEffortDriven                          : Result  :=  task.EffortDriven;
    pjTaskEnterpriseCost1                       : Result  :=  task.EnterpriseCost1;
    pjTaskEnterpriseCost2                       : Result  :=  task.EnterpriseCost2;
    pjTaskEnterpriseCost3                       : Result  :=  task.EnterpriseCost3;
    pjTaskEnterpriseCost4                       : Result  :=  task.EnterpriseCost4;
    pjTaskEnterpriseCost5                       : Result  :=  task.EnterpriseCost5;
    pjTaskEnterpriseCost6                       : Result  :=  task.EnterpriseCost6;
    pjTaskEnterpriseCost7                       : Result  :=  task.EnterpriseCost7;
    pjTaskEnterpriseCost8                       : Result  :=  task.EnterpriseCost8;
    pjTaskEnterpriseCost9                       : Result  :=  task.EnterpriseCost9;
    pjTaskEnterpriseCost10                      : Result  :=  task.EnterpriseCost10;
    pjTaskEnterpriseDate1                       : Result  :=  task.EnterpriseDate1;
    pjTaskEnterpriseDate2                       : Result  :=  task.EnterpriseDate2;
    pjTaskEnterpriseDate3                       : Result  :=  task.EnterpriseDate3;
    pjTaskEnterpriseDate4                       : Result  :=  task.EnterpriseDate4;
    pjTaskEnterpriseDate5                       : Result  :=  task.EnterpriseDate5;
    pjTaskEnterpriseDate6                       : Result  :=  task.EnterpriseDate6;
    pjTaskEnterpriseDate7                       : Result  :=  task.EnterpriseDate7;
    pjTaskEnterpriseDate8                       : Result  :=  task.EnterpriseDate8;
    pjTaskEnterpriseDate9                       : Result  :=  task.EnterpriseDate9;
    pjTaskEnterpriseDate10                      : Result  :=  task.EnterpriseDate10;
    pjTaskEnterpriseDate11                      : Result  :=  task.EnterpriseDate11;
    pjTaskEnterpriseDate12                      : Result  :=  task.EnterpriseDate12;
    pjTaskEnterpriseDate13                      : Result  :=  task.EnterpriseDate13;
    pjTaskEnterpriseDate14                      : Result  :=  task.EnterpriseDate14;
    pjTaskEnterpriseDate15                      : Result  :=  task.EnterpriseDate15;
    pjTaskEnterpriseDate16                      : Result  :=  task.EnterpriseDate16;
    pjTaskEnterpriseDate17                      : Result  :=  task.EnterpriseDate17;
    pjTaskEnterpriseDate18                      : Result  :=  task.EnterpriseDate18;
    pjTaskEnterpriseDate19                      : Result  :=  task.EnterpriseDate19;
    pjTaskEnterpriseDate20                      : Result  :=  task.EnterpriseDate20;
    pjTaskEnterpriseDate21                      : Result  :=  task.EnterpriseDate21;
    pjTaskEnterpriseDate22                      : Result  :=  task.EnterpriseDate22;
    pjTaskEnterpriseDate23                      : Result  :=  task.EnterpriseDate23;
    pjTaskEnterpriseDate24                      : Result  :=  task.EnterpriseDate24;
    pjTaskEnterpriseDate25                      : Result  :=  task.EnterpriseDate25;
    pjTaskEnterpriseDate26                      : Result  :=  task.EnterpriseDate26;
    pjTaskEnterpriseDate27                      : Result  :=  task.EnterpriseDate27;
    pjTaskEnterpriseDate28                      : Result  :=  task.EnterpriseDate28;
    pjTaskEnterpriseDate29                      : Result  :=  task.EnterpriseDate29;
    pjTaskEnterpriseDate30                      : Result  :=  task.EnterpriseDate30;
    pjTaskEnterpriseDuration1                   : Result  :=  task.EnterpriseDuration1;
    pjTaskEnterpriseDuration2                   : Result  :=  task.EnterpriseDuration2;
    pjTaskEnterpriseDuration3                   : Result  :=  task.EnterpriseDuration3;
    pjTaskEnterpriseDuration4                   : Result  :=  task.EnterpriseDuration4;
    pjTaskEnterpriseDuration5                   : Result  :=  task.EnterpriseDuration5;
    pjTaskEnterpriseDuration6                   : Result  :=  task.EnterpriseDuration6;
    pjTaskEnterpriseDuration7                   : Result  :=  task.EnterpriseDuration7;
    pjTaskEnterpriseDuration8                   : Result  :=  task.EnterpriseDuration8;
    pjTaskEnterpriseDuration9                   : Result  :=  task.EnterpriseDuration9;
    pjTaskEnterpriseDuration10                  : Result  :=  task.EnterpriseDuration10;
    pjTaskEnterpriseFlag1                       : Result  :=  task.EnterpriseFlag1;
    pjTaskEnterpriseFlag2                       : Result  :=  task.EnterpriseFlag2;
    pjTaskEnterpriseFlag3                       : Result  :=  task.EnterpriseFlag3;
    pjTaskEnterpriseFlag4                       : Result  :=  task.EnterpriseFlag4;
    pjTaskEnterpriseFlag5                       : Result  :=  task.EnterpriseFlag5;
    pjTaskEnterpriseFlag6                       : Result  :=  task.EnterpriseFlag6;
    pjTaskEnterpriseFlag7                       : Result  :=  task.EnterpriseFlag7;
    pjTaskEnterpriseFlag8                       : Result  :=  task.EnterpriseFlag8;
    pjTaskEnterpriseFlag9                       : Result  :=  task.EnterpriseFlag9;
    pjTaskEnterpriseFlag10                      : Result  :=  task.EnterpriseFlag10;
    pjTaskEnterpriseFlag11                      : Result  :=  task.EnterpriseFlag11;
    pjTaskEnterpriseFlag12                      : Result  :=  task.EnterpriseFlag12;
    pjTaskEnterpriseFlag13                      : Result  :=  task.EnterpriseFlag13;
    pjTaskEnterpriseFlag14                      : Result  :=  task.EnterpriseFlag14;
    pjTaskEnterpriseFlag15                      : Result  :=  task.EnterpriseFlag15;
    pjTaskEnterpriseFlag16                      : Result  :=  task.EnterpriseFlag16;
    pjTaskEnterpriseFlag17                      : Result  :=  task.EnterpriseFlag17;
    pjTaskEnterpriseFlag18                      : Result  :=  task.EnterpriseFlag18;
    pjTaskEnterpriseFlag19                      : Result  :=  task.EnterpriseFlag19;
    pjTaskEnterpriseFlag20                      : Result  :=  task.EnterpriseFlag20;
    pjTaskEnterpriseNumber1                     : Result  :=  task.EnterpriseNumber1;
    pjTaskEnterpriseNumber2                     : Result  :=  task.EnterpriseNumber2;
    pjTaskEnterpriseNumber3                     : Result  :=  task.EnterpriseNumber3;
    pjTaskEnterpriseNumber4                     : Result  :=  task.EnterpriseNumber4;
    pjTaskEnterpriseNumber5                     : Result  :=  task.EnterpriseNumber5;
    pjTaskEnterpriseNumber6                     : Result  :=  task.EnterpriseNumber6;
    pjTaskEnterpriseNumber7                     : Result  :=  task.EnterpriseNumber7;
    pjTaskEnterpriseNumber8                     : Result  :=  task.EnterpriseNumber8;
    pjTaskEnterpriseNumber9                     : Result  :=  task.EnterpriseNumber9;
    pjTaskEnterpriseNumber10                    : Result  :=  task.EnterpriseNumber10;
    pjTaskEnterpriseNumber11                    : Result  :=  task.EnterpriseNumber11;
    pjTaskEnterpriseNumber12                    : Result  :=  task.EnterpriseNumber12;
    pjTaskEnterpriseNumber13                    : Result  :=  task.EnterpriseNumber13;
    pjTaskEnterpriseNumber14                    : Result  :=  task.EnterpriseNumber14;
    pjTaskEnterpriseNumber15                    : Result  :=  task.EnterpriseNumber15;
    pjTaskEnterpriseNumber16                    : Result  :=  task.EnterpriseNumber16;
    pjTaskEnterpriseNumber17                    : Result  :=  task.EnterpriseNumber17;
    pjTaskEnterpriseNumber18                    : Result  :=  task.EnterpriseNumber18;
    pjTaskEnterpriseNumber19                    : Result  :=  task.EnterpriseNumber19;
    pjTaskEnterpriseNumber20                    : Result  :=  task.EnterpriseNumber20;
    pjTaskEnterpriseNumber21                    : Result  :=  task.EnterpriseNumber21;
    pjTaskEnterpriseNumber22                    : Result  :=  task.EnterpriseNumber22;
    pjTaskEnterpriseNumber23                    : Result  :=  task.EnterpriseNumber23;
    pjTaskEnterpriseNumber24                    : Result  :=  task.EnterpriseNumber24;
    pjTaskEnterpriseNumber25                    : Result  :=  task.EnterpriseNumber25;
    pjTaskEnterpriseNumber26                    : Result  :=  task.EnterpriseNumber26;
    pjTaskEnterpriseNumber27                    : Result  :=  task.EnterpriseNumber27;
    pjTaskEnterpriseNumber28                    : Result  :=  task.EnterpriseNumber28;
    pjTaskEnterpriseNumber29                    : Result  :=  task.EnterpriseNumber29;
    pjTaskEnterpriseNumber30                    : Result  :=  task.EnterpriseNumber30;
    pjTaskEnterpriseNumber31                    : Result  :=  task.EnterpriseNumber31;
    pjTaskEnterpriseNumber32                    : Result  :=  task.EnterpriseNumber32;
    pjTaskEnterpriseNumber33                    : Result  :=  task.EnterpriseNumber33;
    pjTaskEnterpriseNumber34                    : Result  :=  task.EnterpriseNumber34;
    pjTaskEnterpriseNumber35                    : Result  :=  task.EnterpriseNumber35;
    pjTaskEnterpriseNumber36                    : Result  :=  task.EnterpriseNumber36;
    pjTaskEnterpriseNumber37                    : Result  :=  task.EnterpriseNumber37;
    pjTaskEnterpriseNumber38                    : Result  :=  task.EnterpriseNumber38;
    pjTaskEnterpriseNumber39                    : Result  :=  task.EnterpriseNumber39;
    pjTaskEnterpriseNumber40                    : Result  :=  task.EnterpriseNumber40;
    pjTaskEnterpriseOutlineCode1                : Result  :=  task.EnterpriseOutlineCode1;
    pjTaskEnterpriseOutlineCode2                : Result  :=  task.EnterpriseOutlineCode2;
    pjTaskEnterpriseOutlineCode3                : Result  :=  task.EnterpriseOutlineCode3;
    pjTaskEnterpriseOutlineCode4                : Result  :=  task.EnterpriseOutlineCode4;
    pjTaskEnterpriseOutlineCode5                : Result  :=  task.EnterpriseOutlineCode5;
    pjTaskEnterpriseOutlineCode6                : Result  :=  task.EnterpriseOutlineCode6;
    pjTaskEnterpriseOutlineCode7                : Result  :=  task.EnterpriseOutlineCode7;
    pjTaskEnterpriseOutlineCode8                : Result  :=  task.EnterpriseOutlineCode8;
    pjTaskEnterpriseOutlineCode9                : Result  :=  task.EnterpriseOutlineCode9;
    pjTaskEnterpriseOutlineCode10               : Result  :=  task.EnterpriseOutlineCode10;
    pjTaskEnterpriseOutlineCode11               : Result  :=  task.EnterpriseOutlineCode11;
    pjTaskEnterpriseOutlineCode12               : Result  :=  task.EnterpriseOutlineCode12;
    pjTaskEnterpriseOutlineCode13               : Result  :=  task.EnterpriseOutlineCode13;
    pjTaskEnterpriseOutlineCode14               : Result  :=  task.EnterpriseOutlineCode14;
    pjTaskEnterpriseOutlineCode15               : Result  :=  task.EnterpriseOutlineCode15;
    pjTaskEnterpriseOutlineCode16               : Result  :=  task.EnterpriseOutlineCode16;
    pjTaskEnterpriseOutlineCode17               : Result  :=  task.EnterpriseOutlineCode17;
    pjTaskEnterpriseOutlineCode18               : Result  :=  task.EnterpriseOutlineCode18;
    pjTaskEnterpriseOutlineCode19               : Result  :=  task.EnterpriseOutlineCode19;
    pjTaskEnterpriseOutlineCode20               : Result  :=  task.EnterpriseOutlineCode20;
    pjTaskEnterpriseOutlineCode21               : Result  :=  task.EnterpriseOutlineCode21;
    pjTaskEnterpriseOutlineCode22               : Result  :=  task.EnterpriseOutlineCode22;
    pjTaskEnterpriseOutlineCode23               : Result  :=  task.EnterpriseOutlineCode23;
    pjTaskEnterpriseOutlineCode24               : Result  :=  task.EnterpriseOutlineCode24;
    pjTaskEnterpriseOutlineCode25               : Result  :=  task.EnterpriseOutlineCode25;
    pjTaskEnterpriseOutlineCode26               : Result  :=  task.EnterpriseOutlineCode26;
    pjTaskEnterpriseOutlineCode27               : Result  :=  task.EnterpriseOutlineCode27;
    pjTaskEnterpriseOutlineCode28               : Result  :=  task.EnterpriseOutlineCode28;
    pjTaskEnterpriseOutlineCode29               : Result  :=  task.EnterpriseOutlineCode29;
    pjTaskEnterpriseOutlineCode30               : Result  :=  task.EnterpriseOutlineCode30;
    pjTaskEnterpriseProjectCost1                : Result  :=  task.EnterpriseProjectCost1;
    pjTaskEnterpriseProjectCost2                : Result  :=  task.EnterpriseProjectCost2;
    pjTaskEnterpriseProjectCost3                : Result  :=  task.EnterpriseProjectCost3;
    pjTaskEnterpriseProjectCost4                : Result  :=  task.EnterpriseProjectCost4;
    pjTaskEnterpriseProjectCost5                : Result  :=  task.EnterpriseProjectCost5;
    pjTaskEnterpriseProjectCost6                : Result  :=  task.EnterpriseProjectCost6;
    pjTaskEnterpriseProjectCost7                : Result  :=  task.EnterpriseProjectCost7;
    pjTaskEnterpriseProjectCost8                : Result  :=  task.EnterpriseProjectCost8;
    pjTaskEnterpriseProjectCost9                : Result  :=  task.EnterpriseProjectCost9;
    pjTaskEnterpriseProjectCost10               : Result  :=  task.EnterpriseProjectCost10;
    pjTaskEnterpriseProjectDate1                : Result  :=  task.EnterpriseProjectDate1;
    pjTaskEnterpriseProjectDate2                : Result  :=  task.EnterpriseProjectDate2;
    pjTaskEnterpriseProjectDate3                : Result  :=  task.EnterpriseProjectDate3;
    pjTaskEnterpriseProjectDate4                : Result  :=  task.EnterpriseProjectDate4;
    pjTaskEnterpriseProjectDate5                : Result  :=  task.EnterpriseProjectDate5;
    pjTaskEnterpriseProjectDate6                : Result  :=  task.EnterpriseProjectDate6;
    pjTaskEnterpriseProjectDate7                : Result  :=  task.EnterpriseProjectDate7;
    pjTaskEnterpriseProjectDate8                : Result  :=  task.EnterpriseProjectDate8;
    pjTaskEnterpriseProjectDate9                : Result  :=  task.EnterpriseProjectDate9;
    pjTaskEnterpriseProjectDate10               : Result  :=  task.EnterpriseProjectDate10;
    pjTaskEnterpriseProjectDate11               : Result  :=  task.EnterpriseProjectDate11;
    pjTaskEnterpriseProjectDate12               : Result  :=  task.EnterpriseProjectDate12;
    pjTaskEnterpriseProjectDate13               : Result  :=  task.EnterpriseProjectDate13;
    pjTaskEnterpriseProjectDate14               : Result  :=  task.EnterpriseProjectDate14;
    pjTaskEnterpriseProjectDate15               : Result  :=  task.EnterpriseProjectDate15;
    pjTaskEnterpriseProjectDate16               : Result  :=  task.EnterpriseProjectDate16;
    pjTaskEnterpriseProjectDate17               : Result  :=  task.EnterpriseProjectDate17;
    pjTaskEnterpriseProjectDate18               : Result  :=  task.EnterpriseProjectDate18;
    pjTaskEnterpriseProjectDate19               : Result  :=  task.EnterpriseProjectDate19;
    pjTaskEnterpriseProjectDate20               : Result  :=  task.EnterpriseProjectDate20;
    pjTaskEnterpriseProjectDate21               : Result  :=  task.EnterpriseProjectDate21;
    pjTaskEnterpriseProjectDate22               : Result  :=  task.EnterpriseProjectDate22;
    pjTaskEnterpriseProjectDate23               : Result  :=  task.EnterpriseProjectDate23;
    pjTaskEnterpriseProjectDate24               : Result  :=  task.EnterpriseProjectDate24;
    pjTaskEnterpriseProjectDate25               : Result  :=  task.EnterpriseProjectDate25;
    pjTaskEnterpriseProjectDate26               : Result  :=  task.EnterpriseProjectDate26;
    pjTaskEnterpriseProjectDate27               : Result  :=  task.EnterpriseProjectDate27;
    pjTaskEnterpriseProjectDate28               : Result  :=  task.EnterpriseProjectDate28;
    pjTaskEnterpriseProjectDate29               : Result  :=  task.EnterpriseProjectDate29;
    pjTaskEnterpriseProjectDate30               : Result  :=  task.EnterpriseProjectDate30;
    pjTaskEnterpriseProjectDuration1            : Result  :=  task.EnterpriseProjectDuration1;
    pjTaskEnterpriseProjectDuration2            : Result  :=  task.EnterpriseProjectDuration2;
    pjTaskEnterpriseProjectDuration3            : Result  :=  task.EnterpriseProjectDuration3;
    pjTaskEnterpriseProjectDuration4            : Result  :=  task.EnterpriseProjectDuration4;
    pjTaskEnterpriseProjectDuration5            : Result  :=  task.EnterpriseProjectDuration5;
    pjTaskEnterpriseProjectDuration6            : Result  :=  task.EnterpriseProjectDuration6;
    pjTaskEnterpriseProjectDuration7            : Result  :=  task.EnterpriseProjectDuration7;
    pjTaskEnterpriseProjectDuration8            : Result  :=  task.EnterpriseProjectDuration8;
    pjTaskEnterpriseProjectDuration9            : Result  :=  task.EnterpriseProjectDuration9;
    pjTaskEnterpriseProjectDuration10           : Result  :=  task.EnterpriseProjectDuration10;
    pjTaskEnterpriseProjectFlag1                : Result  :=  task.EnterpriseProjectFlag1;
    pjTaskEnterpriseProjectFlag2                : Result  :=  task.EnterpriseProjectFlag2;
    pjTaskEnterpriseProjectFlag3                : Result  :=  task.EnterpriseProjectFlag3;
    pjTaskEnterpriseProjectFlag4                : Result  :=  task.EnterpriseProjectFlag4;
    pjTaskEnterpriseProjectFlag5                : Result  :=  task.EnterpriseProjectFlag5;
    pjTaskEnterpriseProjectFlag6                : Result  :=  task.EnterpriseProjectFlag6;
    pjTaskEnterpriseProjectFlag7                : Result  :=  task.EnterpriseProjectFlag7;
    pjTaskEnterpriseProjectFlag8                : Result  :=  task.EnterpriseProjectFlag8;
    pjTaskEnterpriseProjectFlag9                : Result  :=  task.EnterpriseProjectFlag9;
    pjTaskEnterpriseProjectFlag10               : Result  :=  task.EnterpriseProjectFlag10;
    pjTaskEnterpriseProjectFlag11               : Result  :=  task.EnterpriseProjectFlag11;
    pjTaskEnterpriseProjectFlag12               : Result  :=  task.EnterpriseProjectFlag12;
    pjTaskEnterpriseProjectFlag13               : Result  :=  task.EnterpriseProjectFlag13;
    pjTaskEnterpriseProjectFlag14               : Result  :=  task.EnterpriseProjectFlag14;
    pjTaskEnterpriseProjectFlag15               : Result  :=  task.EnterpriseProjectFlag15;
    pjTaskEnterpriseProjectFlag16               : Result  :=  task.EnterpriseProjectFlag16;
    pjTaskEnterpriseProjectFlag17               : Result  :=  task.EnterpriseProjectFlag17;
    pjTaskEnterpriseProjectFlag18               : Result  :=  task.EnterpriseProjectFlag18;
    pjTaskEnterpriseProjectFlag19               : Result  :=  task.EnterpriseProjectFlag19;
    pjTaskEnterpriseProjectFlag20               : Result  :=  task.EnterpriseProjectFlag20;
    pjTaskEnterpriseProjectNumber1              : Result  :=  task.EnterpriseProjectNumber1;
    pjTaskEnterpriseProjectNumber2              : Result  :=	task.EnterpriseProjectNumber2	;
    pjTaskEnterpriseProjectNumber3	            : Result  :=	task.EnterpriseProjectNumber3	;
    pjTaskEnterpriseProjectNumber4	            : Result  :=	task.EnterpriseProjectNumber4	;
    pjTaskEnterpriseProjectNumber5	            : Result  :=	task.EnterpriseProjectNumber5	;
    pjTaskEnterpriseProjectNumber6	            : Result  :=	task.EnterpriseProjectNumber6	;
    pjTaskEnterpriseProjectNumber7	            : Result  :=	task.EnterpriseProjectNumber7	;
    pjTaskEnterpriseProjectNumber8	            : Result  :=	task.EnterpriseProjectNumber8	;
    pjTaskEnterpriseProjectNumber9	            : Result  :=	task.EnterpriseProjectNumber9	;
    pjTaskEnterpriseProjectNumber10	            : Result  :=	task.EnterpriseProjectNumber10	;
    pjTaskEnterpriseProjectNumber11	            : Result  :=	task.EnterpriseProjectNumber11	;
    pjTaskEnterpriseProjectNumber12	            : Result  :=	task.EnterpriseProjectNumber12	;
    pjTaskEnterpriseProjectNumber13	            : Result  :=	task.EnterpriseProjectNumber13	;
    pjTaskEnterpriseProjectNumber14	            : Result  :=	task.EnterpriseProjectNumber14	;
    pjTaskEnterpriseProjectNumber15	            : Result  :=	task.EnterpriseProjectNumber15	;
    pjTaskEnterpriseProjectNumber16	            : Result  :=	task.EnterpriseProjectNumber16	;
    pjTaskEnterpriseProjectNumber17	            : Result  :=	task.EnterpriseProjectNumber17	;
    pjTaskEnterpriseProjectNumber18	            : Result  :=	task.EnterpriseProjectNumber18	;
    pjTaskEnterpriseProjectNumber19	            : Result  :=	task.EnterpriseProjectNumber19	;
    pjTaskEnterpriseProjectNumber20	            : Result  :=	task.EnterpriseProjectNumber20	;
    pjTaskEnterpriseProjectNumber21	            : Result  :=	task.EnterpriseProjectNumber21	;
    pjTaskEnterpriseProjectNumber22	            : Result  :=	task.EnterpriseProjectNumber22	;
    pjTaskEnterpriseProjectNumber23	            : Result  :=	task.EnterpriseProjectNumber23	;
    pjTaskEnterpriseProjectNumber24	            : Result  :=	task.EnterpriseProjectNumber24	;
    pjTaskEnterpriseProjectNumber25	            : Result  :=	task.EnterpriseProjectNumber25	;
    pjTaskEnterpriseProjectNumber26	            : Result  :=	task.EnterpriseProjectNumber26	;
    pjTaskEnterpriseProjectNumber27	            : Result  :=	task.EnterpriseProjectNumber27	;
    pjTaskEnterpriseProjectNumber28	            : Result  :=	task.EnterpriseProjectNumber28	;
    pjTaskEnterpriseProjectNumber29	            : Result  :=	task.EnterpriseProjectNumber29	;
    pjTaskEnterpriseProjectNumber30	            : Result  :=	task.EnterpriseProjectNumber30	;
    pjTaskEnterpriseProjectNumber31	            : Result  :=	task.EnterpriseProjectNumber31	;
    pjTaskEnterpriseProjectNumber32	            : Result  :=	task.EnterpriseProjectNumber32	;
    pjTaskEnterpriseProjectNumber33	            : Result  :=	task.EnterpriseProjectNumber33	;
    pjTaskEnterpriseProjectNumber34	            : Result  :=	task.EnterpriseProjectNumber34	;
    pjTaskEnterpriseProjectNumber35	            : Result  :=	task.EnterpriseProjectNumber35	;
    pjTaskEnterpriseProjectNumber36	            : Result  :=	task.EnterpriseProjectNumber36	;
    pjTaskEnterpriseProjectNumber37	            : Result  :=	task.EnterpriseProjectNumber37	;
    pjTaskEnterpriseProjectNumber38	            : Result  :=	task.EnterpriseProjectNumber38	;
    pjTaskEnterpriseProjectNumber39	            : Result  :=	task.EnterpriseProjectNumber39	;
    pjTaskEnterpriseProjectNumber40	            : Result  :=	task.EnterpriseProjectNumber40	;
    pjTaskEnterpriseProjectOutlineCode1         : Result  :=  task.EnterpriseProjectOutlineCode1;
    pjTaskEnterpriseProjectOutlineCode2	        : Result  :=	task.EnterpriseProjectOutlineCode2	;
    pjTaskEnterpriseProjectOutlineCode3	        : Result  :=	task.EnterpriseProjectOutlineCode3	;
    pjTaskEnterpriseProjectOutlineCode4	        : Result  :=	task.EnterpriseProjectOutlineCode4	;
    pjTaskEnterpriseProjectOutlineCode5	        : Result  :=	task.EnterpriseProjectOutlineCode5	;
    pjTaskEnterpriseProjectOutlineCode6	        : Result  :=	task.EnterpriseProjectOutlineCode6	;
    pjTaskEnterpriseProjectOutlineCode7	        : Result  :=	task.EnterpriseProjectOutlineCode7	;
    pjTaskEnterpriseProjectOutlineCode8	        : Result  :=	task.EnterpriseProjectOutlineCode8	;
    pjTaskEnterpriseProjectOutlineCode9	        : Result  :=	task.EnterpriseProjectOutlineCode9	;
    pjTaskEnterpriseProjectOutlineCode10	      : Result  :=	task.EnterpriseProjectOutlineCode10	;
    pjTaskEnterpriseProjectOutlineCode11	      : Result  :=	task.EnterpriseProjectOutlineCode11	;
    pjTaskEnterpriseProjectOutlineCode12	      : Result  :=	task.EnterpriseProjectOutlineCode12	;
    pjTaskEnterpriseProjectOutlineCode13	      : Result  :=	task.EnterpriseProjectOutlineCode13	;
    pjTaskEnterpriseProjectOutlineCode14	      : Result  :=	task.EnterpriseProjectOutlineCode14	;
    pjTaskEnterpriseProjectOutlineCode15	      : Result  :=	task.EnterpriseProjectOutlineCode15	;
    pjTaskEnterpriseProjectOutlineCode16	      : Result  :=	task.EnterpriseProjectOutlineCode16	;
    pjTaskEnterpriseProjectOutlineCode17	      : Result  :=	task.EnterpriseProjectOutlineCode17	;
    pjTaskEnterpriseProjectOutlineCode18	      : Result  :=	task.EnterpriseProjectOutlineCode18	;
    pjTaskEnterpriseProjectOutlineCode19	      : Result  :=	task.EnterpriseProjectOutlineCode19	;
    pjTaskEnterpriseProjectOutlineCode20	      : Result  :=	task.EnterpriseProjectOutlineCode20	;
    pjTaskEnterpriseProjectOutlineCode21	      : Result  :=	task.EnterpriseProjectOutlineCode21	;
    pjTaskEnterpriseProjectOutlineCode22	      : Result  :=	task.EnterpriseProjectOutlineCode22	;
    pjTaskEnterpriseProjectOutlineCode23	      : Result  :=	task.EnterpriseProjectOutlineCode23	;
    pjTaskEnterpriseProjectOutlineCode24	      : Result  :=	task.EnterpriseProjectOutlineCode24	;
    pjTaskEnterpriseProjectOutlineCode25	      : Result  :=	task.EnterpriseProjectOutlineCode25	;
    pjTaskEnterpriseProjectOutlineCode26	      : Result  :=	task.EnterpriseProjectOutlineCode26	;
    pjTaskEnterpriseProjectOutlineCode27	      : Result  :=	task.EnterpriseProjectOutlineCode27	;
    pjTaskEnterpriseProjectOutlineCode28	      : Result  :=	task.EnterpriseProjectOutlineCode28	;
    pjTaskEnterpriseProjectOutlineCode29	      : Result  :=	task.EnterpriseProjectOutlineCode29	;
    pjTaskEnterpriseProjectOutlineCode30	      : Result  :=	task.EnterpriseProjectOutlineCode30	;
    pjTaskEnterpriseProjectText1                : Result  :=  task.EnterpriseProjectText1;
    pjTaskEnterpriseProjectText2	              : Result  :=	task.EnterpriseProjectText2	;
    pjTaskEnterpriseProjectText3	              : Result  :=	task.EnterpriseProjectText3	;
    pjTaskEnterpriseProjectText4	              : Result  :=	task.EnterpriseProjectText4	;
    pjTaskEnterpriseProjectText5	              : Result  :=	task.EnterpriseProjectText5	;
    pjTaskEnterpriseProjectText6	              : Result  :=	task.EnterpriseProjectText6	;
    pjTaskEnterpriseProjectText7	              : Result  :=	task.EnterpriseProjectText7	;
    pjTaskEnterpriseProjectText8	              : Result  :=	task.EnterpriseProjectText8	;
    pjTaskEnterpriseProjectText9	              : Result  :=	task.EnterpriseProjectText9	;
    pjTaskEnterpriseProjectText10	              : Result  :=	task.EnterpriseProjectText10	;
    pjTaskEnterpriseProjectText11	              : Result  :=	task.EnterpriseProjectText11	;
    pjTaskEnterpriseProjectText12	              : Result  :=	task.EnterpriseProjectText12	;
    pjTaskEnterpriseProjectText13	              : Result  :=	task.EnterpriseProjectText13	;
    pjTaskEnterpriseProjectText14	              : Result  :=	task.EnterpriseProjectText14	;
    pjTaskEnterpriseProjectText15	              : Result  :=	task.EnterpriseProjectText15	;
    pjTaskEnterpriseProjectText16	              : Result  :=	task.EnterpriseProjectText16	;
    pjTaskEnterpriseProjectText17	              : Result  :=	task.EnterpriseProjectText17	;
    pjTaskEnterpriseProjectText18	              : Result  :=	task.EnterpriseProjectText18	;
    pjTaskEnterpriseProjectText19	              : Result  :=	task.EnterpriseProjectText19	;
    pjTaskEnterpriseProjectText20	              : Result  :=	task.EnterpriseProjectText20	;
    pjTaskEnterpriseProjectText21	              : Result  :=	task.EnterpriseProjectText21	;
    pjTaskEnterpriseProjectText22	              : Result  :=	task.EnterpriseProjectText22	;
    pjTaskEnterpriseProjectText23	              : Result  :=	task.EnterpriseProjectText23	;
    pjTaskEnterpriseProjectText24	              : Result  :=	task.EnterpriseProjectText24	;
    pjTaskEnterpriseProjectText25	              : Result  :=	task.EnterpriseProjectText25	;
    pjTaskEnterpriseProjectText26	              : Result  :=	task.EnterpriseProjectText26	;
    pjTaskEnterpriseProjectText27	              : Result  :=	task.EnterpriseProjectText27	;
    pjTaskEnterpriseProjectText28	              : Result  :=	task.EnterpriseProjectText28	;
    pjTaskEnterpriseProjectText29	              : Result  :=	task.EnterpriseProjectText29	;
    pjTaskEnterpriseProjectText30	              : Result  :=	task.EnterpriseProjectText30	;
    pjTaskEnterpriseProjectText31	              : Result  :=	task.EnterpriseProjectText31	;
    pjTaskEnterpriseProjectText32	              : Result  :=	task.EnterpriseProjectText32	;
    pjTaskEnterpriseProjectText33	              : Result  :=	task.EnterpriseProjectText33	;
    pjTaskEnterpriseProjectText34	              : Result  :=	task.EnterpriseProjectText34	;
    pjTaskEnterpriseProjectText35	              : Result  :=	task.EnterpriseProjectText35	;
    pjTaskEnterpriseProjectText36	              : Result  :=	task.EnterpriseProjectText36	;
    pjTaskEnterpriseProjectText37	              : Result  :=	task.EnterpriseProjectText37	;
    pjTaskEnterpriseProjectText38	              : Result  :=	task.EnterpriseProjectText38	;
    pjTaskEnterpriseProjectText39	              : Result  :=	task.EnterpriseProjectText39	;
    pjTaskEnterpriseProjectText40	              : Result  :=	task.EnterpriseProjectText40	;
    pjTaskEnterpriseText1                       : Result  :=  task.EnterpriseText1;
    pjTaskEnterpriseText2	                      : Result  :=	task.EnterpriseText2	;
    pjTaskEnterpriseText3	                      : Result  :=	task.EnterpriseText3	;
    pjTaskEnterpriseText4	                      : Result  :=	task.EnterpriseText4	;
    pjTaskEnterpriseText5	                      : Result  :=	task.EnterpriseText5	;
    pjTaskEnterpriseText6	                      : Result  :=	task.EnterpriseText6	;
    pjTaskEnterpriseText7	                      : Result  :=	task.EnterpriseText7	;
    pjTaskEnterpriseText8	                      : Result  :=	task.EnterpriseText8	;
    pjTaskEnterpriseText9	                      : Result  :=	task.EnterpriseText9	;
    pjTaskEnterpriseText10	                    : Result  :=	task.EnterpriseText10	;
    pjTaskEnterpriseText11	                    : Result  :=	task.EnterpriseText11	;
    pjTaskEnterpriseText12	                    : Result  :=	task.EnterpriseText12	;
    pjTaskEnterpriseText13	                    : Result  :=	task.EnterpriseText13	;
    pjTaskEnterpriseText14	                    : Result  :=	task.EnterpriseText14	;
    pjTaskEnterpriseText15	                    : Result  :=	task.EnterpriseText15	;
    pjTaskEnterpriseText16	                    : Result  :=	task.EnterpriseText16	;
    pjTaskEnterpriseText17	                    : Result  :=	task.EnterpriseText17	;
    pjTaskEnterpriseText18	                    : Result  :=	task.EnterpriseText18	;
    pjTaskEnterpriseText19	                    : Result  :=	task.EnterpriseText19	;
    pjTaskEnterpriseText20	                    : Result  :=	task.EnterpriseText20	;
    pjTaskEnterpriseText21	                    : Result  :=	task.EnterpriseText21	;
    pjTaskEnterpriseText22	                    : Result  :=	task.EnterpriseText22	;
    pjTaskEnterpriseText23	                    : Result  :=	task.EnterpriseText23	;
    pjTaskEnterpriseText24	                    : Result  :=	task.EnterpriseText24	;
    pjTaskEnterpriseText25	                    : Result  :=	task.EnterpriseText25	;
    pjTaskEnterpriseText26	                    : Result  :=	task.EnterpriseText26	;
    pjTaskEnterpriseText27	                    : Result  :=	task.EnterpriseText27	;
    pjTaskEnterpriseText28	                    : Result  :=	task.EnterpriseText28	;
    pjTaskEnterpriseText29	                    : Result  :=	task.EnterpriseText29	;
    pjTaskEnterpriseText30	                    : Result  :=	task.EnterpriseText30	;
    pjTaskEnterpriseText31	                    : Result  :=	task.EnterpriseText31	;
    pjTaskEnterpriseText32	                    : Result  :=	task.EnterpriseText32	;
    pjTaskEnterpriseText33	                    : Result  :=	task.EnterpriseText33	;
    pjTaskEnterpriseText34	                    : Result  :=	task.EnterpriseText34	;
    pjTaskEnterpriseText35	                    : Result  :=	task.EnterpriseText35	;
    pjTaskEnterpriseText36	                    : Result  :=	task.EnterpriseText36	;
    pjTaskEnterpriseText37	                    : Result  :=	task.EnterpriseText37	;
    pjTaskEnterpriseText38	                    : Result  :=	task.EnterpriseText38	;
    pjTaskEnterpriseText39	                    : Result  :=	task.EnterpriseText39	;
    pjTaskEnterpriseText40	                    : Result  :=	task.EnterpriseText40	;
    pjTaskEstimated                             : Result  :=  task.Estimated;
    pjTaskExternalTask                          : Result  :=  task.ExternalTask;
    pjTaskFinishText,
    pjTaskFinish                                : Result  :=  task.Finish;
    pjTaskFinish1                               : Result  :=  task.Finish1;
    pjTaskFinish2	                              : Result  :=	task.Finish2	;
    pjTaskFinish3	                              : Result  :=	task.Finish3	;
    pjTaskFinish4	                              : Result  :=	task.Finish4	;
    pjTaskFinish5	                              : Result  :=	task.Finish5	;
    pjTaskFinish6	                              : Result  :=	task.Finish6	;
    pjTaskFinish7	                              : Result  :=	task.Finish7	;
    pjTaskFinish8	                              : Result  :=	task.Finish8	;
    pjTaskFinish9	                              : Result  :=	task.Finish9	;
    pjTaskFinish10	                            : Result  :=	task.Finish10	;
    pjTaskFinishSlack                           : Result  :=  task.FinishSlack;
    pjTaskFinishVariance                        : Result  :=  task.FinishVariance;
    pjTaskFixedCost                             : Result  :=  task.FixedCost;
    pjTaskFixedCostAccrual                      : Result  :=  task.FixedCostAccrual;
    pjTaskFixedDuration                         : Result  :=  task.FixedDuration;
    pjTaskFlag1                                 : Result  :=  task.Flag1;
    pjTaskFlag2	                                : Result  :=	task.Flag2	;
    pjTaskFlag3	                                : Result  :=	task.Flag3	;
    pjTaskFlag4	                                : Result  :=	task.Flag4	;
    pjTaskFlag5	                                : Result  :=	task.Flag5	;
    pjTaskFlag6	                                : Result  :=	task.Flag6	;
    pjTaskFlag7	                                : Result  :=	task.Flag7	;
    pjTaskFlag8	                                : Result  :=	task.Flag8	;
    pjTaskFlag9	                                : Result  :=	task.Flag9	;
    pjTaskFlag10	                              : Result  :=	task.Flag10	;
    pjTaskFlag11	                              : Result  :=	task.Flag11	;
    pjTaskFlag12	                              : Result  :=	task.Flag12	;
    pjTaskFlag13	                              : Result  :=	task.Flag13	;
    pjTaskFlag14	                              : Result  :=	task.Flag14	;
    pjTaskFlag15	                              : Result  :=	task.Flag15	;
    pjTaskFlag16	                              : Result  :=	task.Flag16	;
    pjTaskFlag17	                              : Result  :=	task.Flag17	;
    pjTaskFlag18	                              : Result  :=	task.Flag18	;
    pjTaskFlag19	                              : Result  :=	task.Flag19	;
    pjTaskFlag20	                              : Result  :=	task.Flag20	;
    pjTaskFreeSlack                             : Result  :=  task.FreeSlack;
    pjTaskGroupBySummary                        : Result  :=  task.GroupBySummary;
    pjTaskHideBar                               : Result  :=  task.HideBar;
    pjTaskHyperlink                             : Result  :=  task.Hyperlink;
    pjTaskHyperlinkAddress                      : Result  :=  task.HyperlinkAddress;
    pjTaskHyperlinkHREF                         : Result  :=  task.HyperlinkHREF;
    pjTaskHyperlinkScreenTip                    : Result  :=  task.HyperlinkScreenTip;
    pjTaskHyperlinkSubAddress                   : Result  :=  task.HyperlinkSubAddress;
    pjTaskID                                    : Result  :=  task.ID;
    pjTaskIgnoreResourceCalendar                : Result  :=  task.IgnoreResourceCalendar;
    pjTaskIndex                                 : Result  :=  task.Index;
    pjTaskLateFinish                            : Result  :=  task.LateFinish;
    pjTaskLateStart                             : Result  :=  task.LateStart;
    pjTaskLevelAssignments                      : Result  :=  task.LevelIndividualAssignments;
    pjTaskLevelCanSplit                         : Result  :=  task.LevelingCanSplit;
    pjTaskLevelDelay                            : Result  :=  task.LevelingDelay;
    pjTaskLinkedFields                          : Result  :=  task.LinkedFields;
    pjTaskMarked                                : Result  :=  task.Marked;
    pjTaskMilestone                             : Result  :=  task.Milestone;
    pjTaskName                                  : Result  :=  task.Name;
    pjTaskNotes                                 : Result  :=  task.Notes;
    pjTaskNumber1                               : Result  :=  task.Number1;
    pjTaskNumber2	                              : Result  :=	task.Number2	;
    pjTaskNumber3	                              : Result  :=	task.Number3	;
    pjTaskNumber4	                              : Result  :=	task.Number4	;
    pjTaskNumber5	                              : Result  :=	task.Number5	;
    pjTaskNumber6	                              : Result  :=	task.Number6	;
    pjTaskNumber7	                              : Result  :=	task.Number7	;
    pjTaskNumber8	                              : Result  :=	task.Number8	;
    pjTaskNumber9	                              : Result  :=	task.Number9	;
    pjTaskNumber10	                            : Result  :=	task.Number10	;
    pjTaskNumber11	                            : Result  :=	task.Number11	;
    pjTaskNumber12	                            : Result  :=	task.Number12	;
    pjTaskNumber13	                            : Result  :=	task.Number13	;
    pjTaskNumber14	                            : Result  :=	task.Number14	;
    pjTaskNumber15	                            : Result  :=	task.Number15	;
    pjTaskNumber16	                            : Result  :=	task.Number16	;
    pjTaskNumber17	                            : Result  :=	task.Number17	;
    pjTaskNumber18	                            : Result  :=	task.Number18	;
    pjTaskNumber19	                            : Result  :=	task.Number19	;
    pjTaskNumber20	                            : Result  :=	task.Number20	;
    pjTaskObjects                               : Result  :=  task.Objects;
    pjTaskOutlineCode1                          : Result  :=  task.OutlineCode1;
    pjTaskOutlineCode2	                        : Result  :=	task.OutlineCode2	;
    pjTaskOutlineCode3	                        : Result  :=	task.OutlineCode3	;
    pjTaskOutlineCode4	                        : Result  :=	task.OutlineCode4	;
    pjTaskOutlineCode5	                        : Result  :=	task.OutlineCode5	;
    pjTaskOutlineCode6	                        : Result  :=	task.OutlineCode6	;
    pjTaskOutlineCode7	                        : Result  :=	task.OutlineCode7	;
    pjTaskOutlineCode8	                        : Result  :=	task.OutlineCode8	;
    pjTaskOutlineCode9	                        : Result  :=	task.OutlineCode9	;
    pjTaskOutlineCode10	                        : Result  :=	task.OutlineCode10	;
    pjTaskOutlineLevel                          : Result  :=  task.OutlineLevel;
    pjTaskOutlineNumber                         : Result  :=  task.OutlineNumber;
    pjTaskOverallocated                         : Result  :=  task.Overallocated;
    pjTaskOvertimeCost                          : Result  :=  task.OvertimeCost;
    pjTaskOvertimeWork                          : Result  :=  task.OvertimeWork;
    pjTaskParentTask                            : Result  :=  task.Parent;
    pjTaskPercentComplete                       : Result  :=  task.PercentComplete;
    pjTaskPercentWorkComplete                   : Result  :=  task.PercentWorkComplete;
    pjTaskPhysicalPercentComplete               : Result  :=  task.PhysicalPercentComplete;
    pjTaskPredecessors                          : Result  :=  task.Predecessors;
    pjTaskPreleveledFinish                      : Result  :=  task.PreleveledFinish;
    pjTaskPreleveledStart                       : Result  :=  task.PreleveledStart;
    pjTaskPriority                              : Result  :=  task.Priority;
    pjTaskProject                               : Result  :=  task.Project;
    pjTaskRecurring                             : Result  :=  task.Recurring;
    pjTaskRegularWork                           : Result  :=  task.RegularWork;
    pjTaskRemainingCost                         : Result  :=  task.RemainingCost;
    pjTaskRemainingDuration                     : Result  :=  task.RemainingDuration;
    pjTaskRemainingOvertimeCost                 : Result  :=  task.RemainingOvertimeCost;
    pjTaskRemainingOvertimeWork                 : Result  :=  task.RemainingOvertimeWork;
    pjTaskRemainingWork                         : Result  :=  task.RemainingWork;
    pjTaskResourceGroup                         : Result  :=  task.ResourceGroup;
    pjTaskResourceInitials                      : Result  :=  task.ResourceInitials;
    pjTaskResourceNames                         : Result  :=  task.ResourceNames;
    pjTaskResourcePhonetics                     : Result  :=  task.ResourcePhonetics;
    pjTaskResponsePending                       : Result  :=  task.ResponsePending;
    pjTaskResume                                : Result  :=  task.Resume;
    pjTaskRollup                                : Result  :=  task.Rollup;
    pjTaskSPI                                   : Result  :=  task.SPI;
    pjTaskStart,
    pjTaskStartText                             : Result  :=  Task.start                ;
    pjTaskStart1                                : Result  :=  task.Start1;
    pjTaskStart2	                              : Result  :=	task.Start2	;
    pjTaskStart3	                              : Result  :=	task.Start3	;
    pjTaskStart4	                              : Result  :=	task.Start4	;
    pjTaskStart5	                              : Result  :=	task.Start5	;
    pjTaskStart6	                              : Result  :=	task.Start6	;
    pjTaskStart7	                              : Result  :=	task.Start7	;
    pjTaskStart8	                              : Result  :=	task.Start8	;
    pjTaskStart9	                              : Result  :=	task.Start9	;
    pjTaskStart10	                              : Result  :=	task.Start10	;
    pjTaskStartSlack                            : Result  :=  task.StartSlack;
    pjTaskStartVariance                         : Result  :=  task.StartVariance;
    pjTaskStatus                                : Result  :=  task.Status;
    pjTaskStop                                  : Result  :=  task.Stop;
    pjTaskSubproject                            : Result  :=  task.Subproject;
    pjTaskSubprojectReadOnly                    : Result  :=  task.SubprojectReadOnly;
    pjTaskSuccessors                            : Result  :=  task.Successors;
    pjTaskSummary                               : Result  :=  task.Summary;
    pjTaskSV                                    : Result  :=  task.SV;
    pjTaskSVPercent                             : Result  :=  task.SVPercent;
    pjTaskTCPI                                  : Result  :=  task.TCPI;
    pjTaskTeamStatusPending                     : Result  :=  task.TeamStatusPending;
    pjTaskText1                                 : Result  :=  task.Text1;
    pjTaskText2	                                : Result  :=	task.Text2	;
    pjTaskText3	                                : Result  :=	task.Text3	;
    pjTaskText4	                                : Result  :=	task.Text4	;
    pjTaskText5	                                : Result  :=	task.Text5	;
    pjTaskText6	                                : Result  :=	task.Text6	;
    pjTaskText7	                                : Result  :=	task.Text7	;
    pjTaskText8	                                : Result  :=	task.Text8	;
    pjTaskText9	                                : Result  :=	task.Text9	;
    pjTaskText10	                              : Result  :=	task.Text10	;
    pjTaskText11	                              : Result  :=	task.Text11	;
    pjTaskText12	                              : Result  :=	task.Text12	;
    pjTaskText13	                              : Result  :=	task.Text13	;
    pjTaskText14	                              : Result  :=	task.Text14	;
    pjTaskText15	                              : Result  :=	task.Text15	;
    pjTaskText16	                              : Result  :=	task.Text16	;
    pjTaskText17	                              : Result  :=	task.Text17	;
    pjTaskText18	                              : Result  :=	task.Text18	;
    pjTaskText19	                              : Result  :=	task.Text19	;
    pjTaskText20	                              : Result  :=	task.Text20	;
    pjTaskText21	                              : Result  :=	task.Text21	;
    pjTaskText22	                              : Result  :=	task.Text22	;
    pjTaskText23	                              : Result  :=	task.Text23	;
    pjTaskText24	                              : Result  :=	task.Text24	;
    pjTaskText25	                              : Result  :=	task.Text25	;
    pjTaskText26	                              : Result  :=	task.Text26	;
    pjTaskText27	                              : Result  :=	task.Text27	;
    pjTaskText28	                              : Result  :=	task.Text28	;
    pjTaskText29	                              : Result  :=	task.Text29	;
    pjTaskText30	                              : Result  :=	task.Text30	;
    pjTaskTotalSlack                            : Result  :=  task.TotalSlack;
    pjTaskType                                  : Result  :=  task.Type;
    pjTaskUniqueID                              : Result  :=  task.UniqueID;
    pjTaskUniquePredecessors                    : Result  :=  task.UniqueIDPredecessors;
    pjTaskUniqueSuccessors                      : Result  :=  task.UniqueIDSuccessors;
    pjTaskUpdateNeeded                          : Result  :=  task.UpdateNeeded;
    pjTaskVAC                                   : Result  :=  task.VAC;
    pjTaskWBS                                   : Result  :=  task.WBS;
    pjTaskWBSPredecessors                       : Result  :=  task.WBSPredecessors;
    pjTaskWBSSuccessors                         : Result  :=  task.WBSSuccessors;
    pjTaskWork                                  : Result  :=  task.Work;
    pjTaskWorkVariance                          : Result  :=  task.WorkVariance;
  end;
end;


Function ShowBasicVariantType(varVar: Variant):String;
var
  typeString : string;
  basicType  : Integer;
  sTmp:String;
  dTmp:TDateTime;
  iTmp:LongInt;
  ETmp:Extended;
  cTmp:Currency;
  ByTmp:Byte;
  BTmp:Boolean;
  wTmp:LongWord;

  strResult:String;
begin
  typeString:='';
  basicType := VarType(varVar) and VarTypeMask;
  strResult:='OK';
  case basicType of
    varEmpty     :  begin
                      typeString := 'varEmpty';
                      strResult:='IsEmpty';
                    end;
    varNull      :  begin
                      typeString := 'varNull';
                      strResult:='IsEmpty';
                    end;
    varSmallInt,
    varInt64,
    varInteger   :  begin
                      typeString := 'varInteger';
                      try
                        iTmp:=varVar;
                      except
                        strResult:='IsError';
                      end;
                    end;
    varSingle,
    varDouble    :  begin
                      typeString := 'varDouble';
                      try
                        ETmp:=Varvar;
                      except
                        strResult:='IsError';
                      end;
                    end;
    varCurrency  :  begin
                      typeString := 'varCurrency';
                      try
                        CTmp:=Varvar;
                      except
                        strResult:='IsError';
                      end;
                    end;
    varDate      :  begin
                      typeString := 'varDate';
                    end;
    varOleStr,
    varStrArg,
    varString,
    varTypeMask  :  begin
                      typeString := 'varString';
                      try
                        sTmp:=Varvar;
                        if sTmp='' then
                          strResult:='IsEmpty';
                      except
                        strResult:='IsError';
                      end;
                    end;

    varDispatch,
    varError,
    varVariant,
    varUnknown,
    varAny       :  begin
                      typeString := 'varAny';
                      strResult:='IsError';
                    end;

    varByte      :  begin
                      typeString := 'varByte';
                      try
                        ByTmp:=Varvar;
                      except
                        strResult:='IsError';
                      end;
                    end;
    varWord,
    varLongWord  :  begin
                      typeString := 'varLongWord';
                      try
                        WTmp:=Varvar;
                      except
                        strResult:='IsError';
                      end;
                    end;

    varBoolean   :  begin
                      typeString := 'varBoolean';
                      try
                        BTmp:=Varvar;
                      except
                        strResult:='IsError';
                      end;
                    end;

  end;
  result:=strResult;
end;
end.
