unit frm_Ciudades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,UnitExcepciones,
  cxDBLookupComboBox, unittbotonespermisos, UnitValidaTexto, unitactivapop,
  cxGraphics,  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore,  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee,  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, cxLookupEdit,
  cxDBLookupEdit, cxCheckBox, dxLayoutControlAdapters,
  cxButtons, unitGenerales, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfrmCiudades = class(TForm)
    frmBarra1: TfrmBarra;
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
    ds_ciudades: TDataSource;
    zqCiudades: TZQuery;
    zqEstados: TZQuery;
    ds_estados: TDataSource;
    cxViewCiudades: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_pernoctan: TcxGrid;
    pnl1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCodigo: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxCiudad: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxActivo: TcxDBCheckBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxViewCiudadesColumn1: TcxGridDBColumn;
    cxViewCiudadesColumn2: TcxGridDBColumn;
    cxEstado: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxViewCiudadesColumn3: TcxGridDBColumn;
    zqEstadosIdEstado: TIntegerField;
    zqEstadosIdPais: TIntegerField;
    zqEstadosCodigo: TStringField;
    zqEstadosEstado: TStringField;
    zqEstadosActivo: TStringField;
    zqCiudadesIdCiudad: TIntegerField;
    zqCiudadesIdEstado: TIntegerField;
    zqCiudadesCodigo: TStringField;
    zqCiudadesFK_Ciudad: TStringField;
    zqCiudadesActivo: TStringField;
    cxButton1: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_pernoctanCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCiudades: TfrmCiudades;
  botonpermiso:tbotonespermisos;
  sOpcion : string;
implementation

uses
 frm_Presupuesto, frm_Proveedores;
{$R *.dfm}

procedure TfrmCiudades.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCiudades.EnterControl(Sender: TObject);
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
end;

procedure TfrmCiudades.SalidaControl(Sender: TObject);
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
end;

procedure TfrmCiudades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zqCiudades.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmCiudades.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPernoctan', PopupPrincipal);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  zqEstados.Active := False ;
  zqEstados.Open ;
  zqCiudades.Active := False ;
  zqCiudades.Open ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;

end;

procedure TfrmCiudades.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmCiudades.frmBarra1btnAddClick(Sender: TObject);
begin
    frmBarra1.btnAddClick(Sender);
    cxCodigo.SetFocus ;
    zqCiudades.Append ;
    cxEstado.DataBinding.DataSource.DataSet.FieldByName('IdEstado').AsInteger := zqEstados.FieldByName('IdEstado').AsInteger;
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
    grid_pernoctan.Enabled := False;
end;

procedure TfrmCiudades.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   try
      zqCiudades.Edit ;
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sitios de Pernocta', 'Al agregar registro', 0);
      frmBarra1.btnCancel.Click ;
      end;
   end ;
   cxCiudad.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_pernoctan.Enabled := False;
end;

procedure TfrmCiudades.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lBanderaEdit: boolean;
  sId  : string;
begin
    lBanderaEdit := zqCiudades.State = dsEdit;
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Ciudad');
    cadenas.Add(cxCiudad.Text);
    if not validaTexto(nombres, cadenas, 'Código',(cxCodigo.Text)) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    if zqCiudades.State = dsInsert then
      if ValidaExiste('', 'master_ciudad', 'Codigo', zqCiudades.FieldByName('Codigo').AsString, 'Código' ) then
         exit;

    {Continua insercion de datos..}
   try
       sId := zqCiudades.FieldValues['Codigo'];
       zqCiudades.Post ;
       zqCiudades.Locate('Codigo',sId,[]);

       try
          frmProveedores.zqCiudades.Refresh;
          frmProveedores.cxCiudad.DataBinding.DataSource.DataSet.FieldByName('IdCiudad').AsInteger := zqCiudades.FieldByName('IdCiudad').AsInteger;
       Except
       end;

       frmBarra1.btnPostClick(Sender);
       Grid_pernoctan.Enabled := True;
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Ciudades', 'Al salvar registro', 0);
           frmBarra1.btnCancel.Click ;
       end;
   end;

   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   if lBanderaEdit then
   begin
      Grid_pernoctan.Enabled := True;
      sOpcion := '';
   end;
end;

procedure TfrmCiudades.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   zqCiudades.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_pernoctan.Enabled := True;
end;

procedure TfrmCiudades.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqCiudades.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqCiudades.Delete ;

      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Ciudades', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmCiudades.frmBarra1btnRefreshClick(Sender: TObject);
begin
   zqCiudades.refresh
end;

procedure TfrmCiudades.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure TfrmCiudades.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmCiudades.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmCiudades.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmCiudades.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmCiudades.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmCiudades.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmCiudades.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

end.
