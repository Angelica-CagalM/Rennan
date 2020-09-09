unit UnitExcel;

interface

Uses
  Windows;

Type
  TExcel = Class
    Const
      Medium = -4138;
      Left = -4131;
      Portrait = 1;
      Solid = 1;
      General = 1;
      LandScape = 2;

  End;

Const
  gHorizontal = True;
  gVertical = False;

  msoTrue = -1;
  msoFalse = 0;
  msoScaleFromTopLeft = 0;
  msoLineSolid = 1;
  msoLineSingle = 1;
  msoScaleFromBottomRight = 2;
  msoShapeRoundedRectangle = 5;
  msoShapeFlowchartProcess = 61;
  msoAlignLeft=1;
  msoAlignCenter=2;
  msoAnchorMiddle=3;
  msoConnectorStraight=1;
  msoTextOrientationHorizontal=1;
  msoThemeColorDark1=1;
  msoLineThickThin = 4;

  xlTop = -4160;
  xlToLeft = -4159;
  xlRight = -4152;
  xlNone = -4142;
  xlNormal = -4143;
  xlUnderlineStyleNone = -4142;
  xlMedium = -4138;
  xlLeft = -4131;
  xlJustify = -4130;
  xlDown = -4121;
  xlDouble = -4119;
  xlCenter = -4108;
  xlAutomatic = -4105;
  xlContinuous = 1;
  xlGeneral = 1;
  xlSolid = 1;
  xlCellValue = 1;
  xlHairline = 1;
  xlPaperLetter = 1;
  xlUnderlineStyleSingle = 2;
  xlThin = 2;
  xlLandscape = 2;
  xlThick = 4;
  xlEdgeLeft = 7;
  xlEdgeTop = 8;
  xlEdgeBottom = 9;
  xlEdgeRight = 10;
  xlInsideVertical = 11;
  xlInsideHorizontal = 12;
  xlBlueKing=-3394816;
  xlLess=6;
  xlEqual=3;
  xlGreater=5;
  xlPageBreakPreview=2;
  xlToRight=-4161;
  xlThemeColorAccent1=5;
  xlFillDefault=0;
  xlThemeColorAccent3=7;
  xlThemeColorLight2=4;
  xlContext=-5002;
  xlBottom=-4107;
  xlDiagonalDown=5;
  xlDiagonalUp=6;
  xlThemeColorDark2=3;
  xlPortrait=1;
  xlPrintNoComments=-4142;
  xlDownThenOver=1;
  xlPrintErrorsDisplayed=0;
  xlPageLayoutView=3;
  xlThemeColorDark1=1;
  xlNormalView=1;

  Function ColumnaNombre(Numero: Integer): String;
  Function NombreArchivoTemporal: String;

implementation

Function ColumnaNombre(Numero: Integer): String;
Var
  Valor, NumLetras: Integer;
  Cad: String;
Begin
  NumLetras := 26;  // O1
  Cad := '';
  Valor := Numero Mod NumLetras;
  if Valor = 0 then Valor := 26;
  if Numero - Valor > 0 then Cad := Char(64 + Trunc((Numero - Valor) / NumLetras));
  Cad := Cad + Char(64 + Valor);

  Result := Cad;
End;

function NombreArchivoTemporal: string;
var
  Buffer: array[0..MAX_PATH] of Char;
  aFile: string;
begin
  GetTempPath(SizeOf(Buffer) - 1, Buffer);
  GetTempFileName(Buffer, '~', 0, Buffer);
  Result := Buffer;
end;

end.
