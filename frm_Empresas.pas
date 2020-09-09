unit frm_Empresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1,
  Vcl.ExtCtrls, frm_barraH2, dxSkinscxPCPainter, dxBarBuiltInMenu,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters,
  dxMapControlTypes, dxMapControlOpenStreetMapImageryDataProvider,
  dxBingMapLocationDataService, dxBingMapRouteDataService, cxCurrencyEdit,
  cxDBEdit, dxGDIPlusClasses, cxColorComboBox, cxDBColorComboBox, cxImage,
  cxGroupBox, dxMapControlInformationProvider,
  dxMapControlBingMapInformationProviders, cxClasses, dxMapLayer,
  dxMapImageTileLayer, dxMapControl, cxSpinEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxHyperLinkEdit, cxCheckBox,
  dxToggleSwitch, dxDBToggleSwitch, cxMaskEdit, cxButtonEdit, cxTextEdit, frm_connection,
  dxLayoutControl, cxPC, Data.DB, MemDS, DBAccess, Uni, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, UnitGenerales, cxShellBrowserDialog, ZAbstractRODataset, global,
  ZAbstractDataset, ZDataset, unitexcepciones, cxSplitter;

type
  Tfrm_Empresa = class(TForm)
    panelBotones: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    pnl1: TPanel;
    Panel1: TPanel;
    frmBarraH22: TfrmBarraH2;
    cxPageControl1: TcxPageControl;
    cxTabDatos: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    cxtextRegFiscal: TcxDBTextEdit;
    EdithBtnArchivos: TcxDBButtonEdit;
    cxtextEmpre: TcxDBTextEdit;
    cxtextRazonSo: TcxDBTextEdit;
    cxMaskRFC: TcxDBMaskEdit;
    cxtextRegPat: TcxDBTextEdit;
    cxtextCodi: TcxDBTextEdit;
    cxtextRepLeg: TcxDBTextEdit;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    imgEmp: TcxDBImage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    cxtextCalle: TcxDBTextEdit;
    cxtextColonia: TcxDBTextEdit;
    cxtextMail: TcxDBTextEdit;
    cxDBHyperLinkEdit1: TcxDBHyperLinkEdit;
    cbbCiudad: TcxDBLookupComboBox;
    cxSpinCP: TcxDBSpinEdit;
    cxtextNoInt: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxMaskTel: TcxDBMaskEdit;
    cxtextLocalidad: TcxDBTextEdit;
    cxMapa: TdxMapControl;
    cxMapaImageTileLayer1: TdxMapImageTileLayer;
    cxMapaBingMapGeoCodingDataProvider1: TdxMapControlBingMapGeoCodingDataProvider;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Item11: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBColorComboBox1: TcxDBColorComboBox;
    cxImage3: TcxImage;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutControl5: TdxLayoutControl;
    EdithBtnCertificado: TcxDBButtonEdit;
    EdithBtnKey: TcxDBButtonEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutControl4: TdxLayoutControl;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBImage1: TcxDBImage;
    cxDBImage2: TcxDBImage;
    dxDBToggleSwitch2: TdxDBToggleSwitch;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem33: TdxLayoutItem;
    ImgCedula: TcxDBImage;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dsEmpresa: TDataSource;
    zEmpresa: TUniQuery;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    cxGrdDatos: TcxGrid;
    cxGridDatos: TcxGridDBTableView;
    cxCodigo: TcxGridDBColumn;
    cxTitulo: TcxGridDBColumn;
    cxRazon: TcxGridDBColumn;
    cxRfc: TcxGridDBColumn;
    cxRegimen: TcxGridDBColumn;
    cxImagen: TcxGridDBColumn;
    cxActivo: TcxGridDBColumn;
    cxLvlDatos: TcxGridLevel;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    tDialogo: TOpenDialog;
    ciudad: TZQuery;
    ds_ciudad: TDataSource;
    ciudadIdCiudad: TIntegerField;
    ciudadCiudad: TWideStringField;
    ciudadLeyendaCiudad: TWideStringField;
    ciudadCodigo: TWideStringField;
    ciudadIdEstado: TIntegerField;
    ciudadActivo: TWideStringField;
    ciudadPais: TWideStringField;
    ciudadEstado: TWideStringField;
    zMoneda: TUniQuery;
    dsMoneda: TDataSource;
    cxTabSheet4: TcxTabSheet;
    cxGridCuentasDBTableView1: TcxGridDBTableView;
    cxGridCuentasLevel1: TcxGridLevel;
    cxGridCuentasDBTableView1Column2: TcxGridDBColumn;
    cxGridCuentasDBTableView1Column1: TcxGridDBColumn;
    cuentas: TUniQuery;
    dsCuentas: TDataSource;
    cxGridCuentas: TcxGrid;
    btnAgregar: TcxButton;
    btnEditar: TcxButton;
    btnEliminar: TcxButton;
    PanelBTN: TPanel;
    PanelData: TPanel;
    cxSplitter1: TcxSplitter;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtCuenta: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    btnPostDet: TcxButton;
    btnCancelDet: TcxButton;
    Panel2: TPanel;
    zCiudad: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxMapaDblClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdithBtnKeyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ImgCedulaDblClick(Sender: TObject);
    procedure imgEmpDblClick(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cuentasAfterInsert(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnCancelDetClick(Sender: TObject);
    procedure btnPostDetClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cbbCiudadPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Empresa: Tfrm_Empresa;
  titulo : String;
  btnPermisos: String;

implementation
uses frm_Pedidos;

{$R *.dfm}

procedure Tfrm_Empresa.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure Tfrm_Empresa.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_EntradaERP;

        if (sender is TcxDBHyperLinkEdit) then
        TcxDBHyperLinkEdit(sender).Style.Color := global_color_EntradaERP;

    if (sender is TcxDBButtonEdit) then
        TcxDBButtonEdit(sender).Style.Color := global_color_EntradaERP;

    if (sender is TcxDBSpinEdit) then
        TcxDBSpinEdit(sender).Style.Color := global_color_EntradaERP;

    if (sender is TcxDBMaskEdit) then
        TcxDBMaskEdit(sender).Style.Color := global_color_EntradaERP;

    if (sender is TcxDBCurrencyEdit) then
        TcxDBCurrencyEdit(sender).Style.Color := global_color_EntradaERP;

end;

procedure Tfrm_Empresa.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is TcxDBHyperLinkEdit) then
        TcxDBHyperLinkEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is TcxDBButtonEdit) then
        TcxDBButtonEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is TcxDBSpinEdit) then
        TcxDBSpinEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is TcxDBMaskEdit) then
        TcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is TcxDBCurrencyEdit) then
        TcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

