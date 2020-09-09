unit frm_AltaServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  ImgList, global, UnitGenerales, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxmdaset, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, dxBar, dxRibbon, cxContainer, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit,
  dxLayoutControl, dxLayoutControlAdapters, Menus, cxButtons, DBAccess,
  StrUtils, Uni, UniProvider, MySQLUniProvider, IniFiles,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList;

type
  TfrmAltaServidor = class(TForm)
    ImageList1: TImageList;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    dsCon: TDataSource;
    mCon: TdxMemData;
    mConConexion: TStringField;
    mConServidor: TStringField;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnNuevo: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnEditar: TdxBarLargeButton;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    mConPuerto: TStringField;
    Panel1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtConexion: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtServidor: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    spPuerto: TcxDBSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    cxIconCon32: TcxImageList;
    btnPruebaCon: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxIconCon16: TcxImageList;
    zConPrueba: TUniConnection;
    edtPass: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    edtUsuario: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    mConUsuario: TStringField;
    mConPassword: TStringField;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    MySQLUniProvider1: TMySQLUniProvider;
    dxBarManager1Bar2: TdxBar;
    btnGuardarSalir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    procedure btnAceptarClick(Sender: TObject);
//    procedure btnCancelarClick(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPruebaConClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnGuardarSalirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Servidor, Descripcion: String;
    hPuerto: Integer;
  end;

var
  frmAltaServidor: TfrmAltaServidor;

implementation

uses frm_connection;

{$R *.dfm}
var
  sVector: array[1..100] of string;


procedure TfrmAltaServidor.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmAltaServidor.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmAltaServidor.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmAltaServidor.btnAceptarClick(Sender: TObject);
Var
  Result: Boolean;
begin

end;

procedure TfrmAltaServidor.btnGuardarClick(Sender: TObject);
begin
  if mCon.State in [dsInsert,dsEdit] then
    mCon.Post;
  mCon.ReadOnly := True;

  btnNuevo.Enabled := True;
  btnEditar.Enabled := True;
  btnEliminar.Enabled := True;
  btnCancelar.Enabled := False;
  btnGuardar.Enabled := False;
  cxGrid1.Enabled := True;
end;

procedure TfrmAltaServidor.btnNuevoClick(Sender: TObject);
begin
 if mCon.Active then
    mcon.Refresh
 else
    mcon.Open;

  mCon.ReadOnly := False;

  if mCon.State in [dsInsert, dsEdit] then
    mCon.Cancel;

  mCon.Append;
  btnNuevo.Enabled := False;
  btnEditar.Enabled := False;
  btnEliminar.Enabled := False;
  btnCancelar.Enabled := True;
  btnGuardar.Enabled := True;
  cxGrid1.Enabled := False;
  edtConexion.SetFocus;
end;

procedure TfrmAltaServidor.btnPruebaConClick(Sender: TObject);
begin
  try
    try
    if zConPrueba.Connected then
      zConPrueba.Disconnect;
    zConPrueba.Server   := edtServidor.Text;
    zConPrueba.Port     := StrToInt(spPuerto.Text);
    zConPrueba.Username := edtUsuario.Text;
    zConPrueba.Password := edtPass.Text;

    zConPrueba.Connect;
    ShowMessage('Conexión exitosa con el servidor especificado.');
    finally
     ;
    end;

  except
  on e:exception do
   ShowMessage('No ha sido posible establecer conexión con el servidor especificado.' + #13 +
                'Motivo: ' + e.Message);
  end;

end;

procedure TfrmAltaServidor.btnGuardarSalirClick(Sender: TObject);
var appINI : TIniFile;
    Archivo, Valor, pc : String;
    a :Integer;
begin
  if mCon.State in [dsInsert,dsEdit] then
    mCon.Cancel;

  pc := GetPCName+'_'+GetMACAdress;
  Archivo := extractfilepath(application.exename) + '\Reportes\darkcod'+pc+'.ini';
  appINI  := TIniFile.Create(Archivo);
            appINI.WriteString('SYSTEM','data_name','Noíl') ;

  mCon.First;
  a:= 1;
  while not mCon.Eof do
  begin
    Valor := '"' +  mCon.FieldByName('Conexion').AsString + '"=' +
                    mCon.FieldByName('Puerto').AsString   + '=' +
             '"' +  mCon.FieldByName('Usuario').AsString  + '"=' +
             '"' +  mCon.FieldByName('Password').AsString + '"='+
             '"' +  mCon.FieldByName('Servidor').AsString + '"';

    appINI.WriteString('DATA_BASE',IntToStr(a), Valor);
    inc(a);
    mCon.Next;
  end;

  appINI.Free;

  if fileExists(Archivo) then
  begin
    if FileExists(extractfilepath(application.exename) + 'niol.ds') then
      DeleteFile(extractfilepath(application.exename) + 'niol.ds');
    try
      EncriptaFichero(Archivo,extractfilepath(application.exename) + 'niol.ds',666, True);
    except
      on E: Exception do
        ShowMessage( 'Error: No se pudo Encriptar el fichero.' + #13 +
                   'Motivo: ' + E.Message);
    end;
  end;
  ModalResult := mrOk;
  //close;

