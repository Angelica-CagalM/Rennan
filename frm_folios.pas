unit frm_folios;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, global, db, StdCtrls,
  Mask, DBCtrls, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, unittbotonespermisos,UnitValidaTexto,
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
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch;
type
  TfrmFolios = class(TForm)
    ds_folios: TDataSource;
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
    grid_folios: TcxGrid;
    grid_foliosDBTableView1: TcxGridDBTableView;
    grid_foliosLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGDatos: TcxGroupBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxCNombre: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxCampo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    zqFolios: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxLeyenda: TcxLabel;
    cxPrincipal: TdxDBToggleSwitch;
    dxLayoutItem3: TdxLayoutItem;
    cxTNombre: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxPrefijo: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxTabla: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    zqTablas: TUniQuery;
    ds_tablas: TDataSource;
    cxInicia: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxNDig: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxValor: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    grid_foliosDBTableView1Column1: TcxGridDBColumn;
    grid_foliosDBTableView1Column2: TcxGridDBColumn;
    grid_foliosDBTableView1Column3: TcxGridDBColumn;
    grid_foliosDBTableView1Column4: TcxGridDBColumn;
    grid_foliosDBTableView1Column5: TcxGridDBColumn;
    grid_foliosDBTableView1Column6: TcxGridDBColumn;
    grid_foliosDBTableView1Column7: TcxGridDBColumn;
    grid_foliosDBTableView1Column8: TcxGridDBColumn;
    cxEmpresa: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    zqEmpresa: TUniQuery;
    ds_empresa: TDataSource;
    cbEmbarcacion: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    zEmbarcacion: TUniQuery;
    dsEmbarcacion: TDataSource;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDepartamento: TcxDBLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    cxComplemento: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    grid_foliosDBTableView1Column9: TcxGridDBColumn;
    grid_foliosDBTableView1Column10: TcxGridDBColumn;
    ds_depatamento: TDataSource;
    zDepartamento: TUniQuery;
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
    procedure grid_foliosDBTableView1CellClick(
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFolios : TfrmFolios;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco   : string;
  bCuentasBanco  : boolean;
  titulo         : string;

implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas;
{$R *.dfm}

procedure TFrmFolios.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmFolios.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

end;

procedure TFrmFolios.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;
end;


procedure TfrmFolios.FormShow(Sender: TObject);
begin
    try
      titulo:='Autofolios';
      frmBarraH21.btnCancel.Click ;
      zqFolios.Active := False ;
      AsignarSQL(zqFolios,'master_cnf_folios',pUpdate);
      FiltrarDataSet(zqFolios, 'Id,Tabla,Aplica',['-1','-1','-1']);
      zqFolios.Open;
      zqTablas.SQL.Clear;
//      zqTablas.SQL.Add('select case when table_comment = '+''''+''+''''+' then table_name else table_comment end as Tablas  from information_schema.tables where table_type ='+''''+'BASE TABLE'+'''');
      zqTablas.SQL.Add('select case when table_name = '+QuotedStr('')+' then table_comment else table_name end as Tablas  from information_schema.tables where table_type ='+''''+'BASE TABLE'+'''');
      zqTablas.Open;
      zqEmpresa.Open;

      zEmbarcacion.SQL.Text:='select * from master_embarcaciones';
      zEmbarcacion.Open;

      zDepartamento.Active := False ;
      AsignarSQL(zDepartamento,'master_departamento',pUpdate);
      zDepartamento.Open;


    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Almacenes', 'Al iniciar el formulario', 0);
    end;
 end;
 guardar_leer_grid(grid_foliosDBTableView1,frmFolios,0);

end;

procedure TfrmFolios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(grid_foliosDBTableView1,frmFolios,1);
  zqFolios.Cancel ;
  action := cafree ;
end;

procedure TfrmFolios.grid_proveedoresCellClick(Column: TColumn);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmFolios.grid_foliosDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmFolios.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_folios.Enabled:=false;
       zqFolios.Append ;
       zqFolios.FieldValues['Calle'] := '-';
       zqFolios.FieldValues['Interior'] := '0';
       zqFolios.FieldValues['Exterior'] := '0';
       zqFolios.FieldValues['Colonia'] := '-';
       zqFolios.FieldValues['CodigoPostal'] := '00000';
       zqFolios.FieldValues['IdCiudad']    := '0';
       zqFolios.FieldValues['IdEstado']    := '0';
       zqFolios.FieldValues['Rfc']         := '-';
       zqFolios.FieldValues['Telefono']   := '(000)0000000';
//       cxCiudad.DataBinding.DataSource.DataSet.FieldByName('IdCiudad').AsInteger := zqCiudades.FieldByName('IdCiudad').AsInteger;

     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmFolios.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
      zqFolios.Edit ;
      grid_folios.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmFolios.frmBarra1btnPostClick(Sender: TObject);
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

     if zqFolios.State = dsInsert then
       if ValidaExiste('', 'master_pais', 'Codigo', zqFolios.FieldByName('Codigo').AsString, 'Código') then
          exit;

    //continuainserccion de datos
     try
//        if not validaTexto(nombres, cadenas, 'Codigo', cxCodigo.Text) then
//        begin
//            MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
//            exit;
//        end;
        sId := zqFolios.FieldByName('Codigo').AsString;
        zqFolios.Post ;

        zqFolios.Locate('codigo', sId,[]);

        try
//          frmOrdenes_compra.zqProveedores.Refresh;
//          frmOrdenes_compra.cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := zqFolios.FieldByName('IdProveedor').AsInteger;
        Except
        end;

     except
       on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
     end;

     grid_folios.Enabled:=True;
     frmBarraH21.btnCancel.Click;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmFolios.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  zqFolios.Cancel ;
  grid_folios.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmFolios.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if grid_foliosDBTableView1.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if grid_foliosDBTableView1.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin


            try
              zqFolios.Delete ;

              if (global_frmActivo = 'frm_pedidos') then
              begin
                //frmPedidos.zqFolios.Refresh;
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

procedure TfrmFolios.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  zqFolios.Active := False ;
  zqFolios.Open
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

procedure TfrmFolios.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmFolios.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmFolios.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmFolios.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    cxGDatos.Caption:='Añadiendo';
    frmBarraH11.btnAddClick(Sender);
  // frmBarraH11.Visible:=False;
    cxSplitter1.Visible := True;
    panel2.Visible:=True;
    grid_folios.Enabled:=False;
    zqFolios.Append;
    cxTNombre.SetFocus;
end;

procedure TfrmFolios.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    cxSplitter1.Visible := False;
    Panel2.Visible:=False;
    frmBarraH11.btnActive;
    frmBarraH11.Visible:=True;
    frmBarraH11.btnExporta.Enabled := False;
    frmBarraH11.btnPrinter.Enabled := False;
    frmBarraH11.btnDetalle.Enabled := False;
    grid_folios.Enabled:=True;
    ds_folios.DataSet.Cancel;
end;

procedure TfrmFolios.btnDeleteClick(Sender: TObject);
begin
    If zqFolios.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        ds_folios.DataSet.Delete;
        zqFolios.ApplyUpdates();
      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Almacenes', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmFolios.btnEditClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    cxGDatos.Caption:='Editando';
    frmBarraH11.btnEditClick(Sender);
    frmBarraH21.btnActive;
    cxSplitter1.Visible := True;
    Panel2.Visible:=True;
    grid_folios.Enabled:=False;
    zqFolios.Edit;
    cxTNombre.SetFocus;
end;

procedure TfrmFolios.btnPostClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    cxSplitter1.Visible := False;
    Panel2.Visible:=False;
    frmBarraH11.Visible:=True;
    frmBarraH11.btnExporta.Enabled := False;
    frmBarraH11.btnPrinter.Enabled := False;
    frmBarraH11.btnDetalle.Enabled := False;
    grid_folios.Enabled:=True;
    if cxDepartamento.Text = '' then
       zqFolios.FieldByName('IdDepartamento').AsInteger := 0;

    if cbembarcacion.Text = '' then
       zqFolios.FieldByName('IdEmbarcacion').AsInteger := 0;

    ds_folios.DataSet.Post;
    ds_folios.DataSet.Refresh;
end;

procedure TfrmFolios.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmFolios.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

procedure TfrmFolios.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;

procedure TfrmFolios.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

end.
