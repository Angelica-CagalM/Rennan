unit frm_tipos_nomina;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, global, db, StdCtrls,
  Mask, DBCtrls, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, UnitValidaTexto,
  unitactivapop,StrUtils, UnitValidacion, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExportaExcel, dxBarBuiltInMenu, cxPC, cxButtons,masUtilerias,
  cxPCdxBarPopupMenu, utilerias, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, unitGenerales,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxLayoutcxEditAdapters, frm_barraH2, frm_barraH1, MemDS, DBAccess, Uni,
  dxLayoutContainer, cxDBEdit, cxGroupBox, dxLayoutControl, cxSplitter, cxLabel,
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, unitReportes;
type
  TfrmTiposNomina = class(TForm)
    ds_nominas: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    grid_nominas: TcxGrid;
    grid_nominasDBTableView1: TcxGridDBTableView;
    grid_nominasLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGDatos: TcxGroupBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxTitulo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDescripcion: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    zqNominas: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxLeyenda: TcxLabel;
    cxActivo: TdxDBToggleSwitch;
    dxLayoutItem9: TdxLayoutItem;
    cxTipoC: TcxDBComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxTipo: TcxDBComboBox;
    dxLayoutItem8: TdxLayoutItem;
    grid_nominasDBTableView1Column1: TcxGridDBColumn;
    grid_nominasDBTableView1Column2: TcxGridDBColumn;
    grid_nominasDBTableView1Column3: TcxGridDBColumn;
    grid_nominasDBTableView1Column4: TcxGridDBColumn;
    grid_nominasDBTableView1Column5: TcxGridDBColumn;
    grid_nominasDBTableView1Column6: TcxGridDBColumn;
    grid_nominasDBTableView1Column7: TcxGridDBColumn;
    cxEtiqueta: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDias: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxTabla: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxMoneda: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxEmpresa: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    zqMoneda: TUniQuery;
    zqEmpresa: TUniQuery;
    ds_moneda: TDataSource;
    ds_empresa: TDataSource;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_proveedoresCellClick(Column: TColumn);
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
    procedure Imprimir1Click(Sender: TObject);
    procedure grid_nominasDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Copiar1Click(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTiposNomina : TfrmTiposNomina;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco   : string;
  bCuentasBanco  : boolean;
  titulo         : string;
  btnPermisos    : String;
implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas;
{$R *.dfm}

procedure TfrmTiposNomina.EnterControl(Sender: TObject);
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

procedure TfrmTiposNomina.SalidaControl(Sender: TObject);
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

procedure TfrmTiposNomina.FormShow(Sender: TObject);
begin
    btnPermisos := global_btnPermisos;
    try
      titulo:='Tipos de Nómina';
      frmBarraH21.btnCancel.Click ;
      zqNominas.Active := False ;
      AsignarSQL(zqNominas,'rh_tiponomina',pUpdate);
      FiltrarDataSet(zqNominas, 'Id,IdMoneda,IdEmpresa',['-1','-1','-1']);
      zqNominas.Open;
      AsignarSQL(zqMoneda,'master_moneda',pUpdate);
      FiltrarDataSet(zqMoneda, 'IdMoneda,Codigo,Activo',['-1','-1','Si']);
      zqMoneda.Open;
      //zqEmpresa.SQL.Add('select IdEmpresa,FK_Titulo as Empresas from master_empresa where Activo = "Si"');
      zqEmpresa.Open;

      PermisosBotones(frmTiposNomina,btnPermisos);
      grid_nominasDBTableView1.ApplyBestFit();
    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Documentos', 'Al iniciar el formulario', 0);
    end;
 end;

 guardar_leer_grid(grid_nominasDBTableView1,frmTiposNomina,0);
end;

procedure TfrmTiposNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(grid_nominasDBTableView1,frmTiposNomina,1);
  zqNominas.Cancel ;
  action := cafree ;
end;

procedure TfrmTiposNomina.grid_proveedoresCellClick(Column: TColumn);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmTiposNomina.grid_nominasDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmTiposNomina.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_nominas.Enabled:=false;
       zqNominas.Append ;
       zqNominas.FieldValues['Calle'] := '-';
       zqNominas.FieldValues['Interior'] := '0';
       zqNominas.FieldValues['Exterior'] := '0';
       zqNominas.FieldValues['Colonia'] := '-';
       zqNominas.FieldValues['CodigoPostal'] := '00000';
       zqNominas.FieldValues['IdCiudad']    := '0';
       zqNominas.FieldValues['IdEstado']    := '0';
       zqNominas.FieldValues['Rfc']         := '-';
       zqNominas.FieldValues['Telefono']   := '(000)0000000';
//       cxCiudad.DataBinding.DataSource.DataSet.FieldByName('IdCiudad').AsInteger := zqCiudades.FieldByName('IdCiudad').AsInteger;


     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmTiposNomina.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
      zqNominas.Edit ;
      grid_nominas.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmTiposNomina.frmBarra1btnPostClick(Sender: TObject);
var
    nombres, cadenas: TStringList;
    sId : string;
begin
    //empieza validacion
    nombres:=TStringList.Create;  cadenas:=TStringList.Create;

    nombres.Add('Nombre');
    nombres.Add('Razon Social');
    nombres.Add('RFC');
    nombres.Add('Calle');
    nombres.Add('No. Interior');
    nombres.Add('No. Exterior');
    nombres.Add('Colonia');
    nombres.Add('C.P.');
    nombres.Add('Ciudad');

     if zqNominas.State = dsInsert then
       if ValidaExiste('', 'master_pais', 'Codigo', zqNominas.FieldByName('Codigo').AsString, 'Código') then
          exit;

    //continuainserccion de datos
     try
//        if not validaTexto(nombres, cadenas, 'Codigo', cxCodigo.Text) then
//        begin
//            MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
//            exit;
//        end;
        sId := zqNominas.FieldByName('Codigo').AsString;
        zqNominas.Post ;

        zqNominas.Locate('codigo', sId,[]);

        try
//          frmOrdenes_compra.zqProveedores.Refresh;
//          frmOrdenes_compra.cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := zqNominas.FieldByName('IdProveedor').AsInteger;
        Except
        end;

     except
       on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
     end;

     grid_nominas.Enabled:=True;
     frmBarraH21.btnCancel.Click;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmTiposNomina.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  zqNominas.Cancel ;
  PermisosBotones(frmTiposNomina,btnPermisos);
  grid_nominas.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmTiposNomina.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if grid_nominasDBTableView1.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if grid_nominasDBTableView1.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin


            try
              zqNominas.Delete ;

              if (global_frmActivo = 'frm_pedidos') then
              begin
                //frmPedidos.zqNominas.Refresh;
//                frmPedidos.tsIdProveedor.SetFocus;
              end;

            except
              on e : exception do
              begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al eliminar registro', 0);
              end;
            end

        end;
      end;
    end;
  end;
  if (global_frmActivo = 'frm_consumibles') or (global_frmActivo = 'frm_pedidos') then
  begin
   global_frmActivo := 'ninguno';
   frmBarraH21.btnCancel.Click;
  end;
end;

procedure TfrmTiposNomina.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  zqNominas.Active := False ;
  zqNominas.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al actualizar grid', 0);
  end;
 end;
end;

//procedure TfrmProveedores.frmBarra1btnExitClick(Sender: TObject);
//begin
//   frmBarraH11.btnExitClick(Sender);
//   close
//end;

procedure TfrmTiposNomina.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmTiposNomina.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmTiposNomina.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmTiposNomina.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    grid_nominas.Enabled:=False;
    zqNominas.Append;
    if zqEmpresa.RecordCount>0 then
      cxEmpresa.ItemIndex:=0;
    cxTitulo.SetFocus;
end;

procedure TfrmTiposNomina.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.btnActive;
    grid_nominas.Enabled:=True;
    ds_nominas.DataSet.Cancel;
    PermisosBotones(frmTiposNomina,btnPermisos);
end;

procedure TfrmTiposNomina.btnDeleteClick(Sender: TObject);
begin
    If zqNominas.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        ds_nominas.DataSet.Delete;
        zqNominas.ApplyUpdates();
      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Documentos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmTiposNomina.btnEditClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnEditClick(Sender);
    Panel2.Visible:=True;
    grid_nominas.Enabled:=False;
    zqNominas.Edit;
    cxTitulo.SetFocus;
end;

procedure TfrmTiposNomina.btnPostClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.Visible:=True;
    grid_nominas.Enabled:=True;
    zqNominas.FieldByName('IdTipoTablaISPT').AsString:='';
    ds_nominas.DataSet.Post;
    ds_nominas.DataSet.Refresh;
    PermisosBotones(frmTiposNomina,btnPermisos);
end;

procedure TfrmTiposNomina.btnPrinterClick(Sender: TObject);
begin
  if zqNominas.RecordCount > 0 then
  begin
    generar_reporte_grid(grid_nominasDBTableView1,'Tipos de Nóminas');
  end;

end;

procedure TfrmTiposNomina.btnRefreshClick(Sender: TObject);
begin
   cxEmpresa.Refresh;
end;

procedure TfrmTiposNomina.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmTiposNomina.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

procedure TfrmTiposNomina.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;

procedure TfrmTiposNomina.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmTiposNomina.cxButton1Click(Sender: TObject);
begin
    //ExportExcelPersonalizado(zqNominas,grid_nominasDBTableView1,'Tipos de Nómina','Tipos de Nómina');
end;

procedure TfrmTiposNomina.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.
