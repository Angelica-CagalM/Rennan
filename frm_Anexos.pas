unit frm_Anexos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UnitExcepciones,
  unittbotonespermisos, UnitValidaTexto, unitactivapop, cxGraphics,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, cxCalc,
  cxCurrencyEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, UnitGenerales, MemDS, DBAccess, Uni,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmAnexos = class(TForm)
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
    ds_anexos: TDataSource;
    cxViewAnexos: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_anexos: TcxGrid;
    pnl1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxAnexo: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    tsDescripcion: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxTipoAnexo: TcxDBComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxEspecificacion: TcxDBComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxCantidad: TcxDBCalcEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    cxMN: TcxDBCalcEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxUSD: TcxDBCalcEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxNombreCorto: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxTitulo: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxGeneradores: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxNotaCampo: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    cxViewAnexosColumn1: TcxGridDBColumn;
    cxViewAnexosColumn2: TcxGridDBColumn;
    cxViewAnexosColumn3: TcxGridDBColumn;
    cxViewAnexosColumn4: TcxGridDBColumn;
    cxViewAnexosColumn5: TcxGridDBColumn;
    cxViewAnexosColumn6: TcxGridDBColumn;
    cxViewAnexosColumn7: TcxGridDBColumn;
    cxViewAnexosColumn8: TcxGridDBColumn;
    cxViewAnexosColumn9: TcxGridDBColumn;
    cxOrden: TcxDBCalcEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    zqAnexos: TUniQuery;
    zqAnexossAnexo: TStringField;
    zqAnexossDescripcion: TStringField;
    zqAnexosiIdEstimacionContrato: TIntegerField;
    zqAnexossTipo: TStringField;
    zqAnexossTierra: TStringField;
    zqAnexosiIdMedida: TIntegerField;
    zqAnexosdVentaMn: TFloatField;
    zqAnexosdVentaDll: TFloatField;
    zqAnexosiOrden: TLongWordField;
    zqAnexosdCantidad: TFloatField;
    zqAnexossTitulo: TStringField;
    zqAnexossEtiqueta: TStringField;
    zqAnexossAnexoDescripcion: TStringField;
    zqAnexositemOrden: TIntegerField;
    zqAnexossAnexoDescripcion2: TStringField;
    zqAnexosNomenclatura: TStringField;
    ds_medidas: TDataSource;
    zQryMedidas: TUniQuery;
    cxMedida: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    zQryMedidasIdMedida: TIntegerField;
    zQryMedidasCodigo: TStringField;
    zQryMedidasNombre: TStringField;
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
    procedure cxViewAnexosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnexos: TfrmAnexos;
  botonpermiso:tbotonespermisos;
  sOpcion : string;
implementation

uses
 frm_Presupuesto;
{$R *.dfm}

procedure TfrmAnexos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmAnexos.EnterControl(Sender: TObject);
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

procedure TfrmAnexos.SalidaControl(Sender: TObject);
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

procedure TfrmAnexos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zqAnexos.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmAnexos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPernoctan', PopupPrincipal);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;

  zqAnexos.Active := False ;
  AsignarSQL(zqAnexos,'anexos',pUpdate);
  FiltrarDataSet(zqAnexos, 'sAnexo',['-1']);
  zqAnexos.Open;

  zQryMedidas.Active := False ;
  AsignarSQL(zQryMedidas,'master_medidas',pUpdate);
  zQryMedidas.Open;

  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;

end;

procedure TfrmAnexos.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmAnexos.frmBarra1btnAddClick(Sender: TObject);
begin
    frmBarra1.btnAddClick(Sender);
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;
    cxAnexo.SetFocus ;
    zqAnexos.Append ;
    zqAnexos.FieldByName('dCantidad').AsFloat := 0;
    zqAnexos.FieldByName('dVentaMn').AsFloat  := 0;
    zqAnexos.FieldByName('dVentaDll').AsFloat := 0;

    zqAnexos.FieldByName('sTipo').AsString := 'ANEXO';
    zqAnexos.FieldByName('sTierra').AsString := 'No';

    zqAnexos.FieldByName('iOrden').AsInteger := zqAnexos.RecordCount;

    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
    grid_anexos.Enabled := False;
end;

procedure TfrmAnexos.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   cxAnexo.Enabled := False;
   try
      zqAnexos.Edit ;
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Anexos', 'Al agregar registro', 0);
      frmBarra1.btnCancel.Click ;
      end;
   end ;
   tsDescripcion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_anexos.Enabled := False;
end;

procedure TfrmAnexos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lBanderaEdit: boolean;
  sId  : string;
begin
    lBanderaEdit := zqAnexos.State = dsEdit;
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
    cadenas.Add(cxNombreCorto.Text);
    cadenas.Add(cxTipoAnexo.Text);
    cadenas.Add(cxEspecificacion.Text);
    cadenas.Add(cxMedida.Text);
    cadenas.Add(tsDescripcion.Text);
    cadenas.Add(cxTitulo.Text);
    cadenas.Add(cxGeneradores.Text);
    cadenas.Add(cxNotaCampo.Text);

    if not validaTexto(nombres, cadenas, 'Id Anexo',(cxAnexo.Text)) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
   try
       sId := zqAnexos.FieldValues['sAnexo'];
       if zqanexos.State = dsInsert then
          zqAnexos.FieldByName('Nomenclatura').AsString := IntToStr(zqAnexos.RecordCount) +'.';
       zqAnexos.Post ;
       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       Grid_anexos.Enabled := True;



       frmBarra1.btnPostClick(Sender);
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Anexos', 'Al salvar registro', 0);
           frmBarra1.btnCancel.Click ;
       end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   if lBanderaEdit then
   begin
      Grid_anexos.Enabled := True;
      sOpcion := '';
   end;
end;

procedure TfrmAnexos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   zqAnexos.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_anexos.Enabled := True;
   cxAnexo.Enabled := True;
end;

procedure TfrmAnexos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqAnexos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqAnexos.Delete ;

      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Anexos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmAnexos.frmBarra1btnRefreshClick(Sender: TObject);
begin
   zqAnexos.refresh
end;

procedure TfrmAnexos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Close;
end;

procedure TfrmAnexos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmAnexos.cxViewAnexosDblClick(Sender: TObject);
begin
    if cxViewAnexos.OptionsView.CellAutoHeight then
       cxViewAnexos.OptionsView.CellAutoHeight := False
    else
       cxViewAnexos.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAnexos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmAnexos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmAnexos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmAnexos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmAnexos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmAnexos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

end.
