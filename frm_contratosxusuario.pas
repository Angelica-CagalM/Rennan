unit frm_contratosxusuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,
  DBGrids, ComCtrls, global, DB, Menus, frxClass, frxDBSet,
  RXDBCtrl, ImgList, Buttons, ZAbstractDataset, ZDataset,
  ZAbstractRODataset, ZConnection, unitexcepciones, cxGraphics,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light ;

type
  TfrmContratosxUsuario = class(TForm)
    ds_Contratos: TDataSource;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    ds_ContratosxUsuario: TDataSource;
    grContratos: TGroupBox;
    grUsuarios: TGroupBox;
    TreeUsuarios: TTreeView;
    Contratos: TZReadOnlyQuery;
    ContratosxUsuario: TZQuery;
    chkTodos: TCheckBox;
    grid_contratosDBTableView1: TcxGridDBTableView;
    grid_contratosLevel1: TcxGridLevel;
    grid_contratos: TcxGrid;
    Grid__colcontrato: TcxGridDBColumn;
    Grid__colActivo: TcxGridDBColumn;
    grid_ContratosXUsuarioDBTableView1: TcxGridDBTableView;
    grid_ContratosXUsuarioLevel1: TcxGridLevel;
    grid_ContratosXUsuario: TcxGrid;
    Grid__ConlContrato: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure TreeUsuariosClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratosxUsuario: TfrmContratosxUsuario;
  MyTreeNode2: TTreeNode;

implementation

{$R *.dfm}


procedure TfrmContratosxUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ContratosxUsuario.Cancel ;
  action := cafree ;
end;

procedure TfrmContratosxUsuario.FormShow(Sender: TObject);
var
  QryUsuariosMysql : tzReadOnlyQuery ;
begin
  QryUsuariosMysql := tzReadOnlyQuery.Create(Self) ;
  QryUsuariosMysql.Connection := Connection.zConnection ;

  Contratos.Active := False ;
  Contratos.Open ;

  ContratosxUsuario.Active := False ;
  ContratosxUsuario.Params.ParamByName('Usuario').DataType := ftString ;
  ContratosxUsuario.Params.ParamByName('Usuario').Value := '' ;
  ContratosxUsuario.Open ;

  QryUsuariosMysql.Active := False ;
  QryUSuariosMysql.SQL.Clear ;
  QryUsuariosMysql.SQL.Add('select distinct sIdUsuario from usuarios Order by sIdUsuario ') ;
  QryUsuariosMysql.Open ;
  with TreeUsuarios.Items do
  begin
    Clear;
    MyTreeNode2 := Add(nil, 'IP Server : ' + global_ipServer );
    While NOT QryUsuariosMysql.Eof Do
    Begin
         AddChild(MyTreeNode2,QryUsuariosMysql.FieldValues['sIdUsuario']);
         QryUsuariosMysql.Next
     End
  End ;
  QryUsuariosMysql.Destroy ;
  TreeUsuarios.SetFocus ;

end;

procedure TfrmContratosxUsuario.btnAsignaClick(Sender: TObject);
begin
    If TreeUsuarios.Selected.Text <> '' Then
        If Contratos.RecordCount > 0 Then
        Begin
            if chkTodos.Checked = True then
            begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'Delete from contratosxusuario where sIdUsuario = :Usuario') ;
                connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Usuario').Value := ContratosxUsuario.FieldValues['sIdUsuario']  ;
                connection.zCommand.ExecSQL ;
                ContratosxUsuario.Active := False ;
                ContratosxUsuario.Open ;
                while not contratos.Eof do
                begin
                    Try
                      ContratosxUsuario.Append ;
                      ContratosxUsuario.FieldValues ['sIdUsuario'] := TreeUsuarios.Selected.Text ;
                      ContratosxUsuario.FieldValues ['sContrato'] := Contratos.FieldValues ['sContrato'] ;
                      ContratosxUsuario.Post ;
                      Contratos.Next ;
                    Except
                       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Contratos a Usuarios', 'Al editar registro', 0);
                        ContratosxUsuario.Cancel ;
                       end;
                       // MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
                    End
                end;
           end
           else
           begin
               connection.zCommand.Active := False ;
               connection.zCommand.SQL.Clear ;
               connection.zCommand.SQL.Add ( 'select * from contratosxusuario where sIdUsuario = :Usuario And ' +
                                             'sContrato = :Contrato') ;
               connection.zCommand.Params.ParamByName('Usuario').DataType  := ftString ;
               connection.zCommand.Params.ParamByName('Usuario').Value     := TreeUsuarios.Selected.Text  ;
               connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
               connection.zCommand.Params.ParamByName('Contrato').Value    := Contratos.FieldValues['sContrato']  ;
               connection.zCommand.Open ;
               if connection.zCommand.RecordCount > 0 then
                  messageDLG('¡ Ya se asigno el contrato '+ContratosxUsuario.FieldValues['sContrato']+ ' al Usuario '+ContratosxUsuario.FieldValues['sIdUsuario'] +' !', mtInformation, [mbOk], 0)
               else
               begin
                   Try
                     ContratosxUsuario.Append ;
                     ContratosxUsuario.FieldValues ['sIdUsuario'] := TreeUsuarios.Selected.Text ;
                     ContratosxUsuario.FieldValues ['sContrato']  := Contratos.FieldValues ['sContrato'] ;
                     ContratosxUsuario.Post ;
                     Contratos.Next ;
                   Except
                     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Contratos a Usuarios', 'Al editar registro', 0);
                     ContratosxUsuario.Cancel ;
                     end;
                     //MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
                   End
               end;
           end;
        End
end;

procedure TfrmContratosxUsuario.btnDenegarClick(Sender: TObject);
begin
    If ContratosxUsuario.RecordCount > 0 Then
    Begin
        if chkTodos.Checked = True then
        begin
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'Delete from contratosxusuario where sIdUsuario = :Usuario') ;
             connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Usuario').Value := ContratosxUsuario.FieldValues['sIdUsuario']  ;
             connection.zCommand.ExecSQL ;
             ContratosxUsuario.Active := False ;
             ContratosxUsuario.Open ;
        end
        else
        begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Delete from contratosxusuario where sIdUsuario = :Usuario And ' +
                                          'sContrato = :Contrato') ;
            connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Usuario').Value := ContratosxUsuario.FieldValues['sIdUsuario']  ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := ContratosxUsuario.FieldValues['sContrato']  ;
            connection.zCommand.ExecSQL ;
            ContratosxUsuario.Active := False ;
            ContratosxUsuario.Open ;
            Grid_ContratosxUsuario.SetFocus
        end;
    End
end;

procedure TfrmContratosxUsuario.TreeUsuariosClick(Sender: TObject);

begin
   If TreeUsuarios.Selected.Text <> '' Then
   Begin
            grUsuarios.Caption := 'Usuario : ' + TreeUsuarios.Selected.Text  ;
            ContratosxUsuario.Params.ParamByName('usuario').DataType := ftString ;
            ContratosxUsuario.Params.ParamByName('usuario').Value := TreeUsuarios.Selected.Text ;
            ContratosxUsuario.Open ;
            ContratosxUsuario.Refresh ;


   End
end;

End.
