unit ExportaExcel;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ExtCtrls,
  Dialogs, StdCtrls, ComObj, ZDataset, DB, DBClient,
  ComCtrls, cxGridDBTableView,cxCheckListBox, cxProgressBar, cxPC, cxGridCustomTableView, utilerias;

  //Function ExportarExcel(Datos,DatoImagen: TclientDataset;DBGrid: TNextDbGrid;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
  Function ExportarExcelDX(Datos,DatoImagen: TZQuery;DBGrid: TcxGridDBTableView;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
  Function ExportExcelPersonalizado(DatoImagen: TZQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean;
  Function ExportExcelconGrafica(sParamColumnas :string;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean;
  Function CadenaEntero (Cadena: String): Integer;
  function LetraColumna (x:integer):string;
  function ColumnaNombre(Numero:Integer):string;

  function ExportarPDF(Vista:TcxGridDBTableView; var Tabla:TClientDataSet):Boolean;

type
  TBorderWeight = (bwHairline,bwMedium,bwThick,bwThin);
  TBorderLineStyle = (blContinuous, blDash, blDashDot, blDashDotDot,
                      blDot, blDouble, blSlantDashDot, blLine, blNone);
  TBorders =(xlEdgeBottom);

const
   //hoja
   xlWBATWorksheet = -4167;

   xlCenter = -4108;
   xlBottom =-4107;
   xlNone = -4142;

   //estilo de linea
   xlContinuous = $00000001;
   xlDash = $FFFFEFED;
   xlDashDot = $00000004;
   xlDashDotDot = $00000005;
   xlDot = $FFFFEFEA;
   xlDouble = $FFFFEFE9;
   xlSlantDashDot = $0000000D;
   xlLineStyleNone = $FFFFEFD2;

   //--------- Grosores en bordes de Celdas -----------------------------------
   xlThin   = $00000002; // ( 2) Fino
   xlMedium = $00000003; // ( 3) Medi

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;
   xlHAlignCenterAcrossSelection = $00000007;
   xlHAlignDistributed = $FFFFEFEB;
   xlHAlignFill = $00000005;
   xlHAlignGeneral = $00000001;
   xlHAlignJustify = $FFFFEFDE;
   xlHAlignLeft = $FFFFEFDD;
   xlHAlignRight = $FFFFEFC8;

   //alineacion vertical
   xlVAlignBottom = $FFFFEFF5;
   xlVAlignCenter = $FFFFEFF4;
   xlVAlignDistributed = $FFFFEFE5B;
   xlVAlignJustify = $FFFFEFDE;
   xlVAlignTop = $FFFFEFC0;

   //Orientation
   xlDownward = $FFFFEFB6;
   xlHorizontal = $FFFFEFE0;
   xlUpward = $FFFFEFB5;
   xlVertical = $FFFFEFBA;
   xlDiagonalDown = 5;
   xlDiagonalUp = 6;
   xlInsideVertical = 11;
   xlInsideHorizontal = 12;

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo
   xl_CL_Gris_Claro = $16445675;
   xlThemeColorDark1=1;

   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;
   Xl_Blanco = clWhite;

implementation

Function ExportarExcelDX(Datos,DatoImagen: TZQuery;DBGrid: TcxGridDBTableView;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
var
  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
  Colinicio, Rowinicio : string;
  TempPath: String;
  LogoFile: String;

const
   //hoja
   xlWBATWorksheet = -4167;

   //estilo de linea
   xlContinuous = $00000001;
   xlDash = $FFFFEFED;
   xlDashDot = $00000004;
   xlDashDotDot = $00000005;
   xlDot = $FFFFEFEA;
   xlDouble = $FFFFEFE9;
   xlSlantDashDot = $0000000D;
   xlLineStyleNone = $FFFFEFD2;

   //--------- Grosores en bordes de Celdas -----------------------------------
   xlThin   = $00000002; // ( 2) Fino
   xlMedium = $00000003; // ( 3) Medi

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;
   xlHAlignCenterAcrossSelection = $00000007;
   xlHAlignDistributed = $FFFFEFEB;
   xlHAlignFill = $00000005;
   xlHAlignGeneral = $00000001;
   xlHAlignJustify = $FFFFEFDE;
   xlHAlignLeft = $FFFFEFDD;
   xlHAlignRight = $FFFFEFC8;

   //alineacion vertical
   xlVAlignBottom = $FFFFEFF5;
   xlVAlignCenter = $FFFFEFF4;
   xlVAlignDistributed = $FFFFEFE5B;
   xlVAlignJustify = $FFFFEFDE;
   xlVAlignTop = $FFFFEFC0;

   //Orientation
   xlDownward = $FFFFEFB6;
   xlHorizontal = $FFFFEFE0;
   xlUpward = $FFFFEFB5;
   xlVertical = $FFFFEFBA;

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo
   xl_CL_Gris_Claro = $16445675;


   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;

begin
  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  Try
    Progress.Position := 0;
    Panel.Visible := True;
  //lblprogress.Visible := True;
    panel.repaint;
  //lblprogress.repaint;
    Progress.Max := Datos.RecordCount;

    // Se crea la aplicacion

    Excel := CreateOleObject('Excel.Application');

    // Mostrar el excel
    Excel.Visible:= False;

    // evitar que nos pregunte si deseamos sobreescribir el archivo

    Excel.DisplayAlerts := true;

    // agregar libro de trabajo

    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

    // tomar una referencia a la hoja creada

    WorkSheet := WorkBook.WorkSheets[1];

    WorkSheet.Name := TituloPestaña;


    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( DatoImagen.FieldByName('bImagen')).SaveToFile(LogoFile);

    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
    WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
    WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
    WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+2,ColIni+1] := Titulo;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+3,ColIni+1] := Subtitulo;
    WorkSheet.Cells[RowIni+3,colIni+1].font.size := 11;
    WorkSheet.Cells[RowIni+3,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+3,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < DBGrid.ColumnCount do
    begin
      if DBGrid.Columns[columna].Visible = True then
      begin

        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := DBGrid.Columns[columna].Caption;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := DBGrid.Columns[Columna].Width*0.15;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
        Inc(ColMaxExc);

      end;
      Inc(Columna);
    end;

    ColMaxExc := ColMaxExc - 1;

    //estableciendo formato a los titulos de las columns
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(ColIni-1))+inttostr(RowIni)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(Colini-1))+inttostr(RowIni)].Borders.Weight:= 3;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ColorIndex := xl_CL_AzulCielo ;

    RowIni := RowIni-6;

    //estableciendo formato del encabezado
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+3)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+3)].Mergecells := True;

    RowIni := RowIni+6;

    columna:= 1;
    ColMaxExc := 1;

    Linea := 2;
    Datos.first;
    while not Datos.Eof do
    begin
      columna := 1;
      ColMaxExc := 1;
      while columna-1 < DBGrid.ColumnCount do
      begin
        if DBGrid.Columns[columna-1].Visible then
        begin
          try
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Datos.FieldByName(DBGrid.Columns[columna-1].DataBinding.FieldName).AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
            inc(ColMaxExc);
          except
            on e:Exception do
           // msg_er(e.ClassName + e.Message);
          end;
        end;
        Inc(Columna);
      end;
      Datos.Next;
      Progress.Position := Linea;
      inc(linea);
    end;

    ColMaxExc := ColMaxExc-1;

    //estableciendo formato a las celdas
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;

    Panel.Visible := False;

    Excel.Visible:= True;

    //guardar el archivo
   // WorkBook.SaveAs('archivo.xls');

   //cerrar el excel
  //  Excel.Quit;


  except
    on e: Exception do
    begin
      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
      Excel.Quit;
      Panel.Visible := False;
    end;

  End;
  DeleteFile(PChar(LogoFile));
