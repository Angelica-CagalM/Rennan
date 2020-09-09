unit Frm_ImportaExportaActiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls,
  db, ZAbstractRODataset, ZDataset,frm_connection,UnitExcel, utilerias,
  global,ComObj,StrUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore,
  cxDateUtils, Menus, cxDropDownEdit, cxButtons, cxCheckBox,
  cxTextEdit, cxMaskEdit, cxCalendar, cxGroupBox, ImgList, cxLabel,
  Buttons, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList;
type
  TActividad = class
    id:string;
    valor:Real;
  end;
type

  TFrmImportaExportaActiv = class(TForm)
    PAthGuardar: TSaveDialog;
    img1: TcxImageList;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DFecha: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    CbxSustituye: TcxCheckBox;
    CbxAvance: TcxCheckBox;
    Panel2: TPanel;
    CmbContratos: TcxComboBox;
    zqFolios: TZReadOnlyQuery;
    btnLoad: TBitBtn;
    BtnExportar: TBitBtn;
    btnImportar: TBitBtn;
    cxLabel1: TcxLabel;
    cxOpcion: TcxComboBox;
    procedure BtnExportarClick(Sender: TObject);
    procedure BtnImportarClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure ExportarPlantilla(Cont: string; Lin: integer);
    procedure ImportarPlantilla(Fecha: TDateTime; direccion: string);
    function ExcelClose(Excel: Variant; SaveAll: Boolean): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;
const
  CsContrato = 6;//fila 5
  CdIdFecha = 6; //fila 6
  FsContrato = 5;
  FdIdFecha = 6;
  FInicio = 9;//Apartir de esta fila se encuantran los datos
  CsNumeroOrden=1;
  CsNumeroActividad = 2;
  CsidClasificacion = 3;
  CsHoraInicio = 4;
  CsHoraFinal = 5;
  CdCantidad = 6;
  CmDescripcion = 7;
  CmTarea = 8;

var
  FrmImportaExportaActiv: TFrmImportaExportaActiv;

implementation

{$R *.dfm}

procedure TFrmImportaExportaActiv.BtnExportarClick(Sender: TObject);
begin
    if cxOpcion.SelectedItem = 0 then
       ExportarPlantilla(global_contrato,50)
    else
       messageDLG('No es posible Generar la plantilla seleccionada ', mtInformation, [mbOk], 0);
end;


