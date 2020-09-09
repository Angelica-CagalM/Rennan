unit frm_Periodos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, unittbotonespermisos, UnitValidaTexto, unitActivaPop,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxContainer, cxDBEdit, masUtilerias, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light ;

type
  TfrmPeriodos = class(TForm)
    Label2: TLabel;
    Label9: TLabel;
    frmBarra1: TfrmBarra;
    tsIdMedida: TDBEdit;
    tsMedida: TDBEdit;
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
    zqPeriodos: TZQuery;
    dsPeriodo: TDataSource;
    grid_periodos: TcxGrid;
    grid_periodosView: TcxGridDBTableView;
    grid_periodosViewColumn1: TcxGridDBColumn;
    grid_periodosViewColumn2: TcxGridDBColumn;
    grid_periodosLevel1: TcxGridLevel;
    Pegar1: TMenuItem;
    Copiar1: TMenuItem;
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
    procedure tsIdMedidaEnter(Sender: TObject);
    procedure tsIdMedidaExit(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Char);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tsMedidaExit(Sender: TObject);
    procedure tsMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure tlFaseKeyPress(Sender: TObject; var Key: Char);
    procedure Copy1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPeriodos : TfrmPeriodos;
  //utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_noil, frm_setupAlm;
{$R *.dfm}

procedure TfrmPeriodos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
//    frmSetupAlm.Periodos.Refresh;
//    frmSetupAlm.tsClaveDevolucion.text := sOldId;
  Except
  end;
  action := cafree ;
  botonpermiso.Free;    
end;

procedure TfrmPeriodos.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuMarcaSubF', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   zqPeriodos.Open ;

   Grid_Periodos.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   tsIdMedida.Enabled := False ;
   tsMedida.Enabled := False ;
end;
procedure TfrmPeriodos.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPeriodos.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   zqPeriodos.Append ;
   zqPeriodos.FieldValues['sDescripcion']   := '' ;
   BloquearItemsPopup(PopupPrincipal, True );
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_periodos.Enabled := False;
   tsIdMedida.Enabled := True ;
   tsMedida.Enabled := True;
   tsIdMedida.SetFocus;
end;

procedure TfrmPeriodos.frmBarra1btnEditClick(Sender: TObject);
begin
    If zqPeriodos.RecordCount > 0 Then
    Begin
        try
         frmBarra1.btnEditClick(Sender);
         Insertar1.Enabled := False ;
         Editar1.Enabled := False ;
         Registrar1.Enabled := True ;
         Can1.Enabled := True ;
         Eliminar1.Enabled := False ;
         Refresh1.Enabled := False ;
         Salir1.Enabled := False ;
         sOpcion := 'Edit';
         sOldId := zqPeriodos.FieldValues['sDescripcion'];
         zqPeriodos.Edit ;
         grid_periodos.Enabled := False;
         tsIdMedida.Enabled := True ;
         tsMedida.Enabled := True ;
         tsMedida.SetFocus;
         BloquearItemsPopup(PopupPrincipal, True );

        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Periodos', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmPeriodos.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  Clave  : string;
  confirmacion : word;
  SavePace : tBookMark;
begin

   if Length( Trim( tsMedida.Text ) ) = 0 then
      raise Exception.Create( 'Existen datos vacios: "Descripcion".' );
    {Continua insercion de datos..}
  ////////////////////

   lEdicion := zqPeriodos.state = dsEdit;//capturar la bandera para usarla luego del post
    Try
       sOldId := zqPeriodos.FieldByName('iPeriodo').AsString;
       zqPeriodos.Post ;

       Insertar1.Enabled  := True ;
       Editar1.Enabled    := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled       := False ;
       Eliminar1.Enabled  := True ;
       Refresh1.Enabled   := True ;
       Salir1.Enabled     := True ;


       frmBarra1.btnPostClick(Sender);
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Periodos', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
         lEdicion := false;
       end;
    end;


    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;
    grid_periodos.Enabled := True;
    if sOpcion = 'Edit' then
    begin
         grid_periodos.Enabled := True;
         sOpcion := '';
    end;
end;

procedure TfrmPeriodos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   zqPeriodos.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_periodos.Enabled := True;
   sOpcion := '';
end;

procedure TfrmPeriodos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   zqPeriodos.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
         zqPeriodos.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Periodos', 'Al eliminar registro', 0);
         end;
      end

    end

end;

procedure TfrmPeriodos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zqPeriodos.refresh ;
end;

procedure TfrmPeriodos.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;

procedure TfrmPeriodos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmPeriodos.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmPeriodos.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmPeriodos.Copy1Click(Sender: TObject);
begin
  ModificarPortapapeles( Self.ActiveControl, ftPegar );
end;

procedure TfrmPeriodos.Cut1Click(Sender: TObject);
begin
  ModificarPortapapeles( Self.ActiveControl, ftCopiar );
end;

procedure TfrmPeriodos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmPeriodos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmPeriodos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmPeriodos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmPeriodos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmPeriodos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmPeriodos.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPeriodos.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPeriodos.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPeriodos.tsIdMedidaEnter(Sender: TObject);
begin
    tsIdMedida.Color := global_color_entradaERP;
end;

procedure TfrmPeriodos.tsIdMedidaExit(Sender: TObject);
begin
    tsIdMedida.Color := global_color_salidaERP;
end;

procedure TfrmPeriodos.GlobalKeyUp(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsMedida.SetFocus
end;

procedure TfrmPeriodos.tsMedidaEnter(Sender: TObject);
begin
    tsMedida.Color := global_color_entradaERP;
end;

procedure TfrmPeriodos.tsMedidaExit(Sender: TObject);
begin
    tsMedida.Color := global_color_salidaERP;
end;

procedure TfrmPeriodos.tsMedidaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsIdMedida.SetFocus
end;

procedure TfrmPeriodos.tlFaseKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsIdMedida.SetFocus
end;

end.
