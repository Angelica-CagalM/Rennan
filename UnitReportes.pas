unit UnitReportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  frxClass, frxDBSet, frxRich,Printers,DB,
  cxGridDBTableView,cxGrid, Uni, dxmdaset,  dxCore, UnitGenerales, frm_connection;
var
  reporte: string;

  procedure CreaCampoMemData(Memoria: TDataSet; NombreCampo: string; TipoDato: TFieldType; iSize :Integer; lRequired : boolean );
  procedure generar_reporte_grid(grid_view:TcxGridDBTableView;Titulo:String);
  procedure generar_reporte_grid_detalles(grid_view:TcxGridDBTableView;zDatos:TUniquery;Titulo, CampoRelacion:String);
  procedure generar_reporte_grid_MaterialDetalles(grid_view:TcxGridDBTableView;zDatos:TUniquery;Titulo, CampoRelacion:String; TipoDetalle, IdFiltro : Integer);

implementation

procedure CreaCampoMemData(Memoria: TDataSet; NombreCampo: string; TipoDato: TFieldType; iSize :Integer; lRequired : boolean );
begin
  if (Memoria = nil) or (NombreCampo = '') then
    Exit;
  with Memoria.FieldDefs.AddFieldDef do
  begin
    Name := NombreCampo;
    DataType := TipoDato;
    Size     := iSize;
    Required := lRequired;
    CreateField(Memoria);
  end;
end;

procedure generar_reporte_grid(grid_view:TcxGridDBTableView;Titulo:String);
var
  frxReport1:TfrxReport;
  frxDBDataset1 : TfrxDBDataset;
  DataPage: TfrxDataPage;
  Page: TfrxReportPage;
  Band: TfrxBand;
  DataBand: TfrxMasterData;
  HeaderBand: TfrxHeader;
  Memo, MemoLabel: TfrxMemoView;
  i, g: Integer;
  mData: TfrxMemoView;
  posHeader: extended;
  tamPage: extended;
  fxLinea: TfrxLineView;
  maximaAltura: Extended;
  tam_col: Extended;
  GroupHeaderBand: TfrxGroupHeader;
  GroupFooterBand: TfrxGroupFooter;
  MemoGroup: TfrxMemoView;
  TopTotal, HeightTotal:Extended;
  orden,CadenaOrderBy : String;
  o: Integer;
