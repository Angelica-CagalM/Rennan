unit frm_Estatus_POEntradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, MemDS, DBAccess, Uni,
  cxContainer, cxLabel, frm_barraH1, cxSplitter, cxCalc, cxTrackBar,
  cxProgressBar, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,CxGridExportLink, ShellApi,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, frxClass, frxDBSet;

type
  TfrmEstatus_POEntradas = class(TForm)
    PanelCentral: TPanel;
    cxView_Requsicion: TcxGridDBTableView;
    cxGridRequiscionesLevel1: TcxGridLevel;
    cxGridRequisciones: TcxGrid;
    ColCodigoReq: TcxGridDBColumn;
    colIdMaterial: TcxGridDBColumn;
    colDescripcionMat: TcxGridDBColumn;
    ColUnidad: TcxGridDBColumn;
    anexo_ocompras: TUniQuery;
    dsCompras: TDataSource;
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    Panel1: TPanel;
    anexo_prequisicion: TUniQuery;
    dsRequisciones: TDataSource;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    cxView_RequsicionColumn3: TcxGridDBColumn;
    PanelOpciones: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCancelarMaterial: TcxButton;
    cxLimpiaFiltro: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxInicioRequerido: TcxDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxFiltroRequerido: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxView_RequsicionColumn4: TcxGridDBColumn;
    cxView_RequsicionColumn5: TcxGridDBColumn;
    cxView_RequsicionColumn6: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    cxFinRequerido: TcxDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxOpcionesFiltro: TcxComboBox;
    dxLayoutItem11: TdxLayoutItem;
    frxEntrada: TfrxReport;
    reporte: TUniQuery;
    frxSeguimientoReq: TfrxDBDataset;
    cxView_RequsicionColumn7: TcxGridDBColumn;
    cxView_RequsicionColumn8: TcxGridDBColumn;
    cxView_RequsicionColumn9: TcxGridDBColumn;
    cxView_RequsicionColumn12: TcxGridDBColumn;
    cxView_RequsicionColumn14: TcxGridDBColumn;
    cxView_RequsicionColumn17: TcxGridDBColumn;
    cxView_RequsicionColumn10: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxView_RequsicionCellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxView_RequsicionStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxView_RequsicionCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
//    procedure cxCancelarMaterialClick(Sender: TObject);
    procedure cxLimpiaFiltroClick(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure ValidacionUsuarios;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lExpandido : boolean;
  frmEstatus_POEntradas: TfrmEstatus_POEntradas;

implementation
  uses frm_connection, unitGenerales,global;
{$R *.dfm}

procedure TfrmEstatus_POEntradas.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := 'Partidas de Anexo';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGridRequisciones);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TfrmEstatus_POEntradas.btnPrinterClick(Sender: TObject);
 var
 listaProv : String;
