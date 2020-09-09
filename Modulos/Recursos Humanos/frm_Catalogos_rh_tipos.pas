unit frm_Catalogos_rh_tipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UnitExcepciones,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCalc, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutContainer, cxDropDownEdit, cxDBEdit,
  cxMaskEdit, cxTextEdit, dxLayoutControl,
  UnitValidaTexto, unitactivapop, dxSkinsdxNavBarPainter,
  dxSkinsdxNavBarAccordionViewPainter, dxNavBar, frm_barraH1, cxSplitter,
  frm_barraH2, dxNavBarCollns, dxNavBarBase, dxNavBarGroupItems, cxCheckBox,
  dxToggleSwitch, dxDBToggleSwitch, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,UnitGenerales, MemDS, DBAccess, Uni, cxLabel, cxImage,
  cxCalendar, dxLayoutControlAdapters, cxButtons, UnitReportes;

type
  TfrmCatalogosRHTipos = class(TForm)
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_catalogos_generales: TDataSource;
    Panel1: TPanel;
    pnl1: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxCampo3: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    panelOpciones: TPanel;
    dxNavBar1: TdxNavBar;
    panelBotones: TPanel;
    grid_catalogos: TcxGrid;
    cxViewCatalogos: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    dxCatalogoNav: TdxNavBarGroup;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Separator1: TdxNavBarSeparator;
    cxViewCatalogosColumn1: TcxGridDBColumn;
    cxViewCatalogosColumn2: TcxGridDBColumn;
    cxDescripcion: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxViewCatalogosColumn3: TcxGridDBColumn;
    dxUbicaciones: TdxNavBarGroup;
    dxNavBar1Item6: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    Panel2: TPanel;
    cxViewCatalogosColumn4: TcxGridDBColumn;
    cxViewCatalogosColumn5: TcxGridDBColumn;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutItem2: TdxLayoutItem;
    cxSubCatalogo: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    ds_subcatalogo: TDataSource;
    zqCatalogosGenerales: TUniQuery;
    dxMasters: TdxNavBarGroup;
    dxNavBar1Item8: TdxNavBarItem;
    dxNavBar1Item7: TdxNavBarItem;
    cxLeyenda: TcxLabel;
    cxDBImage1: TcxDBImage;
    dxLayoutItem3: TdxLayoutItem;
    cxViewCatalogosColumn6: TcxGridDBColumn;
    dxNavBar1Item9: TdxNavBarItem;
    dxNavBar1Item10: TdxNavBarItem;
    cxCampo4: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxSubCatalogo2: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    zqSubCatalogo2: TUniQuery;
    ds_subcatalogo2: TDataSource;
    dxNavBar1Item11: TdxNavBarItem;
    dxNavBar1Item12: TdxNavBarItem;
    dxNavBar1Item13: TdxNavBarItem;
    dxNavBar1Separator2: TdxNavBarSeparator;
    frmBarraH11: TfrmBarraH1;
    frmBarraH21: TfrmBarraH2;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    zqSubCatalogo: TUniQuery;
    dxNavBar1Item14: TdxNavBarItem;
    dxNavBar1Item15: TdxNavBarItem;
    dxNavBar1Item16: TdxNavBarItem;
    dxNavBar1Item17: TdxNavBarItem;
    dxLayoutItem7: TdxLayoutItem;
    cxCargarDocumento: TcxButton;
    dlgPDF: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    dxNavBar1Item18: TdxNavBarItem;
    cxSimbolo: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_pernoctanCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);

    //Eventos de focus entrar y salir de los componentes.
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure cxViewCatalogosDblClick(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dxNavBar1Item1Click(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dxNavBar1Item3Click(Sender: TObject);
    procedure dxNavBar1Item4Click(Sender: TObject);
    procedure dxNavBar1Item5Click(Sender: TObject);
    procedure dxNavBar1Item6Click(Sender: TObject);
    procedure dxNavBar1Item8Click(Sender: TObject);
    procedure dxNavBar1Item7Click(Sender: TObject);
    procedure cxDBImage1DblClick(Sender: TObject);
    procedure cxDBImage1Click(Sender: TObject);
    procedure dxCatalogoNavClick(Sender: TObject);
    procedure dxUbicacionesClick(Sender: TObject);
    procedure dxMastersClick(Sender: TObject);
    procedure dxNavBar1Item9Click(Sender: TObject);
    procedure dxNavBar1Item10Click(Sender: TObject);
    procedure dxNavBar1Item11Click(Sender: TObject);
    procedure dxNavBar1Item12Click(Sender: TObject);
    procedure dxNavBar1Item13Click(Sender: TObject);
    procedure frmBarraH11btnAddClick(Sender: TObject);
    procedure dxNavBar1Item14Click(Sender: TObject);
    procedure abrirdesdecaptura(Sender: TObject);
    procedure dxNavBar1Item15Click(Sender: TObject);
    procedure dxNavBar1Item16Click(Sender: TObject);
    procedure dxNavBar1Item17Click(Sender: TObject);
    procedure cxCargarDocumentoClick(Sender: TObject);
    procedure cxViewCatalogosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure dxNavBar1Item18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogosRHTipos: TfrmCatalogosRHTipos;
  sOpcion : string;
  seleccion: string;
  titulo: string;
  btnPermisos: String;
  activo : Integer = -1;
implementation

uses
 frm_Presupuesto,Ufrm_Loading, frm_proveedores, frm_materiales,
 frm_materiales_CMMI,
 frm_catalogo_empleados, frm_VerPDF, frm_clientes,frm_Catalogo_Empleados_SSI;

{$R *.dfm}

procedure TfrmCatalogosRHTipos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCatalogosRHTipos.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmCatalogosRHTipos.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmCatalogosRHTipos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zqCatalogosGenerales.Cancel;

  if ((global_frmActivo = 'frmProveedores') and (activo = 14)) then
    frmProveedores.Codigo_postal.Refresh;

  if ((global_frmActivo = 'frmProveedores') and (activo = 15)) then
    frmProveedores.catalog_docto.Refresh;

  if ((global_frmActivo = 'frmProveedores') and (activo = 6)) then
    frmProveedores.zqCiudades.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 15)) then
    frmMateriales.zCatalogo_docto.Refresh;

    if ((global_frmActivo = 'frmMateriales_CMMI') and (activo = 15)) then
    frmMateriales_CMMI.zCatalogo_docto.Refresh;

    if ((connection.uContrato.FieldByName('FK_Titulo').AsString <> 'SUBSEA 7') or
       (connection.uContrato.FieldByName('FK_Titulo').AsString <> 'CMMI')) then begin

           if ((global_frmActivo = 'frmCatalogoEmpleados') and (activo = 15)) then
            frmCatalogoEmpleadosSSI.documentos.Refresh;

           if (((global_frmActivo = 'frmCatalogoEmpleados') and (Activo = 11)) or (global_frmActivo = 'frmCatalogoEmpleadosSSI') or (assigned(frmCatalogoEmpleadosSSI)))then begin
              frmCatalogoEmpleadosSSI.puesto.Refresh;
              frmCatalogoEmpleadosSSI.puesto_empleado.Refresh;
            end;

            if ((global_frmActivo = 'frmCatalogoEmpleados') and (Activo = 8)) then
              frmCatalogoEmpleadosSSI.especialidad.Refresh;

    end
    else begin
      if ((global_frmActivo = 'frmCatalogoEmpleados') and (activo = 15)) then
        frmCatalogoEmpleados.documentos.Refresh;

      if ((global_frmActivo = 'frmCatalogoEmpleados') and (Activo = 11)) then
        frmCatalogoEmpleados.puesto.Refresh;

      if ((global_frmActivo = 'frmCatalogoEmpleados') and (Activo = 8)) then
        frmCatalogoEmpleados.especialidad.Refresh;

    end;

  if global_frmActivo = 'frmClientes' then begin
    case Activo of
      6: begin
        frmClientes.zqCiudades.Refresh;
      end;
      14: begin
        frmClientes.Codigo_postal.Refresh;
      end;
    end;
  end;



    guardar_leer_grid(cxViewCatalogos,frmCatalogosRHTipos,1);
    global_frmActivo := '';
    global_indexactivo:= -1;
  action := cafree ;
