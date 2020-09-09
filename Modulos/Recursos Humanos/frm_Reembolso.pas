unit frm_Reembolso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, frm_barraH1, cxControls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxSplitter, cxContainer, dxLayoutContainer, dxLayoutControl,
  cxProgressBar, cxLabel, frm_barraH2, MemDS, DBAccess, Uni, cxCalendar,
  cxCurrencyEdit, cxImageComboBox, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDropDownEdit, cxDBEdit, cxMaskEdit, cxTextEdit, cxMemo, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,ShellAPI;

type
  TFrmReembolso = class(TForm)
    PanelCentral: TPanel;
    PanelLateral: TPanel;
    cxSplitter1: TcxSplitter;
    PanelDatos: TPanel;
    PanelMenu: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    zReembolso: TUniQuery;
    dsReembolso: TDataSource;
    zPersonal: TUniQuery;
    dsPersonal: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    ColMes: TcxGridDBColumn;
    ColNota: TcxGridDBColumn;
    Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PanelBotones: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLabel1: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    zReembolsoDetalle: TUniQuery;
    dsReembolsoDetalle: TDataSource;
    dxLayoutControl5: TdxLayoutControl;
    mmJustificacion: TcxDBMemo;
    cbFechaI: TcxDBDateEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControl1: TdxLayoutControl;
    edtFecha: TcxDBDateEdit;
    btnCargarXML: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    Panel6: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    edtRFC: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtRS: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtMontoDetalle: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edtTotal: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cbPersonal: TcxDBLookupComboBox;
    dxLayoutItem15: TdxLayoutItem;
    cbdias: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    zEstados: TUniQuery;
    dsEstados: TDataSource;
    dsDoctoXML: TDataSource;
    DoctoXML: TUniQuery;
    dlgPDF: TFileOpenDialog;
    XML: TXMLDocument;
    dlgSavePDF: TSaveDialog;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    edtFolio: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtFechaF: TcxDBDateEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cbCiudadO: TcxDBLookupComboBox;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cbCiudadD: TcxDBLookupComboBox;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    zCiudad: TUniQuery;
    dsCiudad: TDataSource;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cbPolitica: TcxComboBox;
    dxLayoutItem21: TdxLayoutItem;
    colPendiente: TcxGridDBColumn;
    cbConcepto: TcxDBComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    zSubRembolso: TUniQuery;
    dsSubReembolso: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure btnCargarXMLClick(Sender: TObject);
    procedure edtMontoExit(Sender: TObject);
    procedure cbdiasExit(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnExportaClick(Sender: TObject);
    procedure edtFechaFExit(Sender: TObject);
    procedure cbFechaIExit(Sender: TObject);
    procedure cbPoliticaExit(Sender: TObject);
    procedure mmJustificacionPropertiesChange(Sender: TObject);
    procedure edtFechaExit(Sender: TObject);
    procedure cbPoliticaPropertiesChange(Sender: TObject);
    procedure cbPersonalPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReembolso: TFrmReembolso;

implementation
  uses UnitGenerales,frm_connection,global,frm_VerPDF;
{$R *.dfm}

procedure TFrmReembolso.btnAddClick(Sender: TObject);
begin
  pnlBtn2.Visible:=True;
  PanelDatos.Visible:=True;
  zReembolso.Append;
  zReembolso.FieldByName('Folio').AsString := autoFolio(zReembolso, 'rh_reembolso');
  zReembolso.fieldByName('FechaInicio').Value:=now;
  zReembolso.fieldByName('FechaFinal').Value:=now;
  cbPolitica.ItemIndex:=-1;
end;

procedure TFrmReembolso.btnCancelClick(Sender: TObject);
begin
PanelDatos.Visible:=False;
pnlBtn2.Visible:=False;
zReembolso.Cancel;
end;

procedure TFrmReembolso.btnCargarXMLClick(Sender: TObject);
var
  Total,res: Double;
  BlobStream : TStream;
  FileStream : TFileStream;
  zUUID : TUniquery;
  Ext, sArchivo : string;
  Archivo, UUID   : string;
begin
  try
    Total:=doctoXML.FieldByName('Monto').AsFloat;
    dlgPDF.FileName := '';
    dlgPDF.FileTypes.Add.FileMask:='*.pdf;*.xml';
    dlgPDF.FileTypes.Add.FileMask:='*.xml';
    dlgPDF.FileTypes.Add.FileMask:='*.pdf';
    if not dlgPDF.Execute() then
      exit;

    Archivo := dlgPDF.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) and ( Ext <> '.XML' ) and ( Ext <> '.xml' ) then
      raise exception.Create('El archivo no es valido');

    if ( Ext = '.XML' ) or ( Ext = '.xml' ) then
    begin

      UUID :=  TraerUUID_XML(Archivo,XML);
      zUUID := TUniquery.Create(nil);
      zUUID.Connection := connection.Uconnection;
      zUUID.Active:= False;
      zUUID.SQL.Text := 'Select UUID_XML from rh_reembolso_detalle where UUID_XML=:UUID';
      zUUID.ParamByName('UUID').AsString := UUID;
      zUUID.Open;


        if zUUID.RecordCount>0 then
        begin
          MessageDlg('XML ya existe', mtinformation, [mbOk], 0);
          exit;
        end
        else
          zReembolsoDetalle.FieldByName('Monto').AsFloat:=TraerTotalXML(Archivo,XML);
          zReembolsoDetalle.FieldByName('RFC').AsString:=TraerRFC_XML(Archivo,XML);
          zReembolsoDetalle.FieldByName('RazonSocial').AsString:=TraerRS(Archivo,XML);
        doctoXML.FieldByName('UUID_XML').AsString := UUID;
        edtRFC.Enabled:=False;
        edtRS.Enabled:=False;
        edtMontoDetalle.Enabled:=False;
    end
    else
    begin
      if ( zReembolsoDetalle.FieldByName('Concepto').AsString = 'Peaje') or
      (zReembolsoDetalle.FieldByName('Concepto').AsString = 'Transporte')  then
      begin
        edtRFC.Enabled:=True;
        edtRS.Enabled:=True;
        edtMontoDetalle.Enabled:=True;
        doctoXML.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
        TBlobField(doctoXML.FieldByName('DocumentoDigital')).LoadfromFile(archivo);
      end
      else
      begin
        MessageDlg('PDF solo aplica para peaje y transporte', mtinformation, [mbOk], 0);
      end;
    end;


  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmReembolso.btnDetalleClick(Sender: TObject);