begin
      AsignarSQL(Reporte,'anexo_prequisicion_upt',pUpdate);
      FiltrarDataSet(Reporte,'Contrato',[global_contrato]);
      Reporte.Open;

      Reporte.Filtered := False;
      if cxView_Requsicion.DataController.Filter.FilterText <> '' then
      begin
          if cxOpcionesFiltro.ItemIndex = 0 then
          begin
              Reporte.Filter   := cxView_Requsicion.DataController.Filter.FilterText ;
          end;
          if cxOpcionesFiltro.ItemIndex = 1 then
          begin
              Reporte.Filter   := cxView_Requsicion.DataController.Filter.FilterText + ' and (dFechaSolicitado >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaSolicitado<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
          if cxOpcionesFiltro.ItemIndex = 2 then
          begin
              Reporte.Filter   := cxView_Requsicion.DataController.Filter.FilterText + ' and (dFechaRequerido >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
          if cxOpcionesFiltro.ItemIndex = 3 then
          begin
              Reporte.Filter   := cxView_Requsicion.DataController.Filter.FilterText + ' and (FechaCompra >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaCompra<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
          if cxOpcionesFiltro.ItemIndex = 4 then
          begin
              Reporte.Filter   := cxView_Requsicion.DataController.Filter.FilterText + ' and (FechaEstimada >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaEstimada<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
          if cxOpcionesFiltro.ItemIndex = 5 then
          begin
              Reporte.Filter   := cxView_Requsicion.DataController.Filter.FilterText + ' and (FechaEntrega >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaEntrega<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
      end
      else
      begin
          if cxOpcionesFiltro.ItemIndex = 0 then
          begin
              Reporte.Filter   := cxView_Requsicion.DataController.Filter.FilterText ;
          end;
          if cxOpcionesFiltro.ItemIndex = 1 then
          begin
              Reporte.Filter   := ' (dFechaSolicitado >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaSolicitado<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
          if cxOpcionesFiltro.ItemIndex = 2 then
          begin
              Reporte.Filter   := ' (dFechaRequerido >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
          if cxOpcionesFiltro.ItemIndex = 3 then
          begin
              Reporte.Filter   :=  ' (FechaCompra >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaCompra<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
          if cxOpcionesFiltro.ItemIndex = 4 then
          begin
              Reporte.Filter   :=  ' (FechaEstimada >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaEstimada<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
          if cxOpcionesFiltro.ItemIndex = 5 then
          begin
              Reporte.Filter   :=  ' (FechaEntrega >='+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaEntrega<= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+')'
          end;
      end;
      Reporte.Filtered := True;

      frxSeguimientoReq.DataSet    := Reporte;
      frxSeguimientoReq.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxSeguimientoReq);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_COMP_ReqSeguimiento.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_ReqSeguimiento.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_ReqSeguimiento.fr3 no existe, notifique al administrador del sistema');
      frxentrada.ShowReport();


end;

procedure TfrmEstatus_POEntradas.btnRefreshClick(Sender: TObject);
begin
anexo_prequisicion.Refresh;
end;

procedure TfrmEstatus_POEntradas.cxLimpiaFiltroClick(Sender: TObject);
begin
   cxView_Requsicion.DataController.Filter.FilterText := '';
   cxView_Requsicion.DataController.Filter.Clear;
   anexo_prequisicion.Filtered := False;
   cxInicioRequerido.Style.Font.Color := clNone;
   cxInicioRequerido.Style.Font.Style := [];
   cxFinRequerido.Style.Font.Color := clNone;
   cxFinRequerido.Style.Font.Style := [];
   cxOpcionesFiltro.ItemIndex := 0;
end;

procedure TfrmEstatus_POEntradas.cxButton1Click(Sender: TObject);
begin
   if lExpandido then
   begin
      cxView_Requsicion.DataController.Groups.FullCollapse;
      lExpandido := False;
   end
   else
   begin
      cxView_Requsicion.DataController.Groups.FullExpand;
      lExpandido := True;
   end;
end;

procedure TfrmEstatus_POEntradas.ValidacionUsuarios;
begin

//      if ((global_usuario = 'carlos') or (global_usuario = 'CARLOS')) then
//      begin
//        anexo_prequisicion.Filter := ' sUsuarioCompra = '+QuotedStr('CARLOS ALFREDO SANCHEZ MENDEZ')+
//         'and Cantidad <>'+QuotedStr('100')+' and Estatus <>'+QuotedStr('CANCELADO')+
//         ' AND Estatus <> '+QuotedStr('RECHAZADO');
//      end
//       else if (global_usuario = 'LEYDI') OR (global_usuario = 'leydi') then begin
//         anexo_prequisicion.Filter := ' sUsuarioCompra = '+QuotedStr('LEYDI CAHUICH')+
//         'and Cantidad <>'+QuotedStr('100')+' and Estatus <>'+QuotedStr('CANCELADO')+
//         ' AND Estatus <> '+QuotedStr('RECHAZADO');
//       end
//         else if (global_usuario = 'JMALDONADO')or (global_usuario = 'jmaldonado') then begin
//            anexo_prequisicion.Filter := ' sUsuarioCompra = '+QuotedStr('JORGE ALBERTO MALDONADO NOTARIO')+
//         'and Cantidad <>'+QuotedStr('100')+' and Estatus <>'+QuotedStr('CANCELADO')+
//         ' AND Estatus <> '+QuotedStr('RECHAZADO');
//         end;

