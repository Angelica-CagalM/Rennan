unit frm_Compradores;
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
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch;
type
  TfrmCompradores = class(TForm)
    ds_compradores: TDataSource;
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
    cxSplitter1: TcxSplitter;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGDatos: TcxGroupBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxNombre: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    zqCompradores: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxLeyenda: TcxLabel;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    grid_almacen: TcxGrid;
    grid_almacenDBTableView1: TcxGridDBTableView;
    grid_Codigo: TcxGridDBColumn;
    grid_NombreC: TcxGridDBColumn;
    grid_NumeroPersonal: TcxGridDBColumn;
    grid_almacenLevel1: TcxGridLevel;
    grid_Grupo: TcxGridDBColumn;
    grid_Activo: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxApellidos: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxGrupo: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxNumeroPersonal: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    cxPrincipal: TdxDBToggleSwitch;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
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
    procedure grid_almacenDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ExportaraExcel1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompradores : TfrmCompradores;
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

procedure TfrmCompradores.EnterControl(Sender: TObject);
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

procedure TfrmCompradores.SalidaControl(Sender: TObject);
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

procedure TfrmCompradores.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
    try
      titulo:='Compradores';
      frmBarraH21.btnCancel.Click ;
      zqCompradores.Active := False ;
      AsignarSQL(zqCompradores,'alm_compradores',pUpdate);
      FiltrarDataSet(zqCompradores, 'IdComprador,Codigo',['-1','-1']);
      zqCompradores.Open;
      frmBarraH11.btnPrinter.Enabled:=false;
       frmBarraH11.btnDetalle.Enabled:=false;
       frmBarraH11.btnExporta.Enabled:=false;
      PermisosBotones(frmCompradores,btnPermisos);
    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Compradores', 'Al iniciar el formulario', 0);
    end;
 end;
end;

procedure TfrmCompradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zqCompradores.Cancel ;
  action := cafree ;
end;

procedure TfrmCompradores.grid_proveedoresCellClick(Column: TColumn);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmCompradores.grid_almacenDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmCompradores.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_almacen.Enabled:=false;
       zqCompradores.Append ;
     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Compradores', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmCompradores.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
      zqCompradores.Edit ;
      grid_almacen.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Compradores', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmCompradores.frmBarra1btnPostClick(Sender: TObject);
var
    nombres, cadenas: TStringList;
    sId : string;
begin


     if zqCompradores.State = dsInsert then

    //continuainserccion de datos
     try

        sId := zqCompradores.FieldByName('Codigo').AsString;
        zqCompradores.Post ;

        zqCompradores.Locate('codigo', sId,[]);

        try
//          frmOrdenes_compra.zqProveedores.Refresh;
//          frmOrdenes_compra.cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := zqAlmacen.FieldByName('IdProveedor').AsInteger;
        Except
        end;

     except
       on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Compradores', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
     end;

     grid_almacen.Enabled:=True;
     frmBarraH21.btnCancel.Click;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmCompradores.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  zqCompradores.Cancel ;
  grid_almacen.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Plantas', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmCompradores.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if grid_almacenDBTableView1.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if grid_almacenDBTableView1.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin


            try
              zqCompradores.Delete ;

              if (global_frmActivo = 'frm_Compradores') then
              begin
                //frmPedidos.zqAlmacen.Refresh;
//                frmPedidos.tsIdProveedor.SetFocus;
              end;

            except
              on e : exception do
              begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Compradores', 'Al eliminar registro', 0);
              end;
            end

        end;
      end;
    end;
  end;
  if (global_frmActivo = 'frm_Compradores') or (global_frmActivo = 'frm_Compradores') then
  begin
   global_frmActivo := 'ninguno';
   frmBarraH21.btnCancel.Click;
  end;
end;

procedure TfrmCompradores.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  zqCompradores.Active := False ;
  zqCompradores.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Compradores', 'Al actualizar grid', 0);
  end;
 end;
end;


procedure TfrmCompradores.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmCompradores.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmCompradores.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmCompradores.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    cxGDatos.Caption:='Añadiendo';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    grid_almacen.Enabled:=False;
    zqCompradores.Append;


end;

procedure TfrmCompradores.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.btnActive;
    frmBarraH11.btnPrinter.Enabled:=false;
    frmBarraH11.btnDetalle.Enabled:=false;
    frmBarraH11.btnExporta.Enabled:=false;
    grid_almacen.Enabled:=True;
    ds_compradores.DataSet.Cancel;
    PermisosBotones(frmCompradores,btnPermisos);
end;

procedure TfrmCompradores.btnDeleteClick(Sender: TObject);
begin
    If zqCompradores.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        ds_compradores.DataSet.Delete;
        zqCompradores.ApplyUpdates();
      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Compradores', 'Al eliminar registro', 0);
        end;
      end
    end
end;



procedure TfrmCompradores.btnEditClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    cxGDatos.Caption:='Editando';
    frmBarraH11.btnEditClick(Sender);
    Panel2.Visible:=True;
    grid_almacen.Enabled:=False;
    zqCompradores.Edit;
//    cxDescripcion.SetFocus;
end;



procedure TfrmCompradores.btnPostClick(Sender: TObject);
begin

   if zqCompradores.State = dsInsert then
    begin
    try
              zqCompradores.post;
              zqCompradores.Refresh ;

        Except
           on e : exception do
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Compradores', 'Al salvar registro', 0);
        end;
    end;
    if zqCompradores.State = dsEdit then
    begin
         try
                  zqCompradores.Post;

                  zqCompradores.Refresh ;
         except
            on e : exception do
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Planta', 'Al salvar registro', 0);

         end;
    end;

  cxLeyenda.Caption:=titulo;
  btnCancelClick(sender);
  grid_almacen.enabled:= true;
  PermisosBotones(frmCompradores,btnPermisos);
end;



procedure TfrmCompradores.btnRefreshClick(Sender: TObject);
begin
   zqCompradores.Refresh;
end;

procedure TfrmCompradores.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmCompradores.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

procedure TfrmCompradores.ExportaraExcel1Click(Sender: TObject);
begin
//  ExportExcelPersonalizado(zq_contratos,grid_almacenDBTableView1,'Proveedores','Catalogo de Proveedores');
end;

procedure TfrmCompradores.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;

procedure TfrmCompradores.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmCompradores.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.
