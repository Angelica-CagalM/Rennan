unit Frm_RequerimientosControlCalidad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxBarBuiltInMenu,
  dxLayoutcxEditAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, cxMemo,
  cxDBEdit, dxLayoutContainer, cxTextEdit, dxLayoutControl, cxPC, cxSplitter,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxProgressBar, cxLabel, frm_barraH1,
  Vcl.ExtCtrls, MemDS, DBAccess, Uni, frm_barraH2, global;

type
  TFrmRequerimientosControlCalidad = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    PanelPrincipal: TPanel;
    PanelGrid: TPanel;
    cxView_Requerimientos: TcxGridDBTableView;
    Grid_RequerimientosControlCalidadLevel1: TcxGridLevel;
    Grid_RequerimientosControlCalidad: TcxGrid;
    cxView_RequerimientosColumn1: TcxGridDBColumn;
    cxView_RequerimientosColumn2: TcxGridDBColumn;
    cxView_RequerimientosColumn3: TcxGridDBColumn;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    TcxCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    tcxDescripcion: TcxDBMemo;
    TdSActivo: TdxDBToggleSwitch;
    dxLayoutItem3: TdxLayoutItem;
    Panel2: TPanel;
    cxSplitter1: TcxSplitter;
    ZRquerimientos: TUniQuery;
    DSRequerimientos: TDataSource;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure ZRquerimientosAfterScroll(DataSet: TDataSet);
    procedure btnCancelClick(Sender: TObject);
    procedure frmBarraH11btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure EnterControl(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SalidaControl(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRequerimientosControlCalidad: TFrmRequerimientosControlCalidad;
  titulo         : string;
  btnPermisos, TipoExplosion : String;

  isOpen : boolean = False;

implementation
uses
UnitGenerales, FRM_connection, UnitExcepciones;

{$R *.dfm}

procedure TFrmRequerimientosControlCalidad.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := True;
    Grid_RequerimientosControlCalidad.Enabled:=False;

    ZRquerimientos.AfterScroll := nil;

    ZRquerimientos.Append;
    ZRquerimientos.FieldByName('Activo').AsString:='Si';
    ZRquerimientos.FieldByName('Descripcion').AsString := '*';
    zRquerimientos.FieldByName('Codigo').AsString := autoFolio(zRquerimientos, 'alm_requerimientos_controlcalidad');

end;


procedure TFrmRequerimientosControlCalidad.btnCancelClick(Sender: TObject);
begin
cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
    frmBarraH11.btnPrinter.Enabled:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    frmBarraH11.btnExporta.Enabled:=False;
  Grid_RequerimientosControlCalidad.Enabled:=True;


  try
      if ZRquerimientos.State in [dsInsert,dsEdit] then
        ZRquerimientos.Cancel;

      ZRquerimientos.AfterScroll := ZRquerimientosAfterScroll;
      TcxDescripcion.Text:='';
      PermisosBotones(FrmRequerimientosControlCalidad, btnPermisos);
   except
    on e : exception do
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al cancelar', 0);
  end;
end;

procedure TFrmRequerimientosControlCalidad.btnDeleteClick(Sender: TObject);
begin

    try


       If ZRquerimientos.RecordCount > 0 Then
          If MessageDlg('Desea eliminar el Requerimiento '+ZRquerimientos.FieldValues['Codigo']+'?. ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          Begin
             
              With connection do
              Begin
                 try
                    ZRquerimientos.Delete;
                    ZRquerimientos.ApplyUpdates();
                 Except
                    on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al eliminar registro', 0);
                    end;
                 End
              End
          End;
    except
      on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al eliminar registro', 0);
      end;
    end;

end;

procedure TFrmRequerimientosControlCalidad.btnPostClick(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Enabled:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    frmBarraH11.btnExporta.Enabled:=False;
    if ZRquerimientos.State = dsInsert then
    begin
    try
              ZRquerimientos.post;
              ZRquerimientos.Refresh ;

        Except
           on e : exception do
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);
        end;
    end;
    if ZRquerimientos.State = dsEdit then
    begin
         try
                  ZRquerimientos.Post;

                  ZRquerimientos.Refresh ;
         except
            on e : exception do
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);

         end;
    end;

  cxLeyenda.Caption:=titulo;
  btnCancelClick(sender);
  ZRquerimientos.AfterScroll := ZRquerimientosAfterScroll;
  Grid_RequerimientosControlCalidad.Enabled:=True;
  PermisosBotones(FrmRequerimientosControlCalidad,btnPermisos);
end;


procedure TFrmRequerimientosControlCalidad.btnRefreshClick(Sender: TObject);
begin
  ZRquerimientos.Refresh
end;



procedure TFrmRequerimientosControlCalidad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
guardar_leer_grid(cxView_Requerimientos,FrmRequerimientosControlCalidad,1);
  action:=cafree;
end;

procedure TFrmRequerimientosControlCalidad.FormShow(Sender: TObject);
begin
    AsignarSQL(ZRquerimientos,'req_control_calidad',pUpdate);
    FiltrarDataSet(ZRquerimientos,'IdRequerimiento', ['-1']);
    ZRquerimientos.Open;


    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Requisiciones';

    cxLeyenda.Caption:=titulo;


    frmBarraH11.btnPrinter.Enabled:=FALSE;
    frmBarraH11.btnDetalle.Enabled:=FALSE;
    frmBarraH11.btnExporta.Enabled:=FALSE;
    guardar_leer_grid(cxView_Requerimientos,FrmRequerimientosControlCalidad,0);

end;

procedure TFrmRequerimientosControlCalidad.frmBarraH11btnEditClick(
  Sender: TObject);
begin
  try
      If ZRquerimientos.RecordCount > 0 then
      Begin

        ZRquerimientos.AfterScroll := nil;
        ZRquerimientos.Edit;
        cxLeyenda.Caption:=titulo+'[Editando]';
        frmBarraH11.btnEditClick(Sender);
        Panel2.Visible:=True;
        cxSplitter1.Visible := true;
        Grid_RequerimientosControlCalidad.Enabled:=False;

      End;

    except
      on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al editar registro', 0);
      end;
   end;
end;

procedure TFrmRequerimientosControlCalidad.ZRquerimientosAfterScroll(
  DataSet: TDataSet);
begin
  if IsOpen=True then
  begin

  end
end;

procedure TFrmRequerimientosControlCalidad.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmRequerimientosControlCalidad.EnterControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;


procedure TFrmRequerimientosControlCalidad.SalidaControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

end.

