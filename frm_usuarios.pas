unit frm_usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, frm_connection, global, StdCtrls,
  DBCtrls, Mask, DB, Menus, ADODB, ZAbstractRODataset, ZDataset,unitactivapop,
  ZAbstractDataset, Jpeg,UnitTBotonesPermisos,// sButton, JvExControls, JvLabel,
  UnitExcepciones, UnitValidaTexto,ExtCtrls, cxGraphics,
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
  cxGrid, CxGridExportLink, ShellApi, cxContainer, dxLayoutcxEditAdapters,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutContainer, cxTextEdit, cxDBEdit, dxLayoutControl, cxCheckBox,
  cxGroupBox, cxSplitter, dxLayoutControlAdapters, cxButtons,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  cxPC, cxTL, cxLabel, cxTLdxBarBuiltInMenu, dxmdaset, cxInplaceContainer,
  cxDBTL, cxTLData, dxRibbon, frm_barraH2, MemDS, VirtualTable, dxBar,
  frm_barraH1, UnitGenerales, DBAccess, Uni, dxToggleSwitch, dxDBToggleSwitch, strutils,
  cxImage,unitMetodos, frm_repositorio;

type
  TfrmUsuarios = class(TForm)
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
    Salir1: TMenuItem;
    Usuarios: TZQuery;
    ds_usuarios: TDataSource;
    ds_grupos: TDataSource;
    ds_deptos: TDataSource;
    deptos: TZReadOnlyQuery;
    grupos: TZQuery;
    cxViewUsuarios: TcxGridDBTableView;
    grid_usuariosLevel1: TcxGridLevel;
    grid_usuarios: TcxGrid;
    Grid__usuarios1: TcxGridDBColumn;
    Grid__camNombre: TcxGridDBColumn;
    Grid__campuesto: TcxGridDBColumn;
    Grid__camarea: TcxGridDBColumn;
    Grid__camActivo: TcxGridDBColumn;
    Grid__camIp: TcxGridDBColumn;
    Grid__camAutoriza: TcxGridDBColumn;
    mniExportarExcel: TMenuItem;
    zpassUser: TZQuery;
    cxSplitter1: TcxSplitter;
    cxViewUsuariosColumn1: TcxGridDBColumn;
    deptosIdDepartamento: TIntegerField;
    deptosIdPadre: TIntegerField;
    deptosCodigo: TWideStringField;
    deptosNombre: TWideStringField;
    deptosActivo: TWideStringField;
    deptosIdEmpresa: TIntegerField;
    cxPageUsuarios: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    pnl1: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    tsIdUsuario: TcxDBTextEdit;
    tsNombre: TcxDBTextEdit;
    tsCorreo: TcxDBTextEdit;
    tsIdDepartamento: TcxDBLookupComboBox;
    tsPuesto: TcxDBTextEdit;
    tsIdGrupo: TcxDBLookupComboBox;
    tlActivo: TcxDBComboBox;
    DBCheckBox5: TcxDBCheckBox;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl2: TdxLayoutControl;
    cxDBCheckBox1: TcxDBCheckBox;
    tspasword: TcxDBTextEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    tsPassword: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    dsModulos: TDataSource;
    mModulos: TdxMemData;
    mModulosinsertar: TStringField;
    mModuloseditar: TStringField;
    mModuloseliminar: TStringField;
    mModulosexportar: TStringField;
    mModulosplantilla: TStringField;
    mModulosimportar: TStringField;
    mModulosimprimir: TStringField;
    Panel2: TPanel;
    frmBarraH21: TfrmBarraH2;
    panelBotones: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxButton1: TcxButton;
    btnPermisos: TcxButton;
    Panel1: TPanel;
    frmBarraH22: TfrmBarraH2;
    zUsuPermisos: TUniQuery;
    zProgramas: TUniQuery;
    dsProgramas: TDataSource;
    mModulosAcceder: TStringField;
    mModulosNombrePrograma: TStringField;
    mProgramas: TdxMemData;
    mProgramassDescripcion: TStringField;
    mProgramassIdPrograma: TStringField;
    mTabs: TdxMemData;
    mTabsIdTab: TIntegerField;
    mTabsNombre: TStringField;
    mTabsDescripcion: TStringField;
    mModulosIdTab: TStringField;
    mProgramasIdTab: TIntegerField;
    dsTabs: TDataSource;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    PanelATop: TPanel;
    gridMod: TcxGrid;
    cxvVewModulos: TcxGridDBTableView;
    cxvVewModulosPrograma: TcxGridDBColumn;
    cxvVewModulosAcceder: TcxGridDBColumn;
    cxvVewModulosInsertar: TcxGridDBColumn;
    cxvVewModulosEditar: TcxGridDBColumn;
    cxvVewModulosEliminar: TcxGridDBColumn;
    cxvVewModulosImprimir: TcxGridDBColumn;
    cxvVewModulosColumn1: TcxGridDBColumn;
    gridModLevel1: TcxGridLevel;
    PanelDetalle: TPanel;
    cxSplitterDetalle: TcxSplitter;
    Panel3: TPanel;
    cxViewDetalleModulo: TcxGridDBTableView;
    cxGridDetalleModuloLevel1: TcxGridLevel;
    cxGridDetalleModulo: TcxGrid;
    cxColumnD1: TcxGridDBColumn;
    cxColumnD2: TcxGridDBColumn;
    cxDetalleModulos: TcxButton;
    cxLabel1: TcxLabel;
    mSubModulos: TdxMemData;
    ds_submodulos: TDataSource;
    mSubModulosFieldSubModulo: TStringField;
    mSubModulosFieldVisualiza: TStringField;
    mSubModulosFieldNombre: TStringField;
    mSubModulosFieldAgrupa: TStringField;
    cxColumnD3: TcxGridDBColumn;
    mProgramassClase: TStringField;
    mSubModulosModulo: TStringField;
    cxColumnD4: TcxGridDBColumn;
    uPermisosDetalle: TUniQuery;
    mSubModulosusuario: TStringField;
    imgFirma: TcxDBImage;
    dxLayoutItem2: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    btnFirma: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxEmpleado: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    personal: TDataSource;
    ds_personal: TZQuery;
    ds_PersonalUsuario: TDataSource;
    zPersonalUsuario: TZQuery;
    cxLimpia: TcxButton;
    cxTelefono: TcxDBMaskEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    btnPerfil: TcxButton;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_usuariosCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure grid_usuariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_usuariosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmdConfiguraClick(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnPermisosClick(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cargarProgramas;
    procedure cxDetalleModulosClick(Sender: TObject);
    procedure btnFirmaClick(Sender: TObject);
    procedure cxLimpiaClick(Sender: TObject);
    procedure btnPerfilClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmUsuarios: TfrmUsuarios;
   Opcion : String ;
   usuario, clave, ClaveOriginal, Registro_Actual : String ;
   lOldInsertar, lOldEditar, lOldEliminar, lOldImprimir: boolean;

   datos: array[1..200] of string;

implementation

uses frm_ConfiguraMail, Utilerias,fmr_AsignarAlmacen, frm_usuarios_proyectos,frm_GruposUsuarios;
     //frm_usuarios_proyectos
{$R *.dfm}

procedure TfrmUsuarios.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmUsuarios.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmUsuarios.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxViewUsuarios.StoreToIniFile(ExtractFilePath(Application.ExeName)+'CWS\'+self.Name);
  except
    ;
  end;

  Usuarios.Cancel ;
  action := cafree ;

end;

procedure TfrmUsuarios.grid_usuariosCellClick(Column: TColumn);
begin
  Usuario := tsIdUsuario.Text ;
end;

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
  try
      if not DirectoryExists(ExtractFilePath(Application.ExeName)+'CWS') then
        begin
          CreateDir(ExtractFilePath(Application.ExeName)+'CWS');
        end;
        cxViewUsuarios.RestoreFromIniFile(ExtractFilePath(Application.ExeName)+'CWS\'+self.Name);
      except
        ;
      end;

   OpcButton := '' ;
   cxPageUsuarios.Visible := False;
   cxPageUsuarios.ActivePageIndex := 0;
   cxSplitter1.Visible := False;
   deptos.Active := False ;
   deptos.Open ;
   grupos.Active := False ;
   grupos.Open ;
   Usuarios.Active := False ;
   if uppercase(global_usuario)='ADMIN' then
    usuarios.parambyname('user').AsString:=''
   else usuarios.parambyname('user').AsString:='ADMIN';

   Usuarios.Open ;



   mUserMail[1] := '';
   mUserMail[2] := '';
   muserMail[3] := '';
   mUserMail[4] := '';
   mUserMail[5] := '';

  zPersonalUsuario.ParamByName('Id').AsInteger:=-1;
  zPersonalUsuario.Open;
end;

Procedure TfrmUsuarios.CmdConfiguraClick(Sender: TObject);
begin
    Application.CreateForm(TfrmConfiguraMail, frmConfiguraMail);
    frmConfiguraMail.show
end;

procedure TfrmUsuarios.cxButton1Click(Sender: TObject);
var
  ComponentTabs : TdxRibbonTab;
  LargeButton : TdxBarLargeButton;
  iElemento,iElementsTab : Integer;
  Component : TdxBarLargeButton;
  Component1:      TdxBarButton;
  Component2 : TdxRibbonTab;
begin
    if Usuarios.RecordCount > 0 then
    if not (Usuarios.State in [dsInsert, dsEdit]) then
    begin
      cxPageUsuarios.ActivePageIndex := 1;
      cxPageUsuarios.Visible := True;
      PanelDetalle.Visible:=False;
      cxSPlitterDetalle.Visible:=False;
      cxSplitter1.Visible := True;
      frmBarraH11.btnAddClick(sender);
    end;
end;

procedure TfrmUsuarios.cxDetalleModulosClick(Sender: TObject);
var
  i: Integer;
  formClass  : TFormClass;
  formulario : TForm;
begin
  cxSplitterDetalle.Visible:= not cxSplitterDetalle.Visible;
  PanelDetalle.Visible:= not PanelDetalle.Visible;
end;


procedure TfrmUsuarios.cxLimpiaClick(Sender: TObject);
var
   i : integer;
begin
    for i := 0 to Application.ComponentCount do
    begin
        if Application.Components[i] is tForm then
           showmessage((Application.Components[i] is tForm).ToString(True));

    end;
end;

procedure TfrmUsuarios.cxTabSheet2Show(Sender: TObject);
var
  iElemento,iElementsTab : Integer;
  Component : TdxBarLargeButton;
  Component1: TdxBarButton;
  Component2: TdxRibbonTab;
begin

   {Programas}
   mTabs.Active := False;
   mTabs.Open;

    if (connection.uContrato.FieldByName('FK_Titulo').AsString='SIANI') then  BEGIN
//     Usuarios.Active:=False;
      Usuarios.Open;
       if uppercase(global_usuario)='ADMIN' then
          usuarios.parambyname('user').AsString:=''
       else
          usuarios.parambyname('user').AsString:='ADMIN';
    END;


   mProgramas.Active := False;
   mProgramas.Open;

  for iElemento := 0 to global_FormNoilPrincipal.ComponentCount - 1 do
  begin
    if global_FormNoilPrincipal.Components[iElemento].ClassName = 'TdxBarLargeButton' then
     begin
       Component := global_FormNoilPrincipal.Components[iElemento] as TdxBarLargeButton;
       if ((Component.Tag <> 123) and (Component.Tag > 0)) then
       begin
         mProgramas.Append;
         mProgramas.FieldByName('sIdPrograma').AsString := Component.Name;
         mProgramas.FieldByName('sDescripcion').AsString:= Component.Caption;
         mProgramas.FieldByName('IdTab').AsInteger := Component.Tag;
         mProgramas.FieldByName('sClase').AsString  := Component.Description; //Obtengo la clase a la que llama este boton
         mProgramas.Post;
       end;
     end;

     if global_FormNoilPrincipal.Components[iElemento].ClassName = 'TdxBarButton' then
     begin
       Component1 := global_FormNoilPrincipal.Components[iElemento] as TdxBarButton;

       if ((Component1.Tag <> 123) and (Component1.Tag > 0 )) then
       begin
         mProgramas.Append;
         mProgramas.FieldByName('sIdPrograma').AsString := Component1.Name;
         mProgramas.FieldByName('IdTab').AsInteger := Component1.Tag;
         mProgramas.FieldByName('sDescripcion').AsString:=Component1.Caption;
         mProgramas.FieldByName('sClase').AsString:=Component1.Description;
         mProgramas.Post;
       end;

     end;

     if global_FormNoilPrincipal.Components[iElemento].ClassName = 'TdxRibbonTab' then
     begin

       Component2 := global_FormNoilPrincipal.Components[iElemento] as TdxRibbonTab;
       if ((Component2.Tag <> 123) and (Component2.Tag > 0)) then
        begin
          if Component2.Visible = True then
          begin
          mTabs.Append;
          mTabs.FieldByName('IdTab').AsInteger := Component2.Tag;
          mTabs.FieldByName('Nombre').AsString:=Component2.Name;
          mTabs.FieldByName('Descripcion').AsString:=Component2.Caption;
          mTabs.Post;
          end;
        end;
     end;

   end ;

  mProgramas.RecordCount;

  AsignarSQL(zProgramas,'programas',pUpdate);
  zProgramas.Open;

  zUsuPermisos.SQL.Clear;
  zUsuPermisos.SQL.Text := 'Select * from master_modulos where '+
                           '(:Usuario = -1 or (:Usuario <> -1 and sUsuario = :Usuario))';
  zUsuPermisos.ParamByName('Usuario').AsString := usuarios.FieldByName('sIdUsuario').AsString;
  if zUsuPermisos.Active then
    zUsuPermisos.Refresh
  else
    zUsuPermisos.Open;

  cargarProgramas; //Carga los formularios existentes en el grid
end;


procedure TfrmUsuarios.btnAddClick(Sender: TObject);
begin
   frmBarraH11.btnAddClick(Sender);
   cxPageUsuarios.Visible := True;
   cxPageUsuarios.ActivePageIndex := 0;
   cxSplitter1.Visible := True;
   usuarios.Append ;
   usuarios.FieldValues['lActivo']      := 'Si';
   usuarios.FieldValues['lAcceso']      := 'Si';
   usuarios.FieldValues['lAsignaFrentes']          := 'No';
   usuarios.FieldValues['lRealizaAjustes']         := 'No';
   usuarios.FieldValues['Telefono']  :=  '0000000000'  ;
   tsIdUsuario.SetFocus;
   grid_usuarios.Enabled := False;

end;

procedure TfrmUsuarios.btnCancelClick(Sender: TObject);
begin
  if cxPageUsuarios.ActivePageIndex = 0 then
  begin
    frmBarraH11.btnActive;
    tsidusuario.Enabled:=true;
    Usuarios.Cancel ;

    grid_usuarios.Enabled := True;
    cxPageUsuarios.Visible:= False;
    cxSplitter1.Visible := False;
  end
  else
  begin

    cxPageUsuarios.ActivePageIndex := 0;
    cxPageUsuarios.Visible := False;
    frmBarraH11.btnActive;
  end;
end;

procedure TfrmUsuarios.btnDeleteClick(Sender: TObject);
begin
      If Usuarios.RecordCount  > 0 then
    if uppercase(Usuarios.FieldByName('sidusuario').AsString)='ADMIN' then
      MessageDlg('Este Usuario No Puede ser Eliminado.', mtInformation, [mbOk], 0)
    else
    begin
      if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try

          Usuarios.Delete ;
        except
          on e : exception do begin
            messageDlg('No se puede Eliminar el Registro. Existen movimientos Registrados.', mtInformation, [mbOk], 0);
          end;
        end
      end ;
    end;
end;

procedure TfrmUsuarios.btnPerfilClick(Sender: TObject);
begin
  if not MostrarFormChild('frmGrupos',global_dxBarManagerPrincipal) Then
   begin
    global_frmActivo:='Perfil';
    Application.CreateForm(TfrmGrupos, frmGrupos);
    frmGrupos.show;
  end;
end;

procedure TfrmUsuarios.btnEditClick(Sender: TObject);
begin
   frmBarrah11.btnEditClick(Sender);
   cxPageUsuarios.Visible := True;
   cxPageUsuarios.ActivePageIndex := 0;
   cxSplitter1.Visible :=  True;

   if uppercase(Usuarios.FieldByName('sidusuario').AsString)='ADMIN' then
       tsidusuario.Enabled:=false;
   try
      zpassUser.Active := False;
      zpassUser.ParamByName('Usuario').AsString := usuarios.FieldByName('sIdUsuario').AsString;
      zpassUser.Open;

      usuarios.Edit ;
      usuarios.FieldByName('sPassword').AsString := zpassUser.FieldByName('Pass').AsString;
      usuarios.FieldByName('sPasswordEspecial').AsString := zpassUser.FieldByName('PassEsp').AsString;

   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Usuarios', 'Al editar registro', 0);
          frmbarraH22.btnCancel.Click;
      end;
   end ;
   if tsidusuario.Enabled then
       tsIdUsuario.SetFocus
   else
       tsPassword.SetFocus;
   grid_usuarios.Enabled := False;
end;

procedure TfrmUsuarios.btnFirmaClick(Sender: TObject);
begin
  tcxImage(ImgFirma).LoadFromFile;
end;

procedure TfrmUsuarios.btnPermisosClick(Sender: TObject);
begin
  If not mostrarformChild('frmUsuariosXproyectos', global_dxBarManagerPrincipal) Then
  begin
     Application.CreateForm(TfrmUsuariosXproyectos, frmUsuariosXproyectos);
     frmUsuariosXproyectos.Show;
  end;
end;


procedure TfrmUsuarios.btnPostClick(Sender: TObject);
Var
  Cadena : string ;
  nombres, cadenas: TStringList;
  backPass, backPassEsp, user: String;
  actualizaPass: tzquery;
begin
  if cxPageUsuarios.ActivePageIndex = 0 then
  begin
    {Validacion de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Password');nombres.Add('Nombre');nombres.Add('Area');nombres.Add('Puesto');nombres.Add('Grupo');
    cadenas.Add(tsPassword.Text);cadenas.Add(tsNombre.Text);cadenas.Add(tsIdDepartamento.Text);cadenas.Add(tsPuesto.Text);cadenas.Add(tsIdGrupo.Text);
    if not validaTexto(nombres, cadenas, 'Usuario', tsIdUsuario.Text) then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        exit;
    end;
    {Continua insercion de datos}
    try

        if uppercase(Usuarios.FieldByName('sidusuario').AsString)='ADMIN' then
          Usuarios.FieldByName('spassword').AsString :=encripta(tspassword.Text);
        usuarios.FieldValues['lAcceso']      := usuarios.FieldValues['lActivo'];

        user := tsIdUsuario.Text;
        backPass := tsPassword.Text;
        backPassEsp := tspasword.Text;
        Usuarios.Post ;
        connection.QryUBusca.Active:=False;
        AsignarSQL(connection.QryUBusca,'actualizaPass',pUpdate);
        FiltrarDataSet(connection.QryUBusca,'backPass,backPassEsp,usuario',[backPass,backPassEsp,user]);
        connection.QryUBusca.ExecSQL;

//      try
//        actualizaPass := Tzquery.Create(self);
//        actualizaPass.Close;
//        actualizaPass.Connection := connection.zConnection;
//        actualizaPass.SQL.Text := 'UPDATE usuarios SET '+
//                                  'sPassword = AES_ENCRYPT('+ quotedstr(backPass) +','+quotedstr('AES2016')+'), '+
//                                  'sPasswordEspecial = AES_ENCRYPT('+ quotedstr(backPassEsp) +','+quotedstr('AES2016')+') '+
//                                  'WHERE sIdUsuario = ' + quotedstr(user);
//        actualizaPass.ExecSQL;
//      finally
//        actualizapass.Destroy;
//      end;
        grid_usuarios.Enabled := True;
        frmBarraH11.btnActive;
        cxPageUsuarios.Visible := False;
        cxSplitter1.Visible := False;
        tsidusuario.Enabled:=true;
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Usuarios', 'Al salvar registro', 0);
            frmbarraH22.btnCancel.Click ;
        end;
    end;

  end
  else if cxPageUsuarios.ActivePageIndex = 1 then
  begin
    mModulos.First;
    while not mModulos.Eof do
    begin
      if mModulos.FieldByName('IdTab').AsInteger > 0 then
        if zUsuPermisos.Locate('NombreForm_Programa',mModulos.FieldByName('NombrePrograma').AsString,[]) then
        begin
          zUsuPermisos.Edit;
          zUsuPermisos.FieldByName('Acceder').AsString  := mModulos.FieldByName('acceder').AsString;
          zUsuPermisos.FieldByName('Insertar').AsString := mModulos.FieldByName('insertar').AsString;
          zUsuPermisos.FieldByName('Editar').AsString   := mModulos.FieldByName('editar').AsString;
          zUsuPermisos.FieldByName('Eliminar').AsString := mModulos.FieldByName('eliminar').AsString;
          zUsuPermisos.FieldByName('Imprimir').AsString := mModulos.FieldByName('imprimir').AsString;
          zUsuPermisos.FieldByName('IdTab').AsInteger := mModulos.FieldByName('IdTab').AsInteger;

          zUsuPermisos.Post;
        end
        else
        begin
          zUsuPermisos.Append;
          zUsuPermisos.FieldByName('NombreForm_Programa').AsString := mModulos.FieldByName('NombrePrograma').AsString;
          zUsuPermisos.FieldByName('Acceder').AsString  := mModulos.FieldByName('acceder').AsString;
          zUsuPermisos.FieldByName('Insertar').AsString := mModulos.FieldByName('insertar').AsString;
          zUsuPermisos.FieldByName('Editar').AsString   := mModulos.FieldByName('editar').AsString;
          zUsuPermisos.FieldByName('Eliminar').AsString := mModulos.FieldByName('eliminar').AsString;
          zUsuPermisos.FieldByName('Imprimir').AsString := mModulos.FieldByName('imprimir').AsString;
          zUsuPermisos.FieldByName('sUsuario').AsString := usuarios.FieldByName('sIdUsuario').AsString;
          zUsuPermisos.FieldByName('IdTab').AsInteger := mModulos.FieldByName('IdTab').AsInteger;
          zUsuPermisos.Post;
        end;


      mModulos.Next;
    end;

    {$region 'Guardar Permisos detalles'}

    {Se guardan los permisos para los detalles}
    mSubModulos.First;
    uPermisosDetalle.Active:=False;
    uPermisosDetalle.SQL.Clear;
    uPermisosDetalle.SQL.Add('select * from master_modulos_detalles where Usuario = :User');
    uPermisosDetalle.Params.ParamByName('User').AsString := usuarios.FieldByName('sIdUsuario').AsString;
    uPermisosDetalle.Open;

    while not mSubModulos.Eof do begin
      if uPermisosDetalle.Locate('Clase;ComponenteDetalle',VarArrayOf([mSubModulos.FieldByName('Modulo').AsString,mSubModulos.FieldByName('FieldSubModulo').AsString]),[]) then begin
        uPermisosDetalle.Edit;
        uPermisosDetalle.FieldByName('Visualizar').AsString:=mSubModulos.FieldByName('FieldVisualiza').AsString;
      end
      else begin
        uPermisosDetalle.Append;
        uPermisosDetalle.FieldByName('Usuario').AsString      := mSubModulos.FieldByName('Usuario').AsString;
        uPermisosDetalle.FieldByName('Clase').AsString        := mSubModulos.FieldByName('Modulo').AsString;
        uPermisosDetalle.FieldByName('ComponenteDetalle').AsString  := mSubModulos.FieldByName('FieldSubModulo').AsString;
        uPermisosDetalle.FieldByName('Visualizar').AsString   := mSubModulos.FieldByName('FieldVisualiza').AsString;
      end;
      uPermisosDetalle.Post;
      mSubModulos.Next;
    end;

    {$endregion}

    cxPageUsuarios.ActivePageIndex := 0;
    cxSplitter1.Visible := False;
    frmBarraH22.btnCancel.Click;
  end;
end;


procedure TfrmUsuarios.cargarProgramas;
var
  formulario : TForm;
  claseT : TPersistentClass;
  MyClase : TClass;
  msgE : String;
  clase,c2 : String;
  pos : Integer;
begin
  {Llena la un memori data temporal para poder llevar a cabo la edicion de datos que ya tiene master_permisos.}
  mModulos.Active := False;
  mModulos.Open;
  mSubModulos.Active:=False;
  mSubModulos.Open;
  zUsuPermisos.First;
  c2:='';
  msgE:='';
  while not zUsuPermisos.Eof do
  begin
    mModulos.Append;
    mModulos.FieldByName('NombrePrograma').AsString := zUsuPermisos.FieldByName('NombreForm_Programa').AsString;
    mModulos.FieldByName('acceder').AsString        := zUsuPermisos.FieldByName('Acceder').AsString;
    mModulos.FieldByName('insertar').AsString       := zUsuPermisos.FieldByName('Insertar').AsString;
    mModulos.FieldByName('editar').AsString         := zUsuPermisos.FieldByName('Editar').AsString;
    mModulos.FieldByName('eliminar').AsString       := zUsuPermisos.FieldByName('Eliminar').AsString;
    mModulos.FieldByName('imprimir').AsString       := zUsuPermisos.FieldByName('Imprimir').AsString;
    mModulos.FieldByName('IdTab').AsInteger         := zUsuPermisos.FieldByName('IdTab').AsInteger;

    {$region 'Buscar y asignar los tabsheets'}

    {Localizo el programa en el memdata <<mProgramas>> y obtengo el nombre de la clase, para crear un objeto}
    mProgramas.Locate('sIdPrograma',mModulos.FieldByName('NombrePrograma').AsString,[]);
    clase:=mProgramas.FieldByName('sClase').AsString;
    if clase <> 'TfrmCatalogoEmpleados_wpage' then
    if ((AnsiEndsText('_wpage',clase)) and (not (mSubModulos.Locate('Modulo',clase,[])))) then begin
      try
        clase:=AnsiLeftStr(clase,clase.Length-6);
        claseT:=FindClass(clase);
        //MyClase := TClass.Create;
        //MyClase := claseT;

        Application.CreateForm(TFormClass(claseT),formulario);
        //Application.CreateForm(MyClase,formulario);
        {Una vez creado el objeto, lo oculto, para que no se visualice}
        formulario.FormStyle:=fsNormal;
        formulario.Hide;
        for pos := 0 to formulario.ComponentCount - 1 do begin
          c2:=formulario.Components[pos].ClassName;
          if c2 = 'TcxTabSheet' then begin
            if not MSubModulos.Locate('FieldSubModulo',formulario.Components[pos].Name,[]) then begin
              mSubModulos.Append;
              mSubModulos.FieldByName('FieldSubModulo').AsString  := formulario.Components[pos].Name;
              mSubModulos.FieldByName('FieldNombre').AsString     := TcxTabSheet(formulario.Components[pos]).Caption;
              mSubModulos.FieldByName('FieldVisualiza').AsString  := 'Si';
              mSubModulos.FieldByName('Modulo').AsString          := Clase;
              mSubModulos.FieldByName('FieldAgrupa').AsString     := TcxTabSheet(formulario.Components[pos]).PageControl.Name;
              mSubModulos.FieldByName('Usuario').AsString         := usuarios.FieldByName('sIdUsuario').AsString;
              mSubModulos.Post;
            end;
          end;
        end;
        formulario.Close;
      except
        on E: Exception do
          msgE:=msgE+(' '+clase);
      end;
    end;
    {$endregion}
    //if msgE <> '' then
     // MessageDlg('Los siguientes formularios no se encontraron: '+msgE,mtInformation,[mbOk],0);
    mModulos.Post;
    zUsuPermisos.Next;
  end;
  mSubModulos.RecordCount;
  {Recorre tabla de programas para llenar el memeri data con modulos nuevos que no han sigo asignados}
  dsProgramas.DataSet.First;
  while not dsProgramas.DataSet.Eof do
  begin
    if not zUsuPermisos.Locate('NombreForm_Programa',dsProgramas.DataSet.FieldByName('sIdPrograma').AsString,[]) then
    begin
      mModulos.Append;
      mModulos.FieldByName('NombrePrograma').AsString := dsProgramas.DataSet.FieldByName('sIdPrograma').AsString;
      mModulos.FieldByName('IdTab').AsInteger     := dsProgramas.DataSet.FieldByName('IdTab').AsInteger;
      mModulos.FieldByName('acceder').AsString    := 'Si';
      mModulos.FieldByName('insertar').AsString   := 'Si';
      mModulos.FieldByName('editar').AsString     := 'Si';
      mModulos.FieldByName('eliminar').AsString   := 'Si';
      mModulos.FieldByName('imprimir').AsString   := 'Si';
      mModulos.Post;
    end;
    dsProgramas.DataSet.Next;
  end;
end;

procedure TfrmUsuarios.grid_usuariosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Usuario := tsIdUsuario.Text ;
end;

procedure TfrmUsuarios.grid_usuariosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Usuario := tsIdUsuario.Text ;
end;


end.