begin
  PanelLateral.Visible := not PanelLateral.Visible;
end;

procedure TFrmReembolso.btnEditClick(Sender: TObject);
begin
PanelDatos.Visible:=True;
pnlBtn2.Visible:=True;
zReembolso.Edit;
edtTotal.Enabled:=False;
end;

procedure TFrmReembolso.btnExportaClick(Sender: TObject);
begin
 ExportarToExcel(cxGrid1)
end;

procedure TFrmReembolso.btnPostClick(Sender: TObject);
begin
  if mmJustificacion.Text <> '' then
  begin
    if (cbCiudadO.Text <> '') and (cbCiudadD.Text <> '') then
    begin
      if zReembolso.State = dsInsert then
       begin
        zReembolso.FieldByName('Pendiente').AsFloat:=zReembolso.FieldByName('Total').AsFloat;
       end;
      zReembolso.Post;
      zReembolso.Refresh;
      btnCancelClick(Sender);
    end
    else
    begin
      MessageDlg('Necesita elejir ciudad destino y origen para guardar', mtinformation, [mbOk], 0);
    end;
  end
  else
  MessageDlg('Necesita escribir la justificación para guardar', mtinformation, [mbOk], 0);
end;

procedure TFrmReembolso.cxButton7Click(Sender: TObject);
begin
  if zReembolsoDetalle.State = dsInsert then
  begin
   zReembolso.Edit;
   zReembolso.FieldByName('Pendiente').AsFloat:=zReembolso.FieldByName('Pendiente').AsFloat-zReembolsoDetalle.FieldByName('Monto').AsFloat;
   zReembolso.Post;
  end;

