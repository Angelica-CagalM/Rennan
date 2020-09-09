unit frm_ordenes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, global, db, frm_connection, frm_barra, ComCtrls,
  DBCtrls, StdCtrls, Mask, Menus, ADODB,  RXDBCtrl, ZDataset, utilerias, unitGenerales,
  ZAbstractRODataset, ZAbstractDataset, rxToolEdit, unitValidacion,//Newpanel,FormAutoScaler,
  rxCurrEdit, ExtCtrls, unitexcepciones,UnitValidaTexto,
  UnitTablasImpactadas, unitactivapop, Buttons,//, DBDateTimePickersPageControl,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxContainer, cxProgressBar, cxLabel,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxTextEdit, cxDBEdit,
  cxMemo, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, MemDS, DBAccess, Uni;

type
  TfrmOrdenes = class(TForm)
  ds_estatus: TDataSource;
  ds_tiposdeorden: TDataSource;
  ds_ordenesdetrabajo: TDataSource;
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
  N4: TMenuItem;
  Salir1: TMenuItem;
  ds_Plataformas: TDataSource;
  ds_Pernoctan: TDataSource;
  tNewGroupBox1: TPanel;
  Label16: TLabel;
  Label13: TLabel;
  Label9: TLabel;
  Label2: TLabel;
  Label1: TLabel;
  lblDetalles: TLabel;
  Label26: TLabel;
  Label27: TLabel;
  memDatos: TDBMemo;
//  FormAutoScaler1: TFormAutoScaler;
  Pnl_Principal: TPanel;
  dxBarManager1: TdxBarManager;
  dxInsertar: TdxBarLargeButton;
  dxEditar: TdxBarLargeButton;
  dxGuardar: TdxBarLargeButton;
  dxCancelar: TdxBarLargeButton;
  dxEliminar: TdxBarLargeButton;
  dxRefrescar: TdxBarLargeButton;
  dxSalir: TdxBarLargeButton;
  dxImprimir: TdxBarLargeButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_ordenes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    Panel3: TPanel;
    frmBarra1: TfrmBarra;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    tsNumeroOrden: TcxDBTextEdit;
    tsIdFolio: TcxDBTextEdit;
    tsDescripcionCorta: TcxDBTextEdit;
    tmDescripcion: TcxDBMemo;
    tsOficioAutorizacion: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    tcIdStatus1: TcxDBLookupComboBox;
    OrdenesdeTrabajo: TUniQuery;
    TiposdeOrden: TUniQuery;
    pernoctan: TUniQuery;
    Plataformas: TUniQuery;
    Estatus: TUniQuery;
  procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
  procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormShow(Sender: TObject);
  procedure tsNumeroOrdenEnter(Sender: TObject);
  procedure tsNumeroOrdenExit(Sender: TObject);
  procedure tmDescripcionEnter(Sender: TObject);
  procedure tmDescripcionExit(Sender: TObject);
  procedure tcIdStatusEnter(Sender: TObject);
  procedure tcIdStatusExit(Sender: TObject);
  procedure tsFormatoKeyPress(Sender: TObject; var Key: Char);
  procedure tsFormatoEnter(Sender: TObject);
  procedure tsFormatoExit(Sender: TObject);
  procedure tsDescripcionCortaEnter(Sender: TObject);
  procedure tsDescripcionCortaExit(Sender: TObject);
  procedure tsDescripcionCortaKeyPress(Sender: TObject; var Key: Char);
  procedure tiJornadaEnter(Sender: TObject);
  procedure tiJornadaExit(Sender: TObject);
  procedure tiJornadaKeyPress(Sender: TObject; var Key: Char);
  procedure tiConsecutivoEnter(Sender: TObject);
  procedure tiConsecutivoExit(Sender: TObject);
  procedure tiConsecutivoKeyPress(Sender: TObject; var Key: Char);
  procedure tiConsecutivoTierraEnter(Sender: TObject);
  procedure tiConsecutivoTierraExit(Sender: TObject);
  procedure tiConsecutivoTierraKeyPress(Sender: TObject; var Key: Char);
  procedure tsIdFolioEnter(Sender: TObject);
  procedure tsIdFolioExit(Sender: TObject);
  procedure tsIdFolioKeyPress(Sender: TObject; var Key: Char);
  procedure tsOficioAutorizacionKeyPress(Sender: TObject; var Key: Char);
  procedure tsOficioAutorizacionEnter(Sender: TObject);
  procedure tsOficioAutorizacionExit(Sender: TObject);

  procedure ActualizaReporte(sFrente: string; valor: boolean);
  procedure AsginaFrenteUsuario(dParamFrente: string);
  procedure OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
    const Text: string);
  procedure OrdenesdeTrabajoiJornadaSetText(Sender: TField;
    const Text: string);
  procedure OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
    const Text: string);
  procedure tiJornadaChange(Sender: TObject);
  procedure tiConsecutivoChange(Sender: TObject);
  procedure tiConsecutivoTierraChange(Sender: TObject);
  procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  procedure InsertarValores;
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
private
  { Private declarations }