end;

//procedure TfrmEstatus_Requisiciones.cxCancelarMaterialClick(Sender: TObject);
//var
//    SavePlace, SavePlace2 : TBookMark;
//    indice, iGrid    : integer;
//    zActualiza : tUniquery;
//begin
//   if MessageDlg('Desea cancelar el material Requisitado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//   begin
//      iGrid     := 0;
//      indice := cxView_Requsicion.DataController.GetSelectedRowIndex(iGrid);
//
//      cxView_Requsicion.DataController.FocusedRowIndex := indice;
//
//      zActualiza:=tUniquery.create(nil);
//      zActualiza.Connection := Connection.uConnection;
//
//      with cxView_Requsicion.DataController.DataSource.DataSet do
//      for iGrid := 0 to cxView_Requsicion.DataController.GetSelectedCount - 1 do
//      begin
//          indice := cxView_Requsicion.DataController.GetSelectedRowIndex(iGrid);
//          cxView_Requsicion.DataController.FocusedRowIndex := indice;
//
//          zActualiza.SQL.Clear;
//          zActualiza.SQL.Add('update anexo_prequisicion set sEstado =:Estado where IdPRequisicion =:Id');
//          zActualiza.ParamByName('ID').AsInteger := cxView_Requsicion.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;;
//          zActualiza.ParamByName('Estado').AsString := 'CANCELADO';
//          zActualiza.ExecSQL;
//      end;
//
//      cxView_Requsicion.DataController.ClearSelection;
//
//      SavePlace := cxView_Requsicion.DataController.DataSource.DataSet.GetBookmark;
//
//      anexo_prequisicion.Refresh;
//      try
//         cxView_Requsicion.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
//      except
//         cxView_Requsicion.DataController.DataSet.FreeBookmark(SavePlace);
//      end;
//      zActualiza.Destroy;
//   end;
//end;

procedure TfrmEstatus_POEntradas.cxFiltroRequeridoClick(Sender: TObject);
begin
    if cxOpcionesFiltro.ItemIndex = 0 then
    begin
        anexo_prequisicion.Filtered := False;
        anexo_prequisicion.Filter   := ' Estatus <>'+QuotedStr('CANCELADO')+' AND Estatus <> '+QuotedStr('RECHAZADO');
        anexo_prequisicion.Filtered := True;
    end;
    if cxOpcionesFiltro.ItemIndex = 1 then
    begin
        anexo_prequisicion.Filtered := False;
        anexo_prequisicion.Filter   := ' Estatus <>'+QuotedStr('CANCELADO')+' AND Estatus <> '+QuotedStr('RECHAZADO')+'and'+
        ' dFechaSolicitado >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaSolicitado <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_prequisicion.Filtered := True;
    end;
    if cxOpcionesFiltro.ItemIndex = 2 then
    begin
        anexo_prequisicion.Filtered := False;
        anexo_prequisicion.Filter   :=  ' Estatus <>'+QuotedStr('CANCELADO')+' AND Estatus <> '+QuotedStr('RECHAZADO')+'and'+
        ' dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_prequisicion.Filtered := True;
    end;

    if cxOpcionesFiltro.ItemIndex = 3 then
    begin
        anexo_prequisicion.Filtered := False;
        anexo_prequisicion.Filter   :=' FechaCompra >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaCompra <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_prequisicion.Filtered := True;
    end;

    if cxOpcionesFiltro.ItemIndex = 4 then
    begin
        anexo_prequisicion.Filtered := False;
        anexo_prequisicion.Filter   := ' FechaEstimada >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaEstimada <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_prequisicion.Filtered := True;
    end;

    if cxOpcionesFiltro.ItemIndex = 5 then
    begin
        anexo_prequisicion.Filtered := False;
        anexo_prequisicion.Filter   := ' (FechaEntrega >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and FechaEntrega <= '+QuotedStr(FechaSQL(cxFinRequerido.Date))+' )';
        anexo_prequisicion.Filtered := True;
    end;

    cxInicioRequerido.Style.Font.Color := clBlue;
    cxInicioRequerido.Style.Font.Style := [fsBold];
    cxFinRequerido.Style.Font.Color := clBlue;
    cxFinRequerido.Style.Font.Style := [fsBold];