zReembolsoDetalle.Post;
DoctoXML.Post;
zReembolso.Refresh;
cxButton8Click(Sender);
end;

procedure TFrmReembolso.cxButton8Click(Sender: TObject);
begin
Panel6.Visible:=False;
dxLayoutControl1.Visible:=False;
zReembolsoDetalle.Cancel;
DoctoXML.Cancel;
end;

procedure TFrmReembolso.edtFechaExit(Sender: TObject);
begin

  if (zReembolsoDetalle.FieldByName('Fecha').AsDateTime <= zReembolso.FieldByName('final').AsDateTime) and
  (zReembolsoDetalle.FieldByName('Fecha').AsDateTime>=zReembolso.FieldByName('FechaInicio').AsDateTime) then
  begin
  //si entra
  end
  else
  begin
     MessageDlg('Fecha desbe de estar dentro del rango asignado', mtinformation, [mbOk], 0);
   edtFecha.SetFocus;
  end;
end;

procedure TFrmReembolso.edtFechaFExit(Sender: TObject);
var
date:String;
con:double;
begin
 Date:=FloatToStr(edtFechaF.Date-cbFechaI.Date);
 con := 1+(StrToFloat(Date));
 zReembolso.FieldByName('Dias').AsString:= FloatToStr(con);
end;

procedure TFrmReembolso.edtMontoExit(Sender: TObject);
begin
 zReembolso.FieldByName('Total').AsInteger := zReembolso.FieldByName('Dias').AsInteger*zReembolso.FieldByName('Monto').AsInteger;
end;

procedure TFrmReembolso.cbdiasExit(Sender: TObject);
begin
 zReembolso.FieldByName('Total').AsInteger := zReembolso.FieldByName('Dias').AsInteger*zReembolso.FieldByName('Monto').AsInteger;
end;

procedure TFrmReembolso.cbFechaIExit(Sender: TObject);
var
date:String;
con:double;
begin
  if cbDias.Text <> '' then
  begin
     Date:=FloatToStr(edtFechaF.Date-cbFechaI.Date);
     con := 1+(StrToFloat(Date));
     zReembolso.FieldByName('Dias').AsString:= FloatToStr(con);
  end;
end;

procedure TFrmReembolso.cbPersonalPropertiesChange(Sender: TObject);
begin
  if cbPersonal.EditValue = '111' then
    edtTotal.Enabled := True
  else
    edtTotal.Enabled := false;

end;

procedure TFrmReembolso.cbPoliticaExit(Sender: TObject);
begin
  if cbPolitica.ItemIndex = 0 then
  begin
   zReembolso.FieldByName('Monto').AsInteger:=500;
   zReembolso.FieldByName('Total').AsInteger := zReembolso.FieldByName('Dias').AsInteger*zReembolso.FieldByName('Monto').AsInteger;
  end
  else
  begin
   zReembolso.FieldByName('Monto').AsInteger:=650;
   zReembolso.FieldByName('Total').AsInteger := zReembolso.FieldByName('Dias').AsInteger*zReembolso.FieldByName('Monto').AsInteger;
  end;
end;

procedure TFrmReembolso.cbPoliticaPropertiesChange(Sender: TObject);
begin
cbPoliticaExit(Sender);
end;

procedure TFrmReembolso.cxEditaDetalleClick(Sender: TObject);
begin
  if zReembolso.FieldByName('pagado').AsInteger = 0 then
  begin
    MessageDlg('Ya cumplio con los reembolso, no puede editar', mtinformation, [mbOk], 0);
    exit;
  end;
    AsignarSQL(DoctoXML,'rh_reembolso_doctoVP',pUpdate);
    FiltrarDataSet(DoctoXML, 'IdReembolsoDet',[zReembolsoDetalle.FieldByName('IdReembolsoDet').AsInteger]);
    DoctoXML.Open;

    DoctoXML.Edit;
  Panel6.Visible:=True;
  dxLayoutControl1.Visible:=True;
  zReembolsoDetalle.Edit;
  edtFecha.Enabled:=False;
