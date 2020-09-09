unit frm_GruposUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, ZAbstractRODataset,unitActivaPop,
  ZAbstractDataset, ZDataset, IdSSLOpenSSL, UNITEXCEPCIONES,
  unittbotonespermisos, UnitValidaTexto, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, CxGridExportLink, ShellApi,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxContainer,
  cxTextEdit, cxDBEdit, dxLayoutcxEditAdapters, cxSplitter, frm_barraH1,
  cxLabel, dxLayoutContainer, dxLayoutControl, frm_barraH2, cxImage, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, MemDS, UnitGenerales,
  DBAccess, Uni, cxButtons;

type
  TfrmGrupos = class(TForm)
    ds_grupos: TDataSource;
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
    Panel2: TPanel;
    grid_fases: TcxGrid;
    dbg_fasesDBTableView1: TcxGridDBTableView;
    Grid__fase1: TcxGridDBColumn;
    Grid__fases2: TcxGridDBColumn;
    Grid__fases3: TcxGridDBColumn;
    dbg_fasesLevel1: TcxGridLevel;
    ExportarExcel1: TMenuItem;
    dlgSave1: TSaveDialog;
    tsIdGrupo: TcxDBTextEdit;
    tsDescripcion: TcxDBTextEdit;
    sMail: TcxDBTextEdit;
    sPassword: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    Panel1: TPanel;
    panelBotones: TPanel;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    cxSplitter1: TcxSplitter;
    Panel3: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutItem2: TdxLayoutItem;
    imgEmp: TcxDBImage;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Grid__fases4: TcxGridDBColumn;
    EvaluaProveedor: TcxDBComboBox;
    dxLayoutItem1: TdxLayoutItem;
    PanelPrincipal: TPanel;
    PanelDetalle: TPanel;
    cxSplitterDetalle: TcxSplitter;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    btnEliminarDetalle: TcxButton;
    PanelLeyenda2: TPanel;
    cxLeyenda3: TcxLabel;
    PanelInfoD: TPanel;
    cxSplitter2: TcxSplitter;
    gridDetalleDBTableView1: TcxGridDBTableView;
    gridDetalleLevel1: TcxGridLevel;
    gridDetalle: TcxGrid;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    uCCPerfil: TUniQuery;
    uCC: TUniQuery;
    ds_ccPerfil: TDataSource;
    ds_cc: TDataSource;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxCC: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    Grupos: TUniQuery;
    gridColumnD1: TcxGridDBColumn;
    gridColumnD2: TcxGridDBColumn;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
//    procedure frmBarra1btnAddClick(Sender: TObject);
//    procedure frmBarra1btnEditClick(Sender: TObject);
//    procedure frmBarra1btnPostClick(Sender: TObject);
//    procedure frmBarra1btnCancelClick(Sender: TObject);
//    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);

    procedure sMailExit(Sender: TObject);
    procedure sPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure sMailKeyPress(Sender: TObject; var Key: Char);

    procedure ExportarExcel1Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure imgEmpDblClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure dbg_fasesDBTableView1DataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure dbg_fasesDBTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnEliminarDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure GruposAfterScroll(DataSet: TDataSet);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupos: TfrmGrupos;
  MiConexion, IsOpen : boolean;
  titulo, titulo2: string;
implementation
 uses frm_usuarios;
{$R *.dfm}

procedure TfrmGrupos.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmGrupos.EnterControl(Sender: TObject);
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

procedure TfrmGrupos.SalidaControl(Sender: TObject);
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