procedure TFrmImportaExportaActiv.BtnImportarClick(Sender: TObject);
begin
    if ObtenerEstatusReporte(global_contrato, dFecha.Date) <> 'Pendiente' then
    begin
        MessageDlg('El Reporte ha sido Validado/Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
        exit;
    end;
//    ImportarPlantilla( DFecha.Date , txtFileName.Text);
end;

procedure TFrmImportaExportaActiv.btnLoadClick(Sender: TObject);
begin
//  if dlgOpenExcel.Execute then
//  begin
//    txtFileName.Text := dlgOpenExcel.FileName;
//  end;
end;

procedure TFrmImportaExportaActiv.cxButton1Click(Sender: TObject);
begin
    close;
end;

Function TFrmImportaExportaActiv.ExcelClose(Excel : Variant; SaveAll: Boolean): Boolean;
Begin
  Result := True;
  Try
    Excel.Quit;
  Except
    MessageDlg('Unable to Close Excel', mtError, [mbOK], 0);
    Result := False;
  End;
End;

procedure TFrmImportaExportaActiv.ImportarPlantilla(Fecha:TDateTime;direccion:string);
const
  BlancasMax = 20;
  Vacio = 46;//Naranja
  NoExiste = 3;//Rojo
  NoImportar= 6;//amarillo
  ImportarL = 35; //verde
  NoEnCatalogo = 22;//  Folio no existe en el catalogo
  NoEnActividades = 40;//  Folio no existe en actividades
  Excede = 18;//marron  partida excede porcentaj

var
  ZContratos,
  ZReporte,
  ZMovimientos,
  ZFolios,
  ZActividades
  :TZReadOnlyQuery;

  ZUptBitacoraAct:TZQuery;

  Excel,
  Libro,
  Hoja: Variant;

  ifila:Integer;

  //Variables temporales de carga
  Fech,Cont,Convenio,Folio,sPernocta, sPlataforma, Actividad,Clasificacion,Horai,Horaf,Descripcion,sWbs,ActDesc,HiAct,HfAct:string;
  Cantidad:Real;
  iIdDiario,
  iTarea,
  iOk:Integer;

  LineasBlancas:Integer;
  LineasOk:TStringList;
  ImportarLinea:Boolean;
  MostrarExcel:Boolean;

  ListFolios : tstringlist;
  Activ:TActividad;

  LineaLeyenda:Integer;

procedure crealeyenda(Doc:Variant);
begin
//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda)].Select;
  Doc.Selection.Interior.Colorindex := Vacio;
  Doc.Selection.Value := 'LEYENDA';
  Doc.Selection.VerticalAlignment := xlCenter;
  Doc.Selection.Font.Size := 11;
  Doc.Selection.Font.Bold := True;
  Doc.Selection.WrapText := True;
  Doc.Selection.Interior.Color := $00BBBBBB;
  Doc.Selection.Borders.LineStyle := xlContinuous;
  Inc(linealeyenda);

//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda+6)].Select;
  Doc.Selection.Interior.Colorindex := Vacio;
  Doc.Selection.VerticalAlignment := xlCenter;
  Doc.Selection.Font.Size := 11;
  Doc.Selection.Font.Bold := False;
  Doc.Selection.WrapText := True;
  Doc.Selection.Borders.LineStyle := xlContinuous;

//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda)].Select;
  Doc.Selection.Value := 'No importar';
  Doc.Selection.Interior.Colorindex := NoImportar;
  Inc(linealeyenda);

//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda)].Select;
  Doc.Selection.Value := 'Vacíos';
  Doc.Selection.Interior.Colorindex := Vacio;
  Inc(linealeyenda);

//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda)].Select;
  Doc.Selection.Value := 'No existe';
  Doc.Selection.Interior.Colorindex := NoExiste ;
  Inc(linealeyenda);

//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda)].Select;
  Doc.Selection.Value := 'Importable';
  Doc.Selection.Interior.Colorindex := ImportarL ;
  Inc(linealeyenda);

//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda)].Select;
  Doc.Selection.Value := 'No en catálogo';
  Doc.Selection.Interior.Colorindex := NoEnCatalogo ;
  Inc(linealeyenda);

//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda)].Select;
  Doc.Selection.Value := 'No en actividades';
  Doc.Selection.Interior.Colorindex := NoEnActividades ;
  Inc(linealeyenda);

//  Doc.Range['J'+inttostr(LineaLeyenda)+':J'+inttostr(LineaLeyenda)].Select;
  Doc.Selection.Value := 'Excede al 100%';
  Doc.Selection.Interior.Colorindex := excede ;
end;

begin
//  if txtFileName.Text = '' then
//  begin
//      messageDLG('Debe seleccionar la plantilla de importación de Excel!', mtInformation, [mbOk], 0);
//      exit;
//  end;
  try
    ZUptBitacoraAct := TZQuery.Create(nil);
    ListFolios := tstringlist.create;
    zqFolios := TZReadOnlyQuery.Create(nil);
    zqFolios.Connection := connection.zConnection;
    iOk := 0;
    try
      ZUptBitacoraAct.Connection := connection.zConnection;
      ZUptBitacoraAct.Connection.StartTransaction;
      try
        ZContratos := TZReadOnlyQuery.Create(nil);
        LineasOk := TStringList.create;
        try
          ZContratos.Connection := connection.zConnection;
          ZMovimientos := TZReadOnlyQuery.Create(nil);
          ZMovimientos.Active := False;
          try
            ZMovimientos.Connection := connection.zConnection;
            ZFolios := TZReadOnlyQuery.Create(nil);
            ZFolios.Active := False;
            try
              ZFolios.Connection := connection.zConnection;
              ZActividades := TZReadOnlyQuery.Create(nil);
              ZActividades.Active := False;
              try
                ZActividades.Connection := connection.zConnection;
                ZContratos.Active := False;

                ZReporte := TZReadOnlyQuery.Create(nil);
                try
                  ZReporte.Connection := connection.zConnection;
                  ZReporte.Active := False;

                  cont := global_contrato;

                  //Leemos fecha y contrato de la plantilla
                  //abrimos la plantilla
                  Excel := CreateOleObject('Excel.Application');
                  Libro := Excel.WorkBooks.Open(Direccion);

                  Excel.Visible := False;
                  Excel.DisplayAlerts:= False;

                  MostrarExcel := False;
                  ifila := FInicio;

//                  Excel.Range[ColumnaNombre(CdIdFecha)+IntToStr(iFila)+':'+ColumnaNombre(CdIdFecha)+IntToStr(iFila)].Select;
//                  Fech := Excel.Cells[Fdidfecha,Cdidfecha].Value;

                  if Length(Trim(fech)) = 0 then
                  begin
                    Excel.Selection.Interior.Colorindex := Vacio;
                    raise Exception.Create('La plantilla no tiene ninguna fecha especificada');
                  end;

                  Fech := FormatDateTime('yyyy-MM-dd',StrToDatetime(Fech));

                  if Fech <> FormatDateTime('yyyy-MM-dd',fecha) then
                  begin
                    Excel.Selection.Interior.Colorindex := Vacio;
                    raise Exception.Create('La fecha especificada y la fecha de la plantilla no coinciden, favor de revisar.');
                  end;

                  ZReporte.SQL.Clear;
                  ZReporte.SQL.Text := 'Select snumeroorden from reportediario where snumeroorden = :sContrato and dIdFecha = :didfecha';
                  ZReporte.ParamByName('scontrato').AsString := cont;//aqui poner el contrato
                  ZReporte.ParamByName('didfecha').AsDate :=  dfecha.Date;
                  ZReporte.Open;

                  //Valida reporte fecha y contrato
                  if ZReporte.RecordCount = 0 then
                    raise Exception.Create('No se ha creado el reporte con la fecha especificada.');

                  //Traer todos los tipos de movimiento
                  ZMovimientos.SQL.Clear;
                  ZMovimientos.sql.Text := 'select sidtipomovimiento from tiposdemovimiento where scontrato = :scontrato ';
                  ZMovimientos.ParamByName('scontrato').AsString := cont;
                  ZMovimientos.Open;
                  if ZMovimientos.RecordCount = 0 then
                    raise Exception.Create('La orden no tiene movimientos dados de alta en catalogo de movimientos.');

                  //Traeme todos los folios correspondientes al contrato para ir verificando luego
                  ZFolios.SQL.Clear;
                  ZFolios.SQL.Text := 'Select distinct(sNumeroOrden), sIdPernocta, sIdPlataforma from ordenesdetrabajo where sContrato = :sContrato and cIdStatus = "P" order by iOrden DESC ';
                  ZFolios.ParamByName('scontrato').AsString := Cont;
                  ZFolios.Open;
                  if ZFolios.RecordCount = 0 then
                    raise Exception.Create('La orden no tiene Folios registrados');

                  //Traerme todas las actividades pertenecientes a ese contrato
                  ZActividades.SQL.Clear;
                  ZActividades.SQL.Text := 'select * from actividadesxorden where sContrato = :scontrato ';
                  ZActividades.ParamByName('scontrato').AsString := Cont;
                  ZActividades.Open;
                  if ZActividades.RecordCount = 0 then
                    raise Exception.Create('La orden no tiene actividades dados de alta en el catalogo de Partidas x folios.');

                  //borrar las actividades
                  if CbxSustituye.Checked then
                  begin
                      ZUptBitacoraAct.Active := False;
                      ZUptBitacoraAct.SQL.Clear;
                      ZUptBitacoraAct.SQL.Text := 'select sContrato FROM bitacoradeactividades WHERE sContrato = :Contrato AND dIdFecha = :Fecha and sIdTipoMovimiento <> "NG"';
                      ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := cont;
                      ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dFecha.Date;
                      ZUptBitacoraAct.Open;

                      if ZUptBitacoraAct.RecordCount > 0 then
                      begin
                          If MessageDlg('Desea reemplazar las actividades del día seleccionado?'+#13+' Si existe cuadre de personal y equipo será eliminado!' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                          Begin
                              ZUptBitacoraAct.Active := False;
                              ZUptBitacoraAct.SQL.Clear;
                              ZUptBitacoraAct.SQL.Text := 'DELETE  FROM bitacoradeactividades WHERE sContrato = :Contrato AND dIdFecha = :Fecha and sIdTipoMovimiento <> "NG"';
                              ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := cont;
                              ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dFecha.Date;
                              ZUptBitacoraAct.ExecSQL;

                              ZUptBitacoraAct.Active := False;
                              ZUptBitacoraAct.SQL.Clear;
                              ZUptBitacoraAct.SQL.Text := 'DELETE  FROM bitacoradepersonal WHERE sContrato = :Contrato AND dIdFecha = :Fecha ';
                              ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := cont;
                              ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dFecha.Date;
                              ZUptBitacoraAct.ExecSQL;

                              ZUptBitacoraAct.Active := False;
                              ZUptBitacoraAct.SQL.Clear;
                              ZUptBitacoraAct.SQL.Text := 'DELETE  FROM bitacoradeequipos WHERE sContrato = :Contrato AND dIdFecha = :Fecha ';
                              ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := cont;
                              ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dFecha.Date;
                              ZUptBitacoraAct.ExecSQL;
                          End;
                      end;
                  end;

                  ZqFolios.Active := False;
                  ZqFolios.SQL.Clear;
                  ZqFolios.SQL.Text := 'Select sNumeroOrden, sIdFolio, sIdPernocta, sIdPlataforma from ordenesdetrabajo where scontrato = :sContrato and cIdStatus = "P"';
                  ZqFolios.ParamByName('scontrato').AsString := Cont;
                  ZqFolios.open;

                  LineasBlancas := 0;
                  while LineasBlancas < BlancasMax do
                  begin
                    //Revisar linea
//                    Folio := Excel.ActiveSheet.Cells[ifila,csnumeroorden].value;

                    //Se hace un filtro para verificar que el folio Exista.
                    zqFolios.Filtered := False;
                    zqFolios.Filter := ' sIdFolio = '+QuotedStr(folio);
                    zqFolios.Filtered := True;

                    Folio       := zqFolios.FieldByName('sNumeroOrden').AsString;
                    sPernocta   := zqFolios.FieldByName('sIdPernocta').AsString;
                    sPlataforma := zqFolios.FieldByName('sIdPlataforma').AsString;

//                    Actividad := Excel.ActiveSheet.Cells[ifila,Csnumeroactividad].value;
//                    Clasificacion := Excel.ActiveSheet.Cells[ifila,CsidClasificacion].value;
//                    Horai := Excel.ActiveSheet.Cells[ifila,Cshorainicio].Text;
                    Horai := Trim(Horai);
                    Horai := AnsiLeftStr(Horai, 5 );
//                    Horaf := Excel.ActiveSheet.Cells[ifila,Cshorafinal].Text;
                    Horaf := Trim(Horaf);
                    Horaf := AnsiLeftStr(Horaf, 5 );

                    if zqFolios.RecordCount > 0 then
                       ImportarLinea := True
                    else
                       ImportarLinea := False;

                    {$region 'Validacion de vacios'}
                    try
//                      Cantidad := StrToFloat(Excel.ActiveSheet.Cells[ifila,Cdcantidad].value);
                      Cantidad := Cantidad;
                    except
                      on e:Exception do
                      begin
                        Cantidad := 0;
                      end;
                    end;
//                    Descripcion := Excel.ActiveSheet.Cells[ifila,Cmdescripcion].value;
                    {$region 'Espacios vacios'}
                    //Validacion vacios
                    if length(trim(Folio)) = 0 then
                    begin
//                      Excel.Range[ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)+':'+ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := Vacio;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    if length(trim(Actividad)) = 0 then
                    begin
                      Excel.Range[ColumnaNombre(CsNumeroActividad)+IntToStr(iFila)+':'+ColumnaNombre(CsNumeroActividad)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := Vacio;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    if length(trim(Clasificacion)) = 0 then
                    begin
                      Excel.Range[ColumnaNombre(CsidClasificacion)+IntToStr(iFila)+':'+ColumnaNombre(CsidClasificacion)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := Vacio;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    if length(trim(Horai)) = 0 then
                    begin
                      Excel.Range[ColumnaNombre(CsHoraInicio)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraInicio)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := Vacio;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    if length(trim(Horai)) <> 5 then
                    begin
                      Excel.Range[ColumnaNombre(CsHoraInicio)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraInicio)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := Vacio;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    if length(trim(Horai)) = 5 then
                    begin
                       if StrToInt(copy(Horai,1,2))> 24 then
                       begin
                          Excel.Range[ColumnaNombre(CsHoraInicio)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraInicio)+IntToStr(iFila)].Select;
                          Excel.Selection.Interior.Colorindex := Vacio;
                          MostrarExcel := True;
                          ImportarLinea := False;
                       end;
                    end;

                    if length(trim(Horaf)) = 0 then
                    begin
                      Excel.Range[ColumnaNombre(CsHoraFinal)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraFinal)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := Vacio;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    if length(trim(Horaf)) <> 5 then
                    begin
                      Excel.Range[ColumnaNombre(CsHoraFinal)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraFinal)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := Vacio;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    if length(trim(Horaf)) = 5 then
                    begin
                        if StrToInt(copy(Horaf,1,2))> 24 then
                        begin
                            Excel.Range[ColumnaNombre(CsHoraFinal)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraFinal)+IntToStr(iFila)].Select;
                            Excel.Selection.Interior.Colorindex := Vacio;
                            MostrarExcel := True;
                            ImportarLinea := False;
                        end;
                    end;

                    if length(trim(Descripcion)) = 0 then
                    begin
                      Excel.Range[ColumnaNombre(CmDescripcion)+IntToStr(iFila)+':'+ColumnaNombre(CmDescripcion)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := Vacio;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    //la linea está completamente vacia
                    if (length(Trim(Actividad+clasificacion+horai+horaf+descripcion)) = 0) and (Cantidad = 0) then
                    begin
                      Excel.Range[ColumnaNombre(1)+IntToStr(iFila)+':'+ColumnaNombre(7)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := 2;
                      inc(LineasBlancas);
                    end;
                    {$Endregion}

                    {$region 'Existe en el catalogo'}
                    zfolios.first;
                    while not zfolios.eof do
                    begin
                      zfolios.fieldbyname('sNumeroOrden').asstring;
                      zfolios.next;
                    end;

                    //El folio que está en la plantilla no existe en el catalogo de folios para ese contrato
                    if (not ZFolios.Locate('sNumeroOrden',Folio,[])) and (Length(Trim(Folio))>0) then
                    begin
                      Excel.Range[ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)+':'+ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := NoEnCatalogo;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;


                    //el folio no tiene actividades
                    if (not ZActividades.Locate('snumeroorden',Folio,[])) and (Length(Trim(Folio))>0) then
                    begin
                      Excel.Range[ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)+':'+ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := NoEnActividades;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    //la actividad no esta en el folio con actividades
                    if (not ZActividades.Locate('snumeroorden,snumeroactividad',vararrayof([Folio,Actividad]),[])) and (Length(Trim(Actividad))>0) then
                    begin
                      Excel.Range[ColumnaNombre(CsNumeroActividad)+IntToStr(iFila)+':'+ColumnaNombre(CsNumeroActividad)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := NoEnActividades;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    //El tipo de movimiento no existe
                    if (not ZMovimientos.Locate('sidtipomovimiento',Clasificacion,[])) and (Length(Trim(Clasificacion))>0) then
                    begin
                      Excel.Range[ColumnaNombre(CsidClasificacion)+IntToStr(iFila)+':'+ColumnaNombre(CsidClasificacion)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := NoEnActividades;
                      MostrarExcel := True;
                      ImportarLinea := False;
                    end;

                    if Importarlinea and (CbxAvance.Checked) then
                    begin
                      Excel.Range[ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)+':'+ColumnaNombre(CmDescripcion)+IntToStr(iFila)].Select;
                      connection.QryBusca.Active := False;
                      connection.QryBusca.SQL.Clear;
                      connection.QryBusca.SQL.Text := 'select sum(dcantidad) as avance from bitacoradeactividades where sContrato = :contrato and sNumeroOrden = :folio and sidtipomovimiento = "ED" and sNumeroActividad = :actividad';
                      connection.QryBusca.ParamByName('contrato').AsString := Cont;
                      connection.QryBusca.ParamByName('folio').AsString := Folio;
                      connection.QryBusca.ParamByName('actividad').AsString := Actividad;
                      connection.QryBusca.Open;
                      if connection.QryBusca.FieldByName('avance').AsFloat + Cantidad >= 1  then
                      begin
                        Excel.Selection.Interior.Colorindex := Excede;
                        MostrarExcel := True;
                        ImportarLinea := False;
                      end;

                    end;
                    {$endregion}
                    //Insertando datos
                    //Buscar al padre osea el tipo de movimiento E, si no existiera crearlo
                    if ImportarLinea then
                    begin
                      Inc( iOk );
                      MostrarExcel := False;

                      LineasBlancas := 0;
                      ZUptBitacoraAct.Active := False;
                      ZUptBitacoraAct.SQL.Clear;
                      ZUptBitacoraAct.SQL.Text := 'select * from bitacoradeactividades where scontrato = :scontrato and dIdFecha = :didfecha and sNumeroOrden = :snumeroorden and sNumeroActividad = :snumeroactividad and sidtipomovimiento = "E" ';
                      ZUptBitacoraAct.ParamByName('scontrato').AsString :=cont;
                      ZUptBitacoraAct.ParamByName('didfecha').AsDate :=dFecha.Date;
                      ZUptBitacoraAct.ParamByName('snumeroorden').AsString :=folio;
                      ZUptBitacoraAct.ParamByName('snumeroactividad').AsString :=Actividad;
                      ZUptBitacoraAct.Open;

                      ZActividades.Locate('snumeroorden,snumeroactividad',vararrayof([Folio,Actividad]),[]);
                      sWbs := ZActividades.FieldByName('swbs').AsString;
                      actdesc := ZActividades.FieldByName('mdescripcion').AsString;

                      //buscamos el último convenio
                      connection.QryBusca.Active := False;
                      connection.QryBusca.SQL.Clear;
                      connection.QryBusca.SQL.Add('select sIdConvenio from actividadesxorden where sContrato =:contrato and sNumeroOrden =:Folio group by sIdConvenio ');
                      connection.QryBusca.ParamByName('Contrato').AsString := cont;
                      connection.QryBusca.ParamByName('Folio').AsString    := folio;
                      connection.QryBusca.Open;

                      if connection.QryBusca.RecordCount > 0 then
                         Convenio := connection.QryBusca.FieldByName('sIdConvenio').AsString;

                      if ZUptBitacoraAct.RecordCount = 0 then //si no existe movimiento e entonces crearlo
                      begin
                        ZUptBitacoraAct.Active := False;
                        ZUptBitacoraAct.SQL.Clear;
                        ZUptBitacoraAct.SQL.Text := 'SELECT MAX(iIdDiario)+1 AS MaxDiario FROM bitacoradeactividades WHERE sContrato = :Contrato AND dIdFecha = :Fecha';
                        ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := cont;
                        ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dFecha.Date;
                        ZUptBitacoraAct.Open;
                        if ZUptBitacoraAct.RecordCount = 0 then
                          iIdDiario := 0
                        else
                          iIdDiario := ZUptBitacoraAct.FieldByName('MaxDiario').AsInteger;

                        ZUptBitacoraAct.Active := False;
                        ZUptBitacoraAct.SQL.Clear;
                        ZUptBitacoraAct.SQL.Text := 'INSERT INTO bitacoradeactividades ' +
                                '(sContrato, sIdConvenio, dIdFecha, iIdDiario, sIdTurno, sNumeroOrden, sWbs, sPaquete, sNumeroActividad, sIdTipoMovimiento, sIdClasificacion, sHoraInicio, sHoraFinal, dCantidad, dAvance, mDescripcion, iIdTarea, sIdPernocta, sIdPlataforma) VALUES ' +
                                '(:Contrato, :Convenio, :Fecha, :IdDiario, "A", :Folio, :Wbs, "", :Actividad, "E", "", "00:00", "24:00", 0, 0, :Descripcion, :Tarea, :pernocta, :plataforma)'  ;
                        ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := Cont;
                        ZUptBitacoraAct.Params.ParamByName('Convenio').AsString := convenio;
                        ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dfecha.Date;
                        ZUptBitacoraAct.Params.ParamByName('IdDiario').AsInteger := iIdDiario;
                        ZUptBitacoraAct.Params.ParamByName('Folio').AsString := Folio;
                        ZUptBitacoraAct.Params.ParamByName('Pernocta').AsString := sPernocta;
                        ZUptBitacoraAct.Params.ParamByName('Plataforma').AsString := sPlataforma;
                        ZUptBitacoraAct.Params.ParamByName('Wbs').AsString := sWbs;
                        ZUptBitacoraAct.Params.ParamByName('Actividad').AsString := Actividad;
                        ZUptBitacoraAct.Params.ParamByName('Descripcion').AsString := actdesc;
                        ZUptBitacoraAct.Params.ParamByName('Tarea').AsInteger := iTarea;
                        ZUptBitacoraAct.ExecSQL;

                        ZUptBitacoraAct.Active := False;
                        ZUptBitacoraAct.SQL.Clear;
                        ZUptBitacoraAct.SQL.Text := 'SELECT MAX(iIdDiario)+1 AS MaxDiario FROM bitacoradeactividades WHERE sContrato = :Contrato AND dIdFecha = :Fecha';
                        ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := cont;
                        ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dFecha.Date;
                        ZUptBitacoraAct.Open;
                        if ZUptBitacoraAct.RecordCount = 0 then
                          iIdDiario := 0
                        else
                          iIdDiario := ZUptBitacoraAct.FieldByName('MaxDiario').AsInteger;

                        ZUptBitacoraAct.Active := False;
                        ZUptBitacoraAct.SQL.Text := 'INSERT INTO bitacoradeactividades ' +
                                          '(sContrato, sIdConvenio, dIdFecha, iIdDiario, sIdTurno, sNumeroOrden, sWbs, sPaquete, sNumeroActividad, sIdTipoMovimiento, sIdClasificacion, sHoraInicio, sHoraFinal, dCantidad, dAvance, mDescripcion, iIdTarea, sIdPernocta, '+
                                          'sIdPlataforma, lDescartaPU) VALUES ' +
                                          '(:Contrato, :Convenio, :Fecha, :IdDiario, "A", :Folio, :Wbs, "", :Actividad, "ED", :Clasificacion, :HoraInicio, :HoraFin, :Cantidad, :Cantidad, :Descripcion, :Tarea, :Pernocta, :Plataforma, "No") ';
                        ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := Cont;
                        ZUptBitacoraAct.Params.ParamByName('Convenio').AsString := convenio;
                        ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dfecha.Date;//Excel.Cells[(iFila), (2)].Text;
                        ZUptBitacoraAct.Params.ParamByName('IdDiario').AsInteger := iIdDiario;
                        ZUptBitacoraAct.Params.ParamByName('Folio').AsString := Folio;
                        ZUptBitacoraAct.Params.ParamByName('Pernocta').AsString := sPernocta;
                        ZUptBitacoraAct.Params.ParamByName('Plataforma').AsString := sPlataforma;
                        ZUptBitacoraAct.Params.ParamByName('Wbs').AsString := sWbs;
                        ZUptBitacoraAct.Params.ParamByName('Actividad').AsString := Actividad;
                        ZUptBitacoraAct.Params.ParamByName('Clasificacion').AsString := Clasificacion;
                        ZUptBitacoraAct.Params.ParamByName('HoraInicio').AsString := Horai;
                        ZUptBitacoraAct.Params.ParamByName('HoraInicio').AsString := Horai;
                        ZUptBitacoraAct.Params.ParamByName('Tarea').AsInteger := iTarea;
                        ZUptBitacoraAct.Params.ParamByName('HoraFin').AsString := Horaf; //Excel.Cells[(iFila), (7)].Text;
                        if (lowercase(trim(Clasificacion)) = 'te') or (lowercase(trim(Clasificacion)) = 'ac') or (lowercase(trim(Clasificacion)) = 'fp') then
                          ZUptBitacoraAct.Params.ParamByName('Cantidad').AsFloat := (Cantidad) //Excel.Cells[(iFila), (8)].Value;
                        else
                          ZUptBitacoraAct.Params.ParamByName('Cantidad').AsFloat := 0;
                        ZUptBitacoraAct.Params.ParamByName('Descripcion').AsString := Descripcion;
                        ZUptBitacoraAct.ExecSQL;
                      end
                      else
                      begin;//Si ya existe el padre entonces crear el registro ed
                        ZUptBitacoraAct.Active := False;
                        ZUptBitacoraAct.SQL.Clear;
                        ZUptBitacoraAct.SQL.Text := 'SELECT MAX(iIdDiario)+1 AS MaxDiario FROM bitacoradeactividades WHERE sContrato = :Contrato AND dIdFecha = :Fecha';
                        ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := cont;
                        ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dFecha.Date;
                        ZUptBitacoraAct.Open;
                        if ZUptBitacoraAct.RecordCount = 0 then
                          iIdDiario := 0
                        else
                          iIdDiario := ZUptBitacoraAct.FieldByName('MaxDiario').AsInteger;

                        ZUptBitacoraAct.Active := False;
                        ZUptBitacoraAct.SQL.Text := 'INSERT IGNORE INTO bitacoradeactividades ' +
                                          '(sContrato, sIdConvenio, dIdFecha, iIdDiario, sIdTurno, sNumeroOrden, sWbs, sPaquete, sNumeroActividad, sIdTipoMovimiento, sIdClasificacion, sHoraInicio, sHoraFinal, dCantidad, dAvance, mDescripcion, iIdTarea, sIdPernocta, sIdPlataforma) VALUES ' +
                                          '(:Contrato, :Convenio, :Fecha, :IdDiario, "A", :Folio, :Wbs, "", :Actividad, "ED", :Clasificacion, :HoraInicio, :HoraFin, :Cantidad, :Cantidad, :Descripcion, :Tarea, :Pernocta, :Plataforma) ';
                        ZUptBitacoraAct.Params.ParamByName('Contrato').AsString := Cont;
                        ZUptBitacoraAct.Params.ParamByName('Convenio').AsString := convenio;
                        ZUptBitacoraAct.Params.ParamByName('Fecha').AsDate := dfecha.Date;//Excel.Cells[(iFila), (2)].Text;
                        ZUptBitacoraAct.Params.ParamByName('IdDiario').AsInteger := iIdDiario;
                        ZUptBitacoraAct.Params.ParamByName('Folio').AsString := Folio;
                        ZUptBitacoraAct.Params.ParamByName('Pernocta').AsString := sPernocta;
                        ZUptBitacoraAct.Params.ParamByName('Plataforma').AsString := sPlataforma;
                        ZUptBitacoraAct.Params.ParamByName('Tarea').AsInteger := iTarea;
                        ZUptBitacoraAct.Params.ParamByName('Wbs').AsString := sWbs;
                        ZUptBitacoraAct.Params.ParamByName('Actividad').AsString := Actividad;
                        ZUptBitacoraAct.Params.ParamByName('Clasificacion').AsString := Clasificacion;
                        ZUptBitacoraAct.Params.ParamByName('HoraInicio').AsString := Horai;
                        ZUptBitacoraAct.Params.ParamByName('HoraFin').AsString := Horaf; //Excel.Cells[(iFila), (7)].Text;
                        ZUptBitacoraAct.Params.ParamByName('Cantidad').AsFloat := Cantidad; //Excel.Cells[(iFila), (8)].Value;
                        ZUptBitacoraAct.Params.ParamByName('Descripcion').AsString := Descripcion;
                        ZUptBitacoraAct.ExecSQL;
                      end;
                      Excel.Range[ColumnaNombre(1)+IntToStr(iFila)+':'+ColumnaNombre(7)+IntToStr(iFila)].Select;
                      Excel.Selection.Interior.Colorindex := ImportarL;
                    end;

                    inc(ifila);  //avanzar a la siguiente linea
                    LineaLeyenda := ifila;
                  end;
                finally
                  ZReporte.Free;
                end;
              finally
                ZActividades.Free;
              end;
            finally
              ZFolios.Free;
            end;
          finally
            ZMovimientos.Free;
          end;
        finally
          ZContratos.Free;
          LineasOk.Free;
        end;
        ZUptBitacoraAct.Connection.Commit;
      except
          ZUptBitacoraAct.Connection.Rollback;
          raise ;
      end;
    finally
      ZUptBitacoraAct.Free;
      ListFolios.Free;
    end;
    if MostrarExcel then
    begin
      CreaLeyenda(Excel);
      Excel.Range['A8:A8'].Select;
      Excel.Visible := True;
    end
    else
    begin
      ExcelClose(Excel,False);
    end;
  except
    on e:Exception do
    begin
      ShowMessage(e.Message);
      Excel.Visible := True;
    end;
  end;
  MessageDlg('Se importaron :' + inttostr( iOk ) + ' registros', mtinformation, [mbOk], 0);
end;

procedure TFrmImportaExportaActiv.ExportarPlantilla(Cont:string;Lin:integer);
  const
   xlValidateList = 3;
   xlValidateTextLength = 6;
   xlValidateDate = 4;
   xlValidAlertStop = 1;
   xlBetween = 1;

   //Borde
   xlContinuous = $00000001;
var
  Excel,
  Libro,
  Hoja: Variant;

  NombreDelExcel:string;

  Errores:string;
  UsaContrato:Boolean;

  ZqMovimientos,
  zqActividades
  :tzreadonlyquery;

  IFila,I:Integer;
  FilasTotales,IndiceLibro,IndiceHoja,xcount:Integer;

  LstItem,LstAct,LstFol,ScripAct,ScripFol: string;
  Rango: Variant;

  LstTemp:TStringList;

  Procedure createComboExcel(Var Hoja: Variant; NombreHoja: String; PosCol: String; ListaDatos:string);
  begin
      Hoja.Sheets[NombreHoja].Select;
      Hoja.Range[PosCol].Select;
      hoja.Selection.Validation.Delete;
      hoja.Selection.Validation.add(xlValidateList,AlertStyle := xlValidAlertStop,Operator := xlBetween, Formula1:=ListaDatos);
      hoja.Selection.Validation.IgnoreBlank := True;
      hoja.Selection.Validation.InCellDropdown := True;
      hoja.Selection.Validation.InputTitle := '';
      hoja.Selection.Validation.ErrorTitle := '';
      hoja.Selection.Validation.ErrorMessage := '';
      hoja.Selection.Validation.ShowInput := True;
      hoja.Selection.Validation.ShowError := True;
  end;

begin
  Errores := '';
  UsaContrato := False;
  ZqMovimientos := TZReadOnlyQuery.Create(nil);
  try
    ZqMovimientos.Connection := connection.zConnection;
    ZqMovimientos.SQL.Clear;
    ZqMovimientos.SQL.Text := 'select group_concat(sidtipomovimiento) as lista from tiposdemovimiento where sContrato = :scontrato and sClasificacion <> "Movimiento de Barco" and sIdTipoMovimiento <> "NG" ';

    try
      ZqFolios.Active := False;
      ZqFolios.SQL.Clear;
      ZqFolios.SQL.Text := 'Select sNumeroOrden, sIdFolio from ordenesdetrabajo where scontrato = :sContrato and cIdStatus = "P" order by iOrden DESC';
      ZqFolios.ParamByName('scontrato').AsString := Cont;

      {$REGION 'Creando ambiente'}
      NombreDelExcel := 'plantilla actividades';//PAthGuardar.FileName; //GetTempDir + 'TEMP~' + NombreAleatorio(3) + 'ReporteDiario.xls';
      Try
        Excel := CreateOleObject('Excel.Application');
      Except
        On E: Exception do begin
          FreeAndNil(Excel);
          Errores := 'Ocurrio el siguiente error al tratar de usar microsoft excel: '+e.Message+#10;

        end;
      End;
      Excel.Visible := True;
      Excel.DisplayAlerts:= True;
      Libro := Excel.Workbooks.Add;
      IndiceLibro := Excel.Workbooks.count;
      while Excel.Workbooks [indicelibro].Worksheets.count < 2 do
        Libro.Sheets.Add;
      while Excel.Workbooks [indicelibro].Worksheets.count > 2 do
        Libro.Sheets[3].Delete;


      {$ENDREGION}

      {$REGION 'Consultas necesarias'}
      //si no hay errores entonces prosigue
      if Length(Errores) = 0 then
      //si el contrato debe aplicar entonces hacer las consultas de folios
        if (LowerCase(Cont) <> 'na')  then
        begin
          ZqFolios.Open;
          ZqActividades := TZReadOnlyQuery.Create(nil);
          ZqActividades.Connection := connection.zConnection;
          ZqActividades.SQL.Clear;
          ZqActividades.SQL.Text := 'Select o.sIdFolio, a.sNumeroActividad, '+
                      '(select sum(dAvance) as anterior from bitacoradeactividades where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                      'and sNumeroActividad = a.sNumeroActividad and dIdFecha <=:Fecha group by sContrato ) as Avance '+
                      'from actividadesxorden a '+
                      'inner join ordenesdetrabajo o on (o.sContrato = a.sContrato and o.sNumeroOrden = a.sNumeroOrden and o.cIdStatus = "P") '+
                      'where a.scontrato =:Contrato and a.sTipoActividad = "Actividad" '+
                      'order by o.iOrden DESC, a.iItemOrden ';
          ZqActividades.ParamByName('contrato').AsString := Cont;
          ZqActividades.ParamByName('fecha').AsDate      := dFecha.Date;
          ZqActividades.Open;

          ZqMovimientos.ParamByName('scontrato').AsString := Cont;
          ZqMovimientos.Open;
          LstAct := ZqMovimientos.FieldByName('lista').AsString;
          UsaContrato := True;
        end
        else
        begin
          ZqMovimientos.ParamByName('sContrato').AsString:= global_Contrato_Barco;
          ZqMovimientos.Open;
          LstAct := ZqMovimientos.FieldByName('lista').AsString;
        end;
      {$ENDREGION}
      Libro.Sheets[1].Name := 'PLANTILLA';
      Libro.Sheets[2].Name := 'DICCIONARIO';
      Excel.Workbooks [indicelibro].Worksheets['DICCIONARIO'].select;
      LstTemp:=TStringList.Create;
      try
        LstTemp.CommaText := LstAct;
        for xcount := 0 to LstTemp.count-1 do
        begin
          if xcount = 0 then
          begin
            Excel.Range[ColumnaNombre(1)+IntToStr(xcount+1)+':'+ColumnaNombre(1)+IntToStr(xcount+1)].Select;
            Excel.Selection.Value := 'ACTIVIDADES';
            ScripAct := '=DICCIONARIO!$'+ColumnaNombre(1)+'$'+IntToStr(xcount+2)+':$'+ColumnaNombre(1)+'$';
          end;
          Excel.Range[ColumnaNombre(1)+IntToStr(xcount+2)+':'+ColumnaNombre(1)+IntToStr(xcount+2)].Select;
          Excel.Selection.Value := LstTemp[xcount];
          if xcount = LstTemp.Count-1 then
          begin
            ScripAct := ScripAct+IntToStr(xcount+2)+'';
          end;
        end;

        Excel.sheets.add;
        Excel.ActiveSheet.Name := LeftStr('DICCIONARIO2',31);
        Excel.Sheets['DICCIONARIO2'].Select;
        zqFolios.First;
        while Not zqFolios.Eof do
        begin
          Excel.Cells[zqFolios.RecNo,2] := zqFolios.FieldByName('sIdFolio').AsString;
          zqFolios.Next;
        end;

        Excel.sheets.add;
        Excel.ActiveSheet.Name := LeftStr('FOLIO_ACTIVIDAD',31);
        Excel.Sheets['FOLIO_ACTIVIDAD'].Select;
        zqActividades.First;
        while Not zqActividades.Eof do
        begin
          Excel.Cells[zqActividades.RecNo +1,1] := zqActividades.FieldByName('sIdFolio').AsString;
          Excel.Cells[zqActividades.RecNo +1,2] := zqActividades.FieldByName('sNumeroActividad').AsString;
          Excel.Cells[zqActividades.RecNo +1,3] := zqActividades.FieldByName('Avance').AsFloat;
          zqActividades.Next;
        end;
       Excel.Columns['A:A'].ColumnWidth := 43;
       Excel.Columns['B:B'].ColumnWidth := 14;

      Excel.Range['A1:A1'].Select;
      Excel.Selection.Value := 'FOLIO';

      Excel.Range['B1:B1'].Select;
      Excel.Selection.Value := 'ACTIVIDAD';

      Excel.Range['C1:C1'].Select;
      Excel.Selection.Value := 'AVANCE';

      Excel.Range['A1:C1'].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 11;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.WrapText := True;
      Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
      Excel.Selection.Borders[xlEdgeTop].Weight:= 2;
      Excel.Selection.Interior.Color := $00E4CCB8;//color de excel

      Excel.Range['A2:C'+IntToStr(zqActividades.RecordCount + 1)].Select;
      Excel.Selection.Borders.LineStyle := xlContinuous;

      Excel.Range['B'+IntToStr(zqActividades.RecordCount + 1)+':B'+IntToStr(zqActividades.RecordCount + 1)].Select;

      finally
        LstTemp.Free;
      end;

      Excel.Workbooks [indicelibro].Worksheets['DICCIONARIO'].visible := False;
      Excel.Workbooks [indicelibro].Worksheets['DICCIONARIO2'].visible := False;
      Excel.Workbooks [indicelibro].Worksheets['PLANTILLA'].select;


      {$REGION 'insertando datos y formateando'}
      //encabezado
      iFila := 2;
      Excel.Range[ColumnaNombre(1)+IntToStr(iFila)+':'+ColumnaNombre(7)+IntToStr(iFila)].Select;
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.WrapText := True;

      Excel.Selection.Value := 'PLANTILLA DE IMPORTACION DE ACTIVIDADES';

      Inc(IFila);
      Excel.Range[ColumnaNombre(1)+IntToStr(iFila)+':'+ColumnaNombre(7)+IntToStr(iFila)].Select;
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.WrapText := True;
      Excel.Selection.Value := '';

      Inc(IFila);
      Excel.Range[ColumnaNombre(1)+IntToStr(iFila)+':'+ColumnaNombre(7)+IntToStr(iFila)].Select;
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.WrapText := True;
      Excel.Selection.Value := 'RENTA DIARIA';

      Inc(IFila);
      Excel.Range[ColumnaNombre(1)+IntToStr(iFila)+':'+ColumnaNombre(5)+IntToStr(iFila)].Select;
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlRight;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 11;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.WrapText := True;
      Excel.Selection.Value := 'CONTRATO:';
      Excel.Selection.Interior.Color := $00BBBBBB;
      Excel.range['F5:F5'].AddComment('Especifique un contrato existente en el sistema.');
      Excel.range['F5:F5'].Comment.Visible := False;

      Excel.Range[ColumnaNombre(6)+IntToStr(iFila)+':'+ColumnaNombre(7)+IntToStr(iFila)].Select;
      Excel.Selection.HorizontalAlignment := xlLeft;
      Excel.Selection.MergeCells := True;
      Excel.Selection.value := 'N/A';

      Inc(IFila);
      Excel.Range[ColumnaNombre(1)+IntToStr(iFila)+':'+ColumnaNombre(5)+IntToStr(iFila)].Select;
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment :=xlRight;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 11;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.WrapText := True;
      Excel.Selection.Value := 'FECHA:';
      Excel.Selection.Interior.Color := $00BBBBBB;
      Excel.range['F6:F6'].AddComment('Especifique una fecha de reporte.');
      Excel.range['F6:F6'].Comment.Visible := False;

      Excel.Range[ColumnaNombre(6)+IntToStr(iFila)+':'+ColumnaNombre(7)+IntToStr(iFila)].Select;
      Excel.Selection.HorizontalAlignment := xlLeft;
      Excel.Selection.MergeCells := True;
       Excel.Selection.NumberFormat := '[$-80A] aaaa"-"mm"-"dd;@';
      Excel.selection.value := DFecha.Text;

      Excel.Range[ColumnaNombre(CsNumeroOrden)+IntToStr(ifila-1)+':'+ColumnaNombre(CmDescripcion)+IntToStr(ifila)].Select;
      Excel.Selection.Borders.LineStyle := xlContinuous;

      IFila := IFila+2;
      Excel.Rows['1:1'].RowHeight := 6;
      Excel.Rows['7:7'].RowHeight := 6;

      //termima encabezado comienzan titulos
      Excel.Range[ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)+':'+ColumnaNombre(CmTarea)+IntToStr(iFila)].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 11;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.WrapText := True;
      Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
      Excel.Selection.Borders[xlEdgeTop].Weight:= 2;

      Excel.Selection.Interior.Color := $00BBBBBB;//color de excel
      Excel.ActiveSheet.Cells[IFila, CsNumeroOrden].ColumnWidth := 43;
      Excel.Rows[IntToStr(IFila) + ':' + IntToStr(IFila)].RowHeight := 28.50;
      Excel.ActiveSheet.Cells[IFila, CsNumeroActividad].ColumnWidth := 14;
      Excel.ActiveSheet.Cells[IFila, CsidClasificacion].ColumnWidth := 6.57;
      Excel.ActiveSheet.Cells[IFila, CsHoraInicio].ColumnWidth := 12;
      Excel.ActiveSheet.Cells[IFila, CsHoraFinal].ColumnWidth := 11.29;
      Excel.ActiveSheet.Cells[IFila, CdCantidad].ColumnWidth := 10;
      Excel.ActiveSheet.Cells[IFila, CmDescripcion].ColumnWidth := 85.86;
      Excel.ActiveSheet.Cells[IFila, CmTarea].ColumnWidth := 0;

      Excel.Range[ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)+':'+ColumnaNombre(CsNumeroOrden)+IntToStr(iFila)].Select;
      Excel.Selection.Value := 'NUMERO DE ORDEN (FOLIO)';
      Excel.range['A8:A8'].AddComment('Especifique un fólio existente en el sistema y en el contrato.');
      Excel.range['A8:A8'].Comment.Visible := False;
      Excel.Range[ColumnaNombre(CsNumeroActividad)+IntToStr(iFila)+':'+ColumnaNombre(CsNumeroActividad)+IntToStr(iFila)].Select;
      Excel.Selection.Value := 'PARTIDA';
      Excel.range['B8:B8'].AddComment('Especifique una actividad existente en el sistema y asignada al fólio.');
      Excel.range['B8:B8'].Comment.Visible := False;
      Excel.Range[ColumnaNombre(CsidClasificacion)+IntToStr(iFila)+':'+ColumnaNombre(CsidClasificacion)+IntToStr(iFila)].Select;
      Excel.Selection.Value := 'CLASIF.';
      Excel.range['C8:C8'].AddComment('Especifique un tipo de movimiento existente en el sistema para la actividad.');
      Excel.range['C8:C8'].Comment.Visible := False;
      Excel.Range[ColumnaNombre(CsHoraInicio)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraInicio)+IntToStr(iFila)].Select;
      Excel.Selection.Value := 'HORA INICIO (00:00-24:00)';
      Excel.range['D8:D8'].AddComment('Especifique Hora de inicio de la actividad en formato 00:00 y rango 00:00-24:00.');
      Excel.range['D8:D8'].Comment.Visible := False;
      Excel.Range[ColumnaNombre(CsHoraFinal)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraFinal)+IntToStr(iFila)].Select;
      Excel.Selection.Value := 'HORA FIN (00:00-24:00)';
      Excel.range['E8:E8'].AddComment('Especifique Hora de fin de la actividad en formato 00:00 y rango 00:00-24:00 y que sea mayor a la hora de inicio.');
      Excel.range['E8:E8'].Comment.Visible := False;
      Excel.Range[ColumnaNombre(CdCantidad)+IntToStr(iFila)+':'+ColumnaNombre(CdCantidad)+IntToStr(iFila)].Select;
      Excel.Selection.Value := 'AVANCE    (0-100%)';
      Excel.range['F8:F8'].AddComment('Especifique el porcentaje  en un rango de 0 a 100%');
      Excel.range['F8:F8'].Comment.Visible := False;
      Excel.Range[ColumnaNombre(CmDescripcion)+IntToStr(iFila)+':'+ColumnaNombre(CmDescripcion)+IntToStr(iFila)].Select;
      Excel.Selection.Value := 'DESCRIPCION';
      Excel.range['G8:G8'].AddComment('Especifique una descripción para la actividad.');
      Excel.range['G8:G8'].Comment.Visible := False;
      Excel.Range[ColumnaNombre(CmTarea)+IntToStr(iFila)+':'+ColumnaNombre(CmTarea)+IntToStr(iFila)].Select;
      Excel.Selection.Value := 'TAREA';
      Excel.range['H8:H8'].AddComment('Especifique la tarea de la actividad.');
      Excel.range['H8:H8'].Comment.Visible := False;

      inc(ifila);
      {$ENDREGION}
      //inicia formateado de contenido
      FilasTotales := ifila+lin-1; //filas del contenido inician en 8
      Excel.Range[ColumnaNombre(Csnumeroorden)+IntToStr(iFila)+':'+ColumnaNombre(cmTarea)+IntToStr(FilasTotales)].Select;
      Excel.Selection.HorizontalAlignment := xlcenter;

      //Formateando columna actividad Combo de actividades
      try
        Rango := Excel.ActiveSheet.Range[ColumnaNombre(CsidClasificacion)+inttostr(ifila)+':'+ColumnaNombre(CsidClasificacion)+inttostr(FilasTotales)];
        Rango.validation.Delete;
        LstItem := lstact;
        Rango.validation.Add(xlValidateList,AlertStyle := xlValidAlertStop,Operator := xlBetween, Formula1:=ScripAct); //LstItem
      except
         ;
      end;

      //Formateando columna numero de orden Combo de contratos
      if UsaContrato then
      begin
        try
          Rango := Excel.ActiveSheet.Range[ColumnaNombre(CsNumeroOrden)+inttostr(ifila)+':'+ColumnaNombre(CsNumeroOrden)+inttostr(FilasTotales)];
          Rango.validation.Delete;
          Rango.validation.Add(xlValidateList,AlertStyle := xlValidAlertStop,Operator := xlBetween, Formula1:='=DICCIONARIO2!$B:$B');
        except
          ;
        end;
      end;

      Excel.Range['H'+IntToStr(iFila)+':H'+IntToStr(FilasTotales)].Select;
      Excel.Selection.Value := 'N/A';

      Excel.Range[ColumnaNombre(CsNumeroActividad)+IntToStr(iFila)+':'+ColumnaNombre(CsNumeroActividad)+IntToStr(FilasTotales)].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.NumberFormat := '@';


      Excel.Range[ColumnaNombre(CsHoraInicio)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraInicio)+IntToStr(FilasTotales)].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.NumberFormat := '[hh]:mm';


      Excel.Range[ColumnaNombre(CsHoraFinal)+IntToStr(iFila)+':'+ColumnaNombre(CsHoraFinal)+IntToStr(FilasTotales)].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.NumberFormat := '[hh]:mm';


      Excel.Range[ColumnaNombre(CdCantidad)+IntToStr(iFila)+':'+ColumnaNombre(CdCantidad)+IntToStr(FilasTotales)].Select;
      Excel.Selection.HorizontalAlignment := xlRight;
      Excel.Selection.NumberFormat := '0.00';

      Excel.Range[ColumnaNombre(cmTarea)+IntToStr(iFila)+':'+ColumnaNombre(CdCantidad)+IntToStr(cmTarea)].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.NumberFormat := '@';

      //Formateando Bordes del contenido
      Excel.Range[ColumnaNombre(CsNumeroOrden)+IntToStr(ifila-1)+':'+ColumnaNombre(cmTarea)+IntToStr(FilasTotales)].Select;
      Excel.Selection.Borders.LineStyle := xlContinuous;

      Excel.Range['A9:A9'].Select;
    finally
      ZqFolios.Free;
    end;

  finally
    ZqMovimientos.Free;
    if Length(Errores) > 0 then
      ShowMessage(Errores);
  end;
end;

procedure TFrmImportaExportaActiv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
