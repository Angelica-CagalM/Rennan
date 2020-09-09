unit frm_CatalogoAnexos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,UnitExcepciones,
  unittbotonespermisos, UnitValidaTexto, unitactivapop, cxGraphics,//  dbflookup,
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
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, cxCalc, unitGenerales, masUtilerias,
  cxCurrencyEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtons, cxGroupBox, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni;

type
  TfrmCatalogoAnexos = class(TForm)
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
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_conceptos_anexos: TDataSource;
    cxViewAnexos: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_anexos: TcxGrid;
    pnl1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCantidad: TcxDBCalcEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxMN: TcxDBCalcEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxUSD: TcxDBCalcEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxViewAnexosColumn1: TcxGridDBColumn;
    cxViewAnexosColumn2: TcxGridDBColumn;
    cxViewAnexosColumn3: TcxGridDBColumn;
    cxViewAnexosColumn4: TcxGridDBColumn;
    cxViewAnexosColumn7: TcxGridDBColumn;
    cxViewAnexosColumn8: TcxGridDBColumn;
    cxViewAnexosColumn9: TcxGridDBColumn;
    cxAnexo: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxActividad: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDescripcion: TcxDBMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    cxMedida: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    ds_anexos: TDataSource;
    ds_medidas: TDataSource;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    cxOrdenaZA: TcxButton;
    cxOrdenaAZ: TcxButton;
    zqConceptosAnexos: TUniQuery;
    zQryMedidas: TUniQuery;
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
    zqConceptosAnexossContrato: TStringField;
    zqConceptosAnexossIdConvenio: TStringField;
    zqConceptosAnexossNumeroOrden: TStringField;
    zqConceptosAnexosiNivel: TIntegerField;
    zqConceptosAnexossSimbolo: TStringField;
    zqConceptosAnexossWbs: TStringField;
    zqConceptosAnexossWbsAnterior: TStringField;
    zqConceptosAnexossNumeroActividad: TStringField;
    zqConceptosAnexossTipoActividad: TStringField;
    zqConceptosAnexossTipoAnexo: TStringField;
    zqConceptosAnexossEspecificacion: TStringField;
    zqConceptosAnexossActividadAnterior: TStringField;
    zqConceptosAnexosiItemOrden: TStringField;
    zqConceptosAnexosmDescripcion: TMemoField;
    zqConceptosAnexosdFechaInicio: TDateField;
    zqConceptosAnexosdDuracion: TFloatField;
    zqConceptosAnexosdFechaFinal: TDateField;
    zqConceptosAnexosdPonderado: TFloatField;
    zqConceptosAnexosdCostoMN: TFloatField;
    zqConceptosAnexosdCostoDll: TFloatField;
    zqConceptosAnexosdVentaMN: TFloatField;
    zqConceptosAnexosdVentaDLL: TFloatField;
    zqConceptosAnexoslCalculo: TStringField;
    zqConceptosAnexosiIdMedida: TIntegerField;
    zqConceptosAnexosdCantidadAnexo: TFloatField;
    zqConceptosAnexosdCargado: TFloatField;
    zqConceptosAnexosdInstalado: TFloatField;
    zqConceptosAnexosdExcedente: TFloatField;
    zqConceptosAnexosiColor: TIntegerField;
    zqConceptosAnexoslExtraordinario: TStringField;
    zqConceptosAnexossIdFase: TStringField;
    zqConceptosAnexossAnexo: TStringField;
    zqConceptosAnexossPred: TStringField;
    zqConceptosAnexossSucesor: TStringField;
    zqConceptosAnexossWbsPU: TStringField;
    zqConceptosAnexosOrden: TLongWordField;
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
    procedure cxOrdenaAZClick(Sender: TObject);
    procedure cxOrdenaZAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoAnexos: TfrmCatalogoAnexos;

  sOpcion : string;
  sAnexoAnt, sMaterialAnt : string;
  savePlace : tBookmark;
implementation

uses
 frm_Presupuesto;
{$R *.dfm}

procedure TfrmCatalogoAnexos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCatalogoAnexos.EnterControl(Sender: TObject);
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
        tcxDBCalcEdit(sender).Style.Color := global_color_EntradaERP;
