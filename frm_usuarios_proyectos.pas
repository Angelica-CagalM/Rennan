unit frm_usuarios_proyectos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, DB, MemDS, DBAccess, Uni,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutControlAdapters, Menus, StdCtrls, cxButtons,
  ExtCtrls, global, frm_connection, UnitGenerales, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxSplitter, dxLayoutLookAndFeels, cxImage,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxLabel, frm_barraH1,
  dxBarBuiltInMenu, cxPC, Vcl.ComCtrls, cxListView, cxCalendar, dxToggleSwitch,
  cxCheckBox;

type
  TfrmUsuariosXproyectos = class(TForm)
    dsProyectos: TDataSource;
    dsUsuarios: TDataSource;
    cxViewUsuariosProyecto: TcxGridDBTableView;
    cxGridUsuariosProyectoLevel1: TcxGridLevel;
    cxGridUsuariosProyecto: TcxGrid;
    cxViewUsuariosProyectoColumn1: TcxGridDBColumn;
    cxViewUsuariosProyectoColumn2: TcxGridDBColumn;
    cxViewUsuariosProyectoColumn3: TcxGridDBColumn;
    dsProyectoUsuario: TDataSource;
    zProyectoUsuarioUpt: TZQuery;
    cxSplitter1: TcxSplitter;
    PanelUsuario: TPanel;
    cxGridUsuarios: TcxGrid;
    cxViewUsuarios: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxViewUsuariosColumn1: TcxGridDBColumn;
    ds_perfiles: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLabel1: TcxLabel;
    PanelInfoD: TPanel;
    Panel2: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    btnEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cmbProyecto: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    zProyectos: TUniQuery;
    zUsuarios: TUniQuery;
    zPerfiles: TUniQuery;
    zProyectoUsuario: TUniQuery;
    uProyectoUsuarioUpt: TUniQuery;
    cxPageControl: TcxPageControl;
    cxTabProyectos: TcxTabSheet;
    cxTabAlmacenes: TcxTabSheet;
    cxTabCC: TcxTabSheet;
    cxViewAlmacenes: TcxGridDBTableView;
    cxGridAlmacenesLevel1: TcxGridLevel;
    cxGridAlmacenes: TcxGrid;
    cxColumnInfoD21: TcxGridDBColumn;
    cxColumnInfoD22: TcxGridDBColumn;
    cxColumnInfoD23: TcxGridDBColumn;
    uDatosDetalle: TUniQuery;
    ds_datosDetalle: TDataSource;
    cxPageControlInfoD: TcxPageControl;
    cxTabInfoD1: TcxTabSheet;
    cxTabInfoD2: TcxTabSheet;
    cxTabInfoD3: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxAlmacen: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    uInfoLook: TUniQuery;
    ds_infoLook: TDataSource;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cmbCC: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    uDatosCC: TUniQuery;
    ds_datosCC: TDataSource;
    cxViewCentroCosto: TcxGridDBTableView;
    cxGridCentroCostoLevel1: TcxGridLevel;
    cxGridCentroCosto: TcxGrid;
    cxColumnInfoD31: TcxGridDBColumn;
    cxColumnInfoD32: TcxGridDBColumn;
    cxViewUsuariosColumn2: TcxGridDBColumn;
    cxViewUsuariosColumn3: TcxGridDBColumn;
    cxTabAutorizaciones: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridAutorizaciones: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridAutorizacionesColumn1: TcxGridDBColumn;
    cxLista: TcxListView;
    zAutorizaciones: TUniQuery;
    dsAutorizaciones: TDataSource;
    cxGridAutorizacionesColumn2: TcxGridDBColumn;
    cxTabAutorizacionSAP: TcxTabSheet;
    dsGerentes: TDataSource;
    uGerentes: TUniQuery;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutItem4: TdxLayoutItem;
    cxSAPRelease: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxManagerAprobador: TcxDBLookupComboBox;
    dsApruebaRequisicion: TDataSource;
    zApruebaRequisicion: TUniQuery;
    cxGridAutorizacionesColumn3: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zUsuariosAfterScroll(DataSet: TDataSet);
    procedure btnDetalleClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnEliminarDetalleClick(Sender: TObject);
    procedure cxPageControlChange(Sender: TObject);
    procedure cxListaClick(Sender: TObject);
    procedure cxViewUsuariosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuariosXproyectos: TfrmUsuariosXproyectos;
  btnPermisos:String;
  IsOpen : boolean;
  temE:TUniQuery;
  S: TcxCustomGridTableView;