procedure TfrmGrupos.tsIdEmbarcacionKeyPress(Sender: TObject;  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;


procedure TfrmGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(dbg_fasesDBTableView1,frmGrupos,1);
  guardar_leer_grid(gridDetalleDBTableView1,frmGrupos,1);
  Grupos.Cancel ;
  action := cafree ;
end;

procedure TfrmGrupos.FormShow(Sender: TObject);
begin

  PanelDetalle.Visible:=False;
  cxSplitterDetalle.Visible:=False;
  OpcButton := '' ;
  titulo:='Perfiles de Usuario';
  titulo2:='Centros de Costos por Perfil';
  uCC.Active:=False;
  AsignarSQL(uCC,'ordenesdetrabajo',pUpdate);
  FiltrarDataSet(uCC,'Contrato,TProyecto',[global_contrato,'CENTRO_COSTO']);
  ucc.Open;
  uccPerfil.Active;
  AsignarSQL(uccPerfil,'ccxPerfil',pUpdate);
  FiltrarDataSet(uccPerfil,'Contrato',[global_contrato]);
  uccPerfil.Open;
  IsOpen:=False;
  cxLeyenda.Caption:=titulo;
  Grupos.Active := False ;
  Grupos.Open ;
  IsOpen:=True;
  MiConexion := True;
  guardar_leer_grid(dbg_fasesDBTableView1,frmGrupos,0);
  guardar_leer_grid(gridDetalleDBTableView1,frmGrupos,0);
end;

//procedure TfrmGrupos.frmBarra1btnAddClick(Sender: TObject);
//begin
////  frmBarra1.btnAddClick(Sender);
//  //activapop(frmGrupos,popupprincipal);
//  Insertar1.Enabled := False ;
//  Editar1.Enabled := False ;
//  Registrar1.Enabled := True ;
//  Can1.Enabled := True ;
//  Eliminar1.Enabled := False ;
//  Refresh1.Enabled := False ;
//  Salir1.Enabled := False ;
//  Grupos.Append ;
//  Grupos.FieldValues['sIdGrupo']     := '' ;
//  Grupos.FieldValues['sDescripcion'] := '' ;
//  Grupos.FieldValues['sMail']        := '' ;
//  Grupos.FieldValues['sPassword']    := '' ;
//  MiConexion := True;
//  tsIdGrupo.SetFocus ;

////  frmBarra1.btnPrinter.Enabled := False;
//  grid_fases.Enabled := False;
//end;
//
//procedure TfrmGrupos.frmBarra1btnEditClick(Sender: TObject);
//begin
////   frmBarra1.btnEditClick(Sender);
//   //activapop(frmGrupos,popupprincipal);
//   Insertar1.Enabled := False ;
//   Editar1.Enabled := False ;
//   Registrar1.Enabled := True ;
//   Can1.Enabled := True ;
//   Eliminar1.Enabled := False ;
//   Refresh1.Enabled := False ;
//   Salir1.Enabled := False ;
//   MiConexion := True;
//   try
//      Grupos.Edit ;
//   except
//      on e : exception do begin
//        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Grupos', 'Al editar registro', 0);
////        frmbarra1.btnCancel.Click ;
//      end;
//   end ;
//   tsIdGrupo.SetFocus;

////   frmBarra1.btnPrinter.Enabled := False;
//   grid_fases.Enabled := False;
//end;
//
//procedure TfrmGrupos.frmBarra1btnPostClick(Sender: TObject);
//var
//  nombres, cadenas: TStringList;
//begin
//  {Validacion de campos}
//  nombres:=TStringList.Create;cadenas:=TStringList.Create;
//  nombres.Add('Descripcion');cadenas.Add(tsDescripcion.Text);
//  if not validaTexto(nombres, cadenas, 'Grupo', tsIdGrupo.Text) then
//  begin
//      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
//      exit;
//  end;
//  {Continua insercion de datos}
//  try
//      if (sMail.Text <> '') and (sPassword.Text <> '') then
//      begin
//            if MiConexion  then
//               messageDLG('Se comproborá Mail y password, esto puede tardar unos segundos...', mtInformation, [mbOk], 0);
//            connection.idMessage.FromList.EMailAddresses   := sMail.Text;
//            if sPassword.Text <> '' then
//            begin
//    	          connection.idSMTP.Username := sMail.Text ;
//                connection.idSMTP.Password := sPassword.Text;
//                try
//                    try
//                        if not connection.idsmtp.Connected then
//                        begin
//                            connection.idsmtp.Connect;
//                            if connection.idsmtp.Connected then
//                                messageDLG('Mail y Password Correctos!', mtInformation, [mbOk], 0)
//                            else
//                            begin
//                                messageDLG('Mail y Password Incorrectos!, Favor de Verificar datos o si tiene conexión a internet.', mtInformation, [mbOk], 0);
//                                Grupos.Cancel ;
//                                exit;
//                            end;
//                        end;
//                    except
//                    on e:eidosslcouldnotloadssllibrary do
//                    begin
//                        MiConexion := False;
////                        frmGrupos.frmBarra1.btnPost.Click;
//                    end;
//                end;
//                finally
//                    connection.idsmtp.Disconnect(true);
//                end;
//            end;
//      end;
//
//      Grupos.Post ;
//      Insertar1.Enabled := True ;
//      Editar1.Enabled := True ;
//      Registrar1.Enabled := False ;
//      Can1.Enabled := False ;
//      Eliminar1.Enabled := True ;
//      Refresh1.Enabled := True ;
//      Salir1.Enabled := True ;
////      frmBarra1.btnCancelClick(Sender);
//      //desactivapop(popupprincipal);

//      //frmBarra1.btnPostClick(Sender);
////      frmBarra1.btnPrinter.Enabled := False;
//  except
//      on e : exception do begin
//        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Grupos', 'Al salvar registro', 0);
////        frmbarra1.btnCancel.Click ;
//      end;
//  end;
//  nombres.free;cadenas.free;
//  grid_fases.Enabled := True;
//end;

//procedure TfrmGrupos.frmBarra1btnCancelClick(Sender: TObject);
//begin
////   frmBarra1.btnCancelClick(Sender);
//   Insertar1.Enabled := True ;
//   Editar1.Enabled := True ;
//   Registrar1.Enabled := False ;
//   Can1.Enabled := False ;
//   Eliminar1.Enabled := True ;
//   Refresh1.Enabled := True ;
//   Salir1.Enabled := True ;
//   Grupos.Cancel ;
//   //desactivapop(popupprincipal);

////   frmBarra1.btnPrinter.Enabled := False;
//   grid_fases.Enabled := True;
//end;



procedure TfrmGrupos.GruposAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then begin
    cxLeyenda3.Caption:='Seleccionado: '+grupos.FieldByName('sIdGrupo').AsString;
    uccPerfil.Filtered:=False;
    uccPerfil.Filter:='sIdGrupo = '+QuotedStr(grupos.FieldByName('sIdGrupo').AsString);
    uccPerfil.Filtered:=True;
  end;
end;

procedure TfrmGrupos.imgEmpDblClick(Sender: TObject);
begin
  tcxImage(ImgEmp).LoadFromFile;
end;

//procedure TfrmGrupos.frmBarra1btnExitClick(Sender: TObject);
//begin
////   frmBarra1.btnExitClick(Sender);
//   Insertar1.Enabled := True ;
//   Editar1.Enabled := True ;
//   Registrar1.Enabled := False ;
//   Can1.Enabled := False ;
//   Eliminar1.Enabled := True ;
//   Refresh1.Enabled := True ;
//   Salir1.Enabled := True ;
//   close
//end;



procedure TfrmGrupos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    sMail.SetFocus
end;


procedure TfrmGrupos.cxCancelarDetalleClick(Sender: TObject);
begin
  uccPerfil.Cancel;
  cxSplitter2.Visible:=False;
  PanelInfoD.Visible:=False;
  cxLeyenda2.Caption:=titulo2;
end;

procedure TfrmGrupos.cxEditaDetalleClick(Sender: TObject);
begin
  if uCCPerfil.RecordCount>0 then begin
    cxLeyenda2.Caption:=titulo2+' [Editando]';
    cxSplitter2.Visible:=True;
    PanelInfoD.Visible:=True;
    uccPerfil.Edit;
  end
  else
    MessageDlg('No hay datos suficientes para editar!',mtInformation,[mbOk],0);
end;

procedure TfrmGrupos.cxGuardarDetalleClick(Sender: TObject);
begin
  if uccPerfil.State in [dsInsert,dsEdit] then begin
    uccPerfil.Post;
    uccPerfil.Refresh;
    cxLeyenda2.Caption:=titulo2;
  end;
  cxSplitter2.Visible:=False;
  PanelInfoD.Visible:=False;
end;

procedure TfrmGrupos.cxNuevoDetalleClick(Sender: TObject);
begin
  if uCC.RecordCount > 0 then begin
    uCCPerfil.Append;
    uCCPerfil.FieldByName('sIdGrupo').AsString:=grupos.FieldByName('sIdGrupo').AsString;
    uCCPerfil.FieldByName('sContrato').AsString:=GLOBAL_CONTRATO;
    cxSplitter2.Visible:=True;
    PanelInfoD.Visible:=True;
  end
  else
    MessageDlg('No hay Centros de Costos',mtInformation,[mbOk],0);
end;

procedure TfrmGrupos.dbg_fasesDBTableView1DataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen:=False;
end;

procedure TfrmGrupos.dbg_fasesDBTableView1DataControllerFilterChanged(
  Sender: TObject);
begin
  IsOpen:=True;
end;



procedure TfrmGrupos.btnAddClick(Sender: TObject);
begin
  IsOpen:=False;
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Añadiendo]';
  frmBarraH11.btnAddClick(Sender);
  panel2.Visible:=True;
  Grupos.Append ;
  Grupos.FieldValues['sIdGrupo']     := '' ;
  Grupos.FieldValues['sDescripcion'] := '' ;
  Grupos.FieldValues['sMail']        := '' ;
  Grupos.FieldValues['sPassword']    := '' ;
  MiConexion := True;
  tsIdGrupo.SetFocus ;

  grid_fases.Enabled:=False;