public
  { Public declarations }
end;

var
  frmOrdenes: TfrmOrdenes;
  Opcion, FrentT, formato :String ;
  sTipo, sPlataforma, sPernocta : String ;
 // utgrid:ticdbgrid;
  sIdOrig : string;
implementation

uses

  Func_Genericas,
  frm_entradaalmacen, frm_SalidaAlmacen;

  {$R *.dfm}

procedure TfrmOrdenes.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then tsIdFolio.SetFocus
end;

procedure TfrmOrdenes.tsOficioAutorizacionEnter(Sender: TObject);
begin
//  tsOficioAutorizacion.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tsOficioAutorizacionExit(Sender: TObject);
begin
//  tsOficioAutorizacion.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tsOficioAutorizacionKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then dbedit1.SetFocus;
end;

procedure TfrmOrdenes.tsIdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then tcIdStatus.SetFocus
end;

procedure TfrmOrdenes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // utgrid.Destroy;
  ordenesdetrabajo.Cancel ;
  action := cafree ;

end;

procedure TfrmOrdenes.FormShow(Sender: TObject);
begin
  //Poner el combo eMostrarGuardia con No por defecto


  try
    //UtGrid:=TicdbGrid.create(grid_ordenes);
    OpcButton := '' ;
    sIdOrig := '';
    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.SQL.Clear ;

    if (global_grupo = 'ACCESO_TOTAL') Then
    begin
    OrdenesdeTrabajo.SQL.Add('Select * from ordenesdetrabajo where sContrato = :Contrato ' +
                               'order by sNumeroOrden');
    end
    Else
      OrdenesdeTrabajo.SQL.Add('Select ot.* from ordenesdetrabajo ot ' +
                                'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato '  +
                                'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
                                'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
                                'And ou.sIdUsuario =:Usuario order by ot.sIdFolio, ot.sNumeroOrden') ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value    := Global_Contrato ;

    if (global_grupo <> 'ACCESO_TOTAL') Then
    begin
      OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType  := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('Usuario').Value     := Global_Usuario ;
    end;

    try
      OrdenesdeTrabajo.Open ;
    except
      on e:exception do
      begin
        ShowMessage(e.Message);
      end;

    end;


    if (global_frmActivo = 'frm_pedidos') then
      dxInsertar.Click;

    Plataformas.Active := False ;
    Plataformas.Open ;

    Pernoctan.Active := False ;
    Pernoctan.Open ;

    TiposdeOrden.Active := False ;
    TiposdeOrden.Open ;

    Estatus.Active := False ;
    Estatus.Open ;

    sTipo := '' ;
    sPlataforma := '' ;
    sPernocta := '' ;

  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al iniciar formulario', 0);
    end;
  end;
end;

procedure TfrmOrdenes.OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmOrdenes.OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmOrdenes.OrdenesdeTrabajoiJornadaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmOrdenes.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  if (progreso.Visible = True) and (memDatos.Visible = True)then
  begin
    progreso.Visible := False;
    memDatos.Visible := False;
    lblDetalles.Visible := False;
  end;
//  if progreso2.Visible = True then progreso2.Visible := False;

end;

procedure TfrmOrdenes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
       tmDescripcion.SetFocus;
end;

procedure TfrmOrdenes.tsNumeroOrdenEnter(Sender: TObject);
begin
//  tsNumeroOrden.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tsNumeroOrdenExit(Sender: TObject);
begin
//  tsNumeroOrden.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tmDescripcionEnter(Sender: TObject);
begin
//  tmDescripcion.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tmDescripcionExit(Sender: TObject);
begin
//  tmDescripcion.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tcIdStatusEnter(Sender: TObject);
begin
//    tcIdStatus.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tcIdStatusExit(Sender: TObject);
begin
//    tcIdStatus.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tsFormatoKeyPress(Sender: TObject; var Key: Char);
begin
//  If Key = #13 Then
//    tiJornada.SetFocus
end;