end;

procedure TfrmCatalogosRHTipos.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  frm_Loading.Show;
  OpcButton := '' ;
  seleccion:='1';
  frmbarraH21.btnCancel.Click ;
  zqCatalogosGenerales.Active := False ;
  dxNavBar1Item1.OnClick(Sender);
  dxNavBar1Item8.Visible:=False;
  PermisosBotones(frmCatalogosRHTipos,btnPermisos);

  activo := global_indexactivo;
  abrirdesdecaptura(sender);
  cxViewCatalogos.ApplyBestFit();
  guardar_leer_grid(cxViewCatalogos,frmCatalogosRHTipos,0);

end;

procedure TfrmCatalogosRHTipos.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmbarraH21.btnCancel.Enabled = True then
      frmbarraH21.btnCancel.Click ;
end;

procedure TfrmCatalogosRHTipos.frmBarra1btnAddClick(Sender: TObject);
begin
    frmbarraH11.btnAddClick(Sender);
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;
    cxDescripcion.SetFocus ;
    zqCatalogosGenerales.Append ;
    zqCatalogosGenerales.FieldByName('dCantidad').AsFloat := 0;
    zqCatalogosGenerales.FieldByName('dVentaMn').AsFloat  := 0;
    zqCatalogosGenerales.FieldByName('dVentaDll').AsFloat := 0;

    zqCatalogosGenerales.FieldByName('sTipo').AsString := 'ANEXO';
    zqCatalogosGenerales.FieldByName('sTierra').AsString := 'No';

    zqCatalogosGenerales.FieldByName('iOrden').AsInteger := zqCatalogosGenerales.RecordCount;


    frmbarraH11.btnPrinter.Enabled := False;
    grid_catalogos.Enabled := False;
end;

procedure TfrmCatalogosRHTipos.frmBarra1btnEditClick(Sender: TObject);
begin
   frmbarraH11.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   //cxId.Enabled := False;
   try
      zqCatalogosGenerales.Edit ;
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Anexos', 'Al agregar registro', 0);
      frmbarraH21.btnCancel.Click ;
      end;
   end ;

   frmbarraH11.btnPrinter.Enabled := False;
   grid_catalogos.Enabled := False;
end;

procedure TfrmCatalogosRHTipos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lBanderaEdit: boolean;
  sId  : string;
begin
    lBanderaEdit := zqCatalogosGenerales.State = dsEdit;
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Nombre Anexo');
    nombres.Add('Tipo Anexo');
    nombres.Add('(A Bordo/Tierra)');
    nombres.Add('Medida');
    nombres.Add('Descripcion Corta');
    nombres.Add('Títulos Reportes');
    nombres.Add('Generadores');
    nombres.Add('Nota Campo');
    cadenas.Add(cxDescripcion.Text);

//    if not validaTexto(nombres, cadenas, 'Id Anexo',(cxId.Text)) then
//    begin
//       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
//       exit;
//    end;

    {Continua insercion de datos..}
   try
       sId := zqCatalogosGenerales.FieldValues['sAnexo'];
       if zqCatalogosGenerales.State = dsInsert then
          zqCatalogosGenerales.FieldByName('Nomenclatura').AsString := IntToStr(zqCatalogosGenerales.RecordCount) +'.';
       ds_catalogos_generales.DataSet.Post ;
       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       grid_catalogos.Enabled := True;


       frmbarraH21.btnPostClick(Sender);
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Anexos', 'Al salvar registro', 0);
           frmbarraH21.btnCancel.Click ;
       end;
   end;

  PermisosBotones(frmCatalogosRHTipos,btnPermisos);
   frmbarraH11.btnPrinter.Enabled := False;
   if lBanderaEdit then
   begin
      grid_catalogos.Enabled := True;
      sOpcion := '';
   end;
end;

procedure TfrmCatalogosRHTipos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmbarraH21.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   zqCatalogosGenerales.Cancel ;

   PermisosBotones(frmCatalogosRHTipos,btnPermisos);
   frmbarraH11.btnPrinter.Enabled := False;
   grid_catalogos.Enabled := True;
   //cxId.Enabled := True;
end;

procedure TfrmCatalogosRHTipos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqCatalogosGenerales.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqCatalogosGenerales.Delete ;

      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Anexos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmCatalogosRHTipos.frmBarra1btnRefreshClick(Sender: TObject);
begin
   zqCatalogosGenerales.refresh
end;

procedure TfrmCatalogosRHTipos.frmBarraH11btnAddClick(Sender: TObject);
begin
  frmBarraH11.btnAddClick(Sender);
  btnAddClick(Sender);
end;

procedure TfrmCatalogosRHTipos.Insertar1Click(Sender: TObject);
begin
    frmbarraH11.btnAdd.Click
end;

procedure TfrmCatalogosRHTipos.cxCargarDocumentoClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;
  Ext, sArchivo : string;