end;


//
//Function ExportarExcel(Datos,DatoImagen: TclientDataset;DBGrid: TNextDbGrid;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
//var
//  Excel, WorkBook, WorkSheet: Variant;
//  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
//  Colinicio, Rowinicio : string;
//  TempPath: String;
//  LogoFile: String;
//
//const
//   //hoja
//   xlWBATWorksheet = -4167;
//
//   //estilo de linea
//   xlContinuous = $00000001;
//   xlDash = $FFFFEFED;
//   xlDashDot = $00000004;
//   xlDashDotDot = $00000005;
//   xlDot = $FFFFEFEA;
//   xlDouble = $FFFFEFE9;
//   xlSlantDashDot = $0000000D;
//   xlLineStyleNone = $FFFFEFD2;
//
//   //--------- Grosores en bordes de Celdas -----------------------------------
//   xlThin   = $00000002; // ( 2) Fino
//   xlMedium = $00000003; // ( 3) Medi
//
//   //alineaciones  horizontal
//   xlHAlignCenter = $FFFFEFF4;
//   xlHAlignCenterAcrossSelection = $00000007;
//   xlHAlignDistributed = $FFFFEFEB;
//   xlHAlignFill = $00000005;
//   xlHAlignGeneral = $00000001;
//   xlHAlignJustify = $FFFFEFDE;
//   xlHAlignLeft = $FFFFEFDD;
//   xlHAlignRight = $FFFFEFC8;
//
//   //alineacion vertical
//   xlVAlignBottom = $FFFFEFF5;
//   xlVAlignCenter = $FFFFEFF4;
//   xlVAlignDistributed = $FFFFEFE5B;
//   xlVAlignJustify = $FFFFEFDE;
//   xlVAlignTop = $FFFFEFC0;
//
//   //Orientation
//   xlDownward = $FFFFEFB6;
//   xlHorizontal = $FFFFEFE0;
//   xlUpward = $FFFFEFB5;
//   xlVertical = $FFFFEFBA;
//
//   //--------- Colores en Fondo de Celdas -------------------------------------
//   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
//   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
//   xl_CL_Turq      = $00000008; // ( 8) Truquesa
//   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
//   xl_CL_Rojo      = $00000003; // ( 3) Rojo
//
//
//   //Color de texto
//   Xl_Rojo = clRed;
//   xl_Lime = clLime;
//   Xl_Negro = clBlack;
//   Xl_Azul = clBlue;
//   Xl_Amarillo = clYellow;
//   Xl_Gris = clGray;
//
//begin
//  ColMAxExc := 0;
//  ColIni := 1;
//  RowIni := 1;
//
//  Try
//    Progress.Position := 0;
//    Panel.Visible := True;
//  //lblprogress.Visible := True;
//    panel.repaint;
//  //lblprogress.repaint;
//    Progress.Max := Datos.RecordCount;
//
//    // Se crea la aplicacion
//
//    Excel := CreateOleObject('Excel.Application');
//
//    // Mostrar el excel
//    Excel.Visible:= False;
//
//    // evitar que nos pregunte si deseamos sobreescribir el archivo
//
//    Excel.DisplayAlerts := true;
//
//    // agregar libro de trabajo
//
//    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
//
//    // tomar una referencia a la hoja creada
//
//    WorkSheet := WorkBook.WorkSheets[1];
//
//    WorkSheet.Name := TituloPestaña;
//
//
//    //encabezado
//    TempPath := GetEnvironmentVariable('TEMP');
//    LogoFile := TempPath + '\Temp.bmp';
//    TBlobField( DatoImagen.FieldByName('imagen1')).SaveToFile(LogoFile);
//
//    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 50, 70);
//    WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
//    WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
//    WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
//    WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;
//
//    WorkSheet.Cells[RowIni+2,ColIni+1] := Titulo;
//    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
//    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
//    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignCenter;
//
//    WorkSheet.Cells[RowIni+3,ColIni+1] := Subtitulo;
//    WorkSheet.Cells[RowIni+3,colIni+1].font.size := 11;
//    WorkSheet.Cells[RowIni+3,ColIni+1].WrapText := True;
//    WorkSheet.Cells[RowIni+3,ColIni+1].HorizontalAlignment := xlHAlignCenter;
//
//    RowIni := RowIni+6;
//
//    //obteniendo las columnas desde el grid y escribiendolas con formato
//    columna := 0;
//
//    while columna < DBGrid.Columns.Count do
//    begin
//      if DBGrid.Columns[columna].Visible = True then
//      begin
//
//        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := DBGrid.Columns[columna].Header.Caption;
//        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
//        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := DBGrid.Columns[Columna].Font.Size;
//        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
//        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := DBGrid.Columns[Columna].Width*0.15;
//        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
//        Inc(ColMaxExc);
//
//      end;
//      Inc(Columna);
//    end;
//
//    ColMaxExc := ColMaxExc - 1;
//
//    //estableciendo formato a los titulos de las columns
//    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(ColIni-1))+inttostr(RowIni)].Borders.LineStyle := XlDouble;
//    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(Colini-1))+inttostr(RowIni)].Borders.Weight:= 3;
//    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ColorIndex := xl_CL_TurqLight ;
//
//    RowIni := RowIni-6;
//
//    //estableciendo formato del encabezado
//    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
//    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+2)].Mergecells := True;
//    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+3)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+3)].Mergecells := True;
//
//    RowIni := RowIni+6;
//
//    columna:= 1;
//    ColMaxExc := 1;
//
//    Linea := 2;
//    Datos.first;
//    while not Datos.Eof do
//    begin
//      columna := 1;
//      ColMaxExc := 1;
//      while columna-1 < DBGrid.Columns.Count do
//      begin
//        if DBGrid.Columns[columna-1].Visible then
//        begin
//          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Datos.FieldByName(DBGrid.Columns[columna-1].FieldName).AsString;
//          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := DBGrid.Columns[columna-1].Font.Size;
//          //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
//          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
//          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
//          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
//          inc(ColMaxExc);
//        end;
//        Inc(Columna);
//      end;
//      Datos.Next;
//      Progress.Position := Linea;
//      inc(linea);
//
//    end;
//
//    ColMaxExc := ColMaxExc-1;
//
//    //estableciendo formato a las celdas
//    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.LineStyle := XlDouble;
//    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;
//
//    Panel.Visible := False;
//
//    Excel.Visible:= True;
//
//    //guardar el archivo
//   // WorkBook.SaveAs('archivo.xls');
//
//   //cerrar el excel
//  //  Excel.Quit;
//
//
//  except
//    on e: Exception do
//    begin
//      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
//      Excel.Quit;
//      Panel.Visible := False;
//    end;
//
//  End;
//  DeleteFile(PChar(LogoFile));
//end;