end;

procedure TFrmReembolso.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 zReembolsoDetalle.Active:=False;
 zReembolsoDetalle.ParamByName('IdReembolso').AsInteger:= zReembolso.FieldByName('IdReembolso').AsInteger;
 zReembolsoDetalle.Open;
end;

procedure TFrmReembolso.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var Ext:String;
begin
  if zreembolsoDetalle.RecordCount > 0 then
  begin
    AsignarSQL(DoctoXML,'rh_reembolso_doctoVP',pUpdate);
    FiltrarDataSet(DoctoXML, 'IdReembolsoDet',[zreembolsoDetalle.FieldByName('IdReembolsoDet').AsInteger]);
    DoctoXML.Open;
    if not DoctoXML.FieldByName('DocumentoDigital').IsNull then
    begin
      if not DoctoXML.FieldByName('NombreDocto').IsNull then
        global_Temp := DoctoXML.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'reembolso_sin_nombre'+'.pdf';

      TBlobField(DoctoXML.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );

      Ext := ExtractFileExt(global_Temp);
      if ( Ext = '.PDF' ) or ( Ext = '.pdf' )  then
      begin
        Application.CreateForm(TFrmVerPDF, FrmVerPDF);
        FrmVerPDF.Caption := global_Temp;
        FrmVerPDF.ShowModal;
      end
      else
      begin
        ShellExecute(frmReembolso.Handle,nil,PChar(ExtractFilePath(Application.ExeName)+global_Temp),'','',SW_SHOWNORMAL);
       // if FileExists(ExtractFilePath(Application.ExeName)+global_Temp) then
         // DeleteFile(ExtractFilePath(Application.ExeName)+global_Temp);
      end;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TFrmReembolso.cxNuevoDetalleClick(Sender: TObject);
begin
  if zReembolso.FieldByName('pagado').AsInteger = 0 then
  begin
    MessageDlg('Ya cumplio con los reembolso, no puede agregar mas', mtinformation, [mbOk], 0);
    exit;
  end;
  edtRFC.Enabled:=False;
  edtRS.Enabled:=False;
  edtMontoDetalle.Enabled:=False;
  AsignarSQL(DoctoXML,'rh_reembolso_doctoVP',pUpdate);
  //FiltrarDataSet(DoctoXML, 'IdReembolso',[Reembolso.FieldByName('IdReembolso').AsInteger])
  FiltrarDataSet(DoctoXML, 'IdReembolsoDet',[-9]);
  DoctoXML.Open;
  DoctoXML.Append;
  Panel6.Visible:=True;
  dxLayoutControl1.Visible:=True;
  edtFecha.Enabled:=True;
  zReembolsoDetalle.Append;
  zReembolsoDetalle.FieldByName('IdReembolso').AsInteger:=zReembolso.FieldByName('IdReembolso').AsInteger;
  zReembolsoDetalle.FieldByName('Fecha').Value:=now;
end;

procedure TFrmReembolso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
end;

procedure TFrmReembolso.FormShow(Sender: TObject);
begin
  zPersonal.Open;
  zReembolso.Open;
  zSubRembolso.Open;
  zSubRembolso.RecordCount;

  AsignarSQL(zEstados,'master_estado',pUpdate);
  FiltrarDataSet(zEstados,'IdEstado,IdPais,Activo',['-1','71','Si']);
  zEstados.Open;
  AsignarSQL(zCiudad,'master_ciudad',pUpdate);
  FiltrarDataSet(zCiudad, 'IdEstado,IdCiudad,Activo',['-1','-1','-1']);
  zCiudad.Open;

end;

procedure TFrmReembolso.mmJustificacionPropertiesChange(Sender: TObject);
begin
  if  mmJustificacion.Text <> '' then
  Begin
   cbCiudadO.Enabled:=True;
   cbCiudadD.Enabled:=True;
  End
  else
  begin
   cbCiudadO.Enabled:=False;
   cbCiudadD.Enabled:=False;
  end;

end;

end.
