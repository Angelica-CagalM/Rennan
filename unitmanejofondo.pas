unit unitmanejofondo;
interface
 uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, global,
  Dialogs, toolwin,ExtCtrls,jpeg,StrUtils, ExtDlgs, StdCtrls,inifiles,ComCtrls, MemDS, dxmdaset,

  dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, dxBar, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxSkinsdxNavBarPainter, dxNavBar, dxRibbon, dxRibbonGallery,
  dxSkinChooserGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxNavBarCollns, dxNavBarBase, dxRibbonMiniToolbar, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, dxRibbonBackstageView,dxRibbonForm, dxGallery, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPC, dxSkinscxPCPainter, cxPCdxBarPopupMenu, dxTabbedMDI,
  cxFontNameComboBox, dxLayoutLookAndFeels, dxRibbonRadialMenu,Clipbrd,
  dxSkinsdxDockControlPainter, cxLocalization, dxDockControl,
  dxBarApplicationMenu, dxBarDBNav, cxPropertiesStore, dxLayoutContainer,
  dxLayoutControl, dxScreenTip, cxLabel, dxAlertWindow, cxStyles, cxCustomData,
  dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, DateUtils, dxBarBuiltInMenu,
  dxRibbonCustomizationForm, dxGDIPlusClasses, cxButtons,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  Menus;

 //procedure muestrafondo(fond :tjvbackground; patima, tipo:string);
 procedure muestrafondo(fond :TImage; patima, tipo:string);
 //procedure modofondo( fond :tjvbackground;modo:string; dirini:string);
 procedure modofondo( fond :TImage;modo:string; dirini:string);
 function leeini(dirini:string; PrincipalRibbon: TdxRibbon; PrincipaldxSkinController1 : tdxSkinController; PrincipaldxTabbedMDIManager1 : tdxTabbedMDIManager;
                PrincipaldxDockingManager1 : TdxDockingManager; PrincipalcxLookAndFeelController1 : TcxLookAndFeelController; PrincipaldxAlertWindowManager1 : TdxAlertWindowManager ):string;
 function escribeini(dirini:string; buscaimagen: topendialog):string;
 function escribeiniDefault(dirini:string;modo:string):string;
 procedure guardaskin(dirini:string;skin1:string);
 var estadoglobal,patglobal, imapatglobal, skincolor:string;
implementation

procedure guardaskin(dirini:string;skin1:string);
{Procedimiento para guardar el skin en el archivo image.ini}
var ini:tinifile;
begin
  ini := TIniFile.Create(dirini);
  ini.WriteString ('Configuración', 'skincolor', skin1);
  ini.free;
end;
function escribeiniDefault(dirini:string;modo:string):string;
var ini:tinifile;
pathimagen:string;
begin
  pathimagen:='';
  //añadir ini
  ini := TIniFile.Create(dirini);
  ini.WriteString ('Configuración', 'wallpaper', pathimagen);
  ini.WriteString ('Configuración', 'estado',modo);
  ini.WriteString ('Configuración', 'skincolor',skincolor);
  ini.free;
  escribeinidefault:='si';
 end;
function escribeini(dirini:string; buscaimagen: topendialog):string;
var ini:tinifile;
pathimagen:string;
begin
  buscaimagen.Filter:='Fotografia|*.jpg|Imagen|*.bmp';
  if buscaimagen.Execute then
    begin
      //lee path y la imagen
      pathimagen:=(buscaimagen.FileName);
      //añadir ini
      ini := TIniFile.Create(dirini);
      ini.WriteString ('Configuración', 'wallpaper', pathimagen);
      ini.free;
      escribeini:='si';
    end else
    begin
      //ShowMessage('Abrir archivo se a cancelado');
      escribeini:='no';
    end;
end;

function leeini(dirini:string; PrincipalRibbon: TdxRibbon; PrincipaldxSkinController1 : tdxSkinController; PrincipaldxTabbedMDIManager1 : tdxTabbedMDIManager;
                PrincipaldxDockingManager1 : TdxDockingManager; PrincipalcxLookAndFeelController1 : TcxLookAndFeelController; PrincipaldxAlertWindowManager1 : TdxAlertWindowManager ):string;
var i:integer;
ini:tinifile;
validarpath:string;
bueno:boolean;
bueno2:boolean;
pathimagen:string;
skin:string;
begin
  if FileExists(dirini) then  //verifica si existe
  begin
    ini := TIniFile.Create(dirini);
    imapatglobal:=ini.ReadString ('Configuración', 'wallpaper',imapatglobal);
    estadoglobal:=ini.ReadString ('Configuración', 'estado',estadoglobal);
    skincolor:=ini.ReadString ('Configuración', 'skincolor',skincolor);
    if skincolor <> '' then
    begin
      PrincipalRibbon.ColorSchemeName                     :=skincolor;   //Para darle color al ribbon
      PrincipaldxSkinController1.SkinName                 :=skincolor;   //Para darke color al control del skin
      PrincipaldxTabbedMDIManager1.LookAndFeel.SkinName   :=skincolor;   //Para darle color al manager de los tabuladore
      PrincipaldxDockingManager1.LookAndFeel.SkinName     :=skincolor;
      PrincipalcxLookAndFeelController1.SkinName          :=skincolor;
      PrincipaldxAlertWindowManager1.LookAndFeel.SkinName :=skincolor;
    end;

    //verificar si la path esta bien
    bueno:=(AnsiEndsText('.jpg', imapatglobal ));
    bueno2:=(AnsiEndsText('.bmp', imapatglobal ));
    if   (bueno= true) or (bueno2=true) then
    begin
      //verificar q el archivo exista
      if FileExists(imapatglobal) then
      begin
        leeini:=imapatglobal;
      end
      else
      begin
        leeini:='no';// ShowMessage('la image no existe, cargue un fondo');
      end;
    end
    else
    begin
      leeini:='no'; //ShowMessage('path mala, cargue un nuevo fondo');
    end;
    ini.free;
  end
  else leeini:='no';
end;

//procedure modofondo( fond :tjvbackground;modo:string;dirini:string);
procedure modofondo( fond :timage;modo:string;dirini:string);
var ini:tinifile;
begin
  if FileExists(dirini) then  //verifica si existe
  begin
    ini := TIniFile.Create(dirini);
    ini.WriteString ('Configuración', 'estado', modo);
    ini.free;
    if modo='bmCenter' then
    begin
      //fond.Image.Mode:=bmCenter;
      fond.Center:=True;
      fond.Stretch:=false;
    end;
    if modo='bmStretch' then
    begin
      //fond.Image.Mode:=bmStretch;
      fond.Center:=false;
      fond.Stretch:=True;
      //if modo='bmTile' then
      //fond.Image.Mode:=bmTile;
      //fond.Picture.
    end
  end;
end;

//procedure muestrafondo( fond :tjvbackground; patima, tipo:string);
procedure muestrafondo( fond :timage; patima, tipo:string);
 begin
    if tipo='bmCenter' then
    begin
      //fond.Image.Mode:=bmCenter;
      //fond.Image.Picture.LoadFromFile(patima);
      fond.Center:=True;
      fond.Picture.LoadFromFile(patima);
    end;
    if tipo='bmStretch' then
    begin
      //fond.Image.Mode:=bmStretch;
      //fond.Image.Picture.LoadFromFile(patima);
      fond.Stretch:=True;
      fond.Picture.LoadFromFile(patima);
    end;
    //if tipo='bmTile' then
    //begin
    //fond.Image.Mode:=bmTile;
    //fond.Image.Picture.LoadFromFile(patima);
    //end;
 end;
end.
