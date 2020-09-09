unit frm_setup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, utilerias,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, frm_connection, DB, global,
  Buttons, ImgList, ExtCtrls, ExtDlgs, Jpeg, ZDataset, frm_repositorio,
  ZAbstractRODataset, ZAbstractDataset, UnitExcepciones,
  UnitTIniTracer, UnitValidacion,
  Menus,StrUtils, frxClass, frxDBSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxTextEdit, cxCurrencyEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxGDIPlusClasses, MemDS, DBAccess, Uni,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxListView,
  cxSplitter, dxSkinscxPCPainter, dxLayoutcxEditAdapters, frm_barraH2,
  dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters, cxCheckBox,
  cxButtons, cxGroupBox, cxRadioGroup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxCheckComboBox, cxImage;
type
  TfrmSetup = class(TForm)
    btnOk: TBitBtn;
    BtnCancel: TBitBtn;
    ds_configuracion: TDataSource;
    OpenPicture: TOpenPictureDialog;
    ds_convenios: TDataSource;
    PanelEmpresa: TPanel;
    frConfiguracion: TfrxDBDataset;
    configuracion: TUniQuery;
    Convenios: TUniQuery;
    PanelOpciones: TPanel;
    cxLista: TcxListView;
    cxSplitter1: TcxSplitter;
    lcEmpresaGroup_Root: TdxLayoutGroup;
    lcEmpresa: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    TSNombreCorto: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    TSRFC: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    TSDireccion1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    TSCiudad: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    TSslogan: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    TSPiePagina: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    TSFax: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    TSWeb: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    TSEmail: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    TSRepresentanteObra: TcxDBTextEdit;
    MaskTelefono: TcxDBMaskEdit;
    dxLayoutItem12: TdxLayoutItem;
    PanelInferior: TPanel;
    frmBarraH21: TfrmBarraH2;
    lcFormatoGroup_Root: TdxLayoutGroup;
    lcFormato: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    TSReportescia: TcxDBTextEdit;
    PanelFormato: TPanel;
    dxLayoutGroup3: TdxLayoutGroup;
    tsIdEmbarcacion: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    tdPenaConvencional: TcxDBTextEdit;
    tdRetencion: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    tsBaseCalculo: TcxDBComboBox;
    tsImporteRetencion: TcxDBComboBox;
    tsTipoAjusteCosto: TcxDBComboBox;
    tsTerminoPenalizacion: TcxDBComboBox;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    ChkCmbFormatos: TcxCheckComboBox;
    lcFirmasGroup_Root: TdxLayoutGroup;
    lcFirmas: TdxLayoutControl;
    dxLayoutGroup6: TdxLayoutGroup;
    tsFirmasElectronicas: TcxDBComboBox;
    PanelFirmas: TPanel;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dbMailAutoriza: TcxDBComboBox;
    tiFirmasReportes: TcxDBComboBox;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    tsEstimacionesGenerales: TcxDBComboBox;
    tsReporteBarco: TcxDBComboBox;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    tsGeneradores: TcxDBComboBox;
    tiFirmas: TcxDBComboBox;
    tsGeneradoresBarco: TcxDBComboBox;
    tsAnexo: TcxDBComboBox;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    chkFirma3: TcxCheckBox;
    chkFirma2: TcxCheckBox;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    PanelPlazos: TPanel;
    lcPlazosGroup_Root: TdxLayoutGroup;
    lcPlazos: TdxLayoutControl;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    tsIdConvenio: TcxDBLookupComboBox;
    dxLayoutItem37: TdxLayoutItem;
    tlCalculoPonderado: TcxDBComboBox;
    tsRangoEstimacion: TcxDBComboBox;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    tsValidaAvisos: TcxDBComboBox;
    tsValidaAvisosGen: TcxDBComboBox;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    cxDBComboBox9: TcxDBComboBox;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    cmdRecargarMenu: TcxButton;
    dxLayoutItem44: TdxLayoutItem;
    PanelJornadas: TPanel;
    lcJornadasGroup_Root: TdxLayoutGroup;
    lcJornadas: TdxLayoutControl;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    edtMartes: TcxDBTextEdit;
    edtViernes: TcxDBTextEdit;
    editDomingo: TcxDBTextEdit;
    edtSabado: TcxDBTextEdit;
    edtJueves: TcxDBTextEdit;
    edtMiercoles: TcxDBTextEdit;
    edtLunes: TcxDBTextEdit;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    CmbCalculaTM: TcxDBComboBox;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    edtPernocta: TcxDBTextEdit;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    cbSumar: TcxDBComboBox;
    dxLayoutItem55: TdxLayoutItem;
    cbAnexo: TcxDBComboBox;
    dxLayoutItem54: TdxLayoutItem;
    chkFirma1: TcxCheckBox;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    mFirma1: TcxDBMemo;
    mFirma2: TcxDBMemo;
    mFirma3: TcxDBMemo;
    Logo: TdxLayoutGroup;
    tsSeguridadGenerador: TcxDBComboBox;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    tiRedondeoEmbarcacion: TcxDBComboBox;
    dxLayoutItem35: TdxLayoutItem;
    TSNombre: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutItem42: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxImagen: TcxDBImage;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem56: TdxLayoutItem;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    TsDireccion2: TcxDBTextEdit;
    dxLayoutItem59: TdxLayoutItem;
    //AdvGroupBox5: TAdvGroupBox;
    //Label116: TLabel;
    //DBComboBox2: TDBComboBox;
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure ListSkinClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAceptarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure InicializarCheckCombo(ComboChecked: TcxCheckComboBox);
//    procedure InicializarCheckCombo(ComboChecked: TJvCheckedComboBox);
    procedure CargarCheckCombo(Cadena: string; ComboChecked: TcxCheckComboBox);
    function NumItems(const cadena:string;const separador:char):integer;
    function TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
    procedure configuracionsPasswordPdfGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure configuracionsPasswordPdfSetText(Sender: TField;
      const Text: string);
    procedure configuraciondPenaConvencionalSetText(Sender: TField;
      const Text: string);
    procedure configuracioniJLunesSetText(Sender: TField; const Text: string);
    procedure configuraciondRetencionValidate(Sender: TField);

    procedure configuraciondCostoIndirectosSetText(Sender: TField;
      const Text: string);

    procedure configuraciondFinanciamientoSetText(Sender: TField;
      const Text: string);
    procedure configuraciondUtilidadSetText(Sender: TField; const Text: string);


    procedure configuraciondCargosAdicionalesSetText(Sender: TField;
      const Text: string);
    procedure configuraciondCargosAdicionales2SetText(Sender: TField;
      const Text: string);
    procedure configuraciondRetencionSetText(Sender: TField;
      const Text: string);
    procedure configuracioniJMartesSetText(Sender: TField; const Text: string);
    procedure configuracioniJMiercolesSetText(Sender: TField;
      const Text: string);
    procedure configuracioniJJuevesSetText(Sender: TField; const Text: string);
    procedure configuracioniJViernesSetText(Sender: TField; const Text: string);
    procedure configuracioniJSabadoSetText(Sender: TField; const Text: string);
    procedure configuracioniJDomingoSetText(Sender: TField; const Text: string);
    procedure cmdRecargarMenuClick(Sender: TObject);
    procedure VerificaMenu(Menu: TMenuItem; Nod: TTreeNode; guardar: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxListaClick(Sender: TObject);
    procedure chkFirma1Click(Sender: TObject);
    procedure chkFirma2Click(Sender: TObject);
    procedure chkFirma3Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure cxImagenDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetup: TfrmSetup;
  //Variables para la actualizacon de Calculos.. P.U.
  Costo_directo,
  Costo_Indirecto,
  Costo_financiamiento,
  Costo_utilidad,
  Costo_CargoAdic,
  Costo_CargoAdic2,
  Costo_CargoAdic3  : double;
  PasswordPdf: String;
  lContinua : boolean;
implementation

uses frxDsgnIntf;

{$R *.dfm}

function TfrmSetup.NumItems(const cadena:string;const separador:char):integer;
var
   res,Npos:integer;
   salir:boolean;
   cadAux:string;
begin
     res:=0;
     salir:=false;
     cadAux:=cadena;
     while not salir do
     begin
          Npos:=pos(separador,cadAux);
          cadaux:=copy(cadaux,Npos+1,length(cadaux));
          if Npos<>0 then
             Inc(res)
          else
          begin
               if res<>0 then
                  inc(res);
              salir:=true;
          end;
     end;
     result:=res;
end;

function TfrmSetup.TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
var
   Item,CadAux:string;
   Npos,auxPos:integer;
   salir:boolean;
begin
     Item:='';
     cadAux:=cadena;
     salir:=false;
     auxPos:=0;
     while not salir do
     begin
          Npos:=pos(separador,cadaux);
          if Npos<>0 then
          begin
             item:=copy(cadAux,1,Npos-1);
             cadaux:=copy(cadaux,Npos+1,length(cadaux));
             inc(auxPos);
             if auxpos=posicion then
                salir:=true;
          end
          else
          begin
            inc(auxPos);
            if auxpos=posicion then
               item:=cadAux
            else item:='';
            Salir:=true;
          end;
     end;
     result:=item;
end;


procedure TfrmSetup.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
//  if key = #13 then
//      tsrfc.SetFocus
end;

procedure TfrmSetup.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  fileSkin: TextFile;
  sSkin: string;
  i:integer;
begin

  if global_contrato <> '' then
  begin
    configuracion.Active := False;
    configuracion.Params.ParamByName('contrato').DataType := ftString;
    configuracion.Params.ParamByName('contrato').Value := global_contrato;
    configuracion.Open;

    convenios.Active := False;
    convenios.Params.ParamByName('contrato').DataType := ftString;
    convenios.Params.ParamByName('contrato').Value := global_contrato;
    convenios.Open;

//    PanelPrincipal.ItemIndex := 0;
    if configuracion.RecordCount > 0 then
    begin
      configuracion.Edit;
      BlobField := configuracion.FieldByName('bImagen');
      BS := configuracion.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 1 then
      begin
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromStream(bS);
//            bImagen.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      end
//      else
//        bImagen.Picture.LoadFromFile('');
    end
  end;


  {Activamos algunos campos}
  connection.QryUBusca.Active := False;
  connection.QryUBusca.SQL.Clear;
  connection.QryUBusca.SQL.Add('select * from usuarios where sIdUsuario =:Usuario ');
  connection.QryUBusca.ParamByName('Usuario').AsString := global_usuario;
  connection.QryUBusca.Open;

  InicializarCheckCombo(ChkCmbFormatos);
  CargarCheckCombo(configuracion.FieldbyName('sformatos').AsString,ChkCmbFormatos);


     PanelFormato.Visible := False;
     PanelFirmas.Visible := False;
     PanelPlazos.Visible := False;
     PanelJornadas.Visible := False;
     PanelEmpresa.Width := frmSetup.ClientWidth;
     panelEmpresa.Height := frmSetup.ClientHeight;
     panelEmpresa.Align := alClient;
     lcEmpresa.Align := alClient;



end;

procedure TfrmSetup.ListSkinClick(Sender: TObject);
var
  fileSkin: TextFile;
begin
  {salvar el tema}
  AssignFile(fileSkin, 'fileSkin.dat');
  ReWrite(fileSkin);

  CloseFile(fileSkin);
end;

procedure TfrmSetup.InicializarCheckCombo(ComboChecked: TcxCheckComboBox);
var
  i:integer;
  error:boolean;
begin
  error:=false;
  comboChecked.Properties.Items.Clear;
  for i := 0 to frxExportFilters.Count - 1 do
  begin
    if frxExportFilters[i].Filter = frxDotMatrixExport then
      continue;
    ComboChecked.Properties.Items.AddCheckItem(TfrxCustomExportFilter(frxExportFilters[i].Filter).GetDescription, TfrxCustomExportFilter(frxExportFilters[i].Filter).GetDescription);
  end;

end;

procedure TfrmSetup.btnOkClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if configuracion.State = dsEdit then
  begin
    global_convenio := configuracion.FieldValues['sIdConvenio'];
    if OpenPicture.FileName <> '' then
    begin
      try
        BlobField := configuracion.FieldByName('bImagen');
        BS := configuracion.CreateBlobStream(BlobField, bmWrite);
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromFile(OpenPicture.FileName);
            Pic.SaveToStream(Bs);
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      except

      end
    end;

  end;
  global_miReporte  := configuracion.FieldValues['sReportesCIA'];
  ds_configuracion.DataSet.Post;
  configuracion.Refresh;
  //connection.uconfiguracion.refresh;
  configuracion.Close;
end;

procedure TfrmSetup.btnPostClick(Sender: TObject);
var
bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  error:boolean ;
begin
     btnOkClick(Sender);
     try
         //frmActividadesAnexo2.ActualizaSentencias;
         //frmActividadesAnexo2.WindowState := wsMaximized;
     Except
     end;

      if connection.uConfiguracion.State = dsEdit then
  begin
    error:=False;
    lContinua := True;

    if error = False then
    begin
      if OpenPicture.FileName<>'' then
      begin
        try
          BlobField := connection.uConfiguracion.FieldByName('bImagen');
          BS := connection.uConfiguracion.CreateBlobStream(BlobField, bmWrite);
          try
          Pic := TJpegImage.Create;
            try
              Pic.LoadFromFile(OpenPicture.FileName);
              Pic.SaveToStream(Bs);
            finally
              Pic.Free;
            end;
          finally
            bS.Free
          end
        except
        end;
      end;

      connection.uConfiguracion.Post;

      if lContinua then
          connection.uconfiguracion.refresh
      else
         connection.uConfiguracion.Edit;
    end;

  end;

     Close;
end;

procedure TfrmSetup.chkFirma1Click(Sender: TObject);
begin
     chkFirma2.Checked := False;
     chkFirma3.Checked := False;
     mFirma1.Visible   := True;
     mFirma2.Visible   := False;
     mFirma3.Visible   := False;
end;

procedure TfrmSetup.chkFirma2Click(Sender: TObject);
begin
   chkFirma1.Checked := False;
     chkFirma3.Checked := False;
     mFirma1.Visible   := False;
     mFirma2.Visible   := True;
     mFirma3.Visible   := False;
end;

procedure TfrmSetup.chkFirma3Click(Sender: TObject);
begin
     chkFirma1.Checked := False;
     chkFirma2.Checked := False;
     mFirma1.Visible   := False;
     mFirma2.Visible   := False;
     mFirma3.Visible   := True;
end;

procedure TfrmSetup.cmdRecargarMenuClick(Sender: TObject);
begin
 if MessageDlg('Se va a cargar de nuevo el catalogo de programas a traves del menu,' +
    'Realmente desea continuar?', mtInformation, [mbOk, mbCancel], 0) = mrOk then
  begin
    try
      //VerificaMenu(frmInteligent.mInteligent, nil, true);
      if Connection.zConnection.InTransaction then
      Connection.zConnection.Commit;
      MessageDlg('Carga de menu terminada con exito!', mtInformation, [mbOk], 0)
    except
      on e: Exception do
      begin
        MessageDlg('Error: ' + E.Message, mtError, [mbOk], 0)
      end;
    end;
  end;
end;

procedure TfrmSetup.VerificaMenu(Menu: TMenuItem; Nod: TTreeNode; guardar: Boolean);
var
  i: Integer;
  Nodo: TTreeNode;
  qry: TZReadOnlyQuery;
  sdescripcion: string;
  smodulo: string;
begin
  qry := TZReadOnlyQuery.Create(Self);
  qry.Connection := Connection.zConnection;

    // Para cada elemento del menu

  for i := 0 to (Menu.Count - 1) do begin
      // Es un elemento correcto
    if not (Menu.Parent is TMenuItem) then begin
      sdescripcion := Menu.Items[i].Caption;
      smodulo := Menu.Items[i].Name;
      if guardar then
      begin
        if AnsiReplaceStr(sdescripcion, '&', '') <> '-' then
        begin
          qry.Active := false;
          qry.SQL.Clear;
          qry.SQL.Add('insert into programas (sIdIdioma, sIdPrograma,sDescripcion) values (:idioma, :modulo,:descripcion)' +
            ' on Duplicate Key update sDescripcion=:descripcion ');
          qry.Params.ParamByName('descripcion').Value := AnsiReplaceStr(sdescripcion, '&', '');
          qry.Params.ParamByName('modulo').Value := AnsiReplaceStr(smodulo, '&', '');
          qry.Params.ParamByName('idioma').Value := global_idioma;
          qry.ExecSQL;

          qry.Active := false;
          qry.SQL.Clear;
          qry.SQL.Add('insert into gruposxprograma values(:grupo,:sIdPrograma,"Insercion Edicion Eliminacion Impresion","Si","Si","Si","Si","Archivo PDF,Tabla Excel (XML),Imagen JPEG") ' +
            ' on Duplicate Key update sIdPrograma=:sIdPrograma ');
          qry.Params.ParamByName('grupo').Value := 'ACCESO_TOTAL';
          qry.Params.ParamByName('sIdPrograma').Value := AnsiReplaceStr(smodulo, '&', '');
          qry.ExecSQL;

        end;
        Menu.Items[i].Enabled := true;
      end;
    end
    else begin
      sdescripcion := Menu.Items[i].Caption;
      smodulo := Menu.Items[i].Name;
      if guardar then
      begin
        if AnsiReplaceStr(sdescripcion, '&', '') <> '-' then
        begin
          qry.Active := false;
          qry.SQL.Clear;
          qry.SQL.Add('insert into programas (sIdIdioma, sIdPrograma,sDescripcion) values (:idioma, :modulo,:descripcion)' +
            ' on Duplicate Key update sDescripcion=:descripcion ');
          qry.Params.ParamByName('descripcion').Value := AnsiReplaceStr(sdescripcion, '&', '');
          qry.Params.ParamByName('modulo').Value := AnsiReplaceStr(smodulo, '&', '');
          qry.Params.ParamByName('idioma').Value := global_idioma;
          qry.ExecSQL;

          qry.Active := false;
          qry.SQL.Clear;
          qry.SQL.Add('insert into gruposxprograma values(:grupo,:sIdPrograma,"Insercion Edicion Eliminacion Impresion","Si","Si","Si","Si","Archivo PDF,Tabla Excel (XML),Imagen JPEG") ' +
            ' on Duplicate Key update sIdPrograma=:sIdPrograma ');
          qry.Params.ParamByName('grupo').Value :=  'ACCESO_TOTAL';
          qry.Params.ParamByName('sIdPrograma').Value := AnsiReplaceStr(smodulo, '&', '');
          qry.ExecSQL;

        end;
        Menu.Items[i].Enabled := true;
      end;
    end;

      if Connection.zConnection.InTransaction then
    begin
      Connection.zConnection.Commit;
      Connection.zConnection.AutoCommit := true;
    end;
      // Llamada recursiva para los submenus
    if Menu.Items[i].Count > 0 then begin
      VerificaMenu(Menu.Items[i], nil, guardar);
    end;
  end;
  qry.Destroy;
end;

procedure TfrmSetup.BtnAceptarClick(Sender: TObject);
begin
     btnOkClick(Sender);
//     try
//         frmActividadesAnexo2.ActualizaSentencias;
//         frmActividadesAnexo2.WindowState := wsMaximized;
//     Except
//     end;
     Close;
end;

procedure TfrmSetup.BtnCancelarClick(Sender: TObject);
begin
  BtnCancelClick(Sender);
  Close;
end;

procedure TfrmSetup.BtnCancelClick(Sender: TObject);
begin
  if configuracion.State = dsEdit then
    configuracion.Cancel;
  configuracion.Close;
  //close
end;

procedure TfrmSetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   // global_FormNoilPrincipal.Status.Panels.Items[9].Text  := global_convenio;
      Action:= cafree;
end;

procedure TfrmSetup.FormCreate(Sender: TObject);
var
  C: HCURSOR;
begin
  C := LoadCursor(0, IDC_HAND);

end;

procedure TfrmSetup.bImagenClick(Sender: TObject);
begin
  if (configuracion.State = dsEdit) then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
//        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
//        bImagen.Picture.LoadFromFile('');
      end
    end
  end
end;

procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin

end;
procedure TfrmSetup.configuraciondCargosAdicionales2SetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuraciondCargosAdicionalesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuraciondCostoIndirectosSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuraciondFinanciamientoSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(strtofloatdef(text, 0));
end;

procedure TfrmSetup.configuraciondPenaConvencionalSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
  if sender.Value>100 then
    sender.Value:=0;
end;

procedure TfrmSetup.configuraciondRetencionSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuraciondRetencionValidate(Sender: TField);
var
  value:Extended;
begin

end;

procedure TfrmSetup.configuraciondUtilidadSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text, 0));
end;