end;

procedure TfrmCatalogoAnexos.SalidaControl(Sender: TObject);
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

procedure TfrmCatalogoAnexos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zqConceptosAnexos.Cancel ;
  action := cafree ;

end;

procedure TfrmCatalogoAnexos.FormShow(Sender: TObject);
begin
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;

  zqConceptosAnexos.Active := False ;
  AsignarSQL(zqConceptosAnexos,'actividadesxanexo',pUpdate);
  FiltrarDataSet(zqConceptosAnexos, 'ContratoBarco',[global_contrato_barco]);
  zqConceptosAnexos.Open;

  zqAnexos.Active := False ;
  AsignarSQL(zqAnexos,'anexos',pUpdate);
  zqAnexos.Open;

  zQryMedidas.Active := False ;
  AsignarSQL(zQryMedidas,'master_medidas',pUpdate);
  zQryMedidas.Open;

  frmBarra1.btnPrinter.Enabled := False;

end;

procedure TfrmCatalogoAnexos.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoAnexos.frmBarra1btnAddClick(Sender: TObject);
begin
    frmBarra1.btnAddClick(Sender);
    zqAnexos.Last;

    cxAnexo.SetFocus ;
    zqConceptosAnexos.Append ;
    zqConceptosAnexos.FieldByName('sContrato').AsString    := global_contrato_barco;
    zqConceptosAnexos.FieldByName('sIdConvenio').AsString  := global_convenio;
    zqConceptosAnexos.FieldByName('sNumeroOrden').AsString := 'CC00';
    zqConceptosAnexos.FieldByName('sSimbolo').AsString     := '';
    zqConceptosAnexos.FieldByName('sTipoActividad').AsString := 'Actividad';
    zqConceptosAnexos.FieldByName('sTipoAnexo').AsString     := 'CC';
    zqConceptosAnexos.FieldByName('sEspecificacion').AsString    := '';
    zqConceptosAnexos.FieldByName('sActividadAnterior').AsString := '';
    zqConceptosAnexos.FieldByName('dFechaInicio').AsDatetime := Date;
    zqConceptosAnexos.FieldByName('dFechaFinal').AsDatetime  := Date;
    zqConceptosAnexos.FieldByName('dDuracion').AsInteger     := 1;
    zqConceptosAnexos.FieldByName('dPonderado').AsFloat      := 0;
    zqConceptosAnexos.FieldByName('dCostoMN').AsFloat        := 0;
    zqConceptosAnexos.FieldByName('dCostoDLL').AsFloat       := 0;
    zqConceptosAnexos.FieldByName('lCalculo').AsString       := 'Si';
    zqConceptosAnexos.FieldByName('sIdFase').AsString        := 'PU';
    zqConceptosAnexos.FieldByName('dCantidadAnexo').AsFloat       := 0;
    zqConceptosAnexos.FieldByName('dVentaMN').AsFloat        := 0;
    zqConceptosAnexos.FieldByName('dVentaDLL').AsFloat       := 0;
    zqConceptosAnexos.FieldByName('dCargado').AsFloat        := 0;
    zqConceptosAnexos.FieldByName('dInstalado').AsFloat      := 0;
    zqConceptosAnexos.FieldByName('dExcedente').AsFloat      := 0;
    zqConceptosAnexos.FieldByName('icolor').AsInteger        := 0;
    zqConceptosAnexos.FieldByName('lExtraordinario').AsString:= 'No';
    zqConceptosAnexos.FieldByName('sWbsPU').AsString         := '';
    zqAnexos.First;
    zQryMedidas.First;
    cxAnexo.DataBinding.DataSource.DataSet.FieldByName('sAnexo').AsString   := zqAnexos.FieldByName('sAnexo').AsString;
    cxMedida.DataBinding.DataSource.DataSet.FieldByName('iIdMedida').AsInteger := zQryMedidas.FieldByName('IdMedida').AsInteger;

    sMaterialAnt := '';
    frmBarra1.btnPrinter.Enabled := False;
    grid_anexos.Enabled := False;
end;

