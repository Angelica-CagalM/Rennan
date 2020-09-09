unit frm_EstatusEquipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,masUtilerias,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmEstatusEquipos = class(TForm)
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
    Salir1: TMenuItem;
    zqEstados: TZQuery;
    dsEstados: TDataSource;
    grid_EstadosEquipos: TcxGrid;
    grid_EstadosEquiposDBTableView1: TcxGridDBTableView;
    grid_EstadosEquiposDBTableView1Column1: TcxGridDBColumn;
    grid_EstadosEquiposDBTableView1Column2: TcxGridDBColumn;
    grid_EstadosEquiposLevel1: TcxGridLevel;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    Panel1: TPanel;
    Label2: TLabel;
    tsEstados: TDBEdit;
    zqEstadosIdEstadoEquipo: TIntegerField;
    zqEstadosEstatus: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_GruposIsometricoCellClick(Column: TColumn);
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
    procedure grid_GruposIsometricoEnter(Sender: TObject);
    procedure grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure tsEstadosEnter(Sender: TObject);
    procedure tsEstadosExit(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstatusEquipos : TfrmEstatusEquipos;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_noil ;
{$R *.dfm}

procedure TfrmEstatusEquipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;

  botonpermiso.Free;
  end;

procedure TfrmEstatusEquipos.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuMarcaSubF', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   zqEstados.Open ;

   grid_EstadosEquipos.SetFocus;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;
procedure TfrmEstatusEquipos.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEstatusEquipos.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   sOpcion            := 'Insert';
   zqEstados.Append ;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_EstadosEquipos.Enabled := False;
   tsEstados.setfocus;
end;

procedure TfrmEstatusEquipos.frmBarra1btnEditClick(Sender: TObject);
begin
  If zqEstados.RecordCount > 0 Then
  Begin
    try
      frmBarra1.btnEditClick(Sender);
      sOpcion            := 'Edit';
      zqEstados.Edit ;
      grid_EstadosEquipos.Enabled := False;
      tsEstados.SetFocus;
      BloquearItemsPopup(PopupPrincipal, True );

    except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estatus de Equipos', 'Al agregar registro', 0);
     end;
    end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmEstatusEquipos.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  Clave  : string;
  confirmacion : word;
  Afirmacion:Word;
  MensajeStr : string;
  Mensaje2 :string ;
  mensaje3 :string;
begin
  {Validaciones de campos}
  nombres:=TStringList.Create;
  cadenas:=TStringList.Create;
  nombres.Add('Estado Equipo');
  cadenas.Add( tsEstados.Text );

  if not validaTexto(nombres, cadenas, '','' ) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

  Try

    zqEstados.Post;

    frmBarra1.btnPostClick(Sender);
  except
  on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estatus de Equipos', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
      lEdicion := false;
    end;
  end;

    frmbarra1.btnPrinter.Enabled := False;
    grid_EstadosEquipos.Enabled := True;

    if sOpcion = 'Edit' then
    begin
      grid_EstadosEquipos.Enabled := True;
      sOpcion := '';
    end;

end;



procedure TfrmEstatusEquipos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   zqEstados.Cancel ;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_EstadosEquipos.Enabled := True;
   sOpcion := '';
end;

procedure TfrmEstatusEquipos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   zqEstados.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
         zqEstados.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estatus de Equipos', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmEstatusEquipos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    tsEstados.refresh ;
end;

procedure TfrmEstatusEquipos.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Close
end;

procedure TfrmEstatusEquipos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmEstatusEquipos.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmEstatusEquipos.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmEstatusEquipos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmEstatusEquipos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmEstatusEquipos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmEstatusEquipos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmEstatusEquipos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmEstatusEquipos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmEstatusEquipos.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEstatusEquipos.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEstatusEquipos.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEstatusEquipos.tsIdMarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsEstados.SetFocus
end;

procedure TfrmEstatusEquipos.tsEstadosEnter(Sender: TObject);
begin
    tsEstados.Color := global_color_entradaerp;
end;

procedure TfrmEstatusEquipos.tsEstadosExit(Sender: TObject);
begin
    tsEstados.Color := global_color_salidaERP;
end;

end.