procedure TfrmOrdenes.tsFormatoEnter(Sender: TObject);
begin
//    tsFormato.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tsFormatoExit(Sender: TObject);
begin
//    tsFormato.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tsDescripcionCortaEnter(Sender: TObject);
begin
//    tsDescripcionCorta.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tsDescripcionCortaExit(Sender: TObject);
begin
//    tsDescripcionCorta.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tsDescripcionCortaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tmDescripcion.SetFocus
end;

procedure TfrmOrdenes.tiJornadaChange(Sender: TObject);
begin
//  tdbeditchangei(tiJornada,'Jornada');
end;

procedure TfrmOrdenes.tiJornadaEnter(Sender: TObject);
begin
//    tiJornada.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tiJornadaExit(Sender: TObject);
begin
//    tiJornada.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tiJornadaKeyPress(Sender: TObject; var Key: Char);
begin

//  If Key = #13 Then
//      tiConsecutivo.SetFocus
end;

procedure TfrmOrdenes.tiConsecutivoChange(Sender: TObject);
begin
//  tdbeditchangei(tiConsecutivo,'Consecutivo');
end;

procedure TfrmOrdenes.tiConsecutivoEnter(Sender: TObject);
begin
//    tiConsecutivo.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tiConsecutivoExit(Sender: TObject);
begin
//    tiConsecutivo.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tiConsecutivoKeyPress(Sender: TObject;
  var Key: Char);
begin

//  If Key = #13 Then
//      tiConsecutivoTierra.SetFocus
end;

procedure TfrmOrdenes.tiConsecutivoTierraChange(Sender: TObject);
begin
//  tdbeditchangei(tiConsecutivoTierra,'Consecutivo en tierra');
end;

procedure TfrmOrdenes.tiConsecutivoTierraEnter(Sender: TObject);
begin
//    tiConsecutivoTierra.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tiConsecutivoTierraExit(Sender: TObject);
begin
//    tiConsecutivoTierra.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tiConsecutivoTierraKeyPress(Sender: TObject;
  var Key: Char);
begin

//  If Key = #13 Then
//      tsFormato.SetFocus
end;

procedure TfrmOrdenes.tsIdFolioEnter(Sender: TObject);
begin
//    tsIdFolio.Color := global_color_entradaERP
end;

procedure TfrmOrdenes.tsIdFolioExit(Sender: TObject);
begin
//    tsIdFolio.Color := global_color_salidaERP
end;

procedure TfrmOrdenes.tsIdFolioKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    tsDescripcionCorta.SetFocus
end;

//soad -> Funcion para actualizar todos los consecutivos de los Reportes Diarios...
//*********************************************************************************
procedure TfrmOrdenes.ActualizaReporte(sFrente: string; valor :boolean);
var cad, reporte : string;
var i, x, j : integer;
begin
     //Busqueda de los reportes diarios para cambiar el numero de reporte...
     connection.qryuBusca.Active := False ;
     connection.qryuBusca.SQL.Clear ;
     connection.qryuBusca.SQL.Add('select sNumeroReporte from reportediario where sContrato = :Contrato and sNumeroOrden =:Frente ');
     connection.qryuBusca.Params.ParamByName('Contrato').DataType := ftString ;
     connection.qryuBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
     connection.qryuBusca.Params.ParamByName('Frente').DataType   := ftString ;
     connection.qryuBusca.Params.ParamByName('Frente').Value      := sFrente;
     connection.qryuBusca.Open;

     if connection.qryuBusca.RecordCount > 0 then
     begin
//         progreso2.Visible  := True;
//         progreso2.Min      := 1;
//         progreso2.Position := 1;
//         progreso2.Max      := connection.qryuBusca.RecordCount + 1;
         while not connection.qryuBusca.Eof do
         begin
             //Se Forma la Cadena cuando se cambia el nombre de frente...
             i   := length(connection.qryuBusca.FieldValues['sNumeroReporte']);
             cad := copy(connection.qryuBusca.FieldValues['sNumeroReporte'],(i+1)-3,3);
