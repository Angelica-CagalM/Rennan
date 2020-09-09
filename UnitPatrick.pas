unit UnitPatrick;

interface

Uses
  OleCtrls, Classes, Windows, UnitExcel, SysUtils, Graphics;
  
  function PGetTempDir: string;
  function PNombreAleatorio(Longitud: Integer):String;
  procedure PSplit(Delimiter: Char; Str: string; ListOfStrings: TStrings);

  Procedure PFormatosExcel_Bordes(Var Excel: Variant; Top: Boolean = True; Bottom: Boolean = True; Left: Boolean = True; Right: Boolean = True; Estilo: Integer = 1; Grosor: Integer = 2);
//  Procedure PFormatosExcel_Bordes(Var Excel: Variant; Top: Boolean = True; Bottom: Boolean = True; Left: Boolean = True; Right: Boolean = True; Estilo: Integer = 1; Grosor: Integer = 2);
  Procedure PFormatosExcel_H1(Var Excel: Variant);
  Procedure PFormatosExcel_H2(Var Excel: Variant; AutoFit: Integer = 0; Negritas: Boolean = False; SizeFont: Integer = 6; ColorExcel: Cardinal = clBlack; FontName: String = 'Arial'; FormatoCelda: String = '-');
  Procedure PFormatosExcel_SoloBorde(Var Excel: Variant);
  Procedure PFormatosExcel_Rellenar(Var Excel: Variant; Color: DWord);
  Procedure PFormatosExcel_EstablecerAreaDeImpresion(Hoja: Variant; ColumnaIzq, FilaIzq, ColumnaDer, FilaDer: Integer);
  Procedure PFormatosExcel_AjustarFila(var Excel: Variant);

  function BuscarCadena(Lista : TStringList; Cadena : string) : Boolean;

implementation

procedure PSplit(Delimiter: Char; Str: string; ListOfStrings: TStrings);
begin
   ListOfStrings.Clear;
   ListOfStrings.Delimiter     := Delimiter;
   ListOfStrings.DelimitedText := Str;
end;

function PGetTempDir: string;
var
    Buffer : Array[0..Max_path] of char;
begin
    FillChar(Buffer,Max_Path + 1, 0);
    GetTempPath(Max_path, Buffer);
    Result := String(Buffer);
    if Result[Length(Result)] <> '\' then Result := Result + '\';
end;

function BuscarCadena(Lista : TStringList; Cadena : string) : boolean;
var
 Posicion: Integer;
begin
  Lista.Sort;
  BuscarCadena := Lista.Find(Cadena, Posicion);
end;

function PNombreAleatorio(Longitud: Integer):String;
const
  Chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ';
var
  S: string;
  i, N: integer;
begin
  Randomize;
  S := '';
  for i := 1 to Longitud do begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Result := S;
end;

Procedure PFormatosExcel_Bordes(var Excel: Variant; Top: Boolean = True; Bottom: Boolean = True; Left: Boolean = True; Right: Boolean = True; Estilo: Integer = 1; Grosor: Integer = 2);
begin
  if Top then begin
    Excel.Selection.Borders[xlEdgeTop].LineStyle          := Estilo;
    if Estilo = xlDouble then begin
      Excel.Selection.Borders[xlEdgeTop].Weight             := xlThick;
    end else begin
      Excel.Selection.Borders[xlEdgeTop].Weight             := Grosor;
    end;
  end;
  if Bottom then begin
    Excel.Selection.Borders[xlEdgeBottom].LineStyle       := Estilo;
    if Estilo = xlDouble then begin
      Excel.Selection.Borders[xlEdgeBottom].Weight             := xlThick;
    end else begin
      Excel.Selection.Borders[xlEdgeBottom].Weight             := Grosor;
    end;
  end;
  if Left then begin
    Excel.Selection.Borders[xlEdgeLeft].LineStyle         := Estilo;
    if Estilo = xlDouble then begin
      Excel.Selection.Borders[xlEdgeLeft].Weight             := xlThick;
    end else begin
      Excel.Selection.Borders[xlEdgeLeft].Weight             := Grosor;
    end;
  end;
  if Right then begin
    Excel.Selection.Borders[xlEdgeRight].LineStyle        := Estilo;
    if Estilo = xlDouble then begin
      Excel.Selection.Borders[xlEdgeRight].Weight             := xlThick;
    end else begin
      Excel.Selection.Borders[xlEdgeRight].Weight             := Grosor;
    end;
  end;
end;

Procedure PFormatosExcel_H1(var Excel: Variant);
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.WrapText := True;
end;

