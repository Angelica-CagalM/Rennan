unit frm_bancos;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, global, db, StdCtrls, unitGenerales,
  Mask, DBCtrls, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones,UnitValidaTexto, ShellApi,
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
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxLayoutcxEditAdapters, frm_barraH2, frm_barraH1, MemDS, DBAccess, Uni,
  dxLayoutContainer, cxDBEdit, cxGroupBox, dxLayoutControl, cxSplitter, cxLabel,
  dxLayoutControlAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  cxCalendar, frxClass, cxGridChartView, cxGridDBChartView, cxImageComboBox,
  Frm_VerPDF, System.ImageList, Vcl.ImgList, UnitMetodos, frxDBSet, UnitRH,
  cxProgressBar, Vcl.ExtDlgs,JPEG, cxCurrencyEdit, dxCheckGroupBox,
  dxDBCheckGroupBox;
type
  TfrmBancos = class(TForm)
    dsClientes: TDataSource;
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
    Panel3: TPanel;
    Clientes: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    frxReport1: TfrxReport;
    dlgPDF: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    PopupMenu1: TPopupMenu;
    VistaPrevia1: TMenuItem;
    imgStars: TcxImageList;
    frxDBClientes: TfrxDBDataset;
    Reporte: TUniQuery;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    OpenPicture: TOpenPictureDialog;
    QryBusca: TUniQuery;
    monedas: TUniQuery;
    ds_monedas: TDataSource;
    bancos: TUniQuery;
    ds_bancos: TDataSource;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    cxCodigo: TcxDBTextEdit;
    cxSucursal: TcxDBTextEdit;
    cxCuenta: TcxDBTextEdit;
    cxRFC: TcxDBTextEdit;
    cxCLABE: TcxDBTextEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_Bancos: TcxGrid;
    cxView_Bancos: TcxGridDBTableView;
    cxView_bancoCodigo: TcxGridDBColumn;
    cxView_bancoCliente: TcxGridDBColumn;
    cxView_bancoBanco: TcxGridDBColumn;
    cxView_bancoSucursal: TcxGridDBColumn;
    cxView_bancoCuenta: TcxGridDBColumn;
    cxView_bancoCLABE: TcxGridDBColumn;
    cxView_bancoSaldo: TcxGridDBColumn;
    grid_BancosLevel1: TcxGridLevel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxBanco: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxSaldo: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    bancos2: TUniQuery;
    ds_bancos2: TDataSource;
    cxEnlace: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxCliente: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dxLayoutItem18CaptionClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxEnlaceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancos : TfrmBancos;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco,  Archivo   : string;
  bCuentasBanco  : boolean;
  titulo,titulo2,sArc : string;
  lNoGuardarDocto,bImagenDefault :boolean;
  btnPermisos     :String;

implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas,
    frm_catalogos_almacen, frm_Catalogos_rh_tipos, frm_Presupuesto,
  frm_clientes;
{$R *.dfm}

procedure TfrmBancos.EnterControl(Sender: TObject);
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

    if (sender is tcxDBlookUpComboBox) then
        tcxDBlookUpComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmBancos.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBlookUpComboBox) then
        tcxDBlookUpComboBox(sender).Style.Color := global_color_SalidaERP;

     if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmBancos.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
    try
      Panel2.Visible := False;
      cxSplitter1.Visible := False;

      titulo:='Bancos';
      cxLeyenda.Caption:=titulo;
      frmBarraH21.btnCancel.Click ;

      Clientes.Active := False ;
      AsignarSQL(Clientes,'master_clientes',pUpdate);
      FiltrarDataSet(Clientes, 'IdCliente',['-1']);
      Clientes.Open;

      bancos.Active := False ;
      AsignarSQL(bancos,'rh_master_bancos',pUpdate);
      FiltrarDataSet(bancos, 'Banco',[-1]);
      bancos.Open;

      bancos2.Active := False ;
      AsignarSQL(bancos2,'rhu_bancos',pUpdate);
      FiltrarDataSet(bancos2, 'IdBanco,Clave,Corto,RazonSocial',[-1,-1,-1,-1]);
      bancos2.Open;

      PermisosBotones(frmBancos,btnPermisos);
    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de clientes', 'Al iniciar el formulario', 0);
    end;
 end;

 guardar_leer_grid(cxView_Bancos,frmBancos,0) ;
end;

