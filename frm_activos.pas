unit frm_activos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, ADODB, ExtDlgs,
  jpeg, ZAbstractRODataset, ZAbstractDataset, ZDataset, unitexcepciones, UnitValidaTexto, unitactivapop,
   UFunctionsGHH, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxContainer,
  cxTextEdit, cxDBEdit, unitgenerales;

type
  TfrmActivos = class(TForm)
    frmBarra1: TfrmBarra;
    dbResidencias: TfrxDBDataset;
    frxResidencias: TfrxReport;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    dsActivos: TDataSource;
    Activos: TZQuery;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    grp1: TGroupBox;
    bImagen: TImage;
    OpenPicture: TOpenPictureDialog;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    tsIdActivo: TcxDBTextEdit;
    tsDescripcion: TcxDBTextEdit;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_residenciasCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsIdActivoEnter(Sender: TObject);
    procedure tsIdActivoExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure ActivosAfterScroll(DataSet: TDataSet);
    procedure grid_residenciasEnter(Sender: TObject);
    procedure tsIdActivoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_residenciasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_residenciasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_residenciasTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActivos: TfrmActivos;
  //utgrid:ticdbgrid;
  btnPermisos:String;
  sIdOrig : string;

implementation


{$R *.dfm}

procedure TfrmActivos.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmActivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
guardar_leer_grid(cxgrdbtblvwGrid1DBTableView1,frmActivos,1);
  Activos.Cancel ;
  action := cafree ;
  //utgrid.destroy;

end;

procedure TfrmActivos.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  sMenuP:=stMenu;
  //UtGrid:=TicdbGrid.create(grid_residencias);
  OpcButton := '' ;

  frmBarra1.btnCancel.Click ;
  Activos.Active := False ;
  Activos.Open ;
  guardar_leer_grid(cxgrdbtblvwGrid1DBTableView1,frmActivos,0);
  PermisosBotones(frmActivos, btnPermisos);
end;

procedure TfrmActivos.grid_residenciasCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmActivos.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmActivos, popupprincipal);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   bImagen.Picture := Nil ;
   OpenPicture.FileName := '' ;
   tsIdActivo.SetFocus ;

   Activos.Append ;
   frmBarra1.btnAddClick(Sender);
end;

procedure TfrmActivos.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
       //activapop(frmActivos, popupprincipal);
       Activos.Edit ;
   except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Activos Integrales', 'Al editar registro', 0);
        frmBarra1.btnCancel.Click ;
       end;
   end ;
   tsIdActivo.SetFocus;
end;

procedure TfrmActivos.frmBarra1btnPostClick(Sender: TObject);
Var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
   nombres, cadenas: TStringList;
   image : Integer;
   sId : string;