Procedure PFormatosExcel_SoloBorde(var Excel: Variant);
begin
    Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
    Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
    Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
    Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
end;

//Procedure PFormatosExcel_H2(var Excel: Variant; AutoFit: Integer = 0; Negritas: Boolean = False; SizeFont: Integer = 6);
//Var
//  Rango: Variant;
//begin
//  Excel.Selection.MergeCells := True;
//  Excel.Selection.HorizontalAlignment := xlCenter;
//  Excel.Selection.VerticalAlignment := xlCenter;
//  Excel.Selection.Font.Size := SizeFont;
//  Excel.Selection.Font.Bold := Negritas;
//  Excel.Selection.Font.Name := 'Arial';
//  Excel.Selection.WrapText := True;
//  Rango := Excel.Selection;
//  if AutoFit > 1 then begin
//    Excel.Selection.EntireRow.RowHeight := AutoFit;
//  end;
//end;

Procedure PFormatosExcel_H2(Var Excel: Variant; AutoFit: Integer = 0; Negritas: Boolean = False; SizeFont: Integer = 6; ColorExcel: Cardinal = clBlack; FontName: String = 'Arial'; FormatoCelda: String = '-');
Var
  Rango: Variant;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := SizeFont;
  Excel.Selection.Font.Bold := Negritas;
  Excel.Selection.Font.Color := ColorExcel;
  Excel.Selection.Font.Name := FontName;
  Excel.Selection.WrapText := True;
  if FormatoCelda <> '-' then begin
    Excel.Selection.NumberFormat := FormatoCelda;
  end;
  Rango := Excel.Selection;
  if AutoFit > 1 then begin
    Excel.Selection.EntireRow.RowHeight := AutoFit;
  end;
end;

Procedure PFormatosExcel_Rellenar(var Excel: Variant; Color: Cardinal);
begin
  Excel.Selection.Interior.Color := Color;
end;

Procedure PFormatosExcel_EstablecerAreaDeImpresion(Hoja: Variant; ColumnaIzq, FilaIzq, ColumnaDer, FilaDer: Integer);
begin
  if (ColumnaIzq <= 0) or (ColumnaDer <= 0)
  Then raise Exception.Create('');
  Hoja.PageSetup.PrintArea := '$' + ColumnaNombre(ColumnaIzq) + '$' + IntToStr(FilaIzq) + ':' +
                              '$' + ColumnaNombre(ColumnaDer) + '$' + IntToStr(FilaDer);
end;

Procedure PFormatosExcel_AjustarFila(var Excel: Variant);
Var
  n, 
  Columnas,
  AnchoTotal,
  AnchoDeCelda,
  Alto, 
  Filas: Integer;
  AnchoReal,
  AnchoTotalReal,
  AnchoCeldaReal: Real;
  Wraped: Boolean;
begin
  n := 0;
  Columnas := Excel.Selection.Columns.Count;
  Wraped := Excel.Selection.WrapText;
//  Excel.Selection.WrapText := True;
  for n := 1 to Columnas do begin
    AnchoTotal := AnchoTotal + Excel.Selection.Columns.Columns[n].ColumnWidth;
  end;
  AnchoReal := Excel.Selection.Width;
//  AnchoTotal := Excel.Selection.Width;
  AnchoDeCelda := Excel.Selection.Columns.Columns[1].ColumnWidth;

  Excel.Selection.MergeCells := False;
//  AnchoTotal := Excel.Selection.Width;

  if AnchoTotal > 255 then begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := 255;
  end else begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := AnchoTotal;
  end;
  AnchoCeldaReal := Excel.Selection.Columns.Columns[1].Width;

  AnchoTotalReal := (AnchoTotal * AnchoReal) / AnchoCeldaReal;
  AnchoTotalReal := Trunc(AnchoTotalReal);

  if AnchoTotal > 255 then begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := 255;
  end else begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := AnchoTotalReal;
  end;
//  Excel.Selection.Columns.Columns(1).Width := AnchoTotal;
//  Excel.Selection.Columns[1].EntireColumn.ColumnWidth := AnchoTotal;

  Excel.Selection.Parent.Rows[Excel.Selection.Row].AutoFit;
  Alto := (Excel.Selection.RowHeight + 3);

  Excel.Selection.MergeCells := True;
  Excel.Selection.Columns[1].EntireColumn.ColumnWidth := AnchoDeCelda;

//  Filas := Excel.Selection.Parent.Rows.Count;

  if Alto > 409 then begin
    Excel.Selection.RowHeight := 409
  end else begin
    Excel.Selection.RowHeight := Alto;
  end;

//  Application.ProcessMessages;

end;

end.