end;

procedure TfrmGrupos.btnCancelClick(Sender: TObject);
begin
  panel2.Visible:=False;
  frmBarraH11.btnAdd.Enabled:=True;
  frmBarraH11.btnEdit.Enabled:=True;
  frmBarraH11.btnDelete.Enabled:=True;
  frmBarraH11.btnPrinter.Enabled:=True;
  grid_fases.Enabled:=True;
  ds_grupos.DataSet.Cancel;
  cxLeyenda.Caption:=titulo;
  IsOpen:=True;
end;

procedure TfrmGrupos.btnDeleteClick(Sender: TObject);
begin
    If Grupos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
         Grupos.Active := False ;
         grupos.Open ;
         IsOpen:=false;
       // ds_grupos.DataSet.Delete;
        grupos.Delete;
        Grupos.ApplyUpdates();
        grupos.Refresh;

          except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo Generales', 'Al eliminar registro', 0);
        end;
      end;
    end


end;

procedure TfrmGrupos.btnDetalleClick(Sender: TObject);
begin
  if not PanelDetalle.Visible then begin
    cxLeyenda2.Caption:=titulo2;

  end;
  cxSplitterDetalle.Visible:= not cxSplitterDetalle.Visible;
  PanelDetalle.Visible:= not PanelDetalle.Visible;
