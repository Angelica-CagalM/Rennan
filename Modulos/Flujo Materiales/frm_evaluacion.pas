unit frm_evaluacion;
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
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, cxCalendar;
type
  TfrmEvaluacion = class(TForm)
    ds_evalua: TDataSource;
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
    grid_evalua: TcxGrid;
    grid_evaluaDBTableView1: TcxGridDBTableView;
    grid_evaluaLevel1: TcxGridLevel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGDatos: TcxGroupBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    zqEvalua: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxLeyenda: TcxLabel;
    grid_evaluaDBTableView1Column1: TcxGridDBColumn;
    grid_evaluaDBTableView1Column2: TcxGridDBColumn;
    grid_evaluaDBTableView1Column3: TcxGridDBColumn;
    grid_evaluaDBTableView1Column4: TcxGridDBColumn;
    cxTResp: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxPEntrega: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxSGC: TdxDBToggleSwitch;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDescripcion1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxCert1: TdxDBToggleSwitch;
    dxLayoutItem5: TdxLayoutItem;
    cxNoCert1: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDate1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxGSeg: TcxGroupBox;
    dxLayoutItem8: TdxLayoutItem;
    cxGP: TcxGroupBox;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxSGA: TdxDBToggleSwitch;
    dxLayoutItem17: TdxLayoutItem;
    cxDescripcion3: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxCert3: TdxDBToggleSwitch;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxNoCert3: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxDate3: TcxDBDateEdit;
    dxLayoutItem21: TdxLayoutItem;
    dxDBToggleSwitch5: TdxDBToggleSwitch;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxSGS: TdxDBToggleSwitch;
    dxLayoutItem9: TdxLayoutItem;
    cxDescripcion2: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxCert2: TdxDBToggleSwitch;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxNoCert2: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxDate2: TcxDBDateEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxDBToggleSwitch6: TdxDBToggleSwitch;
    dxLayoutItem15: TdxLayoutItem;
    zqEServ: TUniQuery;
    zqESeg: TUniQuery;
    zqEAmb: TUniQuery;
    ds_eserv: TDataSource;
    ds_eseg: TDataSource;
    ds_eamb: TDataSource;
    dxLayoutItem23: TdxLayoutItem;
    cxProveedor: TcxDBLookupComboBox;
    zqProveedor: TUniQuery;
    ds_proveedor: TDataSource;
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
    procedure grid_evaluaDBTableView1CellClick(
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
    procedure dxLayoutItem4CaptionClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEvaluacion : TfrmEvaluacion;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco   : string;
  bCuentasBanco  : boolean;
  titulo         : string;
  btnPermisos    :String;
implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas;
{$R *.dfm}

procedure TfrmEvaluacion.EnterControl(Sender: TObject);
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

procedure TfrmEvaluacion.SalidaControl(Sender: TObject);
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

procedure TfrmEvaluacion.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
    try
      titulo:='Evaluación Inicial';
      frmBarraH21.btnCancel.Click ;
      zqEvalua.Active := False ;
      zqEvalua.SQL.Add('select esr.IdProveedor,esr.sDescripcion as SGC, (select esg.sDescripcion from evalua_seguridad_pro as esg where esg.IdProveedor=esr.IdProveedor) as SGS, '+
        '(select ea.sDescripcion from evalua_ambiental_pro as ea where ea.IdProveedor=esr.IdProveedor) as SGA from evalua_servicio_pro as esr');
      zqEvalua.Open;
      zqEServ.SQL.Add('select * from evalua_servicio_pro');
      zqESeg.SQL.Add('select * from evalua_seguridad_pro');
      zqEAmb.SQL.Add('select * from evalua_ambiental_pro');
      zqProveedor.SQL.Add('select IdProveedor,RazonSocial as Proveedores from master_proveedores');
      zqProveedor.Open;
      zqEServ.Open;
      zqESeg.Open;
      zqEAmb.Open;
      PermisosBotones(frmEvaluacion, btnPermisos);
    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Evaluación Inicial', 'Al iniciar el formulario', 0);
    end;
 end;
 guardar_leer_grid(grid_evaluaDBTableView1,frmEvaluacion,0);
end;

procedure TfrmEvaluacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(grid_evaluaDBTableView1,frmEvaluacion,1);
  zqEvalua.Cancel ;
  action := cafree ;
end;

procedure TfrmEvaluacion.grid_proveedoresCellClick(Column: TColumn);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmEvaluacion.grid_evaluaDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmEvaluacion.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);

       grid_evalua.Enabled:=false;
       zqEvalua.Append ;
       zqEvalua.FieldValues['Calle'] := '-';
       zqEvalua.FieldValues['Interior'] := '0';
       zqEvalua.FieldValues['Exterior'] := '0';
       zqEvalua.FieldValues['Colonia'] := '-';
       zqEvalua.FieldValues['CodigoPostal'] := '00000';
       zqEvalua.FieldValues['IdCiudad']    := '0';
       zqEvalua.FieldValues['IdEstado']    := '0';
       zqEvalua.FieldValues['Rfc']         := '-';
       zqEvalua.FieldValues['Telefono']   := '(000)0000000';