begin
    {Validacion de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Descripcion');cadenas.Add(tsDescripcion.Text);
    if not validaTexto(nombres, cadenas, 'Activo', tsIdActivo.Text) then
    begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
    end;
    {Continua insercion de datos}
    Try
       If (OpenPicture.FileName = '') OR (OpenPicture.FileName = ' ') Then begin
          If FileExists(global_ruta + 'MiImagen.jpg') Then begin
              OpenPicture.FileName := global_ruta +  'MiImagen.jpg' ;
              image := 1;
          end
          else begin
            if activos.state = dsEdit then begin
              image := 1;
            end
            else begin
              ShowMessage('Necesita registrar una imagen.');
              image := 0;
            end;
          end;
       end;

       If OpenPicture.FileName <> '' Then Begin
           Try
               BlobField := activos.FieldByName('bImagen') ;
               BS := activos.CreateBlobStream ( BlobField , bmWrite ) ;
               image := 1;
               try
                    Pic:=TJpegImage.Create;
                    try
                       Pic.LoadFromFile(OpenPicture.FileName) ;
                       Pic.SaveToStream(Bs) ;
                    finally
                       Pic.Free;
                    end;
               finally
                    bS.Free
               end
           Except

           End
       End Else
       Begin
         if image = 0 then
           //desactivapop(popupprincipal);
       End;
       if image = 1 then begin
         //Activos.FieldValues['bImagen'] := Null;
         Activos.Post ;

         sId := Activos.FieldByName('sIdActivo').AsString;
         Insertar1.Enabled := True ;
         Editar1.Enabled := True ;
         Registrar1.Enabled := False ;
         Can1.Enabled := False ;
         Eliminar1.Enabled := True ;
         Refresh1.Enabled := True ;
         Salir1.Enabled := True ;
         frmBarra1.btnPostClick(Sender);

//         if global_frmActivo = 'frm_nota_campo' then
//         begin
//             //frm_nota_campo.frmNota_campo.activo.Refresh;
//             //frm_Nota_Campo.frmNota_campo.cxActivo.DataBinding.DataSource.DataSet.FieldByName('sIdActivo').AsString := sId;
//             //frm_Nota_Campo.frmNota_campo.cxActivo.SetFocus;
//         end;
       end;
   except
     on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Activos Integrales', 'Al salvar registro', 0);
       frmBarra1.btnCancel.Click ;
     end;
   end;
   PermisosBotones(frmActivos, btnPermisos);
end;

procedure TfrmActivos.frmBarra1btnCancelClick(Sender: TObject);
begin
   //desactivapop(popupprincipal);
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Activos.Cancel ;
  PermisosBotones(frmActivos, btnPermisos);
end;

procedure TfrmActivos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Activos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        Activos.Delete ;
      except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Activos Integrales', 'Al eliminar registro', 0);
       end;
      end
    end
end;

procedure TfrmActivos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Activos.refresh ;
end;

procedure TfrmActivos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  close  ;
end;

procedure TfrmActivos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdActivo.SetFocus
end;

procedure TfrmActivos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmActivos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmActivos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmActivos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmActivos.Copy1Click(Sender: TObject);
begin
  //UtGrid.AddRowsFromClip;
end;

procedure TfrmActivos.Cut1Click(Sender: TObject);
begin
  //UtGrid.CopyRowsToClip;
end;

procedure TfrmActivos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmActivos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmActivos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmActivos.tsIdActivoEnter(Sender: TObject);
begin
//    tsIdActivo.Color := global_color_entradaERP
end;

procedure TfrmActivos.tsIdActivoExit(Sender: TObject);
begin
//    tsIdActivo.Color := global_color_salidaERP;
end;

procedure TfrmActivos.tsIdActivoKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    tsdescripcion.SetFocus

end;

procedure TfrmActivos.tsDescripcionEnter(Sender: TObject);
begin
//    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmActivos.tsDescripcionExit(Sender: TObject);
begin
//    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmActivos.frmBarra1btnPrinterClick(Sender: TObject);
begin
  If Activos.RecordCount > 0 Then
    frxResidencias.ShowReport()
end;

procedure TfrmActivos.bImagenClick(Sender: TObject);
begin
   If (activos.State = dsInsert) or (activos.State = dsEdit) then
   Begin
    OpenPicture.Title := 'Inserta Imagen';
    If OpenPicture.Execute then
    begin
      try
        bImagen.Picture.LoadFromFile(OpenPicture.FileName) ;
      except
        bImagen.Picture.LoadFromFile(global_ruta +  'MiImagen.jpg') ;
      end
    end
  end
end;

procedure TfrmActivos.ActivosAfterScroll(DataSet: TDataSet);
var
   bS,bSX  : TStream;
   Pic : TJpegImage;
   BlobField,BlobFieldX : tField ;
   error:boolean;
begin
  error:=false;
  If Activos.State = dsBrowse Then
  begin
      If Activos.RecordCount > 0 Then
      Begin
          BlobField := activos.FieldByName('bImagen') ;
          BS := activos.CreateBlobStream ( BlobField , bmRead ) ;
          try
            If bs.Size > 1 Then
            Begin     //**************************************************************************
              Pic:=TJpegImage.Create;
              try
                TRY
                  Pic.LoadFromStream(bS);
                  bImagen.Picture.Graphic:=Pic;
                 // SHOWMESSAGE('Abierto');
                EXCEPT
                  on e : exception do begin
                    error:=true;
                  end;
                END;
              finally
                Pic.Free;
              end;
            End  //*****************************************************************
            Else
              bImagen.Picture := Nil    ;
          finally
            bS.Free
          End

   End
  end;

  if error then
  begin
    OpenPicture.FileName := global_ruta +  'SEARCH.jpg' ;
    frmBarra1btnEditClick(Self);
    frmBarra1btnPostClick(Self);
  end;

end;

procedure TfrmActivos.grid_residenciasEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmActivos.grid_residenciasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmActivos.grid_residenciasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmActivos.grid_residenciasTitleClick(Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;

end.
