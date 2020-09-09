unit frm_Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitGenerales, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, dxBarBuiltInMenu, Vcl.Menus,
  MemDS, DBAccess, Uni, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.StdCtrls, cxButtons, cxPC, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutContainer, cxTextEdit, dxLayoutControl,
  Vcl.ExtCtrls, cxLabel, global, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmBuscar = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabCliente: TcxTabSheet;
    cxTabProveedor: TcxTabSheet;
    cxTabBanco: TcxTabSheet;
    Panel4: TPanel;
    btnAgregar: TcxButton;
    btnCancelar: TcxButton;
    Clientes: TUniQuery;
    dsCliente: TDataSource;
    PDatosCliente: TPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxRazonSocial: TcxTextEdit;
    cxNombre: TcxTextEdit;
    cxRFC: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Panel2: TPanel;
    cxLeyenda: TcxLabel;
    btnNuevo: TcxButton;
    btnSave: TcxButton;
    grid_clientes: TcxGrid;
    ViewClientes: TcxGridDBTableView;
    ViewClientesColumn1: TcxGridDBColumn;
    ViewClientesColumn3: TcxGridDBColumn;
    ViewClientesColumn2: TcxGridDBColumn;
    ViewClientesColumn4: TcxGridDBColumn;
    grid_clientesLevel1: TcxGridLevel;
    dsBanco: TDataSource;
    Proveedor: TUniQuery;
    dsProveedor: TDataSource;
    Banco: TUniQuery;
    PDatosProveedor: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxRFCprov: TcxTextEdit;
    cxNombreProv: TcxTextEdit;
    cxRSProveedor: TcxTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    PDatosBanco: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    cxNombreCorto: TcxTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    gridProveedor: TcxGrid;
    ViewProveedor: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxClave: TcxCurrencyEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxBanco: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    zListaBancos: TUniQuery;
    dsListaBancos: TDataSource;
    cxComprobantes: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cxComprobantesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdOpen : Integer;
    IdResult : Integer;
    AbreComprobante : String;
    lCont:Boolean;
  end;

var
  frmBuscar: TfrmBuscar;
  query  : TUniQuery;
  Id : Integer;

implementation

uses
frm_BancosMovimientos, frm_connection, frm_ComprobantesFiscalesD;

{$R *.dfm}

procedure TfrmBuscar.btnAgregarClick(Sender: TObject);
begin

   if cxPageControl1.ActivePage = cxTabCliente then
   begin
     IdResult := Clientes.FieldByName('IdCliente').AsInteger;
     ModalResult := mrOk;
   end;

   if cxPageControl1.ActivePage = cxTabProveedor then
   begin
     IdResult := Proveedor.FieldByName('IdProveedor').AsInteger;
     if (frmBancosMovimientos.zmovimiento.State = dsInsert ) or (frmBancosMovimientos.zmovimiento.State = dsEdit) then
       begin
             frmBancosMovimientos.cxProveedor.Properties.ListSource := dsProveedor;
             frmBancosMovimientos.dsMovimiento.DataSet.FieldByName('IdProveedor').AsInteger:= IdResult;

       end;
   end;

   if cxPageControl1.ActivePage = cxTabBanco then
   begin
     IdResult := Banco.FieldByName('IdMBanco').AsInteger;
     ModalResult := mrOk;
   end;


end;

procedure TfrmBuscar.btnCancelarClick(Sender: TObject);
begin
  if (cxPageControl1.ActivePage = cxTabCliente) then
  begin
    if PDatosCliente.Visible = True then
    begin
     cxLeyenda.Caption := 'Buscar Clientes';
     PDatosCliente.Visible  := False;
     btnSave.Visible := False;
     btnNuevo.Enabled := True;
    end
    else
     close;
  end;

  if cxPageControl1.ActivePage = cxTabProveedor then
  begin
     if PDatosProveedor.Visible = True then
    begin
     cxLeyenda.Caption := 'Buscar Proveedor';
     PDatosProveedor.Visible  := False;
     btnSave.Visible := False;
     btnNuevo.Enabled := True;
    end
    else
     close;
  end;

  if cxPageControl1.ActivePage = cxTabBanco then
  begin
     if PDatosBanco.Visible = True then
    begin
     cxLeyenda.Caption := 'Buscar Bancos';
     PDatosBanco.Visible  := False;
     btnSave.Visible := False;
     btnNuevo.Enabled := True;
    end
    else
     close;
  end

end;