end;


procedure Tfrm_Empresa.btnAddClick(Sender: TObject);
begin
  try
    try
      zEmpresa.Append;
      ZeMPRESA.FieldByName('IdPadre').AsInteger := -5;

    finally
      cxPageControl1.ActivePageIndex := 0;
      cxLeyenda.Caption:= titulo +'[Agregando]';
      cxGrdDatos.Enabled := False;
      frmBarraH11.btnAddClick(Sender);
      pnl1.Visible := True;
      cxTabSheet4.TabVisible := False;
    end;
    except
    on E : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Empresas', 'Al crear un registro', 0);
    end;
  end;
end;

procedure Tfrm_Empresa.btnAgregarClick(Sender: TObject);
begin
  PanelData.Visible:=true;
  cuentas.Append;
end;

procedure Tfrm_Empresa.btnCancelClick(Sender: TObject);
begin
  try
    zEmpresa.Cancel;
  finally
    cxLeyenda.Caption:= titulo;
    cxGrdDatos.Enabled := True;
    frmBarraH11.btnActive;
    pnl1.Visible := False;
    PermisosBotones(frm_Empresa,btnPermisos);
  end;
end;

procedure Tfrm_Empresa.btnCancelDetClick(Sender: TObject);
begin
  Cuentas.Cancel;
  PanelData.Visible:=False;