procedure TfrmBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      guardar_leer_grid(cxView_Bancos,frmBancos,1) ;

      Clientes.Cancel ;
      action := cafree ;
end;

procedure TfrmBancos.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_Bancos.Enabled:=false;
       bancos.Append ;

     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmBancos.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
      bancos.Edit ;
      grid_Bancos.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;

     frmBarraH11.btnPrinter.Enabled:=false;
end;


procedure TfrmBancos.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  bancos.Cancel ;
  grid_bancos.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Bancos', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmBancos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if cxView_bancos.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if cxView_bancos.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin


            try
              bancos.Delete ;

            except
              on e : exception do
              begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al eliminar registro', 0);
              end;
            end
      end;
    end;
  end;

end;

procedure TfrmBancos.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Clientes.Active := False ;
  Clientes.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmBancos.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;


procedure TfrmBancos.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmBancos.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmBancos.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmBancos.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);

    panel2.Visible:=True;
    cxSplitter1.Visible := True;
    grid_bancos.Enabled:=False;
    bancos.Append;
    bancos.FieldByName('Codigo').AsString := autoFolio(Clientes, 'rh_master_bancos');
    bancos.FieldByName('IdBanco').AsInteger := bancos2.FieldByName('IdBanco').AsInteger;
    bancos.FieldByName('FechaCreacion').AsDateTime := Now();

    cxCodigo.Properties.ReadOnly := True;
end;

procedure TfrmBancos.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    cxSplitter1.Visible := False;
    frmBarraH11.btnActive;
    grid_bancos.Enabled:=True;
    ds_bancos.DataSet.Cancel;
end;

procedure TfrmBancos.btnDeleteClick(Sender: TObject);
var
  contReg: Integer;
  busca : TUniquery;
  msjError : String;
begin
    If bancos.RecordCount  > 0 then begin

      if MessageDlg('Desea eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin
       try
          bancos.Delete;
          bancos.ApplyUpdates();
          bancos.Refresh;
        except
          on E : exception do begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Clientes', 'Al eliminar registro', 0);
          end;
        end;
      end;
    end;
end;



procedure TfrmBancos.btnEditClick(Sender: TObject);
begin
  if Clientes.RecordCount > 0  then begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnAddClick(Sender);
    Panel2.Visible:=True;
    cxSplitter1.Visible := True;
    grid_bancos.Enabled:=False;
    bancos.Edit;

  end
  else
    MessageDlg('No hay datos para editar',mtInformation, [mbOk], 0);
end;


procedure TfrmBancos.btnPostClick(Sender: TObject);
var
   RefrescaRegistro:  TBookmark;
   Temp:TUniQuery;
   sTexto:String;
   sId  : Integer;
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.Visible:=True;

    try
     bancos.Post;

       except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bancos', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
   end;


    RefrescaRegistro := cxView_bancos.DataController.DataSource.DataSet.GetBookmark;
    try
       bancos.Refresh ;
       try
          cxView_bancos.DataController.DataSource.DataSet.GotoBookmark(RefrescaRegistro);
       except
       else
           cxView_bancos.DataController.DataSet.FreeBookmark(RefrescaRegistro);
       end;
     finally
    end;

     PermisosBotones(frmbancos,btnPermisos);

end;


procedure TfrmBancos.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;



procedure TfrmBancos.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;


procedure TfrmBancos.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;


procedure TfrmBancos.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmBancos.btnRefreshClick(Sender: TObject);
begin
   bancos.Refresh;
end;

procedure TfrmBancos.cxButton1Click(Sender: TObject);
begin
  if (Clientes.State = dsInsert ) or (Clientes.State = dsEdit) then begin
       global_frmActivo := 'frmClientes';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal ) then
       begin
          global_indexactivo:= 14;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;

procedure TfrmBancos.cxButton2Click(Sender: TObject);
begin
   if (Clientes.State = dsInsert ) or (Clientes.State = dsEdit) then begin
       global_frmActivo := 'frmClientes';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal  ) then
       begin
          global_indexactivo:= 6;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;


procedure TfrmBancos.cxEnlaceClick(Sender: TObject);
begin
     cxEnlace.Style.TextColor := ClBlue;
     ShellExecute(Handle, 'open','https://catalogosat.mx/Banco', nil,  nil,SW_SHOW);
end;

procedure TfrmBancos.dxLayoutItem18CaptionClick(Sender: TObject);
begin
    //AsignarSQL()
end;

procedure TfrmBancos.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.