end;

procedure TfrmEstatus_POEntradas.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//  AsignarSQL(anexo_ocompras,'orden_compra',pUpdate);
//  FiltrarDataSet(anexo_ocompras,'Contrato,Folio,Insumo',[global_contrato,anexo_prequisicion.FieldByName('IFolioRequisicion').AsInteger,anexo_prequisicion.FieldByName('IdInsumo').AsInteger]);
//  anexo_ocompras.Open;
//  cxLeyenda2.Caption:=anexo_prequisicion.FieldByName('sNumFolio').AsString;
end;

procedure TfrmEstatus_POEntradas.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxView_Requsicion.OptionsView.CellAutoHeight then
       cxView_Requsicion.OptionsView.CellAutoHeight := False
    else
       cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TfrmEstatus_POEntradas.cxView_RequsicionStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var
     AColumn : TcxCustomGridTableItem;
begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sEstado');
    if VarToStr(ARecord.Values[AColumn.Index]) <> '' then
    begin
       if VarToStr(ARecord.Values[AColumn.Index]) = 'COMPRADO' then AStyle := connection.cxstylNiv1 ;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'CANCELADO' then AStyle := connection.cxstylNiv5 ;
    end;

end;

procedure TfrmEstatus_POEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(cxView_Requsicion,frmEstatus_POEntradas,1);
  action:=cafree;
end;

procedure TfrmEstatus_POEntradas.FormShow(Sender: TObject);
var
 temE:TUniQuery;
begin
  temE := TUniquery.create(nil);
  temE.Connection := Connection.uConnection;
  temE.Active:=False;
  temE.SQL.Text:='Select FK_Titulo from master_empresa';
  temE.Open;

  AsignarSQL(anexo_prequisicion,'anexo_ppedidos_entradas',pUpdate);
  if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
  FiltrarDataSet(anexo_prequisicion,'Folio',['-1'])
  else
  FiltrarDataSet(anexo_prequisicion,'contrato,Folio',[global_contrato, '-1']);
  anexo_prequisicion.Open;


//  anexo_prequisicion.Filtered := False;
////  if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
////    ValidacionUsuarios
////  else
//    anexo_prequisicion.Filter := ' Estatus <>'+QuotedStr('CANCELADO')+' AND Estatus <> '+QuotedStr('RECHAZADO');
//  anexo_prequisicion.Filtered := True;


  cxView_Requsicion.DataController.Groups.FullExpand;
  lExpandido := True;

  cxInicioRequerido.Date := Date;
  cxFinRequerido.Date    := Date;
  cxOpcionesFiltro.ItemIndex := 0;
  if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
  cxView_Requsicion.Columns[4].Visible:=true
  else
  cxView_Requsicion.Columns[4].Visible:=false;
  guardar_leer_grid(cxView_Requsicion,frmEstatus_POEntradas,0);

end;

procedure TfrmEstatus_POEntradas.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
begin
     if CompareText(VarName, 'FECHA_I') = 0 then
     begin
         Value := cxInicioRequerido.Date
     end;

     if CompareText(VarName, 'FECHA_F') = 0 then
     begin
         Value := cxFinRequerido.Date
     end;

     if CompareText(VarName, 'Filtro') = 0 then
     begin
         Value := cxOpcionesFiltro.Text;
     end;

end;

end.