procedure TfrmCatalogoAnexos.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);

   try
      zqConceptosAnexos.Edit ;

      sAnexoAnt    :=  zqConceptosAnexos.FieldByName('sAnexo').AsString;
      sMaterialAnt :=  zqConceptosAnexos.FieldByName('sNumeroActividad').AsString;
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Conceptos Anexos', 'Al agregar registro', 0);
      frmBarra1.btnCancel.Click ;
      end;
   end ;
   cxDescripcion.SetFocus;
   frmBarra1.btnPrinter.Enabled := False;
   Grid_anexos.Enabled := False;
end;

procedure TfrmCatalogoAnexos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lBanderaEdit: boolean;
  sId  : string;
begin
    lBanderaEdit := zqAnexos.State = dsEdit;
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Concepto');
    nombres.Add('Cantidad');
    nombres.Add('Medida');
    nombres.Add('Descripcion');
    cadenas.Add(cxActividad.Text);
    cadenas.Add(cxCantidad.Text);
    cadenas.Add(cxMedida.Text);
    cadenas.Add(cxDescripcion.Text);

    if not validaTexto(nombres, cadenas, 'Anexo',(cxAnexo.Text)) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    if ExisteRegistroBD('actividadesxanexo', global_contrato_barco, global_convenio, zqConceptosAnexos.FieldByName('sNumeroOrden').AsString, '', zqConceptosAnexos.FieldByName('sNumeroActividad').AsString, zqConceptosAnexos.FieldByName('mDescripcion').AsString, sMaterialAnt) = True then
       exit;

    {Continua insercion de datos..}
   try
       zqConceptosAnexos.FieldByName('sAnexo').AsString  := cxAnexo.DataBinding.DataSource.DataSet.FieldByName('sAnexo').AsString;
       sId := zqConceptosAnexos.FieldValues['sAnexo'];

       zqConceptosAnexos.FieldByName('iNivel').AsInteger := 2;
       zqConceptosAnexos.FieldByName('sWbsAnterior').AsString := CrearPaqueteAnexo(global_contrato_barco, global_convenio, zqConceptosAnexos.FieldByName('sNumeroOrden').AsString, cxAnexo.DataBinding.DataSource.DataSet.FieldByName('sAnexo').AsString, zqAnexos.FieldByName('sEtiqueta').AsString) ;
       zqConceptosAnexos.FieldByName('sWbs').AsString    := zqConceptosAnexos.FieldByName('sWbsAnterior').AsString +'.'+zqConceptosAnexos.FieldByName('sAnexo').AsString +'.'+zqConceptosAnexos.FieldByName('sNumeroActividad').AsString;
       zqConceptosAnexos.FieldByName('iItemOrden').AsString := '00000001' + sFnBuscaItem(global_convenio,zqConceptosAnexos.FieldValues['sNumeroActividad'],
               zqConceptosAnexos.FieldByName('sWbsAnterior').AsString,
               '00000001',
               zqConceptosAnexos.FieldByName('sTipoActividad').AsString, '', 'actividadesxanexo',
               zqConceptosAnexos.FieldByName('iNivel').AsInteger );

       zqConceptosAnexos.Post ;

       if sAnexoAnt <> '' then
       begin
           UpdateMateriales(zqConceptosAnexos.FieldByName('sAnexo').AsString, zqConceptosAnexos.FieldByName('sNumeroActividad').AsString, zqConceptosAnexos.FieldByName('mDescripcion').AsString, sAnexoAnt, sMaterialAnt, zQryMedidas.FieldByName('IdMedida').AsInteger );
           sAnexoAnt    := '';
           sMaterialAnt := '';
       end;

       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       Grid_anexos.Enabled := True;

//       if global_frmActivo = 'frm_bitacoradepartamental_2' then
//       begin
//         try
//             frmBitacoradepartamental_2.BuscaObjeto.Refresh;
//             close;
//         Except
//         end;
//       end;

       frmBarra1.btnPostClick(Sender);
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Conceptos Anexos', 'Al salvar registro', 0);
           frmBarra1.btnCancel.Click ;
       end;
   end;
   frmBarra1.btnPrinter.Enabled := False;
   if lBanderaEdit then
   begin
      Grid_anexos.Enabled := True;
      sOpcion := '';
   end;