//             if  valor = true then
//                 reporte := tsFormato.Text + cad
//             else
//                 reporte := sFrente + '-'+ cad;

             //Actualizacion del reporte diario..
             connection.qryuBusca2.Active := False ;
             connection.qryuBusca2.SQL.Clear ;
             connection.qryuBusca2.SQL.Add('update reportediario set  sNumeroReporte = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente and sNumeroReporte = :Numero');
             connection.qryuBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryuBusca2.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryuBusca2.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryuBusca2.Params.ParamByName('Nuevo').Value       := reporte;
             connection.qryuBusca2.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryuBusca2.Params.ParamByName('Frente').Value      := sFrente;
             connection.qryuBusca2.Params.ParamByName('Numero').DataType   := ftString ;
             connection.qryuBusca2.Params.ParamByName('Numero').Value      := connection.qryuBusca.FieldValues['sNumeroReporte'];
             connection.qryuBusca2.ExecSQL ;

             //Actualizacion del FOTOGRAFIAS.. 22 Frebrero de 2011..
             connection.qryuBusca2.Active := False ;
             connection.qryuBusca2.SQL.Clear ;
             connection.qryuBusca2.SQL.Add('update reportefotografico set  sNumeroReporte = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente and sNumeroReporte = :Numero');
             connection.qryuBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryuBusca2.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryuBusca2.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryuBusca2.Params.ParamByName('Nuevo').Value       := reporte;
             connection.qryuBusca2.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryuBusca2.Params.ParamByName('Frente').Value      := sFrente;
             connection.qryuBusca2.Params.ParamByName('Numero').DataType   := ftString ;
             connection.qryuBusca2.Params.ParamByName('Numero').Value      := connection.qryuBusca.FieldValues['sNumeroReporte'];
             connection.qryuBusca2.ExecSQL ;

//             progreso2.Position := progreso2.Position + 1;
             connection.qryuBusca.Next;
         end;
         if valor = True then
            messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
     end
     else
        if valor = True then
           messageDLG('No se encontraron Reportes Diarios con el Formato Anterior',mtInformation, [mbOK], 0);

end;

procedure TfrmOrdenes.AsginaFrenteUsuario(dParamFrente: string);
begin
    //Ahora buscamos los usuarios que tengan habilitada la opcion de asignar Frentes en autoo..
    connection.qryuBusca2.Active := False ;
    connection.qryuBusca2.SQL.Clear ;
    connection.qryuBusca2.SQL.Add('select sIdUsuario from usuarios where lAsignaFrentes = '+QuotedStr('Si'));
    connection.qryuBusca2.Open;

    if connection.qryuBusca2.RecordCount > 0 then
    begin
        while not connection.qryuBusca2.Eof do
        begin
            try
               //Se inserta el nuevo frente de trabajo a los usuarios...
               connection.zuCommand.Active := False ;
               connection.zuCommand.SQL.Clear ;
               connection.zuCommand.SQL.Add ( 'INSERT INTO ordenesxusuario ( sIdUsuario, sContrato, sNumeroOrden, sDerechos) VALUES ' +
                                             '(:usuario, :contrato, :Orden, '+QuotedStr('LECTURA')+')') ;
               connection.zuCommand.Params.ParamByName('contrato').DataType := ftString ;
               connection.zuCommand.Params.ParamByName('contrato').value    := global_contrato ;
               connection.zuCommand.Params.ParamByName('Orden').DataType    := ftString ;
               connection.zuCommand.Params.ParamByName('Orden').value       := dParamFrente ;
               connection.zuCommand.Params.ParamByName('Usuario').DataType  := ftString ;
               connection.zuCommand.Params.ParamByName('Usuario').value     := connection.qryuBusca2.FieldValues['sIdUsuario'] ;
               connection.zuCommand.ExecSQL ;
            Except

            end;
            connection.qryuBusca2.Next;
        end;
    end;
end;

procedure TfrmOrdenes.btnAddClick(Sender: TObject);
begin
 activapop(frmOrdenes, popupprincipal);
  try
   Opcion := 'Nuevo';
   frmBarra1.btnAddClick(Sender);

   OrdenesdeTrabajo.Append ;

   InsertarValores;
   OrdenesdeTrabajo.FieldValues ['cIdStatus'] := 'P';
   tsNumeroOrden.SetFocus ;
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al agregar registro', 0);
    end;
  end;
  grid_ordenes.Enabled:=false;
end;

procedure TfrmOrdenes.btnCancelClick(Sender: TObject);
begin
 try

    frmBarra1.btnCancelClick(Sender);
    OrdenesdeTrabajo.Cancel ;

  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al cancelar', 0);
    end;
  end;
 grid_ordenes.Enabled:=true;