Function CadenaEntero (Cadena: String): Integer;
var entero : Integer;
begin
  Result := -1;
  Try
    entero := strToInt(Cadena);
    if entero >=0 then
      Result :=  entero;

  Except
    on e: exception do
      ShowMessage('Error el valor ingreso no es numérico');

  End;
end;

function LetraColumna (x:integer):string;
const letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
  Result := '';
  x := x+1;
  While x > 0 do begin
    Result := letras[1 + ((x - 1) Mod length(letras))] + Result;
    x := (x - 1) div length(letras);
  End;
end;

function ColumnaNombre(Numero:Integer):string;
var
    Valor,NumLetras:Integer;
    Cad:string;
begin
  NumLetras:=26;
  Cad:='';
  Valor:=Numero mod NumLetras;
  if Valor=0 then Valor:=26;
  if Numero-valor > 0 then Cad:=Char(64 + Trunc((Numero-Valor)/NumLetras));
  Cad:=cad + Char(64 + Valor);

  Result:=Cad;
end;

function ExportExcelPersonalizado(DatoImagen: TZQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean;
var
  Excel, Workbook, Worksheet: Variant;
  X, columx, rowx, idx, colx, NumCheked, ColIni, RowIni, ColMaxExc, columna, co: integer;
  avalorStr, valorStr, tipo: string;
  TempPath: String;
  LogoFile: String;
begin

  rowx := 2;
  columx := 0;
  x := 0;
  idx := 0;
  colx := 1;

  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  //HOja
  Excel := CreateOleObject('Excel.Application');
  // Mostrar el excel
  Excel.Visible:= True;
  // evitar que nos pregunte si deseamos sobreescribir el archivo
  Excel.DisplayAlerts := false;
  // agregar libro de trabajo
  Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
  // tomar una referencia a la hoja creada
  WorkSheet := WorkBook.WorkSheets[1];
  WorkSheet.Name := TituloPestaña;

  TempPath := GetEnvironmentVariable('TEMP');
  LogoFile := TempPath + '\Temp.bmp';
  TBlobField( DatoImagen.FieldByName('bImagen')).SaveToFile(LogoFile);

  WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 50);
  WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
  WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
  WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
  WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

  RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < grid.ColumnCount do
    begin
      if grid.Columns[columna].Visible = True then
      begin

        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := grid.Columns[columna].Caption;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
        Excel.Columns[LetraColumna(Columna)+':'+LetraColumna(Columna)].columnwidth := grid.Columns[columna].Width/7;
        Inc(ColMaxExc);
      end;
      NumCheked := ColMaxExc;
      Inc(Columna);
    end;


    ColMaxExc := ColMaxExc - 1;
    RowIni := RowIni-6;

    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Font.Bold := true;

  RowIni := RowIni+6;
   //FORMATO A ENCABEZADO EXCEL
  while x < NumCheked do
  begin
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := False;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.colorIndex := 0;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.Weight := xlThin;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalDown].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalUp].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.Color:=$00D58D53;
    inc(x);
  end;

  //CUERPO EXCEL
  idx := 0;
  colx := 0;
  //rowx := 12;
  columx := 2;

  //REGISTROS DEL GRID  OJO SOLO ACEPTA TCXGRIDDBTABLEVIEW...
  while idx < grid.ViewData.RowCount do
  begin
    columx := 1;
    colx := 0;
    co:=0;
    while colx < grid.ItemCount do
    begin
        if grid.ViewData.Rows[idx].Values[colx]=null then
          valorStr:=''
        else
          valorStr := grid.ViewData.Rows[idx].Values[colx] ;
        if grid.Columns[colx].Visible = True then
        begin
          if grid.Columns[colx].DataBinding.ValueType = 'DateTime' then
             WorkSheet.cells[idx+8,columx] := StrToDate(valorStr)
          else
             WorkSheet.cells[idx+8,columx] := valorStr;
          Inc(columx);
        end;
        if avalorStr=valorStr then
          inc(co);
        avalorStr:=valorStr;

      Inc(colx);
    end;

    if co=grid.ItemCount-1 then
    begin
      Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Mergecells := True;
      Excel.Range[LetraColumna(0)+IntToStr(idx+8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Interior.ColorIndex:=5;
      Excel.Range[LetraColumna(0)+IntToStr(idx+8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Font.Bold := False;
      //WorkSheet.cells[idx+8,columx] := valorStr;
    end;
    inc(idx);
  end;
  //APLICAR BORDES DELGADOS Y AUTOAJUSTE
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.colorIndex := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.TintAndShade := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.Weight := xlThin;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.Weight := xlThin;

  if grid.OptionsView.CellAutoHeight = False then
     Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].rowheight := 15;
  //Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].columns.autofit;
  Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].WrapText := True;


end;


function ExportarPDF(Vista: TcxGridDBTableView; var Tabla:TClientDataSet):Boolean;
{Creo: Rafael
Descripcion: Funcion para llenar con los registros de la vista de un cxgrid un cliendataset}
var
  f, c: integer;
  valorStr, nombre: string;
  AColumn: TcxCustomGridTableItem;
  Sender: TcxCustomGridTableView;
begin
  f:= 0;   //Para que inicie en la primera fila
  while f < Vista.dataController.rowcount do
  begin
    Tabla.Append; //Abrimo la tala para guardar los datos
    c := 0;  //Para que inicie en la primera columna
    while c < Vista.ColumnCount do
    begin
      if Vista.ViewData.Rows[f].Values[c]=null then  //Si la celda tiene nulo le asigna un vacio
        valorStr:=''
      else valorStr := Vista.ViewData.Rows[f].Values[c] ;   //Si tiene valor se lo asigna a la variable
      if Vista.Columns[c].DataBinding.FieldName       = 'sIdEmpleado'         then Tabla.FieldByName('sIdEmpleado').AsString       := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sNombreCompleto'     then Tabla.FieldByName('sNombreCompleto').AsString  := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sApellidoPaterno'    then Tabla.FieldByName('sApellidoPaterno').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sApellidoMaterno'    then Tabla.FieldByName('sApellidoMaterno').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'DescripcionPuesto'   then
      begin
        if valorStr <> '' then Tabla.FieldByName('DescripcionPuesto').AsString  := valorStr
        else Tabla.FieldByName('DescripcionPuesto').AsString                    := 'NO DEFINIDO';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'departamento'        then
      begin
        if valorStr <> '' then Tabla.FieldByName('departamento').AsString       := valorStr
        else Tabla.FieldByName('departamento').AsString                         := 'SIN CLASIFICACION';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'Estatus'             then Tabla.FieldByName('Estatus').AsString              := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'profesion'           then Tabla.FieldByName('profesion').AsString            := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sBanco'              then Tabla.FieldByName('sBanco').AsString               := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'nacionalidad'        then Tabla.FieldByName('nacionalidad').AsString         := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sInfonavit'          then Tabla.FieldByName('sInfonavit').AsString           := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sStatusTipoPersonal' then
      begin
        if valorStr <> '' then Tabla.FieldByName('sStatusTipoPersonal').AsString  := valorStr
        else Tabla.FieldByName('sStatusTipoPersonal').AsString                    :='NO DEFINIDO';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sCuenta'             then Tabla.FieldByName('sCuenta').AsString              := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sCuentaInterbancaria'then Tabla.FieldByName('sCuentaInterbancaria').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'iId_Puesto'          then
      begin
        if valorStr <> '' then Tabla.FieldByName('iId_Puesto').asInteger  := strtoint(valorStr)
        else Tabla.FieldByName('iId_Puesto').asInteger                    := 0;
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'IdEmpresa'      then
      begin
        if valorStr <> '' then Tabla.FieldByName('IdEmpresa').AsInteger  := strtoint(valorStr)
        else Tabla.FieldByName('IdEmpresa').AsInteger                    := 0;
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'iIdRegistroPatronal' then
      begin
        if valorStr <> '' then Tabla.FieldByName('iIdRegistroPatronal').AsInteger := StrToInt(valorStr)
        else Tabla.FieldByName('iIdRegistroPatronal').AsInteger                   := 0;
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sImss'               then Tabla.FieldByName('sImss').AsString                := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sCurp'               then Tabla.FieldByName('sCurp').AsString                := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sCalle'              then
      begin
        if valorStr <> '' then Tabla.FieldByName('sCalle').AsString := 'Calle '+valorStr
        else Tabla.FieldByName('sCalle').AsString                   := 'CONOCIDO';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sColonia'            then
      begin
        if valorStr <> '' then Tabla.FieldByName('sColonia').AsString := 'Col. '+valorStr
        else Tabla.FieldByName('sColonia').AsString                   := 'CONOCIDO';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sEstado'             then Tabla.FieldByName('sEstado').AsString              := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sLocalidad'          then Tabla.FieldByName('sLocalidad').AsString           := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sNumero'             then
      begin
        if valorStr <> '' then Tabla.FieldByName('sNumero').AsString  := 'No. '+valorStr
        else Tabla.FieldByName('sNumero').AsString                    := 'S/N'
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sPais'               then Tabla.FieldByName('sPais').AsString                := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'dFechaInicioLabores' then Tabla.FieldByName('dFechaInicioLabores').AsString  := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'dFechaTerminoLabores'then Tabla.FieldByName('dFechaTerminoLabores').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sRfc'then Tabla.FieldByName('sRfc').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'dSueldo'             then Tabla.FieldByName('dSueldo').AsFloat          := StrToFloat(valorStr)
      else if Vista.Columns[c].DataBinding.FieldName  = 'dSueldoIntegrado'    then
           begin
               if valorStr = '' then
                  valorStr := '0';
               Tabla.FieldByName('dSueldoIntegrado').AsFloat := StrToFloat(valorStr);
           end
      else if Vista.Columns[c].DataBinding.FieldName  = 'dSueldoDiario'       then
           begin
               if valorStr = '' then
                  valorStr := '0';
               Tabla.FieldByName('dSueldoDiario').AsFloat    := StrToFloat(valorStr)
           end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sTelefono'           then
      begin
        if valorStr <> '' then Tabla.FieldByName('sTelefono').AsString  := 'Fijo: '+valorStr
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sTelefonoCelular' then
      begin
        if valorStr <> '' then Tabla.FieldByName('sTelefonoCelular').AsString := 'Celular: ' + valorStr;
      end;
      inc(c);
    end;
    Tabla.Post;
    Inc(f);
  end;
end;

function ExportExcelconGrafica(sParamColumnas:string;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean;
var
  Excel, Workbook, Worksheet: Variant;
  X, columx, rowx, idx, colx, NumCheked, ColIni, RowIni, ColMaxExc, columna, co: integer;
  avalorStr, valorStr, tipo: string;
  TempPath: String;
  LogoFile: String;
begin

  rowx := 2;
  columx := 0;
  x := 0;
  idx := 0;
  colx := 1;

  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  //HOja
  Excel := CreateOleObject('Excel.Application');
  // Mostrar el excel
  Excel.Visible:= True;
  // evitar que nos pregunte si deseamos sobreescribir el archivo
  Excel.DisplayAlerts := false;
  // agregar libro de trabajo
  Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
  // tomar una referencia a la hoja creada
  WorkSheet := WorkBook.WorkSheets[1];
  WorkSheet.Name := TituloPestaña;

  RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < grid.ColumnCount do
    begin
      if pos(Inttostr(columna), sParamColumnas) > 0 then
      begin
          if grid.Columns[columna].Visible = True then
          begin

            WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := grid.Columns[columna].Caption;
            WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
            Excel.Columns[LetraColumna(Columna)+':'+LetraColumna(Columna)].columnwidth := grid.Columns[columna].Width/7;
            Inc(ColMaxExc);
          end;
      end
      else
          grid.Columns[columna].Visible := False;

      NumCheked := ColMaxExc;
      Inc(Columna);
    end;


    ColMaxExc := ColMaxExc - 1;
    RowIni := RowIni-6;

    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Font.Bold := true;

  RowIni := RowIni+6;
   //FORMATO A ENCABEZADO EXCEL
  while x < NumCheked do
  begin
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := False;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.colorIndex := 0;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.Weight := xlThin;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalDown].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalUp].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.Color:=$00D58D53;
    inc(x);
  end;

  //CUERPO EXCEL
  idx := 0;
  colx := 0;
  //rowx := 12;
  columx := 2;

  //REGISTROS DEL GRID  OJO SOLO ACEPTA TCXGRIDDBTABLEVIEW...
  while idx < grid.ViewData.RowCount do
  begin
    columx := 1;
    colx := 0;
    co:=0;
    while colx < grid.ItemCount do
    begin
        if grid.ViewData.Rows[idx].Values[colx]=null then
          valorStr:=''
        else
          valorStr := grid.ViewData.Rows[idx].Values[colx] ;
        if grid.Columns[colx].Visible = True then
        begin
          if grid.Columns[colx].DataBinding.ValueType = 'DateTime' then
             WorkSheet.cells[idx+8,columx] := StrToDate(valorStr)
          else
             WorkSheet.cells[idx+8,columx] := valorStr;
          Inc(columx);
        end;
        if avalorStr=valorStr then
          inc(co);
        avalorStr:=valorStr;

      Inc(colx);
    end;

    if co=grid.ItemCount-1 then
    begin
      Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Mergecells := True;
      Excel.Range[LetraColumna(0)+IntToStr(idx+8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Interior.ColorIndex:=5;
      Excel.Range[LetraColumna(0)+IntToStr(idx+8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Font.Bold := False;
      //WorkSheet.cells[idx+8,columx] := valorStr;
    end;
    inc(idx);
  end;

  //APLICAR BORDES DELGADOS Y AUTOAJUSTE
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.colorIndex := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.TintAndShade := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.Weight := xlThin;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.Weight := xlThin;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].rowheight := 15;
  //Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].columns.autofit;
  //Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].WrapText := True;

  //Trasponer
  Excel.range[LetraColumna(columx)+'20:'+LetraColumna(idx+4)+IntToStr(20+(columx-2))].FormulaArray := '=TRANSPONER('+LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)+')';
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := 4;
  //Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 26;
  //Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.HasTitle:=True;
  Excel.ActiveChart.ChartTitle.Font.size := 12;
  Excel.ActiveChart.ChartTitle.Font.Name := 'Arial';
  //Excel.ActiveChart.SetElement (205);
  Excel.ActiveChart.ChartTitle.Characters.Text := 'Gráfica de Avances Físicos y Programados';
  Excel.ActiveChart.ChartArea.Left:=(66*columx);
  Excel.ActiveChart.ChartArea.Top:=(1)*15;
  Excel.ActiveChart.ChartArea.Width:=59.5*(idx+4);
  Excel.ActiveChart.ChartArea.Height:=265;

  Excel.Range[LetraColumna(columx)+'20:'+LetraColumna(idx+4)+IntToStr(20+(columx-2))].select;
  Excel.Range[LetraColumna(columx)+'20:'+LetraColumna(idx+4)+IntToStr(20+(columx-2))].Font.Size := 9;
  Excel.Columns[LetraColumna(columx+1)+':'+LetraColumna(idx+4)].columnwidth := 3;

  Excel.Range[LetraColumna(columx)+'20:'+LetraColumna(idx+4)+IntToStr(20)].select;
  Excel.Range[LetraColumna(columx)+'20:'+LetraColumna(idx+4)+IntToStr(20)].NumberFormat:= 'dd/mm/aaaa';

  Excel.Range['A7:A7'].select;

end;

end.