end;

procedure TfrmGrupos.btnEditClick(Sender: TObject);
begin
  IsOpen:=False;
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Editando]';
  panel2.Visible:=True;
  frmBarraH11.btnAdd.Enabled:=False;
  frmBarraH11.btnDelete.Enabled:=False;
  frmBarraH11.btnEdit.Enabled:=False;
  frmBarraH11.btnPrinter.Enabled:=False;
  grid_fases.Enabled:=True;
  Grupos.Edit;
end;

procedure TfrmGrupos.btnEliminarDetalleClick(Sender: TObject);
begin
  if uccPerfil.RecordCount>0 then begin
    uccPerfil.Delete;
    uccPerfil.ApplyUpdates();
    uccPerfil.Refresh;

  end
  else
    MessageDlg('No hay datos para eliminar!',mtInformation,[mbOk],0);
end;

procedure TfrmGrupos.btnPostClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  panel2.Visible:=False;
  frmBarraH11.btnActive;
  frmBarraH11.btnAdd.Enabled:=True;
  frmBarraH11.btnEdit.Enabled:=True;
  frmBarraH11.btnDelete.Enabled:=True;
  frmBarraH11.btnPrinter.Enabled:=True;
  grid_fases.Enabled:=True;
  Grupos.Post;
  Grupos.Refresh;
  IsOpen:=True;
  if global_frmActivo='Perfil' then
      begin
        if assigned(frmUsuarios) then begin
          frmUsuarios.grupos.Refresh;
        end;
  end;

//     cxLeyenda.Caption:=titulo;
//    Panel2.Visible:=False;
//    frmBarraH11.btnActive;
//    frmBarraH11.Visible:=True;
//    cxGridNotificaciones.Enabled:=True;
//    dsNotificaciones.DataSet.Post;
//    dsNotificaciones.DataSet.Refresh;
//
//    SavePlace := cxGridNotificacionesView.DataController.DataSource.DataSet.GetBookmark;
//    zNotificaciones.Refresh;
//    try
//       cxGridNotificacionesView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
//    except
//       cxGridNotificacionesView.DataController.DataSet.FreeBookmark(SavePlace);
//    end;
//
//
//    PermisosBotones(FrmNotificaciones,btnPermisos);
//    frmBarraH11.btnActive;
//    frmBarraH11.btnPrinter.Enabled := False;
//    frmBarraH11.btnExporta.Enabled := False;
//    frmBarraH11.btnDetalle.Enabled := False;
end;


procedure TfrmGrupos.btnRefreshClick(Sender: TObject);
begin
Grupos.Refresh;
end;

procedure TfrmGrupos.ExportarExcel1Click(Sender: TObject);
 Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, grid_fases);
  end;

end;


procedure TfrmGrupos.sMailExit(Sender: TObject);
begin
      if (pos('#',sMail.Text) > 0) or (pos('/',sMail.Text) > 0) or (pos(';',sMail.Text) > 0) or (pos(',',sMail.Text) > 0) then
      begin
          messageDLG('Mail incorrecto, Favor de veriifcar!', mtInformation, [mbOk], 0);
          sMail.SetFocus;
      end
      else
          sMail.Style.Color := global_color_salidaPU
end;

procedure TfrmGrupos.sMailKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        sPassword.SetFocus
end;

procedure TfrmGrupos.sPasswordKeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
          tsIdGrupo.SetFocus
end;

end.