end;

procedure TfrmOrdenes.btnDeleteClick(Sender: TObject);
var
  cadena: string;
begin

  if OrdenesdeTrabajo.RecordCount > 0 then
  begin
    if MessageDlg('Desea eliminar el Registro Activo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
       if BuscaAntesEliminar_datos(1,'ordenesdetrabajo', 'sContrato', 'sNumeroOrden', '', '', global_contrato, OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString, '', '',
          'el Folio de Programa', True ,progreso) then
          exit;

        //Llamada a funcion Buscar Frente en la Base de Datos..
        opcion := 'borrar';

        Kardex('Frentes de Trabajo', 'Borra Frente de Trabajo', FrentT, 'Frente de Trabajo', '', '', '');
        {procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamAct, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string);}
        BarraMostrar(True,progreso, LabelProceso);
        BuscaElimina_datos(1,'ordenesdetrabajo', 'sContrato', 'sNumeroOrden', '', '', global_contrato, OrdenesdeTrabajo.FieldValues['sNumeroOrden'], '', '', '', tsNumeroOrden.text, '', '', 'borrar', True, progreso);
        BarraMostrar(False,progreso, LabelProceso);
        OrdenesdeTrabajo.Delete;

//
//        if global_frmActivo = 'frm_pedidos' then
//          frmPedidos.zqOrdenes.Refresh ;

    end
  end;
end;

procedure TfrmOrdenes.btnEditClick(Sender: TObject);
begin
  activapop(frmOrdenes, popupprincipal);
  frmBarra1.btnEditClick(sender);
  sIdOrig := OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
  try
    opcion  := 'actualizar';
    formato := OrdenesdeTrabajo.FieldValues['sFormato'];
    FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    OrdenesdeTrabajo.Edit ;

  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Frentes de Trabajo', 'Al editar registro', 0);
      dxCancelar.Click ;
    end;
  end ;
  tsNumeroOrden.SetFocus ;
  grid_ordenes.Enabled:=false;
end;

procedure TfrmOrdenes.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOrdenes.btnPostClick(Sender: TObject);
var
  cadena, sId   : string;
  nombres,
  cadenas  : TStringList;
  lEdita   : boolean;
  indice   : integer;
begin

  //try
    If (OrdenesdeTrabajo.FieldValues ['sFormato' ] = Null) OR (OrdenesdeTrabajo.FieldValues ['sFormato' ] = '') Then
      OrdenesdeTrabajo.FieldValues ['sFormato' ] := OrdenesdeTrabajo.FieldValues ['sNumeroOrden' ] + '-' ;

    sTipo       := OrdenesdeTrabajo.FieldValues ['sIdTipoOrden' ] ;
    sPlataforma := OrdenesdeTrabajo.FieldValues ['sIdPlataforma' ] ;
    sPernocta   := OrdenesdeTrabajo.FieldValues ['sIdPernocta' ] ;

    //empieza validacion
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Frente de trabajo');nombres.Add('Titulo de Proyecto');
    nombres.Add('Descripción Corta');nombres.Add('Oficio de Autorización');
    nombres.Add('Status');

    cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsIdFolio.Text);
    cadenas.Add(tsDescripcionCorta.Text);cadenas.Add(tsOficioAutorizacion.Text);