end;

procedure Tfrm_Empresa.btnDeleteClick(Sender: TObject);
begin
  if zEmpresa.RecordCount > 0 then
  if MessageDlg('¿Desea eliminar el registro seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    try
      zEmpresa.Delete;

    except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Empresa', 'Al eliminar registro.', 0);
        end;
    end;
  end;
end;

procedure Tfrm_Empresa.btnEditarClick(Sender: TObject);
begin
 PanelData.Visible:=true;
 Cuentas.Edit;
end;

procedure Tfrm_Empresa.btnEditClick(Sender: TObject);
begin
  try
    try
      zEmpresa.Edit;
    finally
      cxLeyenda.Caption:= titulo +'[Editando]';
      cxGrdDatos.Enabled := False;
      frmBarraH11.btnEditClick(Sender);
      pnl1.Visible := True;
      cxTabSheet4.TabVisible := True;
      AsignarSQL(cuentas,'master_cuentas_empresa',pUpdate);
      FiltrarDataSet(cuentas,'IdEmpresa',[zEmpresa.FieldByName('IdEmpresa').AsInteger]);
      cuentas.Open;

    end;
    except
    on E : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Empresas', 'Al editar registro', 0);
    end;
  end;
end;

procedure Tfrm_Empresa.btnEliminarClick(Sender: TObject);
begin
if cuentas.RecordCount > 0 then
  if MessageDlg('¿Desea eliminar el registro seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    try
      Cuentas.Delete;

    except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuentas Bancarias', 'Al eliminar registro.', 0);
        end;
    end;
  end;
end;

procedure Tfrm_Empresa.btnPostClick(Sender: TObject);
begin
  try
    try
      if zEmpresa.State = dsEdit then
        cuentas.ApplyUpdates();

      zEmpresa.Post;

    finally
      cxLeyenda.Caption:= titulo;
      cxGrdDatos.Enabled := True;
      frmBarraH11.btnActive;
      pnl1.Visible := False;
      PermisosBotones(frm_Empresa,btnPermisos);
    end;
    except
    on E : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Departamentos', 'Al guardar registro', 0);
    end;
  end;
end;

procedure Tfrm_Empresa.btnPostDetClick(Sender: TObject);
begin
  Cuentas.Post;
  btnCancelDetClick(Sender);
end;

procedure Tfrm_Empresa.btnRefreshClick(Sender: TObject);
begin
   zEmpresa.Refresh;
end;

procedure Tfrm_Empresa.cbbCiudadPropertiesEditValueChanged(Sender: TObject);
begin
 if zCiudad.Active then
  if not (cbbCiudad.EditValue=null) then
    if zCiudad.Locate('IdCiudad',cbbCiudad.EditValue,[]) and (zEmpresa.State IN [DSiNSERT,DSeDIT]) then
    begin
      zEmpresa.FieldByName('IdEstado').AsInteger := zCiudad.FieldByName('IdEstado').AsInteger;
      zEmpresa.FieldByName('IdPais').AsInteger := zCiudad.FieldByName('IdPais').AsInteger;
    end;


end;

procedure Tfrm_Empresa.cuentasAfterInsert(DataSet: TDataSet);
begin
    cuentas.FieldByName('IdCuenta').AsInteger := 0;
  cuentas.FieldByName('IdEmpresa').AsInteger := zEmpresa.FieldByName('IdEmpresa').AsInteger;
end;

procedure Tfrm_Empresa.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    if tDialogo.Execute then
    begin
      EdithBtnCertificado.Text := tDialogo.FileName;
      zEmpresa.FieldByName('Certificado').AsString := tDialogo.FileName;
    end;
  except
    ;
  end;
end;

procedure Tfrm_Empresa.cxMapaDblClick(Sender: TObject);
var
  theGeoRect: TdxMapControlGeoRect ;
begin
  theGeoRect.BottomRight.Longitude := cxMapaBingMapGeoCodingDataProvider1.UserLocation.Longitude ;
  cxMapa.ZoomToGeoRect(theGeoRect) ;
  cxMapa.ZoomLevel := cxMapa.ZoomLevel + 1;
end;

procedure Tfrm_Empresa.EdithBtnKeyPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   try
    if tDialogo.Execute then
    begin
      EdithBtnkey.Text := tDialogo.FileName;
      zEmpresa.FieldByName('Llave').AsString := tDialogo.FileName;
    end;
  except
    ;
  end;
end;

procedure Tfrm_Empresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxGridDatos.StoreToIniFile(ExtractFilePath(Application.ExeName)+'CWS\'+self.Name);
  except
    ;
  end;

  if global_frmActivo = 'frmPedidos' then
  begin
    frmPedidos.Cuentas.Refresh;
  end;
//  guardar_leer_grid(cxGridDatos,frm_Empresa,1);
//  guardar_leer_grid(cxGridCuentasDBTableView1,frm_Empresa,1);
  Action:= cafree;

end;

procedure Tfrm_Empresa.FormShow(Sender: TObject);
var
    paramNames : string;
    listValues : array of variant;
    theGeoRect: TdxMapControlGeoRect ;
    //theCenter : TdxPointDouble;
begin
  btnPermisos := global_btnPermisos;
  try
    if not DirectoryExists(ExtractFilePath(Application.ExeName)+'CWS') then
    begin
      CreateDir(ExtractFilePath(Application.ExeName)+'CWS');
    end;
    cxGridDatos.RestoreFromIniFile(ExtractFilePath(Application.ExeName)+'CWS\'+self.Name);
  except
        ;
  end;

  try
    paramNames:= 'IdEmpresa,bIdEmpresa,IdPadre';
    listValues := ['-1','-1','-1'];
    zEmpresa.Active := False;
    AsignarSQL(zEmpresa,'master_empresa',pUpdate);
    FiltrarDataSet(zEmpresa,paramNames,listValues);
    zEmpresa.Open;

    AsignarSQL(zCiudad,'master_ciudad',pUpdate);
    FiltrarDataSet(zCiudad,'Activo',['Si']);
    zCiudad.Open;
//    ciudad.Active := False;
//    ciudad.ParamByName('IdCiudad').AsString := '-1';
//    ciudad.ParamByName('Activo').AsString := 'Si';
//    ciudad.ParamByName('IdEstado').AsString := '-1';
//    if ciudad.Active then
//      ciudad.Refresh
//    else
//      ciudad.Open;

    if zMoneda.Active then
      zMoneda.Refresh
    else
      zMoneda.Open;

    cxGrdDatos.Enabled := True;
    titulo := 'Empresas';
    cxLeyenda.Caption := titulo;
    pnl1.Visible := False;

    PermisosBotones(frm_Empresa,btnPermisos);
    //theGeoRect.BottomRight.Longitude := cxMapaBingMapGeoCodingDataProvider1.UserMapView.NorthLatitude ;
    //theGeoRect.BottomRight.Latitude  := cxMapaBingMapGeoCodingDataProvider1.UserMapView.WestLongitude ;
    //cxMapa.ZoomToGeoRect(theGeoRect);
  except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Departamentos', 'Cargar Datos', 0);
           frmBarraH11.btnAddClick(Sender);
        end;
  end;
//  guardar_leer_grid(cxGridDatos,frm_Empresa,0);
//  guardar_leer_grid(cxGridCuentasDBTableView1,frm_Empresa,0);


end;


procedure Tfrm_Empresa.ImgCedulaDblClick(Sender: TObject);
begin
  tcxImage(ImgCedula).LoadFromFile;
end;

procedure Tfrm_Empresa.imgEmpDblClick(Sender: TObject);
begin
  tcxImage(ImgEmp).LoadFromFile;
end;

end.