end;

procedure TfrmAltaServidor.btnSalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
//  Close;
end;

procedure TfrmAltaServidor.FormShow(Sender: TObject);
var
  Continuar: Boolean;
  MiArchivo,FileINI, FileDS : String;
  FilePath, xy: string;
  FileText: TextFile;
  wCadena: WideString;
  sTipo: string;
  iVector,
  iPos: Byte;
  st : TStringlist;
  i: integer;
  pc: String;
begin

  if mCon.Active then
    mcon.Refresh
  else
    mcon.Open;
  if mCon.RecordCount > 0 then
  begin
    while not mCon.Eof do
    begin
      mcon.Delete;
      mCon.Next;
    end;
  end;

  pc := GetPCName+'_'+GetMACAdress;
  FileDS := extractfilepath(application.exename) + 'niol.ds';
  FileINI := extractfilepath(application.exename) + '\Reportes\darkcod'+pc+'.ini';

  if fileExists(FileDS) then
  begin
    try
      EncriptaFichero(FileDS, FileINI, 666, True);
      MiArchivo:= FileINI;
      Continuar := True;
    except
      on E: Exception do
      begin
        Continuar := False;
        ShowMessage( 'Error: No se pudo Encriptar el fichero.' + #13 +
                   'Motivo: ' + E.Message);
      end;
    end;

    if Continuar = True and fileExists(MiArchivo) then
    begin
      FilePath := MiArchivo;
      AssignFile(FileText, MiArchivo);
      Reset(FileText);
      mCon.ReadOnly := False;
      while not Eof(FileText) do
      begin
        ReadLn(FileText, wCadena);
        if wCadena = '' then
          continue;
        if MidStr(wCadena, 1, 1) = '[' then
          sTipo := MidStr(wCadena, 1, Pos(']', wCadena))
        else
          if sTipo = '[DATA_BASE]' then
          begin
            st := TStringlist.Create;
            wCadena := StringReplace(wCadena, '=', ',',[rfReplaceAll]);
            st.CommaText := wCadena;
            mCon.Append;
            mCon.FieldByName('Conexion').AsString := st[1];
            mCon.FieldByName('Servidor').AsString := st[5];//Localhost
            mCon.FieldByName('Puerto').AsString   := st[2];//'3306';//st[2];
            mCon.FieldByName('Usuario').AsString  := st[3];//'root';//
            mCon.FieldByName('Password').asString := st[4];//'cleopatra';
            mCon.Post;
            st.Destroy;
          end;
        end;
      mCon.ReadOnly := True;
      CloseFile(FileText);
    end;

    if fileExists(FileINI) then
    begin
      try
        EncriptaFichero(FileINI,FileDS,666, True);
        FileINI:= ''; FileDS:='';
      except
      on E: Exception do
        ShowMessage( 'Error: No se pudo Encriptar el fichero.' + #13 +
                   'Motivo: ' + E.Message);
      end;
    end;
  end;

  btnCancelar.Enabled := False;
  btnGuardar.Enabled := False;
  edtConexion.SetFocus;
end;

procedure TfrmAltaServidor.btnCancelarClick(Sender: TObject);
begin
  if mCon.State in [dsInsert,dsEdit] then
    mCon.Cancel;
  mCon.ReadOnly := True;

  btnNuevo.Enabled := True;
  btnEditar.Enabled := True;
  btnEliminar.Enabled := True;
  btnCancelar.Enabled := False;
  btnGuardar.Enabled := False;
  cxGrid1.Enabled := True;
end;
procedure TfrmAltaServidor.btnEditarClick(Sender: TObject);
begin
  mCon.ReadOnly := False;
  mCon.Edit;
  btnNuevo.Enabled := False;
  btnEditar.Enabled := False;
  btnEliminar.Enabled := False;
  btnCancelar.Enabled := True;
  btnGuardar.Enabled := True;
  cxGrid1.Enabled := False;
  edtConexion.SetFocus;
end;

procedure TfrmAltaServidor.btnEliminarClick(Sender: TObject);
begin
  if MessageDlg('Desea eliminar la Conexión seleccionada?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        mCon.Delete;
    end;
end;

end.