procedure TfrmSetup.configuracioniJDomingoSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuracioniJJuevesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuracioniJLunesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
  if sender.Value>24 then
    sender.Value:=8;
end;

procedure TfrmSetup.configuracioniJMartesSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuracioniJMiercolesSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuracioniJSabadoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;
procedure TfrmSetup.configuracioniJViernesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuracionsPasswordPdfGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
text:='';
  if (configuracion.RecordCount>0) or (configuracion.State=dsinsert) then
    text:= desencripta(configuracion.FieldByName('sPasswordPdf').AsString);
end;

procedure TfrmSetup.configuracionsPasswordPdfSetText(Sender: TField;
  const Text: string);
begin
  PasswordPdf:=text;
  sender.Value:=encripta(text);
end;

procedure TfrmSetup.cxImagenDblClick(Sender: TObject);
begin
tcxImage(cxImagen).LoadFromFile;
end;

procedure TfrmSetup.cxListaClick(Sender: TObject);
begin
   if cxLista.ItemIndex = 0 then
   begin
     PanelEmpresa.Visible := True;
     PanelFormato.Visible := False;
     PanelFirmas.Visible := False;
     PanelPlazos.Visible := False;
     PanelJornadas.Visible := False;
     PanelEmpresa.Width := frmSetup.ClientWidth;
     panelEmpresa.Height := frmSetup.ClientHeight;
     panelEmpresa.Align := alClient;