end;

procedure TfrmCatalogoAnexos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   zqConceptosAnexos.Cancel ;
   frmBarra1.btnPrinter.Enabled := False;
   Grid_anexos.Enabled := True;
end;

procedure TfrmCatalogoAnexos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqAnexos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if DeleteMateriales(zqConceptosAnexos.FieldByName('sAnexo').AsString, zqConceptosAnexos.FieldByName('sNumeroActividad').AsString) then
      begin
         messageDLG('La Partida '+zqConceptosAnexos.FieldByName('sNumeroActividad').AsString + ' Está reportada.', mtInformation, [mbOk],0);
         exit;
      end;

      try
        zqConceptosAnexos.Delete ;

      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Conceptos Anexos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmCatalogoAnexos.frmBarra1btnRefreshClick(Sender: TObject);
begin
   zqAnexos.refresh
end;

procedure TfrmCatalogoAnexos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmCatalogoAnexos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogoAnexos.cxOrdenaAZClick(Sender: TObject);
var
   sItemPrior, sItemActual :string;
begin
    if zqConceptosAnexos.FieldByName('iNivel').AsInteger = 0 then
       exit;
    sItemActual := zqConceptosAnexos.FieldByName('iItemOrden').AsString;
    zqConceptosAnexos.Prior;
    SavePlace := cxViewAnexos.DataController.DataSource.DataSet.GetBookmark;
    sItemPrior  := zqConceptosAnexos.FieldByName('iItemOrden').AsString;
    if zqConceptosAnexos.FieldByName('iNivel').AsInteger > 0 then
    begin
       zqConceptosAnexos.Edit;
       zqConceptosAnexos.FieldByName('iItemorden').AsString := sItemActual;
       zqConceptosAnexos.Post;
       zqConceptosAnexos.Next;
       zqConceptosAnexos.Edit;
       zqConceptosAnexos.FieldByName('iItemorden').AsString := sItemPrior;
       zqConceptosAnexos.Post;
       zqConceptosAnexos.Refresh;
       try
          cxViewAnexos.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
       except
       else
          cxViewAnexos.DataController.DataSet.FreeBookmark(SavePlace);
       end;
    end;
end;

procedure TfrmCatalogoAnexos.cxOrdenaZAClick(Sender: TObject);
var
   sItemNext, sItemActual, sFolio :string;
begin
    if zqConceptosAnexos.FieldByName('iNivel').AsInteger = 0 then
       exit;
    sItemActual := zqConceptosAnexos.FieldByName('iItemOrden').AsString;
    sFolio      := zqConceptosAnexos.FieldByName('sNumeroOrden').AsString;
    zqConceptosAnexos.Next;
    SavePlace := cxViewAnexos.DataController.DataSource.DataSet.GetBookmark;
    sItemNext  := zqConceptosAnexos.FieldByName('iItemOrden').AsString;
    if zqConceptosAnexos.FieldByName('sNumeroOrden').AsString = sFolio then
    begin
       zqConceptosAnexos.Edit;
       zqConceptosAnexos.FieldByName('iItemorden').AsString := sItemActual;
       zqConceptosAnexos.Post;
       zqConceptosAnexos.Prior;
       zqConceptosAnexos.Edit;
       zqConceptosAnexos.FieldByName('iItemorden').AsString := sItemNext;
       zqConceptosAnexos.Post;

       zqConceptosAnexos.Refresh;
       try
          cxViewAnexos.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
       except
       else
          cxViewAnexos.DataController.DataSet.FreeBookmark(SavePlace);
       end;
    end;
end;

procedure TfrmCatalogoAnexos.cxViewAnexosDblClick(Sender: TObject);
begin
    if cxViewAnexos.OptionsView.CellAutoHeight then
       cxViewAnexos.OptionsView.CellAutoHeight := False
    else
       cxViewAnexos.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCatalogoAnexos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmCatalogoAnexos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmCatalogoAnexos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmCatalogoAnexos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmCatalogoAnexos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmCatalogoAnexos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

end.
