unit frm_deptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, Grids, DBGrids, frm_barra, StdCtrls,unitactivapop,
  Mask, DBCtrls, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, UnitValidaTexto, cxGraphics,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxDBEdit, ExtCtrls,//FormAutoScaler,
  dxLayoutContainer, dxLayoutControl, cxGroupBox, dxLayoutcxEditAdapters,
  cxMaskEdit, cxSpinEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxLabel, frm_barraH1, MemDS, DBAccess, Uni,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, frm_barraH2,
  dxorgchr, dxdborgc, cxButtons, cxSplitter, dxLayoutLookAndFeels, UnitGenerales,
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, unitReportes;

type
  tfrmDeptos = class(TForm)
    ds_deptos: TDataSource;
    pnl1: TPanel;
    cxgrid_deptos: TcxGrid;
    dbg_deptoDBTableView1: TcxGridDBTableView;
    Col_Grid__idepto: TcxGridDBColumn;
    Col_Grid__descripcion: TcxGridDBColumn;
    Col_Grid__jefatura: TcxGridDBColumn;
    dbg_deptoLevel1: TcxGridLevel;
    panelBotones: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    lcbNivel: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    zDeptos: TUniQuery;
    zPadre: TUniQuery;
    dsPadre: TDataSource;
    dbg_deptoDBTableView1Column1: TcxGridDBColumn;
    Panel2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxVerDiagrama: TcxButton;
    cxSplitterA: TcxSplitter;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cmbEmpresa: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    uqEmpresa: TUniQuery;
    ds_empresa: TDataSource;
    cxOrganizacion: TPanel;
    cxOrganizacion2: TdxDbOrgChart;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure cxVerDiagramaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeptos: TfrmDeptos;
  titulo : String;
  btnPermisos : String;

implementation

{$R *.dfm}

procedure tfrmDeptos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure tfrmDeptos.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_EntradaERP;

end;

procedure tfrmDeptos.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;
end;



procedure tfrmDeptos.btnAddClick(Sender: TObject);
begin
  try
    try
      zDeptos.Append;
      zDeptos.FieldByName('IdDepartamento').AsInteger := 0;
      zDeptos.FieldByName('IdEmpresa').AsInteger := connection.uContrato.FieldByName('IdEmpresa').AsInteger;
      zDeptos.FieldByName('Activo').AsString := 'Si';
      zDeptos.FieldByName('Codigo').AsString := autoFolio(zDeptos, 'master_departamento');

    finally
      cxLeyenda.Caption:= titulo +'[Agregando]';
      cxgrid_deptos.Enabled := False;
      cxOrganizacion2.Enabled := False;
      frmBarraH11.btnAddClick(Sender);
      pnl1.Visible := True;
    end;

    except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Departamentos', 'Al dar nuevo registro', 0);
        end;
    end;
end;

procedure tfrmDeptos.btnCancelClick(Sender: TObject);
begin
  try
    zDeptos.Cancel;
  finally
    cxLeyenda.Caption:=titulo;
    frmBarraH11.btnActive;
    cxgrid_deptos.Enabled := True;
    cxOrganizacion2.Enabled := True;
    pnl1.Visible := False;
    PermisosBotones(frmDeptos,btnPermisos);
  end;
end;

procedure tfrmDeptos.btnDeleteClick(Sender: TObject);
begin
  if zDeptos.RecordCount > 0 then
  if MessageDlg('¿Desea eliminar el registro seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      zDeptos.Delete;
      zDeptos.ApplyUpdates();
    except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Departamentos', 'Al eliminar registro', 0);
        end;
    end;
  end;

end;

procedure tfrmDeptos.btnEditClick(Sender: TObject);
begin
  try
    try
      zDeptos.Edit;
    finally
      cxLeyenda.Caption:=titulo+'[Editando]';
      cxgrid_deptos.Enabled := False;
      cxOrganizacion2.Enabled := False;
      frmBarraH11.btnEditClick(Sender);
      pnl1.Visible := True;
    end;
  except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Departamentos', 'Al editar registro', 0);
        end;
    end;
end;

procedure tfrmDeptos.btnPostClick(Sender: TObject);
begin
  try
      if zDeptos.FieldByName('Nombre').AsString = ''  then
        MessageDlg('Se requiere un Nombre para el Depto.', mtinformation, [mbOk], 0)
       else begin
        zDeptos.Post;
        zPadre.Refresh;
        cxLeyenda.Caption:=titulo;
        cxgrid_deptos.Enabled := True;
        cxOrganizacion2.Enabled := True;
        frmBarraH11.btnActive;
        pnl1.Visible := False;
        PermisosBotones(frmDeptos,btnPermisos);
       end;

  except
    on E : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Departamentos', 'Al guardar registro', 0);
    end;
  end;
end;

procedure tfrmDeptos.btnPrinterClick(Sender: TObject);
begin
  if zDeptos.RecordCount > 0 then
  begin
    generar_reporte_grid(dbg_deptoDBTableView1,'Departamentos');
  end;

end;

procedure tfrmDeptos.btnRefreshClick(Sender: TObject);
begin
   zDeptos.Refresh;
end;

procedure tfrmDeptos.cxVerDiagramaClick(Sender: TObject);
begin
    if cxOrganizacion.Visible then
  begin
     cxOrganizacion.Visible := False;
     cxSplitterA.Visible := False;
     cxVerDiagrama.Caption  := 'Ver Diagrama';
  end
  else
  begin
//     if cxGrdDatos.Width = 790 then
//       cxOrganizacion.Width := cxGrdDatos.Width div 2+200
//     else
//       cxOrganizacion.Width := cxGrdDatos.Width div 2+25;

     cxOrganizacion.Visible := True;
     cxVerDiagrama.Caption  := 'Ocultar Diagrama';
     cxOrganizacion.Align   := alRight;
     cxSplitterA.Visible := True;

  end;
end;

procedure tfrmDeptos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  guardar_leer_grid(dbg_deptoDBTableView1,frmDeptos,1);
  Action := cafree;
end;

procedure tfrmDeptos.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  try
    try
      zPadre.ParamByName('IdEmpresa').AsString := '6';
      zPadre.Open;
      zDeptos.Active := False;
      zDeptos.SQL.Clear;
      AsignarSQL(zDeptos,'master_departamento',pUpdate);
      FiltrarDataSet(zDeptos,'Empresa,Activo',[connection.uContrato.FieldByName('IdEmpresa').AsInteger,-1]);
      zDeptos.Open;

      AsignarSQL(uqEmpresa,'master_empresa',pUpdate);
      FiltrarDataSet(uqEmpresa,'IdEmpresa,bIdEmpresa,IdPadre',[-1,-1,-1]);
      uqEmpresa.Open;
      cmbEmpresa.Enabled:=False;


    finally
      titulo := 'Departamentos';
      cxLeyenda.Caption := titulo;
      cxSplitterA.Visible := False;
      cxOrganizacion.Visible := False;
      pnl1.Visible := False;
      PermisosBotones(frmDeptos,btnPermisos);
    end;
  except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Departamentos', 'Cargar Datos', 0);
           frmBarraH11.btnAddClick(Sender);
        end;
  end;
   guardar_leer_grid(dbg_deptoDBTableView1,frmDeptos,0);
end;

end.