end;

   if cxLista.ItemIndex = 1 then
   begin
     PanelFormato.Visible := True;
     PanelEmpresa.Visible := False;
     PanelFirmas.Visible := False;
     PanelPlazos.Visible := False;
     PanelJornadas.Visible := False;
     PanelFormato.Width := frmSetup.ClientWidth;
     PanelFormato.Height := frmSetup.ClientHeight;
     PanelFormato.Align := alClient;
   end;

   if cxLista.ItemIndex = 2 then
   begin
     PanelFirmas.Visible := True;
     PanelEmpresa.Visible := False;
     PanelFormato.Visible := False;
     PanelPlazos.Visible := False;
     PanelJornadas.Visible := False;
     PanelFirmas.Width := frmSetup.ClientWidth;
     PanelFirmas.Height := frmSetup.ClientHeight;
     PanelFirmas.Align := alClient;

     chkFirma1.Enabled := True;
     mFirma1.Visible := True;
     mFirma2.Visible := False;
     mFirma3.Visible := False;
   end;

   if cxLista.ItemIndex = 3 then
   begin
     PanelPlazos.Visible := True;
     PanelEmpresa.Visible := False;
     PanelFirmas.Visible := False;
     PanelFormato.Visible := False;
     PanelJornadas.Visible := False;
     PanelPlazos.Width := frmSetup.ClientWidth;
     PanelPlazos.Height := frmSetup.ClientHeight;
     PanelPlazos.Align := alClient;
   end;

   if cxLista.ItemIndex = 4 then
   begin
     PanelJornadas.Visible := True;
     PanelEmpresa.Visible := False;
     PanelFirmas.Visible := False;
     PanelPlazos.Visible := False;
     PanelFormato.Visible := False;
     PanelJornadas.Width := frmSetup.ClientWidth;
     PanelJornadas.Height := frmSetup.ClientHeight;
     PanelJornadas.Align := alClient;
   end;


end;


procedure TfrmSetup.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmSetup.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_EntradaERP;
end;

procedure TfrmSetup.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;
end;

  procedure TfrmSetup.CargarCheckCombo(Cadena: string; ComboChecked: TcxCheckComboBox);
var
   recorrido, i :integer;
   Item:string;

begin
  if (NumItems(cadena,';')=0) and (length(trim(cadena))>0) then
  begin
    try
      ComboChecked.States[0]:=cbsChecked;
    except
      on e:exception do
        showmessage(e.Message + '  ' + e.ClassName);
      end;
  end
  else
  begin

    for recorrido := 1 to NumItems(cadena,';') do
    begin
      item:=TraerItem(cadena,';',recorrido);
      try

        for i := 0 to frxExportFilters.Count - 1 do
        begin
           if frxExportFilters[i].Filter = frxDotMatrixExport then
              continue;

           if TfrxCustomExportFilter(frxExportFilters[i].Filter).GetDescription = item  then
              ComboChecked.states[i]:=cbsChecked;
        end;

      except
        on e:exception do
          showmessage(e.Message + '  ' + e.ClassName);
      end;
    end;
  end;
end;

end.