procedure TfrmBuscar.btnNuevoClick(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabCliente then
  begin
   cxLeyenda.Caption := 'Agregar Cliente' ;
   PDatosCliente.Visible  := True;
   btnSave.Visible := True;
   btnNuevo.Enabled := False;
  end;
   if cxPageControl1.ActivePage = cxTabProveedor then
  begin
   cxLeyenda.Caption := 'Agregar Proveedor' ;
   PDatosProveedor.Visible  := True;
   btnSave.Visible := True;
   btnNuevo.Enabled := False;
  end;
   if cxPageControl1.ActivePage = cxTabBanco then
  begin
   cxLeyenda.Caption := 'Agregar Banco' ;
   PDatosBanco.Visible  := True;
   btnSave.Visible := True;
   btnNuevo.Enabled := False;
  end;

end;

procedure TfrmBuscar.btnSaveClick(Sender: TObject);
var
   Ingresar : TUniQuery;
begin
   Ingresar:=tUniquery.create(nil);
   Ingresar.Connection := Connection.uConnection;
   if cxPageControl1.ActivePage = cxTabCliente then
   begin
     if PDatosCliente.Visible then
     begin
       Ingresar.Active := False;
       Ingresar.SQL.Clear;
       Ingresar.SQL.Text := 'insert into master_clientes(Codigo,RFC,RazonSocial,Nombre) '+
                             'values (:Codigo,:RFC,:RazonSocial,:Nombre)';
       Ingresar.ParamByName('Codigo').AsString := autoFolio(Clientes,'master_clientes',0,0);
       Ingresar.ParamByName('RFC').AsString := cxRFC.Text;
       Ingresar.ParamByName('RazonSocial').AsString := cxRazonSocial.Text;
       Ingresar.ParamByName('Nombre').AsString := cxNombre.Text;
       Ingresar.ExecSQL;
       PDatosCliente.Visible := False;
       cxLeyenda.Caption := 'Buscar Clientes';
       Clientes.Refresh;
       frmBancosMovimientos.Clientes.Refresh;
     end;
   end;

   if cxPageControl1.ActivePage = cxTabProveedor then
   begin
     if PDatosProveedor.Visible then
     begin
       Ingresar.Active := False;
       Ingresar.SQL.Clear;
       Ingresar.SQL.Text := 'insert into master_proveedores(Codigo,Nombre,RazonSocial,RFC) '+
                             'values (:Codigo,:Nombre,:RazonSocial,:RFC)';
       Ingresar.ParamByName('Codigo').AsString := autoFolio(Proveedor,'master_cproveedores',0,0);
       Ingresar.ParamByName('RFC').AsString := cxRFCprov.Text;
       Ingresar.ParamByName('RazonSocial').AsString := cxRSProveedor.Text;
       Ingresar.ParamByName('Nombre').AsString := cxNombreProv.Text;
       Ingresar.ExecSQL;
       PDatosProveedor.Visible := False;
       cxLeyenda.Caption := 'Buscar Proveedor';
       Proveedor.Refresh;
       frmBancosMovimientos.Proveedores.Refresh;
     end;
   end;

  if cxPageControl1.ActivePage = cxTabBanco then
   begin
     if PDatosBanco.Visible then
     begin
       Ingresar.Active := False;
       Ingresar.SQL.Clear;
       Ingresar.SQL.Text := 'insert into rh_master_bancos(CLABE,RFCBanco,IdBanco) '+
                             'values (:CLABE,:RFCBanco,:IdBanco)';
       Ingresar.ParamByName('CLABE').AsString := cxClave.Text;
       Ingresar.ParamByName('RFCBanco').AsString := cxNombreCorto.Text;
       Ingresar.ParamByName('IdBanco').AsString := cxBanco.EditValue;
       Ingresar.ExecSQL;
       PDatosBanco.Visible := False;
       cxLeyenda.Caption := 'Buscar Banco';
       Banco.Refresh;
       frmBancosMovimientos.zBancos.Refresh;
     end;
   end;
   btnNuevo.Enabled := True;
   btnSave.Visible := False;
   Ingresar.destroy;
end;

procedure TfrmBuscar.cxComprobantesClick(Sender: TObject);
var
  Formcomprobante : TfrmComprobantesFiscalesD;
  lContinua:Boolean;
begin


  if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active))then begin

    if (frmBancosMovimientos.zmovimiento.State = dsInsert ) or (frmBancosMovimientos.zmovimiento.State = dsEdit) then
     begin
          global_frmActivo := 'Movimientos';
          frmBancosMovimientos.abreComprobante := 'AbrirComprobante';


          frmBancosMovimientos.lCont:=True;
          if frmBancosMovimientos.proveedores.Locate('IdProveedor',frmBancosMovimientos.cxProveedor.EditValue,[]) then
          frmBancosMovimientos.proveedores.FieldByName('RFC').AsString;
          Application.CreateForm(TfrmComprobantesFiscalesD, frmComprobantesFiscalesD);

          FrmComprobantesFiscalesD.ShowModal;

         frmBancosMovimientos.lCont:=False;

     end;
  end;
  close;
end;

procedure TfrmBuscar.FormShow(Sender: TObject);
begin

      btnSave.Visible := False;
      cxComprobantes.Visible := False;

    if IdOpen = 1 then
    begin
       cxLeyenda.Caption := 'Buscar Clientes';
       PDatosCliente.Visible := False;

       AsignarSQL(Clientes,'master_clientes', pUpdate) ;
       FiltrarDataSet(Clientes,'IdCliente',[-1] );
       Clientes.Open;
    end;
    if IdOpen = 2 then
    begin
       cxLeyenda.Caption := 'Buscar Proveedor';
       PDatosProveedor.Visible := False;
       cxComprobantes.Visible := True;
       AsignarSQL(Proveedor,'master_proveedores', pUpdate) ;
       FiltrarDataSet(Proveedor,'IdProveedor',[-1] );
       Proveedor.Open;
    end;
    if IdOpen = 3 then
    begin
       cxLeyenda.Caption := 'Buscar Banco';
       PDatosBanco.Visible := False;

       AsignarSQL(Banco,'rh_master_bancos', pUpdate) ;
       FiltrarDataSet(Banco,'Banco',[-1] );
       Banco.Open;

       AsignarSQL(zListaBancos,'rhu_bancos', pUpdate) ;
       FiltrarDataSet(zListaBancos,'IdBanco,Clave,Corto,RazonSocial',[-1,'-1','-1','-1'] );
       zListaBancos.Open;
    end;

end;

end.
