unit UFrmCopiarPartidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxLabel, cxClasses,
  dxLayoutControl, Vcl.ExtCtrls, frm_connection, cxTextEdit, cxMemo, Data.DB,
  MemDS, DBAccess, Uni, UnitGenerales, global, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmCopiarPartidas = class(TForm)
    pnl1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxfolio: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    cxNombre: TcxMemo;
    dxLayoutItem2: TdxLayoutItem;
    zOrdenesTrabajo: TUniQuery;
    dsOrdenesTrabajo: TDataSource;
    lcbPresupuesto: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    btnCopiar: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    zPresupuestoOrigen: TUniQuery;
    zPresupuestoDestino: TUniQuery;
    zPresMargenOrigen: TUniQuery;
    zPresMargenDestino: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sIdPresupuesto: String;
  end;

var
  FrmCopiarPartidas: TFrmCopiarPartidas;

implementation

{$R *.dfm}

procedure TFrmCopiarPartidas.btnCopiarClick(Sender: TObject);
Var Cursor:TCursor;
begin
  if lcbPresupuesto.ItemIndex >= 0 then
  begin
    Cursor:= screen.Cursor;
    try
      screen.Cursor := crAppStart ;
      zPresupuestoOrigen.Active:= False;
      AsignarSQL(zPresupuestoOrigen,'op_presupuesto_detalle',pUpdate);
      FiltrarDataSet(zPresupuestoOrigen,'Contrato,NumeroOrden',[zOrdenesTrabajo.FieldByName('sContrato').AsString,lcbPresupuesto.EditValue]);
      zPresupuestoOrigen.Open;

      zPresupuestoDestino.Active:= False;
      AsignarSQL(zPresupuestoDestino,'op_presupuesto_detalle',pUpdate);
      FiltrarDataSet(zPresupuestoDestino,'Contrato,NumeroOrden',[global_contrato,sIdPresupuesto]);
      zPresupuestoDestino.Open;
      zPresupuestoDestino.RecordCount;

      if zPresupuestoOrigen.RecordCount > 0 then
      begin
        zPresupuestoOrigen.First;
        while not zPresupuestoOrigen.Eof do
        begin
            zPresupuestoDestino.Append;
            zPresupuestoDestino.FieldByName('IdPresupuestoDetalle').AsInteger := 0;
            zPresupuestoDestino.FieldByName('sContrato').AsString             := global_Contrato;
            zPresupuestoDestino.FieldByName('sNumeroOrden').AsString          := sIdPresupuesto;
            zPresupuestoDestino.FieldByName('IdRecurso').AsInteger            := zPresupuestoOrigen.FieldByName('IdRecurso').AsInteger;
            zPresupuestoDestino.FieldByName('IdTipoRecurso').AsInteger         := zPresupuestoOrigen.FieldByName('IdTipoRecurso').AsInteger;
            zPresupuestoDestino.FieldByName('Codigo').AsString                := zPresupuestoOrigen.FieldByName('Codigo').AsString;
            zPresupuestoDestino.FieldByName('Descripcion').AsString           := zPresupuestoOrigen.FieldByName('Descripcion').AsString;
            zPresupuestoDestino.FieldByName('IdMedida').AsInteger             := zPresupuestoOrigen.FieldByName('IdMedida').AsInteger;
            zPresupuestoDestino.FieldByName('Cantidad').AsFloat               := zPresupuestoOrigen.FieldByName('Cantidad').AsFloat;
            zPresupuestoDestino.FieldByName('Costo').AsFloat                  := zPresupuestoOrigen.FieldByName('Costo').AsFloat;
            zPresupuestoDestino.FieldByName('PU').AsFloat                     := zPresupuestoOrigen.FieldByName('PU').AsFloat;
            zPresupuestoDestino.FieldByName('Adicional').AsFloat              := zPresupuestoOrigen.FieldByName('Adicional').AsFloat;
            zPresupuestoDestino.FieldByName('Financiamiento').AsFloat         := zPresupuestoOrigen.FieldByName('Financiamiento').AsFloat;
            zPresupuestoDestino.FieldByName('Jornadas').AsFloat               := zPresupuestoOrigen.FieldByName('Jornadas').AsFloat;
            zPresupuestoDestino.Post;
          zPresupuestoOrigen.Next;
        end;

      end;

        // Seccion para margenes
        zPresMargenOrigen.Active:= False;
        AsignarSQL(zPresMargenOrigen,'op_presupuesto_detalle_margen',pUpdate);
        FiltrarDataSet(zPresMargenOrigen,'Contrato,NumeroOrden',[zOrdenesTrabajo.FieldByName('sContrato').AsString,lcbPresupuesto.EditValue]);
        zPresMargenOrigen.Open;

        zPresMargenDestino.Active:= False;
        AsignarSQL(zPresMargenDestino,'op_presupuesto_detalle_margen',pUpdate);
        FiltrarDataSet(zPresMargenDestino,'Contrato,NumeroOrden',[global_contrato,sIdPresupuesto]);
        zPresMargenDestino.Open;
        zPresMargenDestino.RecordCount;

        if zPresMargenOrigen.RecordCount > 0 then
        begin
          zPresMargenOrigen.First;
          while not zPresMargenOrigen.Eof do
          begin
              zPresMargenDestino.Append;
              zPresMargenDestino.FieldByName('IdPresupuestoMargen').AsInteger := 0;
              zPresMargenDestino.FieldByName('sContrato').AsString            := global_Contrato;
              zPresMargenDestino.FieldByName('sNumeroOrden').AsString         := sIdPresupuesto;
              zPresMargenDestino.FieldByName('IdTipoRecurso').AsInteger        := zPresMargenOrigen.FieldByName('IdTipoRecurso').AsInteger;
              zPresMargenDestino.FieldByName('PorcentajeAdicional').AsFloat   := zPresMargenOrigen.FieldByName('PorcentajeAdicional').AsFloat;
              zPresMargenDestino.FieldByName('PorcentajeFinanciamiento').AsFloat        := zPresMargenOrigen.FieldByName('PorcentajeFinanciamiento').AsFloat;
              zPresMargenDestino.FieldByName('PorcentajeRendimientoM').AsFloat              := zPresMargenOrigen.FieldByName('PorcentajeRendimientoM').AsFloat;
              zPresMargenDestino.Post;
            zPresMargenOrigen.Next;
          end;
        end;

    finally
      screen.Cursor := Cursor;
    end;
  end
  else
    ShowMessage('Seleccione presupuesto, de donde deseamos traer las partidas.');

  ModalResult:= mrOk;
  Close;
end;

procedure TFrmCopiarPartidas.FormShow(Sender: TObject);
begin
  zOrdenesTrabajo.Active:= False;
  AsignarSQL(zOrdenesTrabajo,'ordenesdetrabajo_req',pUpdate);
  if connection.uconfiguracion.FieldByName('VerTodosProyectos').AsString = 'No' then
       FiltrarDataSet(zOrdenesTrabajo,'Contrato,Tipo',[global_contrato,'-1'])
  else
       FiltrarDataSet(zOrdenesTrabajo,'Contrato,Tipo',['%','PRESUPUESTO']);
  zOrdenesTrabajo.Open;


end;

end.