//    cadenas.Add(tcIdStatus.Text);

    if not validaTexto(nombres, cadenas, '', '') then
    begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
    end;


    global_FrenteTrabajo :=  tsNumeroOrden.Text;
    If OrdenesdeTrabajo.State = dsEdit Then
    Begin
      Kardex('Frentes de Trabajo','Edita  Frente de Trabajo', tsNumeroOrden.Text, 'Frente de Trabajo', '', '', '' );
      lEdita := true;
    End
    Else
    Begin
      Kardex('Frentes de Trabajo','Crea   Frente de Trabajo', tsNumeroOrden.Text, 'Frente de Trabajo', '', '', '' );
      lEdita := false;
    End;

    sId := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    OrdenesdeTrabajo.FieldValues ['sIdPlataforma' ] := plataformas.FieldByName('sIdPlataforma').AsString;
    OrdenesdeTrabajo.FieldValues ['sIdPernocta' ]   := pernoctan.FieldByName('sIdPernocta').AsString;

    if Opcion = 'Nuevo' then
    begin
      FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
      OrdenesdeTrabajo.Post ;
      AsginaFrenteUsuario(FrentT);
      MessageDlg('Los datos se guardaron correctamente!', mtInformation, [mbOk], 0);
    end
    else
    begin
      if FrentT <> tsNumeroOrden.Text then
      begin
        if MessageDlg('Si Modifica el Nombre del Frente de Trabajo, Todos los Datos Cambiaran al Nuevo, Desea Continuar?, ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          //Llamada a funcion Buscar Frente en la Base de Datos..
//          tsFormato.Text := tsNumeroOrden.Text;
          OrdenesdeTrabajo.Post ;
          frmBarra1.btnPostClick(Sender);

          {procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamAct, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string);}
          BuscaElimina_datos(1, 'ordenesdetrabajo', 'sContrato', 'sNumeroOrden', '', '', global_contrato, FrentT, '', '', '', tsNumeroOrden.text, '', '', 'actualizar', True, progreso);
        end
        else
           exit;
      end
      else
      begin
          OrdenesdeTrabajo.Post ;
          frmBarra1.btnPostClick(Sender);

      end;
    end;

    Try

//      frmPedidos.cbbFrentes.SetFocus;
    Except
    end;

    Try
//      frmRequisicionPerf.tsNumeroOrden.Items.Add(FrentT);
//      frmRequisicionPerf.tsNumeroOrden.ItemIndex := frmRequisicionPerf.tsNumeroOrden.Items.IndexOf(FrentT);
//      frmRequisicionPerf.tsNumeroOrden.SetFocus;
    Except
    end;

    Try
//      frmEntradaAlmacen.CargaFrentes;
      frmEntradaAlmacen.cxNumeroOrden.ItemIndex := frmEntradaAlmacen.cxNumeroOrden.Properties.Items.IndexOf(FrentT);
      frmEntradaAlmacen.cxNumeroOrden.SetFocus;
    Except
    end;

    Try
    
    Except
    end;

  desactivapop(popupprincipal);
  grid_ordenes.Enabled         := true;

end;

procedure TfrmOrdenes.btnRefreshClick(Sender: TObject);
begin
try
    OrdenesdeTrabajo.Active ;
    OrdenesdeTrabajo.Open ;
    Plataformas.Active := False ;
    Plataformas.Open ;
    Pernoctan.Active := False ;
    Pernoctan.Open ;
    TiposdeOrden.Active := False ;
    TiposdeOrden.Open ;
    Estatus.Active := False ;
    Estatus.Open ;
    TiposdeOrden.Active := False ;
    TiposdeOrden.Open ;
    Estatus.Active := False ;
    Estatus.Open ;
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al actualizar grid', 0);
    end;
  end;
end;

procedure TfrmOrdenes.InsertarValores;
begin
  OrdenesdeTrabajo.FieldValues[ 'sContrato' ]  := Global_Contrato ;
  OrdenesdeTrabajo.FieldValues['dFiProgramado'] := Date ;
  OrdenesdeTrabajo.FieldValues['dFfProgramado'] := Date ;
  OrdenesdeTrabajo.FieldValues['sIdPlataforma'] := sPlataforma ;
  OrdenesdeTrabajo.FieldValues['sIdPernocta'] := sPernocta ;
  OrdenesdeTrabajo.FieldValues['sIdTipoOrden'] := 'I' ;
  OrdenesdeTrabajo.FieldValues['sIdFolio'] := '' ;
  OrdenesdeTrabajo.FieldValues ['sFormato' ] := '' ;
  OrdenesdeTrabajo.FieldValues ['iJornada' ] := 0 ;
  OrdenesdeTrabajo.FieldValues ['iConsecutivo' ] := 1 ;
  OrdenesdeTrabajo.FieldValues ['iConsecutivoTierra' ] := 0 ;
  OrdenesdeTrabajo.FieldValues ['mComentarios' ] := '*' ;
  OrdenesdeTrabajo.FieldValues ['sDescripcionCorta' ] := '*' ;
  OrdenesdeTrabajo.FieldValues ['sPedidoAsociado'] := '*';
  OrdenesdeTrabajo.FieldValues ['sApoyo' ] := 'Cuadrillas' ;

  OrdenesdeTrabajo.FieldValues ['sOficioAutorizacion']       :=  '*';
  OrdenesdeTrabajo.FieldValues ['mDescripcion']       :=  '*';

end;
end.