//       cxCiudad.DataBinding.DataSource.DataSet.FieldByName('IdCiudad').AsInteger := zqCiudades.FieldByName('IdCiudad').AsInteger;

     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Evaluación Inicial', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmEvaluacion.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
      zqEvalua.Edit ;
      grid_evalua.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Evaluación Inicial', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;

     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmEvaluacion.frmBarra1btnPostClick(Sender: TObject);
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

     if zqEvalua.State = dsInsert then
       if ValidaExiste('', 'master_pais', 'Codigo', zqEvalua.FieldByName('Codigo').AsString, 'Código') then
          exit;

    //continuainserccion de datos
     try
//        if not validaTexto(nombres, cadenas, 'Codigo', cxCodigo.Text) then
//        begin
//            MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
//            exit;
//        end;
        sId := zqEvalua.FieldByName('Codigo').AsString;
        zqEvalua.Post ;

        zqEvalua.Locate('codigo', sId,[]);

        try
//          frmOrdenes_compra.zqProveedores.Refresh;
//          frmOrdenes_compra.cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := zqEvalua.FieldByName('IdProveedor').AsInteger;
        Except
        end;

     except
       on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Evaluación Inicial', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
     end;

     grid_evalua.Enabled:=True;
     frmBarraH21.btnCancel.Click;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmEvaluacion.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  zqEvalua.Cancel ;
  PermisosBotones(frmEvaluacion,btnPermisos);
  grid_evalua.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Evaluación Inicial', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmEvaluacion.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if grid_evaluaDBTableView1.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if grid_evaluaDBTableView1.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin


            try
              zqEvalua.Delete ;

              if (global_frmActivo = 'frm_pedidos') then
              begin
                //frmPedidos.zqEvalua.Refresh;
//                frmPedidos.tsIdProveedor.SetFocus;
              end;

            except
              on e : exception do
              begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Evaluación Inicial', 'Al eliminar registro', 0);
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

procedure TfrmEvaluacion.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  zqEvalua.Active := False ;
  zqEvalua.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Evaluación Inicial', 'Al actualizar grid', 0);
  end;
 end;
end;

//procedure TfrmProveedores.frmBarra1btnExitClick(Sender: TObject);
//begin
//   frmBarraH11.btnExitClick(Sender);
//   close
//end;

procedure TfrmEvaluacion.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmEvaluacion.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmEvaluacion.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmEvaluacion.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    grid_evalua.Visible:=False;
    panel2.Visible:=True;
    panel2.Align:=alClient;

    zqEvalua.ReadOnly:=False;
    zqEvalua.Append;
    zqEServ.Append;
    zqESeg.Append;
    zqEAmb.Append;
    cxTResp.SetFocus;
end;

procedure TfrmEvaluacion.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.btnActive;
    grid_evalua.Visible:=True;
    ds_evalua.DataSet.Cancel;
end;

procedure TfrmEvaluacion.btnDeleteClick(Sender: TObject);
begin
    If zqEvalua.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        ds_evalua.DataSet.Delete;
        zqEvalua.ApplyUpdates();
      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Documentos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmEvaluacion.btnEditClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnEditClick(Sender);
    grid_evalua.Visible:=False;
    Panel2.Visible:=True;
    Panel2.Align:=alClient;
    zqEServ.Edit;
    zqESeg.Edit;
    zqEAmb.Edit;
    cxTResp.SetFocus;
end;

procedure TfrmEvaluacion.btnPostClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    grid_evalua.Visible:=True;
    zqEServ.FieldByName('IdProveedor').AsInteger:=cxProveedor.EditValue;
    zqESeg.FieldByName('IdProveedor').AsInteger:=cxProveedor.EditValue;
    zqEAmb.FieldByName('IdProveedor').AsInteger:=cxProveedor.EditValue;
    ds_eserv.DataSet.Post;
    ds_eseg.DataSet.Post;
    ds_eamb.DataSet.Post;
    ds_evalua.DataSet.Refresh;
    frmBarraH21.btnCancel.Click;
    PermisosBotones(frmEvaluacion, btnPermisos);
end;

procedure TfrmEvaluacion.btnRefreshClick(Sender: TObject);
begin
   zqEvalua.Refresh;
end;

procedure TfrmEvaluacion.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmEvaluacion.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

procedure TfrmEvaluacion.ExportaraExcel1Click(Sender: TObject);
begin
//  ExportExcelPersonalizado(zq_contratos,grid_evaluaDBTableView1,'Proveedores','Catalogo de Proveedores');
end;

procedure TfrmEvaluacion.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;

procedure TfrmEvaluacion.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmEvaluacion.dxLayoutItem4CaptionClick(Sender: TObject);
begin
    //AsignarSQL()
end;

//procedure TfrmProveedores.cxAgregaCentroClick(Sender: TObject);
//begin
//     Application.CreateForm(TfrmCiudades, frmCiudades);
//     frmCiudades.show
//end;

procedure TfrmEvaluacion.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.