begin
  //Llamar Reporte General
  frxReport1:= TfrxReport.Create(nil);
  frxDBDataset1 := TfrxDBDataset.Create(nil);
  frxDBDataSet1.Name := 'frxDBDataSet1';
  frxDBDataSet1.UserName := 'frxDBDataSet1';
  frxDBDataSet1.DataSet := grid_view.DataController.DataSource.DataSet;
  frxReport1.Clear;
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Reportes\ReporteGeneral.fr3');
  frxDBDataset1.Clear;
  { campos del zdatos }
  for I := 0 to grid_view.DataController.DataSource.DataSet.FieldCount-1 do
  begin
    frxDBDataset1.FieldAliases.AddPair(grid_view.DataController.DataSource.DataSet.Fields.Fields[i].FieldName,grid_view.DataController.DataSource.DataSet.Fields.Fields[i].FieldName);
  end;

  {Titulo del reporte}
  mData := frxReport1.FindComponent('rTitulo')  as TfrxMemoView;
  mData.Text := Titulo;

  { datos en reporte }
  frxReport1.DataSets.Add(frxDBDataSet1);

  HeaderBand := TfrxHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
  HeaderBand.CreateUniqueName;

  HeaderBand.Top := 500;
  TopTotal := HeaderBand.Top;

  HeaderBand.Height := 25;
  HeightTotal := TopTotal + HeaderBand.Height;

  HeaderBand.Stretched := True;

  fxLinea := frxreport1.FindComponent('lineainferior') as  TfrxLineView;
  fxLinea.Parent := HeaderBand;
  fxLinea.Height := 1;
  fxLinea.setBounds(0,20, 100, 1);
  fxLinea.Align := baWidth;

  posHeader := 0;
  Page := TfrxReportPage(frxReport1.Pages[1]);
  page.PaperSize := DMPAPER_LETTER;
  tamPage := page.PaperWidth * 3.77953;
  maximaAltura := 30;
  {Encabezado de columnas}
  for i:=0 to  grid_view.ColumnCount-1 do
  begin
    if grid_view.Columns[i].Visible then
    begin
      tam_col := grid_view.Columns[i].Width;
      Memo := TfrxMemoView.Create(HeaderBand);
      Memo.CreateUniqueName;
      Memo.Text := (grid_view.Columns[i].Caption);
      memo.Height := 25;
      Memo.SetBounds(posHeader-1, 2, tam_col, memo.Height);
      Memo.Align := baLeft;
      Memo.Font.Name := 'Arial';
      Memo.Font.Color := $005E0100;
      Memo.Font.Size := 9;
      posHeader := posheader + tam_col;
    end;
  end;

  {Columnas de agrupacion de reporte}
  for g := 0 to grid_view.GroupedColumnCount-1 do
  begin
  {GroupHeader}
    GroupHeaderBand := TfrxGroupHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupHeaderBand.CreateUniqueName;
    GroupHeaderBand.Top := HeightTotal;
    HeightTotal := HeightTotal + 25;
    GroupHeaderBand.Height := 25;
    GroupHeaderBand.Condition := frxDBDataSet1.UserName +'."'+grid_view.GroupedItems[g].DataBinding.FilterFieldName+'"';

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := grid_view.GroupedItems[g].Caption+': ['+frxDBDataSet1.UserName +'."'+grid_view.GroupedItems[g].DataBinding.FilterFieldName+'"]';
    MemoGroup.StretchMode := smMaxHeight;
    if g = 0 then
      MemoGroup.Color := $00E0E0E0
    else if g = 1 then
      MemoGroup.Color := $00B1B1B1
    else
      MemoGroup.Color := $00D7D6D0;

    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Align := baWidth;
    MemoGroup.Font.Name := 'Arial';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;


    //Generar Cadena para ordenamiento de datos.
    if grid_view.GroupedItems[g].SortOrder = soAscending then
       orden := 'asc'
    else
      orden := 'desc';

    CadenaOrderBy := CadenaOrderBy + grid_view.GroupedItems[g].DataBinding.FilterFieldName+' '+orden+',';

  end;

  { masterdata }
  DataBand := TfrxMasterData.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
  DataBand.CreateUniqueName;
  DataBand.DataSet := frxDBDataSet1;
  DataBand.Top := HeightTotal;
  DataBand.Height := maximaAltura;
  HeightTotal := HeightTotal + maximaAltura;
  posHeader := 0;
  for i:=0 to  grid_view.ColumnCount-1 do
  begin
    if grid_view.Columns[i].Visible then
    begin
      tam_col := grid_view.Columns[i].Width;
      Memo := TfrxMemoView.Create(DataBand);
      Memo.CreateUniqueName;
      Memo.DataSet := frxDBDataSet1;
      if grid_view.Columns[i].DataBinding.FieldName <> '' then
        Memo.DataField := grid_view.Columns[i].DataBinding.FieldName;
      memo.StretchMode := smMaxHeight;
      if maximaAltura < memo.Height then
        maximaAltura := memo.Height;
      Memo.SetBounds(posHeader-1, 0, tam_Col, memo.Height);
      memo.StretchMode := smMaxHeight;
      Memo.Font.Name := 'Arial';
      Memo.Font.Size := 9;
      Memo.Frame.Typ := [ftBottom];
      Memo.Frame.BottomLine.Style:= fsSolid;
      Memo.Frame.Width := 0.5;

      //Tag 7 para jsutificar texto
      if grid_view.Columns[i].Tag = 7 then
        Memo.HAlign := haBlock
      else
        Memo.HAlign := haLeft;
      //Tag 8 para formato en moneda
      if grid_view.Columns[i].Tag = 8 then
      begin
        Memo.DisplayFormat.FormatStr:= '%2.2m';
        Memo.DisplayFormat.Kind := fkNumeric;
      end else
      begin
        Memo.DisplayFormat.FormatStr:= '';
        Memo.DisplayFormat.Kind := fkText;
      end;


      posHeader := posHeader + tam_col;

      //Cadena para aplicar ordenamiento
      if grid_view.Columns[i].SortOrder = soAscending then
         orden := 'asc'
      else
        orden := 'desc';

      CadenaOrderBy := CadenaOrderBy + grid_view.Columns[i].DataBinding.FieldName+' '+orden+',';

    end;
  end;

  DataBand.Height := maximaAltura;
  DataBand.Stretched := True;



  {GroupFooter}
  for g := 0 to grid_view.GroupedColumnCount-1 do
  begin
    GroupFooterBand := TfrxGroupFooter.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupFooterBand.CreateUniqueName;
    GroupFooterBand.Top := HeightTotal + 0;
    GroupFooterBand.Height := 0;
  end;


  CadenaOrderBy := Copy (CadenaOrderBy, 0, Length(CadenaOrderBy)-1);

  TUniQuery(grid_view.DataController.DataSource.DataSet).SetOrderBy(CadenaOrderBy);

  Page := TfrxReportPage(frxReport1.Pages[1]);
  Page.Orientation := poPortrait;

  fxLinea.setBounds(0,HeaderBand.Height+10, 100, 1);
  fxlinea.Align := baWidth;

  if posHeader > tamPage then
  begin
    Page := TfrxReportPage(frxReport1.Pages[1]);
    Page.Orientation := poLandscape;
  end;

  frxReport1.PreviewOptions.MDIChild := False;
    frxReport1.PreviewOptions.Modal := True;
    frxReport1.PreviewOptions.ShowCaptions := False;
    frxReport1.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

  frxReport1.ShowReport();

  frxDBDataset1.Destroy;
  frxReport1.Destroy;