implementation

{$R *.dfm}


procedure TfrmUsuariosXproyectos.btnDetalleClick(Sender: TObject);
begin
  PanelDetalle.Visible:=not PanelDetalle.Visible;
  cxSplitter1.Visible:= not cxSplitter1.Visible;
  cxNuevoDetalle.Enabled := True;
  cxEditaDetalle.Enabled := True;
  btnEliminarDetalle.Enabled := True;
  if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') and (PanelDetalle.Visible) then
  begin
   cxPageControl.Pages[0].TabVisible := True;
   cxPageControl.Pages[1].TabVisible := True;
   cxPageControl.Pages[2].TabVisible := True;
   cxPageControl.Pages[3].TabVisible := True;
   cxPageControl.Pages[4].TabVisible := False;
  end
  else
  if PanelDetalle.Visible then
  begin
   cxPageControl.Pages[0].TabVisible := True;
   cxPageControl.Pages[1].TabVisible := True;
   cxPageControl.Pages[2].TabVisible := True;
   cxPageControl.Pages[3].TabVisible := False;
   if (temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') then
    cxPageControl.Pages[4].TabVisible := True
   else
    cxPageControl.Pages[4].TabVisible := False;
  end;
end;

procedure TfrmUsuariosXproyectos.btnEliminarDetalleClick(Sender: TObject);
begin
  if MessageDlg('Está seguro que desea eliminar el registro seleccionado?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin

    if cxPageControl.ActivePage = cxTabProyectos then begin
      if zProyectoUsuario.RecordCount > 0 then begin
        zProyectoUsuario.Delete;
        zProyectoUsuario.ApplyUpdates();
        zProyectoUsuario.Refresh;
      end
      else
        MessageDlg('No hay datos para eliminar!',mtInformation,[mbOk],0);
    end
    else
      if cxPageControl.ActivePage = cxTabAlmacenes then begin
        if uDatosDetalle.RecordCount > 0 then begin
          uDatosDetalle.Delete;
          uDatosDetalle.ApplyUpdates();
          uDatosDetalle.Refresh;
        end
        else
          MessageDlg('No hay datos para eliminar',mtInformation,[mbOk],0);
      end
      else
        if cxPageControl.ActivePage = cxTabCC then begin
          if uDatosCC.RecordCount > 0 then begin
            uDatosCC.Delete;
            uDatosCC.ApplyUpdates();
            uDatosCC.Refresh;
          end
          else
            MessageDlg('No hay datos para eliminar',mtInformation,[mbOk],0);
        end
      else
      if cxPageControl.ActivePage = cxTabAutorizaciones then begin
        if zAutorizaciones.RecordCount > 0 then begin
          zAutorizaciones.Delete;
          zAutorizaciones.ApplyUpdates();
          zAutorizaciones.Refresh;
        end
        else
          MessageDlg('No hay datos para eliminar',mtInformation,[mbOk],0);
      end;
  end;
end;

procedure TfrmUsuariosXproyectos.cxCancelarDetalleClick(Sender: TObject);
begin
  if cxPageControl.ActivePage = cxTabProyectos then begin
    zProyectoUsuario.Cancel;
  end;
  if cxPageControl.ActivePage = cxTabAlmacenes then begin
    uDatosDetalle.Cancel;
  end;
  if cxPageControl.ActivePage = cxTabCC then begin
    uDatosCC.Cancel;
  end;
    if cxPageControl.ActivePage = cxTabAutorizaciones then begin
      zAutorizaciones.Cancel;
      cxGridAutorizaciones.OptionsData.Appending := False;
      cxGridAutorizaciones.OptionsData.Editing := False;
      paneldown.Visible:=false;
      cxNuevoDetalle.Enabled := True;
      cxEditaDetalle.Enabled := True;
      btnEliminarDetalle.Enabled := True;
    end
    else
       if cxPageControl.ActivePage = cxTabAutorizacionSAP then
       begin
          zUsuarios.Post;
       end;

  IsOpen:=True;
  PanelInfoD.Visible:=False;
end;

procedure TfrmUsuariosXproyectos.cxEditaDetalleClick(Sender: TObject);
var
  ban: boolean;
begin
  ban:= False;
  if cxPageControl.ActivePage = cxTabProyectos then begin
    if zProyectoUsuario.RecordCount > 0 then begin
      zProyectoUsuario.Edit;
      ban:=True;
    end
    else
      MessageDlg('No hay datos para editar.',mtInformation,[mbOk],0);
  end
  else
    if cxPageControl.ActivePage = cxTabAlmacenes then begin
      if uDatosDetalle.RecordCount > 0 then begin
        uDatosDetalle.Edit;
        ban:=True;
      end
      else
        MessageDlg('No hay datos para editar',mtInformation,[mbOk],0);
    end
    else
      if cxPageControl.ActivePage = cxTabCC  then begin
        if uDatosCC.RecordCount > 0 then begin
          uDatosCC.Edit;
          ban:=True;
        end
        else
          MessageDlg('No hay datos para editar',mtInformation,[mbOk],0);
      end
    else
      if cxPageControl.ActivePage = cxTabAutorizaciones then
      begin
        cxGridAutorizaciones.OptionsData.Editing := True;
        paneldown.Visible:=true;
        cxNuevoDetalle.Enabled := False;
        cxEditaDetalle.Enabled := False;
        btnEliminarDetalle.Enabled := False;

          if zAutorizaciones.RecordCount > 0 then begin
            zAutorizaciones.Edit;
            cxListaClick(Sender);
            ban:=True;
          end
          else
            MessageDlg('No hay datos para editar',mtInformation,[mbOk],0);
      end
      else
       if cxPageControl.ActivePage = cxTabAutorizacionSAP then
       begin
          paneldown.Visible:=true;
          ban:=True;
          zUsuarios.Edit;
       end;
  IsOpen:=False;
  if ban then
    PanelInfoD.Visible:=True;
end;

procedure TfrmUsuariosXproyectos.cxGuardarDetalleClick(Sender: TObject);
begin
  if cxPageControl.ActivePage = cxTabProyectos then begin
    if ValidaExiste(zProyectoUsuario.FieldByName('sContrato').AsString,'usuarios_proyectos','sIdUsuario',zUsuarios.FieldByName('sIdUsuario').AsString, 'Registro') then
      exit;
    zProyectoUsuario.FieldByName('sIdUsuario').AsString:=zUsuarios.FieldByName('sIdUsuario').AsString;
    zProyectoUsuario.Post;
    zProyectoUsuario.Refresh;
  end
  else
    if cxPageControl.ActivePage = cxTabAlmacenes then begin
      uDatosDetalle.Post;
      uDatosDetalle.Refresh;
    end
    else
      if cxPageControl.ActivePage = cxTabCC then begin
        uDatosCC.Post;
        uDatosCC.Refresh;
      end
    else
      if cxPageControl.ActivePage = cxTabAutorizaciones then begin
        zAutorizaciones.Post;
        zAutorizaciones.Refresh;
        zAutorizaciones.FieldByName('AplicaA').AsString;
        cxGridAutorizaciones.OptionsData.Appending := False;
        cxGridAutorizaciones.OptionsData.Editing := False;
        cxNuevoDetalle.Enabled := True;
        cxEditaDetalle.Enabled := True;
        btnEliminarDetalle.Enabled := True;
      end
      else
       if cxPageControl.ActivePage = cxTabAutorizacionSAP then
       begin
          zUsuarios.Post;
          connection.uUsuario.Refresh;
       end;

  IsOpen:=True;
  PanelInfoD.Visible:=False;
end;

procedure TfrmUsuariosXproyectos.cxListaClick(Sender: TObject);
begin
  if cxLista.ItemIndex = -1 then
   begin
      exit;
   end;
   if (cxLista.ItemIndex = 0) and (cxLista.Items.Item[0].Caption = 'Requisiciones') then
   begin
       if (zAutorizaciones.State = dsInsert) or  (zAutorizaciones.State = dsEdit) then
       begin
        zAutorizaciones.FieldByName('AplicaA').AsString:='REQUISICIONES';
        cxGridAutorizacionesColumn3.Visible := False;
       end
       else
       begin
         zAutorizaciones.Filtered := False;
         zAutorizaciones.Filter   := 'AplicaA = "REQUISICIONES" and sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
         zAutorizaciones.Filtered := True;
         cxGridAutorizacionesColumn3.Visible := False;
//         cxGridAutorizaciones.ApplyBestFit();
       end;
   end;
   if (cxLista.ItemIndex = 1) and (cxLista.Items.Item[1].Caption = 'Ordenes de compra') then
   begin
     if (zAutorizaciones.State = dsInsert) or  (zAutorizaciones.State = dsEdit) then
     begin
      zAutorizaciones.FieldByName('AplicaA').AsString:='ORDENES DE COMPRA';
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
         cxGridAutorizacionesColumn3.Visible := True
       else
          cxGridAutorizacionesColumn3.Visible := False;
     end
     else
     begin
       zAutorizaciones.Filtered := False;
       zAutorizaciones.Filter   := 'AplicaA = "ORDENES DE COMPRA" and sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
       zAutorizaciones.Filtered := True;
       if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
         cxGridAutorizacionesColumn3.Visible := True
       else
          cxGridAutorizacionesColumn3.Visible := False;

     end;
   end;
   if (cxLista.ItemIndex = 2) and (cxLista.Items.Item[2].Caption = 'Salidas') then
   begin
      if (zAutorizaciones.State = dsInsert) or  (zAutorizaciones.State = dsEdit) then
      begin
       zAutorizaciones.FieldByName('AplicaA').AsString:='SALIDAS';
       cxGridAutorizacionesColumn3.Visible := False;
      end
      else
      begin
       zAutorizaciones.Filtered := False;
       zAutorizaciones.Filter   := 'AplicaA = "SALIDAS" and sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
       zAutorizaciones.Filtered := True;
       cxGridAutorizacionesColumn3.Visible := False;
      end;
   end;

   if (cxLista.ItemIndex = 3) and (cxLista.Items.Item[3].Caption = 'Entradas') then
   begin
      if (zAutorizaciones.State = dsInsert) or  (zAutorizaciones.State = dsEdit) then
      begin
        zAutorizaciones.FieldByName('AplicaA').AsString:='ENTRADAS';
        cxGridAutorizacionesColumn3.Visible := False;
      end
      else
      begin
       zAutorizaciones.Filtered := False;
       zAutorizaciones.Filter   := 'AplicaA = "ENTRADAS" and sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
       zAutorizaciones.Filtered := True;
       cxGridAutorizacionesColumn3.Visible := False;
      end;
   end;
   if (cxLista.ItemIndex = 4) and (cxLista.Items.Item[4].Caption = 'Aviso de Embarque') then
   begin
    if (zAutorizaciones.State = dsInsert) or  (zAutorizaciones.State = dsEdit) then begin
     zAutorizaciones.FieldByName('AplicaA').AsString:='AVISO DE EMBARQUE';
     cxGridAutorizacionesColumn3.Visible := False;
     end
       else  begin
       zAutorizaciones.Filtered := False;
       zAutorizaciones.Filter   := 'AplicaA = "AVISO DE EMBARQUE" and sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
       zAutorizaciones.Filtered := True;
       cxGridAutorizacionesColumn3.Visible := False;
       end;
   end;

   if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
   begin
//   cxLista.Items.Item[5].Caption := 'SAP';
     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
     begin
      if (zAutorizaciones.State = dsInsert) or  (zAutorizaciones.State = dsEdit) then begin
        zAutorizaciones.FieldByName('AplicaA').AsString:='SAP';
        cxGridAutorizacionesColumn3.Visible := False;
       end
         else  begin
         zAutorizaciones.Filtered := False;
         zAutorizaciones.Filter   := 'AplicaA = "SAP" and sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
         zAutorizaciones.Filtered := True;
         cxGridAutorizacionesColumn3.Visible := False;
         end;
     end;

     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
     begin
       if (zAutorizaciones.State = dsInsert) or  (zAutorizaciones.State = dsEdit) then begin
        zAutorizaciones.FieldByName('AplicaA').AsString:='SOLICITUDES';
        cxGridAutorizacionesColumn3.Visible := False;
       end
       else  begin
         zAutorizaciones.Filtered := False;
         zAutorizaciones.Filter   := 'AplicaA = "SOLICITUDES" and sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
         zAutorizaciones.Filtered := True;
         cxGridAutorizacionesColumn3.Visible := False;
       end;
     end;
   end;
    cxGridAutorizaciones.DataController.Groups.FullExpand;
end;

procedure TfrmUsuariosXproyectos.cxNuevoDetalleClick(Sender: TObject);
begin
  IsOpen:=False;

  if cxPageControl.ActivePage = cxTabProyectos then begin
    zProyectoUsuario.Append;
    zProyectoUsuario.FieldByName('sContrato').AsString:=zProyectos.FieldByName('sContrato').AsString;
  end
  else
    if cxPageControl.ActivePage = cxTabAlmacenes  then begin
      uDatosDetalle.Append;
      uDatosDetalle.FieldByName('sIdUsuario').AsString:=zUsuarios.FieldByName('sIdUsuario').AsString;
      uDatosDetalle.FieldByName('IdAlmacen').AsInteger:=uInfoLook.FieldByName('IdAlmacen').AsInteger;

    end
    else
      if cxPageControl.ActivePage = cxTabCC  then begin
        uDatosCC.Append;
        uDatosCC.FieldByName('sNumeroOrden').AsString:= uInfoLook.FieldByName('sNumeroOrden').AsString;
        uDatosCC.FieldByName('sIdUsuario').AsString:=zUsuarios.FieldByName('sIdUsuario').AsString;
        uDatosCC.FieldByName('sContrato').AsString := GLOBAL_CONTRATO;
      end
    else
      if cxPageControl.ActivePage = cxTabAutorizaciones  then begin
         cxGridAutorizaciones.OptionsData.Appending := True;
         cxGridAutorizaciones.OptionsData.Editing := True;

         paneldown.Visible:=true;
         cxNuevoDetalle.Enabled := False;
         cxEditaDetalle.Enabled := False;
         btnEliminarDetalle.Enabled := False;

        zAutorizaciones.Append;
        zAutorizaciones.FieldByName('sIdUsuario').AsString:=zUsuarios.FieldByName('sIdUsuario').AsString;
        cxListaClick(Sender);
      end;
  PanelInfoD.Visible:=True;

end;

procedure TfrmUsuariosXproyectos.cxPageControlChange(Sender: TObject);
begin
  cxPageControlInfoD.Visible := True;
  cxNuevoDetalle.Enabled := True;
  cxEditaDetalle.Enabled := True;
  btnEliminarDetalle.Enabled := True;
  if cxPageControl.ActivePage = cxTabProyectos then
  begin
    cxPageControlInfoD.ActivePage:= cxTabInfoD1;
    cxLeyenda2.Caption:='Proyectos por Usuario';
  end
  else
    if cxPageControl.ActivePage = cxTabAlmacenes then
    begin
      cxPageControlInfoD.ActivePage:= cxTabInfoD2;
      uInfoLook.Active:=False;
      AsignarSQL(uInfoLook,'alm_almacenes',pUpdate);
      FiltrarDataSet(uInfoLook,'Id,Codigo,IdCiudad',[-1,-1,-1]);
      uInfoLook.Open;
       uInfoLook.RecordCount;
      cxLeyenda2.Caption:='Almacenes por Usuario';

    end
    else
      if cxPageControl.ActivePage = cxTabCC then
      begin
        cxPageControlInfoD.ActivePage:= cxTabInfoD3;
        uInfoLook.Active:=False;
        AsignarSQL(uInfoLook,'ordenesdetrabajo',pUpdate);
        FiltrarDataSet(uInfoLook,'TProyecto,Contrato',['CENTRO_COSTO',GLOBAL_CONTRATO]);
        uInfoLook.Open;
        cxLeyenda2.Caption:='Centros de Costo por Usuario'

      end
      else
        if cxPageControl.ActivePage = cxTabAutorizaciones then
        begin
          cxLista.Items.Item[5].Delete;
          cxLista.ItemIndex := 0;
          cxListaClick(Sender);
          cxPageControlInfoD.Visible:=false;
          paneldown.Visible:=false;
          cxLeyenda2.Caption:='Autorizaciones por Usuario';
        end
        else
         if cxPageControl.ActivePage = cxTabAutorizacionSAP then
         begin
            cxPageControlInfoD.Visible := False;

            zApruebaRequisicion.Active:= False;
            AsignarSQL(zApruebaRequisicion,'alm_aprueba_requisiciones',pUpdate);
            zApruebaRequisicion.Open;

            uGerentes.Active:= False;;
            AsignarSQL(uGerentes,'master_departamento_gerente',pUpdate);
            uGerentes.Open;

            zUsuarios.Edit;

            cxNuevoDetalle.Enabled := False;
            btnEliminarDetalle.Enabled := False;
            cxLeyenda2.Caption:='Autorizaciones ERP SAP';

         end;
  zUsuariosAfterScroll(zUsuarios);
end;

procedure TfrmUsuariosXproyectos.cxViewUsuariosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
if cxPageControl.ActivePage = cxTabAutorizaciones then
cxListaClick(Sender);
end;

procedure TfrmUsuariosXproyectos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(cxViewUsuarios,frmUsuariosXproyectos,1);
  guardar_leer_grid(cxViewUsuariosProyecto,frmUsuariosXproyectos,1);
  guardar_leer_grid(cxViewAlmacenes,frmUsuariosXproyectos,1);
  guardar_leer_grid(cxViewCentroCosto,frmUsuariosXproyectos,1);
    action := cafree ;

end;

procedure TfrmUsuariosXproyectos.FormShow(Sender: TObject);
begin
  IsOpen:=False;
  temE := TUniquery.create(nil);
  temE.Connection := Connection.uConnection;
  temE.Active:=False;
  temE.SQL.Text:='Select FK_Titulo from master_empresa';
  temE.Open;

  zProyectoUsuario.Active:=False;
  AsignarSQL(zProyectoUsuario,'usuarios_proyectos',pUpdate);
  FiltrarDataSet(zProyectoUsuario,'Usuario,Contrato',[-1,-1]);
  zProyectoUsuario.Open;

  uDatosDetalle.Active:=False;
  AsignarSQL(uDatosDetalle,'almacenXusuario',pUpdate);
  FiltrarDataSet(uDatosDetalle,'Almacen,Usuario',[-1,-1]);
  uDatosDetalle.Open;

  uDatosCC.Active:=False;
  AsignarSQL(uDatosCC,'CCxusuario',pUpdate);
  FiltrarDataSet(uDatosCC,'Usuario,CC',[-1,-1]);
  uDatosCC.Open;

  zAutorizaciones.Active:=False;
  AsignarSQL(zAutorizaciones,'master_autorizaciones',pUpdate);
  FiltrarDataSet(zAutorizaciones,'Usuario,Aplicar,Autorizaciones',[-1,-1,-1]);
  zAutorizaciones.Open;

  IsOpen := True;
  btnPermisos:= global_btnPermisos;
  if zUsuarios.Active then
    zUsuarios.Refresh
  else
    zUsuarios.Open;

  if zProyectos.Active then
    zProyectos.Refresh
  else
    zProyectos.Open;

  zPerfiles.Active;
  zPerfiles.Open;
  cxPageControlInfoD.HideTabs:=True;

  cxViewUsuarios.ViewData.Expand(True);
  guardar_leer_grid(cxViewUsuarios,frmUsuariosXproyectos,0);
  guardar_leer_grid(cxViewUsuariosProyecto,frmUsuariosXproyectos,0);
  guardar_leer_grid(cxViewAlmacenes,frmUsuariosXproyectos,0);
  guardar_leer_grid(cxViewCentroCosto,frmUsuariosXproyectos,0);
  PermisosBotones(frmUsuariosXproyectos,btnPermisos);
end;

procedure TfrmUsuariosXproyectos.zUsuariosAfterScroll(DataSet: TDataSet);
var Sender: TObject;
begin
    if (zUsuarios.RecordCount > 0) AND IsOpen then
    begin
      if cxPageControl.ActivePage = cxTabProyectos then begin
        zProyectoUsuario.Filtered:=False;
        zProyectoUsuario.Filter:='sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
        zProyectoUsuario.Filtered:=True;
      end
      else
        if cxPageControl.ActivePage = cxTabAlmacenes then begin
          uDatosDetalle.Filtered:=False;
          uDatosDetalle.Filter:='sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
          uDatosDetalle.Filtered:=True;
          cxViewAlmacenes.ApplyBestFit();
        end
        else
          if cxPageControl.ActivePage = cxTabCC then begin
            uDatosCC.Filtered:=False;
            uDatosCC.Filter:='sIdUsuario = '+QuotedStr(zUsuarios.FieldByName('sIdUsuario').AsString);
            uDatosCC.Filtered:=True;
            cxViewCentroCosto.ApplyBestFit();
          end;
    end;
end;

end.