begin
  try
    dlgPDF.FileName := '';

    if not dlgPDF.Execute() then
      exit;

    sArchivo := dlgPDF.FileName;

    if not FileExists(sArchivo) then
      raise exception.Create('No se encontro el archivo especificado');

    TBlobField(zqCatalogosGenerales.FieldByName('bFormato')).LoadfromFile(sArchivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;
end;

procedure TfrmCatalogosRHTipos.cxDBImage1Click(Sender: TObject);
begin
  inherited;
  cxDBImage1.Picture.LoadFromFile('&lt;aFileName&gt;');
end;


procedure TfrmCatalogosRHTipos.cxDBImage1DblClick(Sender: TObject);
begin
  inherited;
  cxDBImage1.Picture.LoadFromFile('&lt;aFileName&gt;');
end;

procedure TfrmCatalogosRHTipos.cxViewCatalogosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  case seleccion.ToInteger(seleccion) of
      17: begin
        if not zqCatalogosGenerales.FieldByName('bFormato').IsNull then
        begin
          if not zqCatalogosGenerales.FieldByName('Formato').IsNull then
            global_Temp := zqCatalogosGenerales.FieldByName('Formato').AsString
          else
            global_Temp := 'docto_'+zqCatalogosGenerales.FieldByName('Nombre').AsString+'.pdf';

          TBlobField(zqCatalogosGenerales.FieldByName('bFormato')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
          Application.CreateForm(TFrmVerPDF, FrmVerPDF);
          FrmVerPDF.Caption := global_Temp;
          FrmVerPDF.ShowModal;
        end
        else
          ShowMessage('No existe archivo del documento seleccionado.');
      end;
  end;
end;

procedure TfrmCatalogosRHTipos.cxViewCatalogosDblClick(Sender: TObject);
begin
    if cxViewCatalogos.OptionsView.CellAutoHeight then
       cxViewCatalogos.OptionsView.CellAutoHeight := False
    else
       cxViewCatalogos.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCatalogosRHTipos.dxCatalogoNavClick(Sender: TObject);
begin
    dxNavBar1Item1.OnClick(Sender);
end;

procedure TfrmCatalogosRHTipos.dxMastersClick(Sender: TObject);
begin
    dxNavBar1Item7.OnClick(Sender);
end;


procedure TfrmCatalogosRHTipos.dxNavBar1Item1Click(Sender: TObject);
var
    paramNames : string ;
    listValues : array of variant ;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    cxLeyenda.Caption:='Horarios ';
    paramNames:='IdHorario,sDescripcion';
    listValues:=['-1','-1'];
    //Se hace la consulta
    zqCatalogosGenerales.SQL.Clear;
    asignarSQL(zqCatalogosGenerales,'rh_horariolaboral',pUpdate);
    filtrarDataset(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //Relación de las columnas y los textfields
    cxViewCatalogosColumn1.DataBinding.FieldName:='Idhorario';
    cxViewCatalogosColumn2.DataBinding.FieldName:='sDescripcion';
    cxDescripcion.DataBinding.DataField := 'sDescripcion';
    seleccion:='1';
    dxLayoutControl1Item10.CaptionOptions.Text:='Descripción:';
    dxLayoutControl1Item9.Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Horario';
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item2Click(Sender: TObject);
var
    paramNames : string ;
    listValues : array of variant ;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    cxLeyenda.Caption:='Días Descanso ';
    paramNames:='IdDia,sDescripcion';
    listValues:=['-1','-1'];
    //Se hace la consulta
    zqCatalogosGenerales.SQL.Clear;
    asignarSQL(zqCatalogosGenerales,'rh_diasdescanso',pUpdate);
    filtrarDataset(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;

    //Relacionar los datos para las columnas y textos
    cxViewCatalogosColumn1.DataBinding.FieldName:='iIdDiasdescanso';
    cxViewCatalogosColumn2.DataBinding.FieldName:='sDescripcion';
    cxDescripcion.DataBinding.DataField := 'sDescripcion';
    seleccion:='2';
    dxLayoutControl1Item10.CaptionOptions.Text:='Descripción:';
    dxLayoutControl1Item9.Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[0].Caption:='Id Día';
    cxViewCatalogos.Columns[1].Caption:='Dia Descanso';
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item3Click(Sender: TObject);
var
    paramNames : string ;
    listValues : array of variant ;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    cxLeyenda.Caption:='Estatus Personal ';
    paramNames:='IdEstatus,Codigo,Estado';
    listvalues:=['-1','-1','-1'];
    //Se hace la consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'rh_estatus_personal',pUpdate);
    filtrarDataset(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //Relación de las columnas y los textfields
    cxViewCatalogosColumn1.DataBinding.FieldName:='IdEstatus';
    cxViewCatalogosColumn2.DataBinding.FieldName:='Codigo';
    cxViewCatalogosColumn3.DataBinding.FieldName:='Estado';
    //se relacionan los textfield con sus correspondientes en base de datos
    cxDescripcion.DataBinding.DataField := 'Codigo';
    cxCampo3.DataBinding.DataField:='Estado';
    seleccion:='3';
    dxLayoutControl1Item10.CaptionOptions.Text:='Código:';
    dxLayoutControl1Item9.CaptionOptions.Text:='Estado:';
    dxLayoutControl1Item9.Visible:=True;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Código';
    cxViewCatalogos.Columns[2].Caption:='Estado';
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    cxViewCatalogos.OptionsView.ColumnAutoWidth:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item4Click(Sender: TObject);
var
    paramNames: string;
    listValues: array of Variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    cxLeyenda.Caption:='Países ';
    paramNames:='IdPais,Activo';
    listValues:=['-1','-1'];
    //Cambio de caption
    dxLayoutControl1Item10.CaptionOptions.Text:='Código:';
    dxLayoutControl1Item9.CaptionOptions.Text:='País:';
    dxDBToggleSwitch1.Caption:='Activo';
    //Se hace la consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_pais',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listvalues);
    zqCatalogosGenerales.Open;
    //Se relacionan las columnas del grid
    cxViewCatalogosColumn1.DataBinding.FieldName:='IdPais';
    cxViewCatalogosColumn2.DataBinding.FieldName:='Codigo';
    cxViewCatalogosColumn3.DataBinding.FieldName:='Pais';
    cxViewCatalogosColumn6.DataBinding.FieldName:='ImagenP';
    cxViewCatalogosColumn5.DataBinding.FieldName:='Activo';
    //Nombres visibles para las columnas
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Codigo';
    cxViewCatalogos.Columns[2].Caption:='Pais';
    cxViewCatalogos.Columns[5].Caption:='Imagen';
    cxViewCatalogos.Columns[4].Caption:='Activo';
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    cxViewCatalogos.Columns[5].Visible:=True;
    cxViewCatalogos.OptionsView.ColumnAutoWidth:=True;
    //Se relacionan los textfields
    cxDescripcion.DataBinding.DataField:='Codigo';
    cxCampo3.DataBinding.DataField:='Pais';

    dxLayoutControl1Item9.Visible:=True;
    dxLayoutItem1.Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    seleccion:='4';
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item5Click(Sender: TObject);
var
    paramNames : string;
    listValues : array of variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    cxLeyenda.Caption:='Estados ';
    paramNames:='IdEstado,IdPais,Activo';
    listValues:=['-1','-1','-1'];
    //Cambio de caption
    dxLayoutControl1Item10.CaptionOptions.Text:='Código:';
    dxLayoutControl1Item9.CaptionOptions.Text:='Estado:';
    dxLayoutItem1.CaptionOptions.Text:='País:';
    dxDBToggleSwitch1.Caption:='Activo';
    //Se hace la consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_estado',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //subcatalogo....
    zqSubCatalogo.SQL.Clear;
    zqSubCatalogo.SQL.Add('select IdPais, Pais from master_pais');
    zqSubCatalogo.Open;
    //Se relacionan las columnas del grid
    cxViewCatalogosColumn1.DataBinding.FieldName:='IdEstado';
    cxViewCatalogosColumn2.DataBinding.FieldName:='Codigo';
    cxViewCatalogosColumn3.DataBinding.FieldName:='Estado';
    cxViewCatalogosColumn4.DataBinding.FieldName:='Pais';
    cxViewCatalogosColumn5.DataBinding.FieldName:='Activo';
    //Nombres visibles para las columnas
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Codigo';
    cxViewCatalogos.Columns[2].Caption:='Estado';
    cxViewCatalogos.Columns[3].Caption:='Pais';
    cxViewCatalogos.Columns[4].Caption:='Activo';
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    cxViewCatalogos.Columns[5].Visible:=False;
    cxViewCatalogos.OptionsView.ColumnAutoWidth:=True;
    //se relacionan los textfields
    cxDescripcion.DataBinding.DataField:='Codigo';
    cxCampo3.DataBinding.DataField:='Estado';
    cxSubCatalogo.DataBinding.DataField:='IdPais';
    cxSubCatalogo.Properties.KeyFieldNames:='IdPais';
    cxSubCatalogo.Properties.ListFieldNames:='Pais';

    dxLayoutControl1Item9.Visible:=True;
    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;

    seleccion:='5';
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item6Click(Sender: TObject);
var
    paramNames: string;
    listValues: array of variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    cxLeyenda.Caption:='Ciudades ';
    paramNames:='IdCiudad,IdEstado,Activo';
    listValues:=['-1','-1','-1'];
    //Cambio de caption
    dxLayoutControl1Item10.CaptionOptions.Text:='Código:';
    dxLayoutControl1Item9.CaptionOptions.Text:='Ciudad:';
    dxLayoutItem1.CaptionOptions.Text:='Estado:';
    dxDBToggleSwitch1.Caption:='Activo' ;
    //Se hace la consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_ciudad',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //subcatalogo....
    zqSubCatalogo.SQL.Clear;
    zqSubCatalogo.SQL.Add('select IdEstado, Estado from master_estado');
    zqSubCatalogo.Open;
    //Se relacionan las columnas del grid
    cxViewCatalogosColumn1.DataBinding.FieldName:='IdCiudad';
    cxViewCatalogosColumn2.DataBinding.FieldName:='Codigo';
    cxViewCatalogosColumn3.DataBinding.FieldName:='FK_Ciudad';
    cxViewCatalogosColumn4.DataBinding.FieldName:='Estado';
    cxViewCatalogosColumn5.DataBinding.FieldName:='Activo';
    //Nombres visibles para las columnas
    cxViewCatalogos.Columns[0].Caption:='IdCiudad';
    cxViewCatalogos.Columns[1].Caption:='Codigo';
    cxViewCatalogos.Columns[2].Caption:='Ciudad';
    cxViewCatalogos.Columns[3].Caption:='Estado';
    cxViewCatalogos.Columns[4].Caption:='Activo';
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    cxViewCatalogos.Columns[5].Visible:=False;
    cxViewCatalogos.OptionsView.ColumnAutoWidth:=True;

    //se relacionan los textfields
    cxDescripcion.DataBinding.DataField:='Codigo';
    cxCampo3.DataBinding.DataField:='FK_Ciudad';
    cxSubCatalogo.DataBinding.DataField:='IdEstado';
    cxSubCatalogo.Properties.KeyFieldNames:='IdEstado';
    cxSubCatalogo.Properties.ListFieldNames:='Estado';

    dxLayoutControl1Item9.Visible:=True;
    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;

    seleccion:='6';
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item7Click(Sender: TObject);
var
    paramNames: string;
    listValues: array of variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    seleccion:='7';
    cxLeyenda.Caption:='Monedas ';
    //parámetros y valores
    paramNames:='IdMoneda,Codigo,Activo';
    listValues:=['-1','-1','-1'];
    //consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_moneda',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //Relacionar las columnas y los textfields con la base de datos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='IdMoneda';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='FK_Moneda';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Simbolo';
    cxViewCatalogos.Columns[4].DataBinding.FieldName:='Activo';
    cxDescripcion.DataBinding.DataField:='Codigo';
    cxCampo3.DataBinding.DataField:='FK_Moneda';
    cxSimbolo.DataBinding.DataField := 'Simbolo';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Código';
    cxViewCatalogos.Columns[2].Caption:='Moneda';
    cxViewCatalogos.Columns[3].Caption:='Símbolo';
    cxViewCatalogos.Columns[4].Caption:='Activo';
    dxLayoutControl1Item10.CaptionOptions.Text:='Código';
    dxLayoutControl1Item9.CaptionOptions.Text:='Moneda:';
    dxLayoutItem8.CaptionOptions.Text := 'Simbolo';
    dxDBToggleSwitch1.Caption:='Activo';

    //Ocultar los otros componentes
    dxLayoutItem1.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem6.Visible:=False;
    //cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem7.Visible:=False;
    //Visibles todos los componentes
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    dxLayoutControl1Item9.Visible:=True;
    dxLayoutItem2.Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item8Click(Sender: TObject);
var
    paramNames: string;
    listValues: array of variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    seleccion:='8';
    cxLeyenda.Caption:='Especialidades ';
    //parámetros y valores
    paramNames:='IdEspecialidad,Codigo,Especialidad';
    listValues:=['-1','-1','-1'];
    //consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_puesto_especialidad',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //Relacionar las columnas y los textfields con la base de datos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='IdEspecialidad';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Especialidad';
    cxDescripcion.DataBinding.DataField:='Codigo';
    cxCampo3.DataBinding.DataField:='Especialidad';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Código';
    cxViewCatalogos.Columns[2].Caption:='Especialidad';
    dxLayoutControl1Item10.CaptionOptions.Text:='Código:';
    dxLayoutControl1Item9.CaptionOptions.Text:='Nombre:';
    //Ocultar los otros componentes
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    //Visibles todos los componentes
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    dxLayoutControl1Item9.Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item9Click(Sender: TObject);
var
    paramNames: string;
    listValues: array of variant;
begin
    //Donde estoy...
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    seleccion:='9';
    cxLeyenda.Caption:='Bancos';
    //parametros y valores
    paramNames:='IdBanco,Clave,Corto,RazonSocial';
    listValues:=['-1','-1','-1','-1'];
    //Consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'rhu_bancos',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //Relacionar las columnas y los textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Idbanco';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Clave';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='NombreCorto';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='RazonSocial';
    cxDescripcion.DataBinding.DataField:='Clave';
    cxCampo3.DataBinding.DataField:='NombreCorto';
    cxCampo4.DataBinding.DataField:='RazonSocial';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Id Banco';
    cxViewCatalogos.Columns[1].Caption:='Clave';
    cxViewCatalogos.Columns[2].Caption:='Nombre Corto';
    cxViewCatalogos.Columns[3].Caption:='Razón Social';
    dxLayoutControl1Item10.Caption:='Clave:';
    dxLayoutControl1Item9.Caption:='Nombre Corto';
    dxLayoutItem4.Caption:='Razón Social';
    //Ocultar componentes
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    //Elementos visibles
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    dxLayoutControl1Item9.Visible:=True;
    dxLayoutItem4.Visible:=True;
    cxViewCatalogos.OptionsView.ColumnAutoWidth:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item10Click(Sender: TObject);
var
    paramNames : string ;
    listValues : array of Variant ;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy + parametros para consulta
    seleccion:='10';
    cxLeyenda.Caption:='Días festivos';
    paramNames:='IdDiasFestivos,Anio,Fecha,Tipo';
    listValues:=['-1','-1','-1','-1'];
    //consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'rhu_diasfestivos',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    zqSubCatalogo.SQL.Clear;
    zqSubCatalogo.SQL.Add('select '+''''+'Ley'+''''+' as Tipos union select '+''''+'Local'+''''+' as Tipos union select '+''''+'Sindical'+''''+' as Tipos');
    zqSubCatalogo.Open;
    //Relacionar los objetos con la base de datos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='idDiasFestivos';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='anio';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Fecha';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='tipo';

    cxDescripcion.DataBinding.DataField:='anio';
    cxFecha.DataBinding.DataField:='Fecha';
    cxSubCatalogo.DataBinding.DataField:='tipo';

    cxSubCatalogo.Properties.KeyFieldNames:='Tipos';
    cxSubCatalogo.Properties.ListFieldNames:='Tipos';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Id Día';
    cxViewCatalogos.Columns[1].Caption:='Año';
    cxViewCatalogos.Columns[2].Caption:='Fecha';
    cxViewCatalogos.Columns[3].Caption:='Tipo';
    dxLayoutControl1Item10.Caption:='Año:';
    dxLayoutItem6.Caption:='Fecha';
    dxLayoutItem1.CaptionOptions.Text:='Tipo:';
    //Ocultar componentes
    dxLayoutItem4.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutControl1Item9.Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    //Elementos visibles
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    dxLayoutItem6.Visible:=True;
    dxLayoutItem1.Visible:=True;
    cxViewCatalogos.OptionsView.ColumnAutoWidth:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item11Click(Sender: TObject);
var
    paramNames : string;
    listValues : array of variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    cxLeyenda.Caption:='Puestos';
    seleccion:='11';
    paramNames:='IdPuesto,Nomina,Empresa,Activo';
    listValues:=['-1','-1','-1','-1'];
    //consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_puesto',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    zqSubCatalogo.SQL.Clear;
    zqSubCatalogo.SQL.Add('select IdTipoNomina,Titulo as Nomina from rh_tiponomina');
    zqSubCatalogo.Open;
    zqSubCatalogo2.SQL.Clear;
    zqSubCatalogo2.SQL.Add('select IdEmpresa,FK_Titulo as Empresa from master_empresa');
    zqSubCatalogo2.Open;
    //relacionar los campos con la base de datos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Nomina';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Empresa';
    cxViewCatalogos.Columns[4].DataBinding.FieldName:='Activo';
    cxDescripcion.DataBinding.DataField:='Codigo';
    cxCampo3.DataBinding.DataField:='Nombre';
    cxSubCatalogo.DataBinding.DataField:='IdTipoNomina';
    cxSubCatalogo.Properties.KeyFieldNames:='IdTipoNomina';
    cxSubCatalogo.Properties.ListFieldNames:='Nomina';
    cxSubCatalogo2.DataBinding.DataField:='IdEmpresa';
    cxSubCatalogo2.Properties.KeyFieldNames:='IdEmpresa';
    cxSubCatalogo2.Properties.ListFieldNames:='Empresa';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    cxViewCatalogos.Columns[2].Caption:='Nómina';
    cxViewCatalogos.Columns[3].Caption:='Empresa';
    cxViewCatalogos.Columns[4].Caption:='Activo';
    dxLayoutControl1Item10.Caption:='Código:';
    dxLayoutControl1Item9.Caption:='Nombre:';
    dxLayoutItem1.Caption:='Nómina:';
    dxLayoutItem5.Caption:='Empresa:';
    dxDBToggleSwitch1.Caption:='Activo';
    //Ocultar items
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    //Mostrar items
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    dxLayoutControl1Item9.Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem5.Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item12Click(Sender: TObject);
var
    paramNames : string;
    listValues : array of variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    cxLeyenda.Caption:='Profesiones';
    seleccion:='12';
    paramNames:='IdProfesion,Codigo,Profesion';
    listValues:=['-1','-1','-1'];
    //consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'rh_profesiones',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //Relacionar campos con base de datos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Profesion';
    cxDescripcion.DataBinding.DataField:='Codigo';
    cxCampo3.DataBinding.DataField:='Profesion';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Profesión';
    dxLayoutControl1Item10.Caption:='Código';
    dxLayoutControl1Item9.Caption:='Profesión';
    //Ocultar items
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    //Mostrar Items
    dxLayoutControl1Item10.Visible:=True;
    dxLayoutControl1Item9.Visible:=True;
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item13Click(Sender: TObject);
var
    paramNames : string;
    listValues : array of variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    cxLeyenda.Caption:='Nivel Firmantes';
    seleccion:='13';
    paramNames:='IdNivel,Nivel';
    listValues:=['-1','-1'];
    //consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'rh_nivel_firmante',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;
    //Relacionar campos con base de datos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='IdNivelFirma';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nivel';
    cxDescripcion.DataBinding.DataField:='Nivel';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Nivel';
    dxLayoutControl1Item10.Caption:='Nivel:';
    //Ocultar items
    dxLayoutControl1Item9.Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    //Mostrar Items
    dxLayoutControl1Item10.Visible:=True;
    cxViewCatalogos.Columns[0].Visible:=False;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item14Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    cxLeyenda.Caption:='Código Postal';
    seleccion:='14';
    //consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_codigo_postal',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'',['']);
    zqCatalogosGenerales.Open;
    //Relacionar campos con base de datos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='CodigoPostal';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Activo';
    cxDescripcion.DataBinding.DataField:='CodigoPostal';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código Postal';
    cxViewCatalogos.Columns[1].Caption:='Activo';
    dxLayoutControl1Item10.Caption:='Código Postal:';
    dxDBToggleSwitch1.Caption:='Activo';
    //Ocultar items
    dxLayoutControl1Item9.Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    //Mostrar Items
    dxLayoutItem2.Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item15Click(Sender: TObject);
  var
    paramNames : string;
    listValues : array of variant;
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    cxLeyenda.Caption:='Documentos';
    seleccion:='15';
    paramNames:='Id,Tipo';
    listValues:=['-1','-1'];
    //consulta
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'rhu_documento',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,paramNames,listValues);
    zqCatalogosGenerales.Open;

    zqSubCatalogo.SQL.Clear;
    zqSubCatalogo.SQL.Add('select '+''''+'Normal'+''''+' as Tipos union select '+''''+'Material'+''''+' as Tipos union select '+''''+'Proveedor'+''''+' as Tipos');
    zqSubCatalogo.Open;


    //Relacionar campos con base de datos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[0].Caption:='Codigo';

    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Documento';
    cxViewCatalogos.Columns[1].Caption:='Documento';

    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Tipo';
    cxViewCatalogos.Columns[2].Caption:='Tipo';

    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Contratacion';
    cxViewCatalogos.Columns[3].Caption:='Contratación';

    cxDescripcion.DataBinding.DataField:='Codigo';
    dxLayoutControl1Item10.Caption:='Codigo: ';

    cxCampo3.DataBinding.DataField:='Documento';
    dxLayoutControl1Item9.Caption := 'Documento: ';

    cxSubCatalogo.Properties.KeyFieldNames:='Tipos';
    cxSubCatalogo.Properties.ListFieldNames:='Tipos';
    cxSubCatalogo.DataBinding.DataField := 'Tipo';
    dxLayoutItem1.Caption := 'Tipo: ';

    dxDBToggleSwitch1.Caption := 'Contratacion';
    dxDBToggleSwitch1.DataBinding.DataField := 'Contratacion';
    //Ocultar items
    //dxLayoutControl1Item9.Visible:=False;
//    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
//    cxViewCatalogos.Columns[2].Visible:=False;

    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    //Mostrar Items
    dxLayoutItem2.Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    dxLayoutControl1Item9.Visible:=True;
    dxLayoutItem1.Visible:=True;

    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item16Click(Sender: TObject);
begin
    //limpiar agrupación
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    cxLeyenda.Caption:='Lista de Verificación';
    seleccion:='16';
    //Asignar consulta y filtrar datos
    zqCatalogosGenerales.Active:=False;
    AsignarSQL(zqCatalogosGenerales,'master_empleado_checklist_conf',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Activo',[-1,'-1']);
    zqCatalogosGenerales.Open;
    //relacionar consulta con los campos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='DocumentoCheck';
    cxViewCAtalogos.Columns[0].Caption:='Documento';

    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Activo';
    cxViewCatalogos.Columns[1].Caption:='Activo';
    dxDBToggleSwitch1.Caption:='Activo';

    cxDescripcion.DataBinding.DataField:='DocumentoCheck';
    dxLayoutControl1Item10.Caption:='Documento Requisitado: ';
    //Ocultar items innecesarios
    dxLayoutControl1Item9.Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    //Mostrar Items a Ocupar
    dxLayoutItem2.Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item17Click(Sender: TObject);
begin
    //Quitar Agrupadores
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //Donde estoy
    cxLeyenda.Caption:='Formatos de Documentos';
    seleccion:='17';
    //Asignar consultas y filtrar datos
    zqCatalogosGenerales.Active:=False;
    AsignarSQL(zqCatalogosGenerales,'master_formato_doctos',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Activo',[-1,'-1']);
    zqCatalogosGenerales.Open;
    //Relacionar campos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Formato';
    cxViewCatalogos.Columns[0].Caption:='Nombre';

    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Tipo';
    cxViewCatalogos.Columns[1].Caption:='Tipo';

    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Activo';
    cxViewCatalogos.Columns[2].Caption:='Activo';
    dxDBToggleSwitch1.Caption:='Activo';

    cxDescripcion.DataBinding.DataField:='Formato';
    dxLayoutControl1Item10.Caption:='Nombre completo: ';

    cxCampo3.DataBinding.DataField:='Nombre';
    dxLayoutControl1Item9.Caption:='Nombre sin extensión: ';

    cxCampo4.DataBinding.DataField:='Ext';
    dxLayoutItem4.Caption:='Extensión: ';

    zqSubCatalogo.SQL.Clear;
    zqSubCatalogo.SQL.Add('select '+QuotedStr('Contrato')+' as Tipo union select '+QuotedStr('Carta')+' as Tipo');
    zqSubCatalogo.Open;
    cxSubCatalogo.DataBinding.DataField:='Tipo';
    cxSubCatalogo.Properties.KeyFieldNames:='Tipo';
    cxSubCatalogo.Properties.ListFieldNames:='Tipo';
    dxLayoutItem1.Caption:='Tipo';

    //Ocultar datos innecesarios
    dxLayoutItem3.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;

    //Mostrar datos a ocupar
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    dxLayoutControl1Item9.Visible:=True;
    dxLayoutControl1Item10.Visible:=True;
    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem4.Visible:=True;
    dxLayoutItem7.Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxNavBar1Item18Click(Sender: TObject);
begin
//Quitar Agrupadores
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //Donde estoy
    cxLeyenda.Caption:='Segmentos Clases';
    seleccion:='18';
    //Asignar consultas y filtrar datos
    zqCatalogosGenerales.Active:=False;
    AsignarSQL(zqCatalogosGenerales,'segmentos_clases',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Activo',[-1,-1]);
    zqCatalogosGenerales.Open;
    //Relacionar campos
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[0].Caption:='Código';

    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Descripcion';
    cxViewCatalogos.Columns[1].Caption:='Desripción';

    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Activo';
    cxViewCatalogos.Columns[2].Caption:='Activo';
    dxDBToggleSwitch1.Caption:='Activo';

    cxDescripcion.DataBinding.DataField:='Codigo';
    dxLayoutControl1Item10.Caption:='Código: ';

    cxCampo3.DataBinding.DataField:='Descripcion';
    dxLayoutControl1Item9.Caption:='Descripción: ';

    //Ocultar datos innecesarios
    dxLayoutItem1.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutControl1Item10.Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;

    //Mostrar datos a ocupar
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    dxLayoutControl1Item9.Visible:=True;
    dxLayoutItem4.Visible:=True;
    dxLayoutItem2.Visible:=True;
    cxViewCatalogos.ApplyBestFit();
end;

procedure TfrmCatalogosRHTipos.dxUbicacionesClick(Sender: TObject);
begin
    dxNavBar1Item4.OnClick(Sender);
end;

procedure TfrmCatalogosRHTipos.Editar1Click(Sender: TObject);
begin
    frmbarraH11.btnEdit.Click
end;

procedure TfrmCatalogosRHTipos.Registrar1Click(Sender: TObject);
begin
    frmbarraH21.btnPost.Click
end;

procedure TfrmCatalogosRHTipos.abrirdesdecaptura(Sender: TObject);
begin
  if (activo > 0)  then
  begin
    dxNavBar1Item1.Enabled := False;
    dxNavBar1Item2.Enabled := False;
    dxNavBar1Item3.Enabled := False;
    dxNavBar1Item4.Enabled := False;
    dxNavBar1Item5.Enabled := False;
    dxNavBar1Item6.Enabled := False;
    dxNavBar1Item7.Enabled := False;
    dxNavBar1Item8.Enabled := False;
    dxNavBar1Item9.Enabled := False;
    dxNavBar1Item10.Enabled := False;
    dxNavBar1Item11.Enabled := False;
    dxNavBar1Item12.Enabled := False;
    dxNavBar1Item13.Enabled := False;
    dxNavBar1Item14.Enabled := False;
    dxUbicaciones.OnClick := nil;
    dxCatalogoNav.OnClick := nil;
    dxMasters.OnClick := nil;

    if activo = 1 then
    begin
      dxNavBar1.ActiveGroupIndex := 0;
      dxNavBar1Item1.Enabled := True;
      dxNavBar1Item1Click(Sender);
    end
    else if activo = 2 then
    begin
      dxNavBar1.ActiveGroupIndex := 0;
      dxNavBar1Item2.Enabled := True;
      dxNavBar1Item2Click(Sender)
    end
    else if activo = 3 then
    begin
      dxNavBar1.ActiveGroupIndex := 0;
      dxNavBar1Item3.Enabled := True;
      dxNavBar1Item3Click(Sender)
    end
    else if activo = 4 then
    begin
      dxNavBar1.ActiveGroupIndex := 1;
      dxNavBar1Item4.Enabled := True;
      dxNavBar1Item4Click(Sender)
    end
    else if activo = 5 then
    begin
      dxNavBar1.ActiveGroupIndex := 1;
      dxNavBar1Item5.Enabled := True;
      dxNavBar1Item5Click(Sender)
    end
    else if activo = 6 then
    begin
      dxNavBar1.ActiveGroupIndex := 1;
      dxNavBar1Item6.Enabled := True;
      dxNavBar1Item6Click(Sender)
    end
    else if activo = 7 then
    begin
      dxNavBar1.ActiveGroupIndex := 2;
      dxNavBar1Item7.Enabled := True;
      dxNavBar1Item7Click(Sender)
    end
    else if activo = 8 then
    begin
      dxNavBar1.ActiveGroupIndex := 2;
      dxNavBar1Item8.Enabled := True;
      dxNavBar1Item8Click(Sender)
    end
    else if activo = 9 then
    begin
      dxNavBar1.ActiveGroupIndex := 2;
      dxNavBar1Item9.Enabled := True;
      dxNavBar1Item9Click(Sender);
    end
    else if activo = 10 then
    begin
      dxNavBar1.ActiveGroupIndex := 2;
      dxNavBar1Item10.Enabled := True;
      dxNavBar1Item10Click(Sender);
    end
    else if activo = 11 then
    begin
      dxNavBar1.ActiveGroupIndex := 2;
      dxNavBar1Item11.Enabled := True;
      dxNavBar1Item11Click(Sender);
    end
    else if activo = 12 then
    begin
      dxNavBar1.ActiveGroupIndex := 2;
      dxNavBar1Item12.Enabled := True;
      dxNavBar1Item12Click(Sender);
    end
    else if activo = 13 then
    begin
      dxNavBar1.ActiveGroupIndex := 2;
      dxNavBar1Item13.Enabled := True;
      dxNavBar1Item13Click(Sender);
    end
    else if activo = 14 then
    begin
      dxNavBar1.ActiveGroupIndex := 1;
      dxNavBar1Item14.Enabled := True;
      dxNavBar1Item14Click(Sender);
    end
    else if activo = 15 then
    begin
      dxNavBar1.ActiveGroupIndex := 2;
      dxNavBar1Item15.Enabled := True;
      dxNavBar1Item15Click(Sender);
    end;

  end
  else
  begin
    dxNavBar1Item1.Enabled := True;
    dxNavBar1Item2.Enabled := True;
    dxNavBar1Item3.Enabled := True;
    dxNavBar1Item4.Enabled := True;
    dxNavBar1Item5.Enabled := True;
    dxNavBar1Item6.Enabled := True;
    dxNavBar1Item7.Enabled := True;
    dxNavBar1Item8.Enabled := True;
    dxNavBar1Item9.Enabled := True;
    dxNavBar1Item10.Enabled := True;
    dxNavBar1Item11.Enabled := True;
    dxNavBar1Item12.Enabled := True;
    dxNavBar1Item13.Enabled := True;
    dxNavBar1Item14.Enabled := True;
    dxUbicaciones.OnClick := dxUbicacionesClick;
    dxCatalogoNav.OnClick := dxCatalogoNavClick;
    dxMasters.OnClick := dxMastersClick;
  end;
end;

procedure TfrmCatalogosRHTipos.btnAddClick(Sender: TObject);
begin
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Añadiendo]';
  pnl1.Visible:=True;
  grid_catalogos.Enabled:=False;
  frmbarraH11.btnEdit.Enabled:=False;
  frmbarraH11.btnDelete.Enabled:=False;
  frmbarraH11.btnAdd.Enabled:=False;
  zqCatalogosGenerales.Append;
//  try
//    if not VarIsNull(zqCatalogosGenerales.FindField('Activo').AsString) then
//      zqCatalogosGenerales.FieldByName('Activo').AsString:='Si';
//  except
//    on e:Exception do begin
//
////    end;
//  end;

  case seleccion.ToInteger(seleccion) of
      1: begin
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item16.Enabled:=False;
          dxNavBar1Item17.Enabled:=False;
      end;
      2:  begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item16.Enabled:=False;
          dxNavBar1Item17.Enabled:=False;
      end;
      3: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'rh_estatus_personal');
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item16.Enabled:=False;
          dxNavBar1Item17.Enabled:=False;
      end;
      16: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item17.Enabled:=False;
      end;
      17: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item16.Enabled:=False;
      end;
      4: begin
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item14.Enabled:=False;
      end;
      5: begin
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item14.Enabled:=False;
      end;
      6: begin
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item14.Enabled:=False;
      end;
      14: begin
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
      end;
      7: begin
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      8: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'master_puesto_especialidad');
          dxNavBar1Item7.Enabled:=False;
          dxNavbar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      9: begin
          zqCatalogosGenerales.FieldByName('Clave').AsString:=autofolio(zqCatalogosGenerales,'rhu_bancos');
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      10: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      11: begin
            try
             zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'master_puesto');
            except
             showMessage('Autofolio sin configur, por favor configure el autofolio para poder continual ');
           end;

          zqCatalogosGenerales.FieldByName('IdTipoNomina').AsInteger:=zqSubCatalogo.FieldByName('IdTipoNomina').AsInteger;
          zqCatalogosGenerales.FieldByName('IdEmpresa').AsInteger:=zqSubCatalogo2.FieldByName('IdEmpresa').AsInteger;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      12: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'rh_profesiones');
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      13: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      15: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'rhu_documento');
          zqCatalogosGenerales.FieldByName('IdDocumento').AsInteger :=  0;
          zqCatalogosGenerales.FieldByName('Activo').AsString:='Si';
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      18: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'segmentos_clases');
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
      end;
  end;

end;

procedure TfrmCatalogosRHTipos.btnCancelClick(Sender: TObject);
begin
  cxleyenda.Caption:=titulo;
  pnl1.Visible:=False;
  dxNavBar1Item1.Enabled:=True;
  dxNavBar1Item2.Enabled:=True;
  dxNavBar1Item3.Enabled:=True;
  dxNavBar1Item4.Enabled:=True;
  dxNavBar1Item5.Enabled:=True;
  dxNavBar1Item6.Enabled:=True;
  dxNavBar1Item7.Enabled:=True;
  dxNavBar1Item8.Enabled:=True;
  dxNavBar1Item9.Enabled:=True;
  dxNavBar1Item10.Enabled:=True;
  dxNavBar1Item11.Enabled:=True;
  dxNavBar1Item12.Enabled:=True;
  dxNavBar1Item13.Enabled:=True;
  dxNavBar1Item14.Enabled:=True;
  dxNavBar1Item15.Enabled:=True;
  dxNavBar1Item16.Enabled:=True;
  dxNavBar1Item17.Enabled:=True;
  dxNavBar1Item18.Enabled:=True;
  frmBarraH11.btnAdd.Enabled:=True;
  frmBarraH11.btnEdit.Enabled:=True;
  frmBarraH11.btnDelete.Enabled:=True;
  grid_catalogos.Enabled:=True;
  ds_catalogos_generales.DataSet.Cancel;
  PermisosBotones(frmCatalogosRHTipos,btnPermisos);
  abrirdesdecaptura(sender);
end;

procedure TfrmCatalogosRHTipos.btnDeleteClick(Sender: TObject);
begin
    If zqCatalogosGenerales.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
//        ds_catalogos_generales.DataSet.Delete;
//        zqCatalogosGenerales.ApplyUpdates();
//        TUniquery(ds_catalogos_generales.DataSet).Connection.Commit;
          zqCatalogosGenerales.Delete;
          zqCatalogosGenerales.ApplyUpdates();
          zqCatalogosGenerales.Refresh;

          if ((connection.uContrato.FieldByName('FK_Titulo').AsString <> 'SUBSEA 7') or
         (connection.uContrato.FieldByName('FK_Titulo').AsString <> 'CMMI')) then begin
            if ((global_frmActivo = 'frmCatalogoEmpleadosSSI') or (assigned(frmCatalogoEmpleadosSSI))) then
            begin
              frmCatalogoEmpleadosSSI.puesto.Refresh;
              frmCatalogoEmpleadosSSI.puesto_empleado.Refresh;
            end;
         end;

      except
        on E : exception do begin
           UnitExcepciones.manejarExcep('El Puesto esta asignado a uno u varios empleado(s) por ello no se puede eliminar', E.ClassName, 'Catálogo Generales', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmCatalogosRHTipos.btnEditClick(Sender: TObject);
begin
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Editando]';
  pnl1.Visible:=True;
  frmBarraH11.btnAdd.Enabled:=False;
  frmBarraH11.btnDelete.Enabled:=False;
  frmBarraH11.btnEdit.Enabled:=False;
  grid_catalogos.Enabled:=False;
  //cxId.Enabled:=False;
  case seleccion.ToInteger(seleccion) of
      1: begin
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item16.Enabled:=False;
          dxNavbar1Item17.Enabled:=False;
      end;
      2:  begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item16.Enabled:=False;
          dxNavbar1Item17.Enabled:=False;
      end;
      3: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item16.Enabled:=False;
          dxNavbar1Item17.Enabled:=False;
      end;
      16: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavbar1Item17.Enabled:=False;
      end;
      17: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavbar1Item16.Enabled:=False;
      end;
      4: begin
          dxNavBar1Item14.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
      end;
      5: begin
          dxNavBar1Item14.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
      end;
      6: begin
          dxNavBar1Item14.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
      end;
      14: begin
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
      end;
      7: begin
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      8: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavbar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      9: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      10: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      11: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      12: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      13: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      15: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item18.Enabled:=False;
      end;
      18: begin
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
          dxNavBar1Item15.Enabled:=False;
      end;
  end;
  zqCatalogosGenerales.edit;
end;

procedure TfrmCatalogosRHTipos.btnPostClick(Sender: TObject);
begin
  case seleccion.ToInteger(seleccion) of
    14: begin
      zqCatalogosGenerales.FieldByName('Codigo').AsString := cxDescripcion.Text;
    end;
  end;


  TUniquery(ds_catalogos_generales.DataSet).Post;
  //TUniquery(ds_catalogos_generales.DataSet).ApplyUpdates();
  if TUniquery(ds_catalogos_generales.DataSet).Connection.InTransaction then
  BEGIN
    TUniquery(ds_catalogos_generales.DataSet).Connection.Commit;
    TUniquery(ds_catalogos_generales.DataSet).Connection.StartTransaction;
  END;

   if ((connection.uContrato.FieldByName('FK_Titulo').AsString <> 'SUBSEA 7') or
       (connection.uContrato.FieldByName('FK_Titulo').AsString <> 'CMMI')) then begin
      if ((global_frmActivo = 'frmCatalogoEmpleadosSSI') or (assigned(frmCatalogoEmpleadosSSI))) then
      begin
        frmCatalogoEmpleadosSSI.puesto.Refresh;
        frmCatalogoEmpleadosSSI.puesto_empleado.Refresh;
      end;
   end;




  ds_catalogos_generales.DataSet.Refresh;
  cxLeyenda.Caption:=titulo;
  pnl1.Visible:=False;
  dxNavBar1Item1.Enabled:=True;
  dxNavBar1Item2.Enabled:=True;
  dxNavBar1Item3.Enabled:=True;
  dxNavBar1Item4.Enabled:=True;
  dxNavBar1Item5.Enabled:=True;
  dxNavBar1Item6.Enabled:=True;
  dxNavBar1Item7.Enabled:=True;
  dxNavBar1Item8.Enabled:=True;
  dxNavBar1Item9.Enabled:=True;
  dxNavBar1Item10.Enabled:=True;
  dxNavBar1Item11.Enabled:=True;
  dxNavBar1Item12.Enabled:=True;
  dxNavBar1Item13.Enabled:=True;
  dxNavBar1Item14.Enabled:=True;
  dxNavBar1Item15.Enabled:=True;
  dxNavBar1Item16.Enabled:=True;
  dxNavBar1Item17.Enabled:=True;
  dxNavBar1Item18.Enabled:=True;
  frmBarraH11.btnAdd.Enabled:=True;
  frmBarraH11.btnEdit.Enabled:=True;
  frmBarraH11.btnDelete.Enabled:=True;
  grid_catalogos.Enabled:=True;

  PermisosBotones(frmCatalogosRHTipos,btnPermisos);
  abrirdesdecaptura(sender);
end;

procedure TfrmCatalogosRHTipos.btnPrinterClick(Sender: TObject);
begin
  if zqCatalogosGenerales.RecordCount > 0 then
  begin
    generar_reporte_grid(cxViewCatalogos,titulo);
  end;
end;

procedure TfrmCatalogosRHTipos.btnRefreshClick(Sender: TObject);
begin
   zqCatalogosGenerales.Refresh;

   if ((connection.uContrato.FieldByName('FK_Titulo').AsString <> 'SUBSEA 7') or
       (connection.uContrato.FieldByName('FK_Titulo').AsString <> 'CMMI')) then begin
      if ((global_frmActivo = 'frmCatalogoEmpleadosSSI') or (assigned(frmCatalogoEmpleadosSSI))) then
      begin
        frmCatalogoEmpleadosSSI.puesto.Refresh;
        frmCatalogoEmpleadosSSI.puesto_empleado.Refresh;
      end;
   end;
end;

procedure TfrmCatalogosRHTipos.Can1Click(Sender: TObject);
begin
    frmbarraH21.btnCancel.Click
end;

procedure TfrmCatalogosRHTipos.Eliminar1Click(Sender: TObject);
begin
    frmbarraH11.btnDelete.Click
end;
end.