end;

procedure generar_reporte_grid_detalles(grid_view:TcxGridDBTableView;zDatos:TUniquery;Titulo, CampoRelacion :String);
var
  frxReport1:TfrxReport;
  frxDBDataset1, frxDBDataset2 : TfrxDBDataset;
  DataPage: TfrxDataPage;
  Page: TfrxReportPage;
  Band: TfrxBand;
  DataBand: TfrxMasterData;
  HeaderBand: TfrxHeader;
  Memo, MemoLabel: TfrxMemoView;
  i, g: Integer;
  mData: TfrxMemoView;
  posHeader, widthDet: extended;
  tamPage: extended;
  fxLinea: TfrxLineView;
  maximaAltura: Extended;
  tam_col: Extended;
  GroupHeaderBand: TfrxGroupHeader;
  GroupFooterBand: TfrxGroupFooter;
  MemoGroup: TfrxMemoView;
  TopTotal, HeightTotal:Extended;
  orden,CadenaOrderBy : String;
  o, v: Integer;
  Detalles: TfrxDetailData;
begin
  //Llamar Reporte General
  frxReport1:= TfrxReport.Create(nil);
  frxDBDataset1 := TfrxDBDataset.Create(nil);
  frxDBDataSet1.Name := 'frxDBDataSet1';
  frxDBDataSet1.UserName := 'frxDBDataSet1';
  frxDBDataSet1.DataSet := grid_view.DataController.DataSource.DataSet;

  frxDBDataset2 := TfrxDBDataset.Create(nil);
  frxDBDataSet2.Name := 'frxDBDataSet2';
  frxDBDataSet2.UserName := 'frxDBDataSet2';
  frxDBDataSet2.DataSet := zDatos;

  frxReport1.Clear;
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Reportes\ReporteGeneral.fr3');
  frxDBDataset1.Clear;
  { campos del zdatos }
  for I := 0 to grid_view.DataController.DataSource.DataSet.FieldCount-1 do
  begin
    frxDBDataset1.FieldAliases.AddPair(grid_view.DataController.DataSource.DataSet.Fields.Fields[i].FieldName,grid_view.DataController.DataSource.DataSet.Fields.Fields[i].FieldName);
  end;

  frxDBDataset2.Clear;
  { campos del zdatos }
  for I := 0 to zDatos.FieldCount-1 do
  begin
    frxDBDataset2.FieldAliases.AddPair(zDatos.Fields.Fields[i].FieldName,zDatos.Fields.Fields[i].FieldName);
  end;


  {Titulo del reporte}
  mData := frxReport1.FindComponent('rTitulo')  as TfrxMemoView;
  mData.Text := Titulo;

  { datos en reporte }
  frxReport1.DataSets.Add(frxDBDataSet1);
  frxReport1.DataSets.Add(frxDBDataSet2);


  HeaderBand := TfrxHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
  HeaderBand.CreateUniqueName;

  HeaderBand.Top := 500;
  TopTotal := HeaderBand.Top;

  HeaderBand.Height := 25;
  HeightTotal := TopTotal + HeaderBand.Height;

  HeaderBand.Stretched := True;

  fxLinea := frxreport1.FindComponent('lineainferior') as  TfrxLineView;
  fxLinea.Parent := HeaderBand;
  fxLinea.Height := 1;
  fxLinea.setBounds(0,20, 100, 1);
  fxLinea.Align := baWidth;

  posHeader := 0;
  Page := TfrxReportPage(frxReport1.Pages[1]);
  page.PaperSize := DMPAPER_LETTER;
  tamPage := page.PaperWidth * 3.77953;
  maximaAltura := 30;
  {Encabezado de columnas}
  v := 0;
  for i:=0 to  grid_view.ColumnCount-1 do
  begin
    if grid_view.Columns[i].Visible then
    begin
      tam_col := grid_view.Columns[i].Width;
      Memo := TfrxMemoView.Create(HeaderBand);
      Memo.CreateUniqueName;
      Memo.Text := UPPERCASE(grid_view.Columns[i].Caption);
      memo.Height := 25;
      Memo.SetBounds(posHeader-1, 2, tam_col, memo.Height);
      Memo.Align := baLeft;
      Memo.Font.Name := 'Arial';
      Memo.Font.Color := $005E0100;
      Memo.Font.Size := 9;
      Memo.StretchMode := smActualHeight;
      posHeader := posheader + tam_col;
      inc(v);
    end;
  end;

  {Columnas de agrupacion de reporte}
  for g := 0 to grid_view.GroupedColumnCount-1 do
  begin
  {GroupHeader}
    GroupHeaderBand := TfrxGroupHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupHeaderBand.CreateUniqueName;
    GroupHeaderBand.Top := HeightTotal;
    HeightTotal := HeightTotal + 25;
    GroupHeaderBand.Height := 25;
    GroupHeaderBand.Condition := frxDBDataSet1.UserName +'."'+grid_view.GroupedItems[g].DataBinding.FilterFieldName+'"';

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := grid_view.GroupedItems[g].Caption+': ['+frxDBDataSet1.UserName +'."'+grid_view.GroupedItems[g].DataBinding.FilterFieldName+'"]';
    MemoGroup.StretchMode := smMaxHeight;
    if g = 0 then
      MemoGroup.Color := $00E0E0E0
    else if g = 1 then
      MemoGroup.Color := $00B1B1B1
    else
      MemoGroup.Color := $00D7D6D0;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Align := baWidth;
    MemoGroup.Font.Name := 'Arial';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;


    //Generar Cadena para ordenamiento de datos.
    if grid_view.GroupedItems[g].SortOrder = soAscending then
       orden := 'asc'
    else
      orden := 'desc';

    CadenaOrderBy := CadenaOrderBy + grid_view.GroupedItems[g].DataBinding.FilterFieldName+' '+orden+',';

  end;

  { masterdata }
  DataBand := TfrxMasterData.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
  DataBand.CreateUniqueName;
  DataBand.DataSet := frxDBDataSet1;
  DataBand.Top := HeightTotal;
  DataBand.Height := maximaAltura;
  HeightTotal := HeightTotal + maximaAltura;
  posHeader := 0;
  for i:=0 to  grid_view.ColumnCount-1 do
  begin
    if grid_view.Columns[i].Visible then
    begin
      tam_col := grid_view.Columns[i].Width;
      Memo := TfrxMemoView.Create(DataBand);
      Memo.CreateUniqueName;
      Memo.DataSet := frxDBDataSet1;
      if grid_view.Columns[i].DataBinding.FieldName <> '' then
        Memo.DataField := grid_view.Columns[i].DataBinding.FieldName;
      memo.StretchMode := smMaxHeight;
      if maximaAltura < memo.Height then
        maximaAltura := memo.Height;
      Memo.SetBounds(posHeader-1, 0, tam_Col, memo.Height);
      memo.StretchMode := smMaxHeight;
      Memo.Font.Name := 'Arial';
      Memo.Font.Size := 9;
      Memo.Frame.Typ := [ftTop,ftBottom];
      Memo.Frame.BottomLine.Style:=fsSolid;
      //Tag 7 para jsutificar texto
      if grid_view.Columns[i].Tag = 7 then
        Memo.HAlign := haBlock
      else
        Memo.HAlign := haLeft;
      //Tag 8 para formato en moneda
      if grid_view.Columns[i].Tag = 8 then
      begin
        Memo.DisplayFormat.FormatStr:= '%2.2m';
        Memo.DisplayFormat.Kind := fkNumeric;
      end else
      begin
        Memo.DisplayFormat.FormatStr:= '';
        Memo.DisplayFormat.Kind := fkText;
      end;

      //Memo.HAlign := haLeft;
      Memo.Color := $00F2F2F2;
      posHeader := posHeader + tam_col;

      //Cadena para aplicar ordenamiento
      if grid_view.Columns[i].SortOrder = soAscending then
         orden := 'asc'
      else
        orden := 'desc';

      CadenaOrderBy := CadenaOrderBy + grid_view.Columns[i].DataBinding.FieldName+' '+orden+',';

    end;
  end;

  DataBand.Height := maximaAltura;
  DataBand.Stretched := True;

  {Detalles de }
    {Header de Detalles}
    widthDet := posHeader / 4;
    GroupHeaderBand := TfrxGroupHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupHeaderBand.CreateUniqueName;
    GroupHeaderBand.Top := HeightTotal;
    HeightTotal := HeightTotal + 25;
    GroupHeaderBand.Height := 25;

    GroupHeaderBand.Condition := frxDBDataSet1.UserName +'."'+CampoRelacion+'"';

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Código';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(1-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Material';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Medida';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet+widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Cantidad';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet+widthDet+widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


  Detalles := TfrxDetailData.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
  Detalles.CreateUniqueName;
  Detalles.DataSet := frxDBDataSet2;
  Detalles.Filter := '<'+frxDBDataSet2.UserName +'."'+CampoRelacion+'">=<'+frxDBDataSet1.UserName +'."'+CampoRelacion+'">';
  Detalles.Top := HeightTotal;
  Detalles.Height := maximaAltura;
  Detalles.Stretched := True;
  HeightTotal := HeightTotal + maximaAltura;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."DetCodigo"]';
      Memo.SetBounds(1-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."DetMaterial"]';
      Memo.HAlign := haBlock;
      Memo.SetBounds(widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."DetMedida"]';
      Memo.SetBounds(widthDet+widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;


      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."DetCantidad"]';
      Memo.SetBounds(widthDet+widthDet+widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

    //  posHeader := posHeader + tam_col;


  GroupFooterBand := TfrxGroupFooter.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
  GroupFooterBand.CreateUniqueName;
  GroupFooterBand.Top := HeightTotal + 0;
  GroupFooterBand.Height := 0;


  {GroupFooter}
  for g := 0 to grid_view.GroupedColumnCount-1 do
  begin
    GroupFooterBand := TfrxGroupFooter.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupFooterBand.CreateUniqueName;
    GroupFooterBand.Top := HeightTotal + 0;
    GroupFooterBand.Height := 0;
  end;


  CadenaOrderBy := Copy (CadenaOrderBy, 0, Length(CadenaOrderBy)-1);

  TUniQuery(grid_view.DataController.DataSource.DataSet).SetOrderBy(CadenaOrderBy);

  Page := TfrxReportPage(frxReport1.Pages[1]);
  Page.Orientation := poPortrait;

  fxLinea.setBounds(0,HeaderBand.Height+10, 100, 1);
  fxlinea.Align := baWidth;

  if posHeader > tamPage then
  begin
    Page := TfrxReportPage(frxReport1.Pages[1]);
    Page.Orientation := poLandscape;
  end;

  frxReport1.ShowReport();

  frxDBDataset2.Destroy;
  frxDBDataset1.Destroy;
  frxReport1.Destroy;
end;

//Reporte de materiales Detalles
procedure generar_reporte_grid_MaterialDetalles(grid_view:TcxGridDBTableView;zDatos:TUniquery;Titulo, CampoRelacion :String; TipoDetalle, IdFiltro:Integer);
var
  frxReport1:TfrxReport;
  frxDBDataset1, frxDBDataset2 : TfrxDBDataset;
  DataPage: TfrxDataPage;
  Page: TfrxReportPage;
  Band: TfrxBand;
  DataBand: TfrxMasterData;
  HeaderBand: TfrxHeader;
  Memo, MemoLabel: TfrxMemoView;
  i, g: Integer;
  mData: TfrxMemoView;
  posHeader, widthDet: extended;
  tamPage: extended;
  fxLinea: TfrxLineView;
  maximaAltura: Extended;
  tam_col: Extended;
  GroupHeaderBand: TfrxGroupHeader;
  GroupFooterBand: TfrxGroupFooter;
  MemoGroup: TfrxMemoView;
  TopTotal, HeightTotal:Extended;
  orden,CadenaOrderBy : String;
  o, v: Integer;
  Detalles: TfrxDetailData;
  mExistencia : TdxMemData;
begin
  //Llamar Reporte General
  frxReport1:= TfrxReport.Create(nil);
  frxDBDataset1 := TfrxDBDataset.Create(nil);
  frxDBDataSet1.Name := 'frxDBDataSet1';
  frxDBDataSet1.UserName := 'frxDBDataSet1';
  frxDBDataSet1.DataSet := grid_view.DataController.DataSource.DataSet;

  frxDBDataset2 := TfrxDBDataset.Create(nil);
  frxDBDataSet2.Name := 'frxDBDataSet2';
  frxDBDataSet2.UserName := 'frxDBDataSet2';
  frxDBDataSet2.DataSet := zDatos;

  frxReport1.Clear;
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Reportes\ReporteGeneral.fr3');
  frxDBDataset1.Clear;

  mExistencia := TdxMemData.Create(nil);

  { campos del zdatos }
  for I := 0 to grid_view.DataController.DataSource.DataSet.FieldCount-1 do
  begin
    frxDBDataset1.FieldAliases.AddPair(grid_view.DataController.DataSource.DataSet.Fields.Fields[i].FieldName,grid_view.DataController.DataSource.DataSet.Fields.Fields[i].FieldName);
  end;

  frxDBDataset2.Clear;
  { campos del zdatos }
  for I := 0 to zDatos.FieldCount-1 do
  begin
    frxDBDataset2.FieldAliases.AddPair(zDatos.Fields.Fields[i].FieldName,zDatos.Fields.Fields[i].FieldName);
  end;


  {Titulo del reporte}
  mData := frxReport1.FindComponent('rTitulo')  as TfrxMemoView;
  mData.Text := Titulo;

  { datos en reporte }
  frxReport1.DataSets.Add(frxDBDataSet1);
  frxReport1.DataSets.Add(frxDBDataSet2);


  HeaderBand := TfrxHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
  HeaderBand.CreateUniqueName;

  HeaderBand.Top := 500;
  TopTotal := HeaderBand.Top;

  HeaderBand.Height := 25;
  HeightTotal := TopTotal + HeaderBand.Height;

  HeaderBand.Stretched := True;

  fxLinea := frxreport1.FindComponent('lineainferior') as  TfrxLineView;
  fxLinea.Parent := HeaderBand;
  fxLinea.Height := 1;
  fxLinea.setBounds(0,20, 100, 1);
  fxLinea.Align := baWidth;

  posHeader := 0;
  Page := TfrxReportPage(frxReport1.Pages[1]);
  page.PaperSize := DMPAPER_LETTER;
  tamPage := page.PaperWidth * 3.77953;
  maximaAltura := 30;
  {Encabezado de columnas}
  v := 0;
  for i:=0 to  grid_view.ColumnCount-1 do
  begin
    if grid_view.Columns[i].Visible then
    begin
      tam_col := grid_view.Columns[i].Width;
      Memo := TfrxMemoView.Create(HeaderBand);
      Memo.CreateUniqueName;
      Memo.Text := UPPERCASE(grid_view.Columns[i].Caption);
      memo.Height := 25;
      Memo.SetBounds(posHeader-1, 2, tam_col, memo.Height);
      Memo.Align := baLeft;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := $005E0100;
      Memo.Font.Size := 9;
      Memo.StretchMode := smActualHeight;
      posHeader := posheader + tam_col;
      inc(v);
    end;
  end;

  {Columnas de agrupacion de reporte}
  for g := 0 to grid_view.GroupedColumnCount-1 do
  begin
  {GroupHeader}
    GroupHeaderBand := TfrxGroupHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupHeaderBand.CreateUniqueName;
    GroupHeaderBand.Top := HeightTotal;
    HeightTotal := HeightTotal + 25;
    GroupHeaderBand.Height := 25;
    GroupHeaderBand.Condition := frxDBDataSet1.UserName +'."'+grid_view.GroupedItems[g].DataBinding.FilterFieldName+'"';

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := grid_view.GroupedItems[g].Caption+': ['+frxDBDataSet1.UserName +'."'+grid_view.GroupedItems[g].DataBinding.FilterFieldName+'"]';
    MemoGroup.StretchMode := smMaxHeight;
    if g = 0 then
      MemoGroup.Color := $00E0E0E0
    else if g = 1 then
      MemoGroup.Color := $00B1B1B1
    else
      MemoGroup.Color := $00D7D6D0;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Align := baWidth;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;


    //Generar Cadena para ordenamiento de datos.
    if grid_view.GroupedItems[g].SortOrder = soAscending then
       orden := 'asc'
    else
      orden := 'desc';

    CadenaOrderBy := CadenaOrderBy + grid_view.GroupedItems[g].DataBinding.FilterFieldName+' '+orden+',';

  end;

  { masterdata }
  DataBand := TfrxMasterData.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
  DataBand.CreateUniqueName;
  DataBand.DataSet := frxDBDataSet1;
  DataBand.Top := HeightTotal;
  DataBand.Height := maximaAltura;
  HeightTotal := HeightTotal + maximaAltura;
  posHeader := 0;
  for i:=0 to  grid_view.ColumnCount-1 do
  begin
    if grid_view.Columns[i].Visible then
    begin
      tam_col := grid_view.Columns[i].Width;
      Memo := TfrxMemoView.Create(DataBand);
      Memo.CreateUniqueName;
      Memo.DataSet := frxDBDataSet1;
      if grid_view.Columns[i].DataBinding.FieldName <> '' then
        Memo.DataField := grid_view.Columns[i].DataBinding.FieldName;
      memo.StretchMode := smMaxHeight;
      if maximaAltura < memo.Height then
        maximaAltura := memo.Height;
      Memo.SetBounds(posHeader-1, 0, tam_Col, memo.Height);
      memo.StretchMode := smMaxHeight;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.Frame.Typ := [ftTop,ftBottom];
      Memo.Frame.BottomLine.Style:=fsSolid;
      //Tag 7 para jsutificar texto
      if grid_view.Columns[i].Tag = 7 then
        Memo.HAlign := haBlock
      else
        Memo.HAlign := haLeft;
      //Tag 8 para formato en moneda
      if grid_view.Columns[i].Tag = 8 then
      begin
        Memo.DisplayFormat.FormatStr:= '%2.2m';
        Memo.DisplayFormat.Kind := fkNumeric;
      end else
      begin
        Memo.DisplayFormat.FormatStr:= '';
        Memo.DisplayFormat.Kind := fkText;
      end;


      //Memo.HAlign := haLeft;
      Memo.Color := $00F2F2F2;
      posHeader := posHeader + tam_col;

      //Cadena para aplicar ordenamiento
      if grid_view.Columns[i].SortOrder = soAscending then
         orden := 'asc'
      else
        orden := 'desc';

      CadenaOrderBy := CadenaOrderBy + grid_view.Columns[i].DataBinding.FieldName+' '+orden+',';

    end;
  end;

  DataBand.Height := maximaAltura;
  DataBand.Stretched := True;

  {Detalles de }
  if TipoDetalle = 2 then
  begin
    {$region 'Detalle de Precios'}
    {Header de Detalles}
    widthDet := posHeader / 4;
    GroupHeaderBand := TfrxGroupHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupHeaderBand.CreateUniqueName;
    GroupHeaderBand.Top := HeightTotal;
    HeightTotal := HeightTotal + 25;
    GroupHeaderBand.Height := 25;

    GroupHeaderBand.Condition := frxDBDataSet1.UserName +'."'+CampoRelacion+'"';

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Orden de Compra';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(1-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Precio';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Fecha';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet+widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Moneda';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet+widthDet+widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


    Detalles := TfrxDetailData.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    Detalles.CreateUniqueName;
    Detalles.DataSet := frxDBDataSet2;
    Detalles.Filter := '<'+frxDBDataSet2.UserName +'."'+CampoRelacion+'">=<'+frxDBDataSet1.UserName +'."'+CampoRelacion+'">';
    Detalles.Top := HeightTotal;
    Detalles.Height := maximaAltura;
    Detalles.Stretched := True;
    HeightTotal := HeightTotal + maximaAltura;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."Codigo"]';
      Memo.SetBounds(1-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."dCosto"]';
      Memo.HAlign := haBlock;
      Memo.SetBounds(widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;
      Memo.DisplayFormat.FormatStr:= '%2.2m';
      Memo.DisplayFormat.Kind := fkNumeric;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."dIdFecha"]';
      Memo.SetBounds(widthDet+widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;


      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."Moneda"]';
      Memo.SetBounds(widthDet+widthDet+widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

    //  posHeader := posHeader + tam_col;

    GroupFooterBand := TfrxGroupFooter.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupFooterBand.CreateUniqueName;
    GroupFooterBand.Top := HeightTotal + 0;
    GroupFooterBand.Height := 0;
  {$endregion}
  end else if TipoDetalle = 3 then
  begin
    {$region 'Detalle de Existencias'}
    zDatos.Active := False;

    with mExistencia do
    begin
      Active:=false;
        CreaCampoMemData(mExistencia,'IdInsumo', ftInteger, 0, True);
        CreaCampoMemData(mExistencia,'Almacen', ftString, 150, True);
        CreaCampoMemData(mExistencia,'Existencia', FtFloat, 0, True);
      Active:=True;
    end;

    AsignarSQL(zDatos,'almacen_existencia',pUpdate);
    grid_view.DataController.DataSource.DataSet.First;
    while not grid_view.DataController.DataSource.DataSet.Eof do
    begin
      grid_view.DataController.DataSource.DataSet.FieldByName('IdInsumo').AsInteger;

      FiltrarDataSet(zDatos,'IdInsumo, IdAlmacen',[grid_view.DataController.DataSource.DataSet.FieldByName('IdInsumo').AsString, IdFiltro]);
      zDatos.Open;
      zDatos.First;
      while not zDatos.Eof do
      begin
           mExistencia.Append;
           mExistencia.FieldByName('IdInsumo').AsInteger  := grid_view.DataController.DataSource.DataSet.FieldByName('IdInsumo').AsInteger;
           mExistencia.FieldByName('Almacen').AsString    := zDatos.FieldByName('Almacen').AsString;
           mExistencia.FieldByName('Existencia').AsFloat       := zDatos.FieldByName('dExistencia').AsFloat;
           mExistencia.Post;
        zDatos.Next;
      end;
      grid_view.DataController.DataSource.DataSet.Next;
    end;

    grid_view.DataController.DataSource.DataSet.First;
    frxDBDataSet2.DataSet := mExistencia;
    {Header de Detalles}
    widthDet := posHeader / 2;
    GroupHeaderBand := TfrxGroupHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupHeaderBand.CreateUniqueName;
    GroupHeaderBand.Top := HeightTotal;
    HeightTotal := HeightTotal + 25;
    GroupHeaderBand.Height := 25;

    GroupHeaderBand.Condition := frxDBDataSet1.UserName +'."'+CampoRelacion+'"';

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Almacen';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(1-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Existencia';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


    Detalles := TfrxDetailData.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    Detalles.CreateUniqueName;
    Detalles.DataSet := frxDBDataSet2;
    Detalles.Filter := '<'+frxDBDataSet2.UserName +'."'+CampoRelacion+'">=<'+frxDBDataSet1.UserName +'."'+CampoRelacion+'">';
    Detalles.Top := HeightTotal;
    Detalles.Height := maximaAltura;
    Detalles.Stretched := True;
    HeightTotal := HeightTotal + maximaAltura;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."Almacen"]';
      Memo.SetBounds(1-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."Existencia"]';
      Memo.HAlign := haBlock;
      Memo.SetBounds(widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

    GroupFooterBand := TfrxGroupFooter.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupFooterBand.CreateUniqueName;
    GroupFooterBand.Top := HeightTotal + 0;
    GroupFooterBand.Height := 0;
  {$endregion}
  end else if TipoDetalle = 4 then
  begin
    {$region 'Detalle de Movimientos'}
    {Header de Detalles}
    widthDet := posHeader / 4;
    GroupHeaderBand := TfrxGroupHeader.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupHeaderBand.CreateUniqueName;
    GroupHeaderBand.Top := HeightTotal;
    HeightTotal := HeightTotal + 25;
    GroupHeaderBand.Height := 25;

    GroupHeaderBand.Condition := frxDBDataSet1.UserName +'."'+CampoRelacion+'"';

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Fecha';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(1-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Folio';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Tipo Movimiento';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet+widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];

    MemoGroup := TfrxMemoView.Create(GroupHeaderBand);
    MemoGroup.CreateUniqueName;
    MemoGroup.Text := 'Cantidad';
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Height := GroupHeaderBand.Height;
    MemoGroup.Font.Name := 'Roboto';
    MemoGroup.Font.Size := 10;
    MemoGroup.HAlign := haLeft;
    MemoGroup.SetBounds(widthDet+widthDet+widthDet-1, 0, widthDet, MemoGroup.Height);
    MemoGroup.StretchMode := smMaxHeight;
    MemoGroup.Font.Style:=[fsBold];


    Detalles := TfrxDetailData.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    Detalles.CreateUniqueName;
    Detalles.DataSet := frxDBDataSet2;
    Detalles.Filter := '<'+frxDBDataSet2.UserName +'."'+CampoRelacion+'">=<'+frxDBDataSet1.UserName +'."'+CampoRelacion+'">';
    Detalles.Top := HeightTotal;
    Detalles.Height := maximaAltura;
    Detalles.Stretched := True;
    HeightTotal := HeightTotal + maximaAltura;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."FechaMov"]';
      Memo.SetBounds(1-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."Folio"]';
      Memo.HAlign := haBlock;
      Memo.SetBounds(widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."Tipo"]';
      Memo.SetBounds(widthDet+widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;


      Memo := TfrxMemoView.Create(Detalles);
      Memo.CreateUniqueName;
      Memo.Font.Name := 'Roboto';
      Memo.Font.Size := 9;
      Memo.HAlign := haLeft;
      Memo.Text := '['+frxDBDataSet2.UserName +'."Cantidad"]';
      Memo.SetBounds(widthDet+widthDet+widthDet-1, 0, widthDet, Memo.Height);
      Memo.StretchMode := smMaxHeight;

    //  posHeader := posHeader + tam_col;

    GroupFooterBand := TfrxGroupFooter.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupFooterBand.CreateUniqueName;
    GroupFooterBand.Top := HeightTotal + 0;
    GroupFooterBand.Height := 0;
  {$endregion}
  end;
  {GroupFooter}
  for g := 0 to grid_view.GroupedColumnCount-1 do
  begin
    GroupFooterBand := TfrxGroupFooter.Create(frxReport1.Pages[frxReport1.PagesCount-1].Page);
    GroupFooterBand.CreateUniqueName;
    GroupFooterBand.Top := HeightTotal + 0;
    GroupFooterBand.Height := 0;
  end;


  CadenaOrderBy := Copy (CadenaOrderBy, 0, Length(CadenaOrderBy)-1);

  TUniQuery(grid_view.DataController.DataSource.DataSet).SetOrderBy(CadenaOrderBy);

  Page := TfrxReportPage(frxReport1.Pages[1]);
  Page.Orientation := poPortrait;

  fxLinea.setBounds(0,HeaderBand.Height+10, 100, 1);
  fxlinea.Align := baWidth;

  if posHeader > tamPage then
  begin
    Page := TfrxReportPage(frxReport1.Pages[1]);
    Page.Orientation := poLandscape;
  end;

  frxReport1.ShowReport();

  frxDBDataset2.Destroy;
  frxDBDataset1.Destroy;
  mExistencia.Destroy;
  frxReport1.Destroy;
end;


end.
