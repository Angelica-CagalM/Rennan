unit UnitTarifa;

interface

uses frxClass,Forms, frxDBSet,ZConnection, DB, ZAbstractRODataset, Dialogs,DBCtrls,ExtCtrls,
  ZAbstractDataset, ZDataset,math,strUtils,DateUtils,SysUtils, RxMemDS, controls,
  classes,DBClient,cxProgressBar,ComObj,OleCtrls, Uni,
  UFunctionsGHH, UnitMetodos, unitGenerales;

Type
  FtTipo=(FtTierra,FtAbordo);
  //Secciones reórte diario
  FtSeccion=(FtsCaratula,FtsActividades,FtsRMaterial,FtsBGeneral,FtsTPersonal,FtsNGenerales,FtsLPersonal,FtsCCombustible,FtsCPersonal,FtsCPersonalTextra,FtsCEquipos,
             FtsCPernoctas,FtsRRecursos, FtsRRecursos_detalle,FtsRRecursos_detalleV2,FtsFotografico,FtsAvancesCortes, FtsAll, FtsNone);
  //Opciones de reportes
  FtSeccionBitacora=(FtsTareas,FtsAvancesParciales);

  Procedure EncabezadoPDF_Horizontal(Reportediario :TzREadOnlyQuery;        Var Reporte: TfrxReport;Tipo:FtTipo);
  Procedure FirmasPDF_Generales(Reportediario :TzREadOnlyQuery;             Var Reporte: TfrxReport;Tipo:FtTipo);
  Procedure ReportePDF_MovimientosLogisticos2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_BalanceGeneral(ReporteDiario:TzREadOnlyQuery;        Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_ActividadesPorFolio(sFiltroFolio: string; ReporteDiario:TzREadOnlyQuery;   Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_NotasGenerales(ReporteDiario:TzREadOnlyQuery;        Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_ConcentradoDePersonal2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_ConcentradoDeTiempoExtra(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_ConcentradoDePernoctas2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_DistribucionDeEquipos2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_PartidasAnexoC_detalleV2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  Procedure ReportePDF_TotalDePersonal2(ReporteDiario:TzREadOnlyQuery;      Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
  procedure ReportePDF_Reportefotografico(ReporteDiario:TzREadOnlyQuery;    Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);

  procedure ReportePDF_ClearDataset(Var Reporte: TfrxReport);

  {Generadores}
  Procedure TdConfiguracion(ParamContrato,ParamFolio:String;Var Reporte: TfrxReport);
  Procedure ExportOTProject(ParamContrato,ParamConvenio,ParamFolio:String;PgbAvance: TcxProgressBar=nil);
  function  VolumenActividades(var MsProject:Variant;ListaParams:TstringList;var Ren:Integer;const ItotalReg:Integer;PgbAvance: TcxProgressBar=nil):Boolean;
  Function  TdProrrateoFolio(const ParamContrato:String;Const ParamFecha:TDatetime;Const IdDiario:Integer):Boolean;
  Function  TdAjustaFolio(const ParamContrato:String;Const ParamFecha:TDatetime):Boolean;
  Function  ObtenerAplicaProrrateoPU(sParamContrato, sParamFolio :string; dParamFecha : tDate) : string;
  {Actividades}
  Procedure BitacoraPDF_ActividadesTareas(ReporteDiario:TzREadOnlyQuery;   Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccionBitacora; sParamEstatus, sParamNivelImprime : string);
  Procedure BitacoraPDF_AvancesCortes(ReporteDiario:TzREadOnlyQuery;   Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccionBitacora);
  Procedure BitacoraPDF_ActividadesDetalle(ReporteDiario:TzREadOnlyQuery;   Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccionBitacora);
  {Bitacora}

  Procedure procReporteGenerador(sParamContrato, sParamtipo, sParamAnexo, sParamTipoObra, sParamCategoria, sParamGeneradorTipo, sParamMoneda, sParamFiltroFolio :string; lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteAcumuladoFolios(sParamContrato, sParamTipoObra, sParamFiltro :string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteGeneradorDiesel(sParamContrato, sParamFiltro :string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteNotaCampo(iParamNota :integer; sParamContrato, sParamFolio, sParamConvenio, sParamConvenioOT, sParamTipoObra, sParamFiltro, sParamTipoActa :string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteGeneradorProyeccion(sParamContrato, sParamtipo, sParamAnexo, sParamTipoObra, sParamCategoria, sParamGeneradorTipo, sParamMoneda :string; lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteGeneradorPU(sParamContrato, sParamtipo, sParamAnexo, sParamTipoObra, sParamCategoria, sParamGeneradorTipo, sParamMoneda, sParamDetalle :string; lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteGerencial(iParamGerencial :integer; dParamFecha :tDate; sParamContrato, sParamFolio, sParamConvenio :string; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');

  {Procedimientos basicos}
  {busqueda de maximo id ->}      function Td_maximoId(sParamContrato, sParamTabla, sParamCampo :string) : Integer;
  {Eliminar o actualizar }
  {Contrato, Folio, Wbs o act ->} procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamAct, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string; lMensaje :boolean);
  {Avances acumulados ->}         function AvanceFolio(sParamContrato, sParamFolio : string; dParamFecha : tDateTime) : double;
  {Concatena Pesonal Gerencial}   function ConcatenaPersonal(sParamContrato, sParamFolio: string; dParamFecha :tDate; iParamGerencial :integer) : string;


  {Estos procesos y funciones se moveran a unitRH}
  Procedure procReporteDatosGenerales(iParamEmpresa :integer; sParamFiltro :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteCredencial(iParamEmpresa :integer; sParamFiltro :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteCredencialPrint(iParamEmpresa :integer; sParamFiltro,sParamNombreReporte :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');

  const
    TotalCol=10;
    TotalColPer=11;
    Mantisa=2;

implementation

uses frm_connection, global,Utilerias;

Procedure TdProrrateaPernocta(const ParamContrato:String;Const ParamFecha:TDatetime);
var
  QrFolios,QrHoras,QrAdicional,
  QrPernoctas:TzReadOnlyQuery;
  QCmd:TzQuery;
  HorasFolio:TstringList;
  TotalHoras:Double;
  sHoras,sTotalHrs,HrsTotales,
  sFolio:String;
  i:Integer;
  dCant:Extended;
  Factor,FactorT:VAriant;
begin
  QrFolios:=TzReadOnlyQuery.create(nil);
  QrHoras:=TzReadOnlyQuery.create(nil);
  QrAdicional:=TzReadOnlyQuery.create(nil);
  QrPernoctas:=TzReadOnlyQuery.create(nil);
  QCmd:=TzQuery.Create(nil);
  HorasFolio:=TstringList.Create;
  try
    try
      QCmd.Connection:=Connection.zConnection;
      QrPernoctas.Connection:=Connection.zConnection;
      QrPernoctas.SQL.Text:='select * from cuentas';

      QrAdicional.Connection:=Connection.zConnection;
      QrAdicional.SQL.Text:='select tp.sDescripcion as sDescripcionTipo, p.sIdTipoPersonal, p.sDescripcion, sum(bpc.dCantidad) as dCantidad' + #10 +
                            'from bitacoradepersonal_cuadre bpc' + #10 +
                            'inner join personal p' + #10 +
                            'on ( p.sContrato = :ContratoBarco and bpc.sIdPersonal = p.sIdPersonal )' + #10 +
                            'inner join tiposdepersonal tp' + #10 +
                            'on (tp.sIdTipoPersonal = p.sIdTipoPersonal )' + #10 +
                            'where bpc.sContrato =:Contrato and bpc.snumeroorden=:Folio' + #10 +
                            'and bpc.dIdFecha =:Fecha and tp.lPernocta="Si" and bpc.sTipoPernocta=:Pernocta' + #10 +
                            'order by tp.sIdTipoPersonal, bpc.sIdPersonal' ;

      QrHoras.Connection:=connection.zConnection;
      QrHoras.SQL.Text:='select * from bitacoradeactividades where sContrato=:Contrato and ' +
                        'dIdFecha=:Fecha and sNumeroOrden=:Folio and sIdTipoMovimiento="ED"';


      QrFolios.Connection:=Connection.zConnection;
      QrFolios.SQL.Text:= 'select * from bitacoradeactividades where scontrato=:Contrato' + #10 +
                          'and didfecha=:Fecha group by snumeroorden';
      QrFolios.ParamByName('Contrato').AsString:=ParamContrato;
      QrFolios.ParamByName('Fecha').AsDate:=ParamFecha;
      QrFolios.Open;
      HrsTotales:='00:00';
      while not QrFolios.Eof do
      begin
        QrHoras.Active:=false;
        QrHoras.ParamByName('Contrato').AsString:= QrFolios.FieldByName('sContrato').AsString;
        QrHoras.ParamByName('Fecha').AsDate:= QrFolios.FieldByName('dIdFecha').AsDateTime;
        QrHoras.ParamByName('Folio').AsString:= QrFolios.FieldByName('snumeroorden').AsString;
        QrHoras.Open;
        sTotalHrs:='00:00';
        while not QrHoras.Eof do
        begin
          sHoras:=sfnRestaHoras(QrHoras.FieldByName('sHoraFinal').AsString,QrHoras.FieldByName('sHoraInicio').AsString);
          sTotalHrs:=sfnSumaHoras(sTotalHrs,sHoras);
          QrHoras.Next;
        end;

        if HrsTotales<>'00:00' then
          HrsTotales:=sfnSumaHoras(HrsTotales,sTotalHrs)
        else
          HrsTotales:=sTotalHrs;
        HorasFolio.Add(QrFolios.FieldByName('sNumeroOrden').AsString + '=' + sTotalHrs);
        QrFolios.Next;
      end;

      QrPernoctas.Open;
      FactorT:=sHrsToExt(HrsTotales);//sfnHora(HrsTotales);
      QrFolios.First;
      while not QrFolios.Eof do
      begin
        QrPernoctas.First;
        while not QrPernoctas.Eof do
        begin
          dCant:=0;
          QCmd.Active:=false;
          QCmd.SQL.Text:='delete from bitacoradepernocta where sContrato=:Contrato and dIdFecha=:Fecha and '+
                         'sNumeroOrden=:Folio and sIdCuenta=:Pernocta';
          QCmd.ParamByName('Contrato').AsString:=QrFolios.FieldByName('sContrato').AsString;
          QCmd.ParamByName('Fecha').AsDate:= QrFolios.FieldByName('dIdFecha').AsDateTime;
          QCmd.ParamByName('Folio').AsString:= QrFolios.FieldByName('sNumeroOrden').AsString;
          QCmd.ParamByName('Pernocta').AsString:= QrPernoctas.FieldByName('sIdCuenta').AsString;
          QCmd.ExecSQL;

          for I := 1 to 2 do
          begin
            if i=1 then
              sFolio:='@'
            else
              sFolio:=QrFolios.FieldByName('sNumeroOrden').AsString;

            QrAdicional.Active:=false;
            QrAdicional.ParamByName('ContratoBarco').AsString:= global_contrato_barco;
            QrAdicional.ParamByName('Contrato').AsString:=QrFolios.FieldByName('sContrato').AsString;
            QrAdicional.ParamByName('Folio').AsString:=sFolio;
            QrAdicional.ParamByName('Fecha').Asdate:=QrFolios.FieldByName('dIdFecha').AsDateTime;
            QrAdicional.ParamByName('Pernocta').AsString:= QrPernoctas.FieldByName('sIdCuenta').AsString;
            QrAdicional.Open;
            sHoras:='';
            if QrAdicional.RecordCount=1 then
            begin
              sHoras:=HorasFolio.Values[QrFolios.FieldByName('sNumeroOrden').AsString];
              if sHoras<>'' then
              begin
                Factor:=sHrsToExt(sHoras);
                if Factor>0 then
                begin
                  if i=1 then
                    dCant:=dCant + (QrAdicional.FieldByName('dCantidad').AsFloat * Factor)/FactorT
                  else
                    dCant:=dCant + (QrAdicional.FieldByName('dCantidad').AsFloat * Factor);
                end;
              end;
            end;
          end;

          QCmd.Active:=false;
          QCmd.SQL.Text:='insert into bitacoradepernocta(sContrato,dIdFecha,sNumeroOrden,sIdCuenta,dCantidad) '+
                         'values(:Contrato,:Fecha,:Folio,:Pernocta,:Cantidad)';
          QCmd.ParamByName('Contrato').AsString:=QrFolios.FieldByName('sContrato').AsString;
          QCmd.ParamByName('Fecha').AsDate:= QrFolios.FieldByName('dIdFecha').AsDateTime;
          QCmd.ParamByName('Folio').AsString:= QrFolios.FieldByName('snumeroorden').AsString;
          QCmd.ParamByName('Cantidad').value:=dCant;
          QCmd.ParamByName('Pernocta').AsString:= QrPernoctas.FieldByName('sIdCuenta').AsString;
          QCmd.ExecSQL;

          QrPernoctas.Next;
        end;
        QrFolios.Next;
      end;


    except
      on e:Exception do
      begin
        showmessage(e.Message + ', ' + e.ClassName);

      end;

    end;
  finally
    QrFolios.Destroy;
    HorasFolio.Destroy;
    QrHoras.Destroy;
    QrAdicional.Destroy;
    QrPernoctas.Destroy;
    QCmd.Destroy;

  end;



end;

Function TdProrrateoFolio(const ParamContrato:String;Const ParamFecha:TDatetime;Const IdDiario:Integer):Boolean;
var
  QrMovimiento,QrRecursos:TzReadOnlyQuery;
  QFolios:TzQuery;
  TotalPersonal:Double;
  res:Boolean;
  sCadena : string;
begin
  Res:=true;
  QrMovimiento:=TzREadOnlyQuery.Create(nil);
  QFolios:=TzQuery.Create(nil);
  QrRecursos:=TzReadOnlyQuery.Create(nil);
  try
    try
      QrMovimiento.connection:=Connection.zConnection;
      QFolios.connection:=Connection.zConnection;
      QrRecursos.Connection:=Connection.zConnection;

      QrRecursos.Active := False;
      QrRecursos.SQL.Clear;
      QrRecursos.SQL.Add('SELECT bp.sIdPersonal, bp.sDescripcion, ifnull(SUM(bp.dAjuste),0) AS Ajuste, ' +
                           'IF(SUM(bp.dCanthh) > 0,round( SUM(bp.dCanthh),2), SUM(bp.dCantidad)) AS Total '+
                           'FROM bitacoradepersonal bp ' +
                           'inner join bitacoradeactividades ba ' +
                           'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                           'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                           'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) ');

      if (connection.uconfiguracion.FieldByName('lCalculaProrrateo').AsString = 'Pernocta') then
         QrRecursos.SQL.Add('WHERE bp.scontrato = :Orden AND bp.sNumeroOrden = :Folio AND bp.didfecha = :Fecha and bp.lAplicaPernocta = "Si" and bp.sTipoObra like :Tipo ')
      else
         QrRecursos.SQL.Add('WHERE bp.scontrato = :Orden AND bp.sNumeroOrden = :Folio AND bp.didfecha = :Fecha and bp.lCalculaBarco = "Si" and bp.sTipoObra like :Tipo ');
      QrRecursos.SQL.Add('GROUP by bp.sNumeroOrden, bp.sIdPersonal ');

      TotalPersonal:=0;
      with QFolios do
      begin
        sql.text:='select * from movimientosxfolios where sContrato=:Contrato and dIdFecha=:fecha and iIdDiario=:Diario';
        ParamByname('Contrato').AsString :=ParamContrato;
        ParamByname('Fecha').AsDate      :=ParamFecha;
        ParamByname('Diario').AsInteger  :=IdDiario;
        Open;

        while not eof do
        begin
          QrRecursos.Active := False;
          QrRecursos.ParamByName('Orden').AsString      := FieldByName('sNumeroOrden').AsString;
          QrRecursos.ParamByName('Folio').AsString      := FieldByName('sFolio').AsString;
          QrRecursos.ParamByName('Fecha').AsDate        := FieldByName('dIdFecha').AsDateTime;
          QrRecursos.ParamByName('Tipo').AsString       := ObtenerAplicaProrrateoPU(FieldByName('sNumeroOrden').AsString, FieldByName('sFolio').AsString, ParamFecha );
          QrRecursos.Open;
          if QrRecursos.recordcount > 0 then
          begin
              while not QrRecursos.Eof do
              begin
                  TotalPersonal:=TotalPersonal + (QrRecursos.fieldByName('Total').asfloat + QrRecursos.fieldByName('ajuste').asfloat);
                  QrRecursos.Next;
              end;
          end;

          next;
        end;
      end;

      with QrMovimiento do
      begin
        sql.text:= 'select * from movimientosdeembarcacion where sContrato=:Contrato and '  +
                  'dIdFecha=:Fecha and iIdDiario=:Diario';
        ParamByname('Contrato').AsString :=ParamContrato;
        ParamByname('Fecha').AsDate      :=ParamFecha;
        ParamByname('Diario').AsInteger  :=IdDiario;
        Open;

        QFolios.First;
        while not eof do
        begin
          while not QFolios.Eof do
          begin
            QrRecursos.Active := False;
            QrRecursos.ParamByName('Orden').AsString      := QFolios.FieldByName('sNumeroOrden').AsString;
            QrRecursos.ParamByName('Folio').AsString      := QFolios.FieldByName('sFolio').AsString;
            QrRecursos.ParamByName('Fecha').AsDate        := QFolios.FieldByName('dIdFecha').AsDateTime;
            QrRecursos.ParamByName('Tipo').AsString       := ObtenerAplicaProrrateoPU(QFolios.FieldByName('sNumeroOrden').AsString, QFolios.FieldByName('sFolio').AsString, ParamFecha );
            QrRecursos.Open;
            if QrRecursos.recordcount > 0 then
            begin
              if TotalPersonal>0 then
              begin
                while not QrRecursos.Eof do
                begin
                    QFolios.Edit;
                    QFolios.FieldByName('dCanthh').value:= QFolios.FieldByName('dCanthh').value + (QrRecursos.fieldByName('Total').asfloat + QrRecursos.fieldByName('ajuste').asfloat);
                    QFolios.post;
                    QrRecursos.Next;
                end;
                sCadena :=  FloatToStr( (QFolios.FieldByName('dCanthh').value )
                                                  * StrToFloat(QrMovimiento.FieldByName('sFactor').AsString) /TotalPersonal);

                QFolios.Edit;
                QFolios.FieldByName('sFactor').value:= (StrToFloat(sCadena));
                QFolios.Post;
              end;
            end;

            QFolios.next;
          end;
          next;
        end;
      end;

    except
      Res:=false;
    end;


  finally
    QrMovimiento.destroy;
    QFolios.destroy;
    QrRecursos.destroy;
  end;
  Result:=res;
end;

Function TdAjustaFolio(const ParamContrato:String;Const ParamFecha:TDatetime):Boolean;
var
  QrRecursos:TzReadOnlyQuery;
  QFolios:TzQuery;
  TotalPersonal:Double;
  res:Boolean;
begin
  Res:=true;
  QFolios:=TzQuery.Create(nil);
  QrRecursos:=TzReadOnlyQuery.Create(nil);
  try
    try
      QFolios.connection:=Connection.zConnection;
      QrRecursos.Connection:=Connection.zConnection;

      QrRecursos.Active := False;
      QrRecursos.SQL.Clear;
      QrRecursos.SQL.Add('select sum(sFactor) as suma from movimientosxfolios '+
                         'where sContrato =:Contrato and dIdFecha =:Fecha group by sContrato ');
      QrRecursos.ParamByName('Contrato').AsString      := ParamContrato;
      QrRecursos.ParamByName('Fecha').AsDate        := ParamFecha;
      QrRecursos.Open;

      if QrRecursos.RecordCount > 0 then
         if QrRecursos.FieldByName('suma').AsFloat > 1 then
         begin
            QFolios.Active := False;
            QFolios.sql.text:='select * from movimientosxfolios where sContrato=:Contrato and dIdFecha=:Fecha '+
                              'order by dCantHH DESC, sFactor DESC';
            QFolios.ParamByname('Contrato').AsString :=ParamContrato;
            QFolios.ParamByname('Fecha').AsDate      :=ParamFecha;
            QFolios.Open;

            QFolios.Edit;
            QFolios.FieldByName('sFactor').AsFloat := QFolios.FieldByName('sFactor').AsFloat - (QrRecursos.FieldByName('suma').AsFloat - 1);
            QFolios.Post;
         end;

    except
      Res:=false;
    end;


  finally
    QFolios.destroy;
    QrRecursos.destroy;
  end;
  Result:=res;
end;


procedure ReportePDF_ClearDataset(Var Reporte: TfrxReport);
var
  i:Integer;
begin
  for I := 0 to Reporte.DataSets.Count - 1 do
    Reporte.DataSets.Items[i].DataSet.Destroy;
  Reporte.DataSets.Clear;
end;

Procedure ReportePDF_MovimientosLogisticos2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
  zqProrrateo,
  zqMovimientos,
  zqFactor,
  zqArribos,
  ZMovimientos : TZReadOnlyQuery;

  Td_Movimientos,
  Td_prorrateoBarco,
  Td_Arribos,
  Td_ImpMovimientos,
  Td_MovFolios       : TfrxDBDataset;
  rxMovimientos      : TrxMemoryData;
//  mDatos:TJvMemoryData;
//  mMovimientos:TJvMemoryData;
  iIdDiarioTmp:Integer;
  useOrigen:Boolean;
  CuentaCol, CuentaFolios, num : integer;
  sMovimientos, sTipo : string;
  dSuma : double;
begin
  Try
    zqProrrateo   := TZReadOnlyQuery.Create(nil);
    zqMovimientos := TZReadOnlyQuery.Create(nil);
    zqArribos     := TZReadOnlyQuery.Create(nil);
    zMovimientos  := TZReadOnlyQuery.Create(nil);

//    mMovimientos:=TJvMemoryData.Create(nil);
    useOrigen:=false;
    Td_Movimientos:= TfrxDBDataset.Create(nil);
    Td_Movimientos.UserName:='Td_Movimientos';

    Td_ImpMovimientos:= TfrxDBDataset.Create(nil);
    Td_ImpMovimientos.UserName:='Td_ImpMovimientos';

    Td_prorrateoBarco:= TfrxDBDataset.Create(nil);
    Td_prorrateoBarco.UserName:='Td_Prorrateobarco';

    Td_Arribos:= TfrxDBDataset.Create(nil);
    Td_Arribos.UserName:='Td_Arribos';

    Td_MovFolios:= TfrxDBDataset.Create(nil);
    Td_MovFolios.UserName:='Td_MovFolios';

    if (TImpresion=FtsCaratula) or (TImpresion=FtsAll) then
    begin
        {$REGION 'CONSULTA'}
        zqProrrateo.Connection := Connection.zConnection;
        zqProrrateo.SQL.Add('SELECT ' +
                            '  tm.sIdTipoMovimiento, '+
                            '  tm.sDescripcion, '+
                            '  tm.sTipo, '+
                            '  ifnull(SUM( me.sFactor ),0) as sFactor, tm.lImprimeCeros '+
                            'FROM movimientosdeembarcacion me '+
                            'inner join tiposdemovimiento tm '+
                            'on (tm.sContrato = me.sContrato and tm.sIdTipoMovimiento = me.sClasificacion '+
                            'and tm.sClasificacion = "Movimiento de Barco" and tm.sTipo = me.stipo) '+
                            'WHERE '+
                            '    me.sContrato =:ContratoBarco '+
                            '    AND me.sOrden = :Orden '+
                            '    AND me.dIdFecha = :Fecha '+
                            '    AND me.sIdFase = ""'+
                            'group by tm.sIdTipoMovimiento ');
        zqProrrateo.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        zqProrrateo.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
        zqProrrateo.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
        zqProrrateo.Open;
        {$ENDREGION}

        {$REGION 'MOVIMIENTOS DE BARCO'}
        zqMovimientos.Connection := connection.zconnection;
        zqMovimientos.SQL.Add('select me.shorainicio, me.shorafinal, concat(me.sHoraInicio, " - " ,  me.sHoraFinal) as sHorario, '+
                              'me.mDescripcion, tm.sIdTipoMovimiento , me.sClasificacion, '+
                              'me.sFactor, me.iiddiario '+
                              'from movimientosdeembarcacion me '+
                              'inner join tiposdemovimiento tm '+
                              'on (me.sContrato = tm.sContrato and me.sClasificacion = tm.sIdTipoMovimiento) '+
                              'where me.sContrato =:ContratoBarco '+
                              'and me.dIdFecha = :fecha '+
                              'and me.sOrden =:orden ' +
                              'and me.sActividades = "MOV" '+
                              'group by me.iIddiario order by me.shorainicio,me.iIdDiario');
        zqMovimientos.ParamByName('contratoBarco').AsString := global_contrato_barco;
        zqMovimientos.ParamByName('fecha').AsDate           := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        zqmovimientos.ParamByName( 'orden' ).AsString       := global_contrato;
        zqMovimientos.Open;


        zqArribos.Connection := connection.zconnection;
        zqArribos.SQL.Add('select concat( me.sHoraInicio , " - ", me.sHoraFinal ) as sHorario, me.sHoraInicio, me.sHoraFinal, '+
                  'me.mDescripcion '+
                  'from movimientosdeembarcacion me '+
                  'where me.sContrato = :contratoBarco '+
                  'and me.dIdFecha = :fecha '+
                  'and me.sOrden = :orden '+
                  'and me.sClasificacion = "" and sTipo <> "MOVIMIENTO" '+
                  'order by me.sHoraInicio');
        zqArribos.ParamByName('contratoBarco').AsString := global_contrato_barco;
        zqArribos.ParamByName('fecha').AsDate := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        zqArribos.ParamByName('orden' ).AsString := global_contrato;
        zqArribos.Open;

        if zqArribos.RecordCount = 0 then
        begin
            zqArribos.Connection := connection.zconnection;
            zqArribos.SQL.Clear;
            zqArribos.SQL.Add('select " " as sHorario, " " as sHoraInicio, " " as sHoraFinal, '+
                      ' " " as mDescripcion '+
                      'from movimientosdeembarcacion group by sContrato ');
            zqArribos.Open;
        end;

        {$ENDREGION}

        {$REGION 'Resumen de movimientos x folio'}

        //Buscamos los movimientos de barco
        zMovimientos.Connection := connection.zconnection;
        zMovimientos.SQL.Add('select me.sContrato, me.sOrden, t.sIdTipoMovimiento, t.sDescripcion, t.sMedida, ot.sIdFolio, SUM(mf.sFactor) as Factor, sum(mf.sFactorBarco) as FactorBarco from tiposdemovimiento t '+
                    'inner  join movimientosdeembarcacion me on (me.sContrato = t.sContrato and me.dIdFecha =:Fecha and me.sClasificacion  = t.sIdTipoMovimiento) '+
                    'inner join movimientosxfolios mf on (mf.sContrato = me.sContrato and me.iIdDiario = mf.iIdDiario and mf.dIdFecha = me.dIdFecha and me.sOrden = mf.sNumeroOrden and mf.sFactor > 0) '+
                    'inner join ordenesdetrabajo ot on (ot.sContrato = mf.sNumeroOrden and ot.sNumeroOrden = mf.sFolio) '+
                    'where t.sContrato =:ContratoBarco and t.sClasificacion = "Movimiento de Barco" '+
                    'group by t.sIdTipoMovimiento, mf.sFolio order by t.sIdTipoMovimiento, ot.iOrden');
        zMovimientos.ParamByName('contratoBarco').AsString := global_contrato_barco;
        zMovimientos.ParamByName('Fecha').AsDate           := ReporteDiario.FieldByName('dIdFecha').AsDateTime;;
        zMovimientos.Open;

        CuentaFolios := 1;
        if zMovimientos.RecordCount > 7 then
           CuentaFolios := 2;

        if zMovimientos.RecordCount > 14 then
           CuentaFolios := 3;

        if zMovimientos.RecordCount > 21 then
           CuentaFolios := 4;

//        mDatos:=TJvMemoryData.Create(nil);
//        with mDatos do
//        begin
//          Active:=false;
//          FieldDefs.Add('iGrupo', ftInteger, 0, True);
//          FieldDefs.Add('sidrecurso', ftString, 10, True);
//          FieldDefs.Add('sdescripcion', ftString, 100, True);
//          FieldDefs.Add('smedida', ftString, 100, true);
//          FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//          for CuentaCol:=1 to 7 do
//          begin
//            FieldDefs.Add('dcantvew' + Inttostr(CuentaCol), FtFloat, 0, false);
//            FieldDefs.Add('dcantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//            FieldDefs.Add('sNumeroOrden'+ Inttostr(CuentaCol), ftString, 100, false);
//            FieldDefs.Add('sTipo'+ Inttostr(CuentaCol), ftString, 4, false);
//          end;
//          Active:=true;
//        end;

        //Primero buscamos los movimeintos de barco
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select sIdTipoMovimiento, sDescripcion, sMedida from tiposdemovimiento where sContrato =:Contrato '+
                                    'and sClasificacion = "Movimiento de Barco" order by sIdTipoMovimiento ');
        connection.zCommand.ParamByName('Contrato').AsString := global_contrato_barco;
        connection.zCommand.Open;

        for num := 1 to CuentaFolios do
        begin
            connection.zCommand.First;
            while not connection.zCommand.Eof do
            begin
//               mDatos.Append;
//               mDatos.FieldByName('iGrupo').AsInteger      := num;
//               mDatos.FieldByName('sidrecurso').AsString   := connection.zCommand.FieldByName('sIdTipoMovimiento').AsString;
//               mDatos.FieldByName('sdescripcion').AsString := connection.zCommand.FieldByName('sDescripcion').AsString;
//               mDatos.FieldByName('smedida').AsString      := connection.zCommand.FieldByName('sMedida').AsString;
//               mDatos.FieldByName('dcantTotal').AsFloat    := 0;
               for CuentaCol := 1 to 7 do
               begin
//                  mDatos.FieldByName('sNumeroOrden'+Inttostr(CuentaCol)).AsString := '';
//                  mDatos.FieldByName('sTipo'+Inttostr(CuentaCol)).AsString        := '';
//                  mDatos.FieldByName('dCantidad'+Inttostr(CuentaCol)).AsFloat     := 0;
               end;
//               mDatos.Post;
               connection.zCommand.Next;
            end;
        end;

        sMovimientos := '';
        zmovimientos.First;
//        mDatos.First;
        num := 1;
        while not zmovimientos.Eof do
        begin
            if sMovimientos <> zMovimientos.FieldByName('sIdTipoMovimiento').AsString then
            begin
                CuentaCol := 1;
                dSuma     := 0;
//                mDatos.Filtered := False;
//                mDatos.Filter   := 'sidrecurso = '+QuotedStr(zMovimientos.FieldByName('sIdTipoMovimiento').AsString);
//                mDatos.Filtered := True;
                sMovimientos := zMovimientos.FieldByName('sIdTipoMovimiento').AsString;
            end;

//            mDatos.Edit;
//            mDatos.FieldByName('sNumeroOrden'+Inttostr(CuentaCol)).AsString := zMovimientos.FieldByName('sIdFolio').AsString;
//            mDatos.FieldByName('sTipo'+Inttostr(CuentaCol)).AsString        := 'TD';
//            mDatos.FieldByName('dCantidad'+Inttostr(CuentaCol)).AsFloat     := xRound(zMovimientos.FieldByName('Factor').AsFloat + zMovimientos.FieldByName('FactorBarco').AsFloat,6);
//            dSuma := dSuma + xRound(zMovimientos.FieldByName('Factor').AsFloat + zMovimientos.FieldByName('FactorBarco').AsFloat,6);
//            mDatos.FieldByName('dcantTotal').AsFloat   := dSuma;
//            mDatos.Post;

            inc(CuentaCol);

            if CuentaCol = 8 then
            begin
               CuentaCol := 1;
               inc(num);
//               mDatos.Locate('iGrupo', num, []);
            end;

            zMovimientos.Next;
        end;
//        mDatos.Filtered := False;

        {$ENDREGION}

        {Esta secccion es para mostrar la hoja vacia sino existen datos.}
        useOrigen:=True;
        if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
        begin
            if zqMovimientos.RecordCount = 0 then
            begin
              zqMovimientos.SQL.Clear;
              zqMovimientos.Connection := connection.zconnection;
              zqMovimientos.SQL.Add('select "" as shorainicio, "" as shorafinal, "" as sHorario, '+
                            '"" as mDescripcion, "" as sIdTipoMovimiento , "" as sClasificacion, "" as sIdFolio, '+
                            '"" as sFactor, "" as iiddiario, "" as sIdPlataforma, "" as sdescripcion ');
              zqMovimientos.Open;
              useOrigen:=False;

              zqProrrateo.Connection := Connection.zConnection;
              zqProrrateo.SQL.Clear;
              zqProrrateo.SQL.Add('SELECT "" as sIdTipoMovimiento, "" as sDescripcion, "" as sTipo, ' +
                                  ' ""  AS sFactor ');
              zqProrrateo.Open;

              zqMovimientos.Connection := connection.zconnection;
              zqMovimientos.SQL.Clear;
              zqMovimientos.SQL.Add('select "" as shorainicio, "" as shorafinal, "" as sHorario, '+
                            '"" as mDescripcion, "" as sIdTipoMovimiento , "" as sClasificacion, "" as sIdFolio, '+
                            '"" as sFactor, "" as iiddiario, "" as sIdPlataforma, "" as sdescripcion ');
              zqMovimientos.Open;

              zqArribos.Connection := connection.zconnection;
              zqArribos.SQL.Clear;
              zqArribos.SQL.Add('select "" as sHoraInicio, "" as sHoraFinal, "" as sHorario, "" as mDescripcion ');
              zqArribos.Open;
            end;
        end;


    end;

    Td_ImpMovimientos.DataSet    := zqMovimientos;
    Td_ImpMovimientos.FieldAliases.Clear;

    Td_ProrrateoBarco.DataSet := zqProrrateo;
    Td_ProrrateoBarco.FieldAliases.Clear;

    Td_Movimientos.DataSet    := zqMovimientos;
    Td_Movimientos.FieldAliases.Clear;

    Td_Arribos.DataSet          := zqArribos;
    Td_Arribos.FieldAliases.Clear;

//    Td_MovFolios.DataSet        := mDatos;
    Td_MovFolios.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_ImpMovimientos);
    Reporte.DataSets.Add(Td_prorrateobarco);
    Reporte.DataSets.Add(Td_Movimientos);
    Reporte.DataSets.Add(Td_Arribos);
    Reporte.DataSets.Add(Td_MovFolios);

  Finally

  End;
end;

Procedure ReportePDF_BalanceGeneral(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
  sFolios: String;

  iFilaIniciaMovimientos: Integer;

  dExistenciaAnteriorAux,
  dConsumoTotal,
  dConsumoSinEquipos,
  dRecibido,
  dConsumoCIA,
  dConsumoNAV,
  dConsumoSDP,
  dConsumoCDP,
  dConsumoESP,
  dConsumoEquipos,
  dPrestamo,
  dProduccion : Real;

  lProducido, lTrasiego, lRecibido : Boolean;

  QryArribos,
  QryConsumos,
  QryCondiciones,
  QryEquipos,
  QryConsumoEmbarcaciones,
  QryProrrateoBarco,
  QryConsumosDiesel : TZQuery;
  QrySinEquipos: TZQuery;
  QryProrratipo: TZQuery;
  QryOrdenamiento: TZQuery;

  ConsumosAnt: array[1..5,1..2] of double;
  indice : integer;
  dPorcionDia: Real;
  rxBalance, rxBalanceResumen : TrxMemoryData;

  Td_balance,
  Td_balanceResumen,
  Td_ImpBalance,
  Td_consumoEquipos  : TfrxDBDataset;
begin
  Try

    Td_balance:= TfrxDBDataset.Create(nil);
    Td_balance.UserName:='Td_balance';

    Td_ImpBalance:= TfrxDBDataset.Create(nil);
    Td_ImpBalance.UserName:='Td_ImpBalance';

    Td_balanceResumen:= TfrxDBDataset.Create(nil);
    Td_balanceResumen.UserName:='Td_balanceResumen';

    Td_consumoEquipos:= TfrxDBDataset.Create(nil);
    Td_consumoEquipos.UserName:='Td_consumoEquipos';

    QryConsumoEmbarcaciones:= TZQuery.Create(nil);
    QryConsumoEmbarcaciones.Connection := Connection.zConnection;

    QryProrrateoBarco:= TZQuery.Create(nil);
    QryProrrateoBarco.Connection := Connection.zConnection;

    QryOrdenamiento:=TZQuery.Create (nil);
    QryOrdenamiento.connection:= connection.zConnection;

    QryConsumos:=TZQuery.Create (nil);
    QryConsumos.connection:= connection.zConnection;

    QryEquipos:= TZQuery.Create (nil);
    QryEquipos.connection:= Connection.zConnection;

    QryProrratipo := TZQuery.Create(nil);
    QryProrratipo.Connection := Connection.zConnection;

    QryConsumosDiesel := TZQuery.Create(nil);
    QryConsumosDiesel.Connection := Connection.zConnection;

    rxBalance := TrxMemoryData.Create(nil);
    rxBalance.Active := False;
    rxBalance.FieldDefs.Add('sIdEmbarcacion', ftString, 10, True);
    rxBalance.FieldDefs.Add('sEmbarcacion', ftString, 50, True);
    rxBalance.FieldDefs.Add('sConcepto', ftString, 25, True);
    rxBalance.FieldDefs.Add('sMedida', ftString, 25, True);
    rxBalance.FieldDefs.Add('dExistenciaAnt', ftFloat, 0, True);
    rxBalance.FieldDefs.Add('dRecepcion', ftFloat, 0, True);
    rxBalance.FieldDefs.Add('dProducido', ftFloat, 0, True);
    rxBalance.FieldDefs.Add('dConsumo', ftFloat, 0, True);
    rxBalance.FieldDefs.Add('dTransferido', ftFloat, 0, True);
    rxBalance.FieldDefs.Add('dConsumoOT', ftFloat, 0, True);
    rxBalance.FieldDefs.Add('dExistenciaAct', ftFloat, 0, True);
    rxBalance.Active := True;

    rxBalanceResumen := TrxMemoryData.Create(nil);
    rxBalanceResumen.Active := False;
    rxBalanceResumen.FieldDefs.Add('sIdEmbarcacion', ftString, 10, True);
    rxBalanceResumen.FieldDefs.Add('sEmbarcacion', ftString, 50, True);
    rxBalanceResumen.FieldDefs.Add('dOperacion', ftFloat, 0, True);
    rxBalanceResumen.FieldDefs.Add('dEspera', ftFloat, 0, True);
    rxBalanceResumen.FieldDefs.Add('dNavegando', ftFloat, 0, True);
    rxBalanceResumen.FieldDefs.Add('dCia', ftFloat, 0, True);
    rxBalanceResumen.FieldDefs.Add('dTotal', ftFloat, 0, True);
    rxBalanceResumen.Active := True;

    if (TImpresion=FtsBGeneral) or (TImpresion=FtsAll) then
    begin
        {$REGION 'CONSULTA DE EMBARCACIONES'}
        QryConsumoEmbarcaciones.Active := False;
        QryConsumoEmbarcaciones.SQL.Add('SELECT e.sContrato, r.sIdEmbarcacion, 	e.sDescripcion '+
                                        'FROM recursos AS r ' +
                                        'INNER JOIN embarcaciones AS e ON(e.sIdEmbarcacion = r.sIdEmbarcacion) ' +
                                        'WHERE r.dIdFecha = :Fecha GROUP BY r.sIdEmbarcacion order by e.sTipo, e.sIdEmbarcacion ');
        QryConsumoEmbarcaciones.Params.ParamByName('Fecha').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
        QryConsumoEmbarcaciones.Open;
        {$ENDREGION}

        {$REGION 'CONSULTA DE CONSUMOS POR EMBARCACION'}
        QryConsumos.SQL.Clear;
        QryConsumos.SQL.Add('SELECT re.iIdRecursoExistencia, re.lCombustible, re.sDescripcion, re.sMedida, r.dRecibido, r.dPrestamos, r.dConsumo AS dConsumoReal, ' +
                            'r.dExistenciaActual, r.dConsumoEquipos, r.dProduccion, ' +
                            '(select sum(dCantidad) from consumosdecombustibleporequipo where dIdFecha =:Fecha) as dConsumoTotalEquipos, '+
                            '(select ((sum(dAjuste)+sum(dProduccion)+sum(dRecibido)+sum(dTrasiego))-(sum(dConsumo)+sum(dConsumoEquipos)+sum(dPrestamos))) as Existencia '+
                            'from recursos where sContrato =:ContratoBarco and dIdFecha <:Fecha and sIdEmbarcacion = r.sIdEmbarcacion '+
                            'and iIdRecursoExistencia = r.iIdRecursoExistencia group by scontrato order by dIdFecha ) as Anterior, '+
                            '(select ((sum(dAjuste)+sum(dProduccion)+sum(dRecibido)+sum(dTrasiego))-(sum(dConsumo)+sum(dConsumoEquipos)+sum(dPrestamos))) as Existencia '+
                            'from recursos where sContrato =:ContratoBarco and dIdFecha <=:Fecha and sIdEmbarcacion =r.sIdEmbarcacion '+
                            'and iIdRecursoExistencia = r.iIdRecursoExistencia group by scontrato order by dIdFecha ) as Existencia '+
                            'FROM  recursos AS r '+
                            'INNER JOIN recursosdeexistencias AS re ON (re.iIdRecursoExistencia = r.iIdRecursoExistencia) ' +
                            'LEFT JOIN consumosdecombustibleporequipo AS ce ON (ce.dIdFecha = r.dIdFecha AND ce.sContrato = :Contrato) ' +
                            'WHERE 	r.sContrato =:ContratoBarco and r.dIdFecha = :Fecha AND r.sIdEmbarcacion = :Embarcacion GROUP BY re.iIdRecursoExistencia ');
        QryConsumos.ParamByName('ContratoBarco').AsString := global_contrato_barco;
        QryConsumos.ParamByName('Contrato').AsString      := global_contrato;
        QryConsumos.ParamByName('Embarcacion').AsString   := QryConsumoEmbarcaciones.FieldByName('sIdEmbarcacion').AsString;
        QryConsumos.ParamByName('Fecha').AsDateTime       := Reportediario.FieldByName('dIdFecha').AsDateTime;
        QryConsumos.Open;
        {$ENDREGION}

        {$REGION 'IMPRESIÓN DE REGISTROS'}
        if QryConsumos.RecordCount > 0 then
        begin
            indice := 1;
            while Not QryConsumos.Eof do
            begin
                dConsumoTotal := QryConsumos.FieldByName('dConsumoReal').AsFloat;
                dConsumoTotal := RoundTo(dConsumoTotal, -3);

                dExistenciaAnteriorAux := QryConsumos.FieldByName('Anterior').AsFloat;

                rxBalance.Append;
                rxBalance.FieldValues['sIdEmbarcacion'] := QryConsumoEmbarcaciones.FieldByName('sIdEmbarcacion').AsString;
                rxBalance.FieldValues['sEmbarcacion']   := QryConsumoEmbarcaciones.FieldByName('sDescripcion').AsString;
                rxBalance.FieldValues['sConcepto']      := QryConsumos.FieldByName('sDescripcion').AsString;
                rxBalance.FieldValues['sMedida']        := QryConsumos.FieldByName('sMedida').AsString;
                rxBalance.FieldValues['dExistenciaAnt'] := QryConsumos.FieldByName('Anterior').AsFloat;
                rxBalance.FieldValues['dConsumo']       := QryConsumos.FieldByName('dConsumoReal').AsFloat;
                rxBalance.FieldValues['dExistenciaAct'] := QryConsumos.FieldByName('Existencia').AsFloat;

                rxBalance.FieldValues['dRecepcion']     := QryConsumos.FieldByName('dRecibido').AsFloat;
                rxBalance.FieldValues['dProducido']     := QryConsumos.FieldByName('dProduccion').AsFloat;
                rxBalance.FieldValues['dTransferido']   := QryConsumos.FieldByName('dPrestamos').AsFloat;
                rxBalance.FieldValues['dConsumoOT']     := QryConsumos.FieldByName('dConsumoEquipos').AsFloat;
                rxBalance.Post;

                QryConsumos.Next;
            end;
        end;
        {$ENDREGION}

        {$REGION 'INSERCION DE DATOS'}
        QryConsumosDiesel.SQL.Clear;
        QryConsumosDiesel.SQL.Add('SELECT '+
                                  '  eq.sIdEquipo, '+
                                  '	eq.sDescripcion, '+
                                  '	eq.sMedida, '+
                                  '	ce.dCantidad, '+
                                  ' ce.sNumeroOrden, '+
                                  ' o.sIdFolio, '+
                                  ' ce.dTamanio, '+
                                  ' (select sNotaGeneral from notas_generales where sContrato =:Orden and dIdFecha =:Fecha and lAplicaConsumos = "si") as NotaGeneral, '+
                                  ' (select count(sNumeroOrden) from consumosdecombustibleporequipo where sContrato =:Orden and dIdFecha =:Fecha and sNumeroOrden = "vacio") as TotalVacios '+
                                  'FROM equipos  eq '+
                                  '	inner JOIN consumosdecombustibleporequipo AS ce '+
                                  '		ON (eq.sIdEquipo = ce.sIdEquipo AND ce.dIdFecha = :Fecha AND ce.sContrato =:Orden ) '+

                                  ' left join ordenesdetrabajo o on (o.sContrato = ce.sContrato and o.sNumeroOrden = ce.sNumeroOrden) '+
                                  'WHERE '+
                                  '     eq.sContrato = :ContratoBarco and lAplicadiesel = "Si" '+
                                  ' order by ce.sNumeroOrden, ce.iOrden');
        QryConsumosDiesel.ParamByName('Fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        QryConsumosDiesel.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
        QryConsumosDiesel.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
        QryConsumosDiesel.Open;
        {$ENDREGION}

        {Esta secccion es para mostrar la hoja vacia sino existen datos.}
        if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
        begin
            if rxBalance.RecordCount = 0 then
            begin
                rxBalance.Append;
                rxBalance.FieldValues['sIdEmbarcacion'] := '';
                rxBalance.Post;
            end;
        end;
    end;

    Td_balance.DataSet:= rxBalance;
    Td_balance.FieldAliases.Clear;
    Td_ImpBalance.DataSet:= rxBalance;
    Td_ImpBalance.FieldAliases.Clear;
    Td_balanceResumen.DataSet:= rxBalanceResumen;
    Td_balanceResumen.FieldAliases.Clear;
    Td_consumoEquipos.DataSet    := QryConsumosDiesel;
    Td_consumoEquipos.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_balance);
    Reporte.DataSets.Add(Td_ImpBalance);
    Reporte.DataSets.Add(Td_balanceResumen);
    Reporte.DataSets.Add(Td_consumoEquipos);

  Finally

  End;

end;

Procedure ReportePDF_ActividadesPorFolio(sFiltroFolio:string; ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
  QryInfoFolio,
  QryPartidas,
  QryDetallePartidas,
  QryConsultaAvanceAnterior,
  QryConsultaAvancesAcumulados,
  QryPersonal,
  QryEquipo,
  QryMateriales,
  QryFolios,
  QryPU,
  QryAnexos,
  QryTiemposAct     : TZQuery;

  Td_partidas,
  Td_ImpPartidas,
  Td_ClasificacionTiempo : TfrxDBDataset;
  dDiaSiguiente  : TDateTime;
  rxPartidas,
  rxTiemposAct   : TrxMemoryData;
  iTotalPersonal, indice, iTotalEsp, num : integer;
  lContinua      : boolean;
  QrAux:TzReadOnlyQuery;
  sIidDiario,
  siIdTarea,
  siIdActividad:String;
begin
    QrAux:=TzReadOnlyQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryConsultaAvancesAcumulados := TZQuery.Create(nil);
      QryConsultaAvancesAcumulados.Connection := Connection.zConnection;
      QryConsultaAvanceAnterior := TZQuery.Create(nil);
      QryConsultaAvanceAnterior.Connection := connection.zConnection;
      QryFolios := TZQuery.Create(nil);
      QryFolios.Connection := Connection.zConnection;
      QryPartidas := TZQuery.Create(nil);
      QryPartidas.Connection := Connection.zConnection;
      QryDetallePartidas := TZQuery.Create(nil);
      QryDetallePartidas.Connection := Connection.zConnection;
      QryInfoFolio := TZQuery.Create(nil);
      QryInfoFolio.Connection := Connection.zConnection;
      QryPersonal := TZQuery.Create(nil);
      QryPersonal.Connection := Connection.zConnection;
      QryEquipo := TZQuery.Create(nil);
      QryEquipo.Connection := Connection.zConnection;
      QryMateriales := TZQuery.Create(nil);
      QryMateriales.Connection := Connection.zConnection;
      QryPU := TZQuery.Create(nil);
      QryPU.Connection := Connection.zConnection;
      QryAnexos := TZQuery.Create(nil);
      QryAnexos.Connection := Connection.zConnection;
      QryTiemposAct := TZQuery.Create(nil);
      QryTiemposAct.Connection := Connection.zConnection;

      Td_partidas:= TfrxDBDataset.Create(nil);
      Td_partidas.UserName:='td_partidas';

      Td_ImpPartidas:= TfrxDBDataset.Create(nil);
      Td_ImpPartidas.UserName:='Td_ImpPartidas';

      QrAux.connection:=Connection.zconnection;
      rxPartidas := TrxMemoryData.Create(nil);
      rxPartidas.Active := False;
      rxPartidas.FieldDefs.Add('sTipo', ftString, 25, True);
      rxPartidas.FieldDefs.Add('sOT', ftString, 15, True);
      rxPartidas.FieldDefs.Add('sFolio', ftString, 80, True);
      rxPartidas.FieldDefs.Add('sPlataforma', ftString, 50, True);
      rxPartidas.FieldDefs.Add('mDescripcionFolio', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntFolio', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActFolio', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumFolio', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sNumeroActividad', ftString, 20, True);
      rxPartidas.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntPart', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActPart', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumPart', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('iIdDiario', ftInteger, 0, True);
      rxPartidas.FieldDefs.Add('sClasificacion', ftString, 10, True);
      rxPartidas.FieldDefs.Add('sHoraInicio', ftString, 5, True);
      rxPartidas.FieldDefs.Add('sHoraFin', ftString, 5, True);
      rxPartidas.FieldDefs.Add('mDescripcionHorario', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('sHoraInicioPer', ftString, 5, True);
      rxPartidas.FieldDefs.Add('sHoraFinPer', ftString, 5, True);
      rxPartidas.FieldDefs.Add('sPartidaPer', ftString, 20, True);
      rxPartidas.FieldDefs.Add('dCantidadPer', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dTotalPer', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sDescripcionPer', ftString, 250, True);
      rxPartidas.FieldDefs.Add('sHoraInicioEq', ftString, 5, True);
      rxPartidas.FieldDefs.Add('sHoraFinEq', ftString, 5, True);
      rxPartidas.FieldDefs.Add('sPartidaEq', ftString, 10, True);
      rxPartidas.FieldDefs.Add('sMedidaEq', ftString, 10, True);
      rxPartidas.FieldDefs.Add('dAjusteEq', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dCantidadEq', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dTotalEq', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sDescripcionEq', ftString, 350, True);
      rxPartidas.FieldDefs.Add('sMaterial', ftString, 25, True);
      rxPartidas.FieldDefs.Add('dCantidadMat', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dCantidadMatAnt', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sMedidaMat', ftString, 8, True);
      rxPartidas.FieldDefs.Add('sSuministra', ftString, 25, True);
      rxPartidas.FieldDefs.Add('mDescripcionMaterial', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('sNumeroActividadPU', ftString, 20, True);
      rxPartidas.FieldDefs.Add('dCantidadPU', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sMedidaPU', ftString, 10, True);
      rxPartidas.FieldDefs.Add('sAnexoPU', ftString, 25, True);
      rxPartidas.FieldDefs.Add('mDescripcionPU', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dRestaEspacio', ftFloat, 0, True);
      rxPartidas.Active := True;

      if (TImpresion=FtsActividades) or (TImpresion=FtsAll) then
      begin
          {$REGION 'FOLIOS REPORTADOS'}
          QryFolios.SQL.Clear;
          QryFolios.SQL.Add('SELECT ot.sContrato, ot.sNumeroOrden, ot.sIdFolio, ot.mDescripcion, p.sDescripcion as plataforma, cv.sIdConvenio as Convenio, cv.iGerencialInicio, cv.iGerencialFinal, ot.lAplicaJornada '+
                            'FROM ordenesdetrabajo AS ot ' +
                            ' inner join convenios cv on (cv.sContrato = ot.sContrato and ot.sNumeroOrden = cv.sNumeroOrden) '+
                            '	INNER JOIN rd_proyectos AS c ' +
                            '		ON (ot.sContrato=c.sContrato) ' +
                            '	INNER JOIN bitacoradeactividades AS ba ' +
                            '		ON (ba.sContrato=c.sContrato AND ba.sNumeroOrden=ot.sNumeroOrden) ' +
                            '	LEFT JOIN tiposdemovimiento AS tm ' +
                            '		ON (tm.sContrato= :ContratoBarco AND tm.sIdTipoMovimiento=ba.sIdTipoMovimiento AND tm.sClasificacion="Tarifa Diaria") ' +
                            'inner join plataformas  p on (p.sIdPlataforma = ot.sIdPlataforma) '+
                            'WHERE c.sContrato= :Orden AND ba.dIdFecha= :Fecha and ot.sNumeroOrden like :Folio ' +
                            'GROUP BY cv.sNumeroorden  order by ot.iOrden ');
          QryFolios.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
          QryFolios.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
          QryFolios.ParamByName('Folio').AsString         := sFiltroFolio;
          QryFolios.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
          QryFolios.Open;

          while Not QryFolios.Eof do
          begin
              {$REGION 'AVANCES DEL FOLIO'}
              {Avances anteriores}
              QryConsultaAvanceAnterior.SQL.Clear;
              QryConsultaAvanceAnterior.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', ReporteDiario.FieldByName('dIdFecha').AsDateTime)+'", :Orden, :Folio), 2) AS dAvanceAnterior;';
              QryConsultaAvanceAnterior.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
              QryConsultaAvanceAnterior.ParamByName('Folio').AsString := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryConsultaAvanceAnterior.Open;

              //Avances Acumulados
              dDiaSiguiente := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              dDiaSiguiente := IncDay(dDiaSiguiente);

              QryConsultaAvancesAcumulados.SQL.Clear;
              QryConsultaAvancesAcumulados.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 2) AS dAvanceAcumulado;';
              QryConsultaAvancesAcumulados.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
              QryConsultaAvancesAcumulados.ParamByName('Folio').AsString := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryConsultaAvancesAcumulados.Open;
              {$ENDREGION}

              {$REGION 'CONSULTA - PARTIDAS REPORTADAS'}
              QryPartidas.SQL.Clear;
              QryPartidas.SQL.Add('SELECT  a.sContrato, a.iIdDiario,	a.sNumeroActividad, o.dPonderado, a.sWbs, a.lOrdenaNormal, '+
                                  ' (SELECT   SUM(dAvance) ' +
                                  ' FROM bitacoradeactividades ' +
                                  ' WHERE ' +
                                  '   dIdFecha < a.dIdFecha ' +
                                  '   AND sIdTipoMovimiento = "E" ' +
                                  '   AND sWbs = a.sWbs ' +
                                  '   AND sContrato = a.sContrato ' +
                                  '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceAnterior_GeneralPartida, '+

                                  ' (SELECT  SUM(dAvance) ' +
                                  ' FROM bitacoradeactividades ' +
                                  ' WHERE ' +
                                  '   dIdFecha = a.dIdFecha ' +
                                  '   AND sIdTipoMovimiento = "E" ' +
                                  '   AND sWbs = a.sWbs ' +
                                  '   AND sContrato = a.sContrato ' +
                                  '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceActual_GeneralPartida, ' +

                                  '	CONCAT(a.sHoraInicio,"-",a.sHoraFinal)  AS Horario, ' +
                                  '	a.sIdClasificacion,	a.sHoraInicio, a.sHorafinal, ' +
                                  '	o.mdescripcion as sDescripcionActividad ' +
                                  'FROM bitacoradeactividades a ' +
                                  'INNER JOIN actividadesxorden o ' +
                                  '		ON (o.sContrato = a.sContrato AND o.sIdConvenio = a.sIdConvenio AND o.sNumeroOrden = a.sNumeroOrden AND a.sWbs = o.sWbs AND o.sNumeroActividad = a.sNumeroActividad AND o.sTipoActividad = "Actividad" and o.sTipoAnexo = "PT") ');

              if ReporteDiario.FieldByName('lOrdenaxHorario').AsString = 'No' then
              begin
                 QryPartidas.SQL.Add( 'WHERE a.sContrato = :Orden AND a.dIdFecha = :Fecha AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento = "E" and a.lImprime ="Si" ' +
                                 'GROUP BY a.sNumeroActividad '+
                                 'ORDER BY a.sContrato, o.iItemOrden, a.sNumeroActividad, a.sHoraInicio ');
              end
              else
              begin
                 QryPartidas.SQL.Add( 'WHERE a.sContrato = :Orden AND a.dIdFecha = :Fecha AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento <> "E" and a.lImprime ="Si" ' +
                                 'GROUP BY a.sNumeroActividad '+
                                 'ORDER BY a.sContrato, a.sHoraInicio, a.sNumeroActividad ');
              end;
              QryPartidas.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sOrden').AsString;
              QryPartidas.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              QryPartidas.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryPartidas.ParamByName('Turno').AsString    := ReporteDiario.FieldByName('sIdTurno').AsString;
              QryPartidas.Open;
              {$ENDREGION}

              while Not QryPartidas.Eof do
              begin
                  {Insertar Datos en RxPartidas}
                  rxPartidas.Append;
                  rxPartidas.FieldValues['sTipo']       := 'General';
                  rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                  rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                  rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                  rxPartidas.FieldValues['mDescripcionFolio'] := QryFolios.FieldValues['mDescripcion'];
                  rxPartidas.FieldValues['dAvanceAntFolio']   := QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat;
                  rxPartidas.FieldValues['dAvanceActFolio']   := QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat - QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat;
                  rxPartidas.FieldValues['dAvanceAcumFolio']  := QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat;
                  rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                  rxPartidas.FieldValues['mDescripcion']     := QryPartidas.FieldByName('sDescripcionActividad').AsString;
                  rxPartidas.FieldValues['dAvanceAntPart']   := QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida').AsFloat;
                  rxPartidas.FieldValues['dAvanceActPart']   := QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                  rxPartidas.FieldValues['dAvanceAcumPart']  := QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida').AsFloat + QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                  rxPartidas.Post;

                  {$REGION 'CONSULTA - DETALLE DE PARTIDAS'}
                  QryDetallePartidas.SQL.Clear;
                  QryDetallePartidas.SQL.Add( 'SELECT b.dIdFecha, b.sIdClasificacion, b.sHoraInicio, b.sHoraFinal, b.iIdDiario, b.sNumeroActividad, b.iIdTarea,b.iIdActividad,b.iHermano, ao.iItemOrden, b.sWbs, '+
                                              '	( SELECT (ifnull(sum(ba.dAvance), 0)) ' +
                                              '		FROM ' +
                                              '			bitacoradeactividades AS ba ' +
                                              '		WHERE ba.sContrato = b.sContrato ' +
                                              '	 AND ba.sNumeroOrden = b.sNumeroOrden AND ba.sIdTipoMovimiento = b.sIdTipoMovimiento  AND ba.swbs = b.swbs ' +
                                              'and sNumeroActividad = b.sNumeroActividad AND (didfecha < b.didfecha OR (didfecha = b.didfecha AND cast(sHoraInicio AS Time) < cast(b.sHoraInicio AS Time)))  group by sContrato ) as dAvanceAnterior, '+
                                              '(select round(sum(dAvance),2) as actual from bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                                              'and sNumeroActividad = b.sNumeroActividad and ( dIdfecha < b.didfecha OR (dIdfecha <= b.didfecha AND cast(sHoraFinal AS Time) <= cast(b.sHoraFinal AS Time)) )  group by sContrato ) as dAvance, '+
                                              '	b.dAvance, b.mDescripcion AS descAct, b.sTipoObra, b.dCantidadAjuste, b.dCantidadAjusteNext, b.dCantidadAjusteNext2, b.dRestaEspacio ' +
                                              'FROM ' +
                                              '	bitacoradeactividades b ' +
                                              'INNER JOIN tiposdemovimiento tm ON ( ' +
                                              '	tm.sContrato = :ContratoBarco ' +
                                              '	AND tm.sIdTipoMovimiento = b.sIdClasificacion ) ' +
                                              'INNER JOIN actividadesxorden ao ON ( ' +
                                              '	ao.sContrato = b.sContrato and ao.sIdConvenio =b.sIdConvenio and ao.sNumeroOrden = b.sNumeroOrden and ' +
                                              '	ao.sWbs = b.sWbs and ao.sTipoActividad = "Actividad" ) ' +
                                              ' inner join tipos_actividades ta on(ta.sIdTipo = b.sTipoObra) '+
                                              'WHERE	b.sContrato = :Orden ' +
                                              'AND b.sNumeroOrden = :Folio ' +
                                              'AND b.sIdTipoMovimiento = "ED" ' +
                                              'AND b.sNumeroActividad = :Actividad ' +
                                              'AND dIdFecha = :Fecha ' +
                                              'and ((b.iHermano=-1) or (b.iHermano=b.iIdActividad)) AND lImprime = "Si" '+
                                              ' group by b.sNumeroActividad, ta.iOrden, b.sHoraInicio, b.iIdDiario ');
                  if QryPartidas.FieldByName('lOrdenaNormal').AsString = 'Si' then
                     QryDetallePartidas.SQL.Add(' ORDER BY b.didFecha, ao.iItemOrden, Time(b.sHoraInicio)')
                  else
                     QryDetallePartidas.SQL.Add(' ORDER BY b.didFecha, ta.iOrden, ao.iItemOrden, Time(b.sHoraInicio)');
                  QryDetallePartidas.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
                  QryDetallePartidas.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
                  QryDetallePartidas.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                  QryDetallePartidas.ParamByName('Folio').AsString         := QryFolios.FieldByName('sNumeroOrden').AsString;
                  QryDetallePartidas.ParamByName('Actividad').AsString     := QryPartidas.FieldByName('sNumeroActividad').AsString;
                  QryDetallePartidas.Open;
                  {$ENDREGION}

                  QryPersonal.Active := False;
                  QryEquipo.Active   := False;

                  {$REGION 'INSERCIÓN DE DATOS'}
                  while Not QryDetallePartidas.Eof do
                  begin

                      if QryDetallePartidas.FieldByName('dCantidadAjuste').AsFloat > 0 then
                      begin
                          iTotalEsp :=  QryDetallePartidas.FieldByName('dCantidadAjuste').AsInteger;
                          for num := 1 to iTotalEsp do
                          begin
                              rxPartidas.Append;
                              rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                              rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                              rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                              rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                              rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                              rxPartidas.Post;
                          end;
                      end;

                      if QryDetallePartidas.FieldByName('dCantidadAjuste').AsFloat < 0 then
                      begin
                          iTotalEsp :=  QryDetallePartidas.FieldByName('dCantidadAjuste').AsInteger;
                          for num := iTotalEsp + 1 to 0  do
                          begin
                              rxPartidas.Delete;
                          end;
                      end;

                      if QryPersonal.Active then
                      begin
                          if (QryPersonal.RecordCount > 0) and (QryEquipo.RecordCount > 0) then
                          begin
                              if QryPersonal.RecordCount < QryEquipo.RecordCount then
                              begin
                                  rxPartidas.Append;
                                  rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                                  rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                                  rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                                  rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                                  rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                                  rxPartidas.Post;
                              end;
                          end;
                      end;

//                      rxPartidas.Append;
//                      rxPartidas.FieldValues['sTipo']       := 'TituloAvances';
//                      rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
//                      rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
//                      rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
//                      rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
//                      rxPartidas.Post;

                      if QryPersonal.Active then
                      begin
                          if (QryPersonal.RecordCount > 0) and (QryEquipo.RecordCount > 0) then
                          begin
                              if QryPersonal.RecordCount >= QryEquipo.RecordCount then
                              begin
                                  rxPartidas.Append;
                                  rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                                  rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                                  rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                                  rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                                  rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                                  rxPartidas.Post;
                              end;
                          end;
                      end;

                      if rxPartidas.FieldValues['sTipo'] <> 'TituloHorario' then
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloHorario';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString ;
                          rxPartidas.FieldValues['sHoraInicio']  := QryDetallePartidas.FieldByName('sHoraInicio').AsString;
                          rxPartidas.FieldValues['mDescripcionHorario']  := QryDetallePartidas.FieldByName('descAct').AsString;
                          rxPartidas.FieldValues['dRestaEspacio']    := QryDetallePartidas.FieldByName('dRestaEspacio').AsFloat;

                          rxPartidas.FieldValues['sClasificacion']   := QryDetallePartidas.FieldByName('sIdClasificacion').AsString ;
                          rxPartidas.FieldValues['sHoraInicio']  := QryDetallePartidas.FieldByName('sHoraInicio').AsString;
                          rxPartidas.FieldValues['sHoraFin']     := QryDetallePartidas.FieldByName('sHoraFinal').AsString;

                          rxPartidas.FieldValues['dAvanceAntPart']   := QryDetallePartidas.FieldByName('dAvanceAnterior').AsFloat;
                          rxPartidas.FieldValues['dAvanceActPart']   := QryDetallePartidas.FieldByName('dAvance').AsFloat - QryDetallePartidas.FieldByName('dAvanceAnterior').AsFloat;
                          rxPartidas.FieldValues['dAvanceAcumPart']  := QryDetallePartidas.FieldByName('dAvance').AsFloat;

                          rxPartidas.FieldValues['dRestaEspacio']    := QryDetallePartidas.FieldByName('dRestaEspacio').AsFloat;
                          rxPartidas.Post;
                      end;

                      if QryDetallePartidas.FieldByName('iHermano').AsInteger=-1 then
                      begin

                      end
                      else
                      begin
                        QrAux.active:=False;
                        QrAux.sql.text:='select * from bitacoradeactividades where scontrato=:Orden and '+
                                        'didfecha=:fecha and sNumeroOrden=:Folio and sIdTipoMovimiento = "ED" and ' +
                                        'sNumeroActividad = :Actividad and iHermano=:IdVinculo '+
                                        'group by iIdTarea,iIdActividad ' +
                                        'ORDER BY Time(sHoraInicio) ';
                        QrAux.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
                        QrAux.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                        QrAux.ParamByName('Folio').AsString         := QryFolios.FieldByName('sNumeroOrden').AsString;
                        QrAux.ParamByName('Actividad').AsString     := QryPartidas.FieldByName('sNumeroActividad').AsString;
                        QrAux.ParamByName('IdVinculo').AsInteger     := QryDetallePartidas.FieldByName('iHermano').AsInteger;
                        QrAux.open;

                        rxPartidas.Append;
                        rxPartidas.FieldValues['sTipo']       := 'DatosHorario';
                        rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                        rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                        rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                        rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                        rxPartidas.FieldValues['sClasificacion']   := QryDetallePartidas.FieldByName('sIdClasificacion').AsString ;
                        rxPartidas.FieldValues['sHoraInicio']  := QrAux.FieldByName('sHoraInicio').AsString;
                        rxPartidas.FieldValues['mDescripcionHorario']  := QryDetallePartidas.FieldByName('descAct').AsString;

                        rxPartidas.FieldValues['dAvanceAntPart']   := QryDetallePartidas.FieldByName('dAvanceAnterior').AsFloat;
                        rxPartidas.FieldValues['dAvanceActPart']   := QryDetallePartidas.FieldByName('dAvance').AsFloat - QryDetallePartidas.FieldByName('dAvanceAnterior').AsFloat;
                        rxPartidas.FieldValues['dAvanceAcumPart']  := QryDetallePartidas.FieldByName('dAvance').AsFloat;

                        rxPartidas.FieldValues['dRestaEspacio']    := QryDetallePartidas.FieldByName('dRestaEspacio').AsFloat;
                        sIidDiario:='';
                        siIdTarea:='';
                        siIdActividad:='';
                        while not QrAux.eof do
                        begin
                          if sIidDiario='' then
                            sIidDiario:=QrAux.FieldByName('iIdDiario').AsString
                          else
                            sIidDiario:= sIidDiario + ',' + QrAux.FieldByName('iIdDiario').AsString;

                          if siIdTarea='' then
                            siIdTarea:=QrAux.FieldByName('iIdTarea').AsString
                          else
                            siIdTarea:= siIdTarea + ',' + QrAux.FieldByName('iIdTarea').AsString;

                          if siIdActividad='' then
                            siIdActividad:=QrAux.FieldByName('iIdActividad').AsString
                          else
                            siIdActividad:= siIdActividad + ',' + QrAux.FieldByName('iIdActividad').AsString;

                          QrAux.Next;
                        end;
                        rxPartidas.FieldValues['sHoraFin']     := QrAux.FieldByName('sHoraFinal').AsString;
                        rxPartidas.Post;

                      end;

                      {$REGION 'MATERIAL X PARTIDA'}
                      {Ahora insertamos el material..}
                      QryMateriales.SQL.Clear;
                      QryMateriales.SQL.Add('select m.sIdMaterial, sum(m.dCantidad) as dCantidad, aa.sMedida, aa.mDescripcion, '+
                                  '(select sum(m1.dCantidad) as cantidad from bitacorademateriales m1 '+
                                  'where m1.sContrato = m.sContrato and m1.sNumeroOrden = m.sNumeroOrden and m1.dIdFecha < m.dIdFecha and m1.sIdMaterial = m.sIdMaterial) as dCantidadAntDia, '+
                                  '(select sum(m1.dCantidad) as cantidad from bitacorademateriales m1  '+
                                  'where m1.sContrato = m.sContrato and m1.sNumeroOrden = m.sNumeroOrden and m1.dIdFecha = m.dIdFecha and m1.sIdMaterial = m.sIdMaterial and m1.iItemOrden <:Item ) as dCantidadAnt, '+
                                  '(select sum(m1.dCantidad) as cantidad from bitacorademateriales m1 '+
                                  'where m1.sContrato = m.sContrato and m1.sNumeroOrden = m.sNumeroOrden and m1.dIdFecha = m.dIdFecha and m1.sIdMaterial =m.sIdMaterial and m1.sWbs =:Wbs and m1.sHoraInicio <:Inicio  ) as dCantidadAntPart  '+
                                  'from bitacorademateriales m '+
                                  'inner join actividadesxanexo aa on (aa.scontrato =:Contrato and aa.sNumeroActividad =m.sIdMaterial and aa.sTipoActividad = "Actividad") '+
                                  'where m.sContrato =:Orden and m.dIdFecha =:Fecha and m.iIdDiario = :Id '+
                                  'group by m.sIdMaterial order by aa.iItemOrden');
                      QryMateriales.ParamByName('Fecha').AsDateTime   := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                      QryMateriales.ParamByName('Orden').AsString     := ReporteDiario.FieldByName('sOrden').AsString;
                      QryMateriales.ParamByName('Id').AsInteger       := QryDetallePartidas.FieldByName('iIdDiario').AsInteger;
                      QryMateriales.ParamByName('Contrato').AsString  := global_Contrato_Barco;
                      QryMateriales.ParamByName('Inicio').AsString    := QryDetallePartidas.FieldByName('sHoraInicio').AsString;
                      QryMateriales.ParamByName('Item').AsString      := QryDetallePartidas.FieldByName('iItemOrden').AsString;
                      QryMateriales.ParamByName('Wbs').AsString       := QryDetallePartidas.FieldByName('sWbs').AsString;
                      QryMateriales.Open;

                      if QryMateriales.RecordCount > 0 then
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.Post;

                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloMaterial';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.Post;
                      end;

                      {M A T E R I A L...}
                      while not QryMateriales.Eof do
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'DatosMaterial';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.FieldValues['sMaterial']    := QryMateriales.FieldByName('sIdMaterial').AsString;
                          rxPartidas.FieldValues['dCantidadMat'] := QryMateriales.FieldByName('dCantidad').AsFloat;
                          rxPartidas.FieldValues['sMedidaMat']   := QryMateriales.FieldByName('sMedida').AsString;
                          rxPartidas.FieldValues['dCantidadMatAnt']:= (QryMateriales.FieldByName('dCantidadAnt').AsFloat + QryMateriales.FieldByName('dCantidadAntDia').AsFloat + QryMateriales.FieldByName('dCantidadAntPart').AsFloat );
                          rxPartidas.FieldValues['mDescripcionMaterial']  := QryMateriales.FieldValues['mDescripcion'];
                          rxPartidas.Post;

                          QryMateriales.Next;
                      end;
                      {$ENDREGION}

                      {$REGION 'PERSONAL X HORARIOS'}
                      {Ahora insertamos el personal..}
                      QryPersonal.SQL.Clear;
                      if QryDetallePartidas.FieldByName('iHermano').AsInteger=-1 then
                      begin
                        QryPersonal.SQL.Add('select bp.*, sum( bp.dCantidad ) as Cantidad, sum(bp.dCantHH) as dCantHHG from bitacoradepersonal bp '+
                                            ' inner join tipos_actividades ta on (ta.sIdTipo = bp.sTipoObra ) '+
                                            'where bp.sContrato =:Orden and bp.dIdFecha =:fecha and bp.sNumeroOrden =:Folio and bp.sNumeroActividad =:Actividad and bp.iIdDiario =:Diario and bp.sHoraInicio =:sInicio and bp.sTipoObra =:sTipo and bp.lImprime = "Si" and bp.dCantHH > 0 '+
                                            'group by ta.sAgrupaRd, bp.sHoraInicioG, bp.sIdPersonal, bp.iIdDiario order by bp.iItemOrden ');
                        QryPersonal.ParamByName('sInicio').AsString  := QryDetallePartidas.FieldValues['sHoraInicio'];
                        QryPersonal.ParamByName('sTipo').AsString    := QryDetallePartidas.FieldValues['sTipoObra'];

                      end
                      else
                      begin
                        QryPersonal.SQL.Add('select *, sum( dCantidad ) as Cantidad, sum(dCantHH) as dCantHHG from bitacoradepersonal where sContrato =:Orden '+
                                            'and dIdFecha =:fecha and sNumeroActividad =:Actividad  and bp.iIdDiario =:Diario and '+
                                            'iIdTarea in ('+siIdTarea+') and iIdActividad in ('+siIdActividad+') and lImprime = "Si" '+
                                            'group by sHoraInicioG, sHoraFinalG, sIdPersonal, bp.iIdDiario order by iItemOrden,time(sHoraInicio)');

                      end;
                      QryPersonal.ParamByName('Folio').AsString     := QryFolios.FieldByName('sNumeroOrden').AsString;
                      QryPersonal.ParamByName('Fecha').AsDateTime   := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                      QryPersonal.ParamByName('Orden').AsString     := ReporteDiario.FieldByName('sOrden').AsString;
                      QryPersonal.ParamByName('Actividad').AsString := QryDetallePartidas.FieldByName('sNumeroActividad').AsString;
                      QryPersonal.ParamByName('Diario').AsInteger   := QryDetallePartidas.FieldByName('iIddiario').AsInteger;

                      QryPersonal.Open;

                      rxPartidas.Append;
                      rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                      rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                      rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                      rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                      rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString ;
                      rxPartidas.Post;

                      if QryDetallePartidas.FieldByName('dCantidadAjusteNext').AsFloat > 0 then
                      begin
                          iTotalEsp :=  QryDetallePartidas.FieldByName('dCantidadAjusteNext').AsInteger;
                          for num := 1 to iTotalEsp do
                          begin
                              rxPartidas.Append;
                              rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                              rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                              rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                              rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                              rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                              rxPartidas.Post;
                          end;
                      end;

                      if QryDetallePartidas.FieldByName('dCantidadAjusteNext').AsFloat < 0 then
                      begin
                          iTotalEsp :=  QryDetallePartidas.FieldByName('dCantidadAjusteNext').AsInteger;
                          for num := iTotalEsp + 1 to 0  do
                          begin
                              rxPartidas.Delete;
                          end;
                      end;


                      if QryPersonal.RecordCount > 0 then
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloPersonal';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.Post;

                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloDatosPersonal';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString ;
                          rxPartidas.Post;
                      end;

                      {P E R S O N A L...}
                      while not QryPersonal.Eof do
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'DatosPersonal';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.FieldValues['sHoraInicioPer']   := QryPersonal.FieldByName('sHoraInicioG').AsString;
                          rxPartidas.FieldValues['sHoraFinPer']      := QryPersonal.FieldByName('sHoraFinalG').AsString;
                          rxPartidas.FieldValues['sPartidaPer']      := QryPersonal.FieldByName('sIdPersonal').AsString;
                          rxPartidas.FieldValues['dCantidadPer']     := QryPersonal.FieldByName('Cantidad').AsFloat;
                          if QryFolios.FieldByName('lAplicaJornada').AsString = 'Si' then
                             rxPartidas.FieldValues['dTotalPer']        := QryPersonal.FieldByName('dCantHHG').AsFloat
                          else
                             rxPartidas.FieldValues['dTotalPer']        := QryPersonal.FieldByName('dCantidad').AsFloat;
                          rxPartidas.FieldValues['sDescripcionPer']  := QryPersonal.FieldByName('sDescripcion').AsString;
                          rxPartidas.Post;
                          QryPersonal.Next;
                      end;
                      {$ENDREGION}

                      {$REGION 'EQUIPO X HORARIOS'}
                      {Ahora insertamos el equipo..}
                      QryEquipo.SQL.Clear;
                      if QryDetallePartidas.FieldByName('iHermano').AsInteger=-1 then
                      begin
                        QryEquipo.SQL.Add('select be.*, sum( be.dCantidad ) as Cantidad, sum(be.dCantHH) as dCantHHG, sum(be.dAjuste) as dCantAjuste, e.sMedida from bitacoradeequipos be '+
                                          ' inner join tipos_actividades ta on (ta.sIdTipo = be.sTipoObra ) '+
                                          ' inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo =be.sIdEquipo )'+
                                          'where be.sContrato =:Orden and be.dIdFecha =:fecha and be.sNumeroOrden =:Folio and be.sNumeroActividad =:Actividad and be.iIdDiario =:Diario and be.sHoraInicio =:sInicio and be.sTipoObra =:sTipo and be.lImprime ="Si" and be.dCantHH > 0 '+
                                          'group by ta.sAgrupaRd, be.sHoraInicioG, be.sIdEquipo, be.iIdDiario order by be.iItemOrden ');
                        QryEquipo.ParamByName('sInicio').AsString  := QryDetallePartidas.FieldValues['sHoraInicio'];
                        QryEquipo.ParamByName('sTipo').AsString    := QryDetallePartidas.FieldValues['sTipoObra'];
                      end
                      else
                      begin
                        QryEquipo.SQL.Add('select *, sum(dCantHH) as dCantHHG, e.sMedida, sum(be.dAjuste) as dCantAjuste from bitacoradeequipos '+
                                          ' inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo =be.sIdEquipo )'+
                                          'where sContrato =:Orden '+
                                          'and dIdFecha =:fecha and sNumeroActividad =:Actividad and be.iIdDiario =:Diario and '+
                                          'iIdTarea in ('+siIdTarea+') and iIdActividad in ('+siIdActividad+') and lImprime = "Si" '+
                                          'group by sHoraInicioG, sIdEquipo, be.iIdDiario order by iItemOrden,time(sHoraInicio)');
                      end;
                      QryEquipo.ParamByName('ContratoBarco').AsString  := global_contrato_barco;
                      QryEquipo.ParamByName('Folio').AsString     := QryFolios.FieldByName('sNumeroOrden').AsString;
                      QryEquipo.ParamByName('Fecha').AsDateTime   := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                      QryEquipo.ParamByName('Orden').AsString     := ReporteDiario.FieldByName('sOrden').AsString;
                      QryEquipo.ParamByName('Actividad').AsString := QryDetallePartidas.FieldByName('sNumeroActividad').AsString;
                      QryEquipo.ParamByName('Diario').AsInteger   := QryDetallePartidas.FieldByName('iIdDiario').AsInteger;
                      QryEquipo.Open;

                      {Verificamos cuanto personal se inserto para retroceder el memory.}
                      iTotalPersonal := QryPersonal.RecordCount;

                      if (QryEquipo.RecordCount > 0) and (iTotalPersonal = 0) then
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloPersonal';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sMedidaEq']        := QryEquipo.FieldByName('sMedida').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.Post;

                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloDatosPersonal';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sMedidaEq']        := QryEquipo.FieldByName('sMedida').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.Post;
                      end;

                      for indice := 1 to iTotalPersonal - 1 do
                          rxPartidas.Prior;

                      indice := 1;
                      lContinua := True;
                      {E Q U I P O...}
                      while not QryEquipo.Eof do
                      begin
                          if iTotalPersonal > 0 then
                          begin
                              if indice <= iTotalPersonal then
                              begin
                                  rxPartidas.Edit;
                                  rxPartidas.FieldValues['sHoraInicioEq']   := QryEquipo.FieldByName('sHoraInicioG').AsString;
                                  rxPartidas.FieldValues['sHoraFinEq']      := QryEquipo.FieldByName('sHoraFinalG').AsString;
                                  rxPartidas.FieldValues['sPartidaEq']      := QryEquipo.FieldByName('sIdEquipo').AsString;
                                  rxPartidas.FieldValues['sMedidaEq']       := QryEquipo.FieldByName('sMedida').AsString;
                                  rxPartidas.FieldValues['dCantidadEq']     := QryEquipo.FieldByName('dCantidad').AsFloat;
                                  if QryFolios.FieldByName('lAplicaJornada').AsString = 'Si' then
                                     rxPartidas.FieldValues['dTotalEq']     := QryEquipo.FieldByName('dCantHHG').AsFloat
                                  else
                                     rxPartidas.FieldValues['dTotalEq']     := QryEquipo.FieldByName('dCantidad').AsFloat;
                                  rxPartidas.FieldValues['dAjusteEq']       := QryEquipo.FieldByName('dCantAjuste').AsFloat;
                                  rxPartidas.FieldValues['sDescripcionEq']  := QryEquipo.FieldByName('sDescripcion').AsString;
                                  rxPartidas.Post;
                                  rxPartidas.Next;
                                  inc(indice);
                                  lContinua := False;
                              end
                              else
                                  lContinua := True;
                          end;

                          if lContinua then
                          begin
                              rxPartidas.Append;
                              rxPartidas.FieldValues['sTipo']       := 'DatosPersonal';
                              rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                              rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                              rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                              rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                              rxPartidas.FieldValues['sHoraInicioEq']   := QryEquipo.FieldByName('sHoraInicioG').AsString;
                              rxPartidas.FieldValues['sHoraFinEq']      := QryEquipo.FieldByName('sHoraFinalG').AsString;
                              rxPartidas.FieldValues['sPartidaEq']      := QryEquipo.FieldByName('sIdEquipo').AsString;
                              rxPartidas.FieldValues['sMedidaEq']       := QryEquipo.FieldByName('sMedida').AsString;
                              rxPartidas.FieldValues['dCantidadEq']     := QryEquipo.FieldByName('dCantidad').AsFloat;
                              if QryFolios.FieldByName('lAplicaJornada').AsString = 'Si' then
                                 rxPartidas.FieldValues['dTotalEq']     := QryEquipo.FieldByName('dCantHHG').AsFloat
                              else
                                 rxPartidas.FieldValues['dTotalEq']     := QryEquipo.FieldByName('dCantidad').AsFloat;
                              rxPartidas.FieldValues['dAjusteEq']       := QryEquipo.FieldByName('dCantAjuste').AsFloat;
                              rxPartidas.FieldValues['sDescripcionEq']  := QryEquipo.FieldByName('sDescripcion').AsString;
                              rxPartidas.Post;
                          end;
                          QryEquipo.Next;
                      end;

                      if QryEquipo.RecordCount > 0 then
                      begin
                          rxPartidas.Edit;
                          rxPartidas.FieldByName('sSuministra').AsString := 'Oculta';
                          rxPartidas.Post;
                      end;
                      {$ENDREGION}

                      {$ENDREGION}
                      QryDetallePartidas.Next;
                  end;

                  rxPartidas.Append;
                  rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                  rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                  rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                  rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                  rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                  rxPartidas.Post;

                  if QryDetallePartidas.FieldByName('dCantidadAjusteNext2').AsFloat > 0 then
                  begin
                      iTotalEsp :=  QryDetallePartidas.FieldByName('dCantidadAjusteNext2').AsInteger;
                      for num := 1 to iTotalEsp do
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.Post;
                      end;
                  end;

                  if QryDetallePartidas.FieldByName('dCantidadAjusteNext2').AsFloat < 0 then
                  begin
                      iTotalEsp :=  QryDetallePartidas.FieldByName('dCantidadAjusteNext2').AsInteger;
                      for num := iTotalEsp + 1 to 0  do
                      begin
                          rxPartidas.Delete;
                      end;
                  end;

                  {$REGION 'PARTIDA DE PU X ACTIVIAD'}

                  QryAnexos.Active := False;
                  QryAnexos.SQL.Clear;
                  QryAnexos.SQL.Add('select * from anexos where (sTipo = "Anexo" or sTipo = "AnexoEXT" or sTipo = "AnexoC1" or sTipo = "AnexoC2" or sTipo = "AnexoC3" or sTipo ="AnexoC4") order by iOrden ');
                  QryAnexos.Open;

                  while not QryAnexos.Eof do
                  begin
                      {Ahora insertamos el pu..}
                      QryPU.SQL.Clear;
                      QryPU.SQL.Add('select b.sNumeroActividad, b.dCantidad, a.sMedida, a.sAnexo, b.mDescripcion '+
                                    'from bitacoradeactividades b '+
                                    'inner join actividadesxorden a on (a.sContrato = b.sContrato and a.sIdConvenio = b.sIdConvenio and a.sNumeroOrden  = a.sNumeroOrden '+
                                    'and a.sTipoAnexo= "CC" and a.sNumeroActividad = b.sNumeroActividad and a.sWbs = b.sWbs and a.sTipoActividad = "Actividad" and sAnexo =:Anexo) '+
                                    'where b.sContrato = :Contrato and b.sNumeroOrden = :Orden and b.dIdFecha = :Fecha and sIdTipoMovimiento = "E" and b.sWbs_ADM = :Wbs ');
                      QryPU.ParamByName('Fecha').AsDateTime   := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                      QryPU.ParamByName('Contrato').AsString  := ReporteDiario.FieldByName('sOrden').AsString;
                      QryPU.ParamByName('Wbs').AsString       := QryPartidas.FieldByName('sWbs').AsString;
                      QryPU.ParamByName('Anexo').AsString     := QryAnexos.FieldByName('sAnexo').AsString;
                      QryPU.Open;

                      if QryPU.RecordCount > 0 then
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloPUAnexo';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.FieldValues['mDescripcionPU']   := QryAnexos.FieldValues['sDescripcion'];
                          rxPartidas.Post;

                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloPU';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.Post;
                      end;

                      {P A R T I D A  D E  P U...}
                      while not QryPU.Eof do
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'DatosPU';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad']   := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.FieldValues['sNumeroActividadPU'] := QryPU.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.FieldValues['dCantidadPU'] := QryPU.FieldByName('dCantidad').AsFloat;
                          rxPartidas.FieldValues['sMedidaPU']   := QryPU.FieldByName('sMedida').AsString;
                          rxPartidas.FieldValues['sAnexoPU']    := QryPU.FieldByName('sAnexo').AsString;
                          rxPartidas.FieldValues['mDescripcionPU']  := QryPU.FieldValues['mDescripcion'];
                          rxPartidas.Post;

                          QryPU.Next;
                      end;

                      if QryPU.RecordCount > 0 then
                      begin
                          rxPartidas.Append;
                          rxPartidas.FieldValues['sTipo']       := 'TituloEspacio';
                          rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                          rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                          rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                          rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                          rxPartidas.Post;
                      end;
                      QryAnexos.Next;
                  end;

                  {$ENDREGION}
                 QryPartidas.Next;
              end;

              QryFolios.Next;
          end;


          {Esta secccion es para mostrar la hoja vacia sino existen datos.}
          if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
          begin
             if QryFolios.RecordCount = 0 then
             begin
                 rxPartidas.Append;
                 rxPartidas.FieldValues['sOT'] := '';
                 rxPartidas.Post;
             end;
          end;
      end;

      {$ENDREGION}
      Td_Partidas.DataSet:= rxPartidas;
      Td_Partidas.FieldAliases.Clear;

      Td_ImpPartidas.DataSet:= rxPartidas;
      Td_ImpPartidas.FieldAliases.Clear;


      Reporte.DataSets.Add(Td_partidas);
      Reporte.DataSets.Add(Td_ImpPartidas);

    Finally
      QrAux.destroy;
    End;

end;

Procedure ReportePDF_NotasGenerales(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
  QryNotas: TZQuery;
  QryNotasGenerales: TZQuery;
  QryFoliosConNotas: TZQuery;
  QryTiemposAct: TZQuery;
  QryArribosMov: TZQuery;
  Td_NotasGrales,
  Td_ImpNotasGrales,
  Td_ClasificacionTiempo : TfrxDBDataset;
  Td_ArribosMov : TfrxDBDataset;
  rxNotas, rxTiemposAct          : TrxMemoryData;
  indice : integer;
  sGrupo : string;
begin

  {$REGION 'NOTAS'}
  Try

    QryNotas := TZQuery.Create(nil);
    QryNotas.Connection := Connection.zConnection;
    QryFoliosConNotas := TZQuery.Create(nil);
    QryFoliosConNotas.Connection := Connection.zConnection;
    QryNotasGenerales := TZQuery.Create(nil);
    QryNotasGenerales.Connection := Connection.zConnection;
    QryTiemposAct := TZQuery.Create(nil);
    QryTiemposAct.Connection := Connection.zConnection;
    QryArribosMov := TZQuery.Create(nil);
    QryArribosMov.Connection := Connection.zConnection;

    Td_NotasGrales:= TfrxDBDataset.Create(nil);
    Td_NotasGrales.UserName:='Td_NotasGrales';

    Td_ImpNotasGrales:= TfrxDBDataset.Create(nil);
    Td_ImpNotasGrales.UserName:='Td_ImpNotasGrales';

    Td_ClasificacionTiempo:= TfrxDBDataset.Create(nil);
    Td_ClasificacionTiempo.UserName:='Td_ClasificacionTiempo';

    Td_ArribosMov:= TfrxDBDataset.Create(nil);
    Td_ArribosMov.UserName:='Td_ArribosMov';

    rxNotas := TrxMemoryData.Create(nil);
    rxNotas.Active := False;
    rxNotas.FieldDefs.Add('sNotaGeneral', ftMemo, 0, True);
    rxNotas.FieldDefs.Add('lJustifica', ftString, 2, False);
    rxNotas.Active := True;
    rxNotas.Append;
    rxNotas.FieldValues['sNotaGeneral'] := '';
    rxNotas.Post;

    rxTiemposAct := TrxMemoryData.Create(nil);
    rxTiemposAct.Active := False;
    rxTiemposAct.FieldDefs.Add('sGrupo', ftString, 30, True);
    rxTiemposAct.FieldDefs.Add('sContrato', ftString, 15, True);
    rxTiemposAct.FieldDefs.Add('sTiempo1', ftString, 10, True);
    rxTiemposAct.FieldDefs.Add('sDescripcion1', ftString, 100, True);
    rxTiemposAct.FieldDefs.Add('sTiempo2', ftString, 10, True);
    rxTiemposAct.FieldDefs.Add('sDescripcion2', ftString, 100, True);
    rxTiemposAct.Active := True;

    if (TImpresion=FtsNGenerales) or (TImpresion=FtsAll) then
    begin
        QryNotasGenerales.SQL.Clear;
        QryNotasGenerales.SQL.Add('SELECT * FROM notas_generales WHERE sContrato = :Orden AND dIdFecha = :Fecha and eAplicaResumenPersonal = "No" and lAplicaConsumos ="No" ORDER BY iOrden ASC');
        QryNotasGenerales.ParamByName('Orden').AsString  := ReporteDiario.FieldByName('sOrden').AsString;
        QryNotasGenerales.ParamByName('Fecha').AsDate    := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        QryNotasGenerales.Open;

        while not QryNotasGenerales.Eof do
        begin
            rxNotas.Append;
            rxNotas.FieldValues['lJustifica']   := QryNotasGenerales.FieldByName('lJustifica').AsString;
            rxNotas.FieldValues['sNotaGeneral'] := 'NOTA '+ IntToStr(QryNotasGenerales.RecNo) +': '+ QryNotasGenerales.FieldByName('sNotaGeneral').AsWideString;
            rxNotas.Post;
            QryNotasGenerales.Next;
        end;

        {Recuadro de Clasificacion para tiempo de actividades}
          QryTiemposAct.SQL.Clear;
          QryTiemposAct.SQL.Add('select * from tiposdemovimiento where sContrato =:Orden and (sClasificacion = "Tiempo de Actividades" OR sClasificacion = "Movimiento de Barco") and lGrafica = "Si" order by sClasificacion, iOrden' );
          if connection.uconfiguracion.FieldByName('sIdEmbarcacion').AsString ='*' then
             QryTiemposAct.ParamByName('Orden').AsString := global_contrato_barco
          else
             QryTiemposAct.ParamByName('Orden').AsString := global_contrato;
          QryTiemposAct.Open;

          indice := 1;
          sGrupo := '';
          while not QryTiemposAct.Eof do
          begin
              if sGrupo <> QryTiemposAct.FieldByName('sClasificacion').AsString then
              begin
                  sGrupo := QryTiemposAct.FieldByName('sClasificacion').AsString;
                  indice := 3;
              end;

              if indice = 3 then
                 indice := 1;
              if indice = 1 then
                 rxTiemposAct.Append
              else
                 rxTiemposAct.Edit;
              rxTiemposAct.FieldValues['sGrupo']                        := QryTiemposAct.FieldByName('sClasificacion').AsString;
              rxTiemposAct.FieldValues['sContrato']                     := QryTiemposAct.FieldByName('sContrato').AsString;
              rxTiemposAct.FieldValues['sTiempo'+IntToStr(indice)]      := QryTiemposAct.FieldByName('sIdTipoMovimiento').AsString;
              rxTiemposAct.FieldValues['sDescripcion'+IntToStr(indice)] := QryTiemposAct.FieldByName('sDescripcion').AsString;
              rxTiemposAct.Post;
              inc(indice);
              QryTiemposAct.Next;
          end;

          QryArribosMov.Connection := connection.zconnection;
          QryArribosMov.SQL.Add('select concat( me.sHoraInicio , " - ", me.sHoraFinal ) as sHorario, me.sHoraInicio, me.sHoraFinal, '+
                    'me.mDescripcion, me.sNumeroActividad '+
                    'from movimientosdeembarcacion me '+
                    'where me.sContrato = :contratoBarco '+
                    'and me.dIdFecha = :fecha '+
                    'and me.sOrden = :orden '+
                    'and me.sClasificacion = "" and sTipo = "MOVIMIENTO" '+
                    'order by me.sHoraInicio');
          QryArribosMov.ParamByName('contratoBarco').AsString := global_contrato_barco;
          QryArribosMov.ParamByName('fecha').AsDate := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
          QryArribosMov.ParamByName('orden' ).AsString := global_contrato;
          QryArribosMov.Open;

//        {Esta secccion es para mostrar la hoja vacia sino existen datos.}
//        if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
//           rxNotas.Delete;
    end
    else
       rxNotas.Delete;

    Td_NotasGrales.DataSet:= rxNotas;
    Td_NotasGrales.FieldAliases.Clear;

    Td_ImpNotasGrales.DataSet:= rxNotas;
    Td_ImpNotasGrales.FieldAliases.Clear;

    Td_ClasificacionTiempo.DataSet := rxTiemposAct;
    Td_ClasificacionTiempo.FieldAliases.Clear;

    Td_ArribosMov.DataSet := QryArribosMov;
    Td_ArribosMov.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_NotasGrales);
    Reporte.DataSets.Add(Td_ImpNotasGrales);
    Reporte.DataSets.Add(Td_ClasificacionTiempo);
    Reporte.DataSets.Add(Td_ArribosMov);

  Finally
  End;

  {$ENDREGION}
end;

Procedure ReportePDF_ConcentradoDePersonal2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);

Var
  i, x,y,CuentaCol,iGrupo,iCiclo: Integer;
  DCiclo,dTotal, dSubTotal, dSubTotalPU :Double;
  QryConsulta,
  QrMoe,
  QrColumnas,
  QrRecursos,
  QryCondiciones,
  QryEmbarcacion,
  QryOtroPersonal: TZQuery;
  QryAgrupador: TZQuery;

  dContrato_Inicio,
  dContrato_Final: TDateTime;
//  mDatos:TJvMemoryData;
//  mImprime:TJvMemoryData;
  Td_CImpDistribucionP: TfrxDBDataset;
  Td_CDistribucionP: TfrxDBDataset;
  ValTmp:Variant;
  CantTmp:Double;
  iPosTmp:Integer;
  lImprimeRecurso : string;
begin

//  mDatos:=TJvMemoryData.Create(nil);
//  mImprime:=TJvMemoryData.Create(nil);
  QrRecursos := TZQuery.Create(nil);
  QrColumnas := TZQuery.Create(nil);
  QrMoe := TZQuery.Create(nil);
  Td_CDistribucionP:=TfrxDBDataset.Create(nil);
  Td_CImpDistribucionP:=TfrxDBDataset.Create(nil);
  try
    QrMoe.Connection := Connection.zConnection;
    QrColumnas.Connection := Connection.zConnection;
    QrRecursos.Connection := Connection.zConnection;
    Td_CDistribucionP.UserName:='Td_CDistribucionP';
    Td_CImpDistribucionP.UserName:='Td_CImpDistribucionP';
//    with mDatos do
//    begin
//      Active:=false;
//      FieldDefs.Add('iGrupo', ftInteger, 0, True);
//      FieldDefs.Add('iTotalGrupo', ftInteger, 0, True);
//      FieldDefs.Add('sidAnexo', ftString, 10, false);
//      FieldDefs.Add('sidrecurso', ftString, 100, True);
//      FieldDefs.Add('sdescripcion', ftString, 250, True);
//      FieldDefs.Add('sAnexo', ftString, 250, false);
//      FieldDefs.Add('sTitulo', ftString, 250, false);
//      FieldDefs.Add('smedida', ftString, 100, True);
//      FieldDefs.Add('dcantSol', FtFloat, 0, True);
//      FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//      FieldDefs.Add('dcantTotalPU', FtFloat, 0, True);
//      for CuentaCol:=1 to TotalCol do
//      begin
//        FieldDefs.Add('dcantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//        FieldDefs.Add('sNumeroOrden'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPernocta' + Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPlataforma'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sTipo'+ Inttostr(CuentaCol), ftString, 5, false);
//      end;
//      Active:=true;
//    end;
//    with mImprime do
//    begin
//      Active:=false;
//      FieldDefs.Add('iCampo', ftInteger, 0, True);
//      Active:=true;
//    end;

//    mImprime.EmptyTable;
    if (TImpresion=FtsCPersonal) or (TImpresion=FtsAll) then
    begin
      QrRecursos.Active := False;
      QrRecursos.SQL.Clear;
      QrRecursos.SQL.Add('SELECT bp.sIdPersonal, bp.sDescripcion, ifnull(SUM(bp.dAjuste),0) AS Ajuste, ' +
                         'if(:Anexo=1,( ' +
                         'IF(SUM(bp.dCanthh) > 0, round(SUM(bp.dCanthh),2), SUM(bp.dCantidad))'+
                         '),SUM(bp.dCantidad)) AS Total, bp.lImprime ' +
                         'FROM bitacoradepersonal bp ' +
                         'inner join bitacoradeactividades ba ' +
                         'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                         'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                         'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) ' +
                         'WHERE bp.scontrato = :Orden AND bp.sNumeroOrden = :Folio AND bp.didfecha = :Fecha ' +
                         'AND bp.sidPernocta = :Pernocta AND bp.sidplataforma = :Plataforma ' +
                         'and bp.sIdPersonal=:Personal and bp.sTipoObra =:Tipo GROUP BY bp.sIdPersonal ');



      {$REGION 'CONSULTAS - PARTIDAS'}
      QrColumnas.active:=false;
      QrColumnas.SQL.Add( 'SELECT ot.sContrato, ot.sNumeroOrden, ot.sIdFolio, p.sDescripcion AS pernocta, p.sDescripcion AS pernocta, pf.sDescripcion AS plataforma, '+
                          'bp.sIdpernocta AS PernoctaP, bp.sIdPlataforma AS idPlataforma, ' +
                          'bp.sTipoObra as sTipo '+
                          'FROM ordenesdetrabajo ot ' +
                          'INNER JOIN rd_proyectos AS c ON (ot.sContrato=c.sContrato) ' +
                          'INNER JOIN bitacoradepersonal AS bp ON (bp.scontrato=:OT AND bp.sNumeroOrden = ot.sNumeroOrden ) ' +
                          'INNER JOIN pernoctan AS p ON (p.sidPernocta=bp.sIdpernocta) ' +
                          'INNER JOIN plataformas AS pf ON (pf.sidPlataforma=bp.sIdPlataforma) ' +
                          'WHERE (c.sContrato=:OT OR c.sCodigo=:OT)	AND bp.dIdFecha= :Fecha ' +
                          'GROUP BY	ot.sContrato, ot.sNumeroorden, bp.sidPernocta, bp.sIdPlataforma, bp.sTipoObra '+
                          'order by ot.sContrato, ot.iOrden ASC, bp.sTipoObra  DESC');
      QrColumnas.ParamByName('OT').AsString       := ReporteDiario.FieldByName('sOrden').AsString;
      QrColumnas.ParamByName('Fecha').AsDate      := reportediario.FieldByName('dIdFecha').AsDateTime;
      QrColumnas.Open;
      {$ENDREGION}

      {$REGION 'CONSULTAS - TODO EL PERSONAL SOLICITADO QUE SE REGISTRA EN EL MOE'}
      QrMoe.Active := False;
      QrMoe.SQL.Clear;
      QrMoe.SQL.Add('SELECT p.sDescripcion,	mr.*, p.lSumaSolicitado, p.sMedida, ' +
                    'a.sanexo,ifnull(a.sdescripcion,"SIN ANEXO MAR/TIERRA") as anexo, ifnull(a.stitulo,"FALTA CONFIGURAR") as tituloAnexo,a.stierra '+
                    'FROM moe AS m ' +
                    'INNER JOIN moerecursos AS mr ON (mr.iidMoe=m.iidMoe) ' +
                    'INNER JOIN personal AS p ON (p.scontrato=:Contrato AND p.sidpersonal=mr.sidRecurso) ' +
                    'left join anexos a on(a.sAnexo=p.sAnexo) ' +
                    'WHERE m.didfecha = (SELECT max(didfecha) FROM moe WHERE didfecha <=:Fecha AND sContrato = :OT) ' +
                    'AND m.sContrato = :OT AND mr.eTipoRecurso = "Personal" ORDER BY a.iOrden,p.iItemOrden');
      QrMoe.ParamByName('Contrato').AsString := Global_Contrato_Barco;
      QrMoe.ParamByName('OT').AsString       := ReporteDiario.FieldByName('sOrden').AsString;
      QrMoe.ParamByName('Fecha').AsDateTime  := reportediario.FieldByName('dIdFecha').AsDateTime;
      QrMoe.Open;
      {$ENDREGION}

      {$REGION 'INSERTA EL MOE'}


      DCiclo:=QrColumnas.RecordCount/TotalCol;
      iCiclo:=Trunc(DCiclo);
      if (dCiclo -iCiclo)>0 then
        Inc(iCiclo,1);

      iGrupo:=1;
      dSubTotal   := 0;
      dSubTotalPU := 0;
      while iGrupo<=iCiclo do
      begin
        with qrMoe do
        begin

          first;

          while not eof do
          begin
            if iGrupo > 1 then
            begin
//               mDatos.Filtered := False;
//               mDatos.Filter   := ' iGrupo ='+IntToStr(iGrupo-1);
//               mDatos.Filtered := True;
//
//               mDatos.Locate('sidrecurso',FieldByName('sidrecurso').asstring, []);
//
//               dSubTotal   := mDatos.FieldByName('dcantTotal').AsFloat;
//               dSubTotalPU := mDatos.FieldByName('dcantTotalPU').AsFloat;
//               mDatos.Filtered := False;

            end;

//            mDatos.Append;
//            mDatos.FieldByName('iGrupo').AsInteger:=Igrupo;
//            mDatos.FieldByName('iTotalGrupo').AsInteger:=iCiclo;
//            mDatos.FieldByName('sidAnexo').AsString:=FieldByName('sanexo').asstring;
//            mDatos.FieldByName('sAnexo').AsString:=FieldByName('anexo').asstring;
//            mDatos.FieldByName('sTitulo').AsString:=FieldByName('tituloAnexo').asstring;
//            mDatos.FieldByName('sidrecurso').AsString:=FieldByName('sidrecurso').asstring;
//            mDatos.FieldByName('sdescripcion').AsString:=fieldbyname('sdescripcion').asstring;
//            mDatos.FieldByName('smedida').AsString:=fieldbyname('smedida').asstring;
//            mDatos.FieldByName('dcantSol').AsFloat:=fieldbyname('dcantidad').AsFloat;
//            mDatos.FieldByName('dcantTotalPU').AsFloat:=dSubTotalPU;
//            mDatos.FieldByName('dcantTotal').AsFloat  :=dSubTotal;
            dTotal:=0;
            if iGrupo=1 then
              QrColumnas.First
            else
              QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

            ValTmp:=0;
            CantTmp:=0;
            iPosTmp:=0;
            CuentaCol:=1;
            lImprimeRecurso := 'Si';
            while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
            begin

//              mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString :=qrColumnas.FieldbyName('sIdFolio').AsString;
//              mDatos.FieldByName('sPernocta' + Inttostr(CuentaCol)).AsString   :=QrColumnas.Fieldbyname('Pernocta').asstring;
//              mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString  :=QrColumnas.Fieldbyname('Plataforma').Asstring;
//              mDatos.FieldByName('sTipo'+ Inttostr(CuentaCol)).AsString        :=QrColumnas.Fieldbyname('sTipo').Asstring;

              QrRecursos.Active := False;
              QrRecursos.ParamByName('Anexo').AsINteger :=1;
              QrRecursos.ParamByName('Orden').AsString      := QrColumnas.FieldByName('sContrato').AsString;
              QrRecursos.ParamByName('Folio').AsString      := QrColumnas.FieldByName('sNumeroOrden').AsString;
              QrRecursos.ParamByName('Fecha').AsDate        := reportediario.FieldByName('dIdFecha').AsDateTime;
              QrRecursos.ParamByName('Pernocta').AsString   := QrColumnas.FieldByName('PernoctaP').AsString;
              QrRecursos.ParamByName('Plataforma').AsString := QrColumnas.FieldByName('idPlataforma').AsString;
              QrRecursos.ParamByName('Personal').AsString   := FieldByName('sIdRecurso').AsString;
              QrRecursos.ParamByName('Tipo').AsString       := QrColumnas.Fieldbyname('sTipo').Asstring;
              QrRecursos.Open;

              if QrRecursos.RecordCount>0 then
              begin
                ValTmp                                                       :=  ValTmp + (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
//                mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:= (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
                dTotal                                                       := dTotal+ (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
//                if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                begin
//                  CantTmp := mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                  iPosTmp := CuentaCol;
//                end;

                if QrColumnas.Fieldbyname('sTipo').Asstring = 'TD' then
//                   mDatos.FieldByName('dcantTotal').AsFloat   := mDatos.FieldByName('dcantTotal').AsFloat + mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat
                else
//                   mDatos.FieldByName('dcantTotalPU').AsFloat := mDatos.FieldByName('dcantTotalPU').AsFloat + mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;

                lImprimeRecurso := QrRecursos.FieldByName('lImprime').AsString;
              end;
              QrColumnas.next;
              Inc(CuentaCol);
            end;

            if dTotal<>xRound(ValTmp,2) then
            begin
//              mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat:=mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat
//              + (xRound(ValTmp,2)-dTotal);
            end;

            if lImprimeRecurso = 'Si' then
//               mDatos.Post
            else
//               mDatos.Cancel;

            next;
          end;

        end;
        Inc(iGrupo,1);
      end;

     {Esta secccion es para mostrar la hoja vacia sino existen datos.}
//     if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
//        if MDatos.RecordCount>=0 then
//     else
//        if MDatos.RecordCount>0 then
//     begin
//
//     end;

//      mDatos.first;
//      mImprime.Append;
//      mImprime.FieldByName('iCampo').AsInteger:=1;
//      mImprime.Post;

      {$ENDREGION}
    end;
//    Td_CDistribucionP.DataSet:=MDatos;
    Td_CDistribucionP.FieldAliases.Clear;
//    Td_CImpDistribucionP.DataSet:=MImprime;
    Td_CImpDistribucionP.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_CDistribucionP);
    Reporte.DataSets.Add(Td_CImpDistribucionP);
  finally
    QrRecursos.destroy;
    QrColumnas.destroy;
    QrMoe.destroy;
  end;
end;


Procedure ReportePDF_ConcentradoDeTiempoExtra(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);

Var
  i, x,y,CuentaCol,iGrupo,iCiclo: Integer;
  DCiclo,dTotal, dSubTotal, dSubTotalPU :Double;
  QryConsulta,
  QrMoe,
  QrColumnas,
  QrRecursos,
  QryCondiciones,
  QryEmbarcacion,
  QryOtroPersonal: TZQuery;
  QryAgrupador: TZQuery;

  dContrato_Inicio,
  dContrato_Final: TDateTime;
//  mDatos:TJvMemoryData;
//  mImprime:TJvMemoryData;
  Td_CImpDistribucionTExtra: TfrxDBDataset;
  Td_CDistribucionTExtra: TfrxDBDataset;
  ValTmp:Variant;
  CantTmp:Double;
  iPosTmp:Integer;
  lImprimeRecurso : string;
begin

//  mDatos:=TJvMemoryData.Create(nil);
//  mImprime:=TJvMemoryData.Create(nil);
  QrRecursos := TZQuery.Create(nil);
  QrColumnas := TZQuery.Create(nil);
  QrMoe := TZQuery.Create(nil);
  Td_CDistribucionTExtra:=TfrxDBDataset.Create(nil);
  Td_CImpDistribucionTExtra:=TfrxDBDataset.Create(nil);
  try
    QrMoe.Connection := Connection.zConnection;
    QrColumnas.Connection := Connection.zConnection;
    QrRecursos.Connection := Connection.zConnection;
    Td_CDistribucionTExtra.UserName:='Td_CDistribucionTExtra';
    Td_CImpDistribucionTExtra.UserName:='Td_CImpDistribucionTExtra';
//    with mDatos do
//    begin
//      Active:=false;
//      FieldDefs.Add('iGrupo', ftInteger, 0, True);
//      FieldDefs.Add('iTotalGrupo', ftInteger, 0, True);
//      FieldDefs.Add('sidAnexo', ftString, 10, false);
//      FieldDefs.Add('sidrecurso', ftString, 100, True);
//      FieldDefs.Add('sdescripcion', ftString, 250, True);
//      FieldDefs.Add('sAnexo', ftString, 250, false);
//      FieldDefs.Add('sTitulo', ftString, 250, false);
//      FieldDefs.Add('smedida', ftString, 100, True);
//      FieldDefs.Add('dcantSol', FtFloat, 0, True);
//      FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//      FieldDefs.Add('dcantTotalPU', FtFloat, 0, True);
//      for CuentaCol:=1 to TotalCol do
//      begin
//        FieldDefs.Add('dcantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//        FieldDefs.Add('sNumeroOrden'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPernocta' + Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPlataforma'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sTipo'+ Inttostr(CuentaCol), ftString, 5, false);
//      end;
//      Active:=true;
//    end;
//    with mImprime do
//    begin
//      Active:=false;
//      FieldDefs.Add('iCampo', ftInteger, 0, True);
//      Active:=true;
//    end;
//
//    mImprime.EmptyTable;
    if (TImpresion=FtsCPersonalTExtra) or (TImpresion=FtsAll) then
    begin
      QrRecursos.Active := False;
      QrRecursos.SQL.Clear;
      QrRecursos.SQL.Add('SELECT bp.sIdPersonal, bp.sDescripcion, 0 AS Ajuste, '+
                         'if(:Anexo=1,( '+
                         'IF(SUM(bp.dCantidad) > 0, round(SUM(bp.dCantidad),2), SUM(bp.dCantidad)) '+
                         '),SUM(bp.dCantidad)) AS Total, "Si" as lImprime '+
                         'FROM bitacoradetiemposextras bp '+
                         'WHERE bp.scontrato = :Orden AND bp.sNumeroOrden = :Folio AND bp.didfecha = :Fecha '+
                         'AND bp.sidPernocta = :Pernocta AND bp.sidplataforma = :Plataforma '+
                         'and bp.sIdPersonal=:Personal and bp.sTipoObra =:Tipo GROUP BY bp.sIdPersonal order by bp.iItemOrden ');



      {$REGION 'CONSULTAS - PARTIDAS'}
      QrColumnas.active:=false;
      QrColumnas.SQL.Add( 'SELECT ot.sContrato, ot.sNumeroOrden, ot.sIdFolio, p.sDescripcion AS pernocta, p.sDescripcion AS pernocta, pf.sDescripcion AS plataforma, '+
                          'bp.sIdpernocta AS PernoctaP, bp.sIdPlataforma AS idPlataforma, ' +
                          'bp.sTipoObra as sTipo '+
                          'FROM ordenesdetrabajo ot ' +
                          'INNER JOIN rd_proyectos AS c ON (ot.sContrato=c.sContrato) ' +
                          'INNER JOIN bitacoradetiemposextras AS bp ON (bp.scontrato=:OT AND bp.sNumeroOrden = ot.sNumeroOrden ) ' +
                          'INNER JOIN pernoctan AS p ON (p.sidPernocta=bp.sIdpernocta) ' +
                          'INNER JOIN plataformas AS pf ON (pf.sidPlataforma=bp.sIdPlataforma) ' +
                          'WHERE (c.sContrato=:OT OR c.sCodigo=:OT)	AND bp.dIdFecha= :Fecha ' +
                          'GROUP BY	ot.sContrato, ot.sNumeroorden, bp.sidPernocta, bp.sIdPlataforma, bp.sTipoObra '+
                          'order by ot.sContrato, ot.iOrden ASC, bp.sTipoObra  DESC');
      QrColumnas.ParamByName('OT').AsString       := ReporteDiario.FieldByName('sOrden').AsString;
      QrColumnas.ParamByName('Fecha').AsDate      := reportediario.FieldByName('dIdFecha').AsDateTime;
      QrColumnas.Open;
      {$ENDREGION}

      {$REGION 'CONSULTAS - TODO EL PERSONAL SOLICITADO QUE SE REGISTRA EN EL MOE'}
      QrMoe.Active := False;
      QrMoe.SQL.Clear;
      QrMoe.SQL.Add('SELECT p.sDescripcion,p.sIdPersonal as sIdRecurso, "Personal" as eTipoRecurso, 1 as dCantidad, "Si" as eAplicaCuadre, '+
                    'p.lSumaSolicitado, p.sMedida, '+
                    'a.sanexo,ifnull(a.sdescripcion,"SIN ANEXO MAR/TIERRA") as anexo, ifnull(a.stitulo,"FALTA CONFIGURAR") as tituloAnexo,a.stierra '+
                    'FROM personal p '+
                    'inner join anexos a on(a.sAnexo=p.sAnexo) '+
                    'AND p.sContrato = :Contrato and p.sDescripcion like "%TIEMPO EXTRA%" ORDER BY a.iOrden, p.iItemOrden');
      QrMoe.ParamByName('Contrato').AsString := Global_Contrato_Barco;
      QrMoe.Open;
      {$ENDREGION}

      {$REGION 'INSERTA EL MOE'}


      DCiclo:=QrColumnas.RecordCount/TotalCol;
      iCiclo:=Trunc(DCiclo);
      if (dCiclo -iCiclo)>0 then
        Inc(iCiclo,1);

      iGrupo:=1;
      dSubTotal   := 0;
      dSubTotalPU := 0;
      while iGrupo<=iCiclo do
      begin
        with qrMoe do
        begin

          first;

          while not eof do
          begin
            if iGrupo > 1 then
            begin
//               mDatos.Locate('sidrecurso',FieldByName('sidrecurso').asstring, []);
//               dSubTotal   := mDatos.FieldByName('dcantTotal').AsFloat;
//               dSubTotalPU := mDatos.FieldByName('dcantTotalPU').AsFloat;
            end;

//            mDatos.Append;
//            mDatos.FieldByName('iGrupo').AsInteger:=Igrupo;
//            mDatos.FieldByName('iTotalGrupo').AsInteger:=iCiclo;
//            mDatos.FieldByName('sidAnexo').AsString:=FieldByName('sanexo').asstring;
//            mDatos.FieldByName('sAnexo').AsString:=FieldByName('anexo').asstring;
//            mDatos.FieldByName('sTitulo').AsString:=FieldByName('tituloAnexo').asstring;
//            mDatos.FieldByName('sidrecurso').AsString:=FieldByName('sidrecurso').asstring;
//            mDatos.FieldByName('sdescripcion').AsString:=fieldbyname('sdescripcion').asstring;
//            mDatos.FieldByName('smedida').AsString:=fieldbyname('smedida').asstring;
//            mDatos.FieldByName('dcantSol').AsFloat:=fieldbyname('dcantidad').AsFloat;
//            mDatos.FieldByName('dcantTotalPU').AsFloat:=dSubTotalPU;
//            mDatos.FieldByName('dcantTotal').AsFloat  :=dSubTotal;
            dTotal:=0;
            if iGrupo=1 then
              QrColumnas.First
            else
              QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

            ValTmp:=0;
            CantTmp:=0;
            iPosTmp:=0;
            CuentaCol:=1;
            lImprimeRecurso := 'Si';
            while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
            begin

//              mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString :=qrColumnas.FieldbyName('sIdFolio').AsString;
//              mDatos.FieldByName('sPernocta' + Inttostr(CuentaCol)).AsString   :=QrColumnas.Fieldbyname('Pernocta').asstring;
//              mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString  :=QrColumnas.Fieldbyname('Plataforma').Asstring;
//              mDatos.FieldByName('sTipo'+ Inttostr(CuentaCol)).AsString        :=QrColumnas.Fieldbyname('sTipo').Asstring;

              QrRecursos.Active := False;
              QrRecursos.ParamByName('Anexo').AsINteger :=1;
              QrRecursos.ParamByName('Orden').AsString      := QrColumnas.FieldByName('sContrato').AsString;
              QrRecursos.ParamByName('Folio').AsString      := QrColumnas.FieldByName('sNumeroOrden').AsString;
              QrRecursos.ParamByName('Fecha').AsDate        := reportediario.FieldByName('dIdFecha').AsDateTime;
              QrRecursos.ParamByName('Pernocta').AsString   := QrColumnas.FieldByName('PernoctaP').AsString;
              QrRecursos.ParamByName('Plataforma').AsString := QrColumnas.FieldByName('idPlataforma').AsString;
              QrRecursos.ParamByName('Personal').AsString   := FieldByName('sIdRecurso').AsString;
              QrRecursos.ParamByName('Tipo').AsString       := QrColumnas.Fieldbyname('sTipo').Asstring;
              QrRecursos.Open;

              if QrRecursos.RecordCount>0 then
              begin
                ValTmp                                                       :=  ValTmp + (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
//                mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:= (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
                dTotal                                                       := dTotal+ (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
//                if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                begin
//                  CantTmp := mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                  iPosTmp := CuentaCol;
//                end;

                if QrColumnas.Fieldbyname('sTipo').Asstring = 'TD' then
//                   mDatos.FieldByName('dcantTotal').AsFloat   := mDatos.FieldByName('dcantTotal').AsFloat + mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat
                else
//                   mDatos.FieldByName('dcantTotalPU').AsFloat := mDatos.FieldByName('dcantTotalPU').AsFloat + mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;

                lImprimeRecurso := QrRecursos.FieldByName('lImprime').AsString;
              end;
              QrColumnas.next;
              Inc(CuentaCol);
            end;

            if dTotal<>xRound(ValTmp,2) then
            begin
//              mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat:=mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat
//              + (xRound(ValTmp,2)-dTotal);
            end;

            if lImprimeRecurso = 'Si' then
//               mDatos.Post
            else
//               mDatos.Cancel;

            next;
          end;

        end;
        Inc(iGrupo,1);
      end;

     {Esta secccion es para mostrar la hoja vacia sino existen datos.}
//     if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
//        if MDatos.RecordCount>=0 then
//     else
//        if MDatos.RecordCount>0 then
//     begin
//
//     end;

//      mDatos.first;
//      mImprime.Append;
//      mImprime.FieldByName('iCampo').AsInteger:=1;
//      mImprime.Post;

      {$ENDREGION}
    end;
//    Td_CDistribucionTExtra.DataSet:=MDatos;
    Td_CDistribucionTExtra.FieldAliases.Clear;
//    Td_CImpDistribucionTExtra.DataSet:=MDatos;
    Td_CImpDistribucionTExtra.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_CDistribucionTExtra);
    Reporte.DataSets.Add(Td_CImpDistribucionTExtra);
  finally
    QrRecursos.destroy;
    QrColumnas.destroy;
    QrMoe.destroy;
  end;
end;

Procedure ReportePDF_ConcentradoDeEquipos2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
var

  QrMoe,
  QrColumnas,
  QrRecursos,
  QryEmbarcacion: TZQuery;

  ZqEqBarcos : tzreadonlyquery;

begin
  ZqEqBarcos := TZReadOnlyQuery.Create(nil);
  ZqEqBarcos.Connection := connection.zConnection;
  ZqEqBarcos.Active := False;
  ZqEqBarcos.SQL.Clear;
  ZqEqBarcos.SQL.Text := ' Select sidequipo,iunificador from equipos '+
                         ' where scontrato = :contrato and Length(iunificador) > 0  ';
  ZqEqBarcos.ParamByName('contrato').AsString := global_Contrato_Barco;
  ZqEqBarcos.Open;

  Try

    {$REGION 'CONSULTAS - TODOS LOS EQUIPOS REGISTRADOS EN MOE'}
      QrMoe := TZQuery.Create(nil);
      QrMoe.Connection := Connection.zConnection;
      QrMoe.Active := False;
      QrMoe.SQL.Clear;
      QrMoe.SQL.Add('SELECT p.lSumaSolicitado, p.iId_AgrupadorEquipo, ge.sGrupo, p.sDescripcion, p.iUnificador ,mr.*, p.sMedida ' +
                    'FROM moerecursos AS mr ' +
                    'INNER JOIN moe AS m ' +
                    'ON (m.iidMoe=mr.iidMoe) ' +
                    'INNER JOIN equipos AS p ' +
                    'ON (p.sContrato=:Contrato AND p.sIdEquipo=mr.sidRecurso) ' +
                    'LEFT JOIN gruposdeequipo AS ge ' +
                    'ON (ge.iId = p.iId_AgrupadorEquipo) ' +
                    'WHERE ' +
                    'dIdFecha = (SELECT max(didfecha) FROM moe WHERE didfecha <=:Fecha AND sContrato = :ContratoNormal) ' +
                    'AND m.sContrato = :ContratoNormal ' +
                    'AND mr.eTipoRecurso="Equipo" ' +
                    'ORDER BY p.iItemOrden');
      QrMoe.ParamByName('Contrato').AsString := Global_Contrato_Barco;
      QrMoe.ParamByName('ContratoNormal').AsString := ReporteDiario.FieldByName('sOrden').AsString;
      QrMoe.ParamByName('Fecha').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
      QrMoe.Open;

    {$ENDREGION}

    {$REGION 'INSERCION DE DATOS - INFORMACIÓN DEL EQUIPO'}

    while Not QrMoe.Eof do
    begin
      QrMoe.FieldbyName('sIdRecurso').asstring;
      QrMoe.Fieldbyname('sDescripcion').asstring;
      QrMoe.fieldbyname('sMedida').asstring;
      QrMoe.FieldByName('dCantidad').asfloat;
      QrMoe.Next;
    end;

    {$ENDREGION}

    {$REGION 'CONSULTAS - PARTIDAS'}
      QrColumnas := TZQuery.Create(nil);
      QrColumnas.Connection := Connection.zConnection;
      QrColumnas.SQL.Add( '' +
                          'SELECT ' +
                          '	ot.*, ' +
                          '	p.sDescripcion AS pernocta, ' +
                          '	pf.sDescripcion AS plataforma, ' +
                          '	bp.sIdpernocta AS PernoctaP ' +
                          'FROM ordenesdetrabajo AS ot ' +
                          ' INNER JOIN rd_proyectos AS c ' +
                          '	  ON (ot.sContrato=c.sContrato) ' +
                          ' INNER JOIN bitacoradeequipos AS bp ' +
                          '		ON (bp.scontrato=:OT AND bp.sNumeroOrden = ot.sNumeroOrden) ' +
                          ' INNER JOIN pernoctan AS p ' +
                          '	  ON (p.sidPernocta=bp.sIdpernocta) ' +
                          ' INNER JOIN plataformas AS pf ' +
                          '	  ON (pf.sidPlataforma=ot.sIdPlataforma) ' +
                          'WHERE ' +
                          '	(c.sContrato=:Contrato OR c.sCodigo=:Contrato) ' +
                          '	AND bp.dIdFecha= :Fecha ' +
                          'GROUP BY ' +
                          '	ot.sContrato, ' +
                          '	ot.sNumeroorden, ' +
                          '	bp.sidPernocta;');
      QrColumnas.ParamByName('OT').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
      QrColumnas.ParamByName('Contrato').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
      QrColumnas.ParamByName('Fecha').AsDate:=reportediario.FieldByName('dIdFecha').AsDateTime;
      QrColumnas.Open;
    {$ENDREGION}

    {$REGION 'INSERCION DE DATOS - PARTIDAS'}
      QrRecursos := TZQuery.Create(nil);
      QrRecursos.Connection := Connection.zConnection;
      while Not QrColumnas.Eof do
      begin
        {$REGION 'CABECERA'}
        qrColumnas.fieldbyname('snumeroorden').asstring;
        qrcolumnas.fieldbyname('pernocta').asstring;
        qrColumnas.FieldByName('plataforma').asstring;
        {$ENDREGION}

        {$REGION 'CONSULTA CUADRE'}
          QrRecursos.Active := False;
          QrRecursos.SQL.Clear;
          QrRecursos.SQL.Add( '' +
                              'SELECT ' +
                              '	bp.sIdEquipo, ' +
                              '	bp.sDescripcion, ' +
                              '	IF(SUM(bp.dCanthh) > 0, ROUND(SUM(bp.dCanthh), 2), SUM(bp.dCantidad)) AS Total, ' +
                              ' SUM(bp.dAjuste) AS Ajuste ' +
                              'FROM bitacoradeequipos bp ' +
                              'WHERE ' +
                              '	bp.scontrato = :Orden ' +
                              '	AND bp.snumeroorden = :Folio ' +
                              '	AND bp.didfecha = :Fecha ' +
                              '	AND bp.sidPernocta = :Pernocta ' +
                              'GROUP BY bp.sIdEquipo ');
          QrRecursos.ParamByName('Orden').AsString := QrColumnas.FieldByName('sContrato').AsString;
          QrRecursos.ParamByName('Folio').AsString := QrColumnas.FieldByName('sNumeroOrden').AsString;
          QrRecursos.ParamByName('Fecha').AsDate := reportediario.FieldByName('dIdFecha').AsDateTime;
          QrRecursos.ParamByName('Pernocta').AsString := QrColumnas.FieldByName('PernoctaP').AsString;
          QrRecursos.Open;
        {$ENDREGION}

        {$REGION 'INSERTA EL CUADRE'}
          QrMoe.First;
          while Not QrMoe.Eof do
          begin
            if QrRecursos.Locate('sIdEquipo', QrMoe.FieldByName('sIdRecurso').AsString, []) then
              //(QrRecursos.FieldByName('Total').AsFloat + QrRecursos.FieldByName('Ajuste').AsFloat, -2);
            QrMoe.Next;
          end;
        {$ENDREGION}
        QrColumnas.Next;
      end;      
    {$ENDREGION}



    {$REGION 'ITUTLO DE LA CABECERA'}
    with connection.qrybusca do
    begin
      active := false;
      sql.text := 'select sdescripcion from anexos where stipo = "EQUIPO"';
      open;

      fieldbyname('sdescripcion').asstring;
    end;
    {$ENDREGION}

  Finally
    QrMoe.Free;
    QrRecursos.Free;
  End;
end;

Procedure ReportePDF_ConcentradoDePernoctas2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
  QrPernoctas,
  QrReportado,
  QrColumnas : TZReadOnlyQuery;

  iColumna : Integer;
  CuentaCol,iGrupo,iCiclo: Integer;
  DCiclo,dTotal:Double;

//  mDatos:TJvMemoryData;
//  mDatosDet:TJvMemoryData;
//  mImprime:TJvMemoryData;
  Td_CImpDistribucionPer: TfrxDBDataset;
  Td_CDistribucionPer: TfrxDBDataset;
  Td_CDistribucionDetPer: TfrxDBDataset;
  QrAdicional:TzReadOnlyquery;
  ValTmp:Variant;
  CantTmp:Double;
  iPosTmp:Integer;
  sTdPuConstante : string;
  lContinuaProceso : boolean;
  lExcuyePerAnexo  : boolean;
  lExcluyeDirectas : boolean;
  sFolioSiguiente  : string;
begin
  {$REGION 'TZQUERY'}
  QrPernoctas := TZReadOnlyQuery.Create(nil);
  QrReportado := TZReadOnlyQuery.Create(nil);
  QrColumnas := TZReadOnlyQuery.Create(nil);
  QrAdicional := TZReadOnlyQuery.Create(nil);
//  mDatos:=TJvMemoryData.Create(nil);
//  mDatosDet:=TJvMemoryData.Create(nil);

//  mImprime:=TJvMemoryData.Create(nil);
  Td_CDistribucionPer:=TfrxDBDataset.Create(nil);
  Td_CImpDistribucionPer:=TfrxDBDataset.Create(nil);
  Td_CDistribucionDetPer:=TfrxDBDataset.Create(nil);
  {$ENDREGION}

  try
    QrReportado.connection := connection.zconnection;
    QrPernoctas.connection := connection.zconnection;
    QrColumnas.connection := connection.zconnection;
    QrAdicional.Connection:=connection.zconnection;
    Td_CDistribucionPer.UserName:='Td_CDistribucionPer';
    Td_CImpDistribucionPer.UserName:='Td_CImpDistribucionPer';
    Td_CDistribucionDetPer.UserName:='Td_CDistribucionDetPer';

//    with mDatos do
//    begin
//      Active:=false;
//      FieldDefs.Add('iGrupo', ftInteger, 0, True);
//      FieldDefs.Add('sidrecurso', ftString, 100, True);
//      FieldDefs.Add('sdescripcion', ftString, 250, True);
//      FieldDefs.Add('smedida', ftString, 100, false);
//      FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//      FieldDefs.Add('dcantTotal3C', FtFloat, 0, True);
//      for CuentaCol:=1 to TotalColPer do
//      begin
//        FieldDefs.Add('dcantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//        FieldDefs.Add('sNumeroOrden'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPernocta' + Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPlataforma'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sTipo'+ Inttostr(CuentaCol), ftString, 10, false);
//        FieldDefs.Add('dcantidad3C' + Inttostr(CuentaCol), FtFloat, 0, false);
//      end;
//      Active:=true;
//    end;
//    with mImprime do
//    begin
//      Active:=false;
//      FieldDefs.Add('iCampo', ftInteger, 0, True);
//      Active:=true;
//    end;

//    with mDatosDet do
//    begin
//      Active:=false;
//      FieldDefs.Add('sContrato', ftString, 100, false);
//      FieldDefs.Add('sIdPernocta', ftString, 100, True);
//      FieldDefs.Add('sdescripcion', ftString, 250, false);
//      FieldDefs.Add('sMedida', ftString, 100, false);
//      FieldDefs.Add('sPadre', ftString, 2, false);
//      FieldDefs.Add('dCantidad' , FtFloat, 0, false);
//      Active:=true;
//    end;
//
//    mImprime.EmptyTable;
    if (TImpresion=FtsCPernoctas) or (TImpresion=FtsAll) then
    begin
     {FOLIOS DEL DIA}
      {$REGION 'CONSULTA COLUMNAS - FOLIOS LABORADOS'}

      QrColumnas.active:=false;
      QrColumnas.SQL.Add( 'SELECT ot.sIdFolio, ot.sContrato, ot.iOrden, '+
                          'ot.sNumeroOrden, '+
                          'ot.sIdPlataforma, '+
                          'p.sDescripcion as sPernocta, '+
													'p.sIdPernocta, '+
                          'pf.sDescripcion as sPlataforma, '+
                          'bp.sTipoObra as sTipo '+
                          'FROM ordenesdetrabajo ot '+
                          'INNER JOIN rd_proyectos AS c ON (ot.sContrato=c.sContrato) '+
                          'inner JOIN bitacoradepersonal AS bp ON (bp.scontrato=:OT AND bp.sNumeroOrden = ot.sNumeroOrden ) '+
                          'INNER JOIN pernoctan AS p ON (p.sidPernocta=bp.sIdpernocta) '+
                          'INNER JOIN plataformas AS pf ON (pf.sidPlataforma=bp.sIdPlataforma) '+
                          'inner join embarcaciones e on (e.scontrato =:ContratoBarco and e.sIdEmbarcacion = bp.sIdPernocta and e.sTipo = "Principal") '+
                          'WHERE (c.sContrato=:OT OR c.sCodigo=:OT)	AND bp.dIdFecha= :Fecha '+
                          'GROUP BY	ot.sContrato, ot.sNumeroorden, bp.sidPernocta, bp.sIdPlataforma, bp.sTipoObra '+
                          'union '+
													'SELECT ot.sIdFolio, ot.sContrato, ot.iOrden, '+
                          'ot.sNumeroOrden, '+
                          'ot.sIdPlataforma, '+
                          '(select p.sDescripcion from embarcaciones e '+
													'    inner join pernoctan p on (p.sIdPernocta = e.sIdEmbarcacion) '+
													'    where e.sContrato =:ContratoBarco and e.sTipo = "Principal" ) as sPernocta, '+
													'(select p.sIdPernocta from embarcaciones e '+
													'    inner join pernoctan p on (p.sIdPernocta = e.sIdEmbarcacion) '+
													'    where e.sContrato =:ContratoBarco and e.sTipo = "Principal" ) as sIdPernocta, '+
                          'pf.sDescripcion as sPlataforma, '+
                          '(if (ct.sTdPU = "PU", "PU", "TD")) as sTipo '+
                          'FROM ordenesdetrabajo ot '+
                          'INNER JOIN rd_proyectos AS c ON (ot.sContrato=c.sContrato) '+
                          'inner join bitacoradepernocta bpe on (bpe.sContrato =:OT and bpe.dIdFecha =:Fecha and ot.sNumeroOrden = bpe.sNumeroOrden ) '+
                          'inner JOIN plataformas AS pf ON (pf.sidPlataforma=ot.sIdPlataforma) '+
													'inner join categorias ct on (ct.sIdCategoria = bpe.sIdCategoria) '+
                          'WHERE (c.sContrato=:OT OR c.sCodigo=:OT) '+
                          'GROUP BY	ot.sContrato, ot.sNumeroorden, sIdPernocta, pf.sIdPlataforma, sTipo '+
                          'order by sContrato, iOrden ASC, sTipo  DESC');
      QrColumnas.ParamByName('OT').AsString            := ReporteDiario.FieldByName('sOrden').AsString;
      QrColumnas.ParamByName('ContratoBarco').AsString := global_contrato_barco;
      QrColumnas.ParamByName('Fecha').AsDate           := Reportediario.FieldByName('dIdFecha').AsDateTime;
      QrColumnas.Open;
      {$ENDREGION}

      {$region 'Pernocta c-3'}
      with qrPernoctas do
      begin
        active := false;
        sql.text := 'select round(sum( bp.dCantHH),2) as dCantidad, bp.sNumeroOrden, bp.sIdPlataforma, '+
                    'ifnull(SUM(bp.dAjuste),0) AS Ajuste ' +
                    'from bitacoradepersonal bp '+
                    'where bp.sContrato =:Contrato '+
                    'and bp.dIdFecha =:Fecha '+
                    'and bp.sNumeroOrden=:Folio and bp.sTipoObra =:Tipo and bp.lImprime = "Si" and bp.lAplicaPernocta = "Si" '+
                    'group by bp.dIdFecha, bp.sIdPersonal ';
        parambyname('contrato').asstring      := ReporteDiario.FieldByName('sOrden').asstring;
        parambyname('fecha').asdate           := ReporteDiario.FieldByName('dIdFecha').asDatetime;

      end;
      {$endregion}

      //Primero Consultamos los tipos de pernocta
      QrReportado.Active:=false;
      QrReportado.SQL.Text:='select sIdCuenta, sDescripcion, sMedida, sIdPadre from cuentas';
      QrReportado.Open;

      while not QrReportado.Eof do
      begin
//          mDatosDet.Append;
//          mDatosDet.FieldByName('sContrato').AsString    := global_Contrato;
//          mDatosDet.FieldByName('sIdPernocta').AsString  := QrReportado.FieldByName('sIdCuenta').AsString;
//          mDatosDet.FieldByName('sdescripcion').AsString := QrReportado.FieldByName('sDescripcion').AsString;
//          mDatosDet.FieldByName('sMedida').AsString      := QrReportado.FieldByName('sMedida').AsString;
//          mDatosDet.FieldByName('sPadre').AsString       := QrReportado.FieldByName('sIdPadre').AsString;
//          mDatosDet.FieldByName('dCantidad').AsFloat     := 0;
          QrReportado.Next;
      end;

      //Ahora consultamos las categorias del reporte..
      QrReportado.Active:=false;
      QrReportado.SQL.Text:='select * from categorias where lPersonalAnexo ="Si" order by iOrden';
      QrReportado.Open;

      QrAdicional.Active:=false;
      QrAdicional.SQL.Text:='select ifnull(sum(dCantidad),0) as dCantidad from bitacoradepernocta where ' +
                            'sContrato=:Contrato and dIdFecha=:fecha and sNumeroOrden=:Folio and '+
                            'sIdCategoria =:Categoria  group by sContrato ';


      DCiclo:=QrColumnas.RecordCount/TotalColPer;
      iCiclo:=Trunc(DCiclo);
      if (dCiclo -iCiclo)>0 then
        Inc(iCiclo,1);


      iGrupo:=1;
      while iGrupo<=iCiclo do
      begin
        QrReportado.First;
        while not QrReportado.Eof do
        begin
          dTotal:=0;
          if iGrupo=1 then
            QrColumnas.First
          else
            QrColumnas.RecNo:=((iGrupo-1) * TotalColPer)+ 1;
          //Catgorias de Catalogo PEP
//          mDatos.Append;
//          mDatos.FieldByName('iGrupo').AsInteger:=Igrupo;
//          mDatos.FieldByName('sidrecurso').AsString   :=QrReportado.FieldByName('sIdCategoria').asstring;
//          mDatos.FieldByName('sdescripcion').AsString :=QrReportado.fieldbyname('sdescripcionpernocta').asstring;
//          mDatos.FieldByName('smedida').AsString      := '';

          CuentaCol:=1;
          ValTmp   :=0;
          CantTmp  :=0;
          iPosTmp  :=0;
          sTdPuConstante := qrReportado.FieldByName('sTdPu').AsString;
          while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalColPer)) do
          begin
            //Asiganar folio y Plataforma
//            mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString := qrColumnas.FieldbyName('sIdFolio').AsString;
//            mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString  := QrColumnas.Fieldbyname('splataforma').Asstring;
//            mDatos.FieldByName('sPernocta'+ Inttostr(CuentaCol)).AsString    := QrColumnas.Fieldbyname('sPernocta').Asstring;
//            mDatos.FieldByName('sTipo'+ Inttostr(CuentaCol)).AsString        := QrColumnas.Fieldbyname('sTipo').Asstring;

            //Consultar bitacoradepernoctas- Directas
            if ((sTdPuConstante <> 'PU') and (sTdPuConstante <> 'TD')) and (qrColumnas.FieldbyName('sTipo').AsString = 'TD') then
            begin
                QrAdicional.Active:=false;
                QrAdicional.ParamByName('Contrato').AsString  := ReporteDiario.FieldByName('sOrden').asstring;
                QrAdicional.ParamByName('Folio').AsString     := qrColumnas.FieldbyName('snumeroorden').AsString;
                QrAdicional.ParamByName('Fecha').Asdate       := ReporteDiario.FieldByName('dIdFecha').asDatetime;
                QrAdicional.ParamByName('Categoria').AsString := QrReportado.FieldByName('sIdCategoria').AsString;
                QrAdicional.Open;

                if QrAdicional.RecordCount = 1 then
                begin
//                    mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:= QrAdicional.FieldByName('dCantidad').value;
                    dTotal:=dTotal+ QrAdicional.FieldByName('dCantidad').Value;

                    if (QrReportado.FieldByName('sTdPu').AsString <> '2C') and (QrReportado.FieldByName('sTdPu').AsString <> '1C') then
//                        mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat:=  mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat + QrAdicional.FieldByName('dCantidad').Value;

//                    if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                    begin
//                        CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                        iPosTmp:= CuentaCol;
//                    end;
                end
                else
                begin
//                    mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat   := 0;
//                    mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat := 0;
                    dTotal:=dTotal+ xRound(0,2);
                    ValTmp:= ValTmp + 0;
//                    if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                    begin
//                       CantTmp :=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                       iPosTmp := CuentaCol;
//                    end;

                end;
            end
            else
            begin
                if QrReportado.FieldByName('lAnexoTipo').AsString <> 'Anexo Personal' then
                begin
                   QrAdicional.Active:=false;
                   QrAdicional.ParamByName('Contrato').AsString  := ReporteDiario.FieldByName('sOrden').asstring;
                   QrAdicional.ParamByName('Folio').AsString     := qrColumnas.FieldbyName('snumeroorden').AsString;
                   QrAdicional.ParamByName('Fecha').Asdate       := ReporteDiario.FieldByName('dIdFecha').asDatetime;
                   QrAdicional.ParamByName('Categoria').AsString := QrReportado.FieldByName('sIdCategoria').AsString;
                   QrAdicional.Open;

                   lContinuaProceso := False;
                   if QrReportado.FieldByName('sTdPU').AsString = 'PU' then
                   begin
                      if qrColumnas.FieldByName('sTipo').AsString = 'PU' then
                         lContinuaProceso := True;
                   end;

                   if lContinuaProceso then
                   begin
                        if QrAdicional.RecordCount = 1 then
                        begin
//                            mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:= mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat + QrAdicional.FieldByName('dCantidad').value;
                            dTotal:=dTotal+ QrAdicional.FieldByName('dCantidad').Value;

                            if (QrReportado.FieldByName('sTdPu').AsString <> '2C') and (QrReportado.FieldByName('sTdPu').AsString <> '1C') then
//                                mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat:=  mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat + QrAdicional.FieldByName('dCantidad').Value;

//                            if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                            begin
//                                CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                                iPosTmp:= CuentaCol;
//                            end;
                        end
                   end;
               end
               else
               begin
                   if qrColumnas.FieldByName('sTipo').AsString = 'TD' then
                   begin
                       QrAdicional.Active:=false;
                       QrAdicional.ParamByName('Contrato').AsString  := ReporteDiario.FieldByName('sOrden').asstring;
                       QrAdicional.ParamByName('Folio').AsString     := qrColumnas.FieldbyName('snumeroorden').AsString;
                       QrAdicional.ParamByName('Fecha').Asdate       := ReporteDiario.FieldByName('dIdFecha').asDatetime;
                       QrAdicional.ParamByName('Categoria').AsString := QrReportado.FieldByName('sIdCategoria').AsString;
                       QrAdicional.Open;

                       if QrAdicional.RecordCount = 1 then
                       begin
//                           mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:= mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat + QrAdicional.FieldByName('dCantidad').value;

                           if (QrReportado.FieldByName('sTdPu').AsString <> '2C') and (QrReportado.FieldByName('sTdPu').AsString <> '1C') then
                              dTotal:=dTotal+ QrAdicional.FieldByName('dCantidad').Value;

//                           mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat:=  mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat + QrAdicional.FieldByName('dCantidad').Value;

//                           if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                           begin
//                               CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                               iPosTmp:= CuentaCol;
//                           end;
                       end;
                   end;

                   QrPernoctas.Active:=false;
                   QrPernoctas.ParamByName('Folio').AsString := qrColumnas.FieldbyName('snumeroorden').AsString;
                   QrPernoctas.ParamByName('Tipo').AsString  := qrColumnas.FieldByName('sTipo').AsString;
                   QrPernoctas.Open;

                   while not QrPernoctas.Eof do
                   begin
//                        mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=  mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat + (QrPernoctas.FieldByName('dCantidad').value + QrPernoctas.FieldByName('Ajuste').Value);
                        dTotal:=dTotal+ (QrPernoctas.FieldByName('dCantidad').Value + QrPernoctas.FieldByName('Ajuste').Value);

                        if (QrReportado.FieldByName('sTdPu').AsString <> '2C') and (QrReportado.FieldByName('sTdPu').AsString <> '1C') then
//                            mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat:=  mDatos.FieldByName('dcantidad3C' + Inttostr(CuentaCol)).AsFloat + (QrPernoctas.FieldByName('dCantidad').value + QrPernoctas.FieldByName('Ajuste').Value);

//                        if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                        begin
//                            CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                            iPosTmp:= CuentaCol;
//                        end;
                        QrPernoctas.Next;
                   end;

//                   if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                   begin
//                       CantTmp :=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                       iPosTmp := CuentaCol;
//                   end;
               end;
            end;

            Inc(CuentaCol);
            QrColumnas.Next;
          end;

//          mDatos.FieldByName('dcantTotal').AsFloat   := dTotal;
//          mDatos.FieldByName('dcantTotal3C').AsFloat := 0;
//          if (QrReportado.FieldByName('sTdPU').AsString = '3C') or (QrReportado.FieldByName('sTdPU').AsString = 'PU') or (QrReportado.FieldByName('sTdPU').AsString = 'TD') then
//             mDatos.FieldByName('dcantTotal3C').AsFloat := dTotal;
//          mDatos.Post;

          //Aqui acumulamos las pernoctas
          if QrReportado.FieldByName('sTdPu').AsString='' then
//            mDatosDet.Locate('sPadre',QrReportado.FieldByName('sTdPu').AsString,[])
          else
//            mDatosDet.Locate('sPadre',QrReportado.FieldByName('sTdPu').AsString,[]);

//          mDatosDet.Edit;
//          mDatosDet.FieldByName('dCantidad').AsFloat:= mDatosDet.FieldByName('dCantidad').AsFloat + mDatos.FieldByName('dcantTotal').AsFloat;
//          mDatosDet.Post;

          QrReportado.next;
        end;
        Inc(iGrupo,1);
      end;

//      mImprime.Append;
//      mImprime.FieldByName('iCampo').AsInteger:=1;
//      mImprime.Post;

    end;

//    Td_CDistribucionDetPer.DataSet :=mDatosDet;//QrReportado;
    Td_CDistribucionDetPer.FieldAliases.Clear;
//    Td_CDistribucionPer.DataSet    :=MDatos;
    Td_CDistribucionPer.FieldAliases.Clear;
//    Td_CImpDistribucionPer.DataSet :=MImprime;
    Td_CImpDistribucionPer.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_CDistribucionPer);
    Reporte.DataSets.Add(Td_CImpDistribucionPer);
    Reporte.DataSets.Add(Td_CDistribucionDetPer);
  finally
    QrPernoctas.Destroy;
    //QrReportado.Destroy;
    QrColumnas.Destroy;
  end;

end;

Procedure ReportePDF_TotalDePersonal2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
var
  qrPersonal, qryPersonalSol, qryPersonalGral, qryPersonalPep, qrNotas   : TZReadOnlyQuery;
  Td_ResumenPersonal,
  Td_NotasResumenP,
  Td_ResumenPersonalSol,
  Td_ResumenPersonalGral,
  Td_ResumenPersonalPep,
  Td_ImpResumenPersonal : TfrxDBDataset;
  rxPersonal : TrxMemoryData;
begin
    qrPersonal := TZReadOnlyQuery.Create(nil);
    qrPersonal.connection := connection.zconnection;
    qryPersonalPep := TZReadOnlyQuery.Create(nil);
    qryPersonalPep.connection := connection.zconnection;
    qryPersonalSol := TZReadOnlyQuery.Create(nil);
    qryPersonalSol.connection := connection.zconnection;
    qryPersonalGral := TZReadOnlyQuery.Create(nil);
    qryPersonalGral.connection := connection.zconnection;
    qrNotas := TZReadOnlyQuery.Create(nil);
    qrNotas.connection := connection.zConnection;

    Td_ResumenPersonal   := TfrxDBDataset.Create(nil);
    Td_ResumenPersonal.UserName :='Td_ResumenPersonal';
    Td_ResumenPersonalSol   := TfrxDBDataset.Create(nil);
    Td_ResumenPersonalSol.UserName :='Td_ResumenPersonalSol';
    Td_ResumenPersonalGral   := TfrxDBDataset.Create(nil);
    Td_ResumenPersonalGral.UserName :='Td_ResumenPersonalGral';
    Td_NotasResumenP     := TfrxDBDataset.Create(nil);
    Td_NotasResumenP.UserName   :='Td_NotasResumenP';
    Td_ImpResumenPersonal:= TfrxDBDataset.Create(nil);
    Td_ImpResumenPersonal.UserName:='Td_ImpResumenPersonal';
    Td_ResumenPersonalPep   := TfrxDBDataset.Create(nil);
    Td_ResumenPersonalPep.UserName :='Td_ResumenPersonalPep';

    rxPersonal := TrxMemoryData.Create(nil);
    rxPersonal.Active := False;
    rxPersonal.FieldDefs.Add('sDescripcionTipo', ftString, 150, True);
    rxPersonal.FieldDefs.Add('sContrato', ftString, 20, True);
    rxPersonal.FieldDefs.Add('dCantidad', ftFloat, 0, True);
    rxPersonal.Active := True;

    rxPersonal.Append;
    rxPersonal.FieldByName('sDescripcionTipo').AsString := '';
    rxPersonal.FieldByName('sContrato').AsString := '';
    rxPersonal.FieldByName('dCantidad').AsFloat := 0;
    rxPersonal.Post;

    if (TImpresion=FtsTPersonal) or (TImpresion=FtsAll) then
    begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select dFechaVigencia from categorias where dFechaVigencia <=:fecha ');
        connection.zCommand.ParamByName('fecha').AsDate   := Date;
        connection.zCommand.Open;

        //Personal Normal
        qrPersonal.Active := False;
        qrPersonal.SQL.Add( 'select tp.sIdTipoPersonal, td.sIdTripulacion, t.sDescripcion, tp.sDescripcion as titulo, td.dCantidad as iNacionales, td.dSolicitado as iExtranjeros, c.sMascara as sLabelContrato, lPersonalEQ '+
                  'from tripulaciondiaria td '+
                  'inner join tiposdepersonal tp on (tp.sIdTipoPersonal = td.sIdCategoria and sLabelTotal = "NORMAL") '+
                  'inner join tripulacion t on (t.dFechaVigencia =:Vigencia and t.sIdCategoria = tp.sIdTipoPersonal and t.sIdTripulacion = td.sIdTripulacion) '+
                  'inner join rd_proyectos c on (c.sContrato =:Contrato) '+
                  'where td.sContrato =:ContratoBarco and td.dIdFecha =:Fecha '+
                  'order by tp.iOrden, t.iOrden ');
        qrPersonal.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        qrPersonal.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
        qrPersonal.ParamByName('ContratoBarco').AsString := global_Contrato_Barco;
        qrPersonal.ParamByName('Vigencia').AsDate        := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
        qrPersonal.Open;

        //personal de pemex
        qryPersonalPep.Active := False;
        qryPersonalPep.SQL.Add( 'select c.sDescripcion, sum(b.dCantidad) as cantidad, c.sMiGrupoResumen from bitacoradepernocta b '+
                        'inner join categorias c on (c.sIdCategoria = b.sIdCategoria and c.dFechaVigencia = :Vigencia and c.sAgrupadorFinal <> "N/A") '+
                        'where b.sContrato =:Contrato and b.dIdFecha =:Fecha '+
                        'group by c.sIdCategoria '+
                        'order by c.iOrden');
        qryPersonalPep.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        qryPersonalPep.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
        qryPersonalPep.ParamByName('Vigencia').AsDate        := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
        qryPersonalPep.Open;

        //personal solcitado
        qryPersonalSol.Active := False;
        qryPersonalSol.SQL.Add( 'select tp.sIdTipoPersonal, td.sIdTripulacion, t.sDescripcion, tp.sDescripcion as titulo, td.dCantidad as iNacionales, td.dSolicitado as iExtranjeros, c.sMascara as sLabelContrato, lPersonalEQ '+
                  'from tripulaciondiaria td '+
                  'inner join tiposdepersonal tp on (tp.sIdTipoPersonal = td.sIdCategoria and sLabelTotal = "SOLICITADO") '+
                  'inner join tripulacion t on (t.dFechaVigencia =:Vigencia and t.sIdCategoria = tp.sIdTipoPersonal and t.sIdTripulacion = td.sIdTripulacion) '+
                  'inner join rd_proyectos c on (c.sContrato =:Contrato) '+
                  'where td.sContrato =:ContratoBarco and td.dIdFecha =:Fecha '+
                  'order by tp.iOrden, t.iOrden ');
        qryPersonalSol.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        qryPersonalSol.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
        qryPersonalSol.ParamByName('ContratoBarco').AsString := global_Contrato_Barco;
        qryPersonalSol.ParamByName('Vigencia').AsDate        := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
        qryPersonalSol.Open;

        //Personal de tripulacion y compañia
        qryPersonalGral.Active := False;
        qryPersonalGral.SQL.Clear;
        qryPersonalGral.SQL.Add(  'select td.sIdTripulacion, t.sDescripcion, tp.sDescripcion as titulo, SUM(td.dCantidad) as iNacionales, td.dSolicitado as iExtranjeros, c.sMascara as sLabelContrato, lPersonalEQ '+
                      'from tripulaciondiaria td '+
                      'inner join tiposdepersonal tp on (tp.sIdTipoPersonal = td.sIdCategoria and lPernocta = "No" and lPersonalEQ = "No" ) '+
                      'inner join tripulacion t on (t.dFechaVigencia =:Vigencia and t.sIdCategoria = tp.sIdTipoPersonal and t.sIdTripulacion = td.sIdTripulacion) '+
                      'inner join rd_proyectos c on (c.sContrato =:Contrato) '+
                      'where td.sContrato =:ContratoBarco and td.dIdFecha =:Fecha ' +
                      'group by tp.sIdTipoPersonal order by tp.iOrden');
        qryPersonalGral.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        qryPersonalGral.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
        qryPersonalGral.ParamByName('ContratoBarco').AsString := global_Contrato_Barco;
        qryPersonalGral.ParamByName('Vigencia').AsDate        := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
        qryPersonalGral.Open;

        qryPersonalGral.First;
        while not qryPersonalGral.Eof do
        begin
            rxPersonal.Append;
            rxPersonal.FieldByName('sDescripcionTipo').AsString := qryPersonalGral.FieldByName('titulo').AsString;
            rxPersonal.FieldByName('sContrato').AsString        := global_Contrato_Barco;
            rxPersonal.FieldByName('dCantidad').AsFloat         := qryPersonalGral.FieldByName('iNacionales').AsFloat;
            rxPersonal.Post;
            qryPersonalGral.Next;
        end;

        //Personal de PEMEX
        qryPersonalGral.Active := False;
        qryPersonalGral.SQL.Clear;
        qryPersonalGral.SQL.Add( 'select c.sDescripcion, sum(b.dCantidad) as cantidad, c.sAgrupadorFinal from bitacoradepernocta b '+
                        'inner join categorias c on (c.sIdCategoria = b.sIdCategoria and c.dFechaVigencia = :Vigencia and c.sAgrupadorFinal <> "N/A") '+
                        'where b.sContrato =:Contrato and b.dIdFecha =:Fecha '+
                        'group by c.sAgrupadorFinal '+
                        'order by c.iOrden');
        qryPersonalGral.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        qryPersonalGral.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
        qryPersonalGral.ParamByName('Vigencia').AsDate        := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
        qryPersonalGral.Open;

        qryPersonalGral.First;
        while not qryPersonalGral.Eof do
        begin
            rxPersonal.Append;
            rxPersonal.FieldByName('sDescripcionTipo').AsString := qryPersonalGral.FieldByName('sAgrupadorFinal').AsString;
            rxPersonal.FieldByName('sContrato').AsString        := global_Contrato_Barco;
            rxPersonal.FieldByName('dCantidad').AsFloat         := qryPersonalGral.FieldByName('cantidad').AsFloat;
            rxPersonal.Post;
            qryPersonalGral.Next;
        end;

        //Personal de contruccion
        qryPersonalGral.Active := False;
        qryPersonalGral.SQL.Clear;
        qryPersonalGral.SQL.Add( 'select td.sIdTripulacion, t.sDescripcion, tp.sDescripcion as titulo, SUM(td.dCantidad) as iNacionales, td.dSolicitado as iExtranjeros, c.sMascara as sLabelContrato, lPersonalEQ '+
                      'from tripulaciondiaria td '+
                      'inner join tiposdepersonal tp on (tp.sIdTipoPersonal = td.sIdCategoria and lPernocta = "No" and lPersonalEQ = "Si" ) '+
                      'inner join tripulacion t on (t.dFechaVigencia =:Vigencia and t.sIdCategoria = tp.sIdTipoPersonal and t.sIdTripulacion = td.sIdTripulacion) '+
                      'inner join rd_proyectos c on (c.sContrato =:Contrato) '+
                      'where td.sContrato =:ContratoBarco and td.dIdFecha =:Fecha ' +
                      'group by tp.sIdTipoPersonal order by tp.iOrden');
        qryPersonalGral.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        qryPersonalGral.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
        qryPersonalGral.ParamByName('ContratoBarco').AsString := global_Contrato_Barco;
        qryPersonalGral.ParamByName('Vigencia').AsDate        := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
        qryPersonalGral.Open;

        qryPersonalGral.First;
        while not qryPersonalGral.Eof do
        begin
            rxPersonal.Append;
            rxPersonal.FieldByName('sDescripcionTipo').AsString := qryPersonalGral.FieldByName('titulo').AsString;
            rxPersonal.FieldByName('sContrato').AsString        := global_Contrato_Barco;
            rxPersonal.FieldByName('dCantidad').AsFloat         := qryPersonalGral.FieldByName('iNacionales').AsFloat;
            rxPersonal.Post;
            qryPersonalGral.Next;
        end;

        qrNotas.SQL.Text := 'select '+
                              'sNotaGeneral as mDescripcion '+
                            'from notas_generales '+
                            'where '+
                              'sContrato = :orden and '+
                              'dIdFecha = :fecha and '+
                              'eAplicaResumenPersonal = "Si"; ';
        qrNotas.ParamByName( 'orden' ).AsString := global_contrato;
        qrNotas.ParamByName( 'fecha' ).AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        qrNotas.Open;

        rxPersonal.First;
        rxPersonal.Delete;

        Td_ImpResumenPersonal.DataSet := qrPersonal;
        Td_NotasResumenP.DataSet      := qrNotas;

        {Esta secccion es para mostrar la hoja vacia sino existen datos.}
        if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
           if qrPersonal.RecordCount = 0 then
              Td_ImpResumenPersonal.DataSet := rxPersonal;
    end
    else
    begin
        rxPersonal.Delete;
        Td_ResumenPersonal.DataSet   := rxPersonal;
        Td_ImpResumenPersonal.DataSet:= rxPersonal;
    end;

    Td_NotasResumenP.DataSet:= qrNotas;
    Td_NotasResumenP.FieldAliases.Clear;

    Td_ResumenPersonal.DataSet:= qrPersonal;
    Td_ResumenPersonal.FieldAliases.Clear;

    Td_ResumenPersonalSol.DataSet:= QryPersonalSol;
    Td_ResumenPersonalSol.FieldAliases.Clear;

    Td_ResumenPersonalGral.DataSet:= rxPersonal;
    Td_ResumenPersonalGral.FieldAliases.Clear;

    Td_ImpResumenPersonal.DataSet:= rxPersonal;
    Td_ImpResumenPersonal.FieldAliases.Clear;

    Td_ResumenPersonalPep.DataSet:= qryPersonalPep;
    Td_ResumenPersonalPep.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_ResumenPersonal);
    Reporte.DataSets.Add(Td_ResumenPersonalSol);
    Reporte.DataSets.Add(Td_ResumenPersonalGral);
    Reporte.DataSets.Add(Td_NotasResumenP);
    Reporte.DataSets.Add(Td_ResumenPersonalPep);
end;

Procedure ReportePDF_ResumenMaterial2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
   QryResumenMaterial: TZQuery;
   lInsertar : boolean;
   sFolio    : string;
   Td_resumenMaterial,
   Td_ImpResumenMaterial  : TfrxDBDataset;
   rxResumenMaterial : TrxMemoryData;
begin
  Try
    QryResumenMaterial := TZQuery.Create(nil);
    QryResumenMaterial.Connection := Connection.zConnection;

    Td_resumenMaterial:= TfrxDBDataset.Create(nil);
    Td_resumenMaterial.UserName:='Td_resumenMaterial';

    Td_ImpResumenMaterial:= TfrxDBDataset.Create(nil);
    Td_ImpResumenMaterial.UserName:='Td_ImpResumenMaterial';

    rxResumenMaterial := TrxMemoryData.Create(nil);
    rxResumenMaterial.Active := False;
    rxResumenMaterial.FieldDefs.Add('sNumeroOrden', ftString, 0, True);
    rxResumenMaterial.FieldDefs.Add('sNumeroActividad', ftString, 0, True);
    rxResumenMaterial.FieldDefs.Add('sTrazabilidad', ftString, 0, True);
    rxResumenMaterial.FieldDefs.Add('dCantidad', ftFloat, 0, True);
    rxResumenMaterial.FieldDefs.Add('sMedida', ftString, 0, True);
    rxResumenMaterial.FieldDefs.Add('sIdProveedor', ftString, 0, True);
    rxResumenMaterial.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
    rxResumenMaterial.Active := True;

    if (TImpresion=FtsRMaterial) or (TImpresion=FtsAll) then
    begin
        {$REGION 'CONSULTA MATERIALES'}

          QryResumenMaterial.SQL.Add( 'select s.sNumeroOrden, b.sNumeroActividad, b.sTrazabilidad, i.mDescripcion, i.sMedida, sum(b.dCantidad) as dCantidad, i.sIdProveedor from almacen_salida s '+
                            'inner join bitacoradesalida b '+
                            'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida and b.sext = s.sext) '+
                            'inner join insumos i '+
                            'on (i.sContrato =:Contrato and i.sIdInsumo = b.sIdInsumo and i.sTrazabilidad = b.sTrazabilidad ) '+
                            'where s.sContrato =:orden and b.dFechaSalida =:fecha '+
                            'group by b.sNumeroOrden, b.sNumeroActividad, b.sIdInsumo, b.sTrazabilidad Order by b.sNumeroOrden, b.sNumeroActividad, b.sTrazabilidad');
          QryResumenMaterial.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
          QryResumenMaterial.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sOrden').AsString;
          QryResumenMaterial.ParamByName('Contrato').AsString := global_Contrato_Barco;
          QryResumenMaterial.Open;

        {$ENDREGION}
        Td_resumenMaterial.DataSet:= QryResumenMaterial;
        Td_ImpResumenMaterial.DataSet:= QryResumenMaterial;

        {Esta secccion es para mostrar la hoja vacia sino existen datos.}
        if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
        begin
            if QryResumenMaterial.RecordCount = 0 then
            begin
               rxResumenMaterial.Append;
               rxResumenMAterial.FieldValues['sNumeroOrden'] := '';
               rxResumenMaterial.Post;

               Td_resumenMaterial.DataSet   := rxResumenMaterial;
               Td_ImpResumenMaterial.DataSet:= rxResumenMaterial;
            end;
        end;
    end
    else
    begin
        {Solo se envian los campos del datset..}
        Td_resumenMaterial.DataSet   := rxResumenMaterial;
        Td_ImpResumenMaterial.DataSet:= rxResumenMaterial;
    end;

    Td_resumenMaterial.FieldAliases.Clear;
    Td_ImpResumenMaterial.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_resumenMaterial);
    Reporte.DataSets.Add(Td_ImpResumenMaterial);
  Finally

  End;
end;

Procedure ReportePDF_ConsumosDiesel(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
  QryConsumosDiesel: TZQuery;
  dSumaConsumos : double;
  Td_consumoEquipos,
  Td_ImpConsumoEquipos  : TfrxDBDataset;
  rxConsumoEQ : TrxMemoryData;
  lImprimeRX  : Boolean;
begin
  Try
//    QryConsumosDiesel := TZQuery.Create(nil);
//    QryConsumosDiesel.Connection := Connection.zConnection;
//
//    Td_consumoEquipos:= TfrxDBDataset.Create(nil);
//    Td_consumoEquipos.UserName:='Td_consumoEquipos';
//
//    Td_ImpConsumoEquipos:= TfrxDBDataset.Create(nil);
//    Td_ImpConsumoEquipos.UserName:='Td_ImpConsumoEquipos';

//    rxConsumoEQ := TrxMemoryData.Create(nil);
//    rxConsumoEQ.Active := False;
//    rxConsumoEQ.FieldDefs.Add('sDescripcion', ftString, 0, True);
//    rxConsumoEQ.FieldDefs.Add('sNumeroOrden', ftString, 0, True);
//    rxConsumoEQ.FieldDefs.Add('sIdPlataforma', ftString, 0, True);
//    rxConsumoEQ.FieldDefs.Add('dCantidad', ftFloat, 0, True);
//    rxConsumoEQ.Active := True;
//    rxConsumoEQ.Append;
//    rxConsumoEQ.FieldValues['sDescripcion'] := '';
//    rxConsumoEQ.Post;
//    lImprimeRX := False;
//
//    if (TImpresion=FtsCCombustible) or (TImpresion=FtsAll) then
//    begin
//       {$REGION 'INSERCION DE DATOS'}
//        QryConsumosDiesel.SQL.Clear;
//        QryConsumosDiesel.SQL.Add('SELECT ' +
//                                  '	eq.sDescripcionDiesel AS sDescripcion, ' +
//                                  '	ce.sNumerosDeSerie, ' +
//                                  '	re.sDescripcion AS sConsumible, ' +
//                                  '	ce.sMedida, ' +
//                                  '	ce.dCantidad, ' +
//                                  ' ce.sNumeroOrden, '+
//                                  ' ce.sIdPlataforma, '+
//                                  ' (select sNotaGeneral from notas_generales where sContrato =:Orden and dIdFecha =:Fecha and lAplicaConsumos = "si") as NotaGeneral ' +
//                                  'FROM consumosdecombustibleporequipo AS ce ' +
//                                  '	INNER JOIN equipos AS eq ' +
//                                  '		ON (eq.sIdEquipo = ce.sIdEquipo AND eq.sContrato = :ContratoBarco) ' +
//                                  '	INNER JOIN recursosdeexistencias AS re ' +
//                                  '		ON (re.iIdRecursoExistencia = ce.iIdTipoConsumo) ' +
//                                  'WHERE ' +
//                                  '	ce.dIdFecha = :Fecha ' +
//                                  '	AND ce.sContrato = :Orden;');
//        QryConsumosDiesel.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
//        QryConsumosDiesel.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
//        QryConsumosDiesel.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
//        QryConsumosDiesel.Open;
//        {$ENDREGION}
//
//        Td_consumoEquipos.DataSet    := QryConsumosDiesel;
//        Td_consumoEquipos.FieldAliases.Clear;
//
//        Td_ImpConsumoEquipos.DataSet := QryConsumosDiesel;
//        Td_ImpConsumoEquipos.FieldAliases.Clear;
//
//        {Esta secccion es para mostrar la hoja vacia sino existen datos.}
//        if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
//           if QryConsumosDiesel.RecordCount = 0 then
//              lImprimeRx := True;
//    end
//    else
//    begin
//        rxConsumoEQ.Delete;
//        lImprimeRX := True;
//    end;
//
//    if lImprimeRX then
//    begin
//        Td_consumoEquipos.DataSet    := rxConsumoEQ;
//        Td_consumoEquipos.FieldAliases.Clear;
//
//        Td_ImpConsumoEquipos.DataSet := rxConsumoEQ;
//        Td_ImpConsumoEquipos.FieldAliases.Clear;
//    end;
//
//    Reporte.DataSets.Add(Td_consumoEquipos);

    Finally

    End;
end;

Procedure ReportePDF_Listadepersonal(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
  lista_personal: TZQuery;
  sCategoria : string;
//  mImprime:TJvMemoryData;
  Td_CImpListadoPer: TfrxDBDataset;
  Td_CListadoPer: TfrxDBDataset;
begin
  lista_personal := TZQuery.Create(nil);
//  mImprime:=TJvMemoryData.Create(nil);
  Td_CListadoPer:=TfrxDBDataset.Create(nil);
  Td_CImpListadoPer:=TfrxDBDataset.Create(nil);
  Try
    {$REGION 'CONSULTA'}

    Td_CListadoPer.UserName:='Td_CListadoPer';
    Td_CImpListadoPer.UserName:='Td_CImpListadoPer';

    lista_personal.Connection := Connection.zConnection;
    lista_personal.Active := False;
    lista_personal.Sql.Clear;
    lista_personal.Sql.Add('select td.*, cat.sDescripcion as categoria,cp.sdescripcion as compania, td.sIdPernocta, e.sDescripcion as barco '+
                  'from tripulaciondiaria_listado td '+
                  'inner join categorias cat on (cat.sIdCategoria = td.sIdCategoria and cat.dFechaVigencia <= td.dIdFecha) '+
                  'left join compersonal cp on(cp.sIdCompania=td.sIdCompania) '  +
                  'inner join embarcaciones e '+
                  'on (e.sIdEmbarcacion = td.sIdPernocta) '+
                  'where td.sContrato=:contrato and td.sOrden =:Orden and td.dIdFecha=:fecha and td.lImprimeListado="Si" and td.sIdTurno =:turno '+
                  'order by e.iOrden, cat.sIdCategoria, td.sOrden, td.sDescripcion,td.snumerocabina desc ');

//    with mImprime do
//    begin
//      Active:=false;
//      FieldDefs.Add('iCampo', ftInteger, 0, True);
//      Active:=true;
//    end;
//
//    mImprime.EmptyTable;
    if (TImpresion=FtsLPersonal) or (TImpresion=FtsAll) then
    begin
      lista_personal.Active := False;
      lista_personal.ParamByName('Contrato').DataType := ftString;
      lista_personal.ParamByName('Contrato').Value    := global_Contrato_Barco;
      lista_personal.ParamByName('Orden').asString    := Reportediario.FieldByName('sOrden').AsString;
      lista_personal.ParamByName('Turno').DataType    := ftString;
      lista_personal.ParamByName('Turno').Value       := ReporteDiario.FieldByName('sIdTurno').AsString;
      lista_personal.ParamByName('Fecha').DataType    := ftDate;
      lista_personal.ParamByName('Fecha').Value       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;;
      lista_personal.Open;

      {Esta secccion es para mostrar la hoja vacia sino existen datos.}
      //if  then

          if (lista_personal.RecordCount > 0) or
          (connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si') then
          begin
//            mImprime.Append;
//            mImprime.FieldByName('iCampo').AsInteger:=1;
//            mImprime.Post;
          end;
    end
    else
      lista_personal.Open;
    {$ENDREGION}
    Td_CListadoPer.DataSet:=lista_personal;
    Td_CListadoPer.FieldAliases.Clear;
//    Td_CImpListadoPer.DataSet:=MImprime;
    Td_CImpListadoPer.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_CListadoPer);
    Reporte.DataSets.Add(Td_CImpListadoPer);


  Finally

  End;
end;

Procedure ReportePDF_DistribucionDeEquipos2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
var
  QrMoe,
  QrColumnas,
  QrRecursos,
  QryEmbarcacion: TZQuery;
//  mDatos:TJvMemoryData;
  ZqEqBarcos : tzreadonlyquery;
  CuentaCol,iGrupo,iCiclo: Integer;
  DCiclo,dTotal:Double;
  Td_CDistribucionE:TfrxDBDataset;
//  mImprime:TJvMemoryData;
  Td_CImpDistribucionE: TfrxDBDataset;
  ValTmp:Variant;
  CantTmp, dSubTotal, dSubTotalPU :Double;
  iPosTmp:Integer;
  lImprimeRecurso : string;
begin

  QrMoe := TZQuery.Create(nil);
  QrColumnas := TZQuery.Create(nil);
  QrRecursos := TZQuery.Create(nil);
//  mDatos:=TJvMemoryData.Create(nil);
//  mImprime:=TJvMemoryData.Create(nil);
  Td_CDistribucionE:=TfrxDBDataset.Create(nil);
  Td_CImpDistribucionE:=TfrxDBDataset.Create(nil);
  Try
    QrColumnas.Connection := Connection.zConnection;
    QrMoe.Connection := Connection.zConnection;
    QrRecursos.Connection := Connection.zConnection;
    Td_CDistribucionE.UserName:='Td_CDistribucionE';
    Td_CImpDistribucionE.UserName:='Td_CImpDistribucionE';
//    with mDatos do
//    begin
//      Active:=false;
//      FieldDefs.Add('iGrupo', ftInteger, 0, True);
//      FieldDefs.Add('iTotalGrupo', ftInteger, 0, True);
//      FieldDefs.Add('sidrecurso', ftString, 100, True);
//      FieldDefs.Add('sdescripcion', ftString, 350, True);
//      FieldDefs.Add('smedida', ftString, 100, True);
//      FieldDefs.Add('dcantSol', FtFloat, 0, True);
//      FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//      FieldDefs.Add('dcantTotalPU', FtFloat, 0, True);
//      for CuentaCol:=1 to TotalCol do
//      begin
//        FieldDefs.Add('dcantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//        FieldDefs.Add('sNumeroOrden'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPernocta' + Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPlataforma'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sTipo'+ Inttostr(CuentaCol), ftString, 10, false);
//      end;
//      Active:=true;
//    end;

//    with mImprime do
//    begin
//      Active:=false;
//      FieldDefs.Add('iCampo', ftInteger, 0, True);
//      Active:=true;
//    end;
//
//    mImprime.EmptyTable;

    if (TImpresion=FtsCEquipos) or (TImpresion=FtsAll) then
    begin
      {$REGION 'Recursos'}
      QrRecursos.Active := False;
      QrRecursos.SQL.Clear;
      QrRecursos.SQL.Add( 'select be.sIdEquipo, round(sum(be.dCantHH),2) as Total, '+
                          'ifnull(SUM(be.dAjuste),0) AS Ajuste, be.lImprime '+
                          'from bitacoradeequipos be '+
                          'inner join equipos e '+
                          'on ( e.sIdEquipo = be.sIdEquipo ) '+
                          'inner join bitacoradeactividades ba '+
                          'on ( ba.sContrato = :contrato and ba.dIdFecha = :fecha '+
                               'and ba.sNumeroOrden = :folio '+
                               'and ba.iIdDiario = be.iIdDiario '+
                          'and ba.iIdTarea = be.iIdTarea and ba.iIdActividad = be.iIdActividad) '+
                          'where e.sContrato = :contratoBarco '+
                          'and be.sContrato = :contrato '+
                          'and be.sNumeroOrden = :folio '+
                          'and be.sIdPernocta = :pernocta '+
                          'and be.dIdFecha = :fecha '+
                          'and be.sIdEquipo=:equipo and be.sTipoObra =:Tipo ' +
                          'group by e.sIdEquipo '+
                          'order by e.iItemOrden');
      {$endregion}

      {$REGION 'CONSULTAS - PARTIDAS'}
      QrColumnas.Active:=false;
      QrColumnas.SQL.Add( 'select ot.sContrato,ot.sIdFolio, '+
                          'ot.sNumeroOrden, be.sTipoObra as sTipo, '+
                          'be.sIdPernocta AS PernoctaP, '+
                          'ot.sIdPlataforma AS idPlataforma, '+
                          'p.sDescripcion as Pernocta, '+
                          'pt.sDescripcion as Plataforma, '+
                          'be.sTipoObra as sTipo '+
                          'from ordenesdetrabajo ot '+
                          'inner join rd_proyectos c '+
                          'on ( c.sContrato = ot.sContrato ) '+
                          'inner join bitacoradeequipos be '+
                          'on ( be.sContrato = ot.sContrato and be.sNumeroOrden = ot.sNumeroOrden ) '+
                          'inner join pernoctan p '+
                          'on ( ot.sIdPernocta = p.sIdPernocta) '+
                          'inner join plataformas pt '+
                          'on ( ot.sIdPlataforma = pt.sIdPlataforma ) '+
                          'where c.sContrato = :contrato '+
                          'and be.dIdFecha = :fecha '+
                          'group by ot.sNumeroOrden, be.sIdPernocta, be.sIdPlataforma, be.sTipoObra '+
                          'order by ot.sContrato, ot.iOrden ASC, be.sTipoObra  DESC' );
        QrColumnas.ParamByName('Contrato').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
        QrColumnas.ParamByName('Fecha').AsDate:=reportediario.FieldByName('dIdFecha').AsDateTime;
        QrColumnas.Open;
      {$ENDREGION}


      {$REGION 'CONSULTAS - TODOS LOS EQUIPOS REGISTRADOS EN MOE'}

      QrMoe.Active := False;
      QrMoe.SQL.Clear;
      QrMoe.SQL.Add('select mr.sIdRecurso, e.sDescripcion, e.sMedida, mr.dCantidad '+
                    'from moe m '+
                    'inner join moerecursos mr '+
                    'on ( mr.iIdMoe = m.iIdMoe ) '+
                    'inner join equipos e '+
                    'on ( e.sContrato = :contratobarco and e.sIdEquipo = mr.sIdRecurso ) '+
                    'where m.dIdFecha = (select max(didfecha) from moe where didfecha <=:Fecha and sContrato = :contrato) '+
                    'and m.sContrato = :contrato '+
                    'and mr.eTipoRecurso = "Equipo" '+
                    'order by e.iItemOrden');
      QrMoe.ParamByName('contratobarco').AsString := Global_Contrato_Barco;
      QrMoe.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;
      QrMoe.ParamByName('Fecha').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
      QrMoe.Open;

      {$ENDREGION}

      {$REGION 'INSERCION DE DATOS - INFORMACIÓN DEL EQUIPO'}

      DCiclo:=QrColumnas.RecordCount/TotalCol;
      iCiclo:=Trunc(DCiclo);
      if (dCiclo -iCiclo)>0 then
        Inc(iCiclo,1);

      iGrupo:=1;
      dSubTotal := 0;
      dSubTotalPU := 0;
      while iGrupo<=iCiclo do
      begin
        with qrMoe do
        begin
          first;
          while not eof do
          begin
            if iGrupo > 1 then
            begin
//               mDatos.Filtered := False;
//               mDatos.Filter   := ' iGrupo ='+IntToStr(iGrupo-1);
//               mDatos.Filtered := True;
//
//               mDatos.Locate('sidrecurso',FieldByName('sidrecurso').asstring, []);
//
//               dSubTotal   := mDatos.FieldByName('dcantTotal').AsFloat;
//               dSubTotalPU := mDatos.FieldByName('dcantTotalPU').AsFloat;
//               mDatos.Filtered := False;

            end;

//            mDatos.Append;
//            mDatos.FieldByName('iGrupo').AsInteger      :=Igrupo;
//            mDatos.FieldByName('iTotalGrupo').AsInteger :=iCiclo;
//            mDatos.FieldByName('sidrecurso').AsString   :=FieldByName('sidrecurso').asstring;
//            mDatos.FieldByName('sdescripcion').AsString :=fieldbyname('sdescripcion').asstring;
//            mDatos.FieldByName('smedida').AsString      :=fieldbyname('smedida').asstring;
//            mDatos.FieldByName('dcantSol').AsFloat      :=fieldbyname('dcantidad').AsFloat;
//            mDatos.FieldByName('dcantTotalPU').AsFloat  :=dSubTotalPU;
//            mDatos.FieldByName('dCantTotal').AsFloat    :=dSubTotal;
            dTotal:=0;
            if iGrupo=1 then
              QrColumnas.First
            else
              QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

            CuentaCol:=1;
            ValTmp:=0;
            CantTmp:=0;
            iPosTmp:=0;
            lImprimeRecurso := 'Si';
            while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
            begin

//              mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString := QrColumnas.FieldbyName('sIdFolio').AsString;
//              mDatos.FieldByName('sPernocta' + Inttostr(CuentaCol)).AsString   := QrColumnas.Fieldbyname('Pernocta').asstring;
//              mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString  := QrColumnas.Fieldbyname('Plataforma').Asstring;
//              mDatos.FieldByName('sTipo'+ Inttostr(CuentaCol)).AsString        := QrColumnas.Fieldbyname('sTipo').Asstring;

              QrRecursos.Active := False;
              QrRecursos.ParamByName('Equipo').AsString := FieldByName('sIdRecurso').AsString;

              QrRecursos.ParamByName('contratoBarco').AsString := global_contrato_barco;
              QrRecursos.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
              QrRecursos.ParamByName('folio').AsString         := QrColumnas.FieldByName('sNumeroOrden').AsString;
              QrRecursos.ParamByName('fecha').AsDate           := reportediario.FieldByName('dIdFecha').AsDateTime;
              QrRecursos.ParamByName('pernocta').AsString      := QrColumnas.FieldByName('PernoctaP').AsString;
              QrRecursos.ParamByName('Tipo').AsString          := QrColumnas.Fieldbyname('sTipo').Asstring;
              QrRecursos.Open;

              if QrRecursos.RecordCount>0 then
              begin
//                mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat := (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
                dTotal                                                        := dTotal+ (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
                ValTmp                                                        := (ValTmp + QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value );
//                if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                begin
//                  CantTmp := mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                  iPosTmp := CuentaCol;
//                end;

                if QrColumnas.Fieldbyname('sTipo').Asstring = 'TD' then
//                   mDatos.FieldByName('dcantTotal').AsFloat   := mDatos.FieldByName('dcantTotal').AsFloat + mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat
                else
//                   mDatos.FieldByName('dcantTotalPU').AsFloat := mDatos.FieldByName('dcantTotalPU').AsFloat + mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;

                lImprimeRecurso := QrRecursos.FieldByName('lImprime').AsString;
              end;
              QrColumnas.next;
              Inc(CuentaCol);
            end;

              if dTotal<>xRound(ValTmp,2) then
              begin
//                 mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat:= mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat
//                 + (xRound(ValTmp,2)-dTotal);
              end;

              if lImprimeRecurso = 'Si' then
//                 mDatos.Post
              else
//                 mDatos.Cancel;

            next;
          end;
        end;
        Inc(iGrupo,1);
      end;


//      {Esta secccion es para mostrar la hoja vacia sino existen datos.}
//      if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
//         if MDatos.RecordCount >= 0 then
//      else
//      if MDatos.RecordCount > 0 then
//      begin
//        mImprime.Append;
//        mImprime.FieldByName('iCampo').AsInteger:=1;
//        mImprime.Post;
//      end;
      {$ENDREGION}
    end;
//    Td_CDistribucionE.DataSet:=MDatos;
    Td_CDistribucionE.FieldAliases.Clear;
//    Td_CImpDistribucionE.DataSet:=MImprime;
    Td_CImpDistribucionE.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_CDistribucionE);
    Reporte.DataSets.Add(Td_CImpDistribucionE);
  Finally
    QrMoe.Free;
    QrRecursos.Free;
    QrColumnas.Destroy;
  End;
end;

procedure ReportePDF_ResumenDeRecursos(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
var
  QrMoeP,         //Moe Personal
  QrMoeE,         //Moe Equipo
  QrColumnas,     //Folios, Pernoctas, Plataformas
  QrMovBarco,     //Movimientos del barco
  QrPersonal,     //Personal
  QrEquipo,       //Equipo
  QrPernoctas     //Pernoctas
  : TZReadOnlyQuery;

  iFilaM,   //Moe
  iFilaP,   //Personal
  iFilaE,   //Equipo
  iFilaPr,  //Pernoctas
  iColumna,
  x : Integer;
begin
  //Sam
  try
    try
      {$REGION 'CREA TZREADQUERY'}
      QrMovBarco := TZReadOnlyQuery.Create(nil);
      QrMovBarco.connection := connection.zconnection;
      QrColumnas := TZReadOnlyQuery.Create(nil);
      QrColumnas.connection := connection.zconnection;
      QrMoeP := TZReadOnlyQuery.Create(nil);
      QrMoeP.connection := connection.zconnection;
      QrMoeE := TZReadOnlyQuery.Create(nil);
      QrMoeE.connection := connection.zconnection;
      QrPersonal := TZReadOnlyQuery.Create(nil);
      QrPersonal.connection := connection.zconnection;
      QrEquipo := TZReadOnLyQuery.Create(nil);
      QrEquipo.connection := connection.zconnection;
      QrPernoctas := TZReadOnlyQuery.Create(nil);
      QrPernoctas.Connection := connection.zconnection;
      {$ENDREGION}

      {FILIOS DEL DIA}
      {$REGION 'CONSULTA COLUMNAS - FOLIOS LABORADOS'}
      with QrColumnas do
      begin
        active := false;
        sql.text := 'select ot.sIdFolio, '+
                           'ot.sIdPernocta, '+
                           'ot.sIdPlataforma, '+
                           'p.sDescripcion as sPernocta, '+
                           'pt.sDescripcion as sPlataforma '+
                    'from ordenesdetrabajo ot '+
                    'inner join rd_proyectos c '+
                    'on ( c.sContrato = ot.sContrato ) '+
                    'inner join bitacoradeequipos be '+
                    'on ( be.sContrato = ot.sContrato and be.sNumeroOrden = ot.sNumeroOrden ) '+
                    'inner join pernoctan p '+
                    'on ( ot.sIdPernocta = p.sIdPernocta) '+
                    'inner join plataformas pt '+
                    'on ( ot.sIdPlataforma = pt.sIdPlataforma ) '+
                    'where c.sContrato = :contrato '+
                    'and be.dIdFecha = :fecha '+
                    'group by ot.sIdFolio, p.sIdPernocta';
        parambyname('contrato').asstring := ReporteDiario.fieldbyname('sOrden').asstring;
        parambyname('fecha').asdate      := reportediario.fieldbyname('didfecha').asdatetime;
        open;
      end;
      {$ENDREGION}

      if QrColumnas.RecordCount > 0 then
      begin
        {COLUMNAS TIENEN QUE ESTAR ALINEADAS CON EL LOGO
        EN CASO QUE NO EXISTAN SUFICIENTES DEBERAN CREARSE}
        {$REGION 'CREA COLUMNAS'}
        with QrColumnas do
        begin
          first;

        {$ENDREGION}

        {CONSULTA MOVIMIENTOS DEL BARCO}
        {$REGION 'CONSULTA MOVIMIENTOS DEL BARCO YA CON SU FACTOR POR FOLIO'}
        with QrMovBarco do
        begin
          active := false;
          sql.text := 'select tm.sIdTipoMovimiento, '+
                             'tm.sDescripcion, '+
                             'tm.sMedida, '+
                             ' ot.sIdFolio, '+
                             'ot.sIdPernocta, '+
                             'ot.sIdPlataforma, '+
                             'sum( me.sFactor ) as sFactor '+
                      'from movimientosdeembarcacion me '+
                      'inner join tiposdemovimiento tm '+
                        'on ( me.sContrato = tm.sContrato '+
                           'and me.sClasificacion = tm.sIdTipoMovimiento) '+
                      'inner join movimientosxfolios mf '+
                        'on ( mf.sContrato = me.sContrato '+
                           'and mf.dIdFecha = me.dIdFecha '+
                           'and mf.iIdDiario = me.iIdDiario) '+
                      'inner join ordenesdetrabajo ot '+
                      'on ( ot.sContrato = :contrato '+
                           'and ot.sIdFolio = mf.sFolio)'+
                      'where tm.sContrato = :contratoBarco '+
                      'and tm.sClasificacion = "Movimiento de Barco" '+
                      'and me.dIdFecha = :fecha '+
                      'group by tm.sIdTipoMovimiento';
          parambyname('contratobarco').asstring := global_contrato_barco;
          parambyname('contrato').asstring := reportediario.FieldByName('sOrden').asstring;
          parambyname('fecha').AsDate := reportediario.fieldbyname('didfecha').asdatetime;
          open;
        end;
        {$ENDREGION}

        {TRABAJA EN EXCEL LOS MOVIMIENTOS}
        {$REGION 'ESCRIBE LOS MOV BARCO'}
        if QrMovBarco.RecordCount > 0 then
        begin
          with QrMovBarco do
          begin
            while not Eof do
            begin
              fieldbyname('sidtipomovimiento').asstring;
              fieldbyname('sdescripcion').asstring;
              fieldbyname('smedida').asstring;
              next;
            end;
          end;
        end;
        {$ENDREGION}

        {PERSONAL REGISTRADO EN EL MOE}
        {$REGION 'CONSULTA Y ESCRIBE PERSONAL SOLICITADO EN EL ULTIMO MOE VIGENTE'}
        with QrMoeP do
        begin
          active := false;    
          sql.text := 'select p.sDescripcion, '+
                             'mr.*, p.lSumaSolicitado, '+
                             'p.sMedida, m.iidmoe '+
                      'from moe AS m '+
                      'inner join moerecursos as mr '+
                        'on (mr.iidMoe=m.iidMoe) '+
                      'inner join personal as p '+
                        'ON (p.scontrato=:contratoBarco '+
                            'and p.sidpersonal=mr.sidRecurso) '+
                      'where m.didfecha = (select max(didfecha) '+
                                          'from moe where didfecha <=:Fecha '+
                                          'and sContrato = :contrato) '+
                      'and m.sContrato = :contrato '+
                      'and mr.eTipoRecurso = "Personal" '+
                      'order by p.iItemOrden';
          parambyname('contratoBarco').asstring := global_contrato_barco;
          parambyname('contrato').asstring := reportediario.fieldbyname('sOrden').asstring;
          parambyname('fecha').asdate := reportediario.fieldbyname('didfecha').asdatetime;
          open;

          if recordcount > 0 then
          begin
            first;
            while not Eof do
            begin
              fieldbyname('sidrecurso').AsString;
              fieldbyname('sdescripcion').asstring;
              fieldbyname('smedida').asstring;
              next;
            end;
          end;
        end;
        {$ENDREGION}
        {EQUIPO REGISTRADO EN EL MOE}
        {$REGION 'CONSULTA Y ESCRIBE EL EQUIPO SOLICITADO EN EL ULTIMO MOE VIGENTE'}
        with QrMoeE do
        begin
          active := false;
          sql.Text := 'SELECT p.sidequipo, p.sDescripcion, p.sMedida ' +
                      'FROM moerecursos AS mr ' +
                      'INNER JOIN moe AS m ' +
                      'ON (m.iidMoe=mr.iidMoe) ' +
                      'INNER JOIN equipos AS p ' +
                      'ON (p.sContrato=:Contrato AND p.sIdEquipo=mr.sidRecurso) ' +
                      'LEFT JOIN gruposdeequipo AS ge ' +
                      'ON (ge.iId = p.iId_AgrupadorEquipo) ' +
                      'WHERE ' +
                      'dIdFecha = (SELECT max(didfecha) FROM moe WHERE didfecha <=:Fecha AND sContrato = :ContratoNormal) ' +
                      'AND m.sContrato = :ContratoNormal ' +
                      'AND mr.eTipoRecurso="Equipo" ' +
                      'ORDER BY p.iItemOrden';
          parambyname('contrato').asstring := global_contrato_barco;
          parambyname('contratoNormal').asstring := reportediario.fieldbyname('sOrden').asstring;
          parambyname('fecha').asdate := reportediario.fieldbyname('didfecha').asdatetime;
          open;

          if recordcount > 0 then
          begin
            first;
            while not eof do
            begin
              fieldbyname('sidequipo').AsString;
              fieldbyname('sdescripcion').asstring;
              fieldbyname('smedida').asstring;
              next;
            end;
          end;
        end;
        {$ENDREGION}

        qrColumnas.First;
        while not QrColumnas.Eof do
        begin
          {DATOS DE LA COLUMNA}
          {$REGION 'COLUMNAS'}
          QrColumnas.FieldByName('sidfolio').asstring;
          QrColumnas.FieldByName('splataforma').asstring;
          {$ENDREGION}

          {BARCO ANEXO C}
          {$REGION 'INSERTA BARCO'}
          try
            try
              QrMovBarco.Filtered := False;
              QrMovBarco.Filter := 'sIdFolio = '+QuotedStr(QrColumnas.FieldByName('sIdFolio').AsString);
              QrMovBarco.Filtered := true;
            except
              ;
            end;
             //Que hace excel Aqui??
            {while excel.cells[ifilam, 1].text <> '' do
            begin
              if ( QrMovBarco.Locate('sIdPlataforma', qrColumnas.FieldByName('sIdPlataforma').asstring, []) )
                  and ( QrMovBarco.fieldByName('sIdTipoMovimiento').asstring =  excel.cells[ifilam, 1].text) then
                excel.range[columnanombre(icolumna)+inttostr(ifilam)].value := QrMovBarco.FieldByName('sFactor').AsString;
              inc(ifilam);
            end;   }
          finally
            QrMovBarco.Filtered := False;
          end;
          {$ENDREGION}

          {PERSONAL ANEXO C-1}
          {$REGION 'CONSULTA PERSONAL REPORTADO'}
          iFilaP := iFilaM + 3;
          with QrPersonal do
          begin
            active  := false;
            sql.text := 'SELECT bp.sIdPersonal, bp.sDescripcion, SUM(bp.dAjuste) AS Ajuste, ' +
                        'IF(SUM(bp.dCanthh) > 0, ROUND(SUM(bp.dCanthh), 2), SUM(bp.dCantidad)) AS Total ' +
                        'FROM bitacoradepersonal bp ' +
                        'WHERE bp.scontrato = :contrato AND bp.sNumeroOrden = :Folio AND bp.didfecha = :fecha ' +
                        'AND bp.sidPernocta = :Pernocta AND bp.sidplataforma = :Plataforma GROUP BY bp.sIdPersonal';
            parambyname('contrato').asstring := reportediario.FieldByName('sOrden').asstring;
            parambyname('folio').asstring := QrColumnas.fieldbyname('sidfolio').asstring;
            parambyname('fecha').asdate := reportediario.fieldbyname('didfecha').asdatetime;
            parambyname('pernocta').asstring := QrColumnas.fieldbyname('sidpernocta').asstring;
            parambyname('plataforma').AsString := QrColumnas.FieldByName('sidplataforma').asstring;
            open;

            if recordcount > 0 then
            begin
              first;
              //Aqui tambien esta excel
              {while excel.cells[ifilap, 1].text <> '' do
              begin
                if QrMoeP.Locate( 'sIdRecurso', excel.cells[ifilap, 1].text ,[]) then
                begin
                  if Locate('sIdPersonal', QrMoeP.FieldByName('sidrecurso').AsString, []) then
                    excel.range[columnanombre(icolumna)+inttostr(ifilap)].value := fieldbyname('total').asfloat;
                end;
                inc(ifilap);
              end;}
            end;
          end;
          {$ENDREGION}

          {EQUIPO ANEXO C-2}
          {$REGION 'CONSULTA EQUIPO REPORTADO'}
          ifilaE := ifilap + 3;
          with QrEquipo do
          begin
            active := false;
            sql.text := 'select be.sIdEquipo, sum(be.dCantHH) as dCantidad '+
                              'from bitacoradeequipos be '+
                              'inner join equipos e '+
                              'on ( e.sIdEquipo = be.sIdEquipo ) '+
                              'inner join bitacoradeactividades ba '+
                              'on ( ba.sContrato = :contrato and ba.dIdFecha = :fecha '+
                                   'and ba.sNumeroOrden = :folio '+
                                   'and ba.iIdDiario = be.iIdDiario ) '+
                              'where e.sContrato = :contratoBarco '+
                              'and be.sContrato = :contrato '+
                              'and be.sNumeroOrden = :folio '+
                              'and be.sIdPernocta = :pernocta '+
                              'and be.dIdFecha = :fecha '+
                              'group by e.sIdEquipo '+
                              'order by e.iItemOrden';
            parambyname('contratoBarco').asstring := global_contrato_barco;
            parambyname('contrato').asstring := reportediario.fieldbyname('sOrden').asstring;
            parambyname('folio').asstring := QrColumnas.fieldbyname('sidfolio').asstring;
            parambyname('pernocta').asstring := QrColumnas.fieldbyname('sidpernocta').asstring;
            parambyname('fecha').asdate := reportediario.fieldbyname('didfecha').asdatetime;
            open;

            if recordcount > 0 then
            begin
              first;
              //Aqui tambien esta excel
              {while excel.cells[ifilae, 1].text <> '' do
              begin
                if QrMoeE.Locate( 'sidequipo', excel.cells[ifilae, 1].text ,[]) then
                begin
                  if Locate('sidequipo', QrMoeE.FieldByName('sidequipo').AsString, []) then
                    excel.range[columnanombre(icolumna)+inttostr(ifilae)].value := fieldbyname('dCantidad').asfloat;
                end;
                inc(ifilae);
              end; }
            end;
          end;
          {$ENDREGION}
          QrColumnas.Next;
        end;

        {CONSULTA E INSERTA PERNOCTAS
        PD: LAS PERNOCTAS SON POR OT NO POR FOLIO}
        {$REGION 'CONSULTA PERNOCTAS'}
        with qrPernoctas do
        begin
          active := false;
          sql.text := 'select c.sIdPernocta, '+
                             'c.sDescripcion, '+
                             'c.sMedida, '+
                             '@dAjuste := ( select ifnull( bpr.dCantidad, 0) '+
                                                     'from bitacoradepernocta bpr '+
                                                     'where bpr.sContrato = :contrato '+
                                                     'and bpr.dIdFecha = :fecha '+
                                                     'and bpr.sNumeroOrden <> "@" ) as dAjuste, '+
                             '@dCantidad := sum( bp.dCantHH ) as dCantidadHH, '+

                             '(if( @dAjuste < @dCantidad, '+
                               '( @dCantidad - @dAjuste ), '+
                               '( if( @dAjuste = @dCantidad, '+
                                     '@dCantidad, '+
                                     '( @dCantidad + @dAjuste ) '+
                                 ') '+
                               ') '+
                             ') ) as dCantidadAjuste, '+
       
                       '( sum( bp.dCantHH ) - ( select ifnull( bpr.dCantidad, 0) '+
                                               'from bitacoradepernocta bpr '+
                                               'where bpr.sContrato = :contrato '+
                                               'and bpr.dIdFecha = :fecha '+
                                               'and bpr.sNumeroOrden <> "@" ) ) as dCantidad '+

                      'from cuentas c '+
                      'inner join bitacoradepersonal bp '+
                        'on ( bp.lAplicaPernocta = "Si" '+
                          'and bp.sTipoPernocta = c.sIdPernocta) '+

                      'inner join moerecursos mr '+
                        'on ( mr.sIdRecurso = bp.sIdPersonal '+
                          'and mr.eTipoRecurso = "Personal" '+
                          'and mr.iIdMoe = ( select m.iIdMoe from moe m where m.sContrato = :contrato '+
                                            'and m.dIdFecha <= :fecha order by m.dIdFecha desc limit 1) ) '+

                      'inner join personal p '+
                        'on ( p.sContrato = :contratoBarco '+
                          'and p.sIdPersonal = bp.sIdPersonal ) '+

                      'inner join tiposdepersonal tp '+
                        'on ( p.sIdTipoPersonal = tp.sIdTipoPersonal ) '+

                      'inner join bitacoradeactividades ba '+
                        'on ( ba.sNumeroActividad = bp.sNumeroActividad '+
                          'and ba.dIdFecha = bp.dIdFecha '+
                          'and ba.sIdTipoMovimiento = "E" ) '+

                      'inner join ordenesdetrabajo ot '+
                        'on ( ot.sContrato = :contrato and ot.sNumeroOrden = ba.sNumeroOrden ) '+

                      'inner join pernoctan pr '+
                        'on ( pr.sIdPernocta = ot.sIdPernocta ) '+

                      'inner join plataformas pl '+
                        'on ( pl.sIdPlataforma = ot.sIdPlataforma ) '+

                      'where bp.sContrato = :contrato '+
                      'and bp.dIdFecha = :fecha '+

                      'group by c.sIdPernocta '+
                      'order by c.sIdPernocta';
          parambyname('contrato').asstring := ReporteDiario.FieldByName('sOrden').asstring;
          parambyname('fecha').asdate := ReporteDiario.FieldByName('dIdFecha').asDatetime;
          parambyname('contratoBarco').asstring := global_contrato_barco;
          open;
        end;

        if qrPernoctas.recordcount > 0 then
        begin

          qrPernoctas.first;
          while not qrPernoctas.eof do
          begin

            qrPernoctas.fieldbyname('sIdPernocta').asstring;
            qrPernoctas.fieldbyname('sDescripcion').asstring;
            qrPernoctas.fieldbyname('smedida').asstring;
            qrPernoctas.fieldbyname('dCantidad').AsFloat;
            qrpernoctas.next;
          end;
        end;

        {$ENDREGION}


      end;
    end;
    except
      on e:exception do
      begin
        //Habra que determinar que hacer con los mensajes
        //MessageDlg('No se puede imprimir el reporte diario: '+e.Message, mtInformation, [mbOk], 0);
      end;
    end;
  finally
    QrMovBarco.Free;
    QrColumnas.Free;
    QrMoeP.Free;
    QrMoeE.Free;
    QrPersonal.Free;
    QrEquipo.Free;
    QrPernoctas.Free;
  end;
end;

procedure ReportePDF_PartidasAnexoC(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
var
  QryAnexo,
  QryRecursos : TZReadOnlyQuery;
  Td_PartidasAnexo,
  Td_ImpPartidasAnexo : TfrxDBDataset;
  rxAnexo  : TrxMemoryData;
begin
  try
      {$REGION 'CREA TZREADQUERY'}
      QryAnexo := TZReadOnlyQuery.Create(nil);
      QryAnexo.connection := connection.zconnection;

      QryRecursos := TZReadOnlyQuery.Create(nil);
      QryRecursos.connection := connection.zconnection;

      Td_PartidasAnexo:= TfrxDBDataset.Create(nil);
      Td_PartidasAnexo.UserName:='Td_PartidasAnexo';

      Td_ImpPartidasAnexo:= TfrxDBDataset.Create(nil);
      Td_ImpPartidasAnexo.UserName:='Td_ImpPartidasAnexo';

      rxAnexo := TrxMemoryData.Create(nil);
      rxAnexo.Active := False;
      rxAnexo.FieldDefs.Add('sTipo', ftString, 25, True);
      rxAnexo.FieldDefs.Add('sOT', ftString, 15, True);
      rxAnexo.FieldDefs.Add('sTipoAnexo', ftString, 15, True);
      rxAnexo.FieldDefs.Add('sAnexoPaquete', ftString, 2, True);
      rxAnexo.FieldDefs.Add('sIdRecurso', ftString, 50, True);
      rxAnexo.FieldDefs.Add('sDescripcion', ftString, 1000, True);
      rxAnexo.FieldDefs.Add('sMedida', ftString, 20, True);
      rxAnexo.FieldDefs.Add('dCantidad', ftFloat, 0, True);
      rxAnexo.Active := True;

      {$ENDREGION}
      if (TImpresion=FtsRRecursos) or (TImpresion=FtsAll) then
      begin
          QryAnexo.Active := False;
          QryAnexo.SQL.Clear;
          QryAnexo.SQL.Add('select * from anexos where (sTipo = "Barco" or (sTipo = "Personal" and sTierra="No") or sTipo = "Equipo" or sTipo = "Pernocta" '+
                           'or sTipo = "Anexo" or sTipo = "AnexoEXT" or sTipo = "AnexoC1" or sTipo = "AnexoC2" or sTipo = "AnexoC3" or sTipo ="AnexoC4") order by iOrden ');
          QryAnexo.Open;

          while not QryAnexo.Eof do
          begin
              rxAnexo.Append;
              rxAnexo.FieldValues['sTipo']        := 'Anexo';
              rxAnexo.FieldValues['sTipoAnexo']   := QryAnexo.FieldByName('sTipo').AsString;
              rxAnexo.FieldValues['sAnexoPaquete']:= 'Si';
              rxAnexo.FieldValues['sOT']          := reportediario.FieldByName('sOrden').AsString;
              rxAnexo.FieldValues['sIdRecurso']   := QryAnexo.FieldByName('sAnexo').AsString;
              rxAnexo.FieldValues['sDescripcion'] := QryAnexo.FieldByName('sDescripcion').AsString;
              rxAnexo.Post;

              {$REGION 'CONSULTA MOVIMIENTOS DEL BARCO YA CON SU FACTOR POR FOLIO'}
              if QryAnexo.FieldByName('sTipo').AsString = 'BARCO' then
              begin

                QryRecursos.Active := False;
                QryRecursos.SQL.Clear;
                QryRecursos.SQL.Add('SELECT ' +
                                    '  tm.sIdTipoMovimiento as sRecurso, ' +
                                    '  tm.sDescripcion, ' +
                                    '  tm.sTipo, ' +
                                     'tm.sMedida, '+
                                    '  ( ' +
                                    '    SELECT ' +
                                    '      ifnull(SUM( me.sFactor ),0) ' +
                                    '    FROM movimientosdeembarcacion AS me ' +
                                    '    WHERE me.sContrato = tm.sContrato ' +
                                    '    AND me.sOrden = :Orden ' +
                                    '    AND me.dIdFecha = :Fecha ' +
                                    '    AND me.sIdFase = "OPER" ' +
                                    '    AND me.sClasificacion = tm.sIdTipoMovimiento ' +
                                    '  ) AS dCantidad,tm.lImprimeCeros ' +
                                    'FROM tiposdemovimiento AS tm ' +
                                    'WHERE ' +
                                    '  tm.sContrato = :ContratoBarco ' +
                                    '  AND tm.sClasificacion = "Movimiento de Barco" '+
                                    'having ((dCantidad<>0) or ((tm.lImprimeCeros ="Si") and (dCantidad=0)))'
                                   );

                QryRecursos.Params.ParamByName('contratobarco').AsString := global_contrato_barco;
                QryRecursos.Params.ParamByName('Orden').AsString      := reportediario.FieldByName('sOrden').AsString;
                QryRecursos.Params.ParamByName('fecha').AsDate           := reportediario.FieldByName('dIdFecha').AsDateTime;
                QryRecursos.Open;
              end;

              if QryAnexo.FieldByName('sTipo').AsString = 'PERSONAL' then
              begin

                QryRecursos.Active := False;
                QryRecursos.SQL.Clear;
                QryRecursos.SQL.Add('SELECT bp.sIdPersonal as sRecurso, bp.sDescripcion, p.sMedida, SUM(bp.dAjuste) AS Ajuste, '+
                            'IF(SUM(bp.dCanthh) > 0, ROUND(SUM(bp.dCanthh), 2), SUM(bp.dCantidad)) AS dCantidad '+
                            'FROM bitacoradepersonal bp '+
                            'inner join personal p on (p.sContrato = bp.sContrato and p.sIdPersonal = bp.sIdPersonal) '+
                            'WHERE bp.scontrato =:contrato AND bp.dIdfecha = :fecha '+
                            'group by bp.sIdPersonal order by p.iItemOrden');
                QryRecursos.Params.ParamByName('contrato').AsString := reportediario.FieldByName('sOrden').AsString;
                QryRecursos.Params.ParamByName('fecha').AsDate      := reportediario.FieldByName('dIdFecha').AsDateTime;
                QryRecursos.Open;
              end;

              if QryAnexo.FieldByName('sTipo').AsString = 'EQUIPO' then
              begin
                QryRecursos.Active := False;
                QryRecursos.SQL.Clear;
                QryRecursos.SQL.Add('SELECT bp.sIdEquipo as sRecurso, bp.sDescripcion, p.sMedida, SUM(bp.dAjuste) AS Ajuste, '+
                            'IF(SUM(bp.dCanthh) > 0, ROUND(SUM(bp.dCanthh), 2), SUM(bp.dCantidad)) AS dCantidad '+
                            'FROM bitacoradeequipos bp '+
                            'inner join equipos p on (p.sContrato = bp.sContrato and p.sIdEquipo = bp.sIdEquipo) '+
                            'WHERE bp.scontrato =:contrato AND bp.dIdfecha = :fecha '+
                            'group by bp.sIdEquipo order by p.iItemOrden');
                QryRecursos.Params.ParamByName('contrato').AsString := reportediario.FieldByName('sOrden').AsString;
                QryRecursos.Params.ParamByName('fecha').AsDate      := reportediario.FieldByName('dIdFecha').AsDateTime;
                QryRecursos.Open;
              end;

              if QryAnexo.FieldByName('sTipo').AsString = 'PERNOCTA' then //ABBY
              begin
                if connection.ucontrato.FieldByName('eLugarOt').AsString = 'Abordo' then
                begin
                    QryRecursos.Active := False;
                    QryRecursos.SQL.Clear;
                    QryRecursos.SQL.text:='select c.sIdCuenta,c.sIdPernocta as sRecurso,c.sDescripcion,c.sMedida,' + #10 +
                                          '(ifnull((select ifnull(sum(bpr.dCantidad),0) from bitacoradepernocta bpr' + #10 +
                                          'where bpr.sContrato =:Orden and bpr.didfecha=:fecha and (bpr.sNumeroOrden <> "@"' + #10 +
                                          ') and c.sidcuenta=bpr.sidcuenta group by bpr.sContrato),0)) as dCantidad from cuentas c' + #10 +
                                          'order by c.sIdCuenta';
                    QryRecursos.Params.ParamByName('Orden').AsString := reportediario.FieldByName('sOrden').AsString;
                    QryRecursos.Params.ParamByName('fecha').AsDate   := reportediario.FieldByName('dIdFecha').AsDateTime;
                    QryRecursos.Open;
                end;
              end;

              if (QryAnexo.FieldByName('sTipo').AsString = 'ANEXO') or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOEXT')
                 or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOC1') or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOC2')
                 or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOC3') or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOC4') then
              begin
                QryRecursos.Active := False;
                QryRecursos.SQL.Clear;
                QryRecursos.SQL.Add('SELECT ao.sNumeroActividad as sRecurso, ao.mDescripcion as sDescripcion, ao.sMedida, sum(ba.dCantidad) AS dCantidad '+
                                    'FROM bitacoradeactividades ba '+
                                    'inner join actividadesxorden ao on (ao.sContrato = ba.sContrato and ao.sIdConvenio = ba.sIdConvenio and ao.sWbs = ba.sWbs '+
                                    'and ao.sTipoActividad = "Actividad" and sTipoAnexo = "PU" and ao.sAnexo =:Anexo) '+
                                    'WHERE ba.scontrato =:contrato AND ba.dIdfecha =:fecha '+
                                    'group by ba.sNumeroActividad order by ao.iItemOrden');
                QryRecursos.Params.ParamByName('contrato').AsString := reportediario.FieldByName('sOrden').AsString;
                QryRecursos.Params.ParamByName('fecha').AsDate      := reportediario.FieldByName('dIdFecha').AsDateTime;
                QryRecursos.Params.ParamByName('Anexo').AsString    := QryAnexo.FieldByName('sAnexo').AsString;
                QryRecursos.Open;
              end;

              if QryRecursos.RecordCount = 0 then
                 rxAnexo.Delete;

              QryRecursos.First;
              while not QryRecursos.Eof do
              begin
                  rxAnexo.Append;
                  rxAnexo.FieldValues['sTipo']        := 'Recurso';
                  rxAnexo.FieldValues['sOT']          := reportediario.FieldByName('sOrden').AsString;
                  rxAnexo.FieldValues['sIdRecurso']   := QryRecursos.FieldByName('sRecurso').AsString;
                  rxAnexo.FieldValues['sDescripcion'] := QryRecursos.FieldByName('sDescripcion').AsString;
                  rxAnexo.FieldValues['sMedida']      := QryRecursos.FieldByName('sMedida').AsString;
                  if QryAnexo.FieldByName('sTipo').AsString = 'PERNOCTA' then
                  begin
                    connection.QryBusca.Active:=false;
                    connection.QryBusca.SQL.Text:='select ifnull(sum(bp.dCantHH),0) as dCantidad from bitacoradepersonal bp' + #10 + 
                                                  'inner join bitacoradeactividades ba on(bp.sContrato =ba.sContrato and' + #10 + 
                                                  'ba.sNumeroOrden=bp.sNumeroOrden and  bp.dIdFecha = ba.dIdFecha and ba.iIdDiario=bp.iIdDiario and' + #10 + 
                                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad)' + #10 + 
                                                  'inner join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal = bp.sIdPersonal)' + #10 + 
                                                  'inner join cuentas c on (bp.sTipoPernocta = c.sIdPernocta)' + #10 + 
                                                  'where bp.sContrato=:Orden and bp.dIdFecha=:Fecha and p.lpernocta="Si"' + #10 + 
                                                  'and c.sIdCuenta=:Pernocta';

                    connection.QryBusca.ParamByName('ContratoBarco').AsString:= global_contrato_barco;
                    connection.QryBusca.ParamByName('Orden').AsString:=reportediario.FieldByName('sOrden').AsString;
                    connection.QryBusca.ParamByName('Fecha').AsDate:=reportediario.FieldByName('dIdFecha').AsDateTime;
                    connection.QryBusca.ParamByName('Pernocta').AsString:=QryRecursos.FieldByName('sIdcuenta').AsString;
                    connection.QryBusca.Open;
                    if connection.QryBusca.RecordCount=1 then
                      rxAnexo.FieldByName('dcantidad').AsFloat:=xRound(QryRecursos.FieldByName('dCantidad').value,2)+xRound(connection.QryBusca.FieldByName('dCantidad').value,2)
                    else
                      rxAnexo.FieldByName('dcantidad').AsFloat:=xRound(QryRecursos.FieldByName('dCantidad').value,2);


                  end
                  else
                  begin
                     if (QryAnexo.FieldByName('sTipo').AsString = 'ANEXO') or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOEXT')
                        or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOC1') or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOC2')
                        or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOC3') or (QryAnexo.FieldByName('sTipo').AsString = 'ANEXOC4') then
                     begin
                        rxAnexo.FieldValues['dCantidad']    := xRound(QryRecursos.FieldByName('dCantidad').value,4);
                        rxAnexo.FieldValues['sTipoAnexo']   := QryAnexo.FieldByName('sTipo').AsString;
                     end
                     else
                        rxAnexo.FieldValues['dCantidad']    := xRound(QryRecursos.FieldByName('dCantidad').value,2);
                  end;

                  if rxAnexo.FieldByName('dCantidad').asfloat >= 0 then
                    rxAnexo.Post
                  else
                    RxAnexo.Cancel;

                  QryRecursos.Next;
              end;

              {$ENDREGION}

              QryAnexo.Next;
          end;
      end;
      Td_PartidasAnexo.DataSet   := rxAnexo;
      Td_ImpPartidasAnexo.DataSet:= rxAnexo;

      Td_PartidasAnexo.FieldAliases.Clear;
      Td_ImpPartidasAnexo.FieldAliases.Clear;

      Reporte.DataSets.Add(Td_PartidasAnexo);
      Reporte.DataSets.Add(Td_ImpPartidasAnexo);

  finally

  end;
end;

procedure ReportePDF_ReporteFotografico(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
var
  QryReporteFotografico: TZQuery;
  Td_Fotografico,
  Td_ImpFotografico : TfrxDBDataset;
  rxFotografico     : TrxMemoryData;
begin

  {$REGION 'NOTAS'}
  Try

    QryReporteFotografico := TZQuery.Create(nil);
    QryReporteFotografico.Connection := Connection.zConnection;

    Td_Fotografico:= TfrxDBDataset.Create(nil);
    Td_Fotografico.UserName:='Td_Fotografico';

    Td_ImpFotografico:= TfrxDBDataset.Create(nil);
    Td_ImpFotografico.UserName:='Td_ImpFotografico';

    rxFotografico := TrxMemoryData.Create(nil);
    rxFotografico.Active := False;
    rxFotografico.FieldDefs.Add('sContrato', ftMemo, 0, True);
    rxFotografico.Active := True;
    rxFotografico.Append;
    rxFotografico.FieldValues['sContrato'] := '';
    rxFotografico.Post;

    if (TImpresion=FtsFotografico) or (TImpresion=FtsAll) then
    begin
        QryReporteFotografico.Active := False;
        QryReporteFotografico.SQL.Clear;
        QryReporteFotografico.SQL.Add('Select sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion From reportefotografico ' +
          'Where sContrato = :Contrato And sNumeroReporte = :Reporte And lIncluye = "Si" Order By iImagen');
        QryReporteFotografico.Params.ParamByName('contrato').DataType := ftString;
        QryReporteFotografico.Params.ParamByName('contrato').Value    := reportediario.FieldByName('sOrden').AsString;;
        QryReporteFotografico.Params.ParamByName('Reporte').DataType  := ftString;
        QryReporteFotografico.Params.ParamByName('Reporte').Value     := reportediario.FieldByName('sNumeroReporte').AsString;;
        QryReporteFotografico.Open;

        Td_Fotografico.DataSet   := QryReporteFotografico;
        Td_ImpFotografico.DataSet:= QryReporteFotografico;

        {Esta secccion es para mostrar la hoja vacia sino existen datos.}
        if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
          if QryReporteFotografico.RecordCount = 0 then
             Td_ImpFotografico.DataSet := rxFotografico;
    end
    else
    begin
        rxFotografico.Delete;
        Td_Fotografico.DataSet   := rxFotografico;
        Td_ImpFotografico.DataSet:= rxFotografico;
    end;

    Td_Fotografico.FieldAliases.Clear;
    Td_ImpFotografico.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_Fotografico);
    Reporte.DataSets.Add(Td_ImpFotografico);

  finally

  end;
end;

Procedure EncabezadoPDF_Horizontal(Reportediario :TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo);
const
   Dias: array[1..7] of string = ('LUNES', 'MARTES', 'MIERCOLES', 'JUEVES', 'VIERNES', 'SABADO', 'DOMINGO');
Var
  zContrato, zConfiguracion,
  zEmbarcacion, zDuracion     : TZReadOnlyQuery;
  Td_contrato, Td_configuracion,
  Td_embarcacion, Td_duracion : TfrxDBDataset;
  iDia : integer;
  sDia : string;

begin
  Try

    Td_contrato:= TfrxDBDataset.Create(nil);
    Td_contrato.UserName:='td_contrato';

    Td_configuracion:= TfrxDBDataset.Create(nil);
    Td_configuracion.UserName:='dsConfiguracion';

    Td_embarcacion:= TfrxDBDataset.Create(nil);
    Td_embarcacion.UserName:='dsEmbarcacion';

    Td_duracion:= TfrxDBDataset.Create(nil);
    Td_duracion.UserName:='ds_Duracion';

    {Información del contrato}
    zContrato := TZReadOnlyQuery.Create(nil);
    zContrato.Connection := Connection.zConnection;
    zContrato.SQL.Add(' Select c.sLicitacion, c.sTitulo, c.sContrato, c.sTipoObra, c.mDescripcion, c.mCliente, c.bImagen, c.sUbicacion,  c.sCodigo, c.sMascara as sLabelContrato, c.sCliente, '+
              'c.eLugarOT, m.sOficio, '+
              'c.mComentarios '+
              'FROM rd_proyectos c '+
              'left join moe m on (m.sContrato =:Contrato and m.dIdFecha = (SELECT max(didfecha) FROM moe WHERE didfecha <=:Fecha AND sContrato = :contrato) ) '+
              'inner join configuracion c3 on (c.sContrato = c3.sContrato) '+
              'Where c.sContrato = :Contrato ');
    zContrato.ParamByName('fecha').AsDateTime  := reportediario.FieldByName('dIdfecha').AsDateTime;
    zContrato.ParamByName('contrato').AsString := reportediario.FieldByName('sOrden').AsString;
    zContrato.Open;

    {Información de la configuracion del sistema}
    zConfiguracion := TZReadOnlyQuery.Create(nil);
    zConfiguracion.Connection := Connection.zConnection;
    zConfiguracion.SQL.Add('select c.iFirmasReportes, c.sTipoPartida, c.sImprimePEP, ' +
              ' (select sContrato from rd_proyectos where sContrato =:contratobarco ) as sContratoBarco, ' +
              ' (select mDescripcion from rd_proyectos where sContrato =:contratobarco ) as mDescripcionBarco, ' +
              ' c.lLicencia, c.sReportesCIA, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, c.iFirmasReportes, ' +
              ' c.bImagen, c.sContrato, c.sNombre, c2.sCodigo, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
              ' c2.mDescripcion, c2.sTitulo, c2.mCliente, c2.bImagen as bImagenPEP ' +
              ' From rd_proyectos c2 '+
              ' INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
              ' Where c2.sContrato = :Contrato');
    zConfiguracion.Params.ParamByName('contrato').DataType      := ftString;
    zConfiguracion.Params.ParamByName('contrato').Value         := reportediario.FieldByName('sOrden').AsString;
    zConfiguracion.Params.ParamByName('contratobarco').DataType := ftString;
    zConfiguracion.Params.ParamByName('contratobarco').Value    := global_contrato_barco;
    zConfiguracion.Open;

    {Busqueda de la embarcacion}
    zEmbarcacion := TZReadOnlyQuery.Create(nil);
    zEmbarcacion.Connection := Connection.zConnection;
    zEmbarcacion.SQL.Add('SELECT em.sDescripcion,em.sContrato, em.sIdEmbarcacion, cc.sLocalizacion, cc.sCantidad as CantidadOlas,'+
                  'd.sDescripcion as DireccionOlas, '+
                  '(select sCantidad from condicionesclimatologicas where sContrato =:orden and dIdFecha = :fecha and iIdCondicion = 1 and sHorario = "24:00" group by iIdCondicion ) as CantidadViento, '+
                  '(select d2.sDescripcion from condicionesclimatologicas cc2 '+
                  'inner join direcciones d2 on (d2.iIdDireccion = cc2.iIdDireccion)'+
                  'where cc2.sContrato =:contrato and cc2.dIdFecha = :fecha and cc2.iIdCondicion = 1  and cc2.sHorario = "24:00" group by iIdCondicion ) as DireccionViento, '+
                  '(select cd1.sMedida from condiciones cd1 where sDescripcion like "%viento%") as sMedidaCondicion1, '+
                  '(select cd1.sMedida from condiciones cd1 where sDescripcion like "%ola%") as sMedidaCondicion2 '+
                  'FROM embarcacion_vigencia AS ev '+
                  'INNER JOIN embarcaciones AS em ON (em.sIdEmbarcacion = ev.sIdEmbarcacion) '+
                  'left join condicionesclimatologicas as cc on (cc.sContrato =:Orden and cc.dIdFecha =:fecha and cc.iIdCondicion = 2 and cc.sHorario ="24:00") '+
                  'left join direcciones as d on (d.iIdDireccion = cc.iIdDireccion) '+
                  'WHERE ev.sContrato = :contrato and ev.dFechaInicio = (Select max(ev2.dfechainicio) '+
                  'from embarcacion_vigencia ev2 where ev.sContrato = em.sContrato and ev2.dfechainicio <= :fecha) order by sHorario DESC ');
    zEmbarcacion.ParamByName('Contrato').AsString := Global_Contrato_Barco;
    zEmbarcacion.ParamByName('Orden').AsString    := Global_Contrato;
    zEmbarcacion.ParamByName('fecha').AsDateTime  := reportediario.FieldByName('dIdfecha').AsDateTime;
    zEmbarcacion.Open;

    {Este bloque es para obtener el día}
     iDia := DayOfTheWeek(Reportediario.FieldByName('dIdFecha').AsDateTime);
     sDia := dias[iDia];

    {Consulto los días de contrato y de vigencia}
    zDuracion := TZReadOnlyQuery.Create(nil);
    zDuracion.Connection := Connection.zConnection;
    zDuracion.SQL.Add('SELECT ' +
                '	MIN(dFechaInicio) AS dInicioDeContrato, ' +
                '	MAX(dFechaFinal) AS dFinalDeContrato,   ' +
                '	DATEDIFF(MAX(dFechaFinal),MIN(dFechaInicio)) + 1 AS dDiasDeContrato, ' +
                '	DATEDIFF(MAX(dFechaFinal), :Hoy) AS dDiasRestantes,     ' +
                '	DATEDIFF(:Hoy, MIN(dFechaInicio)) + 1 AS dDiasTranscurridos, '+
                ' DATE_FORMAT(:hoy,"%d/%m/%Y") as dIdFecha, '+
                ' :Dia as DiaSemana '+
                ' FROM convenios WHERE sContrato = :Contrato');
    zDuracion.ParamByName('Hoy').AsDate        := Reportediario.FieldByName('dIdFecha').AsDateTime;
    zDuracion.ParamByName('Contrato').AsString := ReporteDiario.FieldByName('sContrato').AsString;
    zDuracion.ParamByName('Dia').AsString      := sDia;
    zDuracion.Open;

    Td_contrato.DataSet:=zContrato;
    Td_contrato.FieldAliases.Clear;
    Td_configuracion.DataSet:= zConfiguracion;
    Td_configuracion.FieldAliases.Clear;
    Td_embarcacion.DataSet:= zEmbarcacion;
    Td_embarcacion.FieldAliases.Clear;
    Td_duracion.DataSet:= zDuracion;
    Td_duracion.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_contrato);
    Reporte.DataSets.Add(Td_configuracion);
    Reporte.DataSets.Add(Td_embarcacion);
    Reporte.DataSets.Add(Td_duracion);

  Finally

  End;
end;

Procedure FirmasPDF_Generales(Reportediario :TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo);
Var
  zFirmas : TZReadOnlyQuery;
begin
  Try
    {Variables globales para Firmantes..}
    sCapitan              := 'SIN FIRMANTE';
    sSuperIntendente      := 'SIN FIRMANTE';
    sSuperIntendentePatio := 'SIN FIRMANTE';
    sRepresentanteTecnico := 'SIN FIRMANTE';
    sSupervisor           := 'SIN FIRMANTE';
    sSupervisorPatio      := 'SIN FIRMANTE';
    sSupervisorGenerador  := 'SIN FIRMANTE';
    sSupervisorEstimacion := 'SIN FIRMANTE';
    sSupervisorSubContratista   := 'SIN FIRMANTE';
    sResidente                  := 'SIN FIRMANTE';
    sPuestoSupervisorSubContratista := 'SIN PUESTO';
    sPuestoSuperintendente      := 'SIN PUESTO';
    sPuestoSupervisor           := 'SIN PUESTO';
    sPuestoSupervisorGenerador  := 'SIN PUESTO';
    sPuestoSupervisorEstimacion := 'SIN PUESTO';
    sSupervisorTierra           := 'SIN PUESTO';
    sPuestoSupervisorTierra     := 'SIN PUESTO';
    sPuestoRepresentanteTecnico := 'SIN PUESTO';
    sPuestoResidente            := 'SIN PUESTO';

    zFirmas := tzReadOnlyQuery.Create(nil);
    zFirmas.Connection := connection.zconnection;
    zFirmas.Active := False;
    zFirmas.SQL.Clear;
    if Reportediario.FieldByName('sNumeroOrden').AsString <> '' then
    begin
      zFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno and sNumeroOrden = :Orden And dIdFecha = :fecha');
      zFirmas.Params.ParamByName('Orden').DataType := ftString;
      zFirmas.Params.ParamByName('Orden').Value    := Reportediario.FieldByName('sNumeroOrden').AsString;
    end
    else
      zFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno And dIdFecha = :fecha');
    zFirmas.Params.ParamByName('Contrato').DataType := ftString;
    zFirmas.Params.ParamByName('Contrato').Value    := Reportediario.FieldByName('sOrden').AsString;
    zFirmas.Params.ParamByName('Turno').DataType    := ftString;
    zFirmas.Params.ParamByName('Turno').Value       := Reportediario.FieldByName('sIdTurno').AsString;
    zFirmas.Params.ParamByName('fecha').DataType    := ftDate;
    zFirmas.Params.ParamByName('fecha').Value       := Reportediario.FieldByName('dIdFecha').AsDateTime;
    zFirmas.Open;

    if zFirmas.RecordCount > 0 then
    begin
      sSuperintendente      := zFirmas.FieldValues['sFirmante1'];
      sSupervisor           := zFirmas.FieldValues['sFirmante2'];
      sSupervisorGenerador  := zFirmas.FieldValues['sFirmante3'];
      sSupervisorEstimacion := zFirmas.FieldValues['sFirmante4'];
      sSupervisorTierra     := zFirmas.FieldValues['sFirmante5'];
      sResidente            := zFirmas.FieldValues['sFirmante6'];
      sSuperintendentePatio := zFirmas.FieldValues['sFirmante7'];
      sSupervisorPatio      := zFirmas.FieldValues['sFirmante8'];
      sRepresentanteTecnico := zFirmas.FieldValues['sFirmante9'];
      sSupervisorSubContratista := zFirmas.FieldValues['sFirmante10'];
      sCapitan                  := zFirmas.FieldValues['sFirmante31'];

      sPuestoSuperintendente      := zFirmas.FieldValues['sPuesto1'];
      sPuestoSupervisor           := zFirmas.FieldValues['sPuesto2'];
      sPuestoSupervisorGenerador  := zFirmas.FieldValues['sPuesto3'];
      sPuestoSupervisorEstimacion := zFirmas.FieldValues['sPuesto4'];
      sPuestoSupervisorTierra     := zFirmas.FieldValues['sPuesto5'];
      sPuestoResidente            := zFirmas.FieldValues['sPuesto6'];
      sPuestoSuperintendentePatio := zFirmas.FieldValues['sPuesto7'];
      sPuestoSupervisorPatio      := zFirmas.FieldValues['sPuesto8'];
      sPuestoRepresentanteTecnico := zFirmas.FieldValues['sPuesto9'];
      sPuestoSupervisorSubContratista := zFirmas.FieldValues['sPuesto10'];
    end
    else
    begin
      zFirmas.Active := False;
      zFirmas.SQL.Clear;
      if Reportediario.FieldByName('sNumeroOrden').AsString <> '' then
      begin
        zFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sNumeroOrden = :Orden and sIdTurno =:Turno And dIdFecha <= :fecha Order By dIdFecha DESC');
        zFirmas.Params.ParamByName('Orden').DataType := ftString;
        zFirmas.Params.ParamByName('Orden').Value    := Reportediario.FieldByName('sNumeroOrden').AsString;
      end
      else
        zFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno And dIdFecha <= :fecha Order By dIdFecha DESC');

      zFirmas.Params.ParamByName('Contrato').DataType := ftString;
      zFirmas.Params.ParamByName('Contrato').Value    := Reportediario.FieldByName('sOrden').AsString;
      zFirmas.Params.ParamByName('Turno').DataType    := ftString;
      zFirmas.Params.ParamByName('Turno').Value       := Reportediario.FieldByName('sIdTurno').AsString;
      zFirmas.Params.ParamByName('fecha').DataType    := ftDate;
      zFirmas.Params.ParamByName('fecha').Value       := Reportediario.FieldByName('dIdFecha').AsDateTime;
      zFirmas.Open;

      if zFirmas.RecordCount > 0 then
      begin
        sSuperintendente      := zFirmas.FieldValues['sFirmante1'];
        sSupervisor           := zFirmas.FieldValues['sFirmante2'];
        sSupervisorGenerador  := zFirmas.FieldValues['sFirmante3'];
        sSupervisorEstimacion := zFirmas.FieldValues['sFirmante4'];
        sSupervisorTierra     := zFirmas.FieldValues['sFirmante5'];
        sResidente            := zFirmas.FieldValues['sFirmante6'];
        sSuperintendentePatio := zFirmas.FieldValues['sFirmante7'];
        sSupervisorPatio      := zFirmas.FieldValues['sFirmante8'];
        sRepresentanteTecnico := zFirmas.FieldValues['sFirmante9'];
        sSupervisorSubContratista := zFirmas.FieldValues['sFirmante10'];
        sCapitan                  := zFirmas.FieldValues['sFirmante31'];

        sPuestoSuperintendente      := zFirmas.FieldValues['sPuesto1'];
        sPuestoSupervisor           := zFirmas.FieldValues['sPuesto2'];
        sPuestoSupervisorGenerador  := zFirmas.FieldValues['sPuesto3'];
        sPuestoSupervisorEstimacion := zFirmas.FieldValues['sPuesto4'];
        sPuestoSupervisorTierra     := zFirmas.FieldValues['sPuesto5'];
        sPuestoResidente            := zFirmas.FieldValues['sPuesto6'];
        sPuestoSuperintendentePatio := zFirmas.FieldValues['sPuesto7'];
        sPuestoSupervisorPatio      := zFirmas.FieldValues['sPuesto8'];
        sPuestoRepresentanteTecnico := zFirmas.FieldValues['sPuesto9'];
        sPuestoSupervisorSubContratista := zFirmas.FieldValues['sPuesto10'];
      end
    end;
    zFirmas.Destroy;

  Finally

  End;
end;

Procedure ReportePDF_PartidasAnexoC_detalle(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);

Var
  i, x,y,CuentaCol,iGrupo,iCiclo: Integer;
  DCiclo,dTotal:Double;
  QryConsulta,
  QrMoe,
  QrColumnas,
  QrRecursos,
  QryCondiciones,
  QryEmbarcacion,
  QryOtroPersonal: TZQuery;
  QryAgrupador,
  qrReportado,
  qrPernoctas : TZQuery;

  dContrato_Inicio,
  dContrato_Final: TDateTime;
//  mDatos:TJvMemoryData;
//  mImprime:TJvMemoryData;
  Td_ImpDistribucion_detalle: TfrxDBDataset;
  Td_Distribucion_detalle: TfrxDBDataset;
  QrAdicional:TzReadOnlyquery;
  TmpAnexo:String;
  TmpDescAnexo:string;
  ValTmp:variant;
  CantTmp:Double;
  iPosTmp:Integer;
begin

//  mDatos:=TJvMemoryData.Create(nil);
//  mImprime:=TJvMemoryData.Create(nil);
  QrRecursos  := TZQuery.Create(nil);
  QrColumnas  := TZQuery.Create(nil);
  qrReportado := TZQuery.Create(nil);
  qrPernoctas := TZQuery.Create(nil);
  QrAdicional := TzReadOnlyquery.Create(nil);
  QrMoe       := TZQuery.Create(nil);
  Td_Distribucion_detalle:=TfrxDBDataset.Create(nil);
  Td_ImpDistribucion_detalle:=TfrxDBDataset.Create(nil);
  try
    QrMoe.Connection := Connection.zConnection;
    QrColumnas.Connection  := Connection.zConnection;
    QrRecursos.Connection  := Connection.zConnection;
    QrReportado.Connection := Connection.zConnection;
    QrPernoctas.Connection := Connection.zConnection;
    QrAdicional.Connection := Connection.zConnection;
    Td_Distribucion_detalle.UserName    :='Td_Distribucion_detalle';
    Td_ImpDistribucion_detalle.UserName :='Td_ImpDistribucion_detalle';
//    with mDatos do
//    begin
//      Active:=false;
//      FieldDefs.Add('iGrupo', ftInteger, 0, True);
//      FieldDefs.Add('sidAnexo', ftString, 10, false);
//      FieldDefs.Add('sidrecurso', ftString, 100, True);
//      FieldDefs.Add('sdescripcion', ftString, 250, True);
//      FieldDefs.Add('sAnexo', ftString, 250, false);
//      FieldDefs.Add('sTitulo', ftString, 250, false);
//      FieldDefs.Add('smedida', ftString, 100, True);
//      FieldDefs.Add('sTipo', ftString, 10, false);
//      FieldDefs.Add('dcantSol', FtFloat, 0, True);
//      FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//      for CuentaCol:=1 to TotalCol do
//      begin
//        FieldDefs.Add('dcantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//        FieldDefs.Add('sNumeroOrden'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPernocta' + Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPlataforma'+ Inttostr(CuentaCol), ftString, 100, false);
//      end;
//      Active:=true;
//    end;
//    with mImprime do
//    begin
//      Active:=false;
//      FieldDefs.Add('iCampo', ftInteger, 0, True);
//      Active:=true;
//    end;

//    mImprime.EmptyTable;
    if (TImpresion=FtsRRecursos_detalle) or (TImpresion=FtsAll) then
    begin

        {$REGION 'BARCO'}

        QrColumnas.active:=false;
        QrColumnas.SQL.Add( 'SELECT ot.sContrato, ot.sNumeroOrden, p.sDescripcion AS pernocta, p.sDescripcion AS pernocta, pf.sDescripcion AS plataforma, '+
                            'bp.sIdpernocta AS PernoctaP, bp.sIdPlataforma AS idPlataforma ' +
                            'FROM ordenesdetrabajo ot ' +
                            'INNER JOIN rd_proyectos AS c ON (ot.sContrato=c.sContrato) ' +
                            'INNER JOIN bitacoradepersonal AS bp ON (bp.scontrato=:OT AND bp.sNumeroOrden = ot.sNumeroOrden ) ' +
                            'INNER JOIN pernoctan AS p ON (p.sidPernocta=bp.sIdpernocta) ' +
                            'INNER JOIN plataformas AS pf ON (pf.sidPlataforma=bp.sIdPlataforma) ' +
                            'WHERE (c.sContrato=:OT OR c.sCodigo=:OT)	AND bp.dIdFecha= :Fecha ' +
                            'GROUP BY	ot.sContrato, ot.sNumeroorden, bp.sidPernocta, bp.sIdPlataforma');
        QrColumnas.ParamByName('OT').AsString       := ReporteDiario.FieldByName('sOrden').AsString;
        QrColumnas.ParamByName('Fecha').AsDate      := Reportediario.FieldByName('dIdFecha').AsDateTime;
        QrColumnas.Open;

        qrMoe.Active:=false;
        QrMoe.SQL.Clear;
        qrMoe.SQL.Text:='select  t.sIdTipoMovimiento as sIdRecurso, t.*, a.sanexo,ifnull(sum(sFactor),0) as TotalFactor,a.sdescripcion as anexo, a.stitulo as tituloAnexo '+
                              'from tiposdemovimiento t '+
                              'inner join movimientosdeembarcacion m '+
                              'on (m.sContrato = t.sContrato and m.dIdFecha =:Fecha and m.sClasificacion = t.sIdTipoMovimiento and (m.sIdFase = "OPER" or m.sIdFase ="ESP")) '+
                              'left join anexos a on(a.sTipo= "BARCO") '+
                              'where t.sContrato =:contrato and t.sClasificacion = "Movimiento de Barco" group by m.sClasificacion order by t.iorden';
        qrMoe.ParamByName('Contrato').AsString := global_contrato_barco;
        qrMoe.ParamByName('Fecha').AsDate      := Reportediario.FieldByName('dIdFecha').AsDateTime;
        qrMoe.Open;

        qrRecursos.Active:=false;
        qrRecursos.SQL.Text:= 'select ifnull(sum(mf.sFactor),0) as dCantidad from movimientosxfolios mf' + #10 +
                              'inner join movimientosdeembarcacion me' + #10 +
                              'on(me.sContrato=mf.sContrato and me.dIdFecha=mf.dIdFecha and' + #10 +
                              'me.iIdDiario=mf.iIdDiario and me.sOrden=mf.sNumeroOrden)' + #10 +
                              'where mf.sContrato=:contratoBarco and mf.didfecha=:fecha and' + #10 +
                              'mf.sNumeroOrden=:contrato and mf.sFolio=:folio and me.sClasificacion=:Tipo';

        //movimientosxfolios where sContrato=:Contrato and dIdFecha=:fecha and iIdDiario=:Diario

        DCiclo:=QrColumnas.RecordCount/TotalCol;
        iCiclo:=Trunc(DCiclo);
        if (dCiclo -iCiclo)>0 then
            Inc(iCiclo,1);
        iGrupo:=1;
        while iGrupo<=iCiclo do
        begin
            with qrMoe do
            begin
                first;
                while not eof do
                begin
//                    mDatos.Append;
//                    mDatos.FieldByName('iGrupo').AsInteger:=Igrupo;
//                    mDatos.FieldByName('sidAnexo').AsString     :=FieldByName('sanexo').asstring;
//                    mDatos.FieldByName('sAnexo').AsString       :=FieldByName('anexo').asstring;
//                    mDatos.FieldByName('sTitulo').AsString      :=FieldByName('tituloAnexo').asstring;
//                    mDatos.FieldByName('sidrecurso').AsString   :=FieldByName('sidrecurso').asstring;
//                    mDatos.FieldByName('sdescripcion').AsString :=fieldbyname('sdescripcion').asstring;
//                    mDatos.FieldByName('smedida').AsString      :=fieldbyname('smedida').asstring;
//                    mDatos.FieldByName('dcantSol').AsFloat      :=fieldbyname('dcantidad').AsFloat;
//                    mDatos.FieldByName('sTipo').AsString        :='';
                    dTotal:=0;
                    if iGrupo=1 then
                       QrColumnas.First
                    else
                       QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

                    CuentaCol:=1;
                    while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
                    begin
//                        mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString := qrColumnas.FieldbyName('sNumeroOrden').AsString;
//                        mDatos.FieldByName('sPernocta' + Inttostr(CuentaCol)).AsString   := QrColumnas.Fieldbyname('Pernocta').asstring;
//                        mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString  := QrColumnas.Fieldbyname('Plataforma').Asstring;
                       // mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=QrRecursos.FieldByName('dCantidad').AsFloat;

                        QrRecursos.Active := False;
                        //QrRecursos.ParamByName('Equipo').AsString        := FieldByName('sIdRecurso').AsString;
                        QrRecursos.ParamByName('contratoBarco').AsString := global_contrato_barco;
                        QrRecursos.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
                        QrRecursos.ParamByName('folio').AsString         := QrColumnas.FieldByName('sNumeroOrden').AsString;
                        QrRecursos.ParamByName('fecha').AsDate           := reportediario.FieldByName('dIdFecha').AsDateTime;
                        QrRecursos.ParamByName('tipo').AsString          := FieldByName('sIdRecurso').AsString;
                        QrRecursos.Open;

                        if QrRecursos.RecordCount>0 then
                        begin
//                          mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=xRound(QrRecursos.FieldByName('dCantidad').Value,4);
                          dTotal:=dTotal+ QrRecursos.FieldByName('dCantidad').AsFloat;
                        end;
                        QrColumnas.next;
                        Inc(CuentaCol);
                    end;

                    //if dTotal>0 then
                    //begin
//                        mDatos.FieldByName('dcantTotal').AsFloat:=fieldbyname('TotalFactor').AsFloat;
//                        mDatos.Post;
                    //end
                    //else
                    //   mDatos.cancel;
                    next;
                end;
            end;
            Inc(iGrupo,1);
        end;


        {$ENDREGION}

        {$REGION 'PERSONAL DE TERRA Y A BORDO'}
        QrRecursos.Active := False;
        QrRecursos.SQL.Clear;
        QrRecursos.SQL.Add('SELECT bp.sIdPersonal, bp.sDescripcion, ifnull(SUM(bp.dAjuste),0) AS Ajuste, ' +
                           'if(:Anexo=1,( ' +
                           'IF(SUM(bp.dCanthh) > 0, SUM(bp.dCanthh), SUM(bp.dCantidad))'+
                           '),SUM(bp.dCantidad)) AS Total ' +
                           'FROM bitacoradepersonal bp ' +
                           'WHERE bp.scontrato = :Orden AND bp.sNumeroOrden = :Folio AND bp.didfecha = :Fecha ' +
                           'AND bp.sidPernocta = :Pernocta AND bp.sidplataforma = :Plataforma ' +
                           'and bp.sIdPersonal=:Personal GROUP BY bp.sIdPersonal ');


        {$REGION 'CONSULTAS - PARTIDAS'}
        QrColumnas.active:=false;
        QrColumnas.SQL.Clear;
        QrColumnas.SQL.Add( 'SELECT ot.sContrato, ot.sNumeroOrden, p.sDescripcion AS pernocta, p.sDescripcion AS pernocta, pf.sDescripcion AS plataforma, '+
                            'bp.sIdpernocta AS PernoctaP, bp.sIdPlataforma AS idPlataforma ' +
                            'FROM ordenesdetrabajo ot ' +
                            'INNER JOIN rd_proyectos AS c ON (ot.sContrato=c.sContrato) ' +
                            'INNER JOIN bitacoradepersonal AS bp ON (bp.scontrato=:OT AND bp.sNumeroOrden = ot.sNumeroOrden ) ' +
                            'INNER JOIN pernoctan AS p ON (p.sidPernocta=bp.sIdpernocta) ' +
                            'INNER JOIN plataformas AS pf ON (pf.sidPlataforma=bp.sIdPlataforma) ' +
                            'WHERE (c.sContrato=:OT OR c.sCodigo=:OT)	AND bp.dIdFecha= :Fecha ' +
                            'GROUP BY	ot.sContrato, ot.sNumeroorden, bp.sidPernocta, bp.sIdPlataforma');
        QrColumnas.ParamByName('OT').AsString       := ReporteDiario.FieldByName('sOrden').AsString;
        QrColumnas.ParamByName('Fecha').AsDate      := reportediario.FieldByName('dIdFecha').AsDateTime;
        QrColumnas.Open;
        {$ENDREGION}


        {$REGION 'CONSULTAS - TODO EL PERSONAL SOLICITADO QUE SE REGISTRA EN EL MOE'}
        QrMoe.Active := False;
        QrMoe.SQL.Clear;   //ifnull(a.sdescripcion,"SIN ANEXO MAR/TIERRA") as anexo
        QrMoe.SQL.Add('SELECT p.sDescripcion,	mr.*, p.lSumaSolicitado, p.sMedida, ' +
                      'a.sanexo,ifnull(a.sdescripcion,"SIN ANEXO MAR/TIERRA") as anexo, a.stitulo as tituloAnexo,a.stierra '+
                      'FROM moe AS m ' +
                      'left JOIN moerecursos AS mr ON (mr.iidMoe=m.iidMoe) ' +
                      'INNER JOIN personal AS p ON (p.scontrato=:Contrato AND p.sidpersonal=mr.sidRecurso) ' +
                      'left join anexos a on(a.sAnexo=p.sAnexo) ' +
                      'WHERE m.didfecha = (SELECT max(didfecha) FROM moe WHERE didfecha <=:Fecha AND sContrato = :OT) ' +
                      'AND m.sContrato = :OT AND mr.eTipoRecurso = "Personal" ORDER BY a.iOrden,p.iItemOrden');
        QrMoe.ParamByName('Contrato').AsString := Global_Contrato_Barco;
        QrMoe.ParamByName('OT').AsString       := ReporteDiario.FieldByName('sOrden').AsString;
        QrMoe.ParamByName('Fecha').AsDateTime  := reportediario.FieldByName('dIdFecha').AsDateTime;
        QrMoe.Open;
        {$ENDREGION}

        {$REGION 'INSERTA EL MOE'}


        DCiclo:=QrColumnas.RecordCount/TotalCol;
        iCiclo:=Trunc(DCiclo);
        if (dCiclo -iCiclo)>0 then
          Inc(iCiclo,1);

        iGrupo:=1;
        TmpAnexo:='';
        TmpDescAnexo:='';
        while iGrupo<=iCiclo do
        begin
            with qrMoe do
            begin

                first;

                while not eof do
                begin
                    if (TmpAnexo='') and (FieldByName('sanexo').asstring<>'') then
                    begin
                      TmpAnexo:=FieldByName('sanexo').asstring;
                      TmpDescAnexo:=FieldByName('anexo').asstring;
                    end;

//                    mDatos.Append;
//                    mDatos.FieldByName('iGrupo').AsInteger      :=Igrupo;
//                    mDatos.FieldByName('sidAnexo').AsString     :=TmpAnexo;//FieldByName('sanexo').asstring;
//                    mDatos.FieldByName('sAnexo').AsString       :=TmpDescAnexo;//FieldByName('anexo').asstring;
//                    mDatos.FieldByName('sTitulo').AsString      :=FieldByName('tituloAnexo').asstring;
//                    mDatos.FieldByName('sidrecurso').AsString   :=FieldByName('sidrecurso').asstring;
//                    mDatos.FieldByName('sdescripcion').AsString :=fieldbyname('sdescripcion').asstring;
//                    mDatos.FieldByName('smedida').AsString      :=fieldbyname('smedida').asstring;
//                    mDatos.FieldByName('dcantSol').AsFloat      :=fieldbyname('dcantidad').AsFloat;
//                    mDatos.FieldByName('sTipo').AsString        :='';
                    dTotal:=0;
                    if iGrupo=1 then
                      QrColumnas.First
                    else
                      QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

                    CuentaCol:=1;
                    ValTmp:=0;
                    CantTmp:=0;
                    iPosTmp:=0;
                    while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
                    begin
//                        mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString :=qrColumnas.FieldbyName('sNumeroOrden').AsString;
//                        mDatos.FieldByName('sPernocta'   + Inttostr(CuentaCol)).AsString :=QrColumnas.Fieldbyname('Pernocta').asstring;
//                        mDatos.FieldByName('sPlataforma' + Inttostr(CuentaCol)).AsString :=QrColumnas.Fieldbyname('Plataforma').Asstring;

                        QrRecursos.Active := False;
                        {if fieldbyname('sTierra').asstring='Si' then
                          QrRecursos.ParamByName('Anexo').AsINteger :=0
                        else }
                        QrRecursos.ParamByName('Anexo').AsINteger :=1;
                        QrRecursos.ParamByName('Orden').AsString      := QrColumnas.FieldByName('sContrato').AsString;
                        QrRecursos.ParamByName('Folio').AsString      := QrColumnas.FieldByName('sNumeroOrden').AsString;
                        QrRecursos.ParamByName('Fecha').AsDate        := reportediario.FieldByName('dIdFecha').AsDateTime;
                        QrRecursos.ParamByName('Pernocta').AsString   := QrColumnas.FieldByName('PernoctaP').AsString;
                        QrRecursos.ParamByName('Plataforma').AsString := QrColumnas.FieldByName('idPlataforma').AsString;
                        QrRecursos.ParamByName('Personal').AsString   := FieldByName('sIdRecurso').AsString;
                        QrRecursos.Open;

                        if QrRecursos.RecordCount>0 then
                        begin
//                          mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=(xRound(QrRecursos.FieldByName('Total').Value,2) + QrRecursos.FieldByName('Ajuste').Value);
                          dTotal:=dTotal+ (xRound(QrRecursos.FieldByName('Total').Value,2) + QrRecursos.FieldByName('Ajuste').Value);
                          ValTmp:= ValTmp + (QrRecursos.FieldByName('Total').Value + QrRecursos.FieldByName('Ajuste').Value);
//                          if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                          begin
//                            CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                            iPosTmp:=CuentaCol;
//                          end;
                        end;
                        QrColumnas.next;
                        Inc(CuentaCol);
                    end;

                    if dTotal>=0 then
                    begin
                      if dTotal<>xRound(ValTmp,2) then
                      begin
//                        mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat:=mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat
//                          + (xRound(ValTmp,2)-dTotal);
//                        mDatos.FieldByName('dcantTotal').AsFloat:=xRound(ValTmp,2);
                      end
                      else
//                        mDatos.FieldByName('dcantTotal').AsFloat:=dTotal;
//                      mDatos.Post;
                    end
                    else
//                      mDatos.Cancel;
                    next;
                end;
            end;
            Inc(iGrupo,1);
        end;

        {$ENDREGION}
        {$ENDREGION}

        {$REGION 'EQUIPOS..'}
        {Equipos...}
        QrRecursos.Active := False;
        QrRecursos.SQL.Clear;
        QrRecursos.SQL.Add( 'select be.sIdEquipo, sum(be.dCantHH) as dCantidad '+
                            'from bitacoradeequipos be '+
                            'inner join equipos e '+
                            'on ( e.sIdEquipo = be.sIdEquipo ) '+
                            'inner join bitacoradeactividades ba '+
                            'on ( ba.sContrato = :contrato and ba.dIdFecha = :fecha '+
                                 'and ba.sNumeroOrden = :folio '+
                                 'and ba.iIdDiario = be.iIdDiario '+
                            'and ba.iIdTarea = be.iIdTarea and ba.iIdActividad = be.iIdActividad) '+
                            'where e.sContrato = :contratoBarco '+
                            'and be.sContrato = :contrato '+
                            'and be.sNumeroOrden = :folio '+
                            'and be.sIdPernocta = :pernocta '+
                            'and be.dIdFecha = :fecha '+
                            'and be.sIdEquipo=:equipo ' +
                            'group by e.sIdEquipo '+
                            'order by e.iItemOrden');

        {$REGION 'CONSULTAS - PARTIDAS'}
        QrColumnas.Active:=false;
        QrColumnas.SQL.Clear;
        QrColumnas.SQL.Add( 'select ot.sContrato,ot.sIdFolio, '+
                                     'ot.sNumeroOrden, '+
                                     'be.sIdPernocta AS PernoctaP, '+
                                     'ot.sIdPlataforma AS idPlataforma, '+
                                     'p.sDescripcion as Pernocta, '+
                                     'pt.sDescripcion as Plataforma '+
                              'from ordenesdetrabajo ot '+
                              'inner join rd_proyectos c '+
                              'on ( c.sContrato = ot.sContrato ) '+
                              'inner join bitacoradeequipos be '+
                              'on ( be.sContrato = ot.sContrato and be.sNumeroOrden = ot.sNumeroOrden ) '+
                              'inner join pernoctan p '+
                              'on ( ot.sIdPernocta = p.sIdPernocta) '+
                              'inner join plataformas pt '+
                              'on ( ot.sIdPlataforma = pt.sIdPlataforma ) '+
                              'where c.sContrato = :contrato '+
                              'and be.dIdFecha = :fecha '+
                              'group by ot.sIdFolio, p.sIdPernocta' );
        QrColumnas.ParamByName('Contrato').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
        QrColumnas.ParamByName('Fecha').AsDate:=reportediario.FieldByName('dIdFecha').AsDateTime;
        QrColumnas.Open;
        {$ENDREGION}


        {$REGION 'CONSULTAS - TODOS LOS EQUIPOS REGISTRADOS EN MOE'}

        QrMoe.Active := False;
        QrMoe.SQL.Clear;
        QrMoe.SQL.Add('select mr.sIdRecurso, e.sDescripcion, e.sMedida, mr.dCantidad, '+
                      'a.sanexo,a.sdescripcion as anexo, a.stitulo as tituloAnexo '+
                        'from moe m '+
                        'inner join moerecursos mr '+
                        'on ( mr.iIdMoe = m.iIdMoe ) '+
                        'inner join equipos e '+
                        'on ( e.sContrato = :contratobarco and e.sIdEquipo = mr.sIdRecurso ) '+
                        'left join anexos a on(a.sTipo= "EQUIPO") ' +
                        'where m.dIdFecha = (select max(didfecha) from moe where didfecha <=:Fecha and sContrato = :contrato) '+
                        'and m.sContrato = :contrato '+
                        'and mr.eTipoRecurso = "Equipo" '+
                        'order by e.iItemOrden');
        QrMoe.ParamByName('contratobarco').AsString := Global_Contrato_Barco;
        QrMoe.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;
        QrMoe.ParamByName('Fecha').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
        QrMoe.Open;

        {$ENDREGION}

        {$REGION 'INSERCION DE DATOS - INFORMACIÓN DEL EQUIPO'}

        DCiclo:=QrColumnas.RecordCount/TotalCol;
        iCiclo:=Trunc(DCiclo);
        if (dCiclo -iCiclo)>0 then
            Inc(iCiclo,1);
        iGrupo:=1;
        while iGrupo<=iCiclo do
        begin
            with qrMoe do
            begin
                first;
                while not eof do
                begin
//                    mDatos.Append;
//                    mDatos.FieldByName('iGrupo').AsInteger       :=Igrupo;
//                    mDatos.FieldByName('sidAnexo').AsString      :=FieldByName('sanexo').asstring;
//                    mDatos.FieldByName('sAnexo').AsString        :=FieldByName('anexo').asstring;
//                    mDatos.FieldByName('sTitulo').AsString       :=FieldByName('tituloAnexo').asstring;
//                    mDatos.FieldByName('sidrecurso').AsString    :=FieldByName('sidrecurso').asstring;
//                    mDatos.FieldByName('sdescripcion').AsString  :=fieldbyname('sdescripcion').asstring;
//                    mDatos.FieldByName('smedida').AsString       :=fieldbyname('smedida').asstring;
//                    mDatos.FieldByName('dcantSol').AsFloat       :=fieldbyname('dcantidad').AsFloat;
//                     mDatos.FieldByName('sTipo').AsString        :='';
                    dTotal:=0;
                    if iGrupo=1 then
                       QrColumnas.First
                    else
                       QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

                    CuentaCol:=1;
                    ValTmp:=0;
                    CantTmp:=0;
                    iPosTmp:=0;
                    while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
                    begin
//                        mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString := qrColumnas.FieldbyName('sNumeroOrden').AsString;
//                        mDatos.FieldByName('sPernocta' + Inttostr(CuentaCol)).AsString   := QrColumnas.Fieldbyname('Pernocta').asstring;
//                        mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString  := QrColumnas.Fieldbyname('Plataforma').Asstring;

                        QrRecursos.Active := False;
                        QrRecursos.ParamByName('Equipo').AsString        := FieldByName('sIdRecurso').AsString;
                        QrRecursos.ParamByName('contratoBarco').AsString := global_contrato_barco;
                        QrRecursos.ParamByName('contrato').AsString      := ReporteDiario.FieldByName('sOrden').AsString;
                        QrRecursos.ParamByName('folio').AsString         := QrColumnas.FieldByName('sNumeroOrden').AsString;
                        QrRecursos.ParamByName('fecha').AsDate           := reportediario.FieldByName('dIdFecha').AsDateTime;
                        QrRecursos.ParamByName('pernocta').AsString      := QrColumnas.FieldByName('PernoctaP').AsString;
                        QrRecursos.Open;
                        //ABBY
                        if QrRecursos.RecordCount>0 then
                        begin
//                          mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=xRound(QrRecursos.FieldByName('dCantidad').Value,2);
                          dTotal:=dTotal+ xRound(QrRecursos.FieldByName('dCantidad').Value,2);
                          ValTmp:=ValTmp + QrRecursos.FieldByName('dCantidad').Value;
//                          if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                          begin
//                            CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                            iPosTmp:=CuentaCol;
//                          end;
                        end;
                        QrColumnas.next;
                        Inc(CuentaCol);
                    end;

                    if dTotal>0 then
                    begin
                      if dTotal<>xRound(ValTmp,2) then
                      begin
//                        mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat:=mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat
//                        + (xRound(ValTmp,2)-dTotal);
//                        mDatos.FieldByName('dcantTotal').AsFloat:=xRound(ValTmp,2);
                      end
                      else
//                        mDatos.FieldByName('dcantTotal').AsFloat:=dTotal;
//                      mDatos.Post;
                    end
                    else
//                       mDatos.cancel;
                    next;
                end;
            end;
            Inc(iGrupo,1);
        end;


     {Esta secccion es para mostrar la hoja vacia sino existen datos.}
//     if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
//        if MDatos.RecordCount>=0 then
//     else
//        if MDatos.RecordCount>0 then
//     begin
//
//     end;

//        mImprime.Append;
//        mImprime.FieldByName('iCampo').AsInteger:=1;
//        mImprime.Post;

        {$ENDREGION}
        {$ENDREGION}

        {$REGION 'PERNOCTAS..'}
        with QrColumnas do
        begin
          active := false;
          sql.text := 'select ot.sIdFolio, '+
                             'ot.sNumeroOrden, '+
                             'ot.sIdPernocta, '+
                             'ot.sIdPlataforma, '+
                             'p.sDescripcion as sPernocta, '+
                             'pt.sDescripcion as sPlataforma '+
                      'from ordenesdetrabajo ot '+
                      'inner join rd_proyectos c '+
                      'on ( c.sContrato = ot.sContrato ) '+
                      'inner join bitacoradeequipos be '+
                      'on ( be.sContrato = ot.sContrato and be.sNumeroOrden = ot.sNumeroOrden ) '+
                      'inner join pernoctan p '+
                      'on ( ot.sIdPernocta = p.sIdPernocta) '+
                      'inner join plataformas pt '+
                      'on ( ot.sIdPlataforma = pt.sIdPlataforma ) '+
                      'where c.sContrato = :contrato '+
                      'and be.dIdFecha = :fecha '+
                      'group by ot.sIdFolio, p.sIdPernocta';
          parambyname('contrato').asstring := ReporteDiario.fieldbyname('sOrden').asstring;
          parambyname('fecha').asdate      := reportediario.fieldbyname('didfecha').asdatetime;
          open;
        end;

        with qrPernoctas do
        begin
          active := false;
          sql.text := 'select c.sIdPernocta, '+
                             'c.sDescripcion, '+
                             'c.sMedida, '+

                       '( sum( bp.dCantHH ) - ifnull(( select ifnull( sum(bpr.dCantidad), 0) '+
                                               'from bitacoradepernocta bpr '+
                                               'where bpr.sContrato = :contrato '+
                                               'and bpr.dIdFecha = :fecha '+
                                               'and (bpr.sNumeroOrden <> "@" and bpr.sNumeroOrden=ba.snumeroorden) group by bpr.dIdFecha),0) ) as dCantidad '+

                      'from cuentas c '+
                      'left join bitacoradepersonal bp '+
                        'on ( '+ //bp.lAplicaPernocta = "Si"
                          'bp.sContrato = :contrato '+
                          'and bp.dIdFecha = :fecha '+
                          'and bp.sTipoPernocta = c.sIdPernocta ) '+

                      'left join moerecursos mr '+
                        'on ( mr.sIdRecurso = bp.sIdPersonal '+
                          'and mr.eTipoRecurso = "Personal" '+
                          'and mr.iIdMoe = ( select m.iIdMoe from moe m where m.sContrato = :contrato '+
                                            'and m.dIdFecha <= :fecha order by m.dIdFecha desc limit 1) ) '+

                      'left join personal p '+
                        'on ( p.sContrato = :contratoBarco '+
                          'and p.sIdPersonal = bp.sIdPersonal ) '+

                      'left join tiposdepersonal tp '+
                        'on ( p.sIdTipoPersonal = tp.sIdTipoPersonal ) '+

                      'left join bitacoradeactividades ba '+
                      'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                      'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                      'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad ' +
                      'and ba.sIdTipoMovimiento = "E" ) '+

                      'left join ordenesdetrabajo ot '+
                        'on ( ot.sContrato = :contrato and ot.sNumeroOrden = ba.sNumeroOrden ) '+

                      'left join pernoctan pr '+
                        'on ( pr.sIdPernocta = ot.sIdPernocta ) '+

                      'left join plataformas pl '+
                        'on ( pl.sIdPlataforma = ot.sIdPlataforma ) '+
                      'where bp.snumeroorden=:Folio and c.sidpernocta=:Pernocta ' +
                      'and p.lpernocta="Si" ' +
                      //'where bp.sContrato = :contrato '+
                      //'and bp.dIdFecha = :fecha '+

                      'group by c.sIdPernocta '+
                      'order by c.sIdPernocta';
          parambyname('contrato').asstring := ReporteDiario.FieldByName('sOrden').asstring;
          parambyname('fecha').asdate := ReporteDiario.FieldByName('dIdFecha').asDatetime;
          parambyname('contratoBarco').asstring := global_contrato_barco;

        end;

        QrReportado.Active:=false;
        QrReportado.SQL.Text:='select c.*, a.sanexo,a.sdescripcion as anexo, a.stitulo as tituloAnexo '+
                              'from cuentas c '+
                              'left join anexos a on(a.sTipo= "PERNOCTA")';
        QrREportado.Open;


        QrAdicional.Active:=false;
        QrAdicional.SQL.Text:='select ifnull(sum(dCantidad),0) as dCantidad from bitacoradepernocta where ' +
                      'sContrato=:Contrato and dIdFecha=:fecha and sNumeroOrden=:Folio and '+
                      'sIdCuenta=:Pernocta ';

        DCiclo:=QrColumnas.RecordCount/TotalCol;
        iCiclo:=Trunc(DCiclo);
        if (dCiclo -iCiclo)>0 then
          Inc(iCiclo,1);

        iGrupo:=1;
        while iGrupo<=iCiclo do
        begin
          QrReportado.First;
          while not QrReportado.Eof do
          begin
            dTotal:=0;
            if iGrupo=1 then
              QrColumnas.First
            else
              QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

//            mDatos.Append;
//            mDatos.FieldByName('iGrupo').AsInteger:=Igrupo;
//            mDatos.FieldByName('sidAnexo').AsString     := QrReportado.FieldByName('sanexo').asstring;
//            mDatos.FieldByName('sAnexo').AsString       := QrReportado.FieldByName('anexo').asstring;
//            mDatos.FieldByName('sTitulo').AsString      := QrReportado.FieldByName('tituloAnexo').asstring;
//            mDatos.FieldByName('sidrecurso').AsString   := QrReportado.FieldByName('sidpernocta').asstring;
//            mDatos.FieldByName('sdescripcion').AsString := QrReportado.fieldbyname('sdescripcion').asstring;
//            mDatos.FieldByName('smedida').AsString      := QrReportado.fieldbyname('smedida').asstring;
//            mDatos.FieldByName('dcantSol').AsFloat      :=0;
//             mDatos.FieldByName('sTipo').AsString       :='';

            CuentaCol:=1;
            ValTmp:=0;
            CantTmp:=0;
            iPosTmp:=0;
            while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
            begin
//              mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString:=qrColumnas.FieldbyName('snumeroorden').AsString;
//              mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString:=QrColumnas.Fieldbyname('splataforma').Asstring;

              with QrPernoctas do
              begin
                Active:=false;
                parambyname('Folio').AsString:=qrColumnas.FieldbyName('snumeroorden').AsString;
                parambyname('Pernocta').AsString:=QrReportado.FieldByName('sIdPernocta').AsString;
                Open;

                if Recordcount=0 then
                begin
                  ///Aqui va
                  QrAdicional.Active:=false;
                  QrAdicional.ParamByName('Contrato').AsString:=ReporteDiario.FieldByName('sOrden').asstring;
                  QrAdicional.ParamByName('Folio').AsString:=qrColumnas.FieldbyName('snumeroorden').AsString;
                  QrAdicional.ParamByName('Fecha').Asdate:=ReporteDiario.FieldByName('dIdFecha').asDatetime;
                  QrAdicional.ParamByName('Pernocta').AsString:= QrReportado.FieldByName('sIdCuenta').AsString;
                  QrAdicional.Open;
                  if QrAdicional.RecordCount=1 then
                  begin
//                    mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=
//                    xRound(QrAdicional.FieldByName('dCantidad').value,2);
                    dTotal:=dTotal+ xRound(QrAdicional.FieldByName('dCantidad').Value,2);
                    ValTmp:= ValTmp + (QrAdicional.FieldByName('dCantidad').Value);
//                    if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                    begin
//                      CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                      iPosTmp:= CuentaCol;
//                    end;
                  end

                end;


                first;
                while not eof do
                begin

                  QrAdicional.Active:=false;
                  QrAdicional.ParamByName('Contrato').AsString:=ReporteDiario.FieldByName('sOrden').asstring;
                  QrAdicional.ParamByName('Folio').AsString:=qrColumnas.FieldbyName('snumeroorden').AsString;
                  QrAdicional.ParamByName('Fecha').Asdate:=ReporteDiario.FieldByName('dIdFecha').asDatetime;
                  QrAdicional.ParamByName('Pernocta').AsString:= QrReportado.FieldByName('sIdCuenta').AsString;
                  QrAdicional.Open;

                  if QrAdicional.RecordCount=1 then
                  begin
//                    mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=xRound(FieldByName('dCantidad').Value,2)+
                    QrAdicional.FieldByName('dCantidad').AsFloat;
                    dTotal:=dTotal+ xRound(FieldByName('dCantidad').Value,2) +QrAdicional.FieldByName('dCantidad').AsFloat;
                    ValTmp:= ValTmp + (FieldByName('dCantidad').Value + QrAdicional.FieldByName('dCantidad').AsFloat);
//                    if CantTmp < mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                    begin
//                      CantTmp := mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                      iPosTmp:=CuentaCol;
//                    end;
                  end
                  else
                  begin
//                    mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=xRound(FieldByName('dCantidad').Value,2);
                    dTotal:=dTotal+ xRound(FieldByName('dCantidad').Value,2);
                    ValTmp:= ValTmp + FieldByName('dCantidad').Value;
//                    if CantTmp < mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                    begin
//                      CantTmp := mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                      iPosTmp:=CuentaCol;
//                    end;
                  end;
                  next;
                end;
                //next;
              end;
              Inc(CuentaCol);
              QrColumnas.Next;
            end;
            if dTotal<>xRound(ValTmp,2) then
            begin
//              mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat:=mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat
//              + (xRound(ValTmp,2)-dTotal);
//              mDatos.FieldByName('dcantTotal').AsFloat:=xRound(ValTmp,2);
            end
            else
//              mDatos.FieldByName('dcantTotal').AsFloat:=dTotal;
//            mDatos.Post;
            QrReportado.next;
          end;
          Inc(iGrupo,1);
        end;
        {$ENDREGION}

        {$REGION 'PARTIDAS DE PU'}

         {$REGION 'PARTIDAS PU.'}
        {Equipos...}
        QrRecursos.Active := False;
        QrRecursos.SQL.Clear;
        QrRecursos.SQL.Add( 'select b.sNumeroActividad, sum(b.dCantidad) as dCantidad '+
                            'from bitacoradeactividades b '+
                            'where b.sContrato = :Contrato and b.sNumeroOrden = :Orden and b.dIdFecha = :Fecha '+
                            'and b.sIdTipoMovimiento = "E" and b.sWbs = :Wbs group by b.sNumeroActividad');

        {$REGION 'CONSULTAS - PARTIDAS'}
        QrColumnas.Active:=false;
        QrColumnas.SQL.Clear;
        QrColumnas.SQL.Add( 'select ot.sContrato,ot.sIdFolio, '+
                                     'ot.sNumeroOrden, '+
                                     'ot.sIdPlataforma AS idPlataforma, '+
                                     'p.sDescripcion as Pernocta, '+
                                     'pt.sDescripcion as Plataforma '+
                              'from ordenesdetrabajo ot '+
                              'inner join rd_prpyectos c '+
                              'on ( c.sContrato = ot.sContrato ) '+
                              'inner join bitacoradeactividades ba '+
                              'on ( ba.sContrato = ot.sContrato and ba.sNumeroOrden = ot.sNumeroOrden ) '+
                              'inner join pernoctan p '+
                              'on ( ot.sIdPernocta = p.sIdPernocta) '+
                              'inner join plataformas pt '+
                              'on ( ot.sIdPlataforma = pt.sIdPlataforma ) '+
                              'where c.sContrato = :contrato '+
                              'and ba.dIdFecha = :fecha '+
                              'group by ot.sIdFolio, p.sIdPernocta' );
        QrColumnas.ParamByName('Contrato').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
        QrColumnas.ParamByName('Fecha').AsDate:=reportediario.FieldByName('dIdFecha').AsDateTime;
        QrColumnas.Open;
        {$ENDREGION}

        QrMoe.Active := False;
        QrMoe.SQL.Clear;
        QrMoe.SQL.Add('select b.sNumeroActividad as sIdRecurso, b.mDescripcion, a.sMedida, a.dCantidad, a.sAnexo, b.sWbs, '+
                      'n.sdescripcion as anexo, n.stitulo as tituloAnexo, n.sTipo '+
                      'from bitacoradeactividades b '+
                      'inner join actividadesxorden a on (a.sContrato = b.sContrato and a.sIdConvenio = b.sIdConvenio and a.sNumeroOrden  = a.sNumeroOrden '+
                      'and a.sTipoAnexo= "PU" and a.sNumeroActividad = b.sNumeroActividad and a.sWbs = b.sWbs and a.sTipoActividad = "Actividad") '+
                      'inner join anexos n on (a.sAnexo = n.sAnexo) '+
                      'where b.sContrato = :Contrato and b.dIdFecha = :Fecha '+
                      'and b.sIdTipoMovimiento = "E" group by n.iOrden, b.sContrato, b.sNumeroOrden, a.sNumeroActividad order by a.iItemOrden ');
        QrMoe.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;
        QrMoe.ParamByName('Fecha').AsDateTime  := reportediario.FieldByName('dIdFecha').AsDateTime;
        QrMoe.Open;


        {$REGION 'INSERCION DE DATOS - INFORMACIÓN DEL PU'}

        DCiclo:=QrColumnas.RecordCount/TotalCol;
        iCiclo:=Trunc(DCiclo);
        if (dCiclo -iCiclo)>0 then
            Inc(iCiclo,1);
        iGrupo:=1;
        while iGrupo<=iCiclo do
        begin
            with qrMoe do
            begin
                first;
                while not eof do
                begin
//                    mDatos.Append;
//                    mDatos.FieldByName('iGrupo').AsInteger:=Igrupo;
//                    mDatos.FieldByName('sidAnexo').AsString     :=FieldByName('sanexo').asstring;
//                    mDatos.FieldByName('sAnexo').AsString       :=FieldByName('anexo').asstring;
//                    mDatos.FieldByName('sTitulo').AsString      :=FieldByName('tituloAnexo').asstring;
//                    mDatos.FieldByName('sidrecurso').AsString   :=FieldByName('sidrecurso').asstring;
//                    mDatos.FieldByName('sdescripcion').AsString :=fieldbyname('mdescripcion').asstring;
//                    mDatos.FieldByName('smedida').AsString      :=fieldbyname('smedida').asstring;
//                    mDatos.FieldByName('dcantSol').AsFloat      :=fieldbyname('dcantidad').AsFloat;
//                    mDatos.FieldByName('sTipo').AsString        :=FieldByName('sTipo').asstring;
                    dTotal:=0;
                    if iGrupo=1 then
                       QrColumnas.First
                    else
                       QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

                    CuentaCol:=1;
                    ValTmp:=0;
                    CantTmp:=0;
                    iPosTmp:=0;
                    while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
                    begin
//                        mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString := qrColumnas.FieldbyName('sNumeroOrden').AsString;
//                        mDatos.FieldByName('sPernocta' + Inttostr(CuentaCol)).AsString   := QrColumnas.Fieldbyname('Pernocta').asstring;
//                        mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString  := QrColumnas.Fieldbyname('Plataforma').Asstring;

                        QrRecursos.Active := False;
                        QrRecursos.ParamByName('Wbs').AsString      := FieldByName('sWbs').AsString;
                        QrRecursos.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;
                        QrRecursos.ParamByName('Orden').AsString    := QrColumnas.FieldByName('sNumeroOrden').AsString;
                        QrRecursos.ParamByName('fecha').AsDate      := reportediario.FieldByName('dIdFecha').AsDateTime;
                        QrRecursos.Open;
                        //ABBY
                        if QrRecursos.RecordCount>0 then
                        begin
//                          mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=xRound(QrRecursos.FieldByName('dCantidad').Value,4);
                          dTotal:=dTotal+ xRound(QrRecursos.FieldByName('dCantidad').Value,4);
                          ValTmp:=ValTmp + QrRecursos.FieldByName('dCantidad').Value;
//                          if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                          begin
//                            CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                            iPosTmp:=CuentaCol;
//                          end;
                        end;
                        QrColumnas.next;
                        Inc(CuentaCol);
                    end;

                    if dTotal>=0 then
                    begin
                      if dTotal<>xRound(ValTmp,4) then
                      begin
//                        mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat:=mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat
//                        + (xRound(ValTmp,4)-dTotal);
//                        mDatos.FieldByName('dcantTotal').AsFloat:=xRound(ValTmp,4);
                      end
                      else
//                        mDatos.FieldByName('dcantTotal').AsFloat:=dTotal;
//                      mDatos.Post;
                    end
                    else
//                       mDatos.cancel;
                    next;
                end;
            end;
            Inc(iGrupo,1);
        end;
        {$ENDREGION}

    end;
//    Td_Distribucion_detalle.DataSet:=MDatos;
    Td_Distribucion_detalle.FieldAliases.Clear;
//    Td_ImpDistribucion_detalle.DataSet:=MImprime;
    Td_ImpDistribucion_detalle.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_Distribucion_detalle);
    Reporte.DataSets.Add(Td_ImpDistribucion_detalle);
  finally
    QrRecursos.destroy;
    QrColumnas.destroy;
    QrMoe.destroy;
  end;
end;


Procedure ReportePDF_PartidasAnexoC_detalleV2(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);

Var
  i, x,y,CuentaCol,iGrupo,iCiclo: Integer;
  DCiclo,dTotal:Double;
  QryConsulta,
  QrMoe,
  QrColumnas,
  QrRecursos,
  QryCondiciones,
  QryEmbarcacion,
  QryOtroPersonal: TZQuery;
  QryAgrupador,
  qrReportado,
  qrPernoctas : TZQuery;

  ZFolios : TZReadOnlyQuery;

  dContrato_Inicio,
  dContrato_Final: TDateTime;
//  mDatos:TJvMemoryData;
//  mImprime:TJvMemoryData;
  Td_ImpDistribucion_detalle2: TfrxDBDataset;
  Td_Distribucion_detalle2: TfrxDBDataset;
  QrAdicional:TzReadOnlyquery;
  TmpAnexo:String;
  TmpDescAnexo:string;
  ValTmp:variant;
  CantTmp:Double;
  iPosTmp:Integer;
  sTituloAnexo : string;
begin

//  mDatos:=TJvMemoryData.Create(nil);
//  mImprime:=TJvMemoryData.Create(nil);
  QrRecursos  := TZQuery.Create(nil);
  QrColumnas  := TZQuery.Create(nil);
  qrReportado := TZQuery.Create(nil);
  qrPernoctas := TZQuery.Create(nil);
  QrAdicional := TzReadOnlyquery.Create(nil);
  QrMoe       := TZQuery.Create(nil);
  ZFolios := TZReadOnlyQuery.Create( nil );
  Td_Distribucion_detalle2:=TfrxDBDataset.Create(nil);
  Td_ImpDistribucion_detalle2:=TfrxDBDataset.Create(nil);
  try
    QrMoe.Connection := Connection.zConnection;
    QrColumnas.Connection  := Connection.zConnection;
    QrRecursos.Connection  := Connection.zConnection;
    QrReportado.Connection := Connection.zConnection;
    QrPernoctas.Connection := Connection.zConnection;
    QrAdicional.Connection := Connection.zConnection;
    ZFolios.Connection := connection.zConnection;
    Td_Distribucion_detalle2.UserName    :='Td_Distribucion_detalle2';
    Td_ImpDistribucion_detalle2.UserName :='Td_ImpDistribucion_detalle2';
//    with mDatos do
//    begin
//      Active:=false;
//      FieldDefs.Add('iGrupo', ftInteger, 0, True);
//      FieldDefs.Add('sidAnexo', ftString, 10, false);
//      FieldDefs.Add('sidrecurso', ftString, 100, True);
//      FieldDefs.Add('sdescripcion', ftMemo, 0, True);
//      FieldDefs.Add('sAnexo', ftString, 250, false);
//      FieldDefs.Add('sTitulo', ftString, 250, false);
//      FieldDefs.Add('smedida', ftString, 100, True);
//      FieldDefs.Add('sTipo', ftString, 10, false);
//      FieldDefs.Add('dcantSol', ftString, 255, False);
//      FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//      FieldDefs.Add('dcantidad0', FtFloat, 0, false);
//      for CuentaCol:=1 to TotalCol do
//      begin
//        FieldDefs.Add('sPda' + Inttostr(CuentaCol), ftString, 50, false);
//
//        FieldDefs.Add('dcantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//        FieldDefs.Add('sNumeroOrden'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPernocta' + Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sPlataforma'+ Inttostr(CuentaCol), ftString, 100, false);
//        FieldDefs.Add('sTipo'+ Inttostr(CuentaCol), ftString, 10, false);
//      end;
//      Active:=true;
//    end;
//    with mImprime do
//    begin
//      Active:=false;
//      FieldDefs.Add('iCampo', ftInteger, 0, True);
//      Active:=true;
//    end;

//    mImprime.EmptyTable;
    if (TImpresion=FtsRRecursos_detalleV2) or (TImpresion=FtsAll) then
    begin
      {$REGION 'PARTIDAS DE PU'}

//        mImprime.Append;
//        mImprime.FieldByName('iCampo').AsInteger:=1;
//        mImprime.Post;

        {Equipos...}
        QrRecursos.Active := False;
        QrRecursos.SQL.Clear;
        QrRecursos.SQL.Add( 'select b.sIdMaterial, sum(b.dCantidad) as dCantidad '+
                            'from bitacorademateriales b '+
                            'inner join bitacoradeactividades ba '+
                            'on ( ba.sContrato = b.sContrato and b.dIdFecha = ba.dIdFecha and ba.sNumeroOrden = b.sNumeroOrden and ba.sWbs = b.sWbs and ba.iIdDiario = b.iIdDiario ) '+  // and ba.sTipoObra =:Tipo
                            'where b.sContrato = :Contrato and b.sNumeroOrden = :Orden and b.dIdFecha = :Fecha and b.sIdMaterial =:Actividad '+
                            'group by b.sIdMaterial');

        {$REGION 'CONSULTAS - PARTIDAS'}
        QrColumnas.Active:=false;
        QrColumnas.SQL.Clear;
        QrColumnas.SQL.Add( 'select ot.sContrato,ot.sIdFolio,b.sTipoObra, '+
                                     'ot.sNumeroOrden, '+
                                     'ot.sIdPlataforma AS idPlataforma, '+
                                     'p.sDescripcion as Pernocta, '+
                                     'pt.sDescripcion as Plataforma '+
                              'from ordenesdetrabajo ot '+
                              'inner join rd_proyectos c '+
                              'on ( c.sContrato = ot.sContrato ) '+
                              'inner join bitacorademateriales ba '+
                              'on ( ba.sContrato = ot.sContrato and ba.sNumeroOrden = ot.sNumeroOrden ) '+
                              'inner join bitacoradeactividades b '+
                              'on ( ba.sContrato = b.sContrato and ba.sNumeroOrden = b.sNumeroOrden and ba.sWbs = b.sWbs and ba.iIdDiario = b.iIdDiario) '+
                              'left join pernoctan p '+
                              'on ( p.sIdPernocta = ba.sIdPernocta) '+
                              'inner join plataformas pt '+
                              'on ( ot.sIdPlataforma = pt.sIdPlataforma ) '+
                              'where c.sContrato = :contrato '+
                              'and ba.dIdFecha = :fecha '+
                              'group by ot.sIdFolio, pt.sIdPlataforma order by ot.iOrden ' );
        QrColumnas.ParamByName('Contrato').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
        QrColumnas.ParamByName('Fecha').AsDate:=reportediario.FieldByName('dIdFecha').AsDateTime;
        QrColumnas.Open;

        QrColumnas.First;
        {$ENDREGION}

        QrMoe.Active := False;
        QrMoe.SQL.Clear;
        QrMoe.SQL.Add('select b.sIdMaterial as sIdRecurso, a.mDescripcion, a.sMedida, a.dCantidadAnexo as dCantidad, a.sAnexo, b.sWbs, '+
                  'n.sdescripcion as anexo, n.stitulo as tituloAnexo, n.sTipo '+
                  'from bitacorademateriales b '+
                  'inner join actividadesxanexo a on (a.sContrato =:Contrato and a.sNumeroActividad = b.sIdMaterial and a.sTipoAnexo= "CC" and a.sTipoActividad = "Actividad") '+
                  'left join anexos n on (a.sAnexo = n.sAnexo) '+
                  'where b.sContrato =:Orden and b.dIdFecha =:Fecha '+
                  'group by n.iOrden, b.sContrato, a.sNumeroActividad order by n.iOrden, a.iItemOrden ');
        QrMoe.ParamByName('contrato').AsString := global_contrato_barco;
        QrMoe.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sOrden').AsString;
        QrMoe.ParamByName('Fecha').AsDateTime  := reportediario.FieldByName('dIdFecha').AsDateTime;
        QrMoe.Open;


        {$REGION 'INSERCION DE DATOS - INFORMACIÓN DEL PU'}

        DCiclo:=QrColumnas.RecordCount/TotalCol;
        iCiclo:=Trunc(DCiclo);
        if (dCiclo -iCiclo)>0 then
            Inc(iCiclo,1);
        iGrupo:=1;
        while iGrupo<=iCiclo do
        begin
            with qrMoe do
            begin
                first;
                while not eof do
                begin
//                    mDatos.Append;
//                    mDatos.FieldByName('iGrupo').AsInteger:=Igrupo;
//                    mDatos.FieldByName('sidAnexo').AsString     :=FieldByName('sanexo').asstring;
//                    mDatos.FieldByName('sAnexo').AsString       :=FieldByName('anexo').asstring;
//                    mDatos.FieldByName('sTitulo').AsString      :=FieldByName('tituloAnexo').asstring;
//                    mDatos.FieldByName('sidrecurso').AsString   :=FieldByName('sidrecurso').asstring;
//                    mDatos.FieldByName('sdescripcion').AsString :=fieldbyname('mdescripcion').asstring;
//                    mDatos.FieldByName('smedida').AsString      :=fieldbyname('smedida').asstring;
//                    mDatos.FieldByName('dcantSol').AsFloat      :=fieldbyname('dcantidad').AsFloat;
//                    mDatos.FieldByName('sTipo').AsString        :=FieldByName('sTipo').asstring;
                    dTotal:=0;
                    if iGrupo=1 then
                       QrColumnas.First
                    else
                       QrColumnas.RecNo:=((iGrupo-1) * TotalCol)+ 1;

                    CuentaCol:=1;
                    ValTmp:=0;
                    CantTmp:=0;
                    iPosTmp:=0;
                    while not (QrColumnas.Eof) and (QrColumnas.RecNo<=((iGrupo) * TotalCol)) do
                    begin
//                        mDatos.FieldByName('sNumeroOrden'+ Inttostr(CuentaCol)).AsString := qrColumnas.FieldbyName('sIdFolio').AsString;
//                        mDatos.FieldByName('sPernocta' + Inttostr(CuentaCol)).AsString   := QrColumnas.Fieldbyname('Pernocta').asstring;
//                        mDatos.FieldByName('sPlataforma'+ Inttostr(CuentaCol)).AsString  := QrColumnas.Fieldbyname('Plataforma').Asstring;
//                        mDatos.FieldByName('sTipo'+ Inttostr(CuentaCol)).AsString        := QrColumnas.Fieldbyname('sTipoObra').AsString;

                        QrRecursos.Active := False;
                        QrRecursos.ParamByName('Actividad').AsString := FieldByName('sIdRecurso').AsString;
                        QrRecursos.ParamByName('contrato').AsString  := ReporteDiario.FieldByName('sOrden').AsString;
                        QrRecursos.ParamByName('Orden').AsString     := QrColumnas.FieldByName('sNumeroOrden').AsString;
                        QrRecursos.ParamByName('fecha').AsDate       := reportediario.FieldByName('dIdFecha').AsDateTime;
                        //Linea comentada porque todo lo que sea pu debe ir al tipo de obra PU
                        //QrRecursos.ParamByName('Tipo').AsString      := QrColumnas.Fieldbyname('sTipoObra').AsString;
                        QrRecursos.Open;

                        if QrRecursos.RecordCount>0 then
                        begin
//                          mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat:=xRound(QrRecursos.FieldByName('dCantidad').Value,4);
                          dTotal:=dTotal+ xRound(QrRecursos.FieldByName('dCantidad').Value,4);
                          ValTmp:=ValTmp + QrRecursos.FieldByName('dCantidad').Value;
//                          if CantTmp<mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat then
//                          begin
//                            CantTmp:=mDatos.FieldByName('dcantidad' + Inttostr(CuentaCol)).AsFloat;
//                            iPosTmp:=CuentaCol;
//                          end;
                        end;
                        QrColumnas.next;
                        Inc(CuentaCol);
                    end;

                    if dTotal>=0 then
                    begin
                      if dTotal<>xRound(ValTmp,4) then
                      begin
//                        mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat:=mDatos.FieldByName('dcantidad' + Inttostr(iPosTmp)).AsFloat
//                        + (xRound(ValTmp,4)-dTotal);
//                        mDatos.FieldByName('dcantTotal').AsFloat:=xRound(ValTmp,4);
                      end
                      else
//                        mDatos.FieldByName('dcantTotal').AsFloat:=dTotal;
//                      mDatos.Post;
                    end
                    else
//                       mDatos.cancel;
                    next;
                end;
            end;
            Inc(iGrupo,1);
        end;
        {$ENDREGION}

        {$endregion}

    end;
//    mDatos.first;
//    Td_Distribucion_detalle2.DataSet:=MDatos;
    Td_Distribucion_detalle2.FieldAliases.Clear;
//    Td_ImpDistribucion_detalle2.DataSet:=MDatos;
    Td_ImpDistribucion_detalle2.FieldAliases.Clear;

    Reporte.DataSets.Add(Td_Distribucion_detalle2);
    Reporte.DataSets.Add(Td_ImpDistribucion_detalle2);
  finally
    QrRecursos.destroy;
    QrColumnas.destroy;
    QrMoe.destroy;
  end;
end;

Procedure NotaCampo(ParamContrato,ParamFolio:String;Var Reporte: TfrxReport);
const
  Asql:Array[1..4] of String =( 'SELECT bp.sIdPersonal as sIdRecurso, bp.sDescripcion as Descripcion,p.smedida as medida,'+
                                'a.sDescripcion as Titulo,SUM(bp.dAjuste) AS Ajuste,(IF(SUM(bp.dCanthh) > 0, '+
                                '(SUM(bp.dCanthh)), SUM(bp.dCantidad))) AS Total FROM bitacoradepersonal bp '+
                                'inner join personal p on(p.sContrato=:ContratoBarco and p.sIdPersonal=bp.sIdPersonal) ' +
                                'inner join anexos a on(a.sAnexo=p.sAnexo and a.sTipo="PERSONAL" and a.sTierra="No") '+
                                'WHERE bp.scontrato = :Orden AND bp.sNumeroOrden = :Folio GROUP BY bp.sIdPersonal '

                              , 'select be.sIdEquipo as sIdRecurso,be.sDescripcion as Descripcion,e.sMedida as medida,'+
                                'ifnull((select sdescripcion from anexos where sTipo="EQUIPO" limit 1),"No existe") as Titulo,'+
                                'sum(be.dCantHH) as total from bitacoradeequipos be inner join equipos e on '+
                                '(e.sContrato=:contratoBarco and e.sIdEquipo=be.sIdEquipo) inner join bitacoradeactividades '+
                                'ba on(ba.sContrato = be.sContrato and ba.dIdFecha = be.didfecha and ba.sNumeroOrden = '+
                                'be.sNumeroOrden and ba.iIdDiario = be.iIdDiario and ba.iIdTarea = be.iIdTarea and '+
                                'ba.iIdActividad=be.iIdActividad) where  be.sContrato=:Orden and be.sNumeroOrden=:folio '+
                                'group by e.sIdEquipo order by e.iItemOrden'

                              , 'select c.sIdCuenta,c.sIdPernocta as sIdRecurso,c.sDescripcion as Descripcion,c.sMedida as medida,'+
                                'ifnull((select sdescripcion from anexos where sTipo="PERNOCTA" limit 1),"No existe") as Titulo,'+
                                '(sum(bp.dCantHH) - ifnull((select ifnull(sum(bpr.dCantidad),0) from bitacoradepernocta bpr '+
                                'where bpr.sContrato = ba.sContrato and ba.didfecha=bpr.didfecha and (bpr.sNumeroOrden <> "@" '+
                                'and bpr.sNumeroOrden=ba.snumeroorden) group by bpr.sContrato),0)) as Total from cuentas c '+
                                'left join bitacoradeactividades ba on(ba.sContrato=:Orden and ba.sNumeroOrden=:Folio'+
                                ') left join bitacoradepersonal bp on (bp.sContrato =ba.sContrato and '+
                                'ba.sNumeroOrden=bp.sNumeroOrden and  bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad and bp.sTipoPernocta = c.sIdPernocta '+
                                'and bp.lAplicaPernocta = "Si") left join personal p on (p.sContrato = :contratoBarco '+
                                'and p.sIdPersonal = bp.sIdPersonal) left join tiposdepersonal tp on ( p.sIdTipoPersonal = '+
                                'tp.sIdTipoPersonal) left join ordenesdetrabajo ot '+
                                'on (ot.sContrato = :Orden and ot.sNumeroOrden = ba.sNumeroOrden) left join pernoctan pr '+
                                'on (pr.sIdPernocta = ot.sIdPernocta) left join plataformas pl on(pl.sIdPlataforma=ot.sIdPlataforma) '+
                                'where bp.snumeroorden=:Folio group by c.sIdPernocta order by c.sIdPernocta '

                              , 'SELECT bp.sIdPersonal as sIdRecurso, bp.sDescripcion as Descripcion,p.smedida as medida,'+
                                'a.sDescripcion as Titulo,SUM(bp.dAjuste) AS Ajuste,SUM(bp.dCanthh) AS Total '+
                                'FROM bitacoradepersonal bp inner join personal p on(p.sContrato=:ContratoBarco and '+
                                'p.sIdPersonal=bp.sIdPersonal) inner join anexos a on(a.sAnexo=p.sAnexo and '+
                                'a.sTipo="PERSONAL" and a.sTierra="Si") WHERE bp.scontrato = :Orden AND '+
                                'bp.sNumeroOrden = :Folio GROUP BY bp.sIdPersonal ');
var
  QrActividades:TzReadOnlyQuery;
  QrProrrateo: TzReadOnlyQuery;
//  MryRecursos:TjvMemoryData;
  iGrupo:Integer;
  QrConsulta,
  QrResumenMaterial,
  QrObservaciones:TzReadOnlyQuery;
  Td_Partidas,
  Td_ProrrateoBarco,
  Td_CDistribucionP,
  Td_resumenMaterial,
  Td_NotasGrales: TfrxDBDataset;

begin
  QrActividades:=TzReadOnlyQuery.Create(nil);
  QrProrrateo:=TzREadOnlyQuery.Create(nil);
  QrConsulta:=TzREadOnlyQuery.Create(nil);
//  MryRecursos:=TJvMemoryData.Create(nil);
  QrObservaciones:=TzREadOnlyQuery.Create(nil);
  QrResumenMaterial:=TzREadOnlyQuery.Create(nil);

  Td_Partidas:= TfrxDBDataset.Create(nil);
  Td_ProrrateoBarco:= TfrxDBDataset.Create(nil);
  Td_CDistribucionP:= TfrxDBDataset.Create(nil);
  Td_resumenMaterial:= TfrxDBDataset.Create(nil);
  Td_NotasGrales:=TfrxDBDataset.Create(nil);

  try
    try
      Td_Partidas.UserName:='Td_Partidas';
      Td_ProrrateoBarco.UserName:='Td_ProrrateoBarco';
      Td_CDistribucionP.UserName:='Td_CDistribucionP';
      Td_resumenMaterial.UserName:='Td_resumenMaterial';
      Td_NotasGrales.UserName:='Td_NotasGrales';

      QrConsulta.Connection:=Connection.zConnection;
      QrACtividades.Connection:=Connection.zConnection;
      QrACtividades.SQL.Text:='select ao.*,' + #10 +
                              'ifnull((SELECT  SUM(dAvance) FROM bitacoradeactividades' + #10 +
                              'WHERE sContrato = ao.sContrato AND sNumeroOrden = ao.sNumeroOrden' + #10 +
                              'and sIdTipoMovimiento = "E" AND sWbs = ao.sWbs),0) AS dAvanceGeneralPartida,' + #10 +
                              'if(ao.lExtraordinario="No",0,1) as lOrdenExt,' + #10 +
                              'if(ao.lExtraordinario="No","ACTIVIDADES DEL PROGRAMA","ACTIVIDADES ADICIONALES") as lOrdenTitulo' + #10 +
                              'from actividadesxorden ao' + #10 +
                              'where ao.scontrato=:Contrato and ao.sNumeroOrden=:Orden' + #10 +
                              'and ao.sTipoActividad="Actividad"' + #10 +
                              'order by lOrdenExt,ao.iItemOrden' ;
      QrACtividades.ParamByName('Contrato').AsString:=ParamContrato;
      QrActividades.ParamByName('Orden').AsString:=ParamFolio;
      try
        QrACtividades.Open;
      except
        Raise;
      end;

      QrProrrateo.Connection:=Connection.zConnection;
      QrProrrateo.SQL.Text:='SELECT tm.sContrato,tm.sIdTipoMovimiento,tm.sDescripcion,tm.sTipo,tm.smedida,' + #10 +
                            '(SELECT ifnull(SUM( me.sFactor ),0) FROM' + #10 +
                            'movimientosdeembarcacion AS me inner join' + #10 +
                            'movimientosxfolios mf on (me.sContrato = mf.sContrato' + #10 +
                            'and me.iIdDiario = mf.iIdDiario) WHERE' + #10 +
                            'me.sContrato = tm.sContrato AND me.sOrden =:Orden' + #10 +
                            'and mf.sFolio=:Folio AND me.sIdFase = "OPER"' + #10 +
                            'AND me.sClasificacion = tm.sIdTipoMovimiento) AS sFactor,' + #10 +
                            'ifnull((select sdescripcion from anexos where sTipo="BARCO" limit 1)'+
                            ',"No existe") as Titulo ' +
                            'FROM tiposdemovimiento AS tm WHERE tm.sContrato =:ContratoBarco' + #10 +
                            'AND tm.sClasificacion = "Movimiento de Barco" and' + #10 +
                            'tm.lImprimeCeros ="Si"';
      QrProrrateo.ParamByName('ContratoBarco').AsString:=Global_Contrato_Barco;
      QrProrrateo.ParamByName('Orden').AsString:=ParamContrato;
      QrProrrateo.ParamByName('Folio').AsString:=ParamFolio;
      QrProrrateo.Open;



//      with MryRecursos do
//      begin
//        Active:=False;
//        FieldDefs.Add('iGrupo', ftInteger, 0, True);
//        //FieldDefs.Add('sidAnexo', ftString, 10, false);
//        FieldDefs.Add('sidrecurso', ftString, 100, True);
//        FieldDefs.Add('sdescripcion', ftString, 250, True);
//        //FieldDefs.Add('sAnexo', ftString, 250, false);
//        FieldDefs.Add('sTitulo', ftString, 250, false);
//        FieldDefs.Add('smedida', ftString, 100, True);
//        FieldDefs.Add('dcantidad', FtFloat, 0, True);
//        Active:=true;
//      end;

      for iGrupo := 1 to length(Asql) do
      begin
        QrConsulta.Active:=false;
        QrConsulta.SQL.Text:=ASql[iGrupo];
        QrConsulta.ParamByName('ContratoBarco').AsString:=Global_Contrato_Barco;
        QrConsulta.ParamByName('Orden').AsString:=ParamContrato;
        QrConsulta.ParamByName('Folio').AsString:=ParamFolio;
        QrConsulta.Open;
        while not QrConsulta.Eof do
        begin
//          MryRecursos.Append;
//          MryRecursos.FieldByName('iGrupo').AsInteger:=iGrupo;
//          MryRecursos.FieldByName('sIdRecurso').asString:=QrConsulta.FieldByName('sIdRecurso').AsString;
//          MryRecursos.FieldByName('sDescripcion').asString:=QrConsulta.FieldByName('descripcion').AsString;
//          MryRecursos.FieldByName('sMedida').asString:=QrConsulta.FieldByName('medida').AsString;
//          MryRecursos.FieldByName('sTitulo').asString:=QrConsulta.FieldByName('Titulo').AsString;
          if (iGrupo=1) or (iGrupo=4) then
//            MryRecursos.FieldByName('dcantidad').AsFloat:=(xRound(QrConsulta.FieldByName('Total').AsFloat,2) + QrConsulta.FieldByName('Ajuste').AsFloat)
          else
            if iGrupo=3 then
            begin

                connection.QryBusca.Active:=false;
                connection.QryBusca.SQL.Text:='select ifnull(sum(dCantidad),0) as dCantidad from bitacoradepernocta where ' +
                            'sContrato=:Orden and sNumeroOrden=:Folio and sIdCuenta=:Pernocta ';
                {connection.QryBusca.SQL.Text:='select sum(bpc.dCantidad) as dCantidad' + #10 +
                                              'from bitacoradepersonal_cuadre bpc' + #10 +
                                              'inner join personal p' + #10 +
                                              'on ( p.sContrato = :ContratoBarco and bpc.sIdPersonal = p.sIdPersonal )' + #10 +
                                              'inner join tiposdepersonal tp' + #10 +
                                              'on (tp.sIdTipoPersonal = p.sIdTipoPersonal )' + #10 +
                                              'where bpc.sContrato =:Orden and bpc.snumeroorden=:Folio' + #10 +
                                              'and tp.lPernocta="Si"' ; }

                connection.QryBusca.ParamByName('Pernocta').AsString:=QrConsulta.FieldByName('sIdCuenta').AsString ;
                connection.QryBusca.ParamByName('Orden').AsString:=ParamContrato;
                connection.QryBusca.ParamByName('Folio').AsString:=ParamFolio;
                connection.QryBusca.Open;
                if connection.QryBusca.RecordCount=1 then
//                  MryRecursos.FieldByName('dcantidad').AsFloat:=xRound(QrConsulta.FieldByName('total').AsFloat,2)+connection.QryBusca.FieldByName('dCantidad').AsFloat
                else
//                  MryRecursos.FieldByName('dcantidad').AsFloat:=xRound(QrConsulta.FieldByName('total').AsFloat,2);
            end
            else
//              MryRecursos.FieldByName('dcantidad').AsFloat:=xRound(QrConsulta.FieldByName('total').AsFloat,2);

//          MryRecursos.Post;
          QrConsulta.Next;
        end;
      end;

      QrResumenMaterial.Connection:=Connection.zConnection;
      QrResumenMaterial.SQL.text:=  'select s.sNumeroOrden, b.sNumeroActividad, b.sTrazabilidad,i.sIdInsumo,i.mDescripcion, i.sMedida, sum(b.dCantidad) as dCantidad, i.sIdProveedor from almacen_salida s '+
                                    'inner join bitacoradesalida b '+
                                    'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida and b.sext = s.sext) '+
                                    'inner join insumos i '+
                                    'on (i.sContrato =:Contrato and i.sIdInsumo = b.sIdInsumo and i.sTrazabilidad = b.sTrazabilidad ) '+
                                    'INNER JOIN actividadesxorden ao ON ( ' +
                                    '	ao.sContrato = b.sContrato and ao.sIdConvenio =:Convenio and ao.sNumeroOrden = b.sNumeroOrden and ' +
                                    '	ao.sNumeroActividad = b.sNumeroActividad and ao.sTipoActividad = "Actividad" ) ' +
                                    'where s.sContrato =:orden and s.sNumeroOrden=:Folio '+
                                    'group by b.sNumeroOrden,b.sIdInsumo Order by b.sNumeroOrden, ao.iItemOrden, b.sTrazabilidad';
      QrResumenMaterial.ParamByName('Orden').AsString    := ParamContrato;
      QrResumenMaterial.ParamByName('Folio').AsString    := ParamFolio;
      QrResumenMaterial.ParamByName('Contrato').AsString := global_Contrato_Barco;
      QrResumenMaterial.ParamByName('Convenio').AsString := global_Convenio;
      QrResumenMaterial.Open;

      QrObservaciones.Connection:=Connection.zConnection;
      QrObservaciones.SQL.Text:='select ncg.*,nco.dfecha as Fecha,nco.sObservacion from notacampo_general ncg' + #10 +
                                'left join notacampo_observaciones nco on(ncg.iIdNota=nco.iIdNota) ' +
                                'where ncg.sContrato=:Contrato and ncg.sNumeroOrden=:Folio';
      QrObservaciones.ParamByName('Contrato').AsString:=ParamContrato;
      QrObservaciones.ParamByName('Folio').AsString:=ParamFolio;
      QrObservaciones.Open;





      Td_Partidas.DataSet:= QrACtividades;
      Td_Partidas.FieldAliases.Clear;
      Td_ProrrateoBarco.DataSet:= QrProrrateo;
      Td_ProrrateoBarco.FieldAliases.Clear;
//      Td_CDistribucionP.DataSet:= MryRecursos;
      Td_CDistribucionP.FieldAliases.Clear;
      Td_resumenMaterial.DataSet:= QrResumenMaterial;
      Td_resumenMaterial.FieldAliases.Clear;
      Td_NotasGrales.DataSet:=QrObservaciones;
      Td_NotasGrales.FieldAliases.Clear;

      Reporte.DataSets.Add(Td_Partidas);
      Reporte.DataSets.Add(Td_ProrrateoBarco);
      Reporte.DataSets.Add(Td_CDistribucionP);
      Reporte.DataSets.Add(Td_resumenMaterial);
      Reporte.DataSets.Add(Td_NotasGrales);

    except

    end;
  finally
   { ReportePDF_ClearDataset(Reporte);
    QrActividades.Destroy;
    QrProrrateo.Destroy;
    QrConsulta.Destroy;
    MryRecursos.Destroy;  }
  end;

end;

Procedure TdConfiguracion(ParamContrato,ParamFolio:String;Var Reporte: TfrxReport);
var
  Td_contrato,
  Td_configuracion,
  Td_ConfiguracionOrden,
  TD_ConfigOTBarco: TfrxDBDataset;
  zContrato,
  zConfiguracion,
  QrConfigFolio,
  QrConfigBarco:TZReadOnlyQuery;
begin
  try
    try
      Td_contrato:= TfrxDBDataset.Create(nil);
      Td_contrato.UserName:='contrato';

      Td_configuracion:= TfrxDBDataset.Create(nil);
      Td_configuracion.UserName:='dsConfiguracion';

      Td_ConfiguracionOrden:= TfrxDBDataset.Create(nil);
      Td_ConfiguracionOrden.UserName:='DsConfiguracionOrden';

      TD_ConfigOTBarco:= TfrxDBDataset.Create(nil);
      TD_ConfigOTBarco.UserName:='TD_ConfigOTBarco';

      {Información del contrato}
      zContrato := TZReadOnlyQuery.Create(nil);
      zContrato.Connection := Connection.zConnection;
      zContrato.SQL.Add(' Select c.sLicitacion, c.sTitulo, c.sContrato, c.sTipoObra, c.mDescripcion, c.mCliente, c.bImagen, c.sUbicacion,  c.sCodigo, c.sMascara as sLabelContrato, c.sCliente, '+
                'c.eLugarOT, '+
                'c2.sDescripcion as sConvenio, c2.dFechaInicio, c2.dFechaFinal, c2.dMontoMN, c2.dMontoDLL, '+
                'c2.dFecha, a.bImagen as bImagenActivo, c.mComentarios '+
                'FROM rd_proyectos c '+
                'inner join configuracion c3 on (c.sContrato = c3.sContrato) '+
                'inner join convenios c2 on (c3.sContrato = c2.sContrato And c3.sIdConvenio = c2.sIdConvenio) '+
                'Where c.sContrato = :Contrato ');
      zContrato.ParamByName('contrato').AsString := ParamContrato;
      zContrato.Open;

      {Información de la configuracion del sistema}
      zConfiguracion := TZReadOnlyQuery.Create(nil);
      zConfiguracion.Connection := Connection.zConnection;
      zConfiguracion.SQL.Add('select c.iFirmasReportes, c.sTipoPartida, c.sImprimePEP, ' +
                ' (select sContrato from rd_proyectos where sContrato =:contratobarco ) as sContratoBarco, ' +
                ' (select mDescripcion from rd_proyectos where sContrato =:contratobarco ) as mDescripcionBarco, ' +
                ' (select mcliente from rd_proyectos where sContrato =:contratobarco ) as mClienteBarco, ' +
                ' c.lLicencia, c.sReportesCIA, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, c.iFirmasGeneradores, ' +
                ' c.bImagen, c.sContrato, c.sNombre, c2.sCodigo, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
                ' c2.mDescripcion, c2.sTitulo, c2.mCliente, c2.bImagen as bImagenPEP, cv.dFechaInicio, cv.dfechaFinal ' +
                ',concat(c.sDireccion1," ",c.sDireccion2) as direccion,c.sCiudad,c.sTelefono,c.sFax'   +
                ' From rd_proyectos c2 '+
                ' INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                ' INNER JOIN convenios cv on (cv.sContrato = c2.sContrato and cv.sIdConvenio =:convenio) '+
                ' Where c2.sContrato = :Contrato');
      zConfiguracion.Params.ParamByName('contrato').DataType := ftString;
      zConfiguracion.Params.ParamByName('contrato').Value    := ParamContrato;
      zConfiguracion.Params.ParamByName('contratobarco').DataType := ftString;
      zConfiguracion.Params.ParamByName('contratobarco').Value    := global_contrato_barco;
      zConfiguracion.Params.ParamByName('convenio').DataType := ftString;
      zConfiguracion.Params.ParamByName('convenio').Value    := global_convenio;
      zConfiguracion.Open;

      QrConfigFolio := TZReadOnlyQuery.Create(nil);
      QrConfigFolio.Connection:=Connection.zConnection;
      QrConfigFolio.sql.Text:='select ot.*,p.sDescripcion as Plataforma from ordenesdetrabajo ot inner join plataformas p ' +
                              'on(p.sIdPlataforma=ot.sIdPlataforma) '+
                              'where ot.sContrato=:Contrato and ot.sNumeroOrden=:Orden';
      QrConfigFolio.ParamByName('Contrato').AsString:=ParamContrato;
      QrConfigFolio.ParamByName('Orden').AsString:=ParamFolio;
      try
        QrConfigFolio.Open;
      except
        raise;
      end;

      QrConfigBarco:=TzREadOnlyQuery.Create(nil);
      QrConfigBarco.Connection:=Connection.zConnection;
      QrConfigBarco.SQL.Text:='select * from rd_proyectos c inner join convenios cv '+
                              'on(c.sContrato and cv.sContrato) '+
                              'where c.sContrato=:ContratoBarco and cv.sIdConvenio=:Convenio';
      QrConfigBarco.ParamByName('ContratoBarco').AsString:= global_contrato_barco;
      QrConfigBarco.ParamByName('Convenio').AsString:= global_convenio;
      QrConfigBarco.Open;

      TD_ConfigOTBarco.DataSet:=QrConfigBarco;
      TD_ConfigOTBarco.FieldAliases.Clear;
      Td_contrato.DataSet:= zContrato;
      Td_contrato.FieldAliases.Clear;
      Td_configuracion.DataSet:= zConfiguracion;
      Td_configuracion.FieldAliases.Clear;
      Td_ConfiguracionOrden.DataSet:= QrConfigFolio;
      Td_ConfiguracionOrden.FieldAliases.Clear;



      Reporte.DataSets.Add(Td_contrato);
      Reporte.DataSets.Add(Td_configuracion);
      Reporte.DataSets.Add(Td_ConfiguracionOrden);
      Reporte.DataSets.Add(TD_ConfigOTBarco);

    except

    end;

  finally

  end;


end;

Procedure TdConfiguracionGenerador(ParamContrato,ParamFolio:String;Var Reporte: TfrxReport);
var
  Td_contrato,
  Td_configuracion,
  Td_ConfiguracionOrden,
  TD_ConfigOTBarco: TfrxDBDataset;
  zContrato,
  zConfiguracion,
  QrConfigFolio,
  QrConfigBarco:TZReadOnlyQuery;
begin
  try
    try
      Td_contrato:= TfrxDBDataset.Create(nil);
      Td_contrato.UserName:='Td_contrato';

      Td_configuracion:= TfrxDBDataset.Create(nil);
      Td_configuracion.UserName:='DsConfiguracion';

      Td_ConfiguracionOrden:= TfrxDBDataset.Create(nil);
      Td_ConfiguracionOrden.UserName:='DsConfiguracionOrden';

      TD_ConfigOTBarco:= TfrxDBDataset.Create(nil);
      TD_ConfigOTBarco.UserName:='TD_ConfigOTBarco';

      {Información del contrato}
      zContrato := TZReadOnlyQuery.Create(nil);
      zContrato.Connection := Connection.zConnection;
      zContrato.SQL.Add(' Select c.sLicitacion, c.sTitulo, c.sContrato, c.sTipoObra, c.mDescripcion, c.mCliente, c.bImagen, c.sUbicacion,  c.sCodigo, c.sMascara as sLabelContrato, c.sCliente, '+
                'c.eLugarOT, '+
                'c2.sDescripcion as sConvenio, c2.dFechaInicio, c2.dFechaFinal, c2.dMontoMN, c2.dMontoDLL, '+
                'c2.dFecha, a.bImagen as bImagenActivo, c.mComentarios '+
                'FROM rd_proyectos c '+
                'inner join configuracion c3 on (c.sContrato = c3.sContrato) '+
                'inner join convenios c2 on (c3.sContrato = c2.sContrato And c3.sIdConvenio = c2.sIdConvenio) '+
                'Where c.sContrato = :Contrato ');
      zContrato.ParamByName('contrato').AsString := ParamContrato;
      zContrato.Open;

      {Información de la configuracion del sistema}
      zConfiguracion := TZReadOnlyQuery.Create(nil);
      zConfiguracion.Connection := Connection.zConnection;
      zConfiguracion.SQL.Add('select c.iFirmasReportes, c.sTipoPartida, c.sImprimePEP, ' +
                ' (select sContrato from rd_proyectos where sContrato =:contratobarco ) as sContratoBarco, ' +
                ' (select mDescripcion from rd_proyectos where sContrato =:contratobarco ) as mDescripcionBarco, ' +
                ' (select mcliente from rd_proyectos where sContrato =:contratobarco ) as mClienteBarco, ' +
                ' c.lLicencia, c.sReportesCIA, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, c.iFirmasGeneradores, ' +
                ' c.bImagen, c.sContrato, c.sNombre, c2.sCodigo, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
                ' c2.mDescripcion, c2.sTitulo, c2.mCliente, c2.bImagen as bImagenPEP, cv.dFechaInicio, cv.dfechaFinal ' +
                ',concat(c.sDireccion1," ",c.sDireccion2) as direccion,c.sCiudad,c.sTelefono,c.sFax'   +
                ' From rd_proyectos c2 '+
                ' INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                ' INNER JOIN convenios cv on (cv.sContrato = c2.sContrato and cv.sIdConvenio =:convenio) '+
                ' Where c2.sContrato = :Contrato');
      zConfiguracion.Params.ParamByName('contrato').DataType := ftString;
      zConfiguracion.Params.ParamByName('contrato').Value    := ParamContrato;
      zConfiguracion.Params.ParamByName('contratobarco').DataType := ftString;
      zConfiguracion.Params.ParamByName('contratobarco').Value    := global_contrato_barco;
      zConfiguracion.Params.ParamByName('convenio').DataType := ftString;
      zConfiguracion.Params.ParamByName('convenio').Value    := global_convenio;
      zConfiguracion.Open;

      QrConfigFolio := TZReadOnlyQuery.Create(nil);
      QrConfigFolio.Connection:=Connection.zConnection;
      QrConfigFolio.sql.Text:='select ot.*,p.sDescripcion as Plataforma from ordenesdetrabajo ot inner join plataformas p ' +
                              'on(p.sIdPlataforma=ot.sIdPlataforma) '+
                              'where ot.sContrato=:Contrato and ot.sNumeroOrden=:Orden';
      QrConfigFolio.ParamByName('Contrato').AsString:=ParamContrato;
      QrConfigFolio.ParamByName('Orden').AsString:=ParamFolio;
      try
        QrConfigFolio.Open;
      except
        raise;
      end;

      QrConfigBarco:=TzREadOnlyQuery.Create(nil);
      QrConfigBarco.Connection:=Connection.zConnection;
      QrConfigBarco.SQL.Text:='select * from rd_proyectos c inner join convenios cv '+
                              'on(c.sContrato and cv.sContrato) '+
                              'where c.sContrato=:ContratoBarco and cv.sIdConvenio=:Convenio';
      QrConfigBarco.ParamByName('ContratoBarco').AsString:= global_contrato_barco;
      QrConfigBarco.ParamByName('Convenio').AsString:= global_convenio;
      QrConfigBarco.Open;

      TD_ConfigOTBarco.DataSet:=QrConfigBarco;
      TD_ConfigOTBarco.FieldAliases.Clear;
      Td_contrato.DataSet:= zContrato;
      Td_contrato.FieldAliases.Clear;
      Td_configuracion.DataSet:= zConfiguracion;
      Td_configuracion.FieldAliases.Clear;
      Td_ConfiguracionOrden.DataSet:= QrConfigFolio;
      Td_ConfiguracionOrden.FieldAliases.Clear;



      Reporte.DataSets.Add(Td_contrato);
      Reporte.DataSets.Add(Td_configuracion);
      Reporte.DataSets.Add(Td_ConfiguracionOrden);
      Reporte.DataSets.Add(TD_ConfigOTBarco);

    except

    end;

  finally

  end;


end;

Procedure TdGenerador(ParamContrato:String;ParamFechaI,ParamFechaT:TDateTime;Var Reporte: TfrxReport;IsGeneral:Boolean=True);
const
  Asql:Array[1..4] of String =( 'SELECT bp.sIdPersonal as sIdRecurso, bp.sDescripcion as Descripcion,p.smedida as medida,'+
                                'a.sDescripcion as Titulo,a.sAnexo,SUM(bp.dAjuste) AS Ajuste,(IF(SUM(bp.dCanthh) > 0, '+
                                'SUM(bp.dCanthh), SUM(bp.dCantidad))) AS Total,bp.dIdFecha FROM bitacoradepersonal bp '+
                                'inner join personal p on(p.sContrato=:ContratoBarco and p.sIdPersonal=bp.sIdPersonal) ' +
                                'inner join anexos a on(a.sAnexo=p.sAnexo and a.sTipo="PERSONAL" and a.sTierra="No") '+
                                'WHERE bp.scontrato = :Orden AND ((:Folio=-1) or(:Folio<>-1 and bp.sNumeroOrden = :Folio)) '+
                                'and bp.dIdFecha between :Inicio and :termino ' +
                                'GROUP BY bp.sIdPersonal,bp.didfecha order by p.iItemOrden,bp.sIdPersonal,bp.didfecha'

                              , 'SELECT bp.sIdPersonal as sIdRecurso, bp.sDescripcion as Descripcion,p.smedida as medida,'+
                                'a.sDescripcion as Titulo,SUM(bp.dAjuste) AS Ajuste,SUM(bp.dCantidad) AS Total,bp.dIdFecha, '+
                                'a.sAnexo FROM bitacoradepersonal bp inner join personal p on(p.sContrato=:ContratoBarco and '+
                                'p.sIdPersonal=bp.sIdPersonal) inner join anexos a on(a.sAnexo=p.sAnexo and '+
                                'a.sTipo="PERSONAL" and a.sTierra="Si") WHERE bp.scontrato = :Orden AND '+
                                '((:Folio=-1) or(:Folio<>-1 and bp.sNumeroOrden = :Folio)) ' +
                                'and bp.dIdFecha between :Inicio and :termino ' +
                                'GROUP BY bp.sIdPersonal,bp.didfecha order by p.iItemOrden,bp.sIdPersonal,bp.didfecha'

                              , 'select be.sIdEquipo as sIdRecurso,be.sDescripcion as Descripcion,e.sMedida as medida,'+
                                'ifnull((select sdescripcion from anexos where sTipo="EQUIPO" limit 1),"No existe") as Titulo,'+
                                'ifnull((select sAnexo from anexos where sTipo="EQUIPO" limit 1),"N/E") as sAnexo,'+
                                'sum(be.dCantHH) as total,be.didfecha from bitacoradeequipos be inner join equipos e on '+
                                '(e.sContrato=:contratoBarco and e.sIdEquipo=be.sIdEquipo) inner join bitacoradeactividades '+
                                'ba on(ba.sContrato = be.sContrato and ba.dIdFecha = be.didfecha and ba.sNumeroOrden = '+
                                'be.sNumeroOrden and ba.iIdDiario = be.iIdDiario and ba.iIdTarea = be.iIdTarea and '+
                                'ba.iIdActividad=be.iIdActividad) where  be.sContrato=:Orden and ((:folio=-1) or (:folio<>-1 and '+
                                'be.sNumeroOrden=:folio)) and be.dIdFecha between :Inicio and :termino ' +
                                'group by e.sIdEquipo,be.didfecha order by e.iItemOrden,e.sIdEquipo,be.didfecha'

                              , 'select c.sIdCuenta,c.sIdPernocta as sIdRecurso,c.sDescripcion as Descripcion,c.sMedida as medida,'+
                                'ifnull((select sdescripcion from anexos where sTipo="PERNOCTA" limit 1),"No existe") as Titulo,'+
                                'ifnull((select sAnexo from anexos where sTipo="PERNOCTA" limit 1),"N/E") as sAnexo,'+
                                '(sum(bp.dCantHH) - ifnull((select ifnull(sum(bpr.dCantidad),0) from bitacoradepernocta bpr '+
                                'where bpr.sContrato = ba.sContrato and ba.didfecha=bpr.didfecha and (bpr.sNumeroOrden <> "@" '+
                                'and bpr.sNumeroOrden=ba.snumeroorden) group by bpr.sContrato),0)) as Total,bp.didfecha from cuentas c '+
                                'left join bitacoradeactividades ba on(ba.sContrato=:Orden and ((:Folio=-1) or (:Folio<>-1 and ba.sNumeroOrden=:Folio)) '+
                                ') left join bitacoradepersonal bp on (bp.sContrato =ba.sContrato and '+
                                'ba.sNumeroOrden=bp.sNumeroOrden and  bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad and bp.sTipoPernocta = c.sIdPernocta '+
                                ') left join personal p on (p.sContrato = :contratoBarco '+
                                'and p.sIdPersonal = bp.sIdPersonal) left join tiposdepersonal tp on ( p.sIdTipoPersonal = '+
                                'tp.sIdTipoPersonal) left join ordenesdetrabajo ot '+
                                'on (ot.sContrato = :Orden and ot.sNumeroOrden = ba.sNumeroOrden) left join pernoctan pr '+
                                'on (pr.sIdPernocta = ot.sIdPernocta) left join plataformas pl on(pl.sIdPlataforma=ot.sIdPlataforma) '+
                                'where ((:Folio=-1) or (:Folio<>-1 and bp.snumeroorden=:Folio)) '+
                                'and bp.dIdFecha between :Inicio and :termino ' +
                                'group by c.sIdPernocta,bp.didfecha order by c.sIdPernocta,bp.didfecha '

                              );



var
//  MryRecursos:TjvMemoryData;
  iGrupo:Integer;
  QrConsulta,QrFolios:TzReadOnlyQuery;
  sIdRecurso:String;
  ValTmp:Variant;
  CantTmp,dTotal:Double;
  iPosTmp,iPos:Integer;
  sDia:String;
  dsGeneradorGeneral:TfrxDBDataset;
begin
  QrFolios:=TzREadOnlyQUery.Create(nil);
  QrConsulta:=TzREadOnlyQUery.Create(nil);
  try
    try
      QrConsulta.Connection:=Connection.zConnection;
      QrFolios.Connection:=Connection.zConnection;
      dsGeneradorGeneral:=TfrxDBDataset.Create(nil);
//      MryRecursos:=TjvMemoryData.Create(nil);

      dsGeneradorGeneral.UserName:='dsGeneradorGeneral';

//      with MryRecursos do
//      begin
//        Active:=False;
//        FieldDefs.Add('iGrupo', ftInteger, 0, True);
//        FieldDefs.Add('sFolio', ftString, 100, True);
//        FieldDefs.Add('sDescFolio', ftString, 500, True);
//        FieldDefs.Add('sidrecurso', ftString, 100, True);
//        FieldDefs.Add('sdescripcion', ftString, 500, True);
//        FieldDefs.Add('sAnexo', ftString, 50, false);
//        FieldDefs.Add('sTitulo', ftString, 500, false);
//        FieldDefs.Add('smedida', ftString, 100, True);
//        FieldDefs.Add('dTotal', FtFloat, 0, True);
//        for IPos := 1 to 31 do
//          FieldDefs.Add('dia' + InttoStr(IPos), FtFloat, 0, True);
//        Active:=true;
//      end;

      QrFolios.Active:=False;
      QrFolios.SQL.Text:= 'select ba.*,ot.mdescripcion as descFolio from bitacoradeactividades ba '+
                          'inner join ordenesdetrabajo ot '+
                          'on(ot.sContrato=ba.sContrato and ot.sNumeroOrden=ba.sNumeroorden) '+
                          'where ba.sContrato=:Contrato and ba.dIdFecha ' +
                          'between :Inicio and :termino';

      if IsGeneral then
        QrFolios.SQL.Add('group by ba.sContrato')
      else
        QrFolios.SQL.Add('group by ba.sContrato,ba.sNumeroOrden');

      QrFolios.ParamByName('Contrato').AsString:=ParamContrato;
      QrFolios.ParamByName('Inicio').AsDate:=ParamFechaI;
      QrFolios.ParamByName('Termino').AsDate:=ParamFechaT;
      QrFolios.Open;

      while not QrFolios.Eof do
      begin
        QrConsulta.Active:=False;              //Descripcion,e.sMedida as medida
        QrConsulta.SQL.Text:='SELECT tm.sContrato,tm.sIdTipoMovimiento,tm.sIdTipoMovimiento as sIdRecurso,tm.sDescripcion as Descripcion,' + #10 +
                              'tm.sTipo,tm.smedida as medida,me.didfecha,mf.sFolio,ifnull(SUM( me.sFactor ),0) AS Total,' + #10 +
                              'ifnull((select sdescripcion from anexos where sTipo="BARCO" limit 1)'+
                              ',"No existe") as Titulo, ' +
                               'ifnull((select sAnexo from anexos where sTipo="BARCO" limit 1)'+
                              ',"No existe") as sAnexo ' +
                              'FROM tiposdemovimiento AS tm '  +
                              'inner join movimientosdeembarcacion AS me '   +
                              'on(me.sContrato = tm.sContrato AND me.sClasificacion = tm.sIdTipoMovimiento) ' + #10 +
                              'inner join movimientosxfolios mf on (me.sContrato = mf.sContrato and me.sOrden=mf.sNumeroOrden' + #10 +
                              'and me.didfecha=mf.dIdFecha and me.iIdDiario = mf.iIdDiario) ' +
                              'WHERE tm.sContrato =:ContratoBarco AND me.sOrden =:Orden' + #10 +
                              'and ((:Folio=-1) or (:Folio<>-1 and mf.sFolio=:Folio)) ' + #10 +
                              'AND tm.sClasificacion = "Movimiento de Barco" and' + #10 +
                              'tm.lGenera ="Si" and me.didfecha between :Inicio and :termino ' +
                              'group by me.sContrato,tm.sIdTipoMovimiento,me.didfecha '+
                              'order by me.sContrato,tm.sIdTipoMovimiento,me.didfecha';

        {if IsGeneral then
          QrConsulta.SQL.Add('group by me.sContrato,tm.sIdTipoMovimiento,me.didfecha '+
                             'order by me.sContrato,tm.sIdTipoMovimiento,me.didfecha')
        else
          QrConsulta.SQL.Add('group by me.sContrato,tm.sIdTipoMovimiento,me.didfecha '+
                             'order by me.sContrato,tm.sIdTipoMovimiento,me.didfecha');}

        QrConsulta.ParamByName('ContratoBarco').AsString:=Global_Contrato_Barco;
        QrConsulta.ParamByName('Orden').AsString:=ParamContrato;

        if IsGeneral then
          QrConsulta.ParamByName('Folio').AsString:='-1'
        else
          QrConsulta.ParamByName('Folio').AsString:=QrFolios.FieldByName('sNumeroOrden').AsString;
        QrConsulta.ParamByName('Inicio').AsDate:=ParamFechaI;
        QrConsulta.ParamByName('Termino').AsDate:=ParamFechaT;
        QrConsulta.Open;

        sIdRecurso:='';

        while not QrConsulta.Eof do
        begin
          if sIdRecurso<>QrConsulta.FieldByName('sIdRecurso').AsString then
          begin
//            if MryRecursos.State=dsInsert then
            begin
              if dTotal<>xRound(ValTmp,Mantisa) then
              begin
//                MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat := MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat +
//                  + (xRound(ValTmp,Mantisa)-dTotal);
//                MryRecursos.FieldByName('dTotal').AsFloat:=xRound(ValTmp,Mantisa);
              end
              else
//                MryRecursos.FieldByName('dTotal').AsFloat:= dTotal;
//              MryRecursos.Post;
            end;

            ValTmp:=0;
            CantTmp:=0;
            iPosTmp:=0;
            dTotal:=0;

            sIdRecurso:=QrConsulta.FieldByName('sIdRecurso').AsString;
//            MryRecursos.Append;
//            MryRecursos.FieldByName('iGrupo').AsInteger:=QrFolios.RecNo;
            if IsGeneral then
//              MryRecursos.FieldByName('sFolio').AsString:=QrFolios.FieldByName('sContrato').AsString
            else
//              MryRecursos.FieldByName('sFolio').AsString:=QrFolios.FieldByName('sNumeroOrden').AsString;
//            MryRecursos.FieldByName('sDescFolio').AsString:=QrFolios.FieldByName('descFolio').AsString;
//            MryRecursos.FieldByName('sidrecurso').AsString:=QrConsulta.FieldByName('sIdRecurso').AsString;
//            MryRecursos.FieldByName('sdescripcion').AsString:=QrConsulta.FieldByName('descripcion').AsString;
//            MryRecursos.FieldByName('sAnexo').AsString:=QrConsulta.FieldByName('sAnexo').AsString;
//            MryRecursos.FieldByName('sTitulo').AsString:=QrConsulta.FieldByName('Titulo').AsString;
//            MryRecursos.FieldByName('smedida').AsString:=QrConsulta.FieldByName('Medida').AsString;
//            MryRecursos.FieldByName('dTotal').AsFloat:=0;
            for iPos := 1 to 31 do
//              MryRecursos.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end;

          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime))) ;
//          MryRecursos.FieldByName(sDia).AsFloat :=xRound(QrConsulta.FieldByName('total').Value,Mantisa);
          ValTmp:=ValTmp + QrConsulta.FieldByName('total').Value;
//          dTotal:=dTotal + MryRecursos.FieldByName(sDia).AsFloat;
          if CantTmp<xRound(QrConsulta.FieldByName('total').Value,Mantisa) then
          begin
            CantTmp:=xRound(QrConsulta.FieldByName('total').Value,Mantisa);
            iPosTmp:=DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime);
          end;

          QrConsulta.Next;
        end;

//        if MryRecursos.State=dsInsert then
//        begin
//          if dTotal<>xRound(ValTmp,Mantisa) then
//          begin
//            MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat := MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat +
//              + (xRound(ValTmp,Mantisa)-dTotal);
//            MryRecursos.FieldByName('dTotal').AsFloat:=xRound(ValTmp,Mantisa);
//          end
//          else
//            MryRecursos.FieldByName('dTotal').AsFloat:= dTotal;
//          MryRecursos.Post;
//        end;


        QrConsulta.Active:=fALSE;
        QrConsulta.SQL.text:= 'select s.sNumeroOrden, b.sNumeroActividad, b.sTrazabilidad,i.sIdInsumo as sIdRecurso,'+
                              'i.mDescripcion as descripcion,i.sMedida as medida, sum(b.dCantidad) as total,i.sIdProveedor,'+
                              'b.dFechaSalida as dIdFecha,ifnull((select sdescripcion from anexos where sTipo="MATERIAL" '+
                              'and sTierra="No" order by iorden limit 1),"No existe") as Titulo, ' +
                              'ifnull((select sAnexo from anexos where sTipo="MATERIAL" and sTierra="No" '+
                              'order by iorden limit 1),"No existe") as sAnexo ' +
                              'from almacen_salida s '+
                              'inner join bitacoradesalida b '+
                              'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida and b.sext = s.sext) '+
                              'inner join insumos i '+
                              'on (i.sContrato =:Contrato and i.sIdInsumo = b.sIdInsumo and i.sTrazabilidad = b.sTrazabilidad ) '+
                              //'INNER JOIN actividadesxorden ao ON ( ' +
                              //'ao.sContrato = b.sContrato and ao.sIdConvenio =:Convenio and ao.sNumeroOrden = b.sNumeroOrden and ' +
                              //'ao.sNumeroActividad = b.sNumeroActividad and ao.sTipoActividad = "Actividad" ) ' +
                              'where s.sContrato =:orden and ((:Folio=-1) or (:Folio<>-1 and s.sNumeroOrden=:Folio)) '+
                              'and b.dFechaSalida between :Inicio and :termino '+
                              'group by b.sContrato,b.sIdInsumo,didfecha Order by b.sNumeroOrden,b.sIdInsumo,didfecha';
        QrConsulta.ParamByName('Orden').AsString    := ParamContrato;
        if IsGeneral then
          QrConsulta.ParamByName('Folio').AsString    := '-1'
        else
          QrConsulta.ParamByName('Folio').AsString:=QrFolios.FieldByName('sNumeroOrden').AsString;
        QrConsulta.ParamByName('Inicio').AsDate:=ParamFechaI;
        QrConsulta.ParamByName('Termino').AsDate:=ParamFechaT;
        QrConsulta.ParamByName('Contrato').AsString := global_Contrato_Barco;
        QrConsulta.Open;

        sIdRecurso:='';

        while not QrConsulta.Eof do
        begin
          if sIdRecurso<>QrConsulta.FieldByName('sIdRecurso').AsString then
          begin
//            if MryRecursos.State=dsInsert then
//            begin
//              if dTotal<>xRound(ValTmp,Mantisa) then
//              begin
//                MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat := MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat +
//                  + (xRound(ValTmp,Mantisa)-dTotal);
//                MryRecursos.FieldByName('dTotal').AsFloat:=xRound(ValTmp,Mantisa);
//              end
//              else
//                MryRecursos.FieldByName('dTotal').AsFloat:= dTotal;
//              MryRecursos.Post;
//            end;

            ValTmp:=0;
            CantTmp:=0;
            iPosTmp:=0;
            dTotal:=0;

            sIdRecurso:=QrConsulta.FieldByName('sIdRecurso').AsString;
//            MryRecursos.Append;
//            MryRecursos.FieldByName('iGrupo').AsInteger:=QrFolios.RecNo;
            if IsGeneral then
//              MryRecursos.FieldByName('sFolio').AsString:=QrFolios.FieldByName('sContrato').AsString
            else
//              MryRecursos.FieldByName('sFolio').AsString:=QrFolios.FieldByName('sNumeroOrden').AsString;
//            MryRecursos.FieldByName('sDescFolio').AsString:=QrFolios.FieldByName('descFolio').AsString;
//            MryRecursos.FieldByName('sidrecurso').AsString:=QrConsulta.FieldByName('sIdRecurso').AsString;
//            MryRecursos.FieldByName('sdescripcion').AsString:=QrConsulta.FieldByName('descripcion').AsString;
//            MryRecursos.FieldByName('sAnexo').AsString:=QrConsulta.FieldByName('sAnexo').AsString;
//            MryRecursos.FieldByName('sTitulo').AsString:=QrConsulta.FieldByName('Titulo').AsString;
//            MryRecursos.FieldByName('smedida').AsString:=QrConsulta.FieldByName('Medida').AsString;
//            MryRecursos.FieldByName('dTotal').AsFloat:=0;
            for iPos := 1 to 31 do
//              MryRecursos.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end;

          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime))) ;
//          MryRecursos.FieldByName(sDia).AsFloat :=xRound(QrConsulta.FieldByName('total').Value,Mantisa);
          ValTmp:=ValTmp + QrConsulta.FieldByName('total').Value;
//          dTotal:=dTotal + MryRecursos.FieldByName(sDia).AsFloat;
          if CantTmp<xRound(QrConsulta.FieldByName('total').Value,Mantisa) then
          begin
            CantTmp:=xRound(QrConsulta.FieldByName('total').Value,Mantisa);
            iPosTmp:=DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime);
          end;

          QrConsulta.Next;
        end;

//        if MryRecursos.State=dsInsert then
//        begin
//          if dTotal<>xRound(ValTmp,Mantisa) then
//          begin
//            MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat := MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat +
//              + (xRound(ValTmp,Mantisa)-dTotal);
//            MryRecursos.FieldByName('dTotal').AsFloat:=xRound(ValTmp,Mantisa);
//          end
//          else
//            MryRecursos.FieldByName('dTotal').AsFloat:= dTotal;
//          MryRecursos.Post;
//        end;

        for iGrupo := 1 to length(Asql) do
        begin
          QrConsulta.Active:=false;
          QrConsulta.SQL.Text:=ASql[iGrupo];
          if IsGeneral then
            QrConsulta.ParamByName('Folio').AsString    := '-1'
          else
            QrConsulta.ParamByName('Folio').AsString:=QrFolios.FieldByName('sNumeroOrden').AsString;
          QrConsulta.ParamByName('Inicio').AsDate:=ParamFechaI;
          QrConsulta.ParamByName('Termino').AsDate:=ParamFechaT;
          QrConsulta.ParamByName('ContratoBarco').AsString:=Global_Contrato_Barco;
          QrConsulta.ParamByName('Orden').AsString:=ParamContrato;
          QrConsulta.Open;

          sIdRecurso:='';

          while not QrConsulta.Eof do
          begin
            if sIdRecurso<>QrConsulta.FieldByName('sIdRecurso').AsString then
            begin
//              if MryRecursos.State=dsInsert then
//              begin
//                if dTotal<>xRound(ValTmp,Mantisa) then
//                begin
//                  MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat := MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat +
//                    + (xRound(ValTmp,Mantisa)-dTotal);
//                  MryRecursos.FieldByName('dTotal').AsFloat:=xRound(ValTmp,Mantisa);
//                end
//                else
//                  MryRecursos.FieldByName('dTotal').AsFloat:= dTotal;
//                MryRecursos.Post;
//              end;

              ValTmp:=0;
              CantTmp:=0;
              iPosTmp:=0;
              dTotal:=0;

              sIdRecurso:=QrConsulta.FieldByName('sIdRecurso').AsString;
//              MryRecursos.Append;
//              MryRecursos.FieldByName('iGrupo').AsInteger:=QrFolios.RecNo;
              if IsGeneral then
//                MryRecursos.FieldByName('sFolio').AsString:=QrFolios.FieldByName('sContrato').AsString
              else
//                MryRecursos.FieldByName('sFolio').AsString:=QrFolios.FieldByName('sNumeroOrden').AsString;
//              MryRecursos.FieldByName('sDescFolio').AsString:=QrFolios.FieldByName('descFolio').AsString;
//              MryRecursos.FieldByName('sidrecurso').AsString:=QrConsulta.FieldByName('sIdRecurso').AsString;
//              MryRecursos.FieldByName('sdescripcion').AsString:=QrConsulta.FieldByName('descripcion').AsString;
//              MryRecursos.FieldByName('sAnexo').AsString:=QrConsulta.FieldByName('sAnexo').AsString;
//              MryRecursos.FieldByName('sTitulo').AsString:=QrConsulta.FieldByName('Titulo').AsString;
//              MryRecursos.FieldByName('smedida').AsString:=QrConsulta.FieldByName('Medida').AsString;
//              MryRecursos.FieldByName('dTotal').AsFloat:=0;
              for iPos := 1 to 31 do
//                MryRecursos.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
            end;

            sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime))) ;

            if iGrupo<3 then
            begin
//              MryRecursos.FieldByName(sDia).AsFloat :=xRound(QrConsulta.FieldByName('total').Value,Mantisa) + QrConsulta.FieldByName('Ajuste').AsFloat;
              ValTmp:=ValTmp + (QrConsulta.FieldByName('total').Value + + QrConsulta.FieldByName('Ajuste').AsFloat);
              if CantTmp<(xRound(QrConsulta.FieldByName('total').Value,Mantisa) + QrConsulta.FieldByName('Ajuste').AsFloat) then
              begin
                CantTmp:=xRound(QrConsulta.FieldByName('total').Value,Mantisa) + QrConsulta.FieldByName('Ajuste').AsFloat;
                iPosTmp:=DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime);
              end;
            end
            else
              if (iGrupo=4) and (QrConsulta.FieldByName('sIdcuenta').AsString='1') then
              begin
                connection.QryBusca.Active:=false;
                connection.QryBusca.SQL.Text:='select sum(bpc.dCantidad) as dCantidad' + #10 +
                                              'from bitacoradepersonal_cuadre bpc' + #10 +
                                              'inner join personal p' + #10 +
                                              'on ( p.sContrato = :ContratoBarco and bpc.sIdPersonal = p.sIdPersonal )' + #10 +
                                              'inner join tiposdepersonal tp' + #10 +
                                              'on (tp.sIdTipoPersonal = p.sIdTipoPersonal )' + #10 +
                                              'where bpc.sContrato =:Orden and bpc.snumeroorden=:Folio' + #10 +
                                              'and tp.lPernocta="Si" and bpc.dIdFecha=:Fecha' ;

                connection.QryBusca.ParamByName('ContratoBarco').AsString:= global_contrato_barco;
                connection.QryBusca.ParamByName('Orden').AsString:=ParamContrato;
                connection.QryBusca.ParamByName('Folio').AsString:=QrFolios.FieldByName('sNumeroOrden').AsString;
                connection.QryBusca.ParamByName('Fecha').AsDate:=QrConsulta.FieldByName('dIdFecha').AsDateTime;
                connection.QryBusca.Open;
                if connection.QryBusca.RecordCount=1 then
                begin
//                  MryRecursos.FieldByName(sDia).AsFloat:=xRound(QrConsulta.FieldByName('total').AsFloat,Mantisa)+connection.QryBusca.FieldByName('dCantidad').AsFloat;
                  ValTmp:=ValTmp + (QrConsulta.FieldByName('total').Value + +connection.QryBusca.FieldByName('dCantidad').AsFloat);
                  if CantTmp<(xRound(QrConsulta.FieldByName('total').Value,Mantisa)++connection.QryBusca.FieldByName('dCantidad').AsFloat) then
                  begin
                    CantTmp:=xRound(QrConsulta.FieldByName('total').Value,Mantisa) + +connection.QryBusca.FieldByName('dCantidad').AsFloat;
                    iPosTmp:=DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime);
                  end;
                end
                else
                begin
//                  MryRecursos.FieldByName(sDia).AsFloat:=xRound(QrConsulta.FieldByName('total').AsFloat,Mantisa);
                  ValTmp:=ValTmp + QrConsulta.FieldByName('total').Value;
                  if CantTmp<xRound(QrConsulta.FieldByName('total').Value,Mantisa) then
                  begin
                    CantTmp:=xRound(QrConsulta.FieldByName('total').Value,Mantisa);
                    iPosTmp:=DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime);
                  end;


                end;
              end
              else
              begin
//                MryRecursos.FieldByName(sDia).AsFloat :=xRound(QrConsulta.FieldByName('total').Value,Mantisa);
                ValTmp:=ValTmp + QrConsulta.FieldByName('total').Value;
                if CantTmp<xRound(QrConsulta.FieldByName('total').Value,Mantisa) then
                begin
                  CantTmp:=xRound(QrConsulta.FieldByName('total').Value,Mantisa);
                  iPosTmp:=DayOfTheMonth(QrConsulta.FieldByName('dIdFecha').AsDateTime);
                end;
              end;

//            dTotal:=dTotal + MryRecursos.FieldByName(sDia).AsFloat;

            QrConsulta.Next;
          end;

//          if MryRecursos.State=dsInsert then
//          begin
//            if dTotal<>xRound(ValTmp,Mantisa) then
//            begin
//              MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat := MryRecursos.FieldByName('dia' + Inttostr(iPosTmp)).AsFloat +
//                + (xRound(ValTmp,Mantisa)-dTotal);
//              MryRecursos.FieldByName('dTotal').AsFloat:=xRound(ValTmp,Mantisa);
//            end
//            else
//              MryRecursos.FieldByName('dTotal').AsFloat:= dTotal;
//            MryRecursos.Post;
//          end;


        end;
        QrFolios.Next;
      end;

//      dsGeneradorGeneral.DataSet:=MryRecursos;
      dsGeneradorGeneral.FieldAliases.Clear;

      Reporte.DataSets.Add(dsGeneradorGeneral);


    except
      on e:Exception do
        Showmessage(e.Message + ', ' + e.ClassName);
    end;

  finally
    QrConsulta.Destroy;
  end;
end;

Procedure ExportOTProject(ParamContrato,ParamConvenio,ParamFolio:String;PgbAvance: TcxProgressBar=nil);
var
  MsProject:Variant;
  Error:Boolean;
  QrActividades,QrAvances,
  QrFechas:TzReadOnlyQuery;
  ListaParams:TStringList;
  Ren,ItotalReg : integer;
  Task:Variant;
  iCol:Integer;
begin
  try
    Error:=False;
    try
      MsProject:=GetActiveOLEObject ('MSProject.Application');
    except
      MsProject:=CreateOleObject ('MSProject.Application');
    end;
  except
    Error:=true;
  end;

  if NOt error then
  begin
    QrActividades:=TzReadOnlyQuery.Create(nil);
    QrAvances:=TzReadOnlyQuery.Create(nil);
    QrFechas:=TzReadOnlyQuery.Create(nil);
    ListaParams:=TStringList.Create;
    try
      try
        QrFechas.Connection:=Connection.zConnection;

        MsProject.visible:=false;
        MsProject.DisplayAlerts:=false;
        MsProject.projects.add(False);
        MsProject.ActiveProject.Title:=ParamFolio;
        QrActividades.Connection:=Connection.zConnection;
        QrActividades.SQL.Text:='Select * from actividadesxorden where scontrato=:Contrato ' +
                                'and sIdConvenio=:Convenio and sNumeroOrden=:Folio '+
                                'and inivel=(select min(inivel) from actividadesxorden '+
                                'where sContrato =:Contrato and sIdConvenio =:Convenio ' +
                                'and sNumeroOrden =:Folio) order by iItemOrden';

        QrAvances.Connection:=Connection.zConnection;
        QrAvances.SQL.Text:='SELECT  SUM(dAvance) FROM bitacoradeactividades '+
                            'WHERE sContrato =:Contrato AND sNumeroOrden =:Folio ' +
                            'AND sWbs=:Wbs and sNumeroActividad=:Actividad ' +
                            'AND sIdTipoMovimiento = "E" ';

        QrActividades.ParamByName('Contrato').AsString:=ParamContrato;
        QrActividades.ParamByName('Convenio').AsString:=ParamConvenio;
        QrActividades.ParamByName('Folio').AsString:=ParamFolio;
        QrActividades.Open;

        MsProject.SelectTaskColumn('Nombre');
//        MsProject.Font32Ex('Arial','8',False);
        MsProject.TableEditEx('&Entrada',true,emptyParam,EmptyParam,emptyparam,emptyparam,'Texto1',
        emptyparam,emptyparam,emptyparam,true,true,255,1,2,emptyParam, emptyParam, emptyParam, emptyparam, emptyParam);
        //emptyparam,emptyparam,emptyparam,true,true,255,1,2,emptyParam, emptyParam, emptyParam, emptyParam, emptyParam);

        MsProject.TableApply('&Entrada');

        //MsProject.SelectTaskColumn('Nombre');
        //MsProject.Font32Ex('Arial','8',False);

      MsProject.TableEditEx('&Entrada',True,emptyParam,EmptyParam,emptyparam,'Texto1','Texto1',
        'Act.',emptyParam,emptyParam,emptyParam,emptyParam,emptyParam,emptyParam,emptyParam,2,
        emptyParam,emptyParam,emptyParam,emptyParam);
        MsProject.TableApply('&Entrada');

        //electTaskColumn Column:="Texto1"
    //Font32Ex Name:="Arial", Size:="8", Bold:=False

        MsProject.SelectTaskColumn('Duración');
        MsProject.ColumnDelete;
        MsProject.SelectTaskColumn('Predecesoras');
        MsProject.ColumnDelete;
        MsProject.SelectTaskColumn('Indicadores');
        MsProject.ColumnDelete;
        {MsProject.SelectTaskColumn('Modo de Tarea');
        MsProject.ColumnDelete;
         }
        MsProject.SelectTaskColumn('Nombres de los recursos');
        MsProject.ColumnDelete;

        iCol:=5;
        MsProject.TableEditEx('&Entrada',true,emptyParam,EmptyParam,emptyparam,emptyparam,'Duración',
        emptyparam,emptyparam,emptyparam,true,true,255,1,iCol,emptyParam, emptyParam, emptyParam, emptyParam, emptyParam);
        MsProject.TableApply('&Entrada');

        inc(iCol);
        MsProject.TableEditEx('&Entrada',true,emptyParam,EmptyParam,emptyparam,emptyparam,'Comienzo real',
        emptyparam,emptyparam,emptyparam,true,true,255,1,iCol,emptyParam, emptyParam, emptyParam, emptyParam, emptyParam);
        MsProject.TableApply('&Entrada');

        inc(iCol);
        MsProject.TableEditEx('&Entrada',true,emptyParam,EmptyParam,emptyparam,emptyparam,'Fin real',
        emptyparam,emptyparam,emptyparam,true,true,255,1,iCol,emptyParam, emptyParam, emptyParam, emptyParam, emptyParam);
        MsProject.TableApply('&Entrada');

        inc(iCol);
        MsProject.TableEditEx('&Entrada',true,emptyParam,EmptyParam,emptyparam,emptyparam,'Duración real',
        emptyparam,emptyparam,emptyparam,true,true,255,1,iCol,emptyParam, emptyParam, emptyParam, emptyParam, emptyParam);
        MsProject.TableApply('&Entrada');

        iCol:=2;
        MsProject.TableEditEx('&Entrada',True,emptyParam,EmptyParam,emptyparam,'Nombre','Nombre',
        emptyParam,50,emptyParam,emptyParam,emptyParam,emptyParam,emptyParam,iCol,emptyParam,
        emptyParam,emptyParam,true,emptyParam);
        //TableEditEx(Name, TaskTable, Create, OverwriteExisting, NewName, FieldName, NewFieldName,
      //Title, Width, Align, ShowInMenu, LockFirstColumn, DateFormat, RowHeight, ColumnPosition, AlignTitle, HeaderAutoRowHeightAdjustment, HeaderTextWrap, WrapText, ShowAddNewColumn)

        MsProject.TableApply('&Entrada');

        inc(iCol);

        MsProject.TableEditEx('&Entrada',True,emptyParam,EmptyParam,emptyparam,'Comienzo','Comienzo',
        'Comienzo Previsto',emptyParam,emptyParam,emptyParam,emptyParam,emptyParam,emptyParam,iCol,emptyParam,
        emptyParam,emptyParam,emptyParam,emptyParam);
        MsProject.TableApply('&Entrada');

         inc(iCol);
        MsProject.TableEditEx('&Entrada',True,emptyParam,EmptyParam,emptyparam,'Fin','Fin',
        'Fin Previsto',10,0,true,true,255,1,iCol,0,
        emptyParam,emptyParam,emptyParam,emptyParam);
        MsProject.TableApply('&Entrada');

         inc(iCol);
        MsProject.TableEditEx('&Entrada',True,emptyParam,EmptyParam,emptyparam,'Duración','Duración',
        'Duración Prevista',10,0,true,true,255,1,iCol,0,
        emptyParam,emptyParam,emptyParam,emptyParam);
        MsProject.TableApply('&Entrada');

      //  TableEditEx Name:="&Entrada", TaskTable:=True, NewName:="", NewFieldName:="Duración", Width:=20, ShowInMenu:=True, LockFirstColumn:=True, DateFormat:=255, RowHeight:=1, ColumnPosition:=6


      //TableEditEx(Name, TaskTable, Create, OverwriteExisting, NewName, FieldName, NewFieldName,
      //Title, Width, Align, ShowInMenu, LockFirstColumn, DateFormat, RowHeight, ColumnPosition, AlignTitle, HeaderAutoRowHeightAdjustment, HeaderTextWrap, WrapText, ShowAddNewColumn)

        while not QrActividades.Eof do
        begin
          MsProject.ActiveProject.Tasks.add(QrActividades.FieldByName('mDescripcion').AsString);
          //showmessage(IntTostr(MsProject.ActiveProject.Tasks.Count));
          Task:=MsProject.ActiveProject.Tasks.item[MsProject.ActiveProject.Tasks.Count];
          Task.text1:=QrActividades.FieldByName('sNumeroActividad').AsString;
          Task.start:=QrActividades.FieldByName('dFechaInicio').AsDateTime;
          Task.Finish:=QrActividades.FieldByName('dFechaFinal').AsDateTime;

          if QrActividades.FieldByName('sTipoActividad').AsString='Paquete' then
          begin


          end
          else
          begin
            QrFechas.Active:=False;
            QrFechas.SQL.Text:= 'select cast((concat(min(didfecha)," ",min(sHoraInicio))) as datetime) as fecha '+
                                'from bitacoradeactividades where sContrato=:Contrato and '+
                                'sNumeroOrden=:Folio and swbs=:wbs and sNumeroActividad=:Actividad and '+
                                'sIdTipoMovimiento="ED" ';

            QrFechas.ParamByName('Contrato').AsString:=QrActividades.FieldByName('sContrato').AsString;
            QrFechas.ParamByName('Folio').AsString:=QrActividades.FieldByName('sNumeroOrden').AsString;
            QrFechas.ParamByName('wbs').AsString:=QrActividades.FieldByName('swbs').AsString;
            QrFechas.ParamByName('Actividad').AsString:=QrActividades.FieldByName('sNumeroActividad').AsString;
            QrFechas.Open;

            if QrFechas.RecordCount>0 then
              if not QrFechas.FieldByName('fecha').IsNull then
                Task.Actualstart:=QrFechas.FieldByName('fecha').AsDateTime;

            QrFechas.Active:=False;
            QrFechas.SQL.Text:= 'select cast((concat(Max(didfecha)," ",max(sHoraFinal))) as datetime) as fecha '+
                                'from bitacoradeactividades where sContrato=:Contrato and '+
                                'sNumeroOrden=:Folio and swbs=:wbs and sNumeroActividad=:Actividad and '+
                                'sIdTipoMovimiento="ED" ';

            QrFechas.ParamByName('Contrato').AsString:=QrActividades.FieldByName('sContrato').AsString;
            QrFechas.ParamByName('Folio').AsString:=QrActividades.FieldByName('sNumeroOrden').AsString;
            QrFechas.ParamByName('wbs').AsString:=QrActividades.FieldByName('swbs').AsString;
            QrFechas.ParamByName('Actividad').AsString:=QrActividades.FieldByName('sNumeroActividad').AsString;
            QrFechas.Open;
            if QrFechas.RecordCount>0 then
              if not QrFechas.FieldByName('fecha').IsNull then
                Task.ActualFinish:=QrFechas.FieldByName('fecha').value;




            QrAvances.Active:=False;
            QrAvances.ParamByName('Contrato').AsString:=QrActividades.FieldByName('sContrato').AsString;
            QrAvances.ParamByName('Folio').AsString:=QrActividades.FieldByName('sNumeroOrden').AsString;
            QrAvances.ParamByName('wbs').AsString:=QrActividades.FieldByName('swbs').AsString;
            QrAvances.ParamByName('Actividad').AsString:=QrActividades.FieldByName('sNumeroActividad').AsString;
            QrAvances.Open;


          end;

          with ListaParams do
          begin
            Clear;
            Add('Contrato='+QrActividades.FieldByName('sContrato').AsString);
            Add('Convenio='+ParamConvenio);
            Add('Folio='+QrActividades.FieldByName('sNumeroOrden').AsString);
            Add('Wbs='+QrActividades.FieldByName('swbs').AsString);
          end;

          //SelectTaskField Row:=1, Column:="Modo de tarea"
          //SetTaskField Field:="Modo de tarea", Value:="No"
          //MsProject.SelectTaskField(1,'Modo de tarea');
          //MsProject.SetTaskField('Modo de tarea','No');
          MsProject.SelectTaskField(MsProject.ActiveProject.Tasks.Count,'Modo de tarea',false);
          MsProject.SetTaskField('Modo de tarea','No',MsProject.ActiveProject.Tasks.Count,emptyparam);
          VolumenActividades(MsProject,ListaParams,Ren,ItotalReg,PgbAvance);
          QrActividades.Next;
        end;
      except
        on e:Exception do
          showmessage(e.Message + ', ' + e.ClassName);
      end;
    finally
      MsProject.visible:=true;
      MsProject.DisplayAlerts:=true;

      if PgbAvance<>nil then
      begin
        PgbAvance.Visible:=False;
        Application.ProcessMessages;
      end;
      QrActividades.Destroy;
      QrAvances.Destroy;
      ListaParams.Destroy;
      QrFechas.Destroy;
    end;




  end;
///Exportando
end;

function VolumenActividades(var MsProject:Variant;ListaParams:TstringList;var Ren:Integer;const ItotalReg:Integer;PgbAvance: TcxProgressBar=nil):Boolean;
var
  QrActividades,QrAvances:TzReadOnlyQuery;
  NewListaParams:TstringList;
  Task:variant;
  QrFechas:TzReadOnlyQuery;
begin
  QrActividades:=TzReadOnlyQuery.Create(nil);
  QrAvances:=TzReadOnlyQuery.Create(nil);
  QrFechas:=TzReadOnlyQuery.Create(nil);
  NewListaParams:=TstringList.Create;
  try
    try
      QrFechas.Connection:=connection.zConnection;
      QrAvances.Connection:=Connection.zConnection;
      QrAvances.SQL.Text:='SELECT  SUM(dAvance) FROM bitacoradeactividades '+
                          'WHERE sContrato =:Contrato AND sNumeroOrden =:Folio ' +
                          'AND sWbs=:Wbs and sNumeroActividad=:Actividad ' +
                          'AND sIdTipoMovimiento = "E" ';



      QrActividades.Connection:=Connection.zConnection;
      QrActividades.SQL.Text:='select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio ' +
                              'and sNumeroOrden =:Folio and swbsanterior=:wbsAnt order by iItemOrden';
      QrActividades.Params.ParamByName('Contrato').Value    := ListaParams.Values['Contrato'];
      QrActividades.Params.ParamByName('Convenio').Value    := ListaParams.Values['Convenio'];
      QrActividades.Params.ParamByName('Folio').Value       := ListaParams.Values['Folio'];
      QrActividades.ParamByName('wbsAnt').AsString:=ListaParams.Values['Wbs'];
      QrActividades.Open ;



      while not QrActividades.Eof do
      begin
        MsProject.ActiveProject.Tasks.add(QrActividades.FieldByName('mDescripcion').AsString);
        if QrActividades.RecNo=1 then
        begin
          MsProject.SelectTaskField(1,'Nombre');
          MsProject.OutlineIndent;
        end;
        //Task:=MsProject.ActiveProject.Tasks.item[MsProject.ActiveProject.Tasks.Count-1];
        Task:=MsProject.ActiveProject.Tasks.item[MsProject.ActiveProject.Tasks.Count];
//        showmessage(IntTostr(MsProject.ActiveProject.Tasks.Count));
        Task.text1:=QrActividades.FieldByName('sNumeroActividad').AsString;
        Task.start:=QrActividades.FieldByName('dFechaInicio').AsDateTime;
        Task.Finish:=QrActividades.FieldByName('dFechaFinal').AsDateTime;
        //MsProject.SelectTaskField Row:=0, Column:="Modo de tarea"
        MsProject.SelectTaskField(MsProject.ActiveProject.Tasks.Count,'Modo de tarea',false);
        MsProject.SetTaskField('Modo de tarea','No',MsProject.ActiveProject.Tasks.Count,emptyparam);
        if QrActividades.FieldByName('sTipoActividad').AsString='Paquete' then
        begin


        end
        else
        begin
          QrFechas.Active:=False;
          QrFechas.SQL.Text:= 'select cast((concat(min(didfecha)," ",min(sHoraInicio))) as datetime) as fecha '+
                              'from bitacoradeactividades where sContrato=:Contrato and '+
                              'sNumeroOrden=:Folio and swbs=:wbs and sNumeroActividad=:Actividad and '+
                              'sIdTipoMovimiento="ED" ';

          QrFechas.ParamByName('Contrato').AsString:=QrActividades.FieldByName('sContrato').AsString;
          QrFechas.ParamByName('Folio').AsString:=QrActividades.FieldByName('sNumeroOrden').AsString;
          QrFechas.ParamByName('wbs').AsString:=QrActividades.FieldByName('swbs').AsString;
          QrFechas.ParamByName('Actividad').AsString:=QrActividades.FieldByName('sNumeroActividad').AsString;
          QrFechas.Open;

          if QrFechas.RecordCount>0 then
            if not QrFechas.FieldByName('fecha').IsNull then
              Task.Actualstart:=QrFechas.FieldByName('fecha').AsDateTime;

          QrFechas.Active:=False;
          QrFechas.SQL.Text:= 'select cast((concat(Max(didfecha)," ",max(sHoraFinal))) as datetime) as fecha '+
                              'from bitacoradeactividades where sContrato=:Contrato and '+
                              'sNumeroOrden=:Folio and swbs=:wbs and sNumeroActividad=:Actividad and '+
                              'sIdTipoMovimiento="ED" ';

          QrFechas.ParamByName('Contrato').AsString:=QrActividades.FieldByName('sContrato').AsString;
          QrFechas.ParamByName('Folio').AsString:=QrActividades.FieldByName('sNumeroOrden').AsString;
          QrFechas.ParamByName('wbs').AsString:=QrActividades.FieldByName('swbs').AsString;
          QrFechas.ParamByName('Actividad').AsString:=QrActividades.FieldByName('sNumeroActividad').AsString;
          QrFechas.Open;
          if QrFechas.RecordCount>0 then
            if not QrFechas.FieldByName('fecha').IsNull then
              Task.ActualFinish:=QrFechas.FieldByName('fecha').value;

          QrAvances.Active:=False;
          QrAvances.ParamByName('Contrato').AsString:=QrActividades.FieldByName('sContrato').AsString;
          QrAvances.ParamByName('Folio').AsString:=QrActividades.FieldByName('sNumeroOrden').AsString;
          QrAvances.ParamByName('wbs').AsString:=QrActividades.FieldByName('swbs').AsString;
          QrAvances.ParamByName('Actividad').AsString:=QrActividades.FieldByName('sNumeroActividad').AsString;
          QrAvances.Open;


        end;
        with NewListaParams do
        begin
          Clear;
          Add('Contrato='+QrActividades.FieldByName('sContrato').AsString);
          Add('Convenio='+ListaParams.Values['Convenio']);
          Add('Folio='+QrActividades.FieldByName('sNumeroOrden').AsString);
          Add('Wbs='+QrActividades.FieldByName('swbs').AsString);
        end;
        VolumenActividades(MsProject,NewListaParams,Ren,ItotalReg,PgbAvance);
        QrActividades.Next;
      end;
    except

    end;

  finally
    NewListaParams.Destroy;
    QrActividades.Destroy;
    QrAvances.Destroy;
    QrFechas.destroy;
  end;

end;

Procedure BitacoraPDF_ActividadesTareas(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccionBitacora; sParamEstatus, sParamNivelImprime : string);
Var
  QryInfoFolio,
  QryPartidas,
  QryDetallePartidas,
  QryFolios : TZQuery;

  Td_partidas,
  Td_ImpPartidas : TfrxDBDataset;
  dDiaSiguiente  : TDateTime;
  rxPartidas     : TrxMemoryData;
  iTotalPersonal, indice : integer;
  lContinua      : boolean;
  QrAux:TzReadOnlyQuery;
  sIidDiario,
  siIdTarea,
  siIdActividad:String;
begin
    QrAux:=TzReadOnlyQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryFolios := TZQuery.Create(nil);
      QryFolios.Connection := Connection.zConnection;
      QryPartidas := TZQuery.Create(nil);
      QryPartidas.Connection := Connection.zConnection;
      QryDetallePartidas := TZQuery.Create(nil);
      QryDetallePartidas.Connection := Connection.zConnection;

      Td_partidas:= TfrxDBDataset.Create(nil);
      Td_partidas.UserName:='td_partidas';

      Td_ImpPartidas:= TfrxDBDataset.Create(nil);
      Td_ImpPartidas.UserName:='Td_ImpPartidas';

      QrAux.connection:=Connection.zconnection;
      rxPartidas := TrxMemoryData.Create(nil);
      rxPartidas.Active := False;
      rxPartidas.FieldDefs.Add('sTipo', ftString, 25, True);
      rxPartidas.FieldDefs.Add('sOT', ftString, 15, True);
      rxPartidas.FieldDefs.Add('sFolio', ftString, 35, True);
      rxPartidas.FieldDefs.Add('sPlataforma', ftString, 50, True);
      rxPartidas.FieldDefs.Add('mDescripcionFolio', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('sNumeroActividad', ftString, 20, True);
      rxPartidas.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('sHoraInicio', ftString, 5, True);
      rxPartidas.FieldDefs.Add('sHoraFin', ftString, 5, True);
      rxPartidas.FieldDefs.Add('mDescripcionTarea', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('sEstatus', ftString, 15, True);
      rxPartidas.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
      rxPartidas.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
      rxPartidas.Active := True;

      if (TImpresion=FtsTareas) then
      begin
          {$REGION 'FOLIOS REPORTADOS'}
          QryFolios.SQL.Clear;
          QryFolios.SQL.Add('SELECT ot.sContrato, ot.sNumeroOrden, ot.sIdFolio, ot.mDescripcion, p.sDescripcion as plataforma '+
                            'FROM ordenesdetrabajo AS ot ' +
                            '	INNER JOIN rd_proyectos AS c ' +
                            '		ON (ot.sContrato=c.sContrato) ' +
                            '	INNER JOIN bitacoradeactividades AS ba ' +
                            '		ON (ba.sContrato=c.sContrato AND ba.sNumeroOrden=ot.sNumeroOrden) ' +
                            '	LEFT JOIN tiposdemovimiento AS tm ' +
                            '		ON (tm.sContrato= :ContratoBarco AND tm.sIdTipoMovimiento=ba.sIdTipoMovimiento AND tm.sClasificacion="Tarifa Diaria") ' +
                            'inner join plataformas  p on (p.sIdPlataforma = ot.sIdPlataforma) '+
                            'WHERE c.sContrato= :Orden AND ba.dIdFecha= :Fecha and ot.sNumeroOrden =:Folio ' +
                            'GROUP BY ot.sContrato,	ot.sNumeroorden');
          QryFolios.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sContrato').AsString;
          QryFolios.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
          QryFolios.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
          QryFolios.ParamByName('Folio').AsString         := ReporteDiario.FieldByName('sNumeroOrden').AsString;
          QryFolios.Open;

          while Not QryFolios.Eof do
          begin
              {$REGION 'CONSULTA - PARTIDAS REPORTADAS'}
              QryPartidas.SQL.Clear;
              QryPartidas.SQL.Add('SELECT  a.sContrato, a.sNumeroActividad, a.sWbs, a.sNumeroOrden, '+
                                  '	o.mdescripcion as sDescripcionActividad, a.iIdTarea_act ' +
                                  'FROM bitacoradeactividades a ' +
                                  'INNER JOIN actividadesxorden o ' +
                                  '		ON (o.sContrato = a.sContrato AND o.sIdConvenio = :Convenio AND o.sNumeroOrden = a.sNumeroOrden AND a.sWbs = o.sWbs AND o.sNumeroActividad = a.sNumeroActividad AND o.sTipoActividad = "Actividad" and o.sTipoAnexo = "PT") ');
              if sParamNivelImprime = 'General' then
                 QryPartidas.SQL.Add('WHERE a.sContrato = :Orden AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento = "E" and a.lImprime ="Si" ')
              else
                 QryPartidas.SQL.Add('WHERE a.sContrato = :Orden AND a.dIdFecha = :Fecha AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento = "E" and a.lImprime ="Si" '+
                                  'GROUP BY	a.sWbs ' +
                                  'ORDER BY a.sContrato, o.iItemOrden, a.iIdTarea_act ');
              QryPartidas.ParamByName('Convenio').AsString := global_convenio;
              QryPartidas.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sContrato').AsString;
              if sParamNivelImprime = 'Seleccionado' then
                 QryPartidas.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              QryPartidas.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryPartidas.ParamByName('Turno').AsString    := ReporteDiario.FieldByName('sIdTurno').AsString;
              QryPartidas.Open;
              {$ENDREGION}

              while Not QryPartidas.Eof do
              begin
                  {$REGION 'CONSULTA - DETALLE DE PARTIDAS'}
                  QryDetallePartidas.SQL.Clear;
                  QryDetallePartidas.SQL.Add(' select * from bitacoradeactividades_tareas where sContrato =:Contrato and sNumeroOrden =:Orden and sWbs =:Wbs '+ sParamEstatus);
                  QryDetallePartidas.ParamByName('Contrato').AsString := QryPartidas.FieldByName('sContrato').AsString;
                  QryDetallePartidas.ParamByName('Orden').AsString    := QryPartidas.FieldByName('sNumeroOrden').AsString;
                  QryDetallePartidas.ParamByName('Wbs').AsString      := QryPartidas.FieldByName('sWbs').AsString;
                  QryDetallePartidas.Open;
                  {$ENDREGION}

                  {$REGION 'INSERCIÓN DE DATOS'}
                  while Not QryDetallePartidas.Eof do
                  begin
                        rxPartidas.Append;
                        rxPartidas.FieldValues['sTipo']            := 'Tareas';
                        rxPartidas.FieldValues['sOT']              := QryFolios.FieldByName('sContrato').AsString;
                        rxPartidas.FieldValues['sFolio']           := QryFolios.FieldByName('sIdFolio').AsString;
                        rxPartidas.FieldValues['sPlataforma']      := QryFolios.FieldByName('plataforma').AsString;
                        rxPartidas.FieldValues['mDescripcionFolio']:= QryFolios.FieldByName('mDescripcion').AsString;
                        rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                        rxPartidas.FieldValues['mDescripcion']     := QryPartidas.FieldByName('sDescripcionActividad').AsString;
                        rxPartidas.FieldValues['sHoraInicio']      := QryDetallePartidas.FieldByName('sHoraInicio').AsString;
                        rxPartidas.FieldValues['sHoraFin']         := QryDetallePartidas.FieldByName('sHoraFinal').AsString;
                        rxPartidas.FieldValues['mDescripcionTarea']:= QryDetallePartidas.FieldByName('mDescripcion').AsString;
                        rxPartidas.FieldValues['dFechaInicio']     := QryDetallePartidas.FieldByName('dFechaInicio').AsDateTime;
                        rxPartidas.FieldValues['dFechaFinal']      := QryDetallePartidas.FieldByName('dFechaFinal').AsDateTime;
                        rxPartidas.FieldValues['sEstatus']         := QryDetallePartidas.FieldByName('eEstatus').AsString;
                        rxPartidas.Post;
                      QryDetallePartidas.Next;
                  end;

                  if sParamNivelImprime = 'General' then
                     if QryDetallePartidas.RecordCount = 0 then
                     begin
                        rxPartidas.Append;
                        rxPartidas.FieldValues['sTipo']            := 'Tareas';
                        rxPartidas.FieldValues['sOT']              := QryFolios.FieldByName('sContrato').AsString;
                        rxPartidas.FieldValues['sFolio']           := QryFolios.FieldByName('sIdFolio').AsString;
                        rxPartidas.FieldValues['sPlataforma']      := QryFolios.FieldByName('plataforma').AsString;
                        rxPartidas.FieldValues['mDescripcionFolio']:= QryFolios.FieldByName('mDescripcion').AsString;
                        rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                        rxPartidas.FieldValues['mDescripcion']     := QryPartidas.FieldByName('sDescripcionActividad').AsString;
                        rxPartidas.Append;
                     end;

                  {$ENDREGION}
                 QryPartidas.Next;
              end;

              QryFolios.Next;
          end;
          {Esta secccion es para mostrar la hoja vacia sino existen datos.}
          if rxPartidas.RecordCount = 0 then
          begin
              rxPartidas.Append;
              rxPartidas.FieldValues['sOT'] := '';
              rxPartidas.Post;
          end;
      end;

      {$ENDREGION}
      Td_Partidas.DataSet:= rxPartidas;
      Td_Partidas.FieldAliases.Clear;

      Td_ImpPartidas.DataSet:= rxPartidas;
      Td_ImpPartidas.FieldAliases.Clear;

      Reporte.DataSets.Add(Td_partidas);
      Reporte.DataSets.Add(Td_ImpPartidas);

    Finally
      QrAux.destroy;
    End;

end;


Procedure ReportePDF_AvancesCortes(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccion);
Var
  QryInfoFolio,
  QryPartidas,
  QryDetallePartidas,
  QryConsultaAvanceAnterior,
  QryConsultaAvancesAcumulados,
  QryFolios,
  QryPonderadoPartida  : TZQuery;

  Td_AvancesPartidas,
  Td_ImpAvPartidas : TfrxDBDataset;
  rxPartidas     : TrxMemoryData;
  indice : integer;
  lContinua  : boolean;
  sHora, sConvenio  : String;

  dAvanceRealAnt_folio,
  dAvanceRealAct_folio,
  dAvanceRealAcum_folio,

  dAvanceProgAnt_folio,
  dAvanceProgAct_folio,
  dAvanceProgAcum_folio :double;
begin
    Try
      {Creacion de objetos de consulta}
      QryConsultaAvancesAcumulados := TZQuery.Create(nil);
      QryConsultaAvancesAcumulados.Connection := Connection.zConnection;
      QryConsultaAvanceAnterior := TZQuery.Create(nil);
      QryConsultaAvanceAnterior.Connection := connection.zConnection;
      QryFolios := TZQuery.Create(nil);
      QryFolios.Connection := Connection.zConnection;
      QryPartidas := TZQuery.Create(nil);
      QryPartidas.Connection := Connection.zConnection;
      QryDetallePartidas := TZQuery.Create(nil);
      QryDetallePartidas.Connection := Connection.zConnection;
      QryInfoFolio := TZQuery.Create(nil);
      QryInfoFolio.Connection := Connection.zConnection;
      QryPonderadoPartida := TZQuery.Create(nil);
      QryPonderadoPartida.Connection := Connection.zConnection;

      Td_AvancesPartidas:= TfrxDBDataset.Create(nil);
      Td_AvancesPartidas.UserName:='td_AvancesPartidas';

      Td_ImpAvPartidas:= TfrxDBDataset.Create(nil);
      Td_ImpAvPartidas.UserName:='Td_ImpAvPartidas';


      rxPartidas := TrxMemoryData.Create(nil);
      rxPartidas.Active := False;
      rxPartidas.FieldDefs.Add('sTipo', ftString, 25, True);
      rxPartidas.FieldDefs.Add('sOT', ftString, 15, True);
      rxPartidas.FieldDefs.Add('sFolio', ftString, 35, True);
      rxPartidas.FieldDefs.Add('sPlataforma', ftString, 50, True);
      rxPartidas.FieldDefs.Add('mDescripcionFolio', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntFolio_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActFolio_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumFolio_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntFolio_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActFolio_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumFolio_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sNumeroActividad', ftString, 20, True);
      rxPartidas.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntPart_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActPart_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumPart_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntPart_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActPart_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumPart_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sHorario', ftString, 5, True);
      rxPartidas.Active := True;

      if (TImpresion=FtsAvancesCortes) or (TImpresion=FtsAll) then
      begin
          {$REGION 'FOLIOS REPORTADOS'}
          QryFolios.SQL.Clear;
          QryFolios.SQL.Add('SELECT ot.sContrato, ot.sNumeroOrden, ot.sIdFolio, ot.mDescripcion, p.sDescripcion as plataforma, '+
                            ' ba.sIdConvenio as Convenio '+
                            'FROM ordenesdetrabajo AS ot ' +
                            '	INNER JOIN rd_proyectos AS c ' +
                            '		ON (ot.sContrato=c.sContrato) ' +
                            '	INNER JOIN bitacoradeactividades AS ba ' +
                            '		ON (ba.sContrato=c.sContrato AND ba.sNumeroOrden=ot.sNumeroOrden) ' +
                            '	LEFT JOIN tiposdemovimiento AS tm ' +
                            '		ON (tm.sContrato= :ContratoBarco AND tm.sIdTipoMovimiento=ba.sIdTipoMovimiento AND tm.sClasificacion="Tarifa Diaria") ' +
                            'inner join plataformas  p on (p.sIdPlataforma = ot.sIdPlataforma) '+
                            'WHERE c.sContrato= :Orden AND ba.dIdFecha= :Fecha ' +
                            'GROUP BY ot.sContrato,	ot.sNumeroorden');
          QryFolios.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
          QryFolios.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
          QryFolios.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
          QryFolios.Open;

          while Not QryFolios.Eof do
          begin
               {$REGION 'AVANCE PROGRAMADO ANT. FOLIO'}
              dAvanceProgAnt_Folio  := 0;
              dAvanceProgAct_folio  := 0;
              dAvanceProgAcum_folio := 0;
              dAvanceRealAnt_folio  := 0;
              dAvanceRealAct_folio  := 0;
              dAvanceRealAcum_folio := 0;

              {Avances Programados del Folio..}
              QryConsultaAvancesAcumulados.SQL.Clear;
              QryConsultaAvancesAcumulados.SQL.Add('Select a.sIdConvenio, c.iGerencialInicio, c.dFecha,  a.dAvancePonderadoDia, a.dAvancePonderadoGlobal, a.iNumeroGerencial '+
                                           ' From avancesglobales a '+
                                           ' inner join convenios c '+
                                           ' on (c.sContrato = a.sContrato and  '+
                                           '     c.sIdConvenio = a.sIdConvenio) '+
                                           ' Where a.sContrato = :Orden And     '+
                                           '       a.sNumeroOrden = :Folio and  '+
                                           '       a.dIdFecha =:Fecha '+
                                           ' group by a.dIdFecha, a.iNumeroGerencial '+
                                           ' order by a.dIdFecha, a.iNumeroGerencial');
              QryConsultaAvancesAcumulados.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sOrden').AsString;
              QryConsultaAvancesAcumulados.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryConsultaAvancesAcumulados.ParamByName('Fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              QryConsultaAvancesAcumulados.Open;


              {Avances Fisicos del Folio}
              QryConsultaAvanceAnterior.SQL.Clear;
              QryConsultaAvanceAnterior.SQL.Text := ObtenerSentencia( 'bitacoradeactividades', 'sql_avances_reales_frente', ftConsulta );
              QryConsultaAvanceAnterior.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sOrden').AsString;
              QryConsultaAvanceAnterior.ParamByName('Convenio').AsString := QryFolios.FieldByName('Convenio').AsString;
              QryConsultaAvanceAnterior.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryConsultaAvanceAnterior.ParamByName('Fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              QryConsultaAvanceAnterior.Open;

              {$ENDREGION}

              for indice := 1 to 3 do
              begin
                  {$REGION 'AVANCES DEL FOLIO'}
                  QryConsultaAvanceAnterior.First;
                  while not QryConsultaAvanceAnterior.Eof do
                  begin
                      if indice = QryConsultaAvanceAnterior.FieldByName('iNumeroGerencial').AsInteger then
                      begin
                          dAvanceRealAnt_folio  := QryConsultaAvanceAnterior.FieldByName('AvanceAnterior').AsFloat;
                          dAvanceRealAct_folio  := QryConsultaAvanceAnterior.FieldByName('AvanceActual').AsFloat;
                          dAvanceRealAcum_folio := QryConsultaAvanceAnterior.FieldByName('AvanceAcumulado').AsFloat;
                      end;
                      QryConsultaAvanceAnterior.Next;
                  end;

                  QryConsultaAvancesAcumulados.First;
                  while not QryConsultaAvancesAcumulados.Eof do
                  begin
                      if indice = QryConsultaAvancesAcumulados.FieldByName('iNumeroGerencial').AsInteger then
                      begin
                          dAvanceProgAnt_folio  := xRound(QryConsultaAvancesAcumulados.FieldByName('dAvancePonderadoGlobal').AsFloat - QryConsultaAvancesAcumulados.FieldByName('dAvancePonderadoDia').AsFloat,2);
                          dAvanceProgAct_folio  := xRound(QryConsultaAvancesAcumulados.FieldByName('dAvancePonderadoDia').AsFloat,2);
                          dAvanceProgAcum_folio := xRound(QryConsultaAvancesAcumulados.FieldByName('dAvancePonderadoGlobal').AsFloat,2) ;
                          sConvenio             := QryConsultaAvancesAcumulados.FieldByName('sIdConvenio').AsString;
                      end;
                      QryConsultaAvancesAcumulados.Next;
                  end;

                  {$ENDREGION}

                  {$REGION 'CONSULTA AV. REAL - PARTIDAS REPORTADAS'}
                  QryPartidas.SQL.Clear;
                  QryPartidas.SQL.Add('SELECT  a.sContrato, a.iIdDiario,	a.sNumeroActividad, o.dPonderado, a.sWbs, '+
                                      ' (SELECT   SUM(dAvance) ' +
                                      ' FROM bitacoradeactividades ' +
                                      ' WHERE '+
                                      'dIdFecha < a.dIdFecha '+
                                      '   AND sIdTipoMovimiento = "E" ' +
                                      '   AND sWbs = a.sWbs ' +
                                      '   AND sContrato = a.sContrato ' +
                                      '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceAnterior_GeneralPartida_1, '+

                                      ' (SELECT   SUM(dAvance) ' +
                                      ' FROM bitacoradeactividades ' +
                                      ' WHERE '+
                                      'dIdFecha = a.dIdFecha and iNumeroGerencial <= :numero '+
                                      '   AND sIdTipoMovimiento = "E" ' +
                                      '   AND sWbs = a.sWbs ' +
                                      '   AND sContrato = a.sContrato ' +
                                      '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceAnterior_GeneralPartida, '+

                                      ' (SELECT  SUM(dAvance) ' +
                                      ' FROM bitacoradeactividades ' +
                                      ' WHERE ' +
                                      '   dIdFecha = a.dIdFecha and iNumeroGerencial =:Numero ' +
                                      '   AND sIdTipoMovimiento = "E" ' +
                                      '   AND sWbs = a.sWbs ' +
                                      '   AND sContrato = a.sContrato ' +
                                      '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceActual_GeneralPartida, ' +

                                      '	o.mdescripcion as sDescripcionActividad ' +
                                      'FROM bitacoradeactividades a ' +
                                      'INNER JOIN actividadesxorden o ' +
                                      '		ON (o.sContrato = a.sContrato AND o.sIdConvenio = :Convenio AND o.sNumeroOrden = a.sNumeroOrden AND a.sWbs = o.sWbs AND o.sNumeroActividad = a.sNumeroActividad AND o.sTipoActividad = "Actividad" and o.sTipoAnexo = "PT") ' +

                                      'WHERE a.sContrato = :Orden AND a.dIdFecha = :Fecha AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento = "E" and a.lImprime ="Si" ' +
                                      'GROUP BY	a.sNumeroActividad ' +
                                      'ORDER BY a.sContrato, o.iItemOrden, a.sNumeroActividad, a.sHoraInicio ');
                  QryPartidas.ParamByName('Convenio').AsString := QryFolios.FieldByName('Convenio').AsString;
                  QryPartidas.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sOrden').AsString;
                  QryPartidas.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                  QryPartidas.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
                  QryPartidas.ParamByName('Turno').AsString    := ReporteDiario.FieldByName('sIdTurno').AsString;
                  QryPartidas.ParamByName('Numero').AsInteger  := indice;
                  QryPartidas.Open;
                  {$ENDREGION}

                  while Not QryPartidas.Eof do
                  begin
                      {$REGION 'AVANCES PROGRAMADOS PARTIDAS'}
                      QryPonderadoPartida.SQL.Clear;
                      QryPonderadoPartida.SQL.Add('select b.sNumeroActividad, '+
                                            '(select sum(dCantidad) '+
                                            'from '+
                                            'distribuciondeactividades where sContrato = b.sContrato and sIdConvenio = b.sIdConvenio '+
                                            'and sNumeroOrden = b.sNumeroOrden and swbs = b.sWbs '+
                                            'and dIdFecha <:fecha '+
                                            ') as PonderadoAnt, '+

                                            '(select sum(dCantidad) '+
                                            'from '+
                                            'distribuciondeactividades where sContrato = b.sContrato and sIdConvenio = b.sIdConvenio '+
                                            'and sNumeroOrden = b.sNumeroOrden and swbs = b.sWbs '+
                                            'and dIdFecha = :Fecha and iNumeroGerencial < :Numero '+
                                            ') as PonderadoAcum, '+

                                            '(select dCantidad '+
                                            'from '+
                                            'distribuciondeactividades where sContrato = b.sContrato and sIdConvenio = b.sIdConvenio '+
                                            'and sNumeroOrden = b.sNumeroOrden and swbs = b.sWbs '+
                                            'and dIdFecha = :Fecha and iNumeroGerencial = :Numero '+
                                            ') as PonderadoActual '+

                                            'from distribuciondeactividades b where b.sContrato = :Orden and b.sIdConvenio = :Convenio '+
                                            'and b.sNumeroOrden = :Folio and b.swbs = :Wbs '+
                                            'group by b.sWbs ');
                      QryPonderadoPartida.ParamByName('Convenio').AsString := sConvenio;
                      QryPonderadoPartida.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sOrden').AsString;
                      QryPonderadoPartida.ParamByName('Fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                      QryPonderadoPartida.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
                      QryPonderadoPartida.ParamByName('Wbs').AsString      := QryPartidas.FieldByName('sWbs').AsString;
                      QryPonderadoPartida.ParamByName('Numero').AsInteger  := indice;
                      QryPonderadoPartida.Open;
                      {$ENDREGION}

                      {$REGION 'Insertar Datos en RxPartidas'}
                      rxPartidas.Append;
                      rxPartidas.FieldValues['sTipo']       := 'General';
                      rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                      rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                      rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                      rxPartidas.FieldValues['mDescripcionFolio'] := QryFolios.FieldValues['mDescripcion'];

                      rxPartidas.FieldValues['dAvanceAntFolio_Real']   := dAvanceRealAnt_folio;
                      rxPartidas.FieldValues['dAvanceActFolio_Real']   := dAvanceRealAct_folio ;
                      rxPartidas.FieldValues['dAvanceAcumFolio_Real']  := dAvanceRealAcum_folio;

                      rxPartidas.FieldValues['dAvanceAntFolio_Prog']   := dAvanceProgAnt_folio;
                      rxPartidas.FieldValues['dAvanceActFolio_Prog']   := dAvanceProgAct_folio;
                      rxPartidas.FieldValues['dAvanceAcumFolio_Prog']  := dAvanceProgAcum_folio;

                      rxPartidas.FieldValues['sNumeroActividad']       := QryPartidas.FieldByName('sNumeroActividad').AsString;
                      rxPartidas.FieldValues['mDescripcion']           := QryPartidas.FieldByName('sDescripcionActividad').AsString;

                      if indice = 1 then
                      begin
                          rxPartidas.FieldValues['dAvanceAntPart_Real']    := QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida_1').AsFloat ;
                          rxPartidas.FieldValues['dAvanceActPart_Real']    := QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                          rxPartidas.FieldValues['dAvanceAcumPart_real']   := QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida_1').AsFloat + QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;;
                      end
                      else
                      begin
                          rxPartidas.FieldValues['dAvanceAntPart_Real']    := (QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida_1').AsFloat + QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida').AsFloat) - QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                          rxPartidas.FieldValues['dAvanceActPart_Real']    := QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                          rxPartidas.FieldValues['dAvanceAcumPart_real']   := rxPartidas.FieldValues['dAvanceAntPart_Real'] + QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat ;
                      end;

                      rxPartidas.FieldValues['dAvanceAntPart_Prog']    := QryPonderadoPartida.FieldByName('PonderadoAnt').AsFloat + QryPonderadoPartida.FieldByName('PonderadoAcum').AsFloat;
                      rxPartidas.FieldValues['dAvanceAcumPart_Prog']   := QryPonderadoPartida.FieldByName('PonderadoAnt').AsFloat + QryPonderadoPartida.FieldByName('PonderadoAcum').AsFloat + QryPonderadoPartida.FieldByName('PonderadoActual').AsFloat;
                      rxPartidas.FieldValues['dAvanceActPart_Prog']    := QryPonderadoPartida.FieldByName('PonderadoActual').AsFloat;
                      if indice = 1 then
                         rxPartidas.FieldValues['sHorario']            := '05:00';
                      if indice = 2 then
                         rxPartidas.FieldValues['sHorario']            := '17:00';
                      if indice = 3 then
                         rxPartidas.FieldValues['sHorario']            := '24:00';
                      rxPartidas.Post;
                      {$ENDREGION}

                      QryPartidas.Next;
                  end;
              end;

              QryFolios.Next;
          end;
          {Esta secccion es para mostrar la hoja vacia sino existen datos.}
          if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
          begin
             if QryFolios.RecordCount = 0 then
             begin
                 rxPartidas.Append;
                 rxPartidas.FieldValues['sOT'] := '';
                 rxPartidas.Post;
             end;
          end;
      end;

      {$ENDREGION}
      Td_AvancesPartidas.DataSet:= rxPartidas;
      Td_AvancesPartidas.FieldAliases.Clear;

      Td_ImpAvPartidas.DataSet:= rxPartidas;
      Td_ImpAvPartidas.FieldAliases.Clear;

      Reporte.DataSets.Add(Td_AvancesPartidas);
      Reporte.DataSets.Add(Td_ImpAvPartidas);

    Finally

    End;

end;

Procedure BitacoraPDF_AvancesCortes(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccionBitacora);
Var
  QryInfoFolio,
  QryPartidas,
  QryDetallePartidas,
  QryConsultaAvanceAnterior,
  QryConsultaAvancesAcumulados,
  QryFolios,
  QryPonderadoPartida  : TZQuery;

  Td_AvancesPartidas,
  Td_ImpAvPartidas : TfrxDBDataset;
  dDiaSiguiente  : TDateTime;
  rxPartidas     : TrxMemoryData;
  iTotalPersonal, indice : integer;
  lContinua      : boolean;
  QrAux:TzReadOnlyQuery;
  sIidDiario,
  siIdTarea,
  siIdActividad:String;

  dAvanceRealAnt_folio,
  dAvanceRealAct_folio,
  dAvanceRealAcum_folio,

  dAvanceProgAnt_folio,
  dAvanceProgAct_folio,
  dAvanceProgAcum_folio  :double;

  dFactor, dFactorAnt : double;
begin
    QrAux:=TzReadOnlyQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryConsultaAvancesAcumulados := TZQuery.Create(nil);
      QryConsultaAvancesAcumulados.Connection := Connection.zConnection;
      QryConsultaAvanceAnterior := TZQuery.Create(nil);
      QryConsultaAvanceAnterior.Connection := connection.zConnection;
      QryFolios := TZQuery.Create(nil);
      QryFolios.Connection := Connection.zConnection;
      QryPartidas := TZQuery.Create(nil);
      QryPartidas.Connection := Connection.zConnection;
      QryDetallePartidas := TZQuery.Create(nil);
      QryDetallePartidas.Connection := Connection.zConnection;
      QryInfoFolio := TZQuery.Create(nil);
      QryInfoFolio.Connection := Connection.zConnection;
      QryPonderadoPartida := TZQuery.Create(nil);
      QryPonderadoPartida.Connection := Connection.zConnection;

      Td_AvancesPartidas:= TfrxDBDataset.Create(nil);
      Td_AvancesPartidas.UserName:='td_AvancesPartidas';

      Td_ImpAvPartidas:= TfrxDBDataset.Create(nil);
      Td_ImpAvPartidas.UserName:='Td_ImpAvPartidas';

      QrAux.connection:=Connection.zconnection;
      rxPartidas := TrxMemoryData.Create(nil);
      rxPartidas.Active := False;
      rxPartidas.FieldDefs.Add('sTipo', ftString, 25, True);
      rxPartidas.FieldDefs.Add('sOT', ftString, 15, True);
      rxPartidas.FieldDefs.Add('sFolio', ftString, 35, True);
      rxPartidas.FieldDefs.Add('sPlataforma', ftString, 50, True);
      rxPartidas.FieldDefs.Add('mDescripcionFolio', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntFolio_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActFolio_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumFolio_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntFolio_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActFolio_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumFolio_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sNumeroActividad', ftString, 20, True);
      rxPartidas.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntPart_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActPart_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumPart_Real', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntPart_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActPart_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumPart_Prog', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sHorario', ftString, 5, True);
      rxPartidas.Active := True;

      if (TImpresion=FtsAvancesParciales) then
      begin
          {$REGION 'FOLIOS REPORTADOS'}
          QryFolios.SQL.Clear;
          QryFolios.SQL.Add('SELECT ot.sContrato, ot.sNumeroOrden, ot.sIdFolio, ot.mDescripcion, p.sDescripcion as plataforma, '+
                            ' (select reprogramacion(:Orden, ot.sNumeroOrden, :Fecha)) as Convenio '+
                            'FROM ordenesdetrabajo AS ot ' +
                            '	INNER JOIN rd_proyectos AS c ' +
                            '		ON (ot.sContrato=c.sContrato) ' +
                            '	INNER JOIN bitacoradeactividades AS ba ' +
                            '		ON (ba.sContrato=c.sContrato AND ba.sNumeroOrden=ot.sNumeroOrden) ' +
                            '	LEFT JOIN tiposdemovimiento AS tm ' +
                            '		ON (tm.sContrato= :ContratoBarco AND tm.sIdTipoMovimiento=ba.sIdTipoMovimiento AND tm.sClasificacion="Tarifa Diaria") ' +
                            'inner join plataformas  p on (p.sIdPlataforma = ot.sIdPlataforma) '+
                            'WHERE c.sContrato= :Orden AND ba.dIdFecha= :Fecha ' +
                            'GROUP BY ot.sContrato,	ot.sNumeroorden');
          QryFolios.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sContrato').AsString;
          QryFolios.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
          QryFolios.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
          QryFolios.Open;

          while Not QryFolios.Eof do
          begin
               {$REGION 'AVANCE PROGRAMADO ANT. FOLIO'}
              {Avances Programados del Folio..}
              QryConsultaAvanceAnterior.SQL.Clear;
              QryConsultaAvanceAnterior.SQL.Add('Select a.dAvancePonderadoDia, a.dAvancePonderadoGlobal ' +
                                                'From avancesglobales a ' +
                                                'Where a.sContrato = :Orden And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Folio and a.dIdFecha =:Fecha ');
              QryConsultaAvanceAnterior.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sContrato').AsString;
              QryConsultaAvanceAnterior.ParamByName('Convenio').AsString := QryFolios.FieldByName('Convenio').AsString;
              QryConsultaAvanceAnterior.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryConsultaAvanceAnterior.ParamByName('Fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              QryConsultaAvanceAnterior.Open;

              dAvanceProgAnt_Folio  := 0;
              dAvanceProgAct_folio  := 0;
              dAvanceProgAcum_folio := 0;
              dAvanceRealAnt_folio  := 0;
              dAvanceRealAct_folio  := 0;
              dAvanceRealAcum_folio := 0;
              if QryConsultaAvanceAnterior.RecordCount > 0 then
              begin
                  dAvanceProgAnt_folio  := QryConsultaAvanceAnterior.FieldByName('dAvancePonderadoGlobal').AsFloat - QryConsultaAvanceAnterior.FieldByName('dAvancePonderadoDia').AsFloat;
                  dAvanceProgAct_folio  := QryConsultaAvanceAnterior.FieldByName('dAvancePonderadoDia').AsFloat;
                  dAvanceProgAcum_folio := QryConsultaAvanceAnterior.FieldByName('dAvancePonderadoGlobal').AsFloat ;
              end;
              {$ENDREGION}

              for indice := 1 to 3 do
              begin
                  {$REGION 'AVANCES DEL FOLIO'}
                  {FISICOS - FOLIO}
                  {Avances anteriores}
                  if indice = 1 then
                  begin
                      QryConsultaAvanceAnterior.SQL.Clear;
                      QryConsultaAvanceAnterior.SQL.Add('Select sum((b.dPonderado / 100)* a.dAvance) as dAvanceAnterior '+
                                                'From actividadesxorden b '+
                                                'inner JOIN bitacoradeactividades a '+
                                                'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs and b.sNumeroOrden=a.sNumeroOrden and dIdFecha <:fecha ) '+
                                                'left JOIN tiposdemovimiento t '+
                                                'ON (b.sContrato=t.sContrato And a.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") '+
                                                'Where b.sContrato=:Orden And b.sIdConvenio=:Convenio And b.sNumeroOrden =:Folio Group By a.sContrato');
                      QryConsultaAvanceAnterior.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sContrato').AsString;
                      QryConsultaAvanceAnterior.ParamByName('Convenio').AsString := QryFolios.FieldByName('Convenio').AsString;
                      QryConsultaAvanceAnterior.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
                      QryConsultaAvanceAnterior.ParamByName('Fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                      QryConsultaAvanceAnterior.Open;
                      dAvanceRealAnt_folio := QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat;
                  end;

                  //Avances Acumulados
                  QryConsultaAvancesAcumulados.SQL.Clear;
                  QryConsultaAvancesAcumulados.SQL.Add('Select sum((b.dPonderado / 100)* a.dAvance) as dAvanceAcumulado '+
                                              'From actividadesxorden b '+
                                              'inner JOIN bitacoradeactividades a '+
                                              'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs and b.sNumeroOrden=a.sNumeroOrden and dIdFecha =:Fecha and iNumeroGerencial =:numero ) '+
                                              'left JOIN tiposdemovimiento t '+
                                              'ON (b.sContrato=t.sContrato And a.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") '+
                                              'Where b.sContrato=:Orden And b.sIdConvenio=:Convenio And b.sNumeroOrden =:Folio Group By a.sContrato ');
                  QryConsultaAvancesAcumulados.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sContrato').AsString;
                  QryConsultaAvancesAcumulados.ParamByName('Convenio').AsString := QryFolios.FieldByName('Convenio').AsString;
                  QryConsultaAvancesAcumulados.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
                  QryConsultaAvancesAcumulados.ParamByName('Fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                  QryConsultaAvancesAcumulados.ParamByName('numero').AsInteger  := indice;
                  QryConsultaAvancesAcumulados.Open;
                  dAvanceRealAct_folio := QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat;

                  if indice = 1 then
                     dAvanceProgAcum_folio := (dAvanceProgAct_folio * 0.2083);
                  if indice = 2 then
                     dAvanceProgAcum_folio := (dAvanceProgAct_folio * 0.7083);
                  if indice = 3 then
                     dAvanceProgAcum_folio := (dAvanceProgAct_folio * 0.0834);

                  {$ENDREGION}

                  {$REGION 'CONSULTA AV. REAL - PARTIDAS REPORTADAS'}
                  QryPartidas.SQL.Clear;
                  QryPartidas.SQL.Add('SELECT  a.sContrato, a.iIdDiario,	a.sNumeroActividad, o.dPonderado, a.sWbs, '+
                                      ' (SELECT   SUM(dAvance) ' +
                                      ' FROM bitacoradeactividades ' +
                                      ' WHERE '+
                                      'dIdFecha < a.dIdFecha '+
                                      '   AND sIdTipoMovimiento = "E" ' +
                                      '   AND sWbs = a.sWbs ' +
                                      '   AND sContrato = a.sContrato ' +
                                      '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceAnterior_GeneralPartida_1, '+

                                      ' (SELECT   SUM(dAvance) ' +
                                      ' FROM bitacoradeactividades ' +
                                      ' WHERE '+
                                      'dIdFecha = a.dIdFecha and iNumeroGerencial <= :numero '+
                                      '   AND sIdTipoMovimiento = "E" ' +
                                      '   AND sWbs = a.sWbs ' +
                                      '   AND sContrato = a.sContrato ' +
                                      '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceAnterior_GeneralPartida, '+

                                      ' (SELECT  SUM(dAvance) ' +
                                      ' FROM bitacoradeactividades ' +
                                      ' WHERE ' +
                                      '   dIdFecha = a.dIdFecha and iNumeroGerencial =:Numero ' +
                                      '   AND sIdTipoMovimiento = "E" ' +
                                      '   AND sWbs = a.sWbs ' +
                                      '   AND sContrato = a.sContrato ' +
                                      '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceActual_GeneralPartida, ' +

                                      '	o.mdescripcion as sDescripcionActividad ' +
                                      'FROM bitacoradeactividades a ' +
                                      'INNER JOIN actividadesxorden o ' +
                                      '		ON (o.sContrato = a.sContrato AND o.sIdConvenio = :Convenio AND o.sNumeroOrden = a.sNumeroOrden AND a.sWbs = o.sWbs AND o.sNumeroActividad = a.sNumeroActividad AND o.sTipoActividad = "Actividad" and o.sTipoAnexo = "PT") ' +

                                      'WHERE a.sContrato = :Orden AND a.dIdFecha = :Fecha AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento = "E" and a.lImprime ="Si" ' +
                                      'GROUP BY	a.sNumeroActividad ' +
                                      'ORDER BY a.sContrato, o.iItemOrden, a.sNumeroActividad, a.sHoraInicio ');
                  QryPartidas.ParamByName('Convenio').AsString := QryFolios.FieldByName('Convenio').AsString;
                  QryPartidas.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sContrato').AsString;
                  QryPartidas.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                  QryPartidas.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
                  QryPartidas.ParamByName('Turno').AsString    := ReporteDiario.FieldByName('sIdTurno').AsString;
                  QryPartidas.ParamByName('Numero').AsInteger  := indice;
                  QryPartidas.Open;
                  {$ENDREGION}

                  if indice = 1 then
                  begin
                     dFactorAnt := 0.0;
                     dFactor    := 0.2083;
                  end;
                  if indice = 2 then
                  begin
                     dFactorAnt := 0.2083;
                     dFactor    := 0.9166;
                  end;
                  if indice = 3 then
                  begin
                     dFactorAnt := 0.9166;
                     dFactor    := 1;
                  end;


                  while Not QryPartidas.Eof do
                  begin
                      {$REGION 'AVANCES PROGRAMADOS PARTIDAS'}
                      QryPonderadoPartida.SQL.Clear;
                      QryPonderadoPartida.SQL.Add('select b.sNumeroActividad, '+
                                          '(select sum(dCantidad) '+
                                          ' from '+
                                          ' distribuciondeactividades where sContrato = b.sContrato and sIdConvenio = b.sIdConvenio '+
                                          'and sNumeroOrden = b.sNumeroOrden and swbs = b.sWbs '+
                                          'and dIdFecha < :fecha '+
                                          ') as PonderadoAnt, '+

                                          '(select (sum(dCantidad) * :Factor) '+
                                          ' from '+
                                          ' distribuciondeactividades where sContrato = b.sContrato and sIdConvenio = b.sIdConvenio '+
                                          'and sNumeroOrden = b.sNumeroOrden and swbs = b.sWbs '+
                                          'and dIdFecha = :Fecha '+
                                          ') as PonderadoActualFactor, '+

                                          '(select (sum(dCantidad) * :FactorAnt)  '+
                                          ' from '+
                                          ' distribuciondeactividades where sContrato = b.sContrato and sIdConvenio = b.sIdConvenio '+
                                          'and sNumeroOrden = b.sNumeroOrden and swbs = b.sWbs '+
                                          'and dIdFecha = :Fecha '+
                                          ') as PonderadoActualAcumFactor '+

                                          'from distribuciondeactividades b where b.sContrato = :Orden and b.sIdConvenio = :Convenio '+
                                          'and b.sNumeroOrden = :Folio and b.swbs = :Wbs '+
                                          'and b.dIdFecha <= :Fecha group by b.sNumeroActividad');
                      QryPonderadoPartida.ParamByName('Convenio').AsString := QryFolios.FieldByName('Convenio').AsString;
                      QryPonderadoPartida.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sContrato').AsString;
                      QryPonderadoPartida.ParamByName('Fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                      QryPonderadoPartida.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
                      QryPonderadoPartida.ParamByName('Wbs').AsString      := QryPartidas.FieldByName('sWbs').AsString;
                      QryPonderadoPartida.ParamByName('Factor').AsFloat    := dFactor;
                      QryPonderadoPartida.ParamByName('FactorAnt').AsFloat := dFactorAnt;
                      QryPonderadoPartida.Open;
                      {$ENDREGION}

                      {$REGION 'Insertar Datos en RxPartidas'}
                      rxPartidas.Append;
                      rxPartidas.FieldValues['sTipo']       := 'General';
                      rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                      rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                      rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                      rxPartidas.FieldValues['mDescripcionFolio'] := QryFolios.FieldValues['mDescripcion'];

                      rxPartidas.FieldValues['dAvanceAntFolio_Real']   := dAvanceRealAnt_folio + dAvanceRealAcum_folio;
                      rxPartidas.FieldValues['dAvanceActFolio_Real']   := dAvanceRealAct_folio ;
                      rxPartidas.FieldValues['dAvanceAcumFolio_Real']  := dAvanceRealAnt_folio +  dAvanceRealAct_folio + dAvanceRealAcum_folio;

                      rxPartidas.FieldValues['dAvanceAntFolio_Prog']   := dAvanceProgAnt_folio;
                      rxPartidas.FieldValues['dAvanceActFolio_Prog']   := dAvanceProgAcum_folio;
                      rxPartidas.FieldValues['dAvanceAcumFolio_Prog']  := dAvanceProgAnt_folio + dAvanceProgAcum_folio;

                      rxPartidas.FieldValues['sNumeroActividad']       := QryPartidas.FieldByName('sNumeroActividad').AsString;
                      rxPartidas.FieldValues['mDescripcion']           := QryPartidas.FieldByName('sDescripcionActividad').AsString;

                      if indice = 1 then
                      begin
                          rxPartidas.FieldValues['dAvanceAntPart_Real']    := QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida_1').AsFloat ;
                          rxPartidas.FieldValues['dAvanceActPart_Real']    := QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                          rxPartidas.FieldValues['dAvanceAcumPart_real']   := QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida_1').AsFloat + QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;;
                      end
                      else
                      begin
                          rxPartidas.FieldValues['dAvanceAntPart_Real']    := (QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida_1').AsFloat + QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida').AsFloat) - QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                          rxPartidas.FieldValues['dAvanceActPart_Real']    := QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                          rxPartidas.FieldValues['dAvanceAcumPart_real']   := rxPartidas.FieldValues['dAvanceAntPart_Real'] + QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat ;
                      end;

                      rxPartidas.FieldValues['dAvanceAntPart_Prog']    := QryPonderadoPartida.FieldByName('PonderadoAnt').AsFloat + QryPonderadoPartida.FieldByName('PonderadoActualAcumFactor').AsFloat;
                      rxPartidas.FieldValues['dAvanceAcumPart_Prog']   := QryPonderadoPartida.FieldByName('PonderadoAnt').AsFloat + QryPonderadoPartida.FieldByName('PonderadoActualFactor').AsFloat;
                      rxPartidas.FieldValues['dAvanceActPart_Prog']    := rxPartidas.FieldValues['dAvanceAcumPart_Prog'] - rxPartidas.FieldValues['dAvanceAntPart_Prog'];
                      if indice = 1 then
                         rxPartidas.FieldValues['sHorario']            := '05:00';
                      if indice = 2 then
                         rxPartidas.FieldValues['sHorario']            := '17:00';
                      if indice = 3 then
                         rxPartidas.FieldValues['sHorario']            := '24:00';
                      rxPartidas.Post;
                      {$ENDREGION}

                      QryPartidas.Next;
                  end;
                  dAvanceProgAnt_folio  := dAvanceProgAnt_folio + dAvanceProgAcum_folio;
                  dAvanceRealAcum_folio := dAvanceRealAcum_Folio + dAvanceRealAct_folio;
              end;
              QryFolios.Next;
          end;
          {Esta secccion es para mostrar la hoja vacia sino existen datos.}
          if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
          begin
             if QryFolios.RecordCount = 0 then
             begin
                 rxPartidas.Append;
                 rxPartidas.FieldValues['sOT'] := '';
                 rxPartidas.Post;
             end;
          end;
      end;

      {$ENDREGION}
      Td_AvancesPartidas.DataSet:= rxPartidas;
      Td_AvancesPartidas.FieldAliases.Clear;

      Td_ImpAvPartidas.DataSet:= rxPartidas;
      Td_ImpAvPartidas.FieldAliases.Clear;

      Reporte.DataSets.Add(Td_AvancesPartidas);
      Reporte.DataSets.Add(Td_ImpAvPartidas);

    Finally
      QrAux.destroy;
    End;

end;

Procedure BitacoraPDF_ActividadesDetalle(ReporteDiario:TzREadOnlyQuery;Var Reporte: TfrxReport;Tipo:FtTipo;TImpresion:FtSeccionBitacora);
Var
  QryInfoFolio,
  QryPartidas,
  QryDetallePartidas,
  QryConsultaAvanceAnterior,
  QryConsultaAvancesAcumulados,
  QryFolios : TZQuery;

  Td_partidas,
  Td_ImpPartidas : TfrxDBDataset;
  dDiaSiguiente  : TDateTime;
  rxPartidas     : TrxMemoryData;
  iTotalPersonal, indice : integer;
  lContinua      : boolean;
  QrAux:TzReadOnlyQuery;
  sIidDiario,
  siIdTarea,
  siIdActividad:String;
begin
    QrAux:=TzReadOnlyQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryConsultaAvancesAcumulados := TZQuery.Create(nil);
      QryConsultaAvancesAcumulados.Connection := Connection.zConnection;
      QryConsultaAvanceAnterior := TZQuery.Create(nil);
      QryConsultaAvanceAnterior.Connection := connection.zConnection;
      QryFolios := TZQuery.Create(nil);
      QryFolios.Connection := Connection.zConnection;
      QryPartidas := TZQuery.Create(nil);
      QryPartidas.Connection := Connection.zConnection;
      QryDetallePartidas := TZQuery.Create(nil);
      QryDetallePartidas.Connection := Connection.zConnection;
      QryInfoFolio := TZQuery.Create(nil);
      QryInfoFolio.Connection := Connection.zConnection;

      Td_partidas:= TfrxDBDataset.Create(nil);
      Td_partidas.UserName:='td_partidas';

      Td_ImpPartidas:= TfrxDBDataset.Create(nil);
      Td_ImpPartidas.UserName:='Td_ImpPartidas';

      QrAux.connection:=Connection.zconnection;
      rxPartidas := TrxMemoryData.Create(nil);
      rxPartidas.Active := False;
      rxPartidas.FieldDefs.Add('sTipo', ftString, 25, True);
      rxPartidas.FieldDefs.Add('sOT', ftString, 15, True);
      rxPartidas.FieldDefs.Add('sFolio', ftString, 35, True);
      rxPartidas.FieldDefs.Add('sPlataforma', ftString, 50, True);
      rxPartidas.FieldDefs.Add('mDescripcionFolio', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntFolio', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActFolio', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumFolio', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('sNumeroActividad', ftString, 20, True);
      rxPartidas.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAntPart', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceActPart', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('dAvanceAcumPart', ftFloat, 0, True);
      rxPartidas.FieldDefs.Add('iIdDiario', ftInteger, 0, True);
      rxPartidas.FieldDefs.Add('sHoraInicio', ftString, 5, True);
      rxPartidas.FieldDefs.Add('sHoraFin', ftString, 5, True);
      rxPartidas.FieldDefs.Add('mDescripcionHorario', ftMemo, 0, True);
      rxPartidas.FieldDefs.Add('sAbierto', ftString, 2, True);
      rxPartidas.Active := True;

      if (TImpresion=FtsTareas) then
      begin
          {$REGION 'FOLIOS REPORTADOS'}
          QryFolios.SQL.Clear;
          QryFolios.SQL.Add('SELECT ot.sContrato, ot.sNumeroOrden, ot.sIdFolio, ot.mDescripcion, p.sDescripcion as plataforma '+
                            'FROM ordenesdetrabajo AS ot ' +
                            '	INNER JOIN rd_proyectos AS c ' +
                            '		ON (ot.sContrato=c.sContrato) ' +
                            '	INNER JOIN bitacoradeactividades AS ba ' +
                            '		ON (ba.sContrato=c.sContrato AND ba.sNumeroOrden=ot.sNumeroOrden) ' +
                            '	LEFT JOIN tiposdemovimiento AS tm ' +
                            '		ON (tm.sContrato= :ContratoBarco AND tm.sIdTipoMovimiento=ba.sIdTipoMovimiento AND tm.sClasificacion="Tarifa Diaria") ' +
                            'inner join plataformas  p on (p.sIdPlataforma = ot.sIdPlataforma) '+
                            'WHERE c.sContrato= :Orden AND ba.dIdFecha= :Fecha ' +
                            'GROUP BY ot.sContrato,	ot.sNumeroorden');
          QryFolios.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sContrato').AsString;
          QryFolios.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
          QryFolios.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
          QryFolios.Open;

          while Not QryFolios.Eof do
          begin
              {$REGION 'AVANCES DEL FOLIO'}
              {Avances anteriores}
              QryConsultaAvanceAnterior.SQL.Clear;
              QryConsultaAvanceAnterior.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', ReporteDiario.FieldByName('dIdFecha').AsDateTime)+'", :Orden, :Folio), 4) AS dAvanceAnterior;';
              QryConsultaAvanceAnterior.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sContrato').AsString;
              QryConsultaAvanceAnterior.ParamByName('Folio').AsString := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryConsultaAvanceAnterior.Open;

              //Avances Acumulados
              dDiaSiguiente := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              dDiaSiguiente := IncDay(dDiaSiguiente);

              QryConsultaAvancesAcumulados.SQL.Clear;
              QryConsultaAvancesAcumulados.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 4) AS dAvanceAcumulado;';
              QryConsultaAvancesAcumulados.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sContrato').AsString;
              QryConsultaAvancesAcumulados.ParamByName('Folio').AsString := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryConsultaAvancesAcumulados.Open;
              {$ENDREGION}

              {$REGION 'CONSULTA - PARTIDAS REPORTADAS'}
              QryPartidas.SQL.Clear;
              QryPartidas.SQL.Add('SELECT  a.sContrato, a.iIdDiario,	a.sNumeroActividad, o.dPonderado, a.sWbs, '+
                                  ' (SELECT   SUM(dAvance) ' +
                                  ' FROM bitacoradeactividades ' +
                                  ' WHERE ' +
                                  '   dIdFecha < a.dIdFecha ' +
                                  '   AND sIdTipoMovimiento = "E" ' +
                                  '   AND sWbs = a.sWbs ' +
                                  '   AND sContrato = a.sContrato ' +
                                  '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceAnterior_GeneralPartida, '+

                                  ' (SELECT  SUM(dAvance) ' +
                                  ' FROM bitacoradeactividades ' +
                                  ' WHERE ' +
                                  '   dIdFecha = a.dIdFecha ' +
                                  '   AND sIdTipoMovimiento = "E" ' +
                                  '   AND sWbs = a.sWbs ' +
                                  '   AND sContrato = a.sContrato ' +
                                  '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceActual_GeneralPartida, ' +

                                  '	CONCAT(a.sHoraInicio,"-",a.sHoraFinal)  AS Horario, ' +
                                  '	a.sIdClasificacion,	a.sHoraInicio, a.sHorafinal, ' +
                                  '	o.mdescripcion as sDescripcionActividad ' +
                                  'FROM bitacoradeactividades a ' +
                                  'INNER JOIN actividadesxorden o ' +
                                  '		ON (o.sContrato = a.sContrato AND o.sIdConvenio = :Convenio AND o.sNumeroOrden = a.sNumeroOrden AND a.sWbs = o.sWbs AND o.sNumeroActividad = a.sNumeroActividad AND o.sTipoActividad = "Actividad" and o.sTipoAnexo = "PT") ' +

                                  'WHERE a.sContrato = :Orden AND a.dIdFecha = :Fecha AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento = "E" and a.lImprime ="Si" ' +
                                  'GROUP BY	a.sNumeroActividad ' +
                                  'ORDER BY a.sContrato, o.iItemOrden, a.sNumeroActividad, a.sHoraInicio ');
              QryPartidas.ParamByName('Convenio').AsString := global_convenio;
              QryPartidas.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sContrato').AsString;
              QryPartidas.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              QryPartidas.ParamByName('Folio').AsString    := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryPartidas.ParamByName('Turno').AsString    := ReporteDiario.FieldByName('sIdTurno').AsString;
              QryPartidas.Open;
              {$ENDREGION}

              while Not QryPartidas.Eof do
              begin
                  {Insertar Datos en RxPartidas}
                  rxPartidas.Append;
                  rxPartidas.FieldValues['sTipo']       := 'General';
                  rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                  rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                  rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                  rxPartidas.FieldValues['mDescripcionFolio'] := QryFolios.FieldValues['mDescripcion'];
                  rxPartidas.FieldValues['dAvanceAntFolio']   := QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat;
                  rxPartidas.FieldValues['dAvanceActFolio']   := QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat - QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat;
                  rxPartidas.FieldValues['dAvanceAcumFolio']  := QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat;
                  rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                  rxPartidas.FieldValues['mDescripcion']     := QryPartidas.FieldByName('sDescripcionActividad').AsString;
                  rxPartidas.FieldValues['dAvanceAntPart']   := QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida').AsFloat;
                  rxPartidas.FieldValues['dAvanceActPart']   := QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                  rxPartidas.FieldValues['dAvanceAcumPart']  := QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida').AsFloat + QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat;
                  rxPartidas.Post;

                  {$REGION 'CONSULTA - DETALLE DE PARTIDAS'}
                  QryDetallePartidas.SQL.Clear;
                  QryDetallePartidas.SQL.Add( 'SELECT b.dIdFecha, b.sIdClasificacion, b.sHoraInicio, b.sHoraFinal, b.iIdDiario, b.sNumeroActividad, b.iIdTarea,b.iIdActividad,b.iHermano, b.lAplicaReporteUnico, '+
                                              '	( SELECT (ifnull(sum(ba.dAvance), 0)) ' +
                                              '		FROM ' +
                                              '			bitacoradeactividades AS ba ' +
                                              '		WHERE ' +
                                              '			ba.sContrato = b.sContrato ' +
                                              '		AND ba.sNumeroOrden = b.sNumeroOrden ' +
                                              '		AND ba.sIdTipoMovimiento = b.sIdTipoMovimiento ' +
                                              '		AND ba.swbs = b.swbs ' +
                                              '		AND ba.sNumeroActividad = b.sNumeroActividad ' +
                                              '		AND ( ba.didfecha < b.didfecha OR (ba.didfecha = b.didfecha AND cast(ba.sHoraInicio AS Time) '+
                                              '   < cast(b.sHoraInicio AS Time))  )	) AS dAvanceAnterior, ' +
                                              '	b.dAvance, b.mDescripcion AS descAct ' +
                                              'FROM ' +
                                              '	bitacoradeactividades b ' +
                                              'INNER JOIN tiposdemovimiento tm ON ( ' +
                                              '	tm.sContrato = :ContratoBarco ' +
                                              '	AND tm.sIdTipoMovimiento = b.sIdClasificacion ) ' +
                                              'INNER JOIN actividadesxorden ao ON ( ' +
                                              '	ao.sContrato = b.sContrato and ao.sIdConvenio =:Convenio and ao.sNumeroOrden = b.sNumeroOrden and ' +
                                              '	ao.sWbs = b.sWbs and ao.sTipoActividad = "Actividad" ) ' +
                                              'WHERE	b.sContrato = :Orden ' +
                                              'AND b.sNumeroOrden = :Folio ' +
                                              'AND b.sIdTipoMovimiento = "ED" ' +
                                              'AND b.sNumeroActividad = :Actividad ' +
                                              'AND dIdFecha = :Fecha ' +
                                              'and ((b.iHermano=-1) or (b.iHermano=b.iIdActividad)) '+
                                              'AND lImprime = "Si" group by b.iIdTarea,b.iIdActividad ' +
                                              'ORDER BY b.didFecha, ao.iItemOrden, Time(b.sHoraInicio) ');
                  QryDetallePartidas.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
                  QryDetallePartidas.ParamByName('Convenio').AsString      := Global_convenio;
                  QryDetallePartidas.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sContrato').AsString;
                  QryDetallePartidas.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                  QryDetallePartidas.ParamByName('Folio').AsString         := QryFolios.FieldByName('sNumeroOrden').AsString;
                  QryDetallePartidas.ParamByName('Actividad').AsString     := QryPartidas.FieldByName('sNumeroActividad').AsString;
                  QryDetallePartidas.Open;
                  {$ENDREGION}

                  {$REGION 'INSERCIÓN DE DATOS'}
                  while Not QryDetallePartidas.Eof do
                  begin
                      if QryDetallePartidas.FieldByName('iHermano').AsInteger=-1 then
                      begin
                        rxPartidas.Append;
                        rxPartidas.FieldValues['sTipo']       := 'DatosHorario';
                        rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                        rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                        rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                        rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                        rxPartidas.FieldValues['sHoraInicio']  := QryDetallePartidas.FieldByName('sHoraInicio').AsString;
                        rxPartidas.FieldValues['sHoraFin']     := QryDetallePartidas.FieldByName('sHoraFinal').AsString;
                        rxPartidas.FieldValues['mDescripcionHorario']  := QryDetallePartidas.FieldByName('descAct').AsString;
                        rxPartidas.FieldValues['sAbierto']     := QryDetallePartidas.FieldByName('lAplicaReporteUnico').AsString;
                        rxPartidas.Post;
                      end
                      else
                      begin
                        QrAux.active:=False;
                        QrAux.sql.text:='select * from bitacoradeactividades where scontrato=:Orden and '+
                                        'didfecha=:fecha and sNumeroOrden=:Folio and sIdTipoMovimiento = "ED" and ' +
                                        'sNumeroActividad = :Actividad and iHermano=:IdVinculo '+
                                        'group by iIdTarea,iIdActividad ' +
                                        'ORDER BY Time(sHoraInicio) ';
                        QrAux.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sContrato').AsString;
                        QrAux.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                        QrAux.ParamByName('Folio').AsString         := QryFolios.FieldByName('sNumeroOrden').AsString;
                        QrAux.ParamByName('Actividad').AsString     := QryPartidas.FieldByName('sNumeroActividad').AsString;
                        QrAux.ParamByName('IdVinculo').AsInteger     := QryDetallePartidas.FieldByName('iHermano').AsInteger;
                        QrAux.open;

                        rxPartidas.Append;
                        rxPartidas.FieldValues['sTipo']       := 'DatosHorario';
                        rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                        rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                        rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                        rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
                        rxPartidas.FieldValues['sHoraInicio']  := QrAux.FieldByName('sHoraInicio').AsString;
                        rxPartidas.FieldValues['mDescripcionHorario']  := QryDetallePartidas.FieldByName('descAct').AsString;
                        rxPartidas.FieldValues['sAbierto']     := QryDetallePartidas.FieldByName('lAplicaReporteUnico').AsString;
                        sIidDiario:='';
                        siIdTarea:='';
                        siIdActividad:='';
                        while not QrAux.eof do
                        begin
                          if sIidDiario='' then
                            sIidDiario:=QrAux.FieldByName('iIdDiario').AsString
                          else
                            sIidDiario:= sIidDiario + ',' + QrAux.FieldByName('iIdDiario').AsString;

                          if siIdTarea='' then
                            siIdTarea:=QrAux.FieldByName('iIdTarea').AsString
                          else
                            siIdTarea:= siIdTarea + ',' + QrAux.FieldByName('iIdTarea').AsString;

                          if siIdActividad='' then
                            siIdActividad:=QrAux.FieldByName('iIdActividad').AsString
                          else
                            siIdActividad:= siIdActividad + ',' + QrAux.FieldByName('iIdActividad').AsString;

                          QrAux.Next;
                        end;
                        rxPartidas.FieldValues['sHoraFin']     := QrAux.FieldByName('sHoraFinal').AsString;
                        rxPartidas.Post;

                      end;

                      {$ENDREGION}
                      QryDetallePartidas.Next;
                  end;

                  {$ENDREGION}
                 QryPartidas.Next;
              end;

              QryFolios.Next;
          end;
          {Esta secccion es para mostrar la hoja vacia sino existen datos.}
          if connection.uconfiguracion.FieldValues['eHojasBlanco'] = 'Si' then
          begin
             if QryFolios.RecordCount = 0 then
             begin
                 rxPartidas.Append;
                 rxPartidas.FieldValues['sOT'] := '';
                 rxPartidas.Post;
             end;
          end;
      end;

      {$ENDREGION}
      Td_Partidas.DataSet:= rxPartidas;
      Td_Partidas.FieldAliases.Clear;

      Td_ImpPartidas.DataSet:= rxPartidas;
      Td_ImpPartidas.FieldAliases.Clear;

      Reporte.DataSets.Add(Td_partidas);
      Reporte.DataSets.Add(Td_ImpPartidas);

    Finally
      QrAux.destroy;
    End;

end;

Function  ObtenerAplicaProrrateoPU(sParamContrato, sParamFolio :string; dParamFecha : tDate) : string;
var
    QryProrratePU    : TZQuery;
begin
     QryProrratePU:=TzQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryProrratePU.Connection := Connection.zConnection;

      QryProrratePU.Active := False;
      QryProrratePU.SQL.Add('select lDescartaPU from bitacoradeactividades where sContrato =:Contrato and sNumeroOrden =:Folio and dIdFecha =:Fecha and lDescartaPU = "Si" ');
      QryProrratePU.ParamByName('contrato').AsString := sParamContrato;
      QryProrratePU.ParamByName('Folio').AsString    := sParamFolio;
      QryProrratePU.ParamByName('Fecha').AsDate      := dParamFecha;
      QryProrratePU.Open;

      if QryProrratePU.RecordCount > 0 then
         result := 'TD'
      else
         result := '%';


    Finally
        QryProrratePU.Destroy;
    End;

end;

function Td_maximoId(sParamContrato, sParamTabla, sParamCampo :string) : Integer;
var
    QryMaximo    : TZQuery;
begin
     QryMaximo:=TzQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryMaximo.Connection := Connection.zConnection;

      QryMaximo.Active := False;
      if trim(sParamContrato) <> '' then
         QryMaximo.SQL.Add('select max('+sParamCampo+') as Maximo from '+sParamTabla+' where sContrato =:Contrato group by sContrato ')
      else
         QryMaximo.SQL.Add('select max('+sParamCampo+') as Maximo from '+sParamTabla+' ');
      QryMaximo.ParamByName('contrato').AsString := sParamContrato;
      QryMaximo.Open;

      if QryMaximo.RecordCount > 0 then
         result := QryMaximo.FieldByName('Maximo').AsInteger + 1;

    Finally
        QryMaximo.Destroy;
    End;
end;


procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamAct, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string; lMensaje :boolean);
var
base, tabla, campo, cad : string;
datos : array[ 1..200] of String;
i,x,cuenta_campo  : Integer;
QryTablas, QryDatos    : TZQuery;
begin
    QryDatos := TzQuery.create(nil);
    QryDatos.Connection := Connection.zConnection;
    QryTablas:= TzQuery.create(nil);
    QryTablas.Connection := Connection.zConnection;
    try
     QryTablas.Active := False ;
     QryTablas.SQL.Clear ;
     QryTablas.SQL.Add('Show tables') ;
     QryTablas.Open ;
     base := 'Tables_in_'+global_db;
     i := 1;
     while not QryTablas.Eof do
     begin
         tabla :=  QryTablas.FieldValues[base];
         qryDatos.Active := False ;
         qryDatos.SQL.Clear ;
         qryDatos.SQL.Add('describe '+tabla+' ');
         qryDatos.Open ;

         if qryDatos.RecordCount > 0 then
         begin
             cuenta_campo := 0;
             while not qryDatos.Eof do
             begin
                 if tabla <> sParamTabla then
                 begin
                     //Seleccionamos primero los contrato, folio, wbs, act.
                     if (sLlevaContrato <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaAct <> '') then
                     begin
                         If qryDatos.FieldValues['Field'] = sLlevaContrato then
                            inc(cuenta_campo)
                         else
                            If qryDatos.FieldValues['Field'] = sLlevaFolio then
                               inc(cuenta_campo)
                            else
                               If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                  inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaAct then
                                       inc(cuenta_campo);

                        if cuenta_campo  = 4 then
                        begin
                             datos[i] := tabla;
                             i:= i + 1;
                             cuenta_campo := 0;
                        end;
                     end
                     else
                         //Seleccionamos primero los contrato, folio, act.
                         if (sLlevaContrato <> '') and (sLlevaFolio <> '') and (sLlevaAct <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaContrato then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaAct then
                                      inc(cuenta_campo);

                            if cuenta_campo  = 3 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                            //Seleccionamos primero los contrato, folio..
                           if (sLlevaContrato <> '') and (sLlevaFolio <> '') then
                           begin
                               If qryDatos.FieldValues['Field'] = sLlevaContrato then
                                  inc(cuenta_campo)
                               else
                                  If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                     inc(cuenta_campo);

                              if cuenta_campo  = 2 then
                              begin
                                   datos[i] := tabla;
                                   i:= i + 1;
                                   cuenta_campo := 0;
                              end;
                           end
                           else
                             //Seleccionamos primero los contrato
                             if (sLlevaContrato <> '')  then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaContrato then
                                    inc(cuenta_campo);

                                if cuenta_campo  = 1 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end;
                 end;
                 qryDatos.Next;
             end;
         end;
         QryTablas.Next;
     end;

     //Elimina todos los registros...
     if accion = 'borrar' then
     begin
         x := i-1;
         while x >= 1 do
         begin
             tabla := datos[x];
             QryTablas.Active := False ;
             QryTablas.SQL.Clear ;
             if (sLlevaContrato <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaAct <> '') then
             begin
                 QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio and sWbs =:Wbs and sNumeroActividad =:Act ');
                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamContrato ;
                 QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                 QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                 QryTablas.Params.ParamByName('Act').AsString       := sParamAct;
             end
             else
                 if (sLlevaContrato <> '') and (sLlevaFolio <> '') and (sLlevaAct <> '') then
                 begin
                     QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio and sNumeroActividad =:Act ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamContrato ;
                     QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     QryTablas.Params.ParamByName('Act').AsString       := sParamAct;
                 end
                 else
                     if (sLlevaContrato <> '') and (sLlevaFolio <> '') then
                     begin
                         QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio ');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamContrato ;
                         QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     end
                     else
                         if (sLlevaContrato <> '') then
                         begin
                             QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato ');
                             QryTablas.Params.ParamByName('Contrato').AsString  := sParamContrato ;
                         end;
             QryTablas.ExecSQL ;
             x := x-1;
         end;
     end;
     // Actualiza todos los registros..
     if accion = 'actualizar' then
     begin
         for x := 1 to i -1 do
         begin
             tabla := datos[x];
             QryTablas.Active := False ;
             QryTablas.SQL.Clear ;
             if (sLlevaContrato <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaAct <> '') then
             begin
                 QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva  where sContrato = :Contrato and sNumeroOrden =:Folio and sWbs =:Wbs and sNumeroActividad =:Act ');
                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamContrato ;
                 QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                 QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                 QryTablas.Params.ParamByName('Act').AsString       := sParamAct;
                 QryTablas.Params.ParamByName('WbsNueva').AsString  := sParamNuevaWbs;
             end
             else
                 if (sLlevaContrato <> '') and (sLlevaFolio <> '') and (sLlevaAct <> '') then
                 begin
                     QryTablas.SQL.Add('update ' +tabla+ ' set sNumeroActividad =:NuevaAct where sContrato = :Contrato and sNumeroOrden =:Folio and sNumeroActividad =:Act ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamContrato ;
                     QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     QryTablas.Params.ParamByName('Act').AsString       := sParamAct;
                     QryTablas.Params.ParamByName('NuevaAct').AsString  := sParamNuevaAct;
                 end
                 else
                     if (sLlevaContrato <> '') and (sLlevaFolio <> '') then
                     begin
                         QryTablas.SQL.Add('update ' +tabla+ ' set sNumeroOrden =:NuevoFolio where sContrato = :Contrato and sNumeroOrden =:Folio ');
                         QryTablas.Params.ParamByName('Contrato').AsString   := sParamContrato ;
                         QryTablas.Params.ParamByName('Folio').AsString      := sParamFolio;
                         QryTablas.Params.ParamByName('NuevoFolio').AsString := sParamNuevoFolio;
                     end
                     else
                         if (sLlevaContrato <> '') then
                         begin
                             QryTablas.SQL.Add('update ' +tabla+ ' set sContrato =:NuevoContrato where sContrato = :Contrato ');
                             QryTablas.Params.ParamByName('Contrato').AsString       := sParamContrato ;
                             QryTablas.Params.ParamByName('NuevoContrato').AsString  := sParamNuevoContrato ;
                         end;
             QryTablas.ExecSQL ;
         end;
     end;
     if lMensaje = True then
        messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);

    finally
        QryDatos.destroy;
        QryTablas.destroy;
    end;
end;

Function AvanceFolio(sParamcontrato, sParamFolio : string; dParamFecha : tDateTime) : double;
var
   dDiaSiguiente  : TDateTime;
begin
    {Avances anteriores}
    dDiaSiguiente := dParamFecha;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 4) AS dAvanceAnterior;';
    connection.QryBusca.ParamByName('Orden').AsString := global_contrato;
    connection.QryBusca.ParamByName('Folio').AsString := sParamFolio;
    connection.QryBusca.Open;

    //Avances Acumulados
    dDiaSiguiente := IncDay(dDiaSiguiente);
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 4) AS dAvanceAcumulado;';
    connection.QryBusca2.ParamByName('Orden').AsString := global_contrato;
    connection.QryBusca2.ParamByName('Folio').AsString := sParamFolio;
    connection.QryBusca2.Open;

    result := connection.QryBusca2.FieldByName('dAvanceAcumulado').AsFloat +  connection.QryBusca.FieldByName('dAvanceAnterior').AsFloat;
end;

function ConcatenaPersonal(sParamContrato, sParamFolio: string; dParamFecha :tDate; iParamGerencial :integer) : string;
var
    QryPersonalTurno    : TZQuery;
begin
     QryPersonalTurno:=TzQuery.create(nil);
     QryPersonalTurno.Connection := Connection.zConnection;

     result := '';

     QryPersonalTurno.Active := False;
     QryPersonalTurno.SQL.Clear;
     QryPersonalTurno.SQL.Add('select g.sNumeroOrden, g.sIdPersonal, p.sDescripcion, sum(g.dCantidadDiurno + g.dCantidadNocturno) as dCantidad '+
                'from g_bitacoradepersonal g '+
                'inner join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal = g.sIdPersonal) '+
                'where g.sContrato =:Contrato and g.dIdFecha =:Fecha and g.IdGerencial =:Gerencial and (g.dCantidadDiurno > 0 or g.dCantidadNocturno > 0) and g.sNumeroOrden =:Folio '+
                'group by g.sContrato, g.sIdPersonal '+
                'order by p.iItemOrden');
     QryPersonalTurno.ParamByName('ContratoBarco').AsString  := global_contrato_barco;
     QryPersonalTurno.ParamByName('Contrato').AsString   := sParamContrato;
     QryPersonalTurno.ParamByName('Fecha').AsDate        := dParamFecha;
     QryPersonalTurno.ParamByName('Gerencial').AsInteger := iParamGerencial;
     QryPersonalTurno.ParamByName('Folio').AsString      := sParamFolio;
     QryPersonalTurno.Open;

     while not QryPersonalTurno.Eof do
     begin
        result := result + FloatToStr(QryPersonalTurno.FieldByName('dCantidad').AsFloat)+ ' '+ QryPersonalTurno.FieldByName('sDescripcion').AsString + '  ';
        QryPersonalTurno.Next;
     end;

     QryPersonalTurno.Destroy;
end;

procedure procReporteGenerador(sParamContrato, sParamtipo, sParamAnexo, sParamTipoObra, sParamCategoria, sParamGeneradorTipo, sParamMoneda, sParamFiltroFolio :string; lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsGeneradorFolio : TfrxDBDataSet;
    Categorias, qry_tripulacion : tzReadOnlyQuery;

//    mDatos, mTotales, mSubTotal :TJvMemoryData;

    rDiario: TfrxReport;
    fechaAntes: tDate;
    sId, sFolio : string;
    CuentaCol : integer;

    dTotal, dSumaPernocta, dTotalMontoMN, dTotalMontoDLL  : double;
    dFechaActual : tDate;
    sSQLCadenaCeros : string;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;

    if sParamGeneradorTipo = 'CantidadMonto' then
    begin
        if sParamMoneda = 'MN' then
           sSQLCadenaCeros := ' and (p.dVentaDLL = 0 or (p.dVentaDLL > 0 and p.dVentaMN > 0)) '
        else
           sSQLCadenaCeros := ' and (p.dVentaMN = 0 or (p.dVentaMN > 0 and p.dVentaDLL > 0)) ';
    end
    else
       sSQLCadenaCeros := '';

    {$region 'Categorias'}
    Categorias := TzReadOnlyQuery.create(nil);
    Categorias.Connection := Connection.zConnection;
    Categorias.Active := False;
    Categorias.SQL.Clear;
    if (sParamTipo = 'Personal') or (sParamTipo = 'Equipo') or (sParamTipo = 'PersonalC5') then
    begin
        if sParamTipo = 'Personal' then
           Categorias.SQL.Add('select bp.sIdPersonal as sIdRecurso, bp.sTipoObra, p.dVentaMN, dVentaDLL from bitacoradepersonal bp '+
                    'inner join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal  = bp.sIdPersonal and p.sAnexo =:Anexo '+sSQLCadenaCeros+') '+
                    'where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaI and bp.dIdFecha <=:FechaF and bp.sIdPersonal like :Categoria '+
                    'and bp.sTipoObra like :Tipo group by bp.iItemOrden ')
        else
        if sParamTipo = 'PersonalC5' then
           Categorias.SQL.Add('select bp.sIdPersonal as sIdRecurso, bp.sTipoObra, p.iItemOrden as Orden, p.dVentaMN, p.dVentaDLL from bitacoradetiemposextras bp '+
                    'join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal  = bp.sIdPersonal and p.sAnexo =:Anexo '+sSQLCadenaCeros+') '+
                    'where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaI and bp.dIdFecha <=:FechaF and bp.sIdPersonal like :Categoria '+
                    'and bp.sTipoObra like :Tipo group by bp.iItemOrden '+
                    'union '+
                    'select bp.sIdPersonal as sIdRecurso, bp.sTipoObra, p.iItemOrden as Orden, p.dVentaMn, p.dVentaDLL from bitacoradepersonal bp '+
                    '                    inner join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal  = bp.sIdPersonal and p.sAnexo =:Anexo '+sSQLCadenaCeros+') '+
                    '                    where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaI and bp.dIdFecha <=:FechaF and bp.sIdPersonal like :Categoria '+
                    '                    and bp.sTipoObra like :Tipo group by bp.iItemOrden '+
                    'order by Orden  ')
           else
               Categorias.SQL.Add('select bp.sIdEquipo as sIdRecurso, bp.sTipoObra, p.dVentaMN, p.dVentaDLL from bitacoradeequipos bp '+
                       'inner join equipos p on (p.sContrato =:ContratoBarco and p.sIdEquipo  = bp.sIdEquipo '+sSQLCadenaCeros+') '+
                       'where bp.sContrato =:contrato and bp.dIdFecha >=:FechaI and bp.dIdFecha <=:FechaF and bp.sIdEquipo like :categoria '+
                       'and bp.sTipoObra like :Tipo  group by bp.iItemOrden ');
        Categorias.ParamByName('ContratoBarco').AsString := global_contrato_barco;
        Categorias.ParamByName('Contrato').AsString      := global_contrato;
        if (sParamTipo = 'Personal') or (sParamTipo = 'PersonalC5') then
           Categorias.ParamByName('Anexo').AsString      := sParamAnexo;
        Categorias.ParamByName('Tipo').AsString          := sParamTipoObra;
        Categorias.ParamByName('FechaI').AsDate          := dParamFechaI;
        Categorias.ParamByName('FechaF').AsDate          := dParamFechaF;
    end;

    if sParamTipo = 'Barco' then
    begin
        Categorias.SQL.Add('select p.sIdTipomovimiento as sIdRecurso, p.sDescripcion as sTipoObra, p.dVentaMN, p.dVentaDLL from tiposdemovimiento p '+
                    'where p.sContrato =:ContratoBarco and p.sClasificacion = "Movimiento de barco" and p.sIdTipoMovimiento like :Categoria '+sSQLCadenaCeros);
        Categorias.ParamByName('ContratoBarco').AsString := global_contrato_barco;
    end;

    if sParamTipo = 'Pernocta' then
    begin
        Categorias.SQL.Add('select p.sIdCuenta as sIdRecurso, p.sDescripcion as sTipoObra, p.dVentaMN, p.dVentaDLL from cuentas p  where p.sIdCuenta like :categoria '+sSQLCadenaCeros);
    end;

    if (sParamTipo = 'C5') or (sParamTipo = 'C6') or (sParamTipo = 'C7') or (sParamTipo = 'C8') or (sParamTipo = 'C9') or (sParamTipo = 'C10') or (sParamTipo = 'C11') or (sParamTipo = 'C12') or (sParamTipo = 'C13') or (sParamTipo = 'C14') or (sParamTipo = 'C15') or (sParamTipo = 'C16') or (sParamTipo = 'C') then
    begin
        Categorias.SQL.Add('select p.sNumeroActividad as sIdRecurso, substr(p.mDescripcion,1,250) as sTipoObra, p.dVentaMN, p.dVentaDLL from actividadesxanexo p '+
                          'inner join bitacorademateriales ba on (ba.sContrato =:Contrato and ba.sIdMaterial = p.sNumeroActividad and ba.dIdFecha >=:FechaI and ba.dIdFecha <=:FechaF) '+
                          'where p.sContrato =:ContratoBarco and p.sTipoActividad = "Actividad" and p.sNumeroActividad like :categoria and p.sAnexo =:Anexo '+sSQLCadenaCeros+' group by p.sWbs order by p.iItemOrden');
        Categorias.ParamByName('ContratoBarco').AsString := global_contrato_barco;
        Categorias.ParamByName('Contrato').AsString      := global_contrato;
        Categorias.ParamByName('Anexo').AsString         := sParamTipo;
        Categorias.ParamByName('FechaI').AsDate          := dParamFechaI;
        Categorias.ParamByName('FechaF').AsDate          := dParamFechaF;
    end;

    categorias.params.ParamByName('categoria').DataType := ftString;
    if sParamCategoria = '<Todas>' then
       categorias.params.ParamByName('categoria').Value := '%'
    else
       categorias.params.ParamByName('categoria').Value := sParamCategoria;
    Categorias.Open;
    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
//    mDatos:=TJvMemoryData.Create(nil);
//    with mDatos do
//      begin
//        Active:=false;
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('sIdRecurso', ftString, 100, True);
//        FieldDefs.Add('sNumeroOrden', ftString, 50, True);
//        FieldDefs.Add('sIdFolio', ftString, 100, True);
//        FieldDefs.Add('sDescripcion', ftString, 1000, True);
//        FieldDefs.Add('sMedida', ftString, 10, True);
//        FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//        FieldDefs.Add('dSumSubTotal', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotal', FtFloat, 0, True);
//        FieldDefs.Add('dVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotalVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotalVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('sTipoMoneda', ftString, 3, false);
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('dCantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

//    mTotales:=TJvMemoryData.Create(nil);
//    with mTotales do
//      begin
//        Active:=false;
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('dTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//        end;
//        Active:=true;
//      end;

    for CuentaCol := 1 to 31 do
    begin
//        mTotales.Append;
//        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
//        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
//        mTotales.Post;
    end;

//    mSubTotal:=TJvMemoryData.Create(nil);
//    with mSubTotal do
//      begin
//        Active:=false;
//        FieldDefs.Add('sIdRecurso', ftString, 100, True);
//        FieldDefs.Add('dVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dVentaDLL', FtFloat, 0, True);
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
//        mSubTotal.Append;
//        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('sIdRecurso').AsString;
//        mSubTotal.FieldByName('dVentaMN').AsFloat  := Categorias.FieldByName('dVentaMN').AsFloat;
//        mSubTotal.FieldByName('dVentaDLL').AsFloat := Categorias.FieldByName('dVentaDLL').AsFloat;
        for CuentaCol:=1 to 31 do
        begin
//          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
//          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
//        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Consultas'}
    //Ahora vienen las consultas del generador..
    qry_tripulacion := TzReadOnlyQuery.create(nil);
    qry_tripulacion.Connection := Connection.zConnection;
    qry_tripulacion.Active := False;
    qry_tripulacion.SQL.Clear;
    if (sParamTipo = 'Personal') or (sParamTipo = 'Equipo') or (sParamTipo = 'PersonalC5') then
    begin
        //>>Personal<<
        if sParamTipo = 'Personal' then
        begin
           qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                          'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                          'o.sIdFolio as sDescripcionFolio, '+
                          'round(sum(bp.dCantHH),2) as Total, '+
                          'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado '+
                          'FROM bitacoradepersonal bp '+
                          'inner join bitacoradeactividades ba '+
                          'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                          'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                          'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                          'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                          'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                          'from moe m '+
                          'where m.sContrato = bp.sContrato '+
                          'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                          '                    from moe m1 '+
                          '                    where m1.sContrato = bp.sContrato '+
                          '                    and m1.dIdFecha <= bp.dIdFecha '+
                          '                  ) '+
                          ')                           '+
                          'and eTipoRecurso = "Personal") '+
                          'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                          'WHERE bp.scontrato =:Contrato AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+ sParamFiltroFolio +
                          'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra order by e.iItemOrden, bp.sNumeroOrden, bp.dIdFecha ');
            qry_tripulacion.ParamByName('Anexo').AsString := sParamAnexo;
       end
       else //>>Personal C5<<
          if sParamTipo = 'PersonalC5' then
          begin
              qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                          'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                          'o.sIdFolio as sDescripcionFolio, '+
                          'sum(bp.dCantidad) as Total, '+
                          '0 AS Ajuste, 0 as dSolicitado, e.iItemOrden as iItemOrden '+
                          'FROM bitacoradetiemposextras bp '+

                          'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                          'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                          'WHERE bp.scontrato =:Contrato AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+ sParamFiltroFolio +
                          'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+

                      'union '+
                      'SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                          'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                          'o.sIdFolio as sDescripcionFolio, '+
                          'round(sum(bp.dCantHH),2) as Total, '+
                          'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.iItemOrden as iItemOrden '+
                          'FROM bitacoradepersonal bp '+
                          'inner join bitacoradeactividades ba '+
                          'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                          'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                          'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                          'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                          'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                          'from moe m '+
                          'where m.sContrato = bp.sContrato '+
                          'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                          '                    from moe m1 '+
                          '                    where m1.sContrato = bp.sContrato '+
                          '                    and m1.dIdFecha <= bp.dIdFecha '+
                          '                  ) '+
                          ') '+
                          'and eTipoRecurso = "Personal") '+
                          'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                          'WHERE bp.scontrato =:Contrato AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+ sParamFiltroFolio +
                          'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+
                      'order by iItemOrden, sNumeroOrden, dIdFecha ');
             qry_tripulacion.ParamByName('Anexo').AsString := sParamAnexo;
        end
        else
        //>>Equipo<<
           qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdEquipo as sIdRecurso, bp.sDescripcion, '+
                          'concat(bp.sIdEquipo, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                          'o.sIdFolio as sDescripcionFolio, '+
                          'round(sum(bp.dCantHH),2) as Total, '+
                          'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado '+
                          'FROM bitacoradeequipos bp '+
                          'inner join bitacoradeactividades ba '+
                          'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                          'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                          'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                          'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                          'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdEquipo and mr.iIdMoe = ( select m.iIdMoe '+
                          'from moe m '+
                          'where m.sContrato = bp.sContrato '+
                          'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                          '                    from moe m1 '+
                          '                    where m1.sContrato = bp.sContrato '+
                          '                    and m1.dIdFecha <= bp.dIdFecha '+
                          '                  ) '+
                          ')                           '+
                          'and eTipoRecurso = "Equipo") '+
                          'inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo = bp.sIdEquipo) '+
                          'WHERE bp.scontrato =:Contrato AND bp.didfecha >=:fechaI and bp.dIdFecha <=:fechaF '+ sParamFiltroFolio +
                          'and bp.sIdEquipo like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bp.sTipoObra order by e.iItemOrden, bp.sNumeroOrden, bp.dIdFecha ');

         qry_tripulacion.ParamByName('Tipo').AsString  := sParamTipoObra;
    end;

    if sParamTipo = 'Barco' then
    begin
        qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, tp.sIdTipoMovimiento as sIdRecurso, tp.sDescripcion, '+
                        'concat(tp.sIdTipoMovimiento, " ", tp.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, " " as sMedida, '+
                        'o.sIdFolio as sDescripcionFolio, '+
                        'round(sum(bp.sFactor),6) as Total, '+
                        'ifnull(SUM(bp.sFactorBarco),0) AS Ajuste, 0.00000 as dSolicitado '+
                        'FROM movimientosxfolios bp '+
                        'inner join ordenesdetrabajo o on (o.sContrato = bp.sNumeroOrden and o.sNumeroOrden = bp.sFolio ) '+
                        'inner join movimientosdeembarcacion me on (me.sContrato =bp.sContrato and me.dIdFecha = bp.dIdFecha and me.iIdDiario = bp.iIddiario ) '+
                        'inner join tiposdemovimiento tp on (tp.sContrato = bp.sContrato and tp.sIdTipoMovimiento = me.sClasificacion and tp.sClasificacion = "Movimiento de barco") '+
                        'WHERE bp.scontrato =:ContratoBarco AND bp.sNumeroOrden =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                        'and me.sClasificacion like :categoria '+ sParamFiltroFolio +
                        'group by bp.dIdFecha, bp.sFolio, tp.sIdTipoMovimiento order by tp.sIdTipoMovimiento, o.iOrden, me.dIdFecha');

    end;

    if sParamTipo = 'Pernocta' then
    begin
        qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario as id, "" as sTipoObra, bp.sIdCuenta as sIdRecurso, bp.sIdCategoria, c.sDescripcion, '+
                        'concat(bp.sIdCuenta, " ", c.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, c.sMedida, '+
                        'o.sIdFolio as sDescripcionFolio, '+
                        'sum(bp.dCantidad) as Total, '+
                        '0.00000 AS Ajuste, 0.00000 as dSolicitado, c.iOrden as Ordena '+
                        'FROM bitacoradepernocta bp '+
                        'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                        'inner join cuentas c on (c.sIdCuenta = bp.sIdCuenta) '+
                        'WHERE bp.sContrato =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                        'and bp.sIdCuenta like :Categoria and :ContratoBarco = :ContratoBarco '+ sParamFiltroFolio +
                        'group by dIdFecha, sNumeroOrden, sIdCategoria '+
                  'union '+
                               'select bp.sContrato, bp.dIdFecha, bp.iIdDiario as id, bp.sTipoObra, bp.sTipoPernocta as sIdRecurso, bp.sIdPersonal, cc.sDescripcion, '+
                        'concat(cc.sIdCuenta, " ", cc.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, cc.sMedida, '+
                        '    o.sIdFolio as sDescripcionFolio, '+
                        'round(sum( bp.dCantHH),2) as Total, '+
                        'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, cc.iOrden as Ordena '+
                        'from bitacoradepersonal bp '+
                        'inner join cuentas cc on (cc.sIdCuenta = bp.sTipoPernocta) '+
                        'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                        'where bp.sContrato =:Contrato '+
                        'and bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                        'and bp.sTipoObra like :Tipo and bp.lAplicaPernocta = "Si" '+ sParamFiltroFolio +
                  'group by dIdFecha, sNumeroOrden, sIdPersonal, sTipoObra '+
                  'order by Ordena, sNumeroOrden, dIdFecha');
        qry_tripulacion.ParamByName('Tipo').AsString  := sParamTipoObra;

    end;

    if (sParamTipo = 'C5') or (sParamTipo = 'C6') or (sParamTipo = 'C7') or (sParamTipo = 'C8') or (sParamTipo = 'C9') or (sParamTipo = 'C10') or (sParamTipo = 'C11') or (sParamTipo = 'C12') or (sParamTipo = 'C13')  or (sParamTipo = 'C14') or (sParamTipo = 'C15') or (sParamTipo = 'C16') or (sParamTipo = 'C') then
    begin
        qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdMaterial as sIdRecurso, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                        'concat(bp.sIdMaterial, " ", substr(bp.mDescripcion,1,1000)) as sDescripcionRecurso, o.sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                        'o.sIdFolio as sDescripcionFolio, '+
                        'sum(bp.dCantidad) as Total, '+
                        '0.00000 AS Ajuste, 0.00000 as dSolicitado '+
                        'FROM bitacorademateriales bp '+
                        'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                        'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bp.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                        'WHERE bp.scontrato =:contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                        'and bp.sIdMaterial like :Categoria and ax.sAnexo =:Anexo '+ sParamFiltroFolio +
                        'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdMaterial order by ax.iItemOrden, o.iOrden, bp.dIdFecha');

         qry_tripulacion.params.ParamByName('Anexo').asString  := sParamTipo;
    end;


    qry_tripulacion.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
    qry_tripulacion.params.ParamByName('contrato').asString       := sParamContrato;
    qry_tripulacion.params.ParamByName('fechaI').AsDate           := dParamFechaI;
    qry_tripulacion.params.ParamByName('fechaF').AsDate           := dParamFechaF;
    qry_tripulacion.params.ParamByName('categoria').DataType := ftString;
    if sParamCategoria = '<Todas>' then
       qry_tripulacion.params.ParamByName('categoria').Value := '%'
    else
       qry_tripulacion.params.ParamByName('categoria').Value := sParamCategoria;
    qry_tripulacion.Open;
    {$ENDREGION}

    {$REGION 'Proceso'}
    Categorias.First;
    while not Categorias.Eof do
    begin
       qry_tripulacion.Filtered := False;
       qry_tripulacion.Filter   := 'sIdRecurso = ' + QuotedStr( Categorias.FieldByName( 'sIdRecurso' ).AsString );
       qry_tripulacion.Filtered := True;
       qry_tripulacion.First;

       if (qry_tripulacion.RecordCount = 0) and (sParamGeneradorTipo = 'Cantidades') then
       begin
           //Solo par pernocta y barco
//           if (sParamTipo = 'Barco') or (sParamTipo = 'Pernocta') then
//           begin
//               qry_tripulacion.Filtered := False;
//               sId := '';
//               while not qry_tripulacion.Eof do
//               begin
//                   if sId <> qry_tripulacion.FieldByName('sNumeroOrden').AsString then
//                   begin
//                       sId := qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//
//                       mDatos.Append;
//                       mDatos.FieldByName('sAnexo').AsString       := sParamtipo;
//                       mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                       mDatos.FieldByName('sIdRecurso').AsString   := categorias.FieldByName('sIdRecurso').AsString;
//                       mDatos.FieldByName('sNumeroOrden').AsString := qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                       mDatos.FieldByName('sIdFolio').AsString     := qry_tripulacion.FieldByName('sDescripcionFolio').AsString;
//                       mDatos.FieldByName('sDescripcion').AsString := categorias.FieldByName('sTipoObra').AsString;
//                       mDatos.FieldByName('sMedida').AsString      := qry_tripulacion.FieldByName('sMedida').AsString;
//                       mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//                       mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//                       mDatos.FieldByName('dcantTotal').AsFloat    := 0;
//                       mDatos.FieldByName('dVentaMN').AsFloat      := 0;
//                       mDatos.FieldByName('dVentaDLL').AsFloat     := 0;
//                       mDatos.FieldByName('dSumVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dSumVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('dSumTotalVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dSumTotalVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                       mDatos.Post;
//                   end;
//                   qry_tripulacion.Next;
//               end;
//           end;
       end
       else
       begin

           sId := '';
           while not qry_tripulacion.Eof do
           begin
               if sId <> (qry_tripulacion.FieldByName('sNumeroOrden').AsString +'-'+ qry_tripulacion.FieldByName('sIdRecurso').AsString) then
               begin
//                   mSubTotal.Filtered := False;
//                   mSubTotal.Filter   := 'sIdRecurso = '+QuotedStr(qry_tripulacion.FieldByName('sIdRecurso').AsString);
//                   mSubTotal.Filtered := True;

                   dFechaActual := dParamFechaI;
                   CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
                   dTotal    := 0;
                   dSumaPernocta := 0;
                   sId    :=  qry_tripulacion.FieldByName('sNumeroOrden').AsString +'-'+ qry_tripulacion.FieldByName('sIdRecurso').AsString;
                   sFolio :=  qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                   mDatos.Append;
//                   mDatos.FieldByName('sAnexo').AsString  := sParamtipo;
//                   mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                   mDatos.FieldByName('sIdRecurso').AsString   := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                   mDatos.FieldByName('sNumeroOrden').AsString := qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                   mDatos.FieldByName('sIdFolio').AsString     := qry_tripulacion.FieldByName('sDescripcionFolio').AsString;
//                   mDatos.FieldByName('sDescripcion').AsString := qry_tripulacion.FieldByName('sDescripcion').AsString;
//                   mDatos.FieldByName('sMedida').AsString      := qry_tripulacion.FieldByName('sMedida').AsString;
//                   mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//                   mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//                   mDatos.FieldByName('dSumVentaMN').AsFloat   := 0;
//                   mDatos.FieldByName('dSumVentaDLL').AsFloat  := 0;
//                   mDatos.FieldByName('dSumTotalVentaMN').AsFloat   := 0;
//                   mDatos.FieldByName('dSumTotalVentaDLL').AsFloat  := 0;
//                   mDatos.FieldByName('dVentaMN').AsFloat      := Categorias.FieldByName( 'dVentaMN' ).AsFloat;
//                   mDatos.FieldByName('dVentaDLL').AsFloat     := Categorias.FieldByName( 'dVentaDLL' ).AsFloat;
               end;

               while (dFechaActual <= dParamFechaF) and (sFolio = qry_tripulacion.FieldByName('sNumeroOrden').AsString) do
               begin
                   if qry_tripulacion.FieldByName('dIdFecha').AsDateTime = dFechaActual then
                   begin
//                       mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
//                       mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
//                       dTotal := dTotal + mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat;
//                       dSumaPernocta := dSumaPernocta + mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat;

                       if (sParamTipo = 'Pernocta') then
//                          mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat :=  dSumaPernocta;

//                       mTotales.Locate('iDia'+IntToStr(CuentaCol),CuentaCol,[]);
//                       mTotales.Edit;
//                       mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
//                       mTotales.Post;
//
//                       mSubTotal.Locate('iDia'+IntToStr(CuentaCol),CuentaCol, [] );
//                       mSubTotal.Edit;
//                       mSubTotal.FieldByName('dVentaMN').AsFloat  := Categorias.FieldByName( 'dVentaMN' ).AsFloat;
//                       mSubTotal.FieldByName('dVentaDLL').AsFloat := Categorias.FieldByName( 'dVentaDLL' ).AsFloat;
//                       mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
//                       mSubTotal.Post;

                       qry_tripulacion.Next;
                   end;
                   if (dFechaActual <> qry_tripulacion.FieldByName('dIdFecha').AsDateTime) or (qry_tripulacion.Eof) then
                   begin
                       inc(CuentaCol);
                       dFechaActual := dFechaActual + 1;
                       dSumaPernocta := 0;
                   end;
               end;
//               mDatos.FieldByName('dcantTotal').AsFloat := dTotal;
//               mDatos.Post;
           end;
       end;
       Categorias.Next;
    end;

    dTotalMontoMN  := 0;
    dTotalMontoDLL := 0;
//    mSubTotal.Filtered := False;
//    mSubtotal.First;
    sId := '';
//    while not mSubTotal.Eof do
//    begin
//        if sId <> mSubTotal.FieldByName('sIdRecurso').AsString then
//        begin
//            dTotal := 0;
//            sId := mSubTotal.FieldByName('sIdRecurso').AsString;
//            mDatos.Filtered := False;
//            mDatos.Filter   := 'sIdRecurso = '+QuotedStr(mSubTotal.FieldByName('sIdRecurso').AsString);
//            mDatos.Filtered := True;
//            mDatos.First;
//        end;
//        if (mDatos.RecordCount > 0) and (not mDatos.Eof) then
//        for cuentaCol := 1 to 31 do
//        begin
//            dTotal := dTotal +  mSubTotal.FieldByName('dSubTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.Edit;
//            mDatos.FieldByName('dSubTotalDia'+IntToStr(cuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumSubTotal').AsFloat := dTotal;
//            mDatos.FieldByName('dSumVentaMN').AsFloat  := dTotal * mDatos.FieldByName('dVentaMN').AsFloat;
//            mDatos.FieldByName('dSumVentaDLL').AsFloat := dTotal * mDatos.FieldByName('dVentaDLL').AsFloat;
//            mDatos.Post;
//        end;
//        dTotalMontoMN  := dTotalMontoMN +  (dTotal * mSubTotal.FieldByName('dVentaMN').AsFloat);
//        dTotalMontoDLL := dTotalMontoDLL + (dTotal * mSubTotal.FieldByName('dVentaDLL').AsFloat);
//
//        mSubTotal.Next;
//    end;
//    mDatos.Filtered := False;

    dTotal := 0;
//    mDatos.Last;
//    if mDatos.RecordCount > 0 then
//    begin
//        mTotales.First;
//        for cuentaCol := 1 to 31 do
//        begin
//            dTotal := dTotal + mTotales.FieldByName('dTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.Edit;
//            mDatos.FieldByName('dTotalDia'+IntToStr(cuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumTotal').AsFloat    := dTotal;
//            mDatos.FieldByName('dSumVentaMN').AsFloat  := dTotal * mDatos.FieldByName('dVentaMN').AsFloat;
//            mDatos.FieldByName('dSumVentaDLL').AsFloat := dTotal * mDatos.FieldByName('dVentaDLL').AsFloat;
//            mDatos.Post;
//            mTotales.Next;
//        end;
//    end;

//    mDatos.First;
//    while not mDatos.Eof do
//    begin
//        mDatos.Edit;
//        mDatos.FieldByName('dSumTotalVentaMN').AsFloat  := dTotalMontoMN;
//        mDatos.FieldByName('dSumTotalVentaDLL').AsFloat := dTotalMontoDLL;
//        mDatos.Post;
//        mDatos.Next;
//    end;

    {$ENDREGION}

    qryConfiguracion := TZReadOnlyQuery.Create(nil);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, c.sReportesCIA, c.sDireccion1, c.sDireccion2, c2.sMascara as sLabelContrato,  ' +
                    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, "" as sIdUsuarioValida, "" as sIdUsuarioResidente, "" as sIdUsuarioAutoriza, ' +
                    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
                    'c.lImprimeExtraordinario, c.sIdEmbarcacion, c.iRedondeoEmbarcacion, c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
                    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal ' +
                    'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                    'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) ' +
                    'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := sParamContrato;
    QryConfiguracion.Open;

    dsGeneradorFolio:= TfrxDBDataSet.Create(Nil);
    dsGeneradorFolio.UserName   :='dsGeneradorFolio';
//    dsGeneradorFolio.DataSet    := mDatos;
    dsGeneradorFolio.FieldAliases.Clear;

    rDiario.DataSets.Add(dsGeneradorFolio);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

//    if mDatos.RecordCount > 0 then
//    begin
//        if sParamGeneradorTipo = 'Cantidades' then
//        begin
//            if lParamContinuo then
//               rDiario.LoadFromFile(global_files + global_miReporte+'_cGeneradorFolio.fr3')
//            else
//               rDiario.LoadFromFile(global_files + global_miReporte+'_GeneradorFolio.fr3');
//        end
//        else
//        begin
//            if lParamContinuo then
//               rDiario.LoadFromFile(global_files + global_miReporte+'_cGeneradorFolioMonto.fr3')
//            else
//               rDiario.LoadFromFile(global_files + global_miReporte+'_GeneradorFolioMonto.fr3');
//        end;
//        rDiario.ShowReport();
//    end
//    else
//       messageDLG('No se encontraron Datos en '+sParamMoneda, mtInformation, [mbOk], 0);


    // Destruye Objetos ...

    rDiario.DataSets.Clear;
    dsGeneradorFolio.Destroy;
    qry_tripulacion.Destroy;
//    mDatos.Destroy;
//    mTotales.Destroy;
//    mSubTotal.Destroy;
    categorias.Destroy;
end;

procedure procReporteAcumuladoFolios(sParamContrato, sParamTipoObra, sParamFiltro :string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsGeneradorFolio : TfrxDBDataSet;
    Folios, Anexos, qry_tripulacion : tzReadOnlyQuery;

    rDiario: TfrxReport;
    dTotalVentaMN, dTotalVentaDLL, dAcumVentaMN, dAcumVentaDLL : double;
//    mDatos :TJvMemoryData;
    CuentaCol, iGrupoColumna, iColumConteo : integer;
    local_tipo : string;
begin

    if sParamFiltro <> '' then
       sParamFiltro  := 'and '+ stringreplace(sParamFiltro, 'sNumeroOrden', 'ot.sNumeroOrden', [rfReplaceAll, rfIgnoreCase]);

    {$region 'Categorias'}
    Folios := TzReadOnlyQuery.create(nil);
    Folios.Connection := Connection.zConnection;
    Folios.Active := False;
    Folios.SQL.Add('select ot.sNumeroOrden, ot.sIdFolio from ordenesdetrabajo ot '+
                  'inner join bitacoradeactividades ba on (ba.sContrato = ot.sContrato and ba.sNumeroOrden = ot.sNumeroOrden '+
                  'and ba.dIdFecha >=:FechaI and ba.dIdFecha <:FechaF) '+
                  'where ot.sContrato =:Contrato '+ sParamFiltro +
                  ' group by ot.sNumeroOrden order by ot.iOrden');
    Folios.ParamByName('Contrato').AsString      := global_contrato;
    Folios.ParamByName('FechaI').AsDate          := dParamFechaI;
    Folios.ParamByName('FechaF').AsDate          := dParamFechaF;
    Folios.Open;

    Anexos := TzReadOnlyQuery.create(nil);
    Anexos.Connection := Connection.zConnection;
    Anexos.Active := False;
    Anexos.SQL.Add('select * from anexos order by iOrden');
    Anexos.Open;
    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
//    mDatos:=TJvMemoryData.Create(nil);
//    with mDatos do
//      begin
//        Active:=false;
//        FieldDefs.Add('iGrupo', ftInteger, 0, false);
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('sNumeroOrden', ftString, 50, True);
//        FieldDefs.Add('sIdFolio', ftString, 100, True);
//        FieldDefs.Add('dSumVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('sTipoMoneda', ftString, 3, false);
//        for CuentaCol:=1 to Anexos.RecordCount do
//        begin
//          FieldDefs.Add('sTitulo'+ Inttostr(CuentaCol), ftString, 10, false);
//          FieldDefs.Add('dVentaMN' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dVentaDLL'+ Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dTotalDiaMN' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dTotalDiaDLL' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

    {$endregion}

    {$REGION 'Consultas'}
    qry_tripulacion := TzReadOnlyQuery.create(nil);
    qry_tripulacion.Connection := Connection.zConnection;

    while not Folios.Eof do
    begin
        iGrupoColumna := 1;
        iColumConteo  := 1;

//        mDatos.Append;
//        mDatos.FieldByName('iGrupo').AsInteger := iGrupoColumna;
//        mDatos.FieldByName('sAnexo').AsString   := Anexos.FieldByName('sAnexo').AsString;
//        mDatos.FieldByName('sNumeroOrden').AsString := Folios.FieldByName('sNumeroOrden').AsString;
//        mDatos.FieldByName('sIdFolio').AsString := Folios.FieldByName('sIdFolio').AsString;
//        mDatos.FieldByName('dSumVentaMN').AsFloat  := 0;
//        mDatos.FieldByName('dSumVentaDLL').AsFloat := 0;
//        mDatos.Post;

        Anexos.First;
        while not Anexos.Eof do
        begin
            qry_tripulacion.Active := False;
            qry_tripulacion.SQL.Clear;
            if (Anexos.FieldByName('Nomenclatura').AsString = '2.') or (Anexos.FieldByName('Nomenclatura').AsString = '3.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
            begin
                //>>Personal<<
                if (Anexos.FieldByName('Nomenclatura').AsString = '2.') then
                begin
                   qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradepersonal bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ')                           '+
                                  'and eTipoRecurso = "Personal") '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra order by bp.dIdFecha, bp.sNumeroOrden, e.iItemOrden ');
                   qry_tripulacion.ParamByName('Anexo').AsString           := Anexos.FieldByName('sAnexo').AsString ;
                end
                else
                if (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
                begin
                      qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'sum(bp.dCantidad) as Total, '+
                                  '0 AS Ajuste, 0 as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradetiemposextras bp '+

                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+

                              'union '+
                              'SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradepersonal bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ') '+
                                  'and eTipoRecurso = "Personal") '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+
                              'order by dIdFecha, sNumeroOrden, iItemOrden ');
                     qry_tripulacion.ParamByName('Anexo').AsString := Anexos.FieldByName('sAnexo').AsString ;
                end
                else
                //>>Equipo<<
                   qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdEquipo as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdEquipo, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradeequipos bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdEquipo and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ')                           '+
                                  'and eTipoRecurso = "Equipo") '+
                                  'inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo = bp.sIdEquipo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.didfecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                                  'and bp.sIdEquipo like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bp.sTipoObra order by bp.dIdFecha, bp.sNumeroOrden, e.iItemOrden ');

                qry_tripulacion.ParamByName('Tipo').AsString             := sParamTipoObra;
            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '1.') then
            begin
                qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, tp.sIdTipoMovimiento as sIdRecurso, tp.sDescripcion, '+
                                'concat(tp.sIdTipoMovimiento, " ", tp.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, "" as sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.sFactor),6) as Total, '+
                                'ifnull(SUM(bp.sFactorBarco),0) AS Ajuste, 0.00000 as dSolicitado, tp.dVentaMN, tp.dVentaDLL '+
                                'FROM movimientosxfolios bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sNumeroOrden and o.sNumeroOrden = bp.sFolio ) '+
                                'inner join movimientosdeembarcacion me on (me.sContrato =bp.sContrato and me.dIdFecha = bp.dIdFecha and me.iIdDiario = bp.iIddiario ) '+
                                'inner join tiposdemovimiento tp on (tp.sContrato = bp.sContrato and tp.sIdTipoMovimiento = me.sClasificacion and tp.sClasificacion = "Movimiento de barco") '+
                                'WHERE bp.scontrato =:ContratoBarco AND bp.sNumeroOrden =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                                'and me.sClasificacion like :categoria and bp.sfolio like :folio '+
                                'group by bp.dIdFecha, bp.sFolio, tp.sIdTipoMovimiento order by me.dIdFecha, tp.sIdTipoMovimiento, o.iOrden');

            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '4.') then
            begin
                qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdCuenta as sIdRecurso, bp.sIdCategoria, c.sDescripcion, '+
                                'concat(bp.sIdCuenta, " ", c.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, c.sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'sum(bp.dCantidad) as Total, '+
                                '0.00000 AS Ajuste, 0.00000 as dSolicitado, c.iOrden as Ordena, c.dVentaMN, c.dVentaDLL '+
                                'FROM bitacoradepernocta bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join cuentas c on (c.sIdCuenta = bp.sIdCuenta) '+
                                'WHERE bp.sContrato =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                                'and bp.sIdCuenta like :Categoria and bp.sNumeroOrden like :Folio and :ContratoBarco = :ContratoBarco '+
                                'group by dIdFecha, sNumeroOrden, sIdCategoria '+
                          'union '+
                          'select bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra, bp.sTipoPernocta as sIdRecurso, bp.sIdPersonal, cc.sDescripcion, '+
                                'concat(cc.sIdCuenta, " ", cc.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, cc.sMedida, '+
                                '    o.sIdFolio as sDescripcionFolio, '+
                                'round(sum( bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, cc.iOrden as Ordena, cc.dVentaMN, cc.dVentaDLL '+
                                'from bitacoradepersonal bp '+
                                'inner join cuentas cc on (cc.sIdCuenta = bp.sTipoPernocta) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'where bp.sContrato =:Contrato '+
                                'and bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                                'and bp.sNumeroOrden like :Folio and bp.sTipoObra like :Tipo and bp.lAplicaPernocta = "Si" '+
                          'group by dIdFecha, sNumeroOrden, sIdPersonal, sTipoObra '+
                          'order by dIdFecha, sNumeroOrden, Ordena');
                  qry_tripulacion.ParamByName('Tipo').AsString             := sParamTipoObra;
            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '6.') or (Anexos.FieldByName('Nomenclatura').AsString = '7.') or (Anexos.FieldByName('Nomenclatura').AsString = '8.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '9.') or (Anexos.FieldByName('Nomenclatura').AsString = '11.') or (Anexos.FieldByName('Nomenclatura').AsString = 'E.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '12.') or (Anexos.FieldByName('Nomenclatura').AsString = '13.') or (Anexos.FieldByName('Nomenclatura').AsString = '10.') then
            begin
                if (Anexos.FieldByName('Nomenclatura').AsString = '6.') then
                   local_tipo := 'C6';

                if (Anexos.FieldByName('Nomenclatura').AsString = '7.') then
                   local_tipo := 'C7';

                if (Anexos.FieldByName('Nomenclatura').AsString = '8.') then
                   local_tipo := 'C8';

                if (Anexos.FieldByName('Nomenclatura').AsString = '9.') then
                   local_tipo := 'C9';

                if (Anexos.FieldByName('Nomenclatura').AsString = '10.') then
                   local_tipo := 'C10';

                if (Anexos.FieldByName('Nomenclatura').AsString = '11.') then
                   local_tipo := 'C11';

                if (Anexos.FieldByName('Nomenclatura').AsString = '12.') then
                   local_tipo := 'C12';

                if (Anexos.FieldByName('Nomenclatura').AsString = '13.') then
                   local_tipo := 'C13';

                if (Anexos.FieldByName('Nomenclatura').AsString = 'E.') then
                   local_tipo := 'C';

                qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdMaterial as sIdRecurso, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                                'concat(bp.sIdMaterial, " ", substr(bp.mDescripcion,0,1000)) as sDescripcionRecurso, o.sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'sum(bp.dCantidad) as Total, '+
                                '0.00000 AS Ajuste, 0.00000 as dSolicitado, ax.dVentaMN, ax.dVentaDLL '+
                                'FROM bitacorademateriales bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bp.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                                'WHERE bp.scontrato =:contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                                'and bp.sIdMaterial like :Categoria and bp.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                                'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdMaterial order by bp.dIdFecha, ax.iItemOrden');
                 qry_tripulacion.params.ParamByName('Anexo').asString  := local_tipo;
            end;

            qry_tripulacion.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
            qry_tripulacion.params.ParamByName('contrato').asString       := global_contrato;
            qry_tripulacion.params.ParamByName('fechaI').AsDate           := dParamFechaI;
            qry_tripulacion.params.ParamByName('fechaF').AsDate           := dParamFechaF;

            qry_tripulacion.params.ParamByName('categoria').DataType := ftString;
            qry_tripulacion.params.ParamByName('categoria').Value := '%';
            qry_tripulacion.params.ParamByName('folio').DataType := ftString;
            qry_tripulacion.params.ParamByName('folio').Value     :=  Folios.FieldByName('sNumeroOrden').AsString;

            qry_tripulacion.Open;

            dTotalVentaMN  := 0;
            dTotalVentaDLL := 0;
            qry_tripulacion.First;
            while not qry_tripulacion.Eof do
            begin
                dTotalVentaMN  := dTotalVentaMN  + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)* qry_tripulacion.FieldByName('dVentaMN').AsFloat);
                dTotalVentaDLL := dTotalVentaDLL + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)* qry_tripulacion.FieldByName('dVentaDLL').AsFloat);
                qry_tripulacion.Next;
            end;
          {$ENDREGION}
//            mDatos.Edit;
//            mDatos.FieldByName('iGrupo').AsInteger := iGrupoColumna;
//            mDatos.FieldByName('sTitulo'+ Inttostr(iColumConteo)).AsString   := Anexos.FieldByName('sEtiqueta').AsString;
//            mDatos.FieldByName('dVentaMN' + Inttostr(iColumConteo)).AsFloat  := dTotalVentaMN;
//            mDatos.FieldByName('dVentaDLL' + Inttostr(iColumConteo)).AsFloat := dTotalVentaDLL;
//            mDatos.FieldByName('dTotalDiaMN'  + Inttostr(iColumConteo)).AsFloat := mDatos.FieldByName('dTotalDiaMN'  + Inttostr(iColumConteo)).AsFloat + dTotalVentaMN;
//            mDatos.FieldByName('dTotalDiaDLL' + Inttostr(iColumConteo)).AsFloat := mDatos.FieldByName('dTotalDiaDLL' + Inttostr(iColumConteo)).AsFloat + dTotalVentaDLL;
//            mDatos.FieldByName('dSumVentaMN').AsFloat  := mDatos.FieldByName('dSumVentaMN').AsFloat + dTotalVentaMN;
//            mDatos.FieldByName('dSumVentaDLL').AsFloat := mDatos.FieldByName('dSumVentaDLL').AsFloat + dTotalVentaDLL;
//            mDatos.Post;
            Anexos.Next;

            if iColumConteo = 8 then
            begin
               iGrupoColumna := iGrupoColumna + 1;
               iColumConteo := 1;

//               dAcumVentaMN  := mDatos.FieldByName('dSumVentaMN').AsFloat;
//               dAcumVentaDLL := mDatos.FieldByName('dSumVentaDLL').AsFloat;

//               mDatos.Append;
//               mDatos.FieldByName('iGrupo').AsInteger := iGrupoColumna;
//               mDatos.FieldByName('sTitulo'+ Inttostr(iColumConteo)).AsString   := Anexos.FieldByName('sEtiqueta').AsString;
//               mDatos.FieldByName('sAnexo').AsString   := Anexos.FieldByName('sAnexo').AsString;
//               mDatos.FieldByName('sNumeroOrden').AsString := Folios.FieldByName('sNumeroOrden').AsString;
//               mDatos.FieldByName('sIdFolio').AsString := Folios.FieldByName('sIdFolio').AsString;
//               mDatos.FieldByName('dTotalDiaMN'  + Inttostr(iColumConteo)).AsFloat := dAcumVentaMN;
//               mDatos.FieldByName('dTotalDiaDLL' + Inttostr(iColumConteo)).AsFloat  := dAcumVentaDLL;
//               mDatos.FieldByName('dSumVentaMN').AsFloat  := dAcumVentaMN;
//               mDatos.FieldByName('dSumVentaDLL').AsFloat := dAcumVentaDLL;
//               mDatos.Post;
            end
            else
               inc(iColumConteo);

        end;
        Folios.Next;
        BarraProgresoAvance(BarraProgreso, 0,100,100/Folios.RecordCount);
    end;

//    mDatos.SortOnFields('iGrupo',False,False);


    qryConfiguracion := TZReadOnlyQuery.Create(nil);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, c.sReportesCIA, c.sDireccion1, c.sDireccion2,  ' +
                    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, "" as sIdUsuarioValida, "" as sIdUsuarioResidente, "" as sIdUsuarioAutoriza, ' +
                    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
                    'c.lImprimeExtraordinario, c.sIdEmbarcacion, c.iRedondeoEmbarcacion, c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
                    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal ' +
                    'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                    'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) ' +
                    'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := sParamContrato;
    QryConfiguracion.Open;

    dsGeneradorFolio:= TfrxDBDataSet.Create(Nil);
    dsGeneradorFolio.UserName   :='dsGeneradorFolio';
//    dsGeneradorFolio.DataSet    := mDatos;
    dsGeneradorFolio.FieldAliases.Clear;

    rDiario.DataSets.Add(dsGeneradorFolio);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

//    if mDatos.RecordCount > 0 then
//    begin
//       rDiario.LoadFromFile(global_files + global_miReporte+'_AcumuladosFolios.fr3');
//       rDiario.ShowReport();
//    end
//    else
//       messageDLG('No se encontraron Folios en el Periodo', mtInformation, [mbOk], 0);


    // Destruye Objetos ...
    rDiario.DataSets.Clear;
    dsGeneradorFolio.Destroy;
    qry_tripulacion.Destroy;
//    mDatos.Destroy;
    Folios.Destroy;
    Anexos.Destroy;
end;

procedure procReporteGeneradorDiesel(sParamContrato, sParamFiltro :string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsGeneradorFolio, dsNotasDiesel : TfrxDBDataSet;
    Folios, Anexos, qry_tripulacion, NotasDiesel : tzReadOnlyQuery;

    rDiario: TfrxReport;
//    mDatos, mTotales, mSubTotal, mNotasDiesel :TJvMemoryData;
    CuentaCol, iGrupoColumna, iColumConteo, indice : integer;
    local_tipo, sId, sFolio, sIdMixto : string;
    dFechaActual : tDate;
    dTotalProg, dTotal, dTotalDif, dDiferencia : double;
begin

    {$region 'Categorias'}
    Folios := TzReadOnlyQuery.create(nil);
    Folios.Connection := Connection.zConnection;
    Folios.Active := False;
    Folios.SQL.Add('select r.sContrato, r.sIdEmbarcacion as IdEquipo, re.iIdRecursoExistencia as IdBarco, p.sDescripcion, re.dProgramado, 0 as ordenar, "EMBARCACION" as Tipo '+
              'from recursos r '+
              'inner join pernoctan p on (p.sIdPernocta = r.sIdEmbarcacion) '+
              'inner join recursosdeexistencias re on (r.iIdRecursoExistencia  = re.iIdRecursoExistencia and re.lCombustible ="Si") '+
              'where r.sContrato = :ContratoBarco and r.dIdFecha >=:FechaI and r.dIdFecha <=:FechaF '+
              'group by r.sIdEmbarcacion '+
              'union '+
              'select c.sContrato, c.sIdEquipo as IdEquipo, 0 as IdBarco, p.sDescripcion, p.dProgramado, p.iItemOrden as ordenar, "EQUIPO"  as Tipo '+
              'from consumosdecombustibleporequipo c '+
              'inner join equipos p on (p.sContrato =:ContratoBarco and p.sIdEquipo = c.sIdEquipo and p.lAplicaDiesel = "Si") '+
              'where c.sContrato =:Contrato and c.dIdFecha >=:FechaI and c.dIdFecha <=:FechaF '+
              'group by p.sIdEquipo '+
              'order by ordenar ');
    Folios.ParamByName('ContratoBarco').AsString := global_contrato_barco;
    Folios.ParamByName('Contrato').AsString      := global_contrato;
    Folios.ParamByName('FechaI').AsDate          := dParamFechaI;
    Folios.ParamByName('FechaF').AsDate          := dParamFechaF;
    Folios.Open;

    {$endregion}

    {$region 'Memorys data'}
    rDiario := TfrxReport.Create(tOrigen);
//    mDatos:=TJvMemoryData.Create(nil);
//    with mDatos do
//      begin
//        Active:=false;
//        FieldDefs.Add('sAnexo', ftString, 15, false);
//        FieldDefs.Add('sIdRecurso', ftString, 100, True);
//        FieldDefs.Add('sNumeroOrden', ftString, 50, True);
//        FieldDefs.Add('sDescripcion', ftString, 1000, True);
//        FieldDefs.Add('sMedida', ftString, 10, True);
//        FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//        FieldDefs.Add('dSumSubTotal', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotal', FtFloat, 0, True);
//        FieldDefs.Add('dcantTotalProg', FtFloat, 0, True);
//        FieldDefs.Add('dSumSubTotalProg', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotalProg', FtFloat, 0, True);
//        FieldDefs.Add('dcantTotalDif', FtFloat, 0, True);
//        FieldDefs.Add('dSumSubTotalDif', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotalDif', FtFloat, 0, True);
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('dCantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dCantidadProg' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dCantidadDif' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dTotalDiaProg' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dSubTotalDiaProg' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dTotalDiaDif' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dSubTotalDiaDif' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

//    mTotales:=TJvMemoryData.Create(nil);
//    with mTotales do
//      begin
//        Active:=false;
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('dTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dTotalProg'+ Inttostr(CuentaCol), ftFloat, 0, false);
//          FieldDefs.Add('dTotalDif'+ Inttostr(CuentaCol), ftFloat, 0, false);
//        end;
//        Active:=true;
//      end;

//    for CuentaCol := 1 to 31 do
//    begin
//        mTotales.Append;
//        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
//        mTotales.FieldByName('dTotalProg'+ Inttostr(CuentaCol)).AsFloat := 0;
//        mTotales.FieldByName('dTotalDif'+ Inttostr(CuentaCol)).AsFloat := 0;
//        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
//        mTotales.Post;
//    end;
//
//    mSubTotal:=TJvMemoryData.Create(nil);
//    with mSubTotal do
//      begin
//        Active:=false;
//        FieldDefs.Add('sIdRecurso', ftString, 100, True);
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dSubTotalProg' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dSubTotalDif' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

    Folios.First;
    while not Folios.Eof do
    begin
//        mSubTotal.Append;
        if Folios.FieldByName('Tipo').AsString = 'EMBARCACION' then
//           mSubTotal.FieldByName('sIdRecurso').AsString := Folios.FieldByName('IdBarco').AsString
        else
//           mSubTotal.FieldByName('sIdRecurso').AsString := Folios.FieldByName('IdEquipo').AsString;
        for CuentaCol:=1 to 31 do
        begin
//          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
//          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
//          mSubTotal.FieldByName('dSubTotalProg' + Inttostr(CuentaCol)).AsFloat := 0;
//          mSubTotal.FieldByName('dSubTotalDif' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
//        mSubTotal.Post;
        Folios.Next;
    end;

//    mNotasDiesel:=TJvMemoryData.Create(nil);
//    with mNotasDiesel do
//    begin
//        Active:=false;
//        FieldDefs.Add('IdNota', ftInteger, 0, false);
//        FieldDefs.Add('dIdFecha', ftDate, 0, false);
//        FieldDefs.Add('sDescripcion', ftMemo, 0, True);
//        Active:=true;
//    end;
    {$endregion}

    {$REGION 'Consultas'}
    //Ahora vienen las consultas del generador..
    qry_tripulacion := TzReadOnlyQuery.create(nil);
    qry_tripulacion.Connection := Connection.zConnection;
    qry_tripulacion.Active := False;
    qry_tripulacion.SQL.Clear;
    qry_tripulacion.SQL.Add(' select  re.iIdRecursoExistencia as IdBarco, "" as IdEquipo, r.dIdFecha, p.sDescripcion, re.sMedida, dRecibido, dConsumo, dPrestamos,  re.dProgramado, (dRecibido+ dConsumo+dPrestamos) as Total '+
                   '   from recursos r '+
                   '   inner join pernoctan p on (p.sIdPernocta = r.sIdEmbarcacion) '+
                   '   inner join recursosdeexistencias re on (r.iIdRecursoExistencia  = re.iIdRecursoExistencia and re.lCombustible ="Si") '+
                   '   where r.sContrato = :ContratoBarco and r.dIdFecha >=:FechaI and r.dIdFecha <=:FechaF '+
                   '   group by r.sIdEmbarcacion, r.dIdFecha '+
                   ' union '+
                   '   select 0 as IdBarco, p.sIdEquipo as IdEquipo, c.dIdFecha, p.sDescripcion, p.sMedida, 0 as dRecibido, 0 as dConsumo, 0 as dPrestamos, p.dProgramado, sum(c.dCantidad/1000) as Total '+
                   '   from consumosdecombustibleporequipo c '+
                   '   inner join equipos p on (p.sContrato =:ContratoBarco and p.sIdEquipo = c.sIdEquipo and p.lAplicaDiesel = "Si") '+
                   '   where c.sContrato =:Contrato and c.dIdFecha >=:FechaI and c.dIdFecha <=:FechaF group by p.sIdEquipo, c.dIdFecha  '+
                   ' order by dIdFecha ');
    qry_tripulacion.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
    qry_tripulacion.params.ParamByName('contrato').asString       := sParamContrato;
    qry_tripulacion.params.ParamByName('fechaI').AsDate           := dParamFechaI;
    qry_tripulacion.params.ParamByName('fechaF').AsDate           := dParamFechaF;
    qry_tripulacion.Open;
    {$ENDREGION}

    {$REGION 'Proceso'}
    Folios.First;
    while not Folios.Eof do
    begin
       qry_tripulacion.Filtered := False;
       if Folios.FieldByName('Tipo').AsString = 'EMBARCACION' then
          qry_tripulacion.Filter  := 'IdBarco  = ' + QuotedStr( Folios.FieldByName( 'IdBarco' ).AsString )
       else
          qry_tripulacion.Filter  := 'IdEquipo = ' + QuotedStr( Folios.FieldByName( 'IdEquipo' ).AsString );
       qry_tripulacion.Filtered := True;
       qry_tripulacion.First;

       sId := '';
       while not qry_tripulacion.Eof do
       begin
           if Folios.FieldByName('Tipo').AsString = 'EMBARCACION' then
              sIdMixto := qry_tripulacion.FieldByName('IdBarco').AsString
           else
              sIdMixto := qry_tripulacion.FieldByName('IdEquipo').AsString;

           if sId <> (Folios.FieldByName('Tipo').AsString +'-'+ sIdMixto) then
           begin
//               mSubTotal.Filtered := False;
//               mSubTotal.Filter   := 'sIdRecurso = '+QuotedStr(sIdMixto);
//               mSubTotal.Filtered := True;

               dFechaActual := dParamFechaI;
               CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
               dTotal    := 0;
               dTotalProg:= 0;
               dTotalDif := 0;
               sId     :=  Folios.FieldByName('Tipo').AsString +'-'+ sIdMixto;
               sFolio  :=  sIdMixto;
//               mDatos.Append;
//               mDatos.FieldByName('sAnexo').AsString       := Folios.FieldByName('Tipo').AsString;
//               mDatos.FieldByName('sIdRecurso').AsString   := Folios.FieldByName('IdEquipo').AsString;
//               mDatos.FieldByName('sNumeroOrden').AsString := Folios.FieldByName('Tipo').AsString;
//               mDatos.FieldByName('sDescripcion').AsString := Folios.FieldByName('sDescripcion').AsString;
//               mDatos.FieldByName('sMedida').AsString      := qry_tripulacion.FieldByName('sMedida').AsString;
//               mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//               mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//               mDatos.FieldByName('dSumSubTotalProg').AsFloat  := 0;
//               mDatos.FieldByName('dSumTotalProg').AsFloat     := 0;
//               mDatos.FieldByName('dSumSubTotalDif').AsFloat  := 0;
//               mDatos.FieldByName('dSumTotalDif').AsFloat     := 0;
           end;

           while (dFechaActual <= dParamFechaF) and (sFolio = sIdMixto) do
           begin
               if qry_tripulacion.FieldByName('dIdFecha').AsDateTime = dFechaActual then
               begin
//                   mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := (qry_tripulacion.FieldByName('Total').AsFloat );
//                   mDatos.FieldByName('dCantidadProg'+ Inttostr(CuentaCol)).AsFloat := (qry_tripulacion.FieldByName('dProgramado').AsFloat );

                   dDiferencia := 0;
//                   mDatos.FieldByName('dCantidadDif'+ Inttostr(CuentaCol)).AsFloat := 0;

                   if qry_tripulacion.FieldByName('Total').AsFloat > qry_tripulacion.FieldByName('dProgramado').AsFloat then
                   begin
//                       mDatos.FieldByName('dCantidadDif'+ Inttostr(CuentaCol)).AsFloat := (qry_tripulacion.FieldByName('Total').AsFloat - qry_tripulacion.FieldByName('dProgramado').AsFloat);
                       dDiferencia := (qry_tripulacion.FieldByName('Total').AsFloat - qry_tripulacion.FieldByName('dProgramado').AsFloat);
                       dTotalDif := dTotalDif + dDiferencia;
                   end;

//                   mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
//                   dTotal := dTotal + mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat;
                   dTotalProg := dTotalProg + qry_tripulacion.FieldByName('dProgramado').AsFloat;

//                   mTotales.Locate('iDia'+IntToStr(CuentaCol),CuentaCol,[]);
//                   mTotales.Edit;
//                   mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat + (qry_tripulacion.FieldByName('Total').AsFloat );
//                   mTotales.FieldByName('dTotalProg'+IntToStr(CuentaCol)).AsFloat := mTotales.FieldByName('dTotalProg'+IntToStr(CuentaCol)).AsFloat + (qry_tripulacion.FieldByName('dProgramado').AsFloat);
//                   mTotales.FieldByName('dTotalDif'+IntToStr(CuentaCol)).AsFloat := mTotales.FieldByName('dTotalDif'+IntToStr(CuentaCol)).AsFloat  + dDiferencia;
//                   mTotales.Post;

//                   mSubTotal.Locate('iDia'+IntToStr(CuentaCol),CuentaCol, [] );
//                   mSubTotal.Edit;
//                   mSubTotal.FieldByName('sIdRecurso').AsString := Folios.FieldByName('IdEquipo').AsString;
//                   mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat + (qry_tripulacion.FieldByName('Total').AsFloat );
//                   mSubTotal.FieldByName('dSubTotalProg'+IntToStr(CuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotalProg'+IntToStr(CuentaCol)).AsFloat + (qry_tripulacion.FieldByName('dProgramado').AsFloat);
//                   mSubTotal.FieldByName('dSubTotalDif'+IntToStr(CuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotalDif'+IntToStr(CuentaCol)).AsFloat + dDiferencia;
//                   mSubTotal.Post;

                   qry_tripulacion.Next;
               end;
               if (dFechaActual <> qry_tripulacion.FieldByName('dIdFecha').AsDateTime) or (qry_tripulacion.Eof) then
               begin
                   inc(CuentaCol);
                   dFechaActual := dFechaActual + 1;
               end;
           end;
//           mDatos.FieldByName('dcantTotal').AsFloat := dTotal;
//           mDatos.FieldByName('dcantTotalProg').AsFloat := dTotalProg;
//           mDatos.FieldByName('dcantTotalDif').AsFloat := dTotalDif;
//           mDatos.Post;
       end;
       Folios.Next;
    end;

//    mSubTotal.Filtered := False;
//    mSubtotal.First;
    sId := '';
//    while not mSubTotal.Eof do
//    begin
//        if sId <> mSubTotal.FieldByName('sIdRecurso').AsString then
//        begin
//            dTotal := 0;
//            dTotalProg := 0;
//            dTotalDif := 0;
//            sId := mSubTotal.FieldByName('sIdRecurso').AsString;
//            mDatos.Filtered := False;
//            mDatos.Filter   := 'sIdRecurso = '+QuotedStr(mSubTotal.FieldByName('sIdRecurso').AsString);
//            mDatos.Filtered := True;
//            mDatos.First;
//        end;
//        if (mDatos.RecordCount > 0) and (not mDatos.Eof) then
//        for cuentaCol := 1 to 31 do
//        begin
//            dTotal := dTotal +  mSubTotal.FieldByName('dSubTotal'+IntToStr(cuentaCol)).AsFloat;
//            dTotalProg := dTotalProg +  mSubTotal.FieldByName('dSubTotalProg'+IntToStr(cuentaCol)).AsFloat;
//            dTotalDif := dTotalDif +  mSubTotal.FieldByName('dSubTotalDif'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.Edit;
//            mDatos.FieldByName('dSubTotalDia'+IntToStr(cuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumSubTotal').AsFloat := dTotal;
//            mDatos.FieldByName('dSubTotalDiaProg'+IntToStr(cuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotalProg'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumSubTotalProg').AsFloat := dTotalProg;
//            mDatos.FieldByName('dSubTotalDiaDif'+IntToStr(cuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotalDif'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumSubTotalDif').AsFloat := dTotalDif;
//            mDatos.Post;
//        end;
//        mSubTotal.Next;
//    end;
//    mDatos.Filtered := False;

    dTotal := 0;
    dTotalProg := 0;
    dTotalDif  := 0;
//    mDatos.Last;
//    if mDatos.RecordCount > 0 then
//    begin
//        mTotales.First;
//        for cuentaCol := 1 to 31 do
//        begin
//            dTotal := dTotal + mTotales.FieldByName('dTotal'+IntToStr(cuentaCol)).AsFloat;
//            dTotalProg := dTotalProg + mTotales.FieldByName('dTotalProg'+IntToStr(cuentaCol)).AsFloat;
//            dTotalDif := dTotalDif + mTotales.FieldByName('dTotalDif'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.Edit;
//            mDatos.FieldByName('dTotalDia'+IntToStr(cuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumTotal').AsFloat    := dTotal;
//            mDatos.FieldByName('dTotalDiaProg'+IntToStr(cuentaCol)).AsFloat := mTotales.FieldByName('dTotalProg'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumTotalProg').AsFloat    := dTotalProg;
//            mDatos.FieldByName('dTotalDiaDif'+IntToStr(cuentaCol)).AsFloat := mTotales.FieldByName('dTotalDif'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumTotalDif').AsFloat    := dTotalDif;
//            mDatos.Post;
//            mTotales.Next;
//        end;
//    end;

    {$ENDREGION}

    {$Region 'Notas Diesel'}

    NotasDiesel := TzReadOnlyQuery.create(nil);
    NotasDiesel.Connection := Connection.zConnection;
    NotasDiesel.Active := False;
    NotasDiesel.SQL.Clear;
    NotasDiesel.SQL.Add('select dIdFecha, sNotaGeneral from notas_generales where sContrato =:Contrato and dIdFecha >=:FechaI and dIdFecha <=:FechaF and lAplicaConsumos ="Si" '+
                'and sNotaGeneral like "%TRANSFIERE%" '+
                'union '+
                'select dIdFecha, CONCAT("SE RECEPCIONAN ", Round(dRecibido,2), " M3 DE LA EMBARCACION") as sNotaGeneral from recursos where sContrato =:ContratoBarco and dIdFecha >=:FechaI and dIdFecha <=:FechaF and iIdRecursoExistencia = 1 and dRecibido > 0 '+
                'order by dIdFecha ');
    NotasDiesel.params.ParamByName('contrato').asString      := sParamContrato;
    NotasDiesel.params.ParamByName('ContratoBarco').asString := global_contrato_barco;
    NotasDiesel.params.ParamByName('FechaI').AsDate          := dParamFechaI;
    NotasDiesel.params.ParamByName('FechaF').AsDate          := dParamFechaF;
    NotasDiesel.Open;

    indice := 1;
    while not NotasDiesel.Eof do
    begin
//        mNotasDiesel.Append;
//        mNotasDiesel.FieldByName('IdNota').AsInteger      := indice;
//        mNotasDiesel.FieldByName('dIdFecha').AsDateTime   := NotasDiesel.FieldByName('dIdFecha').AsDateTime;
//        mNotasDiesel.FieldByName('sDescripcion').AsString := NotasDiesel.FieldByName('sNotaGeneral').AsString;
//        mNotasDiesel.Post;
        inc(indice);
        NotasDiesel.Next;
    end;

    {$endregion}

    qryConfiguracion := TZReadOnlyQuery.Create(nil);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, c.sReportesCIA, c.sDireccion1, c.sDireccion2, c2.sMascara as sLabelContrato,  ' +
                    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, "" as sIdUsuarioValida, "" as sIdUsuarioResidente, "" as sIdUsuarioAutoriza, ' +
                    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
                    'c.lImprimeExtraordinario, c.sIdEmbarcacion, c.iRedondeoEmbarcacion, c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
                    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal ' +
                    'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                    'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) ' +
                    'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := sParamContrato;
    QryConfiguracion.Open;

    dsGeneradorFolio:= TfrxDBDataSet.Create(Nil);
    dsGeneradorFolio.UserName   :='dsGeneradorFolio';
//    dsGeneradorFolio.DataSet    := mDatos;
    dsGeneradorFolio.FieldAliases.Clear;

    dsNotasDiesel:= TfrxDBDataSet.Create(Nil);
    dsNotasDiesel.UserName   :='dsNotasDiesel';
//    dsNotasDiesel.DataSet    := mNotasDiesel;
    dsNotasDiesel.FieldAliases.Clear;

    rDiario.DataSets.Add(dsNotasDiesel);
    rDiario.DataSets.Add(dsGeneradorFolio);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

//    if mDatos.RecordCount > 0 then
//    begin
//        rDiario.LoadFromFile(global_files + global_miReporte+'_GeneradorDiesel.fr3');
//        rDiario.ShowReport();
//    end
//    else
//       messageDLG('No se encontraron Datos en Generador Diesel', mtInformation, [mbOk], 0);

    // Destruye Objetos ...

    rDiario.DataSets.Clear;
    dsGeneradorFolio.Destroy;
    qry_tripulacion.Destroy;
//    mDatos.Destroy;
//    mTotales.Destroy;
//    mSubTotal.Destroy;
end;

Procedure procReporteGeneradorProyeccion(sParamContrato, sParamtipo, sParamAnexo, sParamTipoObra, sParamCategoria, sParamGeneradorTipo, sParamMoneda :string; lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsGeneradorFolio : TfrxDBDataSet;
    Categorias, qry_tripulacion : tzReadOnlyQuery;

//    mDatos, mTotales, mSubTotal :TJvMemoryData;

    rDiario: TfrxReport;
    fechaAntes: tDate;
    sId, sFolio : string;
    CuentaCol, ColumnaStatic : integer;

    dTotal, dSumaPernocta, dTotalMontoMN, dTotalMontoDLL  : double;
    dFechaActual, dFechaReportado : tDate;
    sSQLCadenaCeros : string;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;

    if sParamGeneradorTipo = 'CantidadMonto' then
    begin
        if sParamMoneda = 'MN' then
           sSQLCadenaCeros := ' and (p.dVentaDLL = 0 or (p.dVentaDLL > 0 and p.dVentaMN > 0)) '
        else
           sSQLCadenaCeros := ' and (p.dVentaMN = 0 or (p.dVentaMN > 0 and p.dVentaDLL > 0)) ';
    end
    else
       sSQLCadenaCeros := '';

    {$region 'Categorias'}
    Categorias := TzReadOnlyQuery.create(nil);
    Categorias.Connection := Connection.zConnection;
    Categorias.Active := False;
    Categorias.SQL.Clear;
    if (sParamTipo = 'Personal') or (sParamTipo = 'Equipo') or (sParamTipo = 'PersonalC5') then
    begin
        if sParamTipo = 'Personal' then
           Categorias.SQL.Add('select bp.sIdPersonal as sIdRecurso, bp.sTipoObra, p.dVentaMN, dVentaDLL from bitacoradepersonal bp '+
                    'inner join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal  = bp.sIdPersonal and p.sAnexo =:Anexo '+sSQLCadenaCeros+') '+
                    'where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaI and bp.dIdFecha <=:FechaF and bp.sIdPersonal like :Categoria '+
                    'and bp.sTipoObra like :Tipo group by bp.iItemOrden ')
        else
        if sParamTipo = 'PersonalC5' then
           Categorias.SQL.Add('select bp.sIdPersonal as sIdRecurso, bp.sTipoObra, p.iItemOrden as Orden, p.dVentaMN, p.dVentaDLL from bitacoradetiemposextras bp '+
                    'join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal  = bp.sIdPersonal and p.sAnexo =:Anexo '+sSQLCadenaCeros+') '+
                    'where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaI and bp.dIdFecha <=:FechaF and bp.sIdPersonal like :Categoria '+
                    'and bp.sTipoObra like :Tipo group by bp.iItemOrden '+
                    'union '+
                    'select bp.sIdPersonal as sIdRecurso, bp.sTipoObra, p.iItemOrden as Orden, p.dVentaMn, p.dVentaDLL from bitacoradepersonal bp '+
                    '                    inner join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal  = bp.sIdPersonal and p.sAnexo =:Anexo '+sSQLCadenaCeros+') '+
                    '                    where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaI and bp.dIdFecha <=:FechaF and bp.sIdPersonal like :Categoria '+
                    '                    and bp.sTipoObra like :Tipo group by bp.iItemOrden '+
                    'order by Orden  ')
           else
               Categorias.SQL.Add('select bp.sIdEquipo as sIdRecurso, bp.sTipoObra, p.dVentaMN, p.dVentaDLL from bitacoradeequipos bp '+
                       'inner join equipos p on (p.sContrato =:ContratoBarco and p.sIdEquipo  = bp.sIdEquipo '+sSQLCadenaCeros+') '+
                       'where bp.sContrato =:contrato and bp.dIdFecha >=:FechaI and bp.dIdFecha <=:FechaF and bp.sIdEquipo like :categoria '+
                       'and bp.sTipoObra like :Tipo  group by bp.iItemOrden ');
        Categorias.ParamByName('ContratoBarco').AsString := global_contrato_barco;
        Categorias.ParamByName('Contrato').AsString      := global_contrato;
        if (sParamTipo = 'Personal') or (sParamTipo = 'PersonalC5') then
           Categorias.ParamByName('Anexo').AsString      := sParamAnexo;
        Categorias.ParamByName('Tipo').AsString          := sParamTipoObra;
        Categorias.ParamByName('FechaI').AsDate          := dParamFechaI;
        Categorias.ParamByName('FechaF').AsDate          := dParamFechaF;
    end;

    if sParamTipo = 'Barco' then
    begin
        Categorias.SQL.Add('select p.sIdTipomovimiento as sIdRecurso, p.sDescripcion as sTipoObra, p.dVentaMN, p.dVentaDLL from tiposdemovimiento p '+
                    'where p.sContrato =:ContratoBarco and p.sClasificacion = "Movimiento de barco" and p.sIdTipoMovimiento like :Categoria '+sSQLCadenaCeros);
        Categorias.ParamByName('ContratoBarco').AsString := global_contrato_barco;
    end;

    if sParamTipo = 'Pernocta' then
    begin
        Categorias.SQL.Add('select p.sIdCuenta as sIdRecurso, p.sDescripcion as sTipoObra, p.dVentaMN, p.dVentaDLL from cuentas p  where p.sIdCuenta like :categoria '+sSQLCadenaCeros);
    end;

    if (sParamTipo = 'C6') or (sParamTipo = 'C7') or (sParamTipo = 'C8') or (sParamTipo = 'C9') or (sParamTipo = 'C10') or (sParamTipo = 'C11') or (sParamTipo = 'C12') or (sParamTipo = 'C13') or (sParamTipo = 'C14') or (sParamTipo = 'C15')  or (sParamTipo = 'C16') or (sParamTipo = 'C') then
    begin
        Categorias.SQL.Add('select p.sNumeroActividad as sIdRecurso, substr(p.mDescripcion,1,250) as sTipoObra, p.dVentaMN, p.dVentaDLL from actividadesxanexo p '+
                          'inner join bitacorademateriales ba on (ba.sContrato =:Contrato and ba.sIdMaterial = p.sNumeroActividad and ba.dIdFecha >=:FechaI and ba.dIdFecha <=:FechaF) '+
                          'where p.sContrato =:ContratoBarco and p.sTipoActividad = "Actividad" and p.sNumeroActividad like :categoria and p.sAnexo =:Anexo '+sSQLCadenaCeros+' group by p.sWbs order by p.iItemOrden');
        Categorias.ParamByName('ContratoBarco').AsString := global_contrato_barco;
        Categorias.ParamByName('Contrato').AsString      := global_contrato;
        Categorias.ParamByName('Anexo').AsString         := sParamTipo;
        Categorias.ParamByName('FechaI').AsDate          := dParamFechaI;
        Categorias.ParamByName('FechaF').AsDate          := dParamFechaF;
    end;

    categorias.params.ParamByName('categoria').DataType := ftString;
    if sParamCategoria = '<Todas>' then
       categorias.params.ParamByName('categoria').Value := '%'
    else
       categorias.params.ParamByName('categoria').Value := sParamCategoria;
    Categorias.Open;
    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
//    mDatos:=TJvMemoryData.Create(nil);
//    with mDatos do
//      begin
//        Active:=false;
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('sIdRecurso', ftString, 100, True);
//        FieldDefs.Add('sNumeroOrden', ftString, 50, True);
//        FieldDefs.Add('sIdFolio', ftString, 100, True);
//        FieldDefs.Add('sDescripcion', ftString, 1000, True);
//        FieldDefs.Add('sMedida', ftString, 10, True);
//        FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//        FieldDefs.Add('dSumSubTotal', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotal', FtFloat, 0, True);
//        FieldDefs.Add('dVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotalVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotalVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('sTipoMoneda', ftString, 3, false);
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('dCantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

//    mTotales:=TJvMemoryData.Create(nil);
//    with mTotales do
//      begin
//        Active:=false;
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('dTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//        end;
//        Active:=true;
//      end;

    for CuentaCol := 1 to 31 do
    begin
//        mTotales.Append;
//        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
//        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
//        mTotales.Post;
    end;

//    mSubTotal:=TJvMemoryData.Create(nil);
//    with mSubTotal do
//      begin
//        Active:=false;
//        FieldDefs.Add('sIdRecurso', ftString, 100, True);
//        FieldDefs.Add('dVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dVentaDLL', FtFloat, 0, True);
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
//        mSubTotal.Append;
//        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('sIdRecurso').AsString;
//        mSubTotal.FieldByName('dVentaMN').AsFloat  := Categorias.FieldByName('dVentaMN').AsFloat;
//        mSubTotal.FieldByName('dVentaDLL').AsFloat := Categorias.FieldByName('dVentaDLL').AsFloat;
        for CuentaCol:=1 to 31 do
        begin
//          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
//          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
//        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Consultas'}
    //Ahora vienen las consultas del generador..
    qry_tripulacion := TzReadOnlyQuery.create(nil);
    qry_tripulacion.Connection := Connection.zConnection;
    qry_tripulacion.Active := False;
    qry_tripulacion.SQL.Clear;
    if (sParamTipo = 'Personal') or (sParamTipo = 'Equipo') or (sParamTipo = 'PersonalC5') then
    begin
        //>>Personal<<
        if sParamTipo = 'Personal' then
        begin
           qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                          'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                          'o.sIdFolio as sDescripcionFolio, '+
                          'round(sum(bp.dCantHH),2) as Total, '+
                          'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado '+
                          'FROM bitacoradepersonal bp '+
                          'inner join bitacoradeactividades ba '+
                          'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                          'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                          'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                          'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                          'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                          'from moe m '+
                          'where m.sContrato = bp.sContrato '+
                          'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                          '                    from moe m1 '+
                          '                    where m1.sContrato = bp.sContrato '+
                          '                    and m1.dIdFecha <= bp.dIdFecha '+
                          '                  ) '+
                          ')                           '+
                          'and eTipoRecurso = "Personal") '+
                          'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                          'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                          'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra order by e.iItemOrden, bp.sNumeroOrden, bp.dIdFecha ');
            qry_tripulacion.ParamByName('Anexo').AsString := sParamAnexo;
       end
       else //>>Personal C5<<
          if sParamTipo = 'PersonalC5' then
          begin
              qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                          'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                          'o.sIdFolio as sDescripcionFolio, '+
                          'sum(bp.dCantidad) as Total, '+
                          '0 AS Ajuste, 0 as dSolicitado, e.iItemOrden as iItemOrden '+
                          'FROM bitacoradetiemposextras bp '+

                          'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                          'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                          'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                          'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+

                      'union '+
                      'SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                          'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                          'o.sIdFolio as sDescripcionFolio, '+
                          'round(sum(bp.dCantHH),2) as Total, '+
                          'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.iItemOrden as iItemOrden '+
                          'FROM bitacoradepersonal bp '+
                          'inner join bitacoradeactividades ba '+
                          'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                          'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                          'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                          'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                          'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                          'from moe m '+
                          'where m.sContrato = bp.sContrato '+
                          'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                          '                    from moe m1 '+
                          '                    where m1.sContrato = bp.sContrato '+
                          '                    and m1.dIdFecha <= bp.dIdFecha '+
                          '                  ) '+
                          ') '+
                          'and eTipoRecurso = "Personal") '+
                          'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                          'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                          'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+
                      'order by iItemOrden, sNumeroOrden, dIdFecha ');
             qry_tripulacion.ParamByName('Anexo').AsString := sParamAnexo;
        end
        else
        //>>Equipo<<
           qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdEquipo as sIdRecurso, bp.sDescripcion, '+
                          'concat(bp.sIdEquipo, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                          'o.sIdFolio as sDescripcionFolio, '+
                          'round(sum(bp.dCantHH),2) as Total, '+
                          'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado '+
                          'FROM bitacoradeequipos bp '+
                          'inner join bitacoradeactividades ba '+
                          'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                          'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                          'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                          'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                          'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdEquipo and mr.iIdMoe = ( select m.iIdMoe '+
                          'from moe m '+
                          'where m.sContrato = bp.sContrato '+
                          'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                          '                    from moe m1 '+
                          '                    where m1.sContrato = bp.sContrato '+
                          '                    and m1.dIdFecha <= bp.dIdFecha '+
                          '                  ) '+
                          ')                           '+
                          'and eTipoRecurso = "Equipo") '+
                          'inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo = bp.sIdEquipo) '+
                          'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.didfecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                          'and bp.sIdEquipo like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bp.sTipoObra order by e.iItemOrden, bp.sNumeroOrden, bp.dIdFecha ');

         qry_tripulacion.ParamByName('Tipo').AsString  := sParamTipoObra;
    end;

    if sParamTipo = 'Barco' then
    begin
        qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, tp.sIdTipoMovimiento as sIdRecurso, tp.sDescripcion, '+
                        'concat(tp.sIdTipoMovimiento, " ", tp.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, " " as sMedida, '+
                        'o.sIdFolio as sDescripcionFolio, '+
                        'round(sum(bp.sFactor),6) as Total, '+
                        'ifnull(SUM(bp.sFactorBarco),0) AS Ajuste, 0.00000 as dSolicitado, '+
                        '(select max(dIdFecha) from movimientosxfolios WHERE scontrato =:ContratoBarco AND sNumeroOrden =:Contrato AND didfecha >=:FechaI and dIdFecha <=:FechaF  group by scontrato) as FechaMaxima '+
                        'FROM movimientosxfolios bp '+
                        'inner join ordenesdetrabajo o on (o.sContrato = bp.sNumeroOrden and o.sNumeroOrden = bp.sFolio ) '+
                        'inner join movimientosdeembarcacion me on (me.sContrato =bp.sContrato and me.dIdFecha = bp.dIdFecha and me.iIdDiario = bp.iIddiario ) '+
                        'inner join tiposdemovimiento tp on (tp.sContrato = bp.sContrato and tp.sIdTipoMovimiento = me.sClasificacion and tp.sClasificacion = "Movimiento de barco") '+
                        'WHERE bp.scontrato =:ContratoBarco AND bp.sNumeroOrden =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                        'and me.sClasificacion like :categoria and bp.sfolio like :folio '+
                        'group by bp.dIdFecha, bp.sFolio, tp.sIdTipoMovimiento order by tp.sIdTipoMovimiento, o.iOrden, me.dIdFecha');

    end;

    if sParamTipo = 'Pernocta' then
    begin
        qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario as id, "" as sTipoObra, bp.sIdCuenta as sIdRecurso, bp.sIdCategoria, c.sDescripcion, '+
                        'concat(bp.sIdCuenta, " ", c.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, c.sMedida, '+
                        'o.sIdFolio as sDescripcionFolio, '+
                        'sum(bp.dCantidad) as Total, '+
                        '0.00000 AS Ajuste, 0.00000 as dSolicitado, c.iOrden as Ordena '+
                        'FROM bitacoradepernocta bp '+
                        'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                        'inner join cuentas c on (c.sIdCuenta = bp.sIdCuenta) '+
                        'WHERE bp.sContrato =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                        'and bp.sIdCuenta like :Categoria and bp.sNumeroOrden like :Folio and :ContratoBarco = :ContratoBarco '+
                        'group by dIdFecha, sNumeroOrden, sIdCategoria '+
                  'union '+
                               'select bp.sContrato, bp.dIdFecha, bp.iIdDiario as id, bp.sTipoObra, bp.sTipoPernocta as sIdRecurso, bp.sIdPersonal, cc.sDescripcion, '+
                        'concat(cc.sIdCuenta, " ", cc.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, cc.sMedida, '+
                        '    o.sIdFolio as sDescripcionFolio, '+
                        'round(sum( bp.dCantHH),2) as Total, '+
                        'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, cc.iOrden as Ordena '+
                        'from bitacoradepersonal bp '+
                        'inner join cuentas cc on (cc.sIdCuenta = bp.sTipoPernocta) '+
                        'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                        'where bp.sContrato =:Contrato '+
                        'and bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                        'and bp.sNumeroOrden like :Folio and bp.sTipoObra like :Tipo and bp.lAplicaPernocta = "Si" '+
                  'group by dIdFecha, sNumeroOrden, sIdPersonal, sTipoObra '+
                  'order by Ordena, sNumeroOrden, dIdFecha');
        qry_tripulacion.ParamByName('Tipo').AsString  := sParamTipoObra;

    end;

    if (sParamTipo = 'C6') or (sParamTipo = 'C7') or (sParamTipo = 'C8') or (sParamTipo = 'C9') or (sParamTipo = 'C10') or (sParamTipo = 'C11') or (sParamTipo = 'C12') or (sParamTipo = 'C13') or (sParamTipo = 'C14') or (sParamTipo = 'C15') or (sParamTipo = 'C16')  or (sParamTipo = 'C') then
    begin
        qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdMaterial as sIdRecurso, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                        'concat(bp.sIdMaterial, " ", substr(bp.mDescripcion,1,1000)) as sDescripcionRecurso, o.sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                        'o.sIdFolio as sDescripcionFolio, '+
                        'sum(bp.dCantidad) as Total, '+
                        '0.00000 AS Ajuste, 0.00000 as dSolicitado '+
                        'FROM bitacorademateriales bp '+
                        'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                        'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bp.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                        'WHERE bp.scontrato =:contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                        'and bp.sIdMaterial like :Categoria and bp.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                        'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdMaterial order by ax.iItemOrden, o.iOrden, bp.dIdFecha');

         qry_tripulacion.params.ParamByName('Anexo').asString  := sParamTipo;
    end;


    qry_tripulacion.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
    qry_tripulacion.params.ParamByName('contrato').asString       := sParamContrato;
    qry_tripulacion.params.ParamByName('fechaI').AsDate           := dParamFechaI;
    qry_tripulacion.params.ParamByName('fechaF').AsDate           := dParamFechaF;
    qry_tripulacion.params.ParamByName('categoria').DataType := ftString;
    if sParamCategoria = '<Todas>' then
       qry_tripulacion.params.ParamByName('categoria').Value := '%'
    else
       qry_tripulacion.params.ParamByName('categoria').Value := sParamCategoria;
    qry_tripulacion.params.ParamByName('folio').DataType := ftString;
    qry_tripulacion.params.ParamByName('folio').Value := '%';
    qry_tripulacion.Open;
    {$ENDREGION}

    {$REGION 'Proceso'}
    Categorias.First;
    while not Categorias.Eof do
    begin
       qry_tripulacion.Filtered := False;
       qry_tripulacion.Filter   := 'sIdRecurso = ' + QuotedStr( Categorias.FieldByName( 'sIdRecurso' ).AsString );
       qry_tripulacion.Filtered := True;
       qry_tripulacion.First;

       if (qry_tripulacion.RecordCount = 0) and (sParamGeneradorTipo = 'Cantidades') then
       begin
           //Solo par pernocta y barco
           if (sParamTipo = 'Barco') or (sParamTipo = 'Pernocta') then
           begin
               qry_tripulacion.Filtered := False;
               sId := '';
               while not qry_tripulacion.Eof do
               begin
                   if sId <> qry_tripulacion.FieldByName('sNumeroOrden').AsString then
                   begin
                       sId := qry_tripulacion.FieldByName('sNumeroOrden').AsString;

//                       mDatos.Append;
//                       mDatos.FieldByName('sAnexo').AsString       := sParamtipo;
//                       mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                       mDatos.FieldByName('sIdRecurso').AsString   := categorias.FieldByName('sIdRecurso').AsString;
//                       mDatos.FieldByName('sNumeroOrden').AsString := qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                       mDatos.FieldByName('sIdFolio').AsString     := qry_tripulacion.FieldByName('sDescripcionFolio').AsString;
//                       mDatos.FieldByName('sDescripcion').AsString := categorias.FieldByName('sTipoObra').AsString;
//                       mDatos.FieldByName('sMedida').AsString      := qry_tripulacion.FieldByName('sMedida').AsString;
//                       mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//                       mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//                       mDatos.FieldByName('dcantTotal').AsFloat    := 0;
//                       mDatos.FieldByName('dVentaMN').AsFloat      := 0;
//                       mDatos.FieldByName('dVentaDLL').AsFloat     := 0;
//                       mDatos.FieldByName('dSumVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dSumVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('dSumTotalVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dSumTotalVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                       mDatos.Post;
                   end;
                   qry_tripulacion.Next;
               end;
           end;
       end
       else
       begin

           sId := '';
           while not qry_tripulacion.Eof do
           begin
               if sId <> (qry_tripulacion.FieldByName('sNumeroOrden').AsString +'-'+ qry_tripulacion.FieldByName('sIdRecurso').AsString) then
               begin
//                   mSubTotal.Filtered := False;
//                   mSubTotal.Filter   := 'sIdRecurso = '+QuotedStr(qry_tripulacion.FieldByName('sIdRecurso').AsString);
//                   mSubTotal.Filtered := True;

                   dFechaActual := dParamFechaI;
                   CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
                   dTotal    := 0;
                   dSumaPernocta := 0;
                   sId    :=  qry_tripulacion.FieldByName('sNumeroOrden').AsString +'-'+ qry_tripulacion.FieldByName('sIdRecurso').AsString;
                   sFolio :=  qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                   mDatos.Append;
//                   mDatos.FieldByName('sAnexo').AsString  := sParamtipo;
//                   mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                   mDatos.FieldByName('sIdRecurso').AsString   := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                   mDatos.FieldByName('sNumeroOrden').AsString := qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                   mDatos.FieldByName('sIdFolio').AsString     := qry_tripulacion.FieldByName('sDescripcionFolio').AsString;
//                   mDatos.FieldByName('sDescripcion').AsString := qry_tripulacion.FieldByName('sDescripcion').AsString;
//                   mDatos.FieldByName('sMedida').AsString      := qry_tripulacion.FieldByName('sMedida').AsString;
//                   mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//                   mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//                   mDatos.FieldByName('dSumVentaMN').AsFloat   := 0;
//                   mDatos.FieldByName('dSumVentaDLL').AsFloat  := 0;
//                   mDatos.FieldByName('dSumTotalVentaMN').AsFloat   := 0;
//                   mDatos.FieldByName('dSumTotalVentaDLL').AsFloat  := 0;
//                   mDatos.FieldByName('dVentaMN').AsFloat      := Categorias.FieldByName( 'dVentaMN' ).AsFloat;
//                   mDatos.FieldByName('dVentaDLL').AsFloat     := Categorias.FieldByName( 'dVentaDLL' ).AsFloat;
               end;

               while (dFechaActual <= dParamFechaF) and (sFolio = qry_tripulacion.FieldByName('sNumeroOrden').AsString) do
               begin
                   if qry_tripulacion.FieldByName('dIdFecha').AsDateTime = dFechaActual then
                   begin
//                       mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
//                       mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
//                       dTotal := dTotal + mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat;
//                       dSumaPernocta := dSumaPernocta + mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat;

                       if (sParamTipo = 'Pernocta') then
//                          mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat :=  dSumaPernocta;

//                       mTotales.Locate('iDia'+IntToStr(CuentaCol),CuentaCol,[]);
//                       mTotales.Edit;
//                       mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
//                       mTotales.Post;
//
//                       mSubTotal.Locate('iDia'+IntToStr(CuentaCol),CuentaCol, [] );
//                       mSubTotal.Edit;
//                       mSubTotal.FieldByName('dVentaMN').AsFloat  := Categorias.FieldByName( 'dVentaMN' ).AsFloat;
//                       mSubTotal.FieldByName('dVentaDLL').AsFloat := Categorias.FieldByName( 'dVentaDLL' ).AsFloat;
//                       mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
//                       mSubTotal.Post;

                       qry_tripulacion.Next;
                   end;
                   if (dFechaActual <> qry_tripulacion.FieldByName('dIdFecha').AsDateTime) or (qry_tripulacion.Eof) then
                   begin
                       inc(CuentaCol);
                       dFechaActual := dFechaActual + 1;
                       dSumaPernocta := 0;
                   end;
               end;
//               mDatos.FieldByName('dcantTotal').AsFloat := dTotal;
//               mDatos.Post;
           end;
       end;

       dFechaReportado := qry_tripulacion.FieldByName('FechaMaxima').AsDateTime;
//       mDatos.Filtered := False;
//       mDatos.Filter   := 'sIdRecurso = ' + QuotedStr( Categorias.FieldByName( 'sIdRecurso' ).AsString );
//       mDatos.Filtered := True;
//       mDatos.First;

       if sParamTipo = 'Barco' then
       begin
         ColumnaStatic := StrToInt(copy(DateTostr(dFechaReportado),1,2));
         dFechaReportado := dFechaReportado + 1;
         while dFechaReportado <= dParamFechaF  do
         begin
             CuentaCol := StrToInt(copy(DateTostr(dFechaReportado),1,2));
//             mDatos.First;
//             while not mDatos.Eof do
//             begin
//                 mDatos.Edit;
//                 mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := mDatos.FieldByName('dCantidad'+ Inttostr(ColumnaStatic)).AsFloat;
//                 mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
//                 mDatos.FieldByName('dcantTotal').AsFloat := mTotales.FieldByName('dTotal'+IntToStr(ColumnaStatic)).AsFloat;
//                 mDatos.FieldByName('dTotalDia'+IntToStr(cuentaCol)).AsFloat := mDatos.FieldByName('dTotalDia'+IntToStr(ColumnaStatic)).AsFloat;
//                 mDatos.Post;
//
//                 mTotales.Edit;
//                 mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat :=  mTotales.FieldByName('dTotal'+IntToStr(ColumnaStatic)).AsFloat;
//                 mTotales.Post;
//
//                 mSubTotal.Edit;
//                 mSubTotal.FieldByName('dVentaMN').AsFloat  := Categorias.FieldByName( 'dVentaMN' ).AsFloat;
//                 mSubTotal.FieldByName('dVentaDLL').AsFloat := Categorias.FieldByName( 'dVentaDLL' ).AsFloat;
//                 mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(ColumnaStatic)).AsFloat;
//                 mSubTotal.Post;
//                 mDatos.Next;
//             end;
             dFechaReportado := dFechaReportado + 1;
         end;
//         mDatos.Filtered := False;
       end;

       Categorias.Next;
    end;

    dTotalMontoMN  := 0;
    dTotalMontoDLL := 0;
//    mSubTotal.Filtered := False;
//    mSubtotal.First;
    sId := '';
//    while not mSubTotal.Eof do
//    begin
//        if sId <> mSubTotal.FieldByName('sIdRecurso').AsString then
//        begin
//            dTotal := 0;
//            sId := mSubTotal.FieldByName('sIdRecurso').AsString;
//            mDatos.Filtered := False;
//            mDatos.Filter   := 'sIdRecurso = '+QuotedStr(mSubTotal.FieldByName('sIdRecurso').AsString);
//            mDatos.Filtered := True;
//            mDatos.First;
//        end;
//        if (mDatos.RecordCount > 0) and (not mDatos.Eof) then
//        for cuentaCol := 1 to 31 do
//        begin
//            dTotal := dTotal +  mSubTotal.FieldByName('dSubTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.Edit;
//            mDatos.FieldByName('dSubTotalDia'+IntToStr(cuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumSubTotal').AsFloat := dTotal;
//            mDatos.FieldByName('dSumVentaMN').AsFloat  := dTotal * mDatos.FieldByName('dVentaMN').AsFloat;
//            mDatos.FieldByName('dSumVentaDLL').AsFloat := dTotal * mDatos.FieldByName('dVentaDLL').AsFloat;
//            mDatos.Post;
//        end;
//        dTotalMontoMN  := dTotalMontoMN +  (dTotal * mSubTotal.FieldByName('dVentaMN').AsFloat);
//        dTotalMontoDLL := dTotalMontoDLL + (dTotal * mSubTotal.FieldByName('dVentaDLL').AsFloat);
//
//        mSubTotal.Next;
//    end;
//    mDatos.Filtered := False;

    dTotal := 0;
//    mDatos.Last;
//    if mDatos.RecordCount > 0 then
//    begin
//        mTotales.First;
//        for cuentaCol := 1 to 31 do
//        begin
//            dTotal := dTotal + mTotales.FieldByName('dTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.Edit;
//            mDatos.FieldByName('dTotalDia'+IntToStr(cuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumTotal').AsFloat    := dTotal;
//            mDatos.FieldByName('dSumVentaMN').AsFloat  := dTotal * mDatos.FieldByName('dVentaMN').AsFloat;
//            mDatos.FieldByName('dSumVentaDLL').AsFloat := dTotal * mDatos.FieldByName('dVentaDLL').AsFloat;
//            mDatos.Post;
//            mTotales.Next;
//        end;
//    end;

//    mDatos.First;
//    while not mDatos.Eof do
//    begin
//        mDatos.Edit;
//        mDatos.FieldByName('dSumTotalVentaMN').AsFloat  := dTotalMontoMN;
//        mDatos.FieldByName('dSumTotalVentaDLL').AsFloat := dTotalMontoDLL;
//        mDatos.Post;
//        mDatos.Next;
//    end;

    {$ENDREGION}

    qryConfiguracion := TZReadOnlyQuery.Create(nil);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, c.sReportesCIA, c.sDireccion1, c.sDireccion2, c2.sMascara as sLabelContrato,  ' +
                    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, "" as sIdUsuarioValida, "" as sIdUsuarioResidente, "" as sIdUsuarioAutoriza, ' +
                    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
                    'c.lImprimeExtraordinario, c.sIdEmbarcacion, c.iRedondeoEmbarcacion, c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
                    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal ' +
                    'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                    'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) ' +
                    'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := sParamContrato;
    QryConfiguracion.Open;

    dsGeneradorFolio:= TfrxDBDataSet.Create(Nil);
    dsGeneradorFolio.UserName   :='dsGeneradorFolio';
//    dsGeneradorFolio.DataSet    := mDatos;
    dsGeneradorFolio.FieldAliases.Clear;

    rDiario.DataSets.Add(dsGeneradorFolio);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

//    if mDatos.RecordCount > 0 then
//    begin
//        if sParamGeneradorTipo = 'Cantidades' then
//        begin
//            if lParamContinuo then
//               rDiario.LoadFromFile(global_files + global_miReporte+'_cGeneradorFolio.fr3')
//            else
//               rDiario.LoadFromFile(global_files + global_miReporte+'_GeneradorFolio.fr3');
//        end
//        else
//        begin
//            if lParamContinuo then
//               rDiario.LoadFromFile(global_files + global_miReporte+'_cGeneradorFolioMonto.fr3')
//            else
//               rDiario.LoadFromFile(global_files + global_miReporte+'_GeneradorFolioMonto.fr3');
//        end;
//        rDiario.ShowReport();
//    end
//    else
//       messageDLG('No se encontraron Datos en '+sParamMoneda, mtInformation, [mbOk], 0);


    // Destruye Objetos ...

    rDiario.DataSets.Clear;
    dsGeneradorFolio.Destroy;
    qry_tripulacion.Destroy;
//    mDatos.Destroy;
//    mTotales.Destroy;
//    mSubTotal.Destroy;
    categorias.Destroy;


end;

procedure procReporteGeneradorPU(sParamContrato, sParamtipo, sParamAnexo, sParamTipoObra, sParamCategoria, sParamGeneradorTipo, sParamMoneda, sParamDetalle :string; lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsGeneradorFolio : TfrxDBDataSet;
    Categorias, qry_tripulacion : tzReadOnlyQuery;

//    mDatos, mTotales, mSubTotal :TJvMemoryData;

    rDiario: TfrxReport;
    fechaAntes: tDate;
    sId, sFolio : string;
    CuentaCol : integer;

    dTotal, dSumaPernocta, dTotalMontoMN, dTotalMontoDLL  : double;
    dFechaActual : tDate;
    sSQLCadenaCeros : string;
    lContinua : boolean;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;

    if sParamGeneradorTipo = 'CantidadMonto' then
    begin
        if sParamMoneda = 'MN' then
           sSQLCadenaCeros := ' and (p.dVentaDLL = 0 or (p.dVentaDLL > 0 and p.dVentaMN > 0)) '
        else
           sSQLCadenaCeros := ' and (p.dVentaMN = 0 or (p.dVentaMN > 0 and p.dVentaDLL > 0)) ';
    end
    else
       sSQLCadenaCeros := '';

    {$region 'Categorias'}
    Categorias := TzReadOnlyQuery.create(nil);
    Categorias.Connection := Connection.zConnection;
    Categorias.Active := False;
    Categorias.SQL.Clear;
    Categorias.SQL.Add('select p.sNumeroActividad as sIdRecurso, substr(p.mDescripcion,1,1000) as sTipoObra, p.dVentaMN, p.dVentaDLL, p.sMedida from actividadesxanexo p '+
                      'inner join bitacorademateriales ba on (ba.sContrato =:Contrato and ba.sIdMaterial = p.sNumeroActividad and ba.dIdFecha >=:FechaI and ba.dIdFecha <=:FechaF) '+
                      'where p.sContrato =:ContratoBarco and p.sTipoActividad = "Actividad" and p.sNumeroActividad like :categoria and p.sAnexo =:Anexo '+sSQLCadenaCeros+' group by p.sWbs order by p.iItemOrden');
    Categorias.ParamByName('ContratoBarco').AsString := global_contrato_barco;
    Categorias.ParamByName('Contrato').AsString      := global_contrato;
    Categorias.ParamByName('Anexo').AsString         := sParamTipo;
    Categorias.ParamByName('FechaI').AsDate          := dParamFechaI;
    Categorias.ParamByName('FechaF').AsDate          := dParamFechaF;
    categorias.params.ParamByName('categoria').DataType := ftString;
    if sParamCategoria = '<Todas>' then
       categorias.params.ParamByName('categoria').Value := '%'
    else
       categorias.params.ParamByName('categoria').Value := sParamCategoria;
    Categorias.Open;
    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
//    mDatos:=TJvMemoryData.Create(nil);
//    with mDatos do
//      begin
//        Active:=false;
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('sIdRecurso', ftString, 100, True);
//        FieldDefs.Add('sIdDetalle', ftString, 100, False);
//        FieldDefs.Add('sNumeroOrden', ftString, 50, True);
//        FieldDefs.Add('sIdFolio', ftString, 100, True);
//        FieldDefs.Add('sDescripcion', ftString, 1000, True);
//        FieldDefs.Add('sDescripcionDetalle', ftString, 1000, False);
//        FieldDefs.Add('sMedida', ftString, 10, True);
//        FieldDefs.Add('dcantTotal', FtFloat, 0, True);
//        FieldDefs.Add('dSumSubTotal', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotal', FtFloat, 0, True);
//        FieldDefs.Add('dVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotalVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumTotalVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('dMontoTotalVentaMN', FtFloat, 0, False);
//        FieldDefs.Add('dMontoTotalVentaDLL', FtFloat, 0, False);
//        FieldDefs.Add('sTipoMoneda', ftString, 3, false);
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('dTotalAnexos' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dCantidad' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

//    mTotales:=TJvMemoryData.Create(nil);
//    with mTotales do
//      begin
//        Active:=false;
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('dTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//        end;
//        Active:=true;
//      end;

    for CuentaCol := 1 to 31 do
    begin
//        mTotales.Append;
//        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
//        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
//        mTotales.Post;
    end;

//    mSubTotal:=TJvMemoryData.Create(nil);
//    with mSubTotal do
//      begin
//        Active:=false;
//        FieldDefs.Add('sIdRecurso', ftString, 100, True);
//        FieldDefs.Add('dVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dVentaDLL', FtFloat, 0, True);
//        for CuentaCol:=1 to 31 do
//        begin
//          FieldDefs.Add('iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
//        mSubTotal.Append;
//        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('sIdRecurso').AsString;
//        mSubTotal.FieldByName('dVentaMN').AsFloat  := Categorias.FieldByName('dVentaMN').AsFloat;
//        mSubTotal.FieldByName('dVentaDLL').AsFloat := Categorias.FieldByName('dVentaDLL').AsFloat;
        for CuentaCol:=1 to 31 do
        begin
//          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
//          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
//        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Consultas'}
    //Ahora vienen las consultas del generador..
    qry_tripulacion := TzReadOnlyQuery.create(nil);
    qry_tripulacion.Connection := Connection.zConnection;
    qry_tripulacion.Active := False;
    qry_tripulacion.SQL.Clear;

    if (sParamTipo = 'C6') or (sParamTipo = 'C7') or (sParamTipo = 'C8') or (sParamTipo = 'C9') or (sParamTipo = 'C10') or (sParamTipo = 'C11') or (sParamTipo = 'C12') or (sParamTipo = 'C13') or (sParamTipo = 'C14') or (sParamTipo = 'C15') or (sParamTipo = 'C16') or (sParamTipo = 'C') then
    begin
        //SQL Tomando toda la cantidad de personal sin prorraretar las partidas sobre el mismo horario
        qry_tripulacion.SQL.Add('SELECT bm.sContrato, bm.dIdFecha, bm.iIdDiario, "" as sTipoObra, bm.sIdMaterial as sIdRecurso, bp.sIdPersonal as sIdDetalle, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                'concat(bm.sIdMaterial, " ", substr(bm.mDescripcion,0,1000)) as sDescripcionRecurso, a.sEtiqueta as sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                'a.sEtiqueta as sDescripcionFolio, p.dVentaMN, p.dVentaDLL, p.sDescripcion as sDescripcionDetalle, '+
                'round(sum(bp.dCantHH),2) as Total, sum(bm.dCantidad) as TotalMaterial, '+
                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, ax.iItemOrden, bp.iItemOrden as OrdenaRecurso, a.iOrden as ordenaAnexo, '+
                '(select count(sIdMaterial) from bitacorademateriales where sContrato = bm.sContrato and dIdFecha = bm.dIdFecha and sNumeroOrden = bm.sNumeroOrden and iIdDiario = bm.iIddiario group by sContrato) as TotalAnexos '+
                'FROM bitacorademateriales bm '+
                'inner join anexos a on (a.Nomenclatura ="2.") '+
                'inner join bitacoradepersonal bp on (bp.sContrato = bm.sContrato and bp.dIdFecha = bm.dIdFecha and bp.sNumeroOrden = bm.sNumeroOrden and bp.iIdDiario = bm.iIdDiario) '+
                'inner join personal p on (p.sContrato = :ContratoBarco and p.sIdPersonal = bp.sIdPersonal and p.sAnexo = a.sAnexo) '+
                'inner join ordenesdetrabajo o on (o.sContrato = bm.sContrato and o.sNumeroOrden = bm.sNumeroOrden ) '+
                'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bm.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                'WHERE bm.scontrato =:contrato AND bm.didfecha >=:FechaI and bm.dIdFecha <=:FechaF '+
                'and bm.sIdMaterial like :Categoria and bm.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bm.sIdMaterial '+
                'union '+
                'SELECT bm.sContrato, bm.dIdFecha, bm.iIdDiario, "" as sTipoObra, bm.sIdMaterial as sIdRecurso, bp.sIdEquipo as sIdDetalle, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                'concat(bm.sIdMaterial, " ", substr(bm.mDescripcion,0,1000)) as sDescripcionRecurso, a.sEtiqueta as sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                'a.sEtiqueta as sDescripcionFolio, p.dVentaMN, p.dVentaDLL, p.sDescripcion as sDescripcionDetalle, '+
                'round(sum(bp.dCantHH),2) as Total, sum(bm.dCantidad) as TotalMaterial, '+
                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, ax.iItemOrden, bp.iItemOrden as OrdenaRecurso, a.iOrden as OrdenaAnexo, '+
                '(select count(sIdMaterial) from bitacorademateriales where sContrato = bm.sContrato and dIdFecha = bm.dIdFecha and sNumeroOrden = bm.sNumeroOrden and iIdDiario = bm.iIddiario group by sContrato) as TotalAnexos '+
                'FROM bitacorademateriales bm '+
                'inner join anexos a on (a.Nomenclatura ="3.") '+
                'inner join bitacoradeequipos bp on (bp.sContrato = bm.sContrato and bp.dIdFecha = bm.dIdFecha and bp.sNumeroOrden = bm.sNumeroOrden and bp.iIdDiario = bm.iIdDiario) '+
                'inner join equipos p on (p.sContrato = :ContratoBarco and p.sIdEquipo = bp.sIdEquipo) '+
                'inner join ordenesdetrabajo o on (o.sContrato = bm.sContrato and o.sNumeroOrden = bm.sNumeroOrden ) '+
                'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bm.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                'WHERE bm.scontrato =:contrato AND bm.didfecha >=:FechaI and bm.dIdFecha <=:FechaF '+
                'and bm.sIdMaterial like :Categoria and bm.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bm.sIdMaterial '+
                'union '+
                'SELECT bm.sContrato, bm.dIdFecha, bm.iIdDiario, "" as sTipoObra, bm.sIdMaterial as sIdRecurso, bp.sIdPersonal as sIdDetalle, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                'concat(bm.sIdMaterial, " ", substr(bm.mDescripcion,0,1000)) as sDescripcionRecurso, a.sEtiqueta as sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                'a.sEtiqueta as sDescripcionFolio, p.dVentaMN, p.dVentaDLL, p.sDescripcion as sDescripcionDetalle, '+
                'round(sum(bp.dCantHH),2) as Total, sum(bm.dCantidad) as TotalMaterial, '+
                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, ax.iItemOrden, bp.iItemOrden as OrdenaRecurso, a.iOrden as ordenaAnexo, '+
                '(select count(sIdMaterial) from bitacorademateriales where sContrato = bm.sContrato and dIdFecha = bm.dIdFecha and sNumeroOrden = bm.sNumeroOrden and iIdDiario = bm.iIddiario group by sContrato) as TotalAnexos '+
                'FROM bitacorademateriales bm '+
                'inner join anexos a on (a.Nomenclatura ="5.") '+
                'inner join bitacoradepersonal bp on (bp.sContrato = bm.sContrato and bp.dIdFecha = bm.dIdFecha and bp.sNumeroOrden = bm.sNumeroOrden and bp.iIdDiario = bm.iIdDiario) '+
                'inner join personal p on (p.sContrato = :ContratoBarco and p.sIdPersonal = bp.sIdPersonal and p.sAnexo = a.sAnexo) '+
                'inner join ordenesdetrabajo o on (o.sContrato = bm.sContrato and o.sNumeroOrden = bm.sNumeroOrden ) '+
                'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bm.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                'WHERE bm.scontrato =:contrato AND bm.didfecha >=:FechaI and bm.dIdFecha <=:FechaF '+
                'and bm.sIdMaterial like :Categoria and bm.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bm.sIdMaterial '+

                'order by OrdenaAnexo, iItemOrden, dIdFecha, OrdenaRecurso');

         qry_tripulacion.params.ParamByName('Anexo').asString  := sParamTipo;
    end;


    qry_tripulacion.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
    qry_tripulacion.params.ParamByName('contrato').asString       := sParamContrato;
    qry_tripulacion.params.ParamByName('fechaI').AsDate           := dParamFechaI;
    qry_tripulacion.params.ParamByName('fechaF').AsDate           := dParamFechaF;
    qry_tripulacion.params.ParamByName('categoria').DataType := ftString;
    if sParamCategoria = '<Todas>' then
       qry_tripulacion.params.ParamByName('categoria').Value := '%'
    else
       qry_tripulacion.params.ParamByName('categoria').Value := sParamCategoria;
    qry_tripulacion.params.ParamByName('folio').DataType := ftString;
    qry_tripulacion.params.ParamByName('folio').Value := '%';
    qry_tripulacion.Open;
    {$ENDREGION}

    {$REGION 'Proceso'}
    Categorias.First;
    while not Categorias.Eof do
    begin
       qry_tripulacion.Filtered := False;
       qry_tripulacion.Filter   := 'sIdRecurso = ' + QuotedStr( Categorias.FieldByName( 'sIdRecurso' ).AsString );
       qry_tripulacion.Filtered := True;
       qry_tripulacion.First;

       lContinua := False;
       while not qry_tripulacion.Eof do
       begin
           lContinua := True;
           qry_tripulacion.Last;
       end;
       qry_tripulacion.First;

       if lContinua = False then
       begin //Solo para los PUs que no tengan
           dTotal    := 0;
//           mDatos.Append;
//           mDatos.FieldByName('sAnexo').AsString  := sParamtipo;
//           mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//           mDatos.FieldByName('sIdRecurso').AsString   := Categorias.FieldByName('sIdRecurso').AsString;
//           mDatos.FieldByName('sNumeroOrden').AsString := 'SIN ANEXOS ';
//           mDatos.FieldByName('sIdFolio').AsString     := 'SIN ANEXOS ';
//           mDatos.FieldByName('sDescripcion').AsString := Categorias.FieldByName('sTipoObra').AsString;
//           mDatos.FieldByName('sMedida').AsString      := Categorias.FieldByName('sMedida').AsString;
//           mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//           mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//           mDatos.FieldByName('dSumVentaMN').AsFloat   := 0;
//           mDatos.FieldByName('dSumVentaDLL').AsFloat  := 0;
//           mDatos.FieldByName('dSumTotalVentaMN').AsFloat   := 0;
//           mDatos.FieldByName('dSumTotalVentaDLL').AsFloat  := 0;
//           mDatos.FieldByName('dMontoTotalVentaMN').AsFloat   := 0;
//           mDatos.FieldByName('dMontoTotalVentaDLL').AsFloat  := 0;
//           mDatos.FieldByName('dVentaMN').AsFloat      := Categorias.FieldByName( 'dVentaMN' ).AsFloat;
//           mDatos.FieldByName('dVentaDLL').AsFloat     := Categorias.FieldByName( 'dVentaDLL' ).AsFloat;
//           mDatos.FieldByName('dcantTotal').AsFloat    := 0;
//           mDatos.Post;
       end;

       if (qry_tripulacion.RecordCount = 0) and (sParamGeneradorTipo = 'Cantidades') then
       begin
           //No aplica
       end
       else
       begin
           sId := '';
           while not qry_tripulacion.Eof do
           begin
               if sParamDetalle = 'Si' then
               begin
                   if sId <> (qry_tripulacion.FieldByName('sNumeroOrden').AsString +'-'+ qry_tripulacion.FieldByName('sIdRecurso').AsString) then
                   begin
//                       mSubTotal.Filtered := False;
//                       mSubTotal.Filter   := 'sIdRecurso = '+QuotedStr(qry_tripulacion.FieldByName('sIdRecurso').AsString);
//                       mSubTotal.Filtered := True;

                       dFechaActual := dParamFechaI;
                       CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
                       dTotal    := 0;
                       dSumaPernocta := 0;
                       sId    :=  qry_tripulacion.FieldByName('sNumeroOrden').AsString +'-'+ qry_tripulacion.FieldByName('sIdRecurso').AsString;
                       sFolio :=  qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                       mDatos.Append;
//                       mDatos.FieldByName('sAnexo').AsString  := sParamtipo;
//                       mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                       mDatos.FieldByName('sIdRecurso').AsString   := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                       mDatos.FieldByName('sNumeroOrden').AsString := qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                       mDatos.FieldByName('sIdFolio').AsString     := qry_tripulacion.FieldByName('sDescripcionFolio').AsString;
//                       mDatos.FieldByName('sDescripcion').AsString := qry_tripulacion.FieldByName('sDescripcion').AsString;
//                       mDatos.FieldByName('sMedida').AsString      := qry_tripulacion.FieldByName('sMedida').AsString;
//                       mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//                       mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//                       mDatos.FieldByName('dSumVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dSumVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('dSumTotalVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dSumTotalVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('dMontoTotalVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dMontoTotalVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('dVentaMN').AsFloat      := qry_tripulacion.FieldByName( 'dVentaMN' ).AsFloat;
//                       mDatos.FieldByName('dVentaDLL').AsFloat     := qry_tripulacion.FieldByName( 'dVentaDLL' ).AsFloat;
//                       mDatos.FieldByName('dcantTotal').AsFloat    := 0;
//                       mDatos.Post;
                   end;

                   while (dFechaActual <= dParamFechaF) and (sFolio = qry_tripulacion.FieldByName('sNumeroOrden').AsString) do
                   begin
                       if qry_tripulacion.FieldByName('dIdFecha').AsDateTime = dFechaActual then
                       begin
//                           mDatos.Append;
//                           mDatos.FieldByName('sAnexo').AsString  := sParamtipo;
//                           mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                           mDatos.FieldByName('sIdRecurso').AsString   := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                           mDatos.FieldByName('sIdDetalle').AsString   := qry_tripulacion.FieldByName('sIdDetalle').AsString;
//                           mDatos.FieldByName('sNumeroOrden').AsString := qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                           mDatos.FieldByName('sIdFolio').AsString     := qry_tripulacion.FieldByName('sDescripcionFolio').AsString;
//                           mDatos.FieldByName('sDescripcion').AsString := qry_tripulacion.FieldByName('sDescripcion').AsString;
//                           mDatos.FieldByName('sDescripcionDetalle').AsString := qry_tripulacion.FieldByName('sDescripcionDetalle').AsString;
//                           mDatos.FieldByName('sMedida').AsString      := qry_tripulacion.FieldByName('sMedida').AsString;
//                           mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//                           mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//                           mDatos.FieldByName('dSumVentaMN').AsFloat   := 0;
//                           mDatos.FieldByName('dSumVentaDLL').AsFloat  := 0;
//                           mDatos.FieldByName('dSumTotalVentaMN').AsFloat   := 0;
//                           mDatos.FieldByName('dSumTotalVentaDLL').AsFloat  := 0;
//                           mDatos.FieldByName('dMontoTotalVentaMN').AsFloat   := 0;
//                           mDatos.FieldByName('dMontoTotalVentaDLL').AsFloat  := 0;
//                           mDatos.FieldByName('dVentaMN').AsFloat      := qry_tripulacion.FieldByName( 'dVentaMN' ).AsFloat;
//                           mDatos.FieldByName('dVentaDLL').AsFloat     := qry_tripulacion.FieldByName( 'dVentaDLL' ).AsFloat;
//
//                           mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);
//                           mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                           dTotal := dTotal+ + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);

//                           mDatos.FieldByName('dTotalAnexos'+ Inttostr(CuentaCol)).AsFloat  := qry_tripulacion.FieldByName('TotalAnexos').AsFloat;

                           //Suma de las cantidades por los precios
//                           mDatos.FieldByName('dSumVentaMN').AsFloat   := mDatos.FieldByName('dSumVentaMN').AsFloat  + (qry_tripulacion.FieldByName( 'dVentaMN' ).AsFloat  *((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat));
//                           mDatos.FieldByName('dSumVentaDLL').AsFloat  := mDatos.FieldByName('dSumVentaDLL').AsFloat + (qry_tripulacion.FieldByName( 'dVentaDLL' ).AsFloat *((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat));
//                           mDatos.FieldByName('dcantTotal').AsFloat    := mDatos.FieldByName('dcantTotal').AsFloat  + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);
//                           mDatos.Post;

//                           dTotalMontoMN  := dTotalMontoMN  + mDatos.FieldByName('dSumVentaMN').AsFloat;
//                           dTotalMontoDLL := dTotalMontoDLL + mDatos.FieldByName('dSumVentaDLL').AsFloat;

//                           mTotales.Locate('iDia'+IntToStr(CuentaCol),CuentaCol,[]);
//                           mTotales.Edit;
//                           mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);
//                           mTotales.Post;

//                           mSubTotal.Locate('iDia'+IntToStr(CuentaCol),CuentaCol, [] );
//                           mSubTotal.Edit;
//                           mSubTotal.FieldByName('dVentaMN').AsFloat  := qry_tripulacion.FieldByName( 'dVentaMN' ).AsFloat;
//                           mSubTotal.FieldByName('dVentaDLL').AsFloat := qry_tripulacion.FieldByName( 'dVentaDLL' ).AsFloat;
//                           mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);
//                           mSubTotal.Post;

                           qry_tripulacion.Next;
                       end;
                       if (dFechaActual <> qry_tripulacion.FieldByName('dIdFecha').AsDateTime) or (qry_tripulacion.Eof) then
                       begin
                           inc(CuentaCol);
                           dFechaActual := dFechaActual + 1;
                           dSumaPernocta := 0;
                       end;
                   end;

//                   mDatos.Filtered := False;
//                   mDatos.Filter   := 'sIdRecurso = '+QuotedStr(qry_tripulacion.FieldByName('sIdRecurso').AsString);
//                   mDatos.Filtered := True;

//                   mDatos.Locate('sNumeroOrden', sFolio, []);
//                   mDatos.Edit;
//                   mDatos.FieldByName('dcantTotal').AsFloat := dTotal;
//                   mDatos.Post;

//                   mDatos.Filtered := False;
               end
               else
               begin
                   if sId <> (qry_tripulacion.FieldByName('sNumeroOrden').AsString +'-'+ qry_tripulacion.FieldByName('sIdRecurso').AsString) then
                   begin
//                       mSubTotal.Filtered := False;
//                       mSubTotal.Filter   := 'sIdRecurso = '+QuotedStr(qry_tripulacion.FieldByName('sIdRecurso').AsString);
//                       mSubTotal.Filtered := True;

                       dFechaActual := dParamFechaI;
                       CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
                       dTotal    := 0;
                       dSumaPernocta := 0;
                       sId    :=  qry_tripulacion.FieldByName('sNumeroOrden').AsString +'-'+ qry_tripulacion.FieldByName('sIdRecurso').AsString;
                       sFolio :=  qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                       mDatos.Append;
//                       mDatos.FieldByName('sAnexo').AsString  := sParamtipo;
//                       mDatos.FieldByName('sTipoMoneda').AsString  := sParamMoneda;
//                       mDatos.FieldByName('sIdRecurso').AsString   := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                       mDatos.FieldByName('sNumeroOrden').AsString := qry_tripulacion.FieldByName('sNumeroOrden').AsString;
//                       mDatos.FieldByName('sIdFolio').AsString     := qry_tripulacion.FieldByName('sDescripcionFolio').AsString;
//                       mDatos.FieldByName('sDescripcion').AsString := qry_tripulacion.FieldByName('sDescripcion').AsString;
//                       mDatos.FieldByName('sMedida').AsString      := qry_tripulacion.FieldByName('sMedida').AsString;
//                       mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
//                       mDatos.FieldByName('dSumTotal').AsFloat     := 0;
//                       mDatos.FieldByName('dSumVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dSumVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('dSumTotalVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dSumTotalVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('dMontoTotalVentaMN').AsFloat   := 0;
//                       mDatos.FieldByName('dMontoTotalVentaDLL').AsFloat  := 0;
//                       mDatos.FieldByName('dVentaMN').AsFloat      := qry_tripulacion.FieldByName( 'dVentaMN' ).AsFloat;
//                       mDatos.FieldByName('dVentaDLL').AsFloat     := qry_tripulacion.FieldByName( 'dVentaDLL' ).AsFloat;
                   end;

                   while (dFechaActual <= dParamFechaF) and (sFolio = qry_tripulacion.FieldByName('sNumeroOrden').AsString) do
                   begin
                       if qry_tripulacion.FieldByName('dIdFecha').AsDateTime = dFechaActual then
                       begin
//                           mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);
//                           mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                           dTotal := dTotal+ + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);

//                           mDatos.FieldByName('dTotalAnexos'+ Inttostr(CuentaCol)).AsFloat  := qry_tripulacion.FieldByName('TotalAnexos').AsFloat;

                           //Suma de las cantidades por los precios
//                           mDatos.FieldByName('dSumVentaMN').AsFloat   := mDatos.FieldByName('dSumVentaMN').AsFloat  + (qry_tripulacion.FieldByName( 'dVentaMN' ).AsFloat  *((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat));
//                           mDatos.FieldByName('dSumVentaDLL').AsFloat  := mDatos.FieldByName('dSumVentaDLL').AsFloat + (qry_tripulacion.FieldByName( 'dVentaDLL' ).AsFloat *((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat));
//
//                           mTotales.Locate('iDia'+IntToStr(CuentaCol),CuentaCol,[]);
//                           mTotales.Edit;
//                           mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(CuentaCol)).AsFloat + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);
//                           mTotales.Post;

//                           mSubTotal.Locate('iDia'+IntToStr(CuentaCol),CuentaCol, [] );
//                           mSubTotal.Edit;
//                           mSubTotal.FieldByName('dVentaMN').AsFloat  := qry_tripulacion.FieldByName( 'dVentaMN' ).AsFloat;
//                           mSubTotal.FieldByName('dVentaDLL').AsFloat := qry_tripulacion.FieldByName( 'dVentaDLL' ).AsFloat;
//                           mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(CuentaCol)).AsFloat + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)/qry_tripulacion.FieldByName('TotalAnexos').AsFloat);
//                           mSubTotal.Post;

                           qry_tripulacion.Next;
                       end;
                       if (dFechaActual <> qry_tripulacion.FieldByName('dIdFecha').AsDateTime) or (qry_tripulacion.Eof) then
                       begin
                           inc(CuentaCol);
                           dFechaActual := dFechaActual + 1;
                           dSumaPernocta := 0;
                       end;
                   end;
//                   mDatos.FieldByName('dcantTotal').AsFloat := dTotal;
//                   mDatos.Post;

//                   dTotalMontoMN  := dTotalMontoMN  + mDatos.FieldByName('dSumVentaMN').AsFloat;
//                   dTotalMontoDLL := dTotalMontoDLL + mDatos.FieldByName('dSumVentaDLL').AsFloat;
               end;
           end;
       end;
       if dTotal > 0 then
       begin
//           mDatos.Filtered := False;
//           mDatos.Filter   := 'sIdRecurso = '+QuotedStr(categorias.FieldByName('sIdRecurso').AsString);
//           mDatos.Filtered := True;
//
//           mDatos.First;
//           mDatos.Edit;
//           mDatos.FieldByName('dSumTotalVentaMN').AsFloat  := dTotalMontoMN;
//           mDatos.FieldByName('dSumTotalVentaDLL').AsFloat := dTotalMontoDLL;
//           mDatos.Post;

           dTotalMontoMN  := 0;
           dTotalMontoDLL := 0;

//           mDatos.Filtered := False;
       end;
       Categorias.Next;
       BarraProgresoAvance(BarraProgreso, 0,100,100/Categorias.RecordCount);
    end;

    //Sumta total de las cantidades agrupadas y por dia.
//    mSubTotal.Filtered := False;
//    mSubtotal.First;
    sId := '';
//    while not mSubTotal.Eof do
//    begin
//        if sId <> mSubTotal.FieldByName('sIdRecurso').AsString then
//        begin
//            dTotal := 0;
//            sId := mSubTotal.FieldByName('sIdRecurso').AsString;
//            mDatos.Filtered := False;
//            mDatos.Filter   := 'sIdRecurso = '+QuotedStr(mSubTotal.FieldByName('sIdRecurso').AsString);
//            mDatos.Filtered := True;
//            mDatos.First;
//        end;
//        if (mDatos.RecordCount > 0) and (not mDatos.Eof) then
//        for cuentaCol := 1 to 31 do
//        begin
//            dTotal := dTotal +  mSubTotal.FieldByName('dSubTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.Edit;
//            mDatos.FieldByName('dSubTotalDia'+IntToStr(cuentaCol)).AsFloat := mSubTotal.FieldByName('dSubTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumSubTotal').AsFloat := dTotal;
//            mDatos.Post;
//        end;
//
//        mSubTotal.Next;
//    end;
//    mDatos.Filtered := False;

    dTotal := 0;
//    mDatos.Last;
//    if mDatos.RecordCount > 0 then
//    begin
//        mTotales.First;
//        for cuentaCol := 1 to 31 do
//        begin
//            dTotal := dTotal + mTotales.FieldByName('dTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.Edit;
//            mDatos.FieldByName('dTotalDia'+IntToStr(cuentaCol)).AsFloat := mTotales.FieldByName('dTotal'+IntToStr(cuentaCol)).AsFloat;
//            mDatos.FieldByName('dSumTotal').AsFloat    := dTotal;
//            mDatos.Post;
//            mTotales.Next;
//        end;
//    end;

//    mDatos.First;
    dTotalMontoMN  := 0;
    dTotalMontoDLL := 0;
//    while not mDatos.Eof do
//    begin
//        dTotalMontoMN  := dTotalMontoMN  + mDatos.FieldByName('dSumVentaMN').AsFloat;
//        dTotalMontoDLL := dTotalMontoDLL + mDatos.FieldByName('dSumVentaDLL').AsFloat;
//        mDatos.Next;
//    end;

//    mDatos.Edit;
//    mDatos.FieldByName('dMontoTotalVentaMN').AsFloat   := dTotalMontoMN;
//    mDatos.FieldByName('dMontoTotalVentaDLL').AsFloat  := dTotalMontoDLL;
//    mDatos.Post;

    {$ENDREGION}

    qryConfiguracion := TZReadOnlyQuery.Create(nil);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, c.sReportesCIA, c.sDireccion1, c.sDireccion2, c2.sMascara as sLabelContrato,  ' +
                    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, "" as sIdUsuarioValida, "" as sIdUsuarioResidente, "" as sIdUsuarioAutoriza, ' +
                    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
                    'c.lImprimeExtraordinario, c.sIdEmbarcacion, c.iRedondeoEmbarcacion, c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
                    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal ' +
                    'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                    'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) ' +
                    'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := sParamContrato;
    QryConfiguracion.Open;

    dsGeneradorFolio:= TfrxDBDataSet.Create(Nil);
    dsGeneradorFolio.UserName   :='dsGeneradorFolio';
//    dsGeneradorFolio.DataSet    := mDatos;
    dsGeneradorFolio.FieldAliases.Clear;

    rDiario.DataSets.Add(dsGeneradorFolio);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

//    if mDatos.RecordCount > 0 then
//    begin
//        if sParamGeneradorTipo = 'Cantidades' then
//        begin
//            if lParamContinuo then
//               rDiario.LoadFromFile(global_files + global_miReporte+'_cGeneradorFolio.fr3')
//            else
//               rDiario.LoadFromFile(global_files + global_miReporte+'_GeneradorFolio.fr3');
//        end
//        else
//        begin
//            //if lParamContinuo then
//               rDiario.LoadFromFile(global_files + global_miReporte+'_cGeneradorFolioMontoPU.fr3')
//            //else
//            //   rDiario.LoadFromFile(global_files + global_miReporte+'_GeneradorFolioMonto.fr3');
//        end;
//        rDiario.ShowReport();
//    end
//    else
//       messageDLG('No se encontraron Datos en '+sParamMoneda, mtInformation, [mbOk], 0);


    // Destruye Objetos ...

    rDiario.DataSets.Clear;
    dsGeneradorFolio.Destroy;
    qry_tripulacion.Destroy;
//    mDatos.Destroy;
//    mTotales.Destroy;
//    mSubTotal.Destroy;
    categorias.Destroy;
end;


procedure procReporteNotaCampo(iParamNota :integer; sParamContrato, sParamFolio, sParamConvenio, sParamConvenioOT, sParamTipoObra, sParamFiltro, sParamTipoActa :string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsActaFolio, dsDatosFolio, dsGeneradorFolio, dsCampo, dsCampoRecursos, dsDesglose, dsPartidas, dsResumen, dsConceptos : TfrxDBDataSet;
    Folios, Anexos, qry_tripulacion, qry_generadores, DatosFolio, NotaCampo, zHorarios, zDesglose, zEspacios, zAjustesNota : tzReadOnlyQuery;

    rDiario: TfrxReport;
    dTotalVentaMN, dTotalVentaDLL, dAcumVentaMN, dAcumVentaDLL, dCantidad, dCantidadGenerador, dCantidadHoras, dCantidadFactor, dFactorGeneradores : double;
//    mDatos, mActa, mCampo, mCampoRecursos, mDesglose, mResumen, mConceptos, mActividades, mTablaActividad, mNotaActividades, mTablaActividadAnexos, mRecursos, mTempActividad, mNotaCampo : TJvMemoryData;
    CuentaCol, iGrupoColumna, iColumConteo : integer;

    sSumaHora, sSumaHoraTotal : string;
    local_tipo, sId, sNumeroActividad : string;
    dFecha : tDate;
    lEncuentra : boolean;
    i, iEspActividad, iEspHorarios, iEspRecursos : integer;
begin

    {$region 'Categorias'}
    Folios := TzReadOnlyQuery.create(nil);
    Folios.Connection := Connection.zConnection;
    Folios.Active := False;
    Folios.SQL.Add('select ot.sNumeroOrden, ot.sIdFolio from ordenesdetrabajo ot '+
                  'inner join bitacoradeactividades ba on (ba.sContrato = ot.sContrato and ba.sNumeroOrden = ot.sNumeroOrden '+
                  'and ba.dIdFecha >=:FechaI and ba.dIdFecha <:FechaF) '+
                  'where ot.sContrato =:Contrato  ' +
                  ' group by ot.sNumeroOrden order by ot.iOrden');
    Folios.ParamByName('Contrato').AsString      := global_contrato;
    Folios.ParamByName('FechaI').AsDate          := dParamFechaI;
    Folios.ParamByName('FechaF').AsDate          := dParamFechaF;
    Folios.Open;

    Folios.Filtered := False;
    Folios.Filter := 'sNumeroOrden = '+ QuotedStr(sParamFolio);
    Folios.Filtered := True;

    Anexos := TzReadOnlyQuery.create(nil);
    Anexos.Connection := Connection.zConnection;
    Anexos.Active := False;
    Anexos.SQL.Add('select a.* from anexos a '+
          'inner join rd_anexos_nota anot on (anot.sAnexo = a.sAnexo and anot.Incluye = "Si" and idNota =:Id) '+
          'order by iOrden');
    Anexos.ParamByName('Id').AsInteger := iParamNota;
    Anexos.Open;

    zAjustesNota := TzReadOnlyQuery.create(nil);
    zAjustesNota.Connection := Connection.zConnection;
    zAjustesNota.Active := False;
    zAjustesNota.SQL.Add('select * from rd_anexos_nota_ajustes where idNota =:Nota and iSeccion = 3 ');
    zAjustesNota.ParamByName('Nota').AsInteger := iParamNota;
    zAjustesNota.Open;

    DatosFolio := TzReadOnlyQuery.create(nil);
    DatosFolio.Connection := Connection.zConnection;
    dsDatosFolio := TfrxDBDataSet.Create(tOrigen);
    dsDatosFolio.DataSet := DatosFolio;
    dsDatosFolio.UserName := 'dsDatosFolio';

    DatosFolio.Active := False;
    DatosFolio.SQL.Clear;
    DatosFolio.SQL.Add('select nc.sContrato, nc.sContratoGral, nc.sEspecialidad, cp.sDescripcion as sCentroProceso, '+
              'nc.sNumeroActa, nc.dFechaActa, nc.sNumeroOrden, nc.sTipoActa, ot.sCsu, ot.sIdFolio, p.sDescripcion as Plataforma, '+
              'ot.sUbicacion, ot.mDescripcion, ao.dFechaInicio, ao.dFechaFinal, '+
              '(select sum(b.dAvance * (a.dPonderado / 100)) from bitacoradeactividades b '+
              'inner join actividadesxorden a on (a.sContrato =:Contrato and a.sIdConvenio =:Convenio and b.sNumeroOrden = :Folio and a.sWbs = b.sWbs and a.sTipoActividad = "Actividad") '+
              'where b.sContrato = a.sContrato and b.sNumeroOrden = a.sNumeroOrden and b.dIdFecha <= nc.dFechaActa group by b.sContrato ) as dAvance, ot.mComentarios '+
              'from rd_nota_campo nc '+
              'inner join centro_proceso cp on (cp.sIdCentro = nc.sIdCentro) '+
              'inner join ordenesdetrabajo ot on (ot.sContrato = nc.sContrato and ot.sNumeroOrden = nc.sNumeroOrden) '+
              'inner join plataformas p on (p.sIdPlataforma = ot.sIdPlataforma_nota) '+
              'inner join actividadesxorden ao on (ao.sContrato = nc.sContrato and ao.sNumeroOrden = nc.sNumeroOrden and ao.sIdConvenio =:Convenio and ao.iNivel = 0 and ao.sTipoActividad = "Paquete") '+
              'where nc.sContrato =:Contrato and nc.sNumeroOrden =:Folio and sTipoActa =:Tipo');
    DatosFolio.ParamByName('Contrato').AsString   := global_contrato;
    DatosFolio.ParamByName('Convenio').AsString   := sParamConvenio;
    DatosFolio.ParamByName('Folio').AsString      := sParamFolio;
    DatosFolio.ParamByName('Tipo').AsString       := sParamTipoActa;
    DatosFolio.Open;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
//    mDatos:=TJvMemoryData.Create(nil);
//    with mDatos do
//      begin
//        Active:=false;
//        FieldDefs.Add('iGrupo', ftInteger, 0, false);
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('sNumeroOrden', ftString, 50, True);
//        FieldDefs.Add('sIdFolio', ftString, 100, True);
//        FieldDefs.Add('dSumVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('sTipoMoneda', ftString, 3, false);
//        for CuentaCol:=1 to Anexos.RecordCount do
//        begin
//          FieldDefs.Add('sTitulo'+ Inttostr(CuentaCol), ftString, 10, false);
//          FieldDefs.Add('dVentaMN' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dVentaDLL'+ Inttostr(CuentaCol), ftInteger, 0, false);
//          FieldDefs.Add('dTotalDiaMN' + Inttostr(CuentaCol), FtFloat, 0, false);
//          FieldDefs.Add('dTotalDiaDLL' + Inttostr(CuentaCol), FtFloat, 0, false);
//        end;
//        Active:=true;
//      end;

//    mActa:=TJvMemoryData.Create(nil);
//    with mActa do
//      begin
//        Active:=false;
//        FieldDefs.Add('sContrato', ftString, 15, false);
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('sTitulo', ftString, 50, True);
//        FieldDefs.Add('sDescripcion', ftString, 150, True);
//        FieldDefs.Add('dSumSubVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumSubVentaDLL', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaMN', FtFloat, 0, True);
//        FieldDefs.Add('dSumVentaDLL', FtFloat, 0, True);
//        Active:=true;
//      end;

//    mCampo:=TJvMemoryData.Create(nil);
//    with mCampo do
//      begin
//        Active:=false;
//        FieldDefs.Add('sContrato', ftString, 15, false);
//        FieldDefs.Add('sNumeroActividad', ftString, 15, false);
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('dFecha', ftDate, 0, True);
//        FieldDefs.Add('sInicio', ftString, 10, True);
//        FieldDefs.Add('sFinal', FtString, 10, True);
//        FieldDefs.Add('sAfectacion', FtString, 10, True);
//        FieldDefs.Add('dAnterior', ftFloat, 0, false);
//        FieldDefs.Add('dActual', ftFloat, 0, false);
//        FieldDefs.Add('dAcumulado', ftFloat, 0, false);
//        FieldDefs.Add('sDuracion', ftString, 10, false);
//        Active:=true;
//      end;

//    mCampoRecursos:=TJvMemoryData.Create(nil);
//    with mCampoRecursos do
//      begin
//        Active:=false;
//        FieldDefs.Add('sNumeroActividad', ftString, 15, false);
//        FieldDefs.Add('iItemOrden', ftString, 200, True);
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('sIdRecurso', ftString, 50, false);
//        FieldDefs.Add('iOrden', ftInteger, 0, false);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('sDescripcionAnexo', ftString, 100, True);
//        FieldDefs.Add('sDescripcionRecurso', ftMemo, 0, True);
//        FieldDefs.Add('sMedida', ftString, 20, True);
//        FieldDefs.Add('dCantidad', ftFloat, 0, false);
//        FieldDefs.Add('dVentaMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaDLL', ftFloat, 0, false);
//        FieldDefs.Add('dVentaSumaMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaSumaDLL', ftFloat, 0, false);
//        Active:=true;
//      end;

//    mNotaCampo:=TJvMemoryData.Create(nil);
//    with mNotaCampo do
//      begin
//        Active:=false;
//        FieldDefs.Add('sContrato', ftString, 15, false);
//        FieldDefs.Add('sNumeroActividad', ftString, 15, false);
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('dFecha', ftDate, 0, True);
//        FieldDefs.Add('sInicio', ftString, 10, True);
//        FieldDefs.Add('sFinal', FtString, 10, True);
//        FieldDefs.Add('sAfectacion', FtString, 10, True);
//        FieldDefs.Add('dAnterior', ftFloat, 0, false);
//        FieldDefs.Add('dActual', ftFloat, 0, false);
//        FieldDefs.Add('dAcumulado', ftFloat, 0, false);
//        FieldDefs.Add('sDuracion', ftString, 10, false);
//
//        FieldDefs.Add('sIdRecurso', ftString, 50, false);
//        FieldDefs.Add('sDescripcionAnexo', ftString, 100, True);
//        FieldDefs.Add('sDescripcionRecurso', ftMemo, 0, True);
//        FieldDefs.Add('sMedida', ftString, 20, True);
//        FieldDefs.Add('dCantidad', ftFloat, 0, false);
//        FieldDefs.Add('dVentaMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaDLL', ftFloat, 0, false);
//        FieldDefs.Add('dVentaSumaMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaSumaDLL', ftFloat, 0, false);
//        FieldDefs.Add('sTipo', ftString, 20, false);
//
//        FieldDefs.Add('iEspActividad', ftInteger, 0, false);
//        FieldDefs.Add('iEspHorarios', ftInteger, 0, false);
//        FieldDefs.Add('iEspRecursos', ftInteger, 0, false);
//        Active:=true;
//      end;


//    mActividades:=TJvMemoryData.Create(nil);
//    with mActividades do
//      begin
//        Active:=false;
//        FieldDefs.Add('sNumeroActividad', ftString, 15, True);
//        FieldDefs.Add('dFecha', ftDate, 0, false);
//        FieldDefs.Add('sIdRecurso', ftString, 50, True);
//        FieldDefs.Add('dHora', ftFloat, 0, False);
//        FieldDefs.Add('dTotalFactorHora', ftFloat, 0, False);
//        FieldDefs.Add('dTotalFactor', ftFloat, 0, false);
//        FieldDefs.Add('dMultiploFactor', ftFloat, 0, false);
//        Active:=true;
//      end;

//    mTablaActividad:=TJvMemoryData.Create(nil);
//    with mTablaActividad do
//      begin
//        Active:=false;
//        FieldDefs.Add('sIdRecurso', ftString, 30, True);
//        FieldDefs.Add('sNumeroActividad', ftString, 15, True);
//        FieldDefs.Add('iItemOrden', ftString, 200, True);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('dTotalHora', ftFloat, 0, False);
//        FieldDefs.Add('dTotalFactor', ftFloat, 0, false);
//        FieldDefs.Add('dMultiploFactor', ftFloat, 0, false);
//        Active:=true;
//      end;

//    mTablaActividadAnexos:=TJvMemoryData.Create(nil);
//    with mTablaActividadAnexos do
//      begin
//        Active:=false;
//        FieldDefs.Add('sIdRecurso', ftString, 30, True);
//        FieldDefs.Add('sNumeroActividad', ftString, 15, True);
//        FieldDefs.Add('iItemOrden', ftString, 200, True);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('dMultiploFactor', ftFloat, 0, False);
//        Active:=true;
//      end;

//    mNotaActividades:=TJvMemoryData.Create(nil);
//    with mNotaActividades do
//      begin
//        Active:=false;
//        FieldDefs.Add('sNumeroActividad', ftString, 15, True);
//        FieldDefs.Add('iItemOrden', ftString, 200, True);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('sAnexo', ftString, 5, True);
//        FieldDefs.Add('sContenido', ftString, 2, True);
//        Active:=true;
//      end;

//   mTempActividad:=TJvMemoryData.Create(nil);
//    with mTempActividad do
//      begin
//        Active:=false;
//        FieldDefs.Add('sNumeroActividad', ftString, 15, True);
//        FieldDefs.Add('iItemOrden', ftString, 200, True);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('sIdRecurso', ftString, 30, True);
//        FieldDefs.Add('dCantidad', ftFloat, 0, False);
//        Active:=true;
//      end;

//    mRecursos:=TJvMemoryData.Create(nil);
//    with mRecursos do
//      begin
//        Active:=false;
//        FieldDefs.Add('sIdRecurso', ftString, 30, True);
//        FieldDefs.Add('dFactor', ftFloat, 0, False);
//        Active:=true;
//      end;

//    mDesglose:=TJvMemoryData.Create(nil);
//    with mDesglose do
//      begin
//        Active:=false;
//        FieldDefs.Add('sContrato', ftString, 15, false);
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('iOrdenAnexo', ftInteger, 0, false);
//        FieldDefs.Add('iOrden', ftInteger, 0, false);
//        FieldDefs.Add('sIdRecurso', ftString, 50, false);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('sDescripcionAnexo', ftString, 100, True);
//        FieldDefs.Add('sDescripcionRecurso', ftMemo, 0, True);
//        FieldDefs.Add('sMedida', ftString, 20, True);
//        FieldDefs.Add('dCantidad', ftFloat, 0, false);
//        FieldDefs.Add('dVentaMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaDLL', ftFloat, 0, false);
//        FieldDefs.Add('dVentaSumaMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaSumaDLL', ftFloat, 0, false);
//        FieldDefs.Add('sTipo', ftString, 20, false);
//        FieldDefs.Add('iEspRecursos', ftInteger, 0, false);
//        Active:=true;
//      end;

//    mConceptos:=TJvMemoryData.Create(nil);
//    with mConceptos do
//      begin
//        Active:=false;
//        FieldDefs.Add('sContrato', ftString, 15, false);
//        FieldDefs.Add('sNumeroActividad', ftString, 15, false);
//        FieldDefs.Add('sAnexo', ftString, 10, false);
//        FieldDefs.Add('mDescripcion', ftMemo, 0, True);
//        FieldDefs.Add('sDescripcionAnexo', ftString, 100, True);
//        FieldDefs.Add('dCantidad', ftFloat, 0, false);
//        FieldDefs.Add('dVentaMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaDLL', ftFloat, 0, false);
//        FieldDefs.Add('dVentaSumaMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaSumaDLL', ftFloat, 0, false);
//        FieldDefs.Add('dVentaTotalMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaTotalDLL', ftFloat, 0, false);
//        FieldDefs.Add('dVentaTotalGralMN', ftFloat, 0, false);
//        FieldDefs.Add('dVentaTotalGralDLL', ftFloat, 0, false);
//        Active:=true;
//      end;

//      mResumen:=TJvMemoryData.Create(nil);
//      with mResumen do
//        begin
//          Active:=false;
//          FieldDefs.Add('sContrato', ftString, 15, false);
//          FieldDefs.Add('sIdClasificacion', ftString, 10, false);
//          FieldDefs.Add('sDescripcion', ftString, 100, True);
//          FieldDefs.Add('sSumaClasificacion', ftString, 10, True);
//          FieldDefs.Add('sTotalClasificacion', ftString, 10, True);
//          Active:=true;
//        end;

    {$endregion}

    {$REGION 'Consultas'}
    qry_tripulacion := TzReadOnlyQuery.create(nil);
    qry_tripulacion.Connection := Connection.zConnection;

    qry_generadores := TzReadOnlyQuery.create(nil);
    qry_generadores.Connection := Connection.zConnection;

    while not Folios.Eof do
    begin
        iGrupoColumna := 1;
        iColumConteo  := 1;

//        mDatos.Append;
//        mDatos.FieldByName('iGrupo').AsInteger := iGrupoColumna;
//        mDatos.FieldByName('sAnexo').AsString   := Anexos.FieldByName('sAnexo').AsString;
//        mDatos.FieldByName('sNumeroOrden').AsString := Folios.FieldByName('sNumeroOrden').AsString;
//        mDatos.FieldByName('sIdFolio').AsString := Folios.FieldByName('sIdFolio').AsString;
//        mDatos.FieldByName('dSumVentaMN').AsFloat  := 0;
//        mDatos.FieldByName('dSumVentaDLL').AsFloat := 0;
//        mDatos.Post;

        Anexos.First;
        while not Anexos.Eof do
        begin
            qry_generadores.Active := False;
            qry_generadores.SQL.Clear;
            if (Anexos.FieldByName('Nomenclatura').AsString = '2.') or (Anexos.FieldByName('Nomenclatura').AsString = '3.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
            begin
                //>>Personal<<
                if (Anexos.FieldByName('Nomenclatura').AsString = '2.') then
                begin
                   qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradepersonal bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ')                           '+
                                  'and eTipoRecurso = "Personal") '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra order by bp.dIdFecha, bp.sNumeroOrden, e.iItemOrden ');
                   qry_generadores.ParamByName('Anexo').AsString           := Anexos.FieldByName('sAnexo').AsString ;
                end
                else
                if (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
                begin
                      qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'sum(bp.dCantidad) as Total, '+
                                  '0 AS Ajuste, 0 as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradetiemposextras bp '+

                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+

                              'union '+
                              'SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradepersonal bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ') '+
                                  'and eTipoRecurso = "Personal") '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+
                              'order by dIdFecha, sNumeroOrden, iItemOrden ');
                     qry_generadores.ParamByName('Anexo').AsString := Anexos.FieldByName('sAnexo').AsString ;
                end
                else
                //>>Equipo<<
                   qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdEquipo as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdEquipo, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradeequipos bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdEquipo and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ')                           '+
                                  'and eTipoRecurso = "Equipo") '+
                                  'inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo = bp.sIdEquipo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                  'and bp.sIdEquipo like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bp.sTipoObra order by bp.dIdFecha, bp.sNumeroOrden, e.iItemOrden ');

                qry_generadores.ParamByName('Tipo').AsString             := sParamTipoObra;
            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '1.') then
            begin
                qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, tp.sIdTipoMovimiento as sIdRecurso, tp.sDescripcion, '+
                                'concat(tp.sIdTipoMovimiento, " ", tp.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, tp.sMedida as sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.sFactor),6) as Total, '+
                                'ifnull(SUM(bp.sFactorBarco),0) AS Ajuste, 0.00000 as dSolicitado, tp.dVentaMN, tp.dVentaDLL '+
                                'FROM movimientosxfolios bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sNumeroOrden and o.sNumeroOrden = bp.sFolio ) '+
                                'inner join movimientosdeembarcacion me on (me.sContrato =bp.sContrato and me.dIdFecha = bp.dIdFecha and me.iIdDiario = bp.iIddiario ) '+
                                'inner join tiposdemovimiento tp on (tp.sContrato = bp.sContrato and tp.sIdTipoMovimiento = me.sClasificacion and tp.sClasificacion = "Movimiento de barco") '+
                                'WHERE bp.scontrato =:ContratoBarco AND bp.sNumeroOrden =:Contrato '+
                                'and me.sClasificacion like :categoria and bp.sfolio like :folio '+
                                'group by bp.dIdFecha, bp.sFolio, tp.sIdTipoMovimiento order by me.dIdFecha, tp.sIdTipoMovimiento, o.iOrden');

            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '4.') then
            begin
                qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdCuenta as sIdRecurso, bp.sIdCategoria, c.sDescripcion, '+
                                'concat(bp.sIdCuenta, " ", c.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, c.sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'sum(bp.dCantidad) as Total, '+
                                '0.00000 AS Ajuste, 0.00000 as dSolicitado, c.iOrden as Ordena, c.dVentaMN, c.dVentaDLL '+
                                'FROM bitacoradepernocta bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join cuentas c on (c.sIdCuenta = bp.sIdCuenta) '+
                                'WHERE bp.sContrato =:Contrato '+
                                'and bp.sIdCuenta like :Categoria and bp.sNumeroOrden like :Folio and :ContratoBarco = :ContratoBarco '+
                                'group by dIdFecha, sNumeroOrden, sIdCategoria '+
                          'union '+
                          'select bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra, bp.sTipoPernocta as sIdRecurso, bp.sIdPersonal, cc.sDescripcion, '+
                                'concat(cc.sIdCuenta, " ", cc.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, cc.sMedida, '+
                                '    o.sIdFolio as sDescripcionFolio, '+
                                'round(sum( bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, cc.iOrden as Ordena, cc.dVentaMN, cc.dVentaDLL '+
                                'from bitacoradepersonal bp '+
                                'inner join cuentas cc on (cc.sIdCuenta = bp.sTipoPernocta) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'where bp.sContrato =:Contrato '+
                                'and bp.sNumeroOrden like :Folio and bp.sTipoObra like :Tipo and bp.lAplicaPernocta = "Si" '+
                          'group by dIdFecha, sNumeroOrden, sIdPersonal '+
                          'order by dIdFecha, sNumeroOrden, Ordena');
                  qry_generadores.ParamByName('Tipo').AsString             := '%';
            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '6.') or (Anexos.FieldByName('Nomenclatura').AsString = '7.') or (Anexos.FieldByName('Nomenclatura').AsString = '8.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '9.') or (Anexos.FieldByName('Nomenclatura').AsString = '11.') or (Anexos.FieldByName('Nomenclatura').AsString = 'E.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '12.') or (Anexos.FieldByName('Nomenclatura').AsString = '13.') or  (Anexos.FieldByName('Nomenclatura').AsString = '10.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '14.') or (Anexos.FieldByName('Nomenclatura').AsString = '15.') or (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
            begin
                if (Anexos.FieldByName('Nomenclatura').AsString = '6.') then
                   local_tipo := 'C6';

                if (Anexos.FieldByName('Nomenclatura').AsString = '7.') then
                   local_tipo := 'C7';

                if (Anexos.FieldByName('Nomenclatura').AsString = '8.') then
                   local_tipo := 'C8';

                if (Anexos.FieldByName('Nomenclatura').AsString = '9.') then
                   local_tipo := 'C9';

                if (Anexos.FieldByName('Nomenclatura').AsString = '10.') then
                   local_tipo := 'C10';

                if (Anexos.FieldByName('Nomenclatura').AsString = '11.') then
                   local_tipo := 'C11';

                if (Anexos.FieldByName('Nomenclatura').AsString = '12.') then
                   local_tipo := 'C12';

                if (Anexos.FieldByName('Nomenclatura').AsString = '13.') then
                   local_tipo := 'C13';

                if (Anexos.FieldByName('Nomenclatura').AsString = '14.') then
                   local_tipo := 'C14';

                if (Anexos.FieldByName('Nomenclatura').AsString = '15.') then
                   local_tipo := 'C15';

                if (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
                   local_tipo := 'C16';

                if (Anexos.FieldByName('Nomenclatura').AsString = 'E.') then
                   local_tipo := 'C';

                qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdMaterial as sIdRecurso, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                                'concat(bp.sIdMaterial, " ", substr(bp.mDescripcion,0,1000)) as sDescripcionRecurso, o.sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'sum(bp.dCantidad) as Total, '+
                                '0.00000 AS Ajuste, 0.00000 as dSolicitado, ax.dVentaMN, ax.dVentaDLL '+
                                'FROM bitacorademateriales bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bp.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                                'WHERE bp.scontrato =:contrato '+
                                'and bp.sIdMaterial like :Categoria and bp.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                                'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdMaterial order by bp.dIdFecha, ax.iItemOrden');
                 qry_generadores.params.ParamByName('Anexo').asString  := local_tipo;
            end;

            qry_generadores.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
            qry_generadores.params.ParamByName('contrato').asString       := global_contrato;
            qry_generadores.params.ParamByName('categoria').DataType := ftString;
            qry_generadores.params.ParamByName('categoria').Value := '%';
            qry_generadores.params.ParamByName('folio').DataType := ftString;
            qry_generadores.params.ParamByName('folio').Value     :=  Folios.FieldByName('sNumeroOrden').AsString;

            qry_generadores.Open;

            dTotalVentaMN  := 0;
            dTotalVentaDLL := 0;
            qry_generadores.First;
            while not qry_generadores.Eof do
            begin
                dTotalVentaMN  := dTotalVentaMN  + ((qry_generadores.FieldByName('Total').AsFloat + qry_generadores.FieldByName('Ajuste').AsFloat)* qry_generadores.FieldByName('dVentaMN').AsFloat);
                dTotalVentaDLL := dTotalVentaDLL + ((qry_generadores.FieldByName('Total').AsFloat + qry_generadores.FieldByName('Ajuste').AsFloat)* qry_generadores.FieldByName('dVentaDLL').AsFloat);
                if (Anexos.FieldByName('Nomenclatura').AsString = '1.') then
                  dFactorGeneradores := dFactorGeneradores + (qry_generadores.FieldByName('Total').AsFloat + qry_generadores.FieldByName('Ajuste').AsFloat);
                qry_generadores.Next;
            end;
          {$ENDREGION}

//            mDatos.Edit;
//            mDatos.FieldByName('iGrupo').AsInteger := iGrupoColumna;
//            mDatos.FieldByName('sTitulo'+ Inttostr(iColumConteo)).AsString   := Anexos.FieldByName('sEtiqueta').AsString;
//            mDatos.FieldByName('dVentaMN' + Inttostr(iColumConteo)).AsFloat  := dTotalVentaMN;
//            mDatos.FieldByName('dVentaDLL' + Inttostr(iColumConteo)).AsFloat := dTotalVentaDLL;
//            mDatos.FieldByName('dTotalDiaMN'  + Inttostr(iColumConteo)).AsFloat := mDatos.FieldByName('dTotalDiaMN'  + Inttostr(iColumConteo)).AsFloat + dTotalVentaMN;
//            mDatos.FieldByName('dTotalDiaDLL' + Inttostr(iColumConteo)).AsFloat := mDatos.FieldByName('dTotalDiaDLL' + Inttostr(iColumConteo)).AsFloat + dTotalVentaDLL;
//            mDatos.FieldByName('dSumVentaMN').AsFloat  := mDatos.FieldByName('dSumVentaMN').AsFloat + dTotalVentaMN;
//            mDatos.FieldByName('dSumVentaDLL').AsFloat := mDatos.FieldByName('dSumVentaDLL').AsFloat + dTotalVentaDLL;
//            mDatos.Post;

            //Resumen Acta de Entrega
//            mActa.Append;
//            mActa.FieldByName('sContrato').AsString    := global_contrato;
//            mActa.FieldByName('sTitulo').AsString      := Anexos.FieldByName('sEtiqueta').AsString;
//            mActa.FieldByName('sAnexo').AsString       := Anexos.FieldByName('sAnexo').AsString;
//            mActa.FieldByName('sDescripcion').AsString := Anexos.FieldByName('sAnexoDescripcion2').AsString;
//            mActa.FieldByName('dSumSubVentaMN').AsFloat   := XRound(dTotalVentaMN,2);
//            mActa.FieldByName('dSumsubVentaDLL').AsFloat  := xRound(dTotalVentaDLL,2);
//            mActa.FieldByName('dSumVentaMN').AsFloat   := dAcumVentaMN;
//            mActa.FieldByName('dSumVentaDLL').AsFloat  := dAcumVentaDLL;
//            mActa.Post;

            Anexos.Next;
        end;
        Folios.Next;
        BarraProgresoAvance(BarraProgreso, 0,100,100/Folios.RecordCount);
    end;

//    mDatos.SortOnFields('iGrupo',False,False);

    {$region 'Nota Campo Actividad y Horarios'}
      zHorarios := TzReadOnlyQuery.create(nil);
      zHorarios.Connection := Connection.zConnection;
      zHorarios.Active := False;
      zHorarios.SQL.Clear;
      zHorarios.SQL.Add('select o.sContrato, b.dIdFecha, o.sNumeroOrden, o.sIdFolio, b.mDescripcion, '+
                'b.sNumeroActividad, b.sHorainicio, b.sHoraFinal, b.sIdClasificacion, ao.dCantidad,  b.iIdDiario, '+
                '(select sum(dAvance) as anterior from bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                'and sNumeroActividad = b.sNumeroActividad and dIdFecha < b.dIdFecha group by sContrato ) as anteriorDia, '+
                '(select sum(dAvance) as anterior from bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                'and sNumeroActividad = b.sNumeroActividad and dIdFecha = b.dIdFecha and sHoraInicio < b.sHoraInicio group by sContrato ) as anterior, '+
                '(select sum(dAvance) as actual from bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                'and sNumeroActividad = b.sNumeroActividad and dIdFecha = b.dIdFecha and sHoraInicio = b.sHoraInicio group by sContrato ) as actual '+
                'from ordenesdetrabajo o '+
                'inner join bitacoradeactividades b on (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden and b.sIdConvenio =:convenio '+
                'and b.sIdTipoMovimiento <> "E" and lImprime = "Si") '+
                'inner join actividadesxorden ao on (ao.sContrato = b.sContrato and ao.sNumeroOrden = b.sNumeroOrden and ao.sNumeroActividad = b.sNumeroActividad and ao.sTipoActividad = "Actividad") '+
                'where o.sContrato =:contrato and b.sNumeroOrden like :folio  '+
                'group by b.sNumeroActividad, b.dIdFecha, b.sHoraInicio '+
                'order by o.iOrden, ao.iItemOrden,  b.dIdFecha, b.sHoraInicio');
      zHorarios.ParamByName('Contrato').AsString   := global_contrato;
      zHorarios.ParamByName('Convenio').AsString   := sParamConvenio;
      zHorarios.ParamByName('Folio').AsString      := sParamFolio;
      zHorarios.Open;

      sSumaHora := '00:00';
      sSumaHoraTotal := '00:00';
      sId := '';
      while not zHorarios.Eof do
      begin
         if sId <> zHorarios.FieldByName('sNumeroActividad').AsString then
         begin

             if sId <> '' then
             begin
//                 mCampo.Filtered := False;
//                 mCampo.Filter   := 'sNumeroActividad = '+ QuotedStr(sId);
//                 mCampo.Filtered := True;

//                 mCampo.First;
//                 while not mCampo.Eof do
//                 begin
//                     mCampo.Edit;
//                     mCampo.FieldByName('sDuracion').AsString := sSumaHora;
//                     mCampo.Post;
//                     mCampo.Next;
//                 end;
//                 mCampo.Filtered := False;
             end;

             sSumaHora := '00:00';
             sId := zHorarios.FieldByName('sNumeroActividad').AsString;
         end;

//         mCampo.Append;
//         mCampo.FieldByName('sContrato').AsString := global_contrato;
//         mCampo.FieldByName('sNumeroActividad').AsString := zHorarios.FieldByName('sNumeroActividad').AsString;
//         mCampo.FieldByName('sAnexo').AsString       := '';
//         mCampo.FieldByName('dFecha').AsDateTime     := zHorarios.FieldByName('dIdFecha').AsDateTime;
//         mCampo.FieldByName('mDescripcion').AsString := zHorarios.FieldByName('mDescripcion').AsString;
//         mCampo.FieldByName('sInicio').AsString      := zHorarios.FieldByName('sHoraInicio').AsString;
//         mCampo.FieldByName('sFinal').AsString       := zHorarios.FieldByName('sHoraFinal').AsString;
//         mCampo.FieldByName('sAfectacion').AsString  := zHorarios.FieldByName('sIdClasificacion').AsString;
//         mCampo.FieldByName('dAnterior').AsFloat     := zHorarios.FieldByName('anteriorDia').AsFloat +  zHorarios.FieldByName('anterior').AsFloat;
//         mCampo.FieldByName('dActual').AsFloat       := zHorarios.FieldByName('actual').AsFloat;
//         mCampo.FieldByName('dAcumulado').AsFloat    := zHorarios.FieldByName('actual').AsFloat + zHorarios.FieldByName('anteriorDia').AsFloat +  zHorarios.FieldByName('anterior').AsFloat;
//         mCampo.FieldByName('sDuracion').AsString    := '00:00';
//         mCampo.Post;

         if zHorarios.FieldByName('sIdClasificacion').AsString = 'TE' then
         begin
             sSumaHora := sfnSumaHoras(sSumaHora, sfnRestaHoras(zHorarios.FieldByName('sHoraFinal').AsString, zHorarios.FieldByName('sHoraInicio').AsString));
             sSumaHoraTotal := sfnSumaHoras(sSumaHoraTotal,sfnRestaHoras(zHorarios.FieldByName('sHoraFinal').AsString, zHorarios.FieldByName('sHoraInicio').AsString));
         end;

//         mCampo.Edit;
//         mCampo.FieldByName('sDuracion').AsString  := sSumaHora;
//         mCampo.Post;

         zHorarios.Next;
      end;

      if zHorarios.RecordCount > 0 then
      begin
//          mCampo.Edit ;
//          mCampo.FieldByName('sDuracion').AsString  := sSumaHora;
//          mCampo.Post;
      end;

    {$endregion}

    {$region 'Nota Campo Recursos'}
      NotaCampo := TzReadOnlyQuery.create(nil);
      NotaCampo.Connection := Connection.zConnection;
      NotaCampo.Active := False;
      NotaCampo.SQL.Clear;
      NotaCampo.SQL.Add('select sNumeroActividad, iItemOrden, mDescripcion, sAnexo, sWbs from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Folio and sTipoActividad = "Actividad" order by iItemOrden');
      NotaCampo.ParamByName('Contrato').AsString   := global_contrato;
      NotaCampo.ParamByName('Convenio').AsString   := sParamConvenio;
      NotaCampo.ParamByName('Folio').AsString      := sParamFolio;
      NotaCampo.Open;

      while not Notacampo.Eof do
      begin
//          mNotaActividades.Append;
//          mNotaActividades.FieldByName('sNumeroActividad').AsString := NotaCampo.FieldByName('sNumeroActividad').AsString;
//          mNotaActividades.FieldByName('iItemOrden').AsString       := NotaCampo.FieldByName('iItemOrden').AsString;
//          mNotaActividades.FieldByName('mDescripcion').AsString     := NotaCampo.FieldByName('mDescripcion').AsString;
//          mNotaActividades.FieldByName('sAnexo').AsString           := NotaCampo.FieldByName('sAnexo').AsString;
//          mNotaActividades.FieldByName('sContenido').AsString       := 'No';
//          mNotaActividades.Post;
          NotaCampo.Next;
      end;

      zHorarios.Active := False;
      zHorarios.SQL.Clear;
      zHorarios.SQL.Add('select o.sContrato, b.dIdFecha, o.sNumeroOrden, o.sIdFolio, b.mDescripcion, '+
                'b.sNumeroActividad, b.sHorainicio, b.sHoraFinal, b.sIdClasificacion, b.iIdDiario '+
                'from ordenesdetrabajo o '+
                'inner join bitacoradeactividades b on (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden and b.sIdConvenio =:convenio '+
                'and b.sIdTipoMovimiento <> "E" and lImprime = "Si") '+
                'where o.sContrato =:contrato and b.sNumeroOrden like :folio  '+
                'group by b.sNumeroActividad, b.dIdFecha, b.sHoraInicio '+
                'order by o.iOrden, b.dIdFecha');
      zHorarios.ParamByName('Contrato').AsString   := global_contrato;
      zHorarios.ParamByName('Convenio').AsString   := sParamConvenio;
      zHorarios.ParamByName('Folio').AsString      := sParamFolio;
      zHorarios.Open;


      Anexos.First;
      while not Anexos.Eof do
      begin
          {$region 'Consulta de Acuerdo a Generadores'}
            qry_generadores.Active := False;
            qry_generadores.SQL.Clear;
            if (Anexos.FieldByName('Nomenclatura').AsString = '2.') or (Anexos.FieldByName('Nomenclatura').AsString = '3.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
            begin
                //>>Personal<<
                if (Anexos.FieldByName('Nomenclatura').AsString = '2.') then
                begin
                   qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradepersonal bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ')                           '+
                                  'and eTipoRecurso = "Personal") '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra order by bp.sNumeroOrden, e.iItemOrden ');
                   qry_generadores.ParamByName('Anexo').AsString           := Anexos.FieldByName('sAnexo').AsString ;
                end
                else
                if (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
                begin
                      qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'sum(bp.dCantidad) as Total, '+
                                  '0 AS Ajuste, 0 as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradetiemposextras bp '+

                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+

                              'union '+
                              'SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradepersonal bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ') '+
                                  'and eTipoRecurso = "Personal") '+
                                  'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                  'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+
                              'order by sNumeroOrden, iItemOrden ');
                     qry_generadores.ParamByName('Anexo').AsString := Anexos.FieldByName('sAnexo').AsString ;
                end
                else
                //>>Equipo<<
                   qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdEquipo as sIdRecurso, bp.sDescripcion, '+
                                  'concat(bp.sIdEquipo, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                  'o.sIdFolio as sDescripcionFolio, '+
                                  'round(sum(bp.dCantHH),2) as Total, '+
                                  'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                  'FROM bitacoradeequipos bp '+
                                  'inner join bitacoradeactividades ba '+
                                  'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                  'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                  'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                  'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdEquipo and mr.iIdMoe = ( select m.iIdMoe '+
                                  'from moe m '+
                                  'where m.sContrato = bp.sContrato '+
                                  'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                  '                    from moe m1 '+
                                  '                    where m1.sContrato = bp.sContrato '+
                                  '                    and m1.dIdFecha <= bp.dIdFecha '+
                                  '                  ) '+
                                  ')                           '+
                                  'and eTipoRecurso = "Equipo") '+
                                  'inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo = bp.sIdEquipo) '+
                                  'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                  'and bp.sIdEquipo like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bp.sTipoObra order by bp.sNumeroOrden, e.iItemOrden ');

                qry_generadores.ParamByName('Tipo').AsString             := sParamTipoObra;
            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '1.') then
            begin
                qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, tp.sIdTipoMovimiento as sIdRecurso, tp.sDescripcion, '+
                                'concat(tp.sIdTipoMovimiento, " ", tp.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, tp.sMedida as sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.sFactor),6) as Total, '+
                                'ifnull(SUM(bp.sFactorBarco),0) AS Ajuste, 0.00000 as dSolicitado, tp.dVentaMN, tp.dVentaDLL '+
                                'FROM movimientosxfolios bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sNumeroOrden and o.sNumeroOrden = bp.sFolio ) '+
                                'inner join movimientosdeembarcacion me on (me.sContrato =bp.sContrato and me.dIdFecha = bp.dIdFecha and me.iIdDiario = bp.iIddiario ) '+
                                'inner join tiposdemovimiento tp on (tp.sContrato = bp.sContrato and tp.sIdTipoMovimiento = me.sClasificacion and tp.sClasificacion = "Movimiento de barco") '+
                                'WHERE bp.scontrato =:ContratoBarco AND bp.sNumeroOrden =:Contrato '+
                                'and me.sClasificacion like :categoria and bp.sfolio like :folio '+
                                'group by bp.sFolio, bp.iIddiario order by me.dIdFecha, tp.sIdTipoMovimiento, o.iOrden');

            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '4.') then
            begin
                qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdCuenta as sIdRecurso, bp.sIdCategoria, c.sDescripcion, '+
                                'concat(bp.sIdCuenta, " ", c.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, c.sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'sum(bp.dCantidad) as Total, '+
                                '0.00000 AS Ajuste, 0.00000 as dSolicitado, c.iOrden as Ordena, c.dVentaMN, c.dVentaDLL '+
                                'FROM bitacoradepernocta bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join cuentas c on (c.sIdCuenta = bp.sIdCuenta) '+
                                'WHERE bp.sContrato =:Contrato '+
                                'and bp.sIdCuenta like :Categoria and bp.sNumeroOrden like :Folio and :ContratoBarco = :ContratoBarco '+
                                'group by dIdFecha, sNumeroOrden, sIdCategoria '+
                          'union '+
                          'select bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra, bp.sTipoPernocta as sIdRecurso, bp.sIdPersonal, cc.sDescripcion, '+
                                'concat(cc.sIdCuenta, " ", cc.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, cc.sMedida, '+
                                '    o.sIdFolio as sDescripcionFolio, '+
                                'round(sum( bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, cc.iOrden as Ordena, cc.dVentaMN, cc.dVentaDLL '+
                                'from bitacoradepersonal bp '+
                                'inner join cuentas cc on (cc.sIdCuenta = bp.sTipoPernocta) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'where bp.sContrato =:Contrato '+
                                'and bp.sNumeroOrden like :Folio and bp.sTipoObra like :Tipo and bp.lAplicaPernocta = "Si" '+
                          'group by dIdFecha, sNumeroOrden, sIdPersonal '+
                          'order by dIdFecha, sNumeroOrden, Ordena');
                  qry_generadores.ParamByName('Tipo').AsString             := '%';
            end;

            if (Anexos.FieldByName('Nomenclatura').AsString = '6.') or (Anexos.FieldByName('Nomenclatura').AsString = '7.') or (Anexos.FieldByName('Nomenclatura').AsString = '8.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '9.') or (Anexos.FieldByName('Nomenclatura').AsString = '11.') or (Anexos.FieldByName('Nomenclatura').AsString = 'E.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '12.') or (Anexos.FieldByName('Nomenclatura').AsString = '13.') or (Anexos.FieldByName('Nomenclatura').AsString = '10.') or
               (Anexos.FieldByName('Nomenclatura').AsString = '14.') or (Anexos.FieldByName('Nomenclatura').AsString = '15.') or (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
            begin
                if (Anexos.FieldByName('Nomenclatura').AsString = '6.') then
                   local_tipo := 'C6';

                if (Anexos.FieldByName('Nomenclatura').AsString = '7.') then
                   local_tipo := 'C7';

                if (Anexos.FieldByName('Nomenclatura').AsString = '8.') then
                   local_tipo := 'C8';

                if (Anexos.FieldByName('Nomenclatura').AsString = '9.') then
                   local_tipo := 'C9';

                if (Anexos.FieldByName('Nomenclatura').AsString = '10.') then
                   local_tipo := 'C10';

                if (Anexos.FieldByName('Nomenclatura').AsString = '11.') then
                   local_tipo := 'C11';

                if (Anexos.FieldByName('Nomenclatura').AsString = '12.') then
                   local_tipo := 'C12';

                if (Anexos.FieldByName('Nomenclatura').AsString = '13.') then
                   local_tipo := 'C13';

                if (Anexos.FieldByName('Nomenclatura').AsString = '14.') then
                   local_tipo := 'C14';

                if (Anexos.FieldByName('Nomenclatura').AsString = '15.') then
                   local_tipo := 'C15';

                if (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
                   local_tipo := 'C16';

                if (Anexos.FieldByName('Nomenclatura').AsString = 'E.') then
                   local_tipo := 'C';

                qry_generadores.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdMaterial as sIdRecurso, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                                'concat(bp.sIdMaterial, " ", substr(bp.mDescripcion,0,1000)) as sDescripcionRecurso, o.sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'sum(bp.dCantidad) as Total, '+
                                '0.00000 AS Ajuste, 0.00000 as dSolicitado, ax.dVentaMN, ax.dVentaDLL '+
                                'FROM bitacorademateriales bp '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bp.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                                'WHERE bp.scontrato =:contrato '+
                                'and bp.sIdMaterial like :Categoria and bp.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                                'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdMaterial order by bp.dIdFecha, ax.iItemOrden');
                 qry_generadores.params.ParamByName('Anexo').asString  := local_tipo;
            end;

            qry_generadores.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
            qry_generadores.params.ParamByName('contrato').asString       := global_contrato;
            qry_generadores.params.ParamByName('categoria').DataType := ftString;
            qry_generadores.params.ParamByName('categoria').Value := '%';
            qry_generadores.params.ParamByName('folio').DataType := ftString;
            qry_generadores.params.ParamByName('folio').Value     :=  Folios.FieldByName('sNumeroOrden').AsString;

            qry_generadores.Open;

          {$endregion}


          {$region 'Consultas Nota Por Actividades'}
          qry_tripulacion.Active := False;
          qry_tripulacion.SQL.Clear;
          if (Anexos.FieldByName('Nomenclatura').AsString = '2.') or (Anexos.FieldByName('Nomenclatura').AsString = '3.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
          begin
              //>>Personal<<
              if (Anexos.FieldByName('Nomenclatura').AsString = '2.') then
              begin
                 qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                'bp.sDescripcion as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, bp.sNumeroActividad, e.iItemOrden, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                'FROM bitacoradepersonal bp '+
                                'inner join bitacoradeactividades ba '+
                                'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                'from moe m '+
                                'where m.sContrato = bp.sContrato '+
                                'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                '                    from moe m1 '+
                                '                    where m1.sContrato = bp.sContrato '+
                                '                    and m1.dIdFecha <= bp.dIdFecha '+
                                '                  ) '+
                                ')                           '+
                                'and eTipoRecurso = "Personal") '+
                                'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra, bp.iIdDiario order by e.iItemOrden ');
                 qry_tripulacion.ParamByName('Anexo').AsString           := Anexos.FieldByName('sAnexo').AsString ;
              end
              else
              if (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
              begin
                    qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                ' bp.sDescripcion as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, "N/A" as sNumeroActividad, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'sum(bp.dCantidad) as Total, '+
                                '0 AS Ajuste, 0 as dSolicitado, e.iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                'FROM bitacoradetiemposextras bp '+

                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+

                            'union '+
                            'SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                ' bp.sDescripcion as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, bp.sNumeroActividad, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                'FROM bitacoradepersonal bp '+
                                'inner join bitacoradeactividades ba '+
                                'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                'from moe m '+
                                'where m.sContrato = bp.sContrato '+
                                'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                '                    from moe m1 '+
                                '                    where m1.sContrato = bp.sContrato '+
                                '                    and m1.dIdFecha <= bp.dIdFecha '+
                                '                  ) '+
                                ') '+
                                'and eTipoRecurso = "Personal") '+
                                'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra, bp.iIdDiario '+
                            'order by iItemOrden ');
                   qry_tripulacion.ParamByName('Anexo').AsString := Anexos.FieldByName('sAnexo').AsString ;
              end
              else
              //>>Equipo<<
                 qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdEquipo as sIdRecurso, bp.sDescripcion, '+
                                ' bp.sDescripcion as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, bp.sNumeroActividad, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL, e.iItemOrden '+
                                'FROM bitacoradeequipos bp '+
                                'inner join bitacoradeactividades ba '+
                                'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdEquipo and mr.iIdMoe = ( select m.iIdMoe '+
                                'from moe m '+
                                'where m.sContrato = bp.sContrato '+
                                'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                '                    from moe m1 '+
                                '                    where m1.sContrato = bp.sContrato '+
                                '                    and m1.dIdFecha <= bp.dIdFecha '+
                                '                  ) '+
                                ')                           '+
                                'and eTipoRecurso = "Equipo") '+
                                'inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo = bp.sIdEquipo) '+
                                'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio '+
                                'and bp.sIdEquipo like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bp.sTipoObra, bp.iIdDiario order by e.iItemOrden ');

              qry_tripulacion.ParamByName('Tipo').AsString             := sParamTipoObra;
          end;

          if (Anexos.FieldByName('Nomenclatura').AsString = '1.') then
          begin
              qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, tp.sIdTipoMovimiento as sIdRecurso, tp.sDescripcion, '+
                              'tp.sDescripcion as sDescripcionRecurso, o.sNumeroOrden, tp.sMedida as sMedida, tp.iOrden as iItemOrden, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'round(sum(bp.sFactor),6) as Total, '+
                              'ifnull(SUM(bp.sFactorBarco),0) AS Ajuste, 0.00000 as dSolicitado, tp.dVentaMN, tp.dVentaDLL '+
                              'FROM movimientosxfolios bp '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sNumeroOrden and o.sNumeroOrden = bp.sFolio ) '+
                              'inner join movimientosdeembarcacion me on (me.sContrato =bp.sContrato and me.dIdFecha = bp.dIdFecha and me.iIdDiario = bp.iIddiario ) '+
                              'inner join tiposdemovimiento tp on (tp.sContrato = bp.sContrato and tp.sIdTipoMovimiento = me.sClasificacion and tp.sClasificacion = "Movimiento de barco") '+
                              'WHERE bp.scontrato =:ContratoBarco AND bp.sNumeroOrden =:Contrato '+
                              'and me.sClasificacion like :categoria and bp.sfolio like :folio '+
                              'group by bp.sFolio, bp.iIddiario order by o.iOrden, bp.dIdFecha');

          end;

          if (Anexos.FieldByName('Nomenclatura').AsString = '4.') then
          begin
              qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdCuenta as sIdRecurso, bp.sIdCategoria, c.sDescripcion, '+
                              'c.sDescripcion as sDescripcionRecurso, o.sNumeroOrden, c.sMedida, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'sum(bp.dCantidad) as Total, '+
                              '0.00000 AS Ajuste, 0.00000 as dSolicitado, c.iOrden as Ordena, c.dVentaMN, c.dVentaDLL, c.iOrden as iItemOrden '+
                              'FROM bitacoradepernocta bp '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'inner join cuentas c on (c.sIdCuenta = bp.sIdCuenta) '+
                              'WHERE bp.sContrato =:Contrato '+
                              'and bp.sIdCuenta like :Categoria and bp.sNumeroOrden like :Folio and :ContratoBarco = :ContratoBarco '+
                              'group by dIdFecha, sNumeroOrden, sIdCategoria '+
                        'union '+
                        'select bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra, bp.sTipoPernocta as sIdRecurso, bp.sIdPersonal, cc.sDescripcion, '+
                              'cc.sDescripcion as sDescripcionRecurso, o.sNumeroOrden, cc.sMedida, '+
                              '    o.sIdFolio as sDescripcionFolio, '+
                              'round(sum( bp.dCantHH),2) as Total, '+
                              'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, cc.iOrden as Ordena, cc.dVentaMN, cc.dVentaDLL, cc.iOrden as iItemOrden '+
                              'from bitacoradepersonal bp '+
                              'inner join cuentas cc on (cc.sIdCuenta = bp.sTipoPernocta) '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'where bp.sContrato =:Contrato '+
                              'and bp.sNumeroOrden like :Folio and bp.sTipoObra like :Tipo and bp.lAplicaPernocta = "Si" '+
                        'group by dIdFecha, sNumeroOrden, sIdPersonal '+
                        'order by Ordena');
                qry_tripulacion.ParamByName('Tipo').AsString             := '%';
          end;

          if (Anexos.FieldByName('Nomenclatura').AsString = '6.') or (Anexos.FieldByName('Nomenclatura').AsString = '7.') or (Anexos.FieldByName('Nomenclatura').AsString = '8.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '9.') or (Anexos.FieldByName('Nomenclatura').AsString = '11.') or (Anexos.FieldByName('Nomenclatura').AsString = 'E.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '12.') or (Anexos.FieldByName('Nomenclatura').AsString = '13.') or (Anexos.FieldByName('Nomenclatura').AsString = '10.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '14.') or (Anexos.FieldByName('Nomenclatura').AsString = '15.') or (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
          begin
              if (Anexos.FieldByName('Nomenclatura').AsString = '6.') then
                 local_tipo := 'C6';

              if (Anexos.FieldByName('Nomenclatura').AsString = '7.') then
                 local_tipo := 'C7';

              if (Anexos.FieldByName('Nomenclatura').AsString = '8.') then
                 local_tipo := 'C8';

              if (Anexos.FieldByName('Nomenclatura').AsString = '9.') then
                 local_tipo := 'C9';

              if (Anexos.FieldByName('Nomenclatura').AsString = '10.') then
                 local_tipo := 'C10';

              if (Anexos.FieldByName('Nomenclatura').AsString = '11.') then
                 local_tipo := 'C11';

              if (Anexos.FieldByName('Nomenclatura').AsString = '12.') then
                 local_tipo := 'C12';

              if (Anexos.FieldByName('Nomenclatura').AsString = '13.') then
                 local_tipo := 'C13';

              if (Anexos.FieldByName('Nomenclatura').AsString = '14.') then
                 local_tipo := 'C14';

              if (Anexos.FieldByName('Nomenclatura').AsString = '15.') then
                 local_tipo := 'C15';

              if (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
                 local_tipo := 'C16';

              if (Anexos.FieldByName('Nomenclatura').AsString = 'E.') then
                 local_tipo := 'C';

              qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdMaterial as sIdRecurso, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                              'bp.mDescripcion as sDescripcionRecurso, o.sNumeroOrden, ax.sMedida, ax.mDescripcion, bp.sWbs, ao.sNumeroActividad, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'sum(bp.dCantidad) as Total, '+
                              '0.00000 AS Ajuste, 0.00000 as dSolicitado, ax.dVentaMN, ax.dVentaDLL, ax.iItemOrden '+
                              'FROM bitacorademateriales bp '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bp.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                              'inner join actividadesxorden ao on (ao.sContrato =:contrato and ao.sNumeroOrden = bp.sNumeroOrden and ao.sWbs = bp.sWbs and ao.sTipoActividad = "Actividad") '+
                              'WHERE bp.scontrato =:contrato '+
                              'and bp.sIdMaterial like :Categoria and bp.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                              'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdMaterial order by ax.iItemOrden');
               qry_tripulacion.params.ParamByName('Anexo').asString  := local_tipo;
          end;

          qry_tripulacion.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
          qry_tripulacion.params.ParamByName('contrato').asString       := global_contrato;
          qry_tripulacion.params.ParamByName('categoria').DataType := ftString;
          qry_tripulacion.params.ParamByName('categoria').Value := '%';
          qry_tripulacion.params.ParamByName('folio').DataType := ftString;
          qry_tripulacion.params.ParamByName('folio').Value     :=  Folios.FieldByName('sNumeroOrden').AsString;

          qry_tripulacion.Open;
          {$endregion}


//          mActividades.EmptyTable;
//          mRecursos.EmptyTable;
//          mTablaActividad.EmptyTable;
          //Barco
          {$region 'Barco'}
          if (Anexos.FieldByName('Nomenclatura').AsString = '1.') then
          begin
              sId := '';
              qry_tripulacion.First;
              dCantidadFactor := 0;
              while not qry_tripulacion.Eof do
              begin
                  if sId <> qry_tripulacion.FieldByName('sIdRecurso').AsString then
                  begin
                      sId := qry_tripulacion.FieldByName('sIdRecurso').AsString;

//                      if mRecursos.RecordCount > 0 then
//                      begin
//                          mRecursos.Edit;
//                          mRecursos.FieldByName('dFactor').AsFloat  := dCantidadFactor;
//                          mRecursos.Post;
//                      end;

//                      mRecursos.Append;
//                      mRecursos.FieldByName('sIdRecurso').AsString := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                      mRecursos.FieldByName('dFactor').AsFloat  := 0;
//                      mRecursos.Post;

                      zHorarios.First;
                      dFecha :=0;
                      dCantidad := 0;
                      dCantidadFactor := 0;
                      //Suma de horarios por dia y total de factor por dia
                      {$region 'Suma Horarios y Factor horas dia'}
                      while not zHorarios.Eof do
                      begin
                          if dFecha <> zHorarios.FieldByName('dIdFecha').AsDateTime then
                          begin
//                              mActividades.Filtered := False;
//                              mActividades.Filter   := 'dFecha = '+ QuotedStr(DateToSTr(dFecha));
//                              mActividades.Filtered := True;

//                              while not mActividades.Eof do
//                              begin
//                                  mActividades.Edit;
//                                  mActividades.FieldByName('dTotalFactorHora').AsFloat := dCantidad;
//                                  mActividades.Post;
//                                  mActividades.Next
//                              end;
//                              mActividades.Filtered := False;
                              dCantidad := 0;
                              dFecha    := zHorarios.FieldByName('dIdFecha').AsDateTime;
                          end;

                          dCantidad := dCantidad + (sfnHora(sfnRestaHoras(zHorarios.FieldByName('sHoraFinal').AsString,zHorarios.FieldByName('sHoraInicio').AsString))/24);

//                          mActividades.Append;
//                          mActividades.FieldByName('sNumeroActividad').AsString := zHorarios.FieldByName('sNumeroActividad').AsString;
//                          mActividades.FieldByName('dFecha').AsDateTime         := zHorarios.FieldByName('dIdFecha').AsDateTime;
//                          mActividades.FieldByName('sIdRecurso').AsString       := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                          mActividades.FieldByName('dHora').AsFloat             := (sfnHora(sfnRestaHoras(zHorarios.FieldByName('sHoraFinal').AsString,zHorarios.FieldByName('sHoraInicio').AsString))/24);
//                          mActividades.FieldByName('dTotalFactorHora').AsFloat  := 0;
//                          mActividades.FieldByName('dTotalFactor').AsFloat      := 0;
//                          mActividades.FieldByName('dMultiploFactor').AsFloat   := 0;
//                          mActividades.Post;
                          zHorarios.Next;
                      end;

                      if dCantidad <> 0 then
                      begin
//                          mActividades.Filtered := False;
//                          mActividades.Filter   := 'dFecha = '+ QuotedStr(DateToSTr(dFecha));
//                          mActividades.Filtered := True;

//                          while not mActividades.Eof do
//                          begin
//                              mActividades.Edit;
//                              mActividades.FieldByName('dTotalFactorHora').AsFloat := dCantidad;
//                              mActividades.Post;
//                              mActividades.Next
//                          end;
//                          mActividades.Filtered := False;
                          dCantidad := 0;
                      end;
                  end;
                  {$endregion}
                  dCantidadFactor := dCantidadFactor + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
                  qry_tripulacion.Next;
              end;

              if dCantidadFactor > 0 then
              begin
                  if dFactorGeneradores <> dCantidadFactor then
                     dCantidadFactor := dFactorGeneradores;

//                  mRecursos.Edit;
//                  mRecursos.FieldByName('dFactor').AsFloat  := dCantidadFactor;
//                  mRecursos.Post;
                  dCantidadFactor := 0;
              end;

              //Suma de Total de Barco por dia.
              {$region 'Suma de Total Factor Barco'}
              qry_tripulacion.First;
              dCantidad := 0;
              dFecha := 0;
              sId := '@';
              while not qry_tripulacion.Eof do
              begin
                  //Suma de horarios por dia y total de factor por dia
                  if (dFecha <> qry_tripulacion.FieldByName('dIdFecha').AsDateTime) or (sId <> qry_tripulacion.FieldByName('sIdRecurso').AsString ) then
                  begin
//                      mActividades.Filtered := False;
//                      mActividades.Filter   := 'dFecha = '+ QuotedStr(DateToSTr(dFecha));
//                      mActividades.Filtered := True;

//                      mActividades.First;
//                      while not mActividades.Eof do
//                      begin
//                          if sId = mActividades.FieldByName('sIdRecurso').AsString then
//                          begin
//                              mActividades.Edit;
//                              mActividades.FieldByName('dTotalFactor').AsFloat := dCantidad;
//                              mActividades.Post;
//                          end;
//                          mActividades.Next
//                      end;
//                      mActividades.Filtered := False;
                      dCantidad := 0;
                      dFecha    := qry_tripulacion.FieldByName('dIdFecha').AsDateTime;
                      sId       := qry_tripulacion.FieldByName('sIdRecurso').AsString;
                  end;

                  dCantidad := dCantidad + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
                  qry_tripulacion.Next;
              end;

              if dCantidad <> 0 then
              begin
//                  mActividades.Filtered := False;
//                  mActividades.Filter   := 'dFecha = '+ QuotedStr(DateToSTr(dFecha));
//                  mActividades.Filtered := True;

//                  while not mActividades.Eof do
//                  begin
//                      if sId = mActividades.FieldByName('sIdRecurso').AsString then
//                      begin
//                          mActividades.Edit;
//                          mActividades.FieldByName('dTotalFactor').AsFloat := dCantidad;
//                          mActividades.Post;
//                      end;
//                      mActividades.Next;
//                  end;
//                  mActividades.Filtered := False;
                  dCantidad := 0;
              end;
              {$endregion}

              //Multiplicacion o regla de 3
//              mActividades.First;
//              while not mActividades.Eof do
//              begin
//                  mActividades.Edit;
//                  mActividades.FieldByName('dMultiploFactor').AsFloat := ((mActividades.FieldByName('dHora').AsFloat * mActividades.FieldByName('dTotalFactor').AsFloat)/mActividades.FieldByName('dTotalFactorHora').AsFloat);
//                  mActividades.Post;
//                  mActividades.Next;
//              end;

//              mActividades.SortOnFields('sNumeroActividad',False,False);

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Folio and sTipoActividad = "Actividad" order by iItemOrden');
              connection.zCommand.ParamByName('Contrato').AsString   := global_contrato;
              connection.zCommand.ParamByName('Convenio').AsString   := sParamConvenio;
              connection.zCommand.ParamByName('Folio').AsString      := sParamFolio;
              connection.zCommand.Open;

//              mRecursos.First;
//              while not mRecursos.Eof do
//              begin
//                  dCantidad := 0;
//                  dCantidadHoras  := 0;
//                  //Sumamos todos los totales de factor hora
//                  mActividades.Filtered := False;
//                  mActividades.Filter   := 'sIdRecurso = '+ QuotedStr(mRecursos.FieldByName('sIdRecurso').AsString);
//                  mActividades.Filtered := True;
//
//                  while not mActividades.Eof do
//                  begin
//                      dCantidad := dCantidad + mActividades.FieldByName('dMultiploFactor').AsFloat;
//                      dCantidadHoras  := dCantidadHoras + mActividades.FieldByName('dHora').AsFloat;
//                      mActividades.Next;
//                  end;
//
//                  connection.zCommand.First;
//                  while not connection.zCommand.Eof do
//                  begin
//                      mTablaActividad.Append;
//                      mTablaActividad.FieldByName('sIdRecurso').AsString       := mRecursos.FieldByName('sIdRecurso').AsString;
//                      mTablaActividad.FieldByName('sNumeroActividad').AsString := connection.zCommand.FieldByName('sNumeroActividad').AsString;
//                      mTablaActividad.FieldByName('iItemOrden').AsString       := connection.zCommand.FieldByName('iItemOrden').AsString;
//                      mTablaActividad.FieldByName('mDescripcion').AsString     := connection.zCommand.FieldByName('mDescripcion').AsString;
//                      mTablaActividad.FieldByName('dTotalHora').AsFloat        := dCantidadHoras;
//                      mTablaActividad.FieldByName('dTotalFactor').AsFloat      := dCantidad;
//                      mTablaActividad.FieldByName('dMultiploFactor').AsFloat   := 0;
//                      mTablaActividad.Post;
//                      connection.zCommand.Next;
//                  end;
//                  mRecursos.Next;
//              end;

//              mRecursos.First;
//              while not mRecursos.Eof do
//              begin
//                  mActividades.Filtered := False;
//                  mActividades.Filter   := 'sIdRecurso = '+ QuotedStr(mRecursos.FieldByName('sIdRecurso').AsString);
//                  mActividades.Filtered := True;
//
//                  mTablaActividad.Filtered := False;
//                  mTablaActividad.Filter   := 'sIdRecurso = '+ QuotedStr(mRecursos.FieldByName('sIdRecurso').AsString);
//                  mTablaActividad.Filtered := True;
//
//                  mActividades.First;
//                  sId := '';
//                  dCantidad := 0;
//                  while not mActividades.Eof do
//                  begin
//                      if sId <> mActividades.FieldByName('sNumeroActividad').AsString then
//                      begin
//                          if sId <> '' then
//                          begin
//                              mTablaActividad.Locate('sNumeroActividad', sId, []);
//                              mTablaActividad.Edit;
//                              mTablaActividad.FieldByName('dMultiploFactor').AsFloat   := (dCantidad * mRecursos.FieldByName('dFactor').AsFloat)/mTablaActividad.FieldByName('dTotalHora').AsFloat;
//                              mTablaActividad.Post;
//                          end;
//                          sId := mActividades.FieldByName('sNumeroActividad').AsString;
//                          dCantidad := 0;
//                      end;
//                      dCantidad       := dCantidad +  mActividades.FieldByName('dHora').AsFloat;
//                      mActividades.Next;
//                  end;
//
//                  if dCantidad <> 0 then
//                  begin
//                      mTablaActividad.Locate('sNumeroActividad', sId, []);
//                      mTablaActividad.Edit;
//                      mTablaActividad.FieldByName('dMultiploFactor').AsFloat   := (dCantidad * mRecursos.FieldByName('dFactor').AsFloat)/mTablaActividad.FieldByName('dTotalHora').AsFloat;
//                      mTablaActividad.Post;
//                      dCantidad := 0;
//                  end;
//
//                  mRecursos.Next;
//              end;
//              mTablaActividad.Filtered := False;
          end;
          {$endregion}

          {$region 'Pernocta'}
          if (Anexos.FieldByName('Nomenclatura').AsString = '4.') then
          begin
              sId := '';
              qry_tripulacion.First;
              dCantidadFactor := 0;
              while not qry_tripulacion.Eof do
              begin
                  if sId <> qry_tripulacion.FieldByName('sIdRecurso').AsString then
                  begin
                      sId := qry_tripulacion.FieldByName('sIdRecurso').AsString;

//                      if mRecursos.RecordCount > 0 then
//                      begin
//                          mRecursos.Edit;
//                          mRecursos.FieldByName('dFactor').AsFloat  := dCantidadFactor;
//                          mRecursos.Post;
//                      end;
//
//                      mRecursos.Append;
//                      mRecursos.FieldByName('sIdRecurso').AsString := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                      mRecursos.FieldByName('dFactor').AsFloat  := 0;
//                      mRecursos.Post;

                      zHorarios.First;
                      dFecha :=0;
                      dCantidad := 0;
                      dCantidadFactor := 0;
                      //Suma de horarios por dia y total de factor por dia
                      {$region 'Suma Horarios y Factor horas dia'}
                      while not zHorarios.Eof do
                      begin
                          if dFecha <> zHorarios.FieldByName('dIdFecha').AsDateTime then
                          begin
//                              mActividades.Filtered := False;
//                              mActividades.Filter   := 'dFecha = '+ QuotedStr(DateToSTr(dFecha));
//                              mActividades.Filtered := True;

//                              while not mActividades.Eof do
//                              begin
//                                  mActividades.Edit;
//                                  mActividades.FieldByName('dTotalFactorHora').AsFloat := dCantidad;
//                                  mActividades.Post;
//                                  mActividades.Next
//                              end;
//                              mActividades.Filtered := False;
                              dCantidad := 0;
                              dFecha    := zHorarios.FieldByName('dIdFecha').AsDateTime;
                          end;

                          dCantidad := dCantidad + (sfnHora(sfnRestaHoras(zHorarios.FieldByName('sHoraFinal').AsString,zHorarios.FieldByName('sHoraInicio').AsString))/24);

//                          mActividades.Append;
//                          mActividades.FieldByName('sNumeroActividad').AsString := zHorarios.FieldByName('sNumeroActividad').AsString;
//                          mActividades.FieldByName('dFecha').AsDateTime         := zHorarios.FieldByName('dIdFecha').AsDateTime;
//                          mActividades.FieldByName('sIdRecurso').AsString       := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                          mActividades.FieldByName('dHora').AsFloat             := (sfnHora(sfnRestaHoras(zHorarios.FieldByName('sHoraFinal').AsString,zHorarios.FieldByName('sHoraInicio').AsString))/24);
//                          mActividades.FieldByName('dTotalFactorHora').AsFloat  := 0;
//                          mActividades.FieldByName('dTotalFactor').AsFloat      := 0;
//                          mActividades.FieldByName('dMultiploFactor').AsFloat   := 0;
//                          mActividades.Post;
                          zHorarios.Next;
                      end;

                      if dCantidad <> 0 then
                      begin
//                          mActividades.Filtered := False;
//                          mActividades.Filter   := 'dFecha = '+ QuotedStr(DateToSTr(dFecha));
//                          mActividades.Filtered := True;

//                          while not mActividades.Eof do
//                          begin
//                              mActividades.Edit;
//                              mActividades.FieldByName('dTotalFactorHora').AsFloat := dCantidad;
//                              mActividades.Post;
//                              mActividades.Next
//                          end;
//                          mActividades.Filtered := False;
                          dCantidad := 0;
                      end;
                  end;
                  {$endregion}
                  dCantidadFactor := dCantidadFactor + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
                  qry_tripulacion.Next;
              end;

              if dCantidadFactor > 0 then
              begin
//                  mRecursos.Edit;
//                  mRecursos.FieldByName('dFactor').AsFloat  := dCantidadFactor;
//                  mRecursos.Post;
                  dCantidadFactor := 0;
              end;

              //Suma de Total de Barco por dia.
              {$region 'Suma de Total Factor Barco'}
              qry_tripulacion.First;
              dCantidad := 0;
              dFecha := 0;
              sId := '@';
              while not qry_tripulacion.Eof do
              begin
                  //Suma de horarios por dia y total de factor por dia
                  if (dFecha <> qry_tripulacion.FieldByName('dIdFecha').AsDateTime) or (sId <> qry_tripulacion.FieldByName('sIdRecurso').AsString ) then
                  begin
//                      mActividades.Filtered := False;
//                      mActividades.Filter   := 'dFecha = '+ QuotedStr(DateToSTr(dFecha));
//                      mActividades.Filtered := True;

//                      mActividades.First;
//                      while not mActividades.Eof do
//                      begin
//                          if sId = mActividades.FieldByName('sIdRecurso').AsString then
//                          begin
//                              mActividades.Edit;
//                              mActividades.FieldByName('dTotalFactor').AsFloat := dCantidad;
//                              mActividades.Post;
//                          end;
//                          mActividades.Next
//                      end;
//                      mActividades.Filtered := False;
                      dCantidad := 0;
                      dFecha    := qry_tripulacion.FieldByName('dIdFecha').AsDateTime;
                      sId       := qry_tripulacion.FieldByName('sIdRecurso').AsString;
                  end;

                  dCantidad := dCantidad + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
                  qry_tripulacion.Next;
              end;

              if dCantidad <> 0 then
              begin
//                  mActividades.Filtered := False;
//                  mActividades.Filter   := 'dFecha = '+ QuotedStr(DateToSTr(dFecha));
//                  mActividades.Filtered := True;

//                  while not mActividades.Eof do
//                  begin
//                      if sId = mActividades.FieldByName('sIdRecurso').AsString then
//                      begin
//                          mActividades.Edit;
//                          mActividades.FieldByName('dTotalFactor').AsFloat := dCantidad;
//                          mActividades.Post;
//                      end;
//                      mActividades.Next;
//                  end;
//                  mActividades.Filtered := False;
                  dCantidad := 0;
              end;
              {$endregion}

              //Multiplicacion o regla de 3
//              mActividades.First;
//              while not mActividades.Eof do
//              begin
//                  mActividades.Edit;
//                  mActividades.FieldByName('dMultiploFactor').AsFloat := ((mActividades.FieldByName('dHora').AsFloat * mActividades.FieldByName('dTotalFactor').AsFloat)/mActividades.FieldByName('dTotalFactorHora').AsFloat);
//                  mActividades.Post;
//                  mActividades.Next;
//              end;
//
//              mActividades.SortOnFields('sNumeroActividad',False,False);

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Folio and sTipoActividad = "Actividad" order by iItemOrden');
              connection.zCommand.ParamByName('Contrato').AsString   := global_contrato;
              connection.zCommand.ParamByName('Convenio').AsString   := sParamConvenio;
              connection.zCommand.ParamByName('Folio').AsString      := sParamFolio;
              connection.zCommand.Open;

//              mRecursos.First;
//              while not mRecursos.Eof do
//              begin
//                  dCantidad := 0;
//                  dCantidadHoras  := 0;
//                  //Sumamos todos los totales de factor hora
//                  mActividades.Filtered := False;
//                  mActividades.Filter   := 'sIdRecurso = '+ QuotedStr(mRecursos.FieldByName('sIdRecurso').AsString);
//                  mActividades.Filtered := True;
//
//                  while not mActividades.Eof do
//                  begin
//                      dCantidad := dCantidad + mActividades.FieldByName('dMultiploFactor').AsFloat;
//                      dCantidadHoras  := dCantidadHoras + mActividades.FieldByName('dHora').AsFloat;
//                      mActividades.Next;
//                  end;
//
//                  connection.zCommand.First;
//                  while not connection.zCommand.Eof do
//                  begin
//                      mTablaActividad.Append;
//                      mTablaActividad.FieldByName('sIdRecurso').AsString       := mRecursos.FieldByName('sIdRecurso').AsString;
//                      mTablaActividad.FieldByName('sNumeroActividad').AsString := connection.zCommand.FieldByName('sNumeroActividad').AsString;
//                      mTablaActividad.FieldByName('iItemOrden').AsString       := connection.zCommand.FieldByName('iItemOrden').AsString;
//                      mTablaActividad.FieldByName('mDescripcion').AsString     := connection.zCommand.FieldByName('mDescripcion').AsString;
//                      mTablaActividad.FieldByName('dTotalHora').AsFloat        := dCantidadHoras;
//                      mTablaActividad.FieldByName('dTotalFactor').AsFloat      := dCantidad;
//                      mTablaActividad.FieldByName('dMultiploFactor').AsFloat   := 0;
//                      mTablaActividad.Post;
//                      connection.zCommand.Next;
//                  end;
//                  mRecursos.Next;
//              end;

//              mRecursos.First;
//              while not mRecursos.Eof do
//              begin
//                  mActividades.Filtered := False;
//                  mActividades.Filter   := 'sIdRecurso = '+ QuotedStr(mRecursos.FieldByName('sIdRecurso').AsString);
//                  mActividades.Filtered := True;
//
//                  mTablaActividad.Filtered := False;
//                  mTablaActividad.Filter   := 'sIdRecurso = '+ QuotedStr(mRecursos.FieldByName('sIdRecurso').AsString);
//                  mTablaActividad.Filtered := True;
//
//                  mActividades.First;
//                  sId := '';
//                  dCantidad := 0;
//                  while not mActividades.Eof do
//                  begin
//                      if sId <> mActividades.FieldByName('sNumeroActividad').AsString then
//                      begin
//                          if sId <> '' then
//                          begin
//                              mTablaActividad.Locate('sNumeroActividad', sId, []);
//                              mTablaActividad.Edit;
//                              mTablaActividad.FieldByName('dMultiploFactor').AsFloat   := (dCantidad * mRecursos.FieldByName('dFactor').AsFloat)/mTablaActividad.FieldByName('dTotalHora').AsFloat;
//                              mTablaActividad.Post;
//                          end;
//                          sId := mActividades.FieldByName('sNumeroActividad').AsString;
//                          dCantidad := 0;
//                      end;
//                      dCantidad       := dCantidad +  mActividades.FieldByName('dHora').AsFloat;
//                      mActividades.Next;
//                  end;
//
//                  if dCantidad <> 0 then
//                  begin
//                      mTablaActividad.Locate('sNumeroActividad', sId, []);
//                      mTablaActividad.Edit;
//                      mTablaActividad.FieldByName('dMultiploFactor').AsFloat   := (dCantidad * mRecursos.FieldByName('dFactor').AsFloat)/mTablaActividad.FieldByName('dTotalHora').AsFloat;
//                      mTablaActividad.Post;
//                      dCantidad := 0;
//                  end;
//
//                  mRecursos.Next;
//              end;
//              mTablaActividad.Filtered := False;
          end;
          {$endregion}

          {$region 'Personal'}
          if (Anexos.FieldByName('Nomenclatura').AsString = '2.') or (Anexos.FieldByName('Nomenclatura').AsString = '3.') or (Anexos.FieldByName('Nomenclatura').AsString = '5.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '6.') or (Anexos.FieldByName('Nomenclatura').AsString = '7.') or (Anexos.FieldByName('Nomenclatura').AsString = '8.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '9.') or (Anexos.FieldByName('Nomenclatura').AsString = '11.') or (Anexos.FieldByName('Nomenclatura').AsString = 'E.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '12.') or (Anexos.FieldByName('Nomenclatura').AsString = '13.') or (Anexos.FieldByName('Nomenclatura').AsString = '10.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '14.') or (Anexos.FieldByName('Nomenclatura').AsString = '15.') or (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
          begin

              NotaCampo.First;
              while not NotaCampo.Eof do
              begin
                  qry_tripulacion.Filtered := False;
                  qry_tripulacion.Filter   := 'sNumeroActividad = ' + QuotedStr(NotaCampo.FieldByName('sNumeroActividad').AsString);
                  qry_tripulacion.Filtered := True;

                  sId := '';
                  dCantidad := 0;
                  while not qry_tripulacion.Eof do
                  begin
                      if sId <> qry_tripulacion.FieldByName('sIdRecurso').AsString then
                      begin
                          if sId <> '' then
                          begin
//                              mTablaActividad.Edit;
//                              mTablaActividad.FieldByName('dMultiploFactor').AsFloat := dCantidad;
//                              mTablaActividad.Post;
                          end;
                          dCantidad := 0;
//                          mTablaActividad.Append;
//                          mTablaActividad.FieldByName('sNumeroActividad').AsString := qry_tripulacion.FieldByName('sNumeroActividad').AsString;
//                          mTablaActividad.FieldByName('sIdRecurso').AsString       := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                          mTablaActividad.FieldByName('iItemOrden').AsString       := NotaCampo.FieldByName('iItemOrden').AsString;
//                          mTablaActividad.FieldByName('mDescripcion').AsString     := NotaCampo.FieldByName('mDescripcion').AsString;
//                          mTablaActividad.FieldByName('dMultiploFactor').AsFloat   := dCantidad;
//                          mTablaActividad.Post;
                          sId := qry_tripulacion.FieldByName('sIdRecurso').AsString;
                      end;
                      dCantidad := dCantidad + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
                      qry_tripulacion.Next;
                  end;
                  NotaCampo.Next;
                  if dCantidad > 0 then
                  begin
//                      mTablaActividad.Edit;
//                      mTablaActividad.FieldByName('dMultiploFactor').AsFloat  := dCantidad;
//                      mTablaActividad.Post;
                      dCantidad := 0;
                  end;

              end;

              if dCantidad > 0 then
              begin
//                  mTablaActividad.Edit;
//                  mTablaActividad.FieldByName('dMultiploFactor').AsFloat  := dCantidad;
//                  mTablaActividad.Post;
                  dCantidad := 0;
              end;


              {$region 'Sólo para Tiempos Extras'}
              if (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
              begin
                  qry_tripulacion.Filtered := False;
                  qry_tripulacion.Filter   := 'sNumeroActividad = ' + QuotedStr('N/A');
                  qry_tripulacion.Filtered := True;

                  sId := '';
                  dCantidad := 0;
                  dCantidadFactor := 0;
                  while not qry_tripulacion.Eof do
                  begin
                      if sId <> qry_tripulacion.FieldByName('sIdRecurso').AsString then
                      begin
                          if sId <> '' then
                          begin
//                              mTempActividad.Filtered := False;
//                              mTempActividad.Filter   := 'sIdRecurso = ' + QuotedStr(sId);
//                              mTempActividad.Filtered := True;
//                              while not mTempActividad.Eof do
//                              begin
//                                  mTempActividad.Edit;
//                                  mTempActividad.FieldByName('dCantidad').AsFloat := dCantidad / dCantidadFactor;
//                                  mTempActividad.Post;
//                                  mTempActividad.Next;
//                              end;
                              dCantidadFactor := 0;
                          end;
                          dCantidad := 0;
                          sId := qry_tripulacion.FieldByName('sIdRecurso').AsString;

//                          mTablaActividad.Filtered := False;
//                          mTablaActividad.Filter   := 'sIdRecurso = ' + QuotedStr(copy(sId,0,length(sId)-2));
//                          mTablaActividad.Filtered := True;

                          sNumeroActividad := '';
//                          while not mTablaActividad.Eof do
//                          begin
//                              if sNumeroActividad <> mTablaActividad.FieldByName('sNumeroActividad').AsString then
//                              begin
//                                  mTempActividad.Append;
//                                  mTempActividad.FieldByName('sIdRecurso').AsString       := sId;
//                                  mTempActividad.FieldByName('sNumeroActividad').AsString := mTablaActividad.FieldByName('sNumeroActividad').AsString;
//                                  mTempActividad.FieldByName('iItemOrden').AsString       := mTablaActividad.FieldByName('iItemOrden').AsString;
//                                  mTempActividad.FieldByName('mDescripcion').AsString     := mTablaActividad.FieldByName('mDescripcion').AsString;
//                                  mTempActividad.FieldByName('dCantidad').AsFloat         := 0;
//                                  mTempActividad.Post;
//                                  dCantidadFactor := dCantidadFactor + 1;
//                                  sNumeroActividad := mTablaActividad.FieldByName('sNumeroActividad').AsString;
//                              end;
//                              mTablaActividad.Next;
//                          end;
                      end;
                      dCantidad := dCantidad + (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);

                      qry_tripulacion.Next;
                  end;

                  if dCantidad > 0 then
                  begin
//                      mTempActividad.Filtered := False;
//                      mTempActividad.Filter   := 'sIdRecurso = ' + QuotedStr(sId);
//                      mTempActividad.Filtered := True;
//                      while not mTempActividad.Eof do
//                      begin
//                          mTempActividad.Edit;
//                          mTempActividad.FieldByName('dCantidad').AsFloat := dCantidad / dCantidadFactor;
//                          mTempActividad.Post;
//                          mTempActividad.Next;
//                      end;
                      dCantidadFactor := 0;
                  end;

                  //Ahora vaciamos la informacion
//                  mTempActividad.Filtered := False;
//                  while not mTempActividad.Eof do
//                  begin
//                      mTablaActividad.Append;
//                      mTablaActividad.FieldByName('sNumeroActividad').AsString := mTempActividad.FieldByName('sNumeroActividad').AsString;
//                      mTablaActividad.FieldByName('sIdRecurso').AsString       := mTempActividad.FieldByName('sIdRecurso').AsString;
//                      mTablaActividad.FieldByName('iItemOrden').AsString       := mTempActividad.FieldByName('iItemOrden').AsString;
//                      mTablaActividad.FieldByName('mDescripcion').AsString     := mTempActividad.FieldByName('mDescripcion').AsString;
//                      mTablaActividad.FieldByName('dMultiploFactor').AsFloat   := mTempActividad.FieldByName('dCantidad').AsFloat;
//                      mTablaActividad.Post;
//
//                      mTempActividad.Next;
//                  end;
              end;

              {$endregion}
//              mTablaActividad.Filtered := False;
              qry_tripulacion.Filtered := False;

              {$region 'Ajuste Factores'}
              if (Anexos.FieldByName('Nomenclatura').AsString = '2.') or (Anexos.FieldByName('Nomenclatura').AsString = '3.') or (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
              begin
                  sId := '';
                  dCantidadGenerador := 0;
                  qry_generadores.First;
                  while not qry_generadores.Eof do
                  begin
                      if sId <> qry_generadores.FieldByName('sIdRecurso').AsString then
                      begin
                          if sId <> '' then
                          begin
//                              mTablaActividad.Filtered := False;
//                              mTablaActividad.Filter   := 'sIdRecurso = ' + QuotedStr(sId);
//                              mTablaActividad.Filtered := True;
                              dCantidad := 0;
//                              while not mTablaActividad.Eof do
//                              begin
//                                 dCantidad := dCantidad + mTablaActividad.FieldByName('dMultiploFactor').AsFloat;
//                                 mTablaActividad.Next;
//                              end;

                              if dCantidad > dCantidadGenerador then
                              begin
//                                 mTablaActividad.Edit;
//                                 mTablaActividad.FieldByName('dMultiploFactor').AsFloat := mTablaActividad.FieldByName('dMultiploFactor').AsFloat - (dCantidad - dCantidadGenerador);
//                                 mTablaActividad.Post;
                              end;

                              if dCantidad < dCantidadGenerador then
                              begin
//                                 mTablaActividad.Edit;
//                                 mTablaActividad.FieldByName('dMultiploFactor').AsFloat := mTablaActividad.FieldByName('dMultiploFactor').AsFloat + (dCantidadGenerador - dCantidad);
//                                 mTablaActividad.Post;
                              end;

                          end;
                          dCantidadGenerador := 0;
                          dCantidad := 0;
                          sId := qry_generadores.FieldByName('sIdRecurso').AsString;
                      end;
                      dCantidadGenerador := dCantidadGenerador + (qry_generadores.FieldByName('Total').AsFloat + qry_generadores.FieldByName('Ajuste').AsFloat);
                      qry_generadores.Next;
                  end;

                  if dCantidadGenerador > 0 then
                  begin
//                      mTablaActividad.Filtered := False;
//                      mTablaActividad.Filter   := 'sIdRecurso = ' + QuotedStr(sId);
//                      mTablaActividad.Filtered := True;
                      dCantidad :=0;
//                      while not mTablaActividad.Eof do
//                      begin
//                         dCantidad := dCantidad + mTablaActividad.FieldByName('dMultiploFactor').AsFloat;
//                         mTablaActividad.Next;
//                      end;

                      if dCantidad > dCantidadGenerador then
                      begin
//                         mTablaActividad.Edit;
//                         mTablaActividad.FieldByName('dMultiploFactor').AsFloat := mTablaActividad.FieldByName('dMultiploFactor').AsFloat - (dCantidad - dCantidadGenerador);
//                         mTablaActividad.Post;
                      end;

                      if dCantidad < dCantidadGenerador then
                      begin
//                         mTablaActividad.Edit;
//                         mTablaActividad.FieldByName('dMultiploFactor').AsFloat := mTablaActividad.FieldByName('dMultiploFactor').AsFloat + (dCantidadGenerador - dCantidad);
//                         mTablaActividad.Post;
                      end;
                  end;
              end;
              {$endregion}
//              mTablaActividad.Filtered := False;
          end;
          {$endregion}

          qry_tripulacion.First;
//          while not mTablaActividad.Eof do
//          begin
//              qry_tripulacion.Locate('sIdRecurso', mTablaActividad.FieldByName('sIdRecurso').AsString, []);
//              mCampoRecursos.Append;
//              mCampoRecursos.FieldByName('sNumeroActividad').AsString   := mTablaActividad.FieldByName('sNumeroActividad').AsString;
//              mCampoRecursos.FieldByName('iItemOrden').AsString         := mTablaActividad.FieldByName('iItemOrden').AsString;
//              mCampoRecursos.FieldByName('sDescripcionAnexo').AsString  := Anexos.FieldByName('sAnexoDescripcion2').AsString;
//              mCampoRecursos.FieldByName('sAnexo').AsString             := Anexos.FieldByName('sAnexo').AsString;
//              mCampoRecursos.FieldByName('iOrden').AsInteger            := Anexos.FieldByName('iOrden').AsInteger;
//              mCampoRecursos.FieldByName('sIdRecurso').AsString         := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//              mCampoRecursos.FieldByName('mDescripcion').AsString       := mTablaActividad.FieldByName('mDescripcion').AsString;
//              mCampoRecursos.FieldByName('sDescripcionRecurso').AsString:= qry_tripulacion.FieldByName('sDescripcionRecurso').AsString;
//              mCampoRecursos.FieldByName('sMedida').AsString            := qry_tripulacion.FieldByName('sMedida').AsString;
//
//              mCampoRecursos.FieldByName('dCantidad').AsFloat           := mTablaActividad.FieldByName('dMultiploFactor').AsFloat;
//              mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat        := xRound(mTablaActividad.FieldByName('dMultiploFactor').AsFloat * qry_tripulacion.FieldByName('dVentaMN').AsFloat,2);
//              mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat       := xRound(mTablaActividad.FieldByName('dMultiploFactor').AsFloat * qry_tripulacion.FieldByName('dVentaDLL').AsFloat,2);
//
//              mCampoRecursos.FieldByName('dVentaMN').AsFloat            := qry_tripulacion.FieldByName('dVentaMN').AsFloat;
//              mCampoRecursos.FieldByName('dVentaDLL').AsFloat           := qry_tripulacion.FieldByName('dVentaDLL').AsFloat;
//              mCampoRecursos.Post;
//
//              mTablaActividad.Next;
//          end;

          {$region 'Ajuste Montos Centavos '}

//            mActa.Filtered := False;
//            mActa.Filter   := 'sAnexo = ' + QuotedStr(Anexos.FieldByName('sAnexo').AsString);
//            mActa.Filtered := True;
//
//            mCampoRecursos.Filtered := False;
//            mCampoRecursos.Filter   := 'sAnexo = '+ QuotedStr(Anexos.FieldByName('sAnexo').AsString);
//            mCampoRecursos.Filtered := True;

            dAcumVentaMN   := 0;
            dAcumVentaDLL  := 0;
//            mCampoRecursos.First;
//            while not mCampoRecursos.Eof do
//            begin
//                dAcumVentaMN  := dAcumVentaMN  + mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat;
//                dAcumVentaDLL := dAcumVentaDLL + mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat;
//                mCampoRecursos.Next;
//            end;

//            if (dAcumVentaMN > mActa.FieldByName('dSumSubVentaMN').AsFloat) and (mActa.FieldByName('dSumSubVentaMN').AsFloat > 0)  then
//            begin
//               mCampoRecursos.SortOnFields('dVentaSumaMN',False);
//               mCampoRecursos.Last;
//               mCampoRecursos.Edit;
//               mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat := mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat - (dAcumVentaMN - mActa.FieldByName('dSumsubVentaMN').AsFloat);
//               mCampoRecursos.Post;
//
//            end;

//            if (dAcumVentaDLL > mActa.FieldByName('dSumsubVentaDLL').AsFloat) and (mActa.FieldByName('dSumsubVentaDLL').AsFloat > 0) then
//            begin
//               mCampoRecursos.SortOnFields('dVentaSumaDLL',False);
//               mCampoRecursos.Last;
//               mCampoRecursos.Edit;
//               mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat := mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat - (dAcumVentaDLL - mActa.FieldByName('dSumsubVentaDLL').AsFloat);
//               mCampoRecursos.Post;
//            end;

//            if (dAcumVentaMN < mActa.FieldByName('dSumSubVentaMN').AsFloat) and (mActa.FieldByName('dSumsubVentaMN').AsFloat > 0) then
//            begin
//               mCampoRecursos.SortOnFields('dVentaSumaMN',False);
//               mCampoRecursos.Last;
//               mCampoRecursos.Edit;
//               mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat := mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat + (mActa.FieldByName('dSumsubVentaMN').AsFloat - dAcumVentaMN);
//               mCampoRecursos.Post;
//            end;

//            if (dAcumVentaDLL < mActa.FieldByName('dSumsubVentaDLL').AsFloat) and (mActa.FieldByName('dSumsubVentaDLL').AsFloat > 0) then
//            begin
//               mCampoRecursos.SortOnFields('dVentaSumaDLL',False);
//               mCampoRecursos.Last;
//               mCampoRecursos.Edit;
//               mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat := mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat + (mActa.FieldByName('dSumsubVentaDLL').AsFloat - dAcumVentaDLL);
//               mCampoRecursos.Post;
//            end;

//            mActa.Filtered := False;
//            mCampoRecursos.Filtered := False;

          {$endregion}

          zAjustesNota.First;
          while not zAjustesNota.Eof do
          begin
//              mCampoRecursos.Filtered := False;
//              mCampoRecursos.Filter   := 'sAnexo = '+ QuotedStr( Anexos.FieldByName('sAnexo').AsString);
//              mCampoRecursos.Filtered := True;

//              while not mCampoRecursos.Eof do
//              begin
//                  if (mCampoRecursos.FieldByName('sNumeroActividad').AsString = zAjustesNota.FieldByName('sNumeroActividad').AsString) and
//                     (mCampoRecursos.FieldByName('sAnexo').AsString = zAjustesNota.FieldByName('sAnexo').AsString) and
//                     (mCampoRecursos.FieldByName('sIdRecurso').AsString = zAjustesNota.FieldByName('sIdRecurso').AsString) then
//                  begin
//                      mCampoRecursos.Edit;
//                      mCampoRecursos.FieldByName('dCantidad').AsFloat  := mCampoRecursos.FieldByName('dCantidad').AsFloat + zAjustesNota.FieldByName('dCantidad').AsFloat;
//                      mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat := mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat + zAjustesNota.FieldByName('dMontoMN').AsFloat;
//                      mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat  := mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat + zAjustesNota.FieldByName('dMontoDLL').AsFloat;
//                      mCampoRecursos.Post;
//                  end;
//                  mCampoRecursos.Next;
//              end;
              zAjustesNota.Next;
          end;
//          mCampoRecursos.Filtered := False;

          Anexos.Next;
      end;

//      mCampoRecursos.SortOnFields('iItemOrden;iOrden',False,False);

      zEspacios := TzReadOnlyQuery.create(nil);
      zEspacios.Connection := Connection.zConnection;
      zEspacios.Active := False;
      zEspacios.SQL.Clear;
      zEspacios.SQL.Add('select * from rd_anexos_nota_espacios where idNota =:Nota and iSeccion =:Seccion');
      zEspacios.ParamByName('Nota').AsInteger    := iParamNota;
      zEspacios.ParamByName('Seccion').AsInteger := 3;
      zEspacios.Open;

      NotaCampo.First;
      while not NotaCampo.Eof do
      begin
//         mCampo.Filtered := False;
//         mCampo.Filter   := 'sNumeroActividad = '+ quotedstr(NotaCampo.FieldByName('sNumeroActividad').AsString);
//         mCampo.Filtered := True;

         zEspacios.Filtered := False;
         zEspacios.Filter   := 'sNumeroActividad = '+ quotedstr(NotaCampo.FieldByName('sNumeroActividad').AsString);
         zEspacios.Filtered := True;

         while not zEspacios.Eof do
         begin
             if zEspacios.FieldByName('sAnexo').AsString = '-1' then
                iEspActividad := zEspacios.FieldByName('iEspacio').AsInteger;

             if zEspacios.FieldByName('sAnexo').AsString = '-2' then
                iEspHorarios := zEspacios.FieldByName('iEspacio').AsInteger;

             zEspacios.Next;
         end;

//         while not mCampo.Eof do
//         begin
//             mNotaCampo.Append;
//             mNotaCampo.FieldByName('sTipo').AsString        := 'Horarios';
//             mNotaCampo.FieldByName('sContrato').AsString    := mCampo.FieldByName('sContrato').AsString;
//             mNotaCampo.FieldByName('sNumeroActividad').AsString := mCampo.FieldByName('sNumeroActividad').AsString;
//             mNotaCampo.FieldByName('sAnexo').AsString       := mCampo.FieldByName('sAnexo').AsString;
//             mNotaCampo.FieldByName('dFecha').AsDateTime     := mCampo.FieldByName('dFecha').AsDateTime;
//             mNotaCampo.FieldByName('mDescripcion').AsString := NotaCampo.FieldByName('mDescripcion').AsString;
//             mNotaCampo.FieldByName('sInicio').AsString      := mCampo.FieldByName('sInicio').AsString ;
//             mNotaCampo.FieldByName('sFinal').AsString       := mCampo.FieldByName('sFinal').AsString ;
//             mNotaCampo.FieldByName('sAfectacion').AsString  := mCampo.FieldByName('sAfectacion').AsString;
//             mNotaCampo.FieldByName('dAnterior').AsFloat     := mCampo.FieldByName('dAnterior').AsFloat;
//             mNotaCampo.FieldByName('dActual').AsFloat       := mCampo.FieldByName('dActual').AsFloat;
//             mNotaCampo.FieldByName('dAcumulado').AsFloat    := mCampo.FieldByName('dAcumulado').AsFloat;
//             mNotaCampo.FieldByName('sDuracion').AsString    := mCampo.FieldByName('sDuracion').AsString;
//
//             mNotaCampo.FieldByName('sIdRecurso').AsString         := '-';
//             mNotaCampo.FieldByName('sDescripcionAnexo').AsString  := '-';
//             mNotaCampo.FieldByName('sDescripcionRecurso').AsString:= '-';
//             mNotaCampo.FieldByName('sMedida').AsString            := '-';
//             mNotaCampo.FieldByName('dCantidad').AsFloat           := 0;
//             mNotaCampo.FieldByName('dVentaMN').AsFloat            := 0;
//             mNotaCampo.FieldByName('dVentaDLL').AsFloat           := 0;
//             mNotaCampo.FieldByName('dVentaSumaMN').AsFloat        := 0;
//             mNotaCampo.FieldByName('dVentaSumaDLL').AsFloat       := 0;
//
//             mNotaCampo.FieldByName('iEspActividad').AsInteger := iEspActividad;
//             mNotaCampo.FieldByName('iEspHorarios').AsInteger  := iEspHorarios;
//             mNotaCampo.Post;
//
//             mCampo.Next;
//         end;

//         mCampoRecursos.Filtered := False;
//         mCampoRecursos.Filter   := 'sNumeroActividad = '+ quotedstr(NotaCampo.FieldByName('sNumeroActividad').AsString);
//         mCampoRecursos.Filtered := True;

//         if mCampoRecursos.FieldByName('sDescripcionAnexo').AsString <> '' then
//         begin
//             mNotaCampo.Edit;
//             mNotaCampo.FieldByName('sDescripcionAnexo').AsString  := mCampoRecursos.FieldByName('sDescripcionAnexo').AsString;
//             mNotaCampo.Post;
//         end;

         sId := '';
//         while not mCampoRecursos.Eof do
//         begin
//             if sId <> mCampoRecursos.FieldByName('sAnexo').AsString then
//             begin
//                 zEspacios.First;
//                 while not zEspacios.Eof do
//                 begin
//                     if zEspacios.FieldByName('sAnexo').AsString = mCampoRecursos.FieldByName('sAnexo').AsString then
//                        iEspRecursos := zEspacios.FieldByName('iEspacio').AsInteger;;
//                     zEspacios.Next;
//                 end;
//                 sId := mCampoRecursos.FieldByName('sAnexo').AsString;
//             end;
//
//             mNotaCampo.Append;
//             mNotaCampo.FieldByName('sTipo').AsString        := 'Recursos';
//             mNotaCampo.FieldByName('sContrato').AsString    := global_contrato;
//             mNotaCampo.FieldByName('sNumeroActividad').AsString := mCampoRecursos.FieldByName('sNumeroActividad').AsString;
//             mNotaCampo.FieldByName('sAnexo').AsString       := mCampoRecursos.FieldByName('sAnexo').AsString;
//             mNotaCampo.FieldByName('dFecha').AsDateTime     := 0;
//             mNotaCampo.FieldByName('mDescripcion').AsString := NotaCampo.FieldByName('mDescripcion').AsString;
//             mNotaCampo.FieldByName('sInicio').AsString      := '00:00';
//             mNotaCampo.FieldByName('sFinal').AsString       := '00:00';
//             mNotaCampo.FieldByName('sAfectacion').AsString  := 'S/A';
//             mNotaCampo.FieldByName('dAnterior').AsFloat     := 0;
//             mNotaCampo.FieldByName('dActual').AsFloat       := 0;
//             mNotaCampo.FieldByName('dAcumulado').AsFloat    := 0;
//             mNotaCampo.FieldByName('sDuracion').AsString    := mCampo.FieldByName('sDuracion').AsString;
//
//             mNotaCampo.FieldByName('sIdRecurso').AsString         := mCampoRecursos.FieldByName('sIdRecurso').AsString;
//             mNotaCampo.FieldByName('sDescripcionAnexo').AsString  := mCampoRecursos.FieldByName('sDescripcionAnexo').AsString;
//             mNotaCampo.FieldByName('sDescripcionRecurso').AsString:= mCampoRecursos.FieldByName('sDescripcionRecurso').AsString;
//             mNotaCampo.FieldByName('sMedida').AsString            := mCampoRecursos.FieldByName('sMedida').AsString;
//             mNotaCampo.FieldByName('dCantidad').AsFloat           := mCampoRecursos.FieldByName('dCantidad').AsFloat;
//             mNotaCampo.FieldByName('dVentaMN').AsFloat            := mCampoRecursos.FieldByName('dVentaMN').AsFloat;
//             mNotaCampo.FieldByName('dVentaDLL').AsFloat           := mCampoRecursos.FieldByName('dVentaDLL').AsFloat;
//             mNotaCampo.FieldByName('dVentaSumaMN').AsFloat        := mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat;
//             mNotaCampo.FieldByName('dVentaSumaDLL').AsFloat       := mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat;
//
//             mNotaCampo.FieldByName('iEspRecursos').AsInteger  := iEspRecursos;
//             mNotaCampo.FieldByName('iEspActividad').AsInteger := iEspActividad;
//             mNotaCampo.FieldByName('iEspHorarios').AsInteger  := iEspHorarios;
//             mNotaCampo.Post;
//             mCampoRecursos.Next;
//         end;

         NotaCampo.Next;
      end;

    {$endregion}

    {$region 'Desglose de costos'}
      Anexos.First;
      while not Anexos.Eof do
      begin
          {$region 'Consultas'}
          qry_tripulacion.Active := False;
          qry_tripulacion.SQL.Clear;
          if (Anexos.FieldByName('Nomenclatura').AsString = '2.') or (Anexos.FieldByName('Nomenclatura').AsString = '3.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
          begin
              //>>Personal<<
              if (Anexos.FieldByName('Nomenclatura').AsString = '2.') then
              begin
                 qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                'bp.sDescripcion as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                'FROM bitacoradepersonal bp '+
                                'inner join bitacoradeactividades ba '+
                                'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                'from moe m '+
                                'where m.sContrato = bp.sContrato '+
                                'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                '                    from moe m1 '+
                                '                    where m1.sContrato = bp.sContrato '+
                                '                    and m1.dIdFecha <= bp.dIdFecha '+
                                '                  ) '+
                                ')                           '+
                                'and eTipoRecurso = "Personal") '+
                                'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                                'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra order by e.iItemOrden ');
                 qry_tripulacion.ParamByName('Anexo').AsString           := Anexos.FieldByName('sAnexo').AsString ;
              end
              else
              if (Anexos.FieldByName('Nomenclatura').AsString = '5.') then
              begin
                    qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                ' bp.sDescripcion as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'sum(bp.dCantidad) as Total, '+
                                '0 AS Ajuste, 0 as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                'FROM bitacoradetiemposextras bp '+

                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                                'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+

                            'union '+
                            'SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                                ' bp.sDescripcion as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                                'FROM bitacoradepersonal bp '+
                                'inner join bitacoradeactividades ba '+
                                'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                                'from moe m '+
                                'where m.sContrato = bp.sContrato '+
                                'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                '                    from moe m1 '+
                                '                    where m1.sContrato = bp.sContrato '+
                                '                    and m1.dIdFecha <= bp.dIdFecha '+
                                '                  ) '+
                                ') '+
                                'and eTipoRecurso = "Personal") '+
                                'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                                'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                                'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+
                            'order by iItemOrden ');
                   qry_tripulacion.ParamByName('Anexo').AsString := Anexos.FieldByName('sAnexo').AsString ;
              end
              else
              //>>Equipo<<
                 qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdEquipo as sIdRecurso, bp.sDescripcion, '+
                                ' bp.sDescripcion as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                                'o.sIdFolio as sDescripcionFolio, '+
                                'round(sum(bp.dCantHH),2) as Total, '+
                                'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                                'FROM bitacoradeequipos bp '+
                                'inner join bitacoradeactividades ba '+
                                'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                                'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                                'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                                'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdEquipo and mr.iIdMoe = ( select m.iIdMoe '+
                                'from moe m '+
                                'where m.sContrato = bp.sContrato '+
                                'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                                '                    from moe m1 '+
                                '                    where m1.sContrato = bp.sContrato '+
                                '                    and m1.dIdFecha <= bp.dIdFecha '+
                                '                  ) '+
                                ')                           '+
                                'and eTipoRecurso = "Equipo") '+
                                'inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo = bp.sIdEquipo) '+
                                'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.didfecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                                'and bp.sIdEquipo like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bp.sTipoObra order by e.iItemOrden ');

              qry_tripulacion.ParamByName('Tipo').AsString             := sParamTipoObra;
          end;

          if (Anexos.FieldByName('Nomenclatura').AsString = '1.') then
          begin
              qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, tp.sIdTipoMovimiento as sIdRecurso, tp.sDescripcion, '+
                              'tp.sDescripcion as sDescripcionRecurso, o.sNumeroOrden, tp.sMedida as sMedida, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'round(sum(bp.sFactor),6) as Total, '+
                              'ifnull(SUM(bp.sFactorBarco),0) AS Ajuste, 0.00000 as dSolicitado, tp.dVentaMN, tp.dVentaDLL '+
                              'FROM movimientosxfolios bp '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sNumeroOrden and o.sNumeroOrden = bp.sFolio ) '+
                              'inner join movimientosdeembarcacion me on (me.sContrato =bp.sContrato and me.dIdFecha = bp.dIdFecha and me.iIdDiario = bp.iIddiario ) '+
                              'inner join tiposdemovimiento tp on (tp.sContrato = bp.sContrato and tp.sIdTipoMovimiento = me.sClasificacion and tp.sClasificacion = "Movimiento de barco") '+
                              'WHERE bp.scontrato =:ContratoBarco AND bp.sNumeroOrden =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                              'and me.sClasificacion like :categoria and bp.sfolio like :folio '+
                              'group by bp.sFolio, bp.iIddiario order by o.iOrden');

          end;

          if (Anexos.FieldByName('Nomenclatura').AsString = '4.') then
          begin
              qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdCuenta as sIdRecurso, bp.sIdCategoria, c.sDescripcion, '+
                              'c.sDescripcion as sDescripcionRecurso, o.sNumeroOrden, c.sMedida, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'sum(bp.dCantidad) as Total, '+
                              '0.00000 AS Ajuste, 0.00000 as dSolicitado, c.iOrden as Ordena, c.dVentaMN, c.dVentaDLL '+
                              'FROM bitacoradepernocta bp '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'inner join cuentas c on (c.sIdCuenta = bp.sIdCuenta) '+
                              'WHERE bp.sContrato =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                              'and bp.sIdCuenta like :Categoria and bp.sNumeroOrden like :Folio and :ContratoBarco = :ContratoBarco '+
                              'group by dIdFecha, sNumeroOrden, sIdCategoria '+
                        'union '+
                        'select bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra, bp.sTipoPernocta as sIdRecurso, bp.sIdPersonal, cc.sDescripcion, '+
                              'cc.sDescripcion as sDescripcionRecurso, o.sNumeroOrden, cc.sMedida, '+
                              '    o.sIdFolio as sDescripcionFolio, '+
                              'round(sum( bp.dCantHH),2) as Total, '+
                              'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, cc.iOrden as Ordena, cc.dVentaMN, cc.dVentaDLL '+
                              'from bitacoradepersonal bp '+
                              'inner join cuentas cc on (cc.sIdCuenta = bp.sTipoPernocta) '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'where bp.sContrato =:Contrato '+
                              'and bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                              'and bp.sNumeroOrden like :Folio and bp.sTipoObra like :Tipo and bp.lAplicaPernocta = "Si" '+
                        'group by dIdFecha, sNumeroOrden, sIdPersonal '+
                        'order by Ordena');
                qry_tripulacion.ParamByName('Tipo').AsString             := '%';
          end;

          if (Anexos.FieldByName('Nomenclatura').AsString = '6.') or (Anexos.FieldByName('Nomenclatura').AsString = '7.') or (Anexos.FieldByName('Nomenclatura').AsString = '8.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '9.') or (Anexos.FieldByName('Nomenclatura').AsString = '11.') or (Anexos.FieldByName('Nomenclatura').AsString = 'E.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '12.') or (Anexos.FieldByName('Nomenclatura').AsString = '13.') or (Anexos.FieldByName('Nomenclatura').AsString = '10.') or
             (Anexos.FieldByName('Nomenclatura').AsString = '14.') or (Anexos.FieldByName('Nomenclatura').AsString = '15.') or (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
          begin
              if (Anexos.FieldByName('Nomenclatura').AsString = '6.') then
                 local_tipo := 'C6';

              if (Anexos.FieldByName('Nomenclatura').AsString = '7.') then
                 local_tipo := 'C7';

              if (Anexos.FieldByName('Nomenclatura').AsString = '8.') then
                 local_tipo := 'C8';

              if (Anexos.FieldByName('Nomenclatura').AsString = '9.') then
                 local_tipo := 'C9';

              if (Anexos.FieldByName('Nomenclatura').AsString = '10.') then
                 local_tipo := 'C10';

              if (Anexos.FieldByName('Nomenclatura').AsString = '11.') then
                 local_tipo := 'C11';

              if (Anexos.FieldByName('Nomenclatura').AsString = '12.') then
                 local_tipo := 'C12';

              if (Anexos.FieldByName('Nomenclatura').AsString = '13.') then
                 local_tipo := 'C13';

              if (Anexos.FieldByName('Nomenclatura').AsString = '14.') then
                 local_tipo := 'C14';

              if (Anexos.FieldByName('Nomenclatura').AsString = '15.') then
                 local_tipo := 'C15';

              if (Anexos.FieldByName('Nomenclatura').AsString = '16.') then
                 local_tipo := 'C16';

              if (Anexos.FieldByName('Nomenclatura').AsString = 'E.') then
                 local_tipo := 'C';

              qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdMaterial as sIdRecurso, substr(ax.mDescripcion,1,1000) as sDescripcion, '+
                              'bp.mDescripcion as sDescripcionRecurso, o.sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'sum(bp.dCantidad) as Total, '+
                              '0.00000 AS Ajuste, 0.00000 as dSolicitado, ax.dVentaMN, ax.dVentaDLL '+
                              'FROM bitacorademateriales bp '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bp.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                              'WHERE bp.scontrato =:contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                              'and bp.sIdMaterial like :Categoria and bp.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                              'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdMaterial order by ax.iItemOrden');
               qry_tripulacion.params.ParamByName('Anexo').asString  := local_tipo;
          end;

          qry_tripulacion.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
          qry_tripulacion.params.ParamByName('contrato').asString       := global_contrato;
          qry_tripulacion.params.ParamByName('fechaI').AsDate           := dParamFechaI;
          qry_tripulacion.params.ParamByName('fechaF').AsDate           := dParamFechaF;

          qry_tripulacion.params.ParamByName('categoria').DataType := ftString;
          qry_tripulacion.params.ParamByName('categoria').Value := '%';
          qry_tripulacion.params.ParamByName('folio').DataType := ftString;
          qry_tripulacion.params.ParamByName('folio').Value     :=  Folios.FieldByName('sNumeroOrden').AsString;

          qry_tripulacion.Open;
          {$endregion}

          dTotalVentaMN  := 0;
          dTotalVentaDLL := 0;
          dCantidad      := 0;
          sId := '';
          lEncuentra := False;
          qry_tripulacion.First;
          while not qry_tripulacion.Eof do
          begin
              if sId <> qry_tripulacion.FieldByName('sIdRecurso').AsString then
              begin
                  sId := qry_tripulacion.FieldByName('sIdRecurso').AsString;
                  dTotalVentaMN  := 0;
                  dTotalVentaDLL := 0;
                  dCantidad      := 0;

//                  mDesglose.Append;
//                  mDesglose.FieldByName('sContrato').AsString          := global_contrato;
//                  mDesglose.FieldByName('sDescripcionAnexo').AsString  := Anexos.FieldByName('sAnexoDescripcion2').AsString;
//                  mDesglose.FieldByName('sAnexo').AsString             := Anexos.FieldByName('sAnexo').AsString;
//                  mDesglose.FieldByName('iOrdenAnexo').AsInteger       := Anexos.FieldByName('iOrden').AsInteger;
//                  mDesglose.FieldByName('iOrden').AsInteger            := 1;
//                  mDesglose.FieldByName('sIdRecurso').AsString         := qry_tripulacion.FieldByName('sIdRecurso').AsString;
//                  mDesglose.FieldByName('mDescripcion').AsString       := NotaCampo.FieldByName('mDescripcion').AsString;
//                  mDesglose.FieldByName('sDescripcionRecurso').AsString:= qry_tripulacion.FieldByName('sDescripcionRecurso').AsString;
//                  mDesglose.FieldByName('sMedida').AsString            := qry_tripulacion.FieldByName('sMedida').AsString;
//                  mDesglose.FieldByName('dCantidad').AsFloat           := 0;
//                  mDesglose.FieldByName('dVentaMN').AsFloat            := qry_tripulacion.FieldByName('dVentaMN').AsFloat;
//                  mDesglose.FieldByName('dVentaDLL').AsFloat           := qry_tripulacion.FieldByName('dVentaDLL').AsFloat;
//                  mDesglose.FieldByName('dVentaSumaMN').AsFloat        := 0;
//                  mDesglose.FieldByName('dVentaSumaDLL').AsFloat       := 0;
//                  mDesglose.Post;
              end;

              dCantidad  := dCantidad +  (qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat);
              dTotalVentaMN  := dTotalVentaMN  + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)* qry_tripulacion.FieldByName('dVentaMN').AsFloat);
              dTotalVentaDLL := dTotalVentaDLL + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)* qry_tripulacion.FieldByName('dVentaDLL').AsFloat);

//              mDesglose.Edit;
//              mDesglose.FieldByName('dCantidad').AsFloat           := dCantidad;
//              mDesglose.FieldByName('dVentaSumaMN').AsFloat        := XRound(dTotalVentaMN,2);
//              mDesglose.FieldByName('dVentaSumaDLL').AsFloat       := xRound(dTotalVentaDLL,2);
//              mDesglose.Post;

              qry_tripulacion.Next;
          end;

          if qry_tripulacion.RecordCount > 0 then
          begin
              if Anexos.FieldByName('sAnexo').AsString = '1' then
              begin
                  if dFactorGeneradores <> dCantidad then
                     dCantidad := dFactorGeneradores;
//                  mDesglose.Edit;
//                  mDesglose.FieldByName('dCantidad').AsFloat           := dCantidad;
//                  mDesglose.FieldByName('dVentaSumaMN').AsFloat        := XRound((dCantidad * qry_tripulacion.FieldByName('dVentaMN').AsFloat),2);
//                  mDesglose.FieldByName('dVentaSumaDLL').AsFloat       := XRound((dCantidad * qry_tripulacion.FieldByName('dVentaDLL').AsFloat),2);
//                  mDesglose.Post;

              end;
          end;

          {$region 'Ajuste Montos Centavos '}

//            mActa.Filtered := False;
//            mActa.Filter   := 'sAnexo = ' + QuotedStr(Anexos.FieldByName('sAnexo').AsString);
//            mActa.Filtered := True;
//
//            mDesglose.Filtered := False;
//            mDesglose.Filter   := 'sAnexo = '+ QuotedStr(Anexos.FieldByName('sAnexo').AsString);
//            mDesglose.Filtered := True;

            dAcumVentaMN   := 0;
            dAcumVentaDLL  := 0;
//            mDesglose.First;
//            while not mDesglose.Eof do
//            begin
//                dAcumVentaMN  := dAcumVentaMN  + mDesglose.FieldByName('dVentaSumaMN').AsFloat;
//                dAcumVentaDLL := dAcumVentaDLL + mDesglose.FieldByName('dVentaSumaDLL').AsFloat;
//                mDesglose.Next;
//            end;

//            if (dAcumVentaMN > mActa.FieldByName('dSumSubVentaMN').AsFloat) and (mActa.FieldByName('dSumSubVentaMN').AsFloat > 0)  then
//            begin
////               mDesglose.SortOnFields('dVentaSumaMN',False);
////               mDesglose.Last;
////               mDesglose.Edit;
////               mDesglose.FieldByName('dVentaSumaMN').AsFloat := mDesglose.FieldByName('dVentaSumaMN').AsFloat - (dAcumVentaMN - mActa.FieldByName('dSumsubVentaMN').AsFloat);
////               mDesglose.Post;
//
//            end;

//            if (dAcumVentaDLL > mActa.FieldByName('dSumsubVentaDLL').AsFloat) and (mActa.FieldByName('dSumsubVentaDLL').AsFloat > 0) then
//            begin
//               mDesglose.SortOnFields('dVentaSumaDLL',False);
//               mDesglose.Last;
//               mDesglose.Edit;
//               mDesglose.FieldByName('dVentaSumaDLL').AsFloat := mDesglose.FieldByName('dVentaSumaDLL').AsFloat - (dAcumVentaDLL - mActa.FieldByName('dSumsubVentaDLL').AsFloat);
//               mDesglose.Post;
//            end;

//            if (dAcumVentaMN < mActa.FieldByName('dSumSubVentaMN').AsFloat) and (mActa.FieldByName('dSumsubVentaMN').AsFloat > 0) then
//            begin
//               mDesglose.SortOnFields('dVentaSumaMN',False);
//               mDesglose.Last;
//               mDesglose.Edit;
//               mDesglose.FieldByName('dVentaSumaMN').AsFloat := mDesglose.FieldByName('dVentaSumaMN').AsFloat + (mActa.FieldByName('dSumsubVentaMN').AsFloat - dAcumVentaMN);
//               mDesglose.Post;
//            end;

//            if (dAcumVentaDLL < mActa.FieldByName('dSumsubVentaDLL').AsFloat) and (mActa.FieldByName('dSumsubVentaDLL').AsFloat > 0) then
//            begin
//               mDesglose.SortOnFields('dVentaSumaDLL',False);
//               mDesglose.Last;
//               mDesglose.Edit;
//               mDesglose.FieldByName('dVentaSumaDLL').AsFloat := mDesglose.FieldByName('dVentaSumaDLL').AsFloat + (mActa.FieldByName('dSumsubVentaDLL').AsFloat - dAcumVentaDLL);
//               mDesglose.Post;
//            end;

//            mActa.Filtered := False;
//            mDesglose.Filtered := False;

          {$endregion}

          zAjustesNota.First;
          while not zAjustesNota.Eof do
          begin
//              mDesglose.Filtered := False;
//              mDesglose.Filter   := 'sAnexo = '+ QuotedStr( Anexos.FieldByName('sAnexo').AsString);
//              mDesglose.Filtered := True;

//              while not mDesglose.Eof do
//              begin
//                  if (mDesglose.FieldByName('sAnexo').AsString = zAjustesNota.FieldByName('sAnexo').AsString) and
//                     (mDesglose.FieldByName('sIdRecurso').AsString = zAjustesNota.FieldByName('sIdRecurso').AsString) then
//                  begin
//                      mDesglose.Edit;
//                      mDesglose.FieldByName('dCantidad').AsFloat  := mDesglose.FieldByName('dCantidad').AsFloat + zAjustesNota.FieldByName('dCantidad').AsFloat;
//                      mDesglose.FieldByName('dVentaSumaMN').AsFloat := mDesglose.FieldByName('dVentaSumaMN').AsFloat + zAjustesNota.FieldByName('dMontoMN').AsFloat;
//                      mDesglose.FieldByName('dVentaSumaDLL').AsFloat  := mDesglose.FieldByName('dVentaSumaDLL').AsFloat + zAjustesNota.FieldByName('dMontoDLL').AsFloat;
//                      mDesglose.Post;
//                  end;
//                  mDesglose.Next;
//              end;
              zAjustesNota.Next;
          end;
//          mDesglose.Filtered := False;

          Anexos.Next;
      end;

      zEspacios.Filtered := False;
      zEspacios.Active := False;
      zEspacios.SQL.Clear;
      zEspacios.SQL.Add('select * from rd_anexos_nota_espacios where idNota =:Nota and iSeccion =:Seccion');
      zEspacios.ParamByName('Nota').AsInteger    := iParamNota;
      zEspacios.ParamByName('Seccion').AsInteger := 4;
      zEspacios.Open;

      Anexos.First;
      while not Anexos.Eof do
      begin
//         mDesglose.Filtered := False;
//         mDesglose.Filter   := 'sAnexo = '+ quotedstr(Anexos.FieldByName('sAnexo').AsString);
//         mDesglose.Filtered := True;

         sId := '';
//         while not mDesglose.Eof do
//         begin
//             if sId <> mDesglose.FieldByName('sAnexo').AsString then
//             begin
//                 zEspacios.RecordCount;
//                 zEspacios.First;
//                 while not zEspacios.Eof do
//                 begin
//                     if zEspacios.FieldByName('sAnexo').AsString = mDesglose.FieldByName('sAnexo').AsString then
//                        iEspRecursos := zEspacios.FieldByName('iEspacio').AsInteger;;
//                     zEspacios.Next;
//                 end;
//                 sId := mDesglose.FieldByName('sAnexo').AsString;
//             end;
//             mDesglose.Append;
//             mDesglose.FieldByName('sTipo').AsString              := 'Recursos';
//             mDesglose.FieldByName('sContrato').AsString          := global_contrato;
//             mDesglose.FieldByName('sDescripcionAnexo').AsString  := Anexos.FieldByName('sAnexoDescripcion2').AsString;
//             mDesglose.FieldByName('sAnexo').AsString             := Anexos.FieldByName('sAnexo').AsString;
//             mDesglose.FieldByName('iOrdenAnexo').AsInteger       := Anexos.FieldByName('iOrden').AsInteger;
//             mDesglose.FieldByName('iOrden').AsInteger            := 0;
//             mDesglose.FieldByName('sIdRecurso').AsString         := 'N/A';
//             mDesglose.FieldByName('mDescripcion').AsString       := 'N/A';
//             mDesglose.FieldByName('sDescripcionRecurso').AsString:= 'N/A';
//             mDesglose.FieldByName('sMedida').AsString            := 'N/A';
//             mDesglose.FieldByName('dCantidad').AsFloat           := 0;
//             mDesglose.FieldByName('dVentaMN').AsFloat            := 0;
//             mDesglose.FieldByName('dVentaDLL').AsFloat           := 0;
//             mDesglose.FieldByName('dVentaSumaMN').AsFloat        := 0;
//             mDesglose.FieldByName('dVentaSumaDLL').AsFloat       := 0;
//             mDesglose.FieldByName('iEspRecursos').AsInteger      := iEspRecursos;
//             mDesglose.Post;
//             mDesglose.Next;
//         end;
         Anexos.Next;
      end;
//      mDesglose.Filtered := False;
//      mDesglose.SortOnFields('iOrdenAnexo;iOrden',False,False);

    {$endregion}

    {$region 'Resumen de Costos'}
    NotaCampo.First;
    while not NotaCampo.Eof do
    begin
//        mCampoRecursos.Filtered := False;
//        mCampoRecursos.Filter   := 'sNumeroActividad = ' + QuotedStr(NotaCampo.FieldByName('sNumeroActividad').AsString);
//        mCampoRecursos.Filtered := True;
//
//        mCampoRecursos.SortOnFields('iItemOrden;iOrden',False,False);

        lEncuentra := False;
        sId := '';
        dCantidad := 0;
        dTotalVentaMN  := 0;
        dTotalVentaDLL := 0;

//        mCampoRecursos.First;
//        while not mCampoRecursos.Eof do
//        begin
//            lEncuentra := False;
//            if sId <> mCampoRecursos.FieldByName('sAnexo').AsString then
//            begin
//                if sId <> '' then
//                begin
//                    mConceptos.Edit;
//                    mConceptos.FieldByName('dCantidad').AsFloat           := dCantidad;
//                    mConceptos.FieldByName('dVentaSumaMN').AsFloat        := dTotalVentaMN;
//                    mConceptos.FieldByName('dVentaSumaDLL').AsFloat       := dTotalVentaDLL;
//                    mConceptos.Post;
//                end;
//
//                mConceptos.Append;
//                mConceptos.FieldByName('sContrato').AsString          := global_contrato;
//                mConceptos.FieldByName('sAnexo').AsString             := mCampoRecursos.FieldByName('sAnexo').AsString;
//                mConceptos.FieldByName('sNumeroActividad').AsString   := NotaCampo.FieldByName('sNumeroActividad').AsString;
//                mConceptos.FieldByName('mDescripcion').AsString       := NotaCampo.FieldByName('mDescripcion').AsString;
//                mConceptos.FieldByName('sDescripcionAnexo').AsString  := mCampoRecursos.FieldByName('sDescripcionAnexo').AsString;
//                mConceptos.FieldByName('dCantidad').AsFloat           := 0;
//                mConceptos.FieldByName('dVentaMN').AsFloat            := mCampoRecursos.FieldByName('dVentaMN').AsFloat;
//                mConceptos.FieldByName('dVentaDLL').AsFloat           := mCampoRecursos.FieldByName('dVentaDLL').AsFloat;
//                mConceptos.FieldByName('dVentaSumaMN').AsFloat        := 0;
//                mConceptos.FieldByName('dVentaSumaDLL').AsFloat       := 0;
//                mConceptos.FieldByName('dVentaTotalMN').AsFloat       := 0;
//                mConceptos.FieldByName('dVentaTotalDLL').AsFloat      := 0;
//                mConceptos.FieldByName('dVentaTotalGralMN').AsFloat   := 0;
//                mConceptos.FieldByName('dVentaTotalGralDLL').AsFloat  := 0;
//                mConceptos.Post;
//
//                dCantidad      := 0;
//                dTotalVentaMN  := 0;
//                dTotalVentaDLL := 0;
//                sId := mCampoRecursos.FieldByName('sAnexo').AsString;
//            end;
//
//            dCantidad      := dCantidad      + mCampoRecursos.FieldByName('dCantidad').AsFloat;
//            dTotalVentaMN  := dTotalVentaMN  + mCampoRecursos.FieldByName('dVentaSumaMN').AsFloat;
//            dTotalVentaDLL := dTotalVentaDLL + mCampoRecursos.FieldByName('dVentaSumaDLL').AsFloat;
//            mCampoRecursos.Next;
//        end;

        if dCantidad > 0 then
        begin
//            mConceptos.Edit;
//            mConceptos.FieldByName('dCantidad').AsFloat      := dCantidad;
//            mConceptos.FieldByName('dVentaSumaMN').AsFloat   := dTotalVentaMN;
//            mConceptos.FieldByName('dVentaSumaDLL').AsFloat  := dTotalVentaDLL;
//            mConceptos.Post;
            dCantidad      := 0;
            dTotalVentaMN  := 0;
            dTotalVentaDLL := 0;
        end;

        if lEncuentra = False then
        begin
//            mConceptos.Append;
//            mConceptos.FieldByName('sContrato').AsString          := global_contrato;
//            mConceptos.FieldByName('sAnexo').AsString             := '';
//            mConceptos.FieldByName('sNumeroActividad').AsString   := NotaCampo.FieldByName('sNumeroActividad').AsString;
//            mConceptos.FieldByName('mDescripcion').AsString       := NotaCampo.FieldByName('mDescripcion').AsString;
//            mConceptos.FieldByName('sDescripcionAnexo').AsString  := '0';
//            mConceptos.FieldByName('dCantidad').AsFloat           := 0;
//            mConceptos.FieldByName('dVentaMN').AsFloat            := 0;
//            mConceptos.FieldByName('dVentaDLL').AsFloat           := 0;
//            mConceptos.FieldByName('dVentaSumaMN').AsFloat        := 0;
//            mConceptos.FieldByName('dVentaSumaDLL').AsFloat       := 0;
//            mConceptos.FieldByName('dVentaTotalMN').AsFloat       := 0;
//            mConceptos.FieldByName('dVentaTotalDLL').AsFloat      := 0;
//            mConceptos.FieldByName('dVentaTotalGralMN').AsFloat   := 0;
//            mConceptos.FieldByName('dVentaTotalGralDLL').AsFloat  := 0;
//            mConceptos.Post;
        end;

        Notacampo.Next;
    end;

    if dCantidad > 0 then
    begin
//        mConceptos.Edit;
//        mConceptos.FieldByName('dCantidad').AsFloat      := dCantidad;
//        mConceptos.FieldByName('dVentaSumaMN').AsFloat   := dTotalVentaMN;
//        mConceptos.FieldByName('dVentaSumaDLL').AsFloat  := dTotalVentaDLL;
//        mConceptos.Post;
    end;
//    mCampoRecursos.Filtered := False;

    //Aqui eliminamos en codigo los registros que están en cero.
    sNumeroActividad := '';
//    mConceptos.First;
    i := 0;
//    while not mConceptos.Eof do
//    begin
//       if mConceptos.FieldByName('sNumeroActividad').AsString <> sNumeroActividad then
//       begin
//          i := 0;
//          sNumeroActividad := mConceptos.FieldByName('sNumeroActividad').AsString;
//       end;
//
//       if (mConceptos.FieldByName('sDescripcionAnexo').AsString = '0') and (i > 0)  then
//           mConceptos.Delete
//       else
//          mConceptos.Next;
//
//       inc(i);
//    end;

    {$endregion}

    {$region 'Conceptos por interferencia'}
      //Horarios con afectaciones
      zDesglose := TzReadOnlyQuery.create(nil);
      zDesglose.Connection := Connection.zConnection;
      zDesglose.Active := False;
      zDesglose.SQL.Add('select o.sContrato, b.dIdFecha, tp.sDescripcion, tp.sIdTipoMovimiento, '+
                'b.sHorainicio, b.sHorafinal, b.sIdClasificacion, b.iIdDiario '+
                'from ordenesdetrabajo o '+
                'inner join bitacoradeactividades b on (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden and b.sIdConvenio =:convenio '+
                'and b.sIdTipoMovimiento <> "E" and lImprime = "Si") '+
                'inner join tiposdemovimiento tp on (tp.sContrato =:ContratoBarco and tp.sIdTipoMovimiento = b.sIdClasificacion '+
                'and tp.sIdTipoMovimiento <> "DESMOV" and tp.sIdTipoMovimiento <> "MOV" and tp.sIdTipoMovimiento <> "TE") '+
                'where o.sContrato =:contrato and b.sNumeroOrden like :folio '+
                'group by b.dIdFecha, b.iIdDiario, tp.sIdTipoMovimiento '+
                'order by tp.iOrden, o.iOrden, b.dIdFecha, b.sHoraInicio');
      zDesglose.ParamByName('Contrato').AsString   := global_contrato;
      zDesglose.ParamByName('ContratoBarco').AsString   := global_contrato_barco;
      zDesglose.ParamByName('Convenio').AsString   := sParamConvenio;
      zDesglose.ParamByName('Folio').AsString      := sParamFolio;
      zDesglose.Open;

      sId := '';
      sSumaHora := '00:00';
      sSumaHoraTotal := '00:00';
      while not zDesglose.Eof do
      begin
         if sId <> zDesglose.FieldByName('sIdTipoMovimiento').AsString then
         begin
             sSumaHora := '00:00';
             sId := zDesglose.FieldByName('sIdTipoMovimiento').AsString;
//             mResumen.Append;
//             mResumen.FieldByName('sContrato').AsString             := global_contrato;
//             mResumen.FieldByName('sIdClasificacion').AsString      := zDesglose.FieldByName('sIdTipoMovimiento').asString;
//             mResumen.FieldByName('sDescripcion').AsString          := zDesglose.FieldByName('sDescripcion').AsString;
//             mResumen.FieldByName('sSumaClasificacion').AsString    := '00:00';
//             mResumen.FieldByName('sTotalClasificacion').AsString   := '00:00';
//             mResumen.Post;
         end;
         sSumaHora := sfnSumaHoras(sSumaHora,sfnRestaHoras(zDesglose.FieldByName('sHoraFinal').AsString, zDesglose.FieldByName('sHoraInicio').AsString));
         sSumaHoraTotal := sfnSumaHoras(sSumaHoraTotal,sfnRestaHoras(zDesglose.FieldByName('sHoraFinal').AsString, zDesglose.FieldByName('sHoraInicio').AsString));

//         mResumen.Edit;
//         mResumen.FieldByName('sSumaClasificacion').AsString  := sSumaHora;
//         mResumen.Post;
         zDesglose.Next;
      end;

      if zDesglose.RecordCount > 0 then
      begin
//          mResumen.Edit ;
//          mResumen.FieldByName('sTotalClasificacion').AsString  := sSumaHoraTotal;
//          mResumen.Post;
      end;

      if zDesglose.RecordCount = 0 then
      begin
//          mResumen.Append;
//          mResumen.FieldByName('sContrato').AsString             := global_contrato;
//          mResumen.FieldByName('sIdClasificacion').AsString      := 'N/A';
//          mResumen.FieldByName('sDescripcion').AsString          := 'No Aplica';
//          mResumen.FieldByName('sSumaClasificacion').AsString    := '00:00';
//          mResumen.FieldByName('sTotalClasificacion').AsString   := '00:00';
//          mResumen.Post;
      end;

    {$endregion}

    Anexos.First;
    while not Anexos.Eof do
    begin
        zAjustesNota.Filtered := False;
        zAjustesNota.Filter   := 'sAnexo = '+ QuotedStr(Anexos.FieldByName('sAnexo').AsString);
        zAjustesNota.Filtered := True;

        lEncuentra := False;
        dTotalVentaMN   := 0;
        dTotalVentaDLL  := 0;
        dCantidad       := 0;
        while not zAjustesNota.Eof do
        begin
            dTotalVentaMN   := dTotalVentaMN + zAjustesNota.FieldByName('dMontoMN').AsFloat;
            dTotalVentaDLL  := dTotalVentaDLL + zAjustesNota.FieldByName('dMontoDLL').AsFloat;
            dCantidad       := dCantidad +zAjustesNota.FieldByName('dCantidad').AsFloat;
            lEncuentra := True;
            zAjustesNota.Next;
        end;

        if lEncuentra then
        begin
//            mActa.Locate('sAnexo',Anexos.FieldByName('sAnexo').AsString,[]);
//
//            mActa.Edit;
//            mActa.FieldByName('dSumSubVentaMN').AsFloat  := mActa.FieldByName('dSumSubVentaMN').AsFloat + dTotalVentaMN;
//            mActa.FieldByName('dSumSubVentaDLL').AsFloat := mActa.FieldByName('dSumSubVentaDLL').AsFloat + dTotalVentaDLL;
//            mActa.Post;
        end;
        zAjustesNota.Filtered := False;

        Anexos.Next;
    end;

    {$region 'Configuracion'}
    qryConfiguracion := TZReadOnlyQuery.Create(nil);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sReportesCIA, c.sDireccion1, c.sDireccion2, '+
                  'c.bImagen, c.sContrato, c.sNombre, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c2.sMascara as sLabelContrato, '+
                  'c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, c2.sMascara as sLabelContrato, '+
                  'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, sFirmante1, sFirmante2, sFirmante3, sPuesto1, sPuesto2, sPuesto3, sFicha1, sFicha2, sFicha3, '+
                  '(select mDescripcion from rd_proyectos where sContrato =:ContratoBarco) as mDescripcionBarco, '+
                  '(select sTitulo from rd_proyectos where sContrato =:ContratoBarco) as sTituloActa, '+
                  '(select sDescripcion from embarcaciones where sContrato =:ContratoBarco and sAplicaDiesel ="Si" and sTipo ="Principal") as Embarcacion, '+
                  '(select sIdFolio from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Folio) as sFolio, '+
                  '(select mDescripcion from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Folio) as sDescripcionFolio, '+
                  '(select dFiProgramado from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Folio) as dFechaIFolio, '+
                  '(select dFFProgramado from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Folio) as dFechaFFolio, '+
                  '(select dFechaInicio from actividadesxorden where sContrato =:Contrato and sNumeroOrden =:Folio and sIdConvenio =:Convenio and iNivel = 0) as sFechaI, '+
                  '(select dFechaFinal from actividadesxorden where sContrato =:Contrato and sNumeroOrden =:Folio and sIdConvenio =:Convenio and iNivel = 0) as sFechaF, '+
                  '(select p.sDescripcion from ordenesdetrabajo o '+
                  'inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma_nota) '+
                  'where sContrato =:Contrato and sNumeroOrden =:Folio ) as sPlataformaFolio, '+
                  '(select p.sIdActivo from ordenesdetrabajo o '+
                  'inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma) '+
                  'where sContrato =:Contrato and sNumeroOrden =:Folio ) as sActivo, '+
                  '(select a.sDescripcion from rd_nota_campo o '+
                  'inner join activos a on (o.sIdActivo = a.sIdActivo) '+
                  'where sContrato =:Contrato and sNumeroOrden =:Folio ) as sDescripcionActivo '+
                  'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                  'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio and (c3.sNumeroOrden =:ConvenioOT or c3.sNumeroOrden = "CC00" )) '+
                  'left join rd_firmas rf on (rf.sContrato =:Contrato and idFirma = (select idFirma from rd_nota_campo where sContrato =:Contrato and sNumeroOrden =:Folio and sTipoActa =:Tipo limit 1)) '+
                  'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').asString      := sParamContrato;
    QryConfiguracion.Params.ParamByName('contratoBarco').asString := global_contrato_barco;
    QryConfiguracion.Params.ParamByName('Folio').asString         := sParamFolio;
    QryConfiguracion.Params.ParamByName('Convenio').asString      := sParamConvenio;
    QryConfiguracion.Params.ParamByName('ConvenioOT').asString    := sParamConvenioOT;
    QryConfiguracion.Params.ParamByName('Tipo').asString          := sParamTipoActa;
    QryConfiguracion.Open;
    {$endregion}

    dsActaFolio:= TfrxDBDataSet.Create(Nil);
    dsActaFolio.UserName   :='dsActaFolio';
//    dsActaFolio.DataSet    := mActa;
    dsActaFolio.FieldAliases.Clear;

    dsGeneradorFolio := TfrxDBDataSet.Create(nil);
//    dsGeneradorFolio.DataSet  := mDatos;
    dsGeneradorFolio.UserName := 'dsGeneradorFolio';
    dsGeneradorFolio.FieldAliases.Clear;

    dsCampo := TfrxDBDataSet.Create(nil);
//    dsCampo.DataSet  := mCampo;
    dsCampo.UserName := 'dsCampo';
    dsCampo.FieldAliases.Clear;

    dsCampoRecursos := TfrxDBDataSet.Create(nil);
//    dsCampoRecursos.DataSet  := mNotaCampo;
    dsCampoRecursos.UserName := 'dsCampoRecursos';
    dsCampoRecursos.FieldAliases.Clear;

    dsDesglose := TfrxDBDataSet.Create(nil);
//    dsDesglose.DataSet  := mDesglose;
    dsDesglose.UserName := 'dsDesglose';
    dsDesglose.FieldAliases.Clear;

    dsPartidas := TfrxDBDataSet.Create(nil);
//    dsPartidas.DataSet  := mNotaActividades;
    dsPartidas.UserName := 'dsPartidas';
    dsPartidas.FieldAliases.Clear;

    dsConceptos := TfrxDBDataSet.Create(nil);
//    dsConceptos.DataSet  := mConceptos;
    dsConceptos.UserName := 'dsConceptos';
    dsConceptos.FieldAliases.Clear;

    dsResumen := TfrxDBDataSet.Create(nil);
//    dsResumen.DataSet  := mResumen;
    dsResumen.UserName := 'dsResumen';
    dsResumen.FieldAliases.Clear;

    rDiario.DataSets.Add(dsActaFolio);
    rDiario.DataSets.Add(dsConfiguracion);
    rDiario.DataSets.Add(dsDatosFolio);
    rDiario.DataSets.Add(dsGeneradorFolio);
    rDiario.DataSets.Add(dsCampo);
    rDiario.DataSets.Add(dsCampoRecursos);
    rDiario.DataSets.Add(dsConceptos);
    rDiario.DataSets.Add(dsResumen);
    rDiario.DataSets.Add(dsDesglose);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

//    if mDatos.RecordCount > 0 then
//    begin
//       rDiario.LoadFromFile(global_files + global_miReporte+'_ActaEntrega.fr3');
//       rDiario.ShowReport();
//    end
//    else
//       messageDLG('No se encontraron Folios en el Periodo', mtInformation, [mbOk], 0);


    // Destruye Objetos ...
    rDiario.DataSets.Clear;

    {$region 'Destruir Objetos'}
      dsActaFolio.Destroy;
      dsDatosFolio.Destroy;
      dsGeneradorFolio.Destroy;
      dsCampo.Destroy;
      dsCampoRecursos.Destroy;
      dsDesglose.Destroy;
      dsPartidas.Destroy;
      dsResumen.Destroy;
      dsConceptos.Destroy;
      dsConfiguracion.Destroy;

      Folios.Destroy;
      Anexos.Destroy;
      qry_tripulacion.Destroy;
      qry_generadores.destroy;
      zHorarios.Destroy;
      DatosFolio.Destroy;
      NotaCampo.Destroy;
      zDesglose.Destroy;
      qryConfiguracion.Destroy;

//      mDatos.Destroy;
//      mActa.Destroy;
//      mCampo.Destroy;
//      mCampoRecursos.Destroy;
//      mDesglose.Destroy;
//      mResumen.Destroy;
//      mConceptos.Destroy;
//      mActividades.destroy;
//      mTablaActividad.destroy;
//      mNotaActividades.Destroy;
//      mTablaActividadAnexos.Destroy;
//      mRecursos.Destroy;
//      mTempActividad.Destroy;
//      mNotaCampo.Destroy;
    {$endregion}

end;


Procedure procReporteGerencial(iParamGerencial :integer; dParamFecha :tDate; sParamContrato, sParamFolio, sParamConvenio :string; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var

    rDiario: TfrxReport;

    dFecha, dDiaSiguiente : tDate;
    dConsumoTotal, dExistenciaAnteriorAux : double;

    zqMovimientos,
    zqArribos,
    zEmbarcacion,
    QryNotasGenerales : TZReadOnlyQuery;

    Td_Movimientos,
    Td_Arribos,
    Td_embarcacion,
    Td_NotasGrales,
    Td_Partidas,
    Td_balance,
    Td_balanceResumen,
    Td_Personal   : TfrxDBDataset;

    QryArribos,
    QryConsumos,
    QryCondiciones,
    QryConsumoEmbarcaciones,
    QryPartidas,
    QryDetallePartidas,
    QryConsultaAvanceAnterior,
    QryConsultaAvancesAcumulados,
    QryFolios,
    QryCategorias,
    QryDistribucion     : TZQuery;

    indice : integer;
    rxBalance, rxBalanceResumen, rxPartidas, rxPersonal      : TrxMemoryData;

begin

     {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);

    zqMovimientos  := TZReadOnlyQuery.Create(nil);
    zqArribos      := TZReadOnlyQuery.Create(nil);
    QryNotasGenerales          := TZReadOnlyQuery.Create(nil);
    QryConsumoEmbarcaciones    := TZQuery.Create(nil);
    QryConsumos     := TZQuery.Create(nil);
    QryCategorias   := TZQuery.Create(nil);
    QryCategorias.Connection   := Connection.zConnection;
    QryDistribucion := TZQuery.Create(nil);
    QryDistribucion.Connection := Connection.zConnection;

    QryNotasGenerales.Connection := Connection.zConnection;

    Td_embarcacion:= TfrxDBDataset.Create(nil);
    Td_embarcacion.UserName:='dsEmbarcacion';

    Td_Movimientos := TfrxDBDataset.Create(nil);
    Td_Movimientos.UserName:='Td_Movimientos';

    Td_Arribos:= TfrxDBDataset.Create(nil);
    Td_Arribos.UserName:='Td_Arribos';

    Td_balance:= TfrxDBDataset.Create(nil);
    Td_balance.UserName:='Td_balance';

    Td_balanceResumen:= TfrxDBDataset.Create(nil);
    Td_balanceResumen.UserName:='Td_balanceResumen';

    Td_NotasGrales:= TfrxDBDataset.Create(nil);
    Td_NotasGrales.UserName:='Td_NotasGrales';

    Td_Personal:= TfrxDBDataset.Create(nil);
    Td_Personal.UserName:='Td_Personal';

    rxPersonal := TrxMemoryData.Create(nil);
    rxPersonal.Active := False;
    rxPersonal.FieldDefs.Add('sIdCategoria', ftString, 4, False);
    rxPersonal.FieldDefs.Add('sDescripcion', ftString, 120, False);
    rxPersonal.FieldDefs.Add('sOT', ftString, 35, False);
    rxPersonal.FieldDefs.Add('dCantidadTotal', ftFloat, 0, False);
    rxPersonal.FieldDefs.Add('sFolio', ftString, 80, False);
    rxPersonal.FieldDefs.Add('sConcatena', ftMemo, 0, False);
    rxPersonal.FieldDefs.Add('dCantidadFolio', ftFloat, 0, False);
    rxPersonal.Active := True;

    rxBalance := TrxMemoryData.Create(nil);
    rxBalance.Active := False;
    rxBalance.FieldDefs.Add('sIdEmbarcacion', ftString, 10, True);
    rxBalance.FieldDefs.Add('sEmbarcacion', ftString, 50, True);
    rxBalance.FieldDefs.Add('sConcepto', ftString, 25, False);
    rxBalance.FieldDefs.Add('sMedida', ftString, 25, False);
    rxBalance.FieldDefs.Add('dExistenciaAnt', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dRecepcion', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dProducido', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dConsumo', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dTransferido', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dConsumoOT', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dExistenciaAct', ftFloat, 0, False);

    rxBalance.FieldDefs.Add('sConcepto2', ftString, 25, False);
    rxBalance.FieldDefs.Add('sMedida2', ftString, 25, False);
    rxBalance.FieldDefs.Add('dExistenciaAnt2', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dRecepcion2', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dProducido2', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dConsumo2', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dTransferido2', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dConsumoOT2', ftFloat, 0, False);
    rxBalance.FieldDefs.Add('dExistenciaAct2', ftFloat, 0, False);
    rxBalance.Active := True;

    QryConsultaAvancesAcumulados := TZQuery.Create(nil);
    QryConsultaAvancesAcumulados.Connection := Connection.zConnection;
    QryConsultaAvanceAnterior := TZQuery.Create(nil);
    QryConsultaAvanceAnterior.Connection := connection.zConnection;
    QryFolios := TZQuery.Create(nil);
    QryFolios.Connection := Connection.zConnection;
    QryPartidas := TZQuery.Create(nil);
    QryPartidas.Connection := Connection.zConnection;
    QryDetallePartidas := TZQuery.Create(nil);
    QryDetallePartidas.Connection := Connection.zConnection;

    Td_partidas:= TfrxDBDataset.Create(nil);
    Td_partidas.UserName:='td_partidas';

    rxPartidas := TrxMemoryData.Create(nil);
    rxPartidas.Active := False;
    rxPartidas.FieldDefs.Add('sTipo', ftString, 25, True);
    rxPartidas.FieldDefs.Add('sOT', ftString, 15, True);
    rxPartidas.FieldDefs.Add('sFolio', ftString, 80, True);
    rxPartidas.FieldDefs.Add('sPlataforma', ftString, 50, True);
    rxPartidas.FieldDefs.Add('mDescripcionFolio', ftMemo, 0, True);
    rxPartidas.FieldDefs.Add('dAvanceAntFolio', ftFloat, 0, True);
    rxPartidas.FieldDefs.Add('dAvanceActFolio', ftFloat, 0, True);
    rxPartidas.FieldDefs.Add('dAvanceAcumFolio', ftFloat, 0, True);
    rxPartidas.FieldDefs.Add('sNumeroActividad', ftString, 20, True);
    rxPartidas.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
    rxPartidas.FieldDefs.Add('dAvanceAntPart', ftFloat, 0, True);
    rxPartidas.FieldDefs.Add('dAvanceActPart', ftFloat, 0, True);
    rxPartidas.FieldDefs.Add('dAvanceAcumPart', ftFloat, 0, True);
    rxPartidas.FieldDefs.Add('iIdDiario', ftInteger, 0, True);
    rxPartidas.FieldDefs.Add('sClasificacion', ftString, 10, True);
    rxPartidas.FieldDefs.Add('sHoraInicio', ftString, 5, True);
    rxPartidas.FieldDefs.Add('sHoraFin', ftString, 5, True);
    rxPartidas.FieldDefs.Add('mDescripcionHorario', ftMemo, 0, True);
    rxPartidas.Active := True;

    {$ENDREGION}

     {$region 'Categorias'}

      {Busqueda de la embarcacion}
      zEmbarcacion := TZReadOnlyQuery.Create(nil);
      zEmbarcacion.Connection := Connection.zConnection;
      zEmbarcacion.SQL.Add('SELECT em.sDescripcion,em.sContrato, em.sIdEmbarcacion, cc.sLocalizacion, '+
                    '(select sCantidad from g_condicionesclimatologicas where sContrato =:Orden and dIdFecha = :fecha and iIdCondicion = 1 and idGerencial =:Gerencial group by iIdCondicion ) as CantidadViento, '+
                    '(select d2.sDescripcion from g_condicionesclimatologicas cc2 '+
                    'inner join direcciones d2 on (d2.iIdDireccion = cc2.iIdDireccion) '+
                    'where cc2.sContrato =:Orden and cc2.dIdFecha = :fecha and cc2.iIdCondicion = 1 and cc2.idGerencial =:Gerencial  group by iIdCondicion ) as DireccionViento, '+
                    '(select sCantidad from g_condicionesclimatologicas where sContrato =:Orden and dIdFecha = :fecha and iIdCondicion = 2 and idGerencial =:Gerencial group by iIdCondicion ) as CantidadOlas, '+
                    '(select sCantidad from g_condicionesclimatologicas where sContrato =:Orden and dIdFecha = :fecha and iIdCondicion = 4 and idGerencial =:Gerencial group by iIdCondicion ) as CantidadBalance, '+
                    '(select sMedida from condiciones cd1 where sDescripcion like "%viento%"  and sTipo = "Gerencial") as sMedidaCondicion1, '+
                    '(select sMedida from condiciones cd1 where sDescripcion like "%ola%"     and sTipo = "Gerencial") as sMedidaCondicion2, '+
                    '(select sMedida from condiciones cd1 where sDescripcion like "%balance%" and sTipo = "Gerencial") as sMedidaCondicion3 '+
                    'FROM embarcacion_vigencia AS ev '+
                    'INNER JOIN embarcaciones AS em ON (em.sIdEmbarcacion = ev.sIdEmbarcacion) '+
                    'left join g_condicionesclimatologicas as cc on (cc.sContrato =:Orden and cc.dIdFecha =:fecha and cc.iIdCondicion = 2 and cc.IdGerencial =:Gerencial) '+
                    'left join direcciones as d on (d.iIdDireccion = cc.iIdDireccion) '+
                    'WHERE ev.sContrato = :contrato and ev.dFechaInicio = (Select max(ev2.dfechainicio) '+
                    'from embarcacion_vigencia ev2 where ev.sContrato = em.sContrato and ev2.dfechainicio <= :fecha) order by sHorario DESC');
      zEmbarcacion.ParamByName('Contrato').AsString   := Global_Contrato_Barco;
      zEmbarcacion.ParamByName('Orden').AsString      := Global_Contrato;
      zEmbarcacion.ParamByName('Gerencial').AsInteger := iParamGerencial;
      zEmbarcacion.ParamByName('fecha').AsDateTime    := dParamFecha;
      zEmbarcacion.Open;

    {$endregion}

     {$REGION 'MOVIMIENTOS DE BARCO, ARRIBO, NOTAS'}
      zqMovimientos.Connection := connection.zconnection;
      zqMovimientos.SQL.Add('select me.shorainicio, me.shorafinal, concat(me.sHoraInicio, " - " ,  me.sHoraFinal) as sHorario, '+
                            'me.mDescripcion, tm.sIdTipoMovimiento , me.sClasificacion, '+
                            'me.sFactor, me.iiddiario '+
                            'from g_movimientosdeembarcacion me '+
                            'inner join tiposdemovimiento tm '+
                            'on (me.sContrato = tm.sContrato and me.sClasificacion = tm.sIdTipoMovimiento) '+
                            'where me.sContrato =:ContratoBarco '+
                            'and me.dIdFecha = :fecha '+
                            'and me.sOrden =:orden ' +
                            'and me.sActividades = "MOV" and IdGerencial =:Gerencial '+
                            'group by me.iIddiario order by me.shorainicio,me.iIdDiario');
      zqMovimientos.ParamByName('contratoBarco').AsString := global_contrato_barco;
      zqMovimientos.ParamByName('fecha').AsDate           := dParamFecha;
      zqmovimientos.ParamByName( 'orden' ).AsString       := sParamContrato;
      zqmovimientos.ParamByName( 'Gerencial' ).AsInteger  := iParamGerencial;
      zqMovimientos.Open;


      zqArribos.Connection := connection.zconnection;
      zqArribos.SQL.Add('select concat( me.sHoraInicio , " - ", me.sHoraFinal ) as sHorario, me.sHoraInicio, me.sHoraFinal, '+
                'me.mDescripcion '+
                'from g_movimientosdeembarcacion me '+
                'where me.sContrato = :contratoBarco '+
                'and me.dIdFecha = :fecha '+
                'and me.sOrden = :orden '+
                'and me.sClasificacion = "" and sTipo <> "MOVIMIENTO" and IdGerencial =:Gerencial '+
                'order by me.sHoraInicio');
      zqArribos.ParamByName('contratoBarco').AsString := global_contrato_barco;
      zqArribos.ParamByName('fecha').AsDate    := dParamFecha;
      zqArribos.ParamByName('orden' ).AsString := sParamContrato;
      zqArribos.ParamByName('Gerencial' ).AsInteger := iParamGerencial;
      zqArribos.Open;

      if zqArribos.RecordCount = 0 then
      begin
          zqArribos.Connection := connection.zconnection;
          zqArribos.SQL.Clear;
          zqArribos.SQL.Add('select " " as sHorario, " " as sHoraInicio, " " as sHoraFinal, '+
                    ' " " as mDescripcion '+
                    'from g_movimientosdeembarcacion group by sContrato ');
          zqArribos.Open;
      end;

      QryNotasGenerales.SQL.Clear;
      QryNotasGenerales.SQL.Add('SELECT * FROM g_notas_generales WHERE sContrato = :Orden AND dIdFecha = :Fecha and eAplicaResumenPersonal = "No" and lAplicaConsumos ="No" and idGerencial =:Gerencial ORDER BY iOrden ASC');
      QryNotasGenerales.ParamByName('Orden').AsString  := sParamContrato;
      QryNotasGenerales.ParamByName('Fecha').AsDate    := dParamFecha;
      QryNotasGenerales.ParamByName('Gerencial' ).AsInteger := iParamGerencial;
      QryNotasGenerales.Open;
     {$ENDREGION}

     {$REGION 'CONSULTA DE CONSUMOS POR EMBARCACION'}
      QryConsumoEmbarcaciones.Connection := connection.zconnection;
      QryConsumoEmbarcaciones.Active := False;
      QryConsumoEmbarcaciones.SQL.Add('SELECT e.sContrato, r.sIdEmbarcacion, 	e.sDescripcion '+
                                      'FROM g_recursos AS r ' +
                                      'INNER JOIN embarcaciones AS e ON(e.sIdEmbarcacion = r.sIdEmbarcacion) ' +
                                      'WHERE r.dIdFecha = :Fecha GROUP BY r.sIdEmbarcacion order by e.sTipo, e.sIdEmbarcacion ');
      QryConsumoEmbarcaciones.Params.ParamByName('Fecha').AsDateTime := dParamFecha;
      QryConsumoEmbarcaciones.Open;

      QryConsumos.Connection := connection.zconnection;
      QryConsumos.SQL.Clear;
      QryConsumos.SQL.Add('SELECT re.iIdRecursoExistencia, re.lCombustible, re.sDescripcion, re.sMedida, r.dRecibido, r.dPrestamos, r.dConsumo AS dConsumoReal, '+
                          'r.dExistenciaActual, r.dConsumoEquipos, r.dProduccion, '+
                          '(select ((sum(dAjuste)+sum(dProduccion)+sum(dRecibido)+sum(dTrasiego))-(sum(dConsumo)+sum(dConsumoEquipos)+sum(dPrestamos))) as Existencia '+
                          'from g_recursos where sContrato =:ContratoBarco and dIdFecha <:Fecha and sIdEmbarcacion = r.sIdEmbarcacion '+
                          'and iIdRecursoExistencia = r.iIdRecursoExistencia and IdGerencial <=:Gerencial group by scontrato order by dIdFecha ) as Anterior, '+
                          '(select ((sum(dAjuste)+sum(dProduccion)+sum(dRecibido)+sum(dTrasiego))-(sum(dConsumo)+sum(dConsumoEquipos)+sum(dPrestamos))) as Existencia '+
                          'from g_recursos where sContrato =:ContratoBarco and dIdFecha <=:Fecha and sIdEmbarcacion =r.sIdEmbarcacion '+
                          'and iIdRecursoExistencia = r.iIdRecursoExistencia and IdGerencial <=:Gerencial group by scontrato order by dIdFecha ) as Existencia '+
                          'FROM  g_recursos AS r '+
                          'INNER JOIN recursosdeexistencias AS re ON (re.iIdRecursoExistencia = r.iIdRecursoExistencia) '+
                          'WHERE 	r.sContrato =:ContratoBarco and r.dIdFecha = :Fecha AND r.sIdEmbarcacion = :Embarcacion and r.IdGerencial =:Gerencial GROUP BY re.iIdRecursoExistencia');
      QryConsumos.ParamByName('ContratoBarco').AsString := global_contrato_barco;
      QryConsumos.ParamByName('Embarcacion').AsString   := QryConsumoEmbarcaciones.FieldByName('sIdEmbarcacion').AsString;
      QryConsumos.ParamByName('Fecha').AsDateTime       := dParamFecha;
      QryConsumos.ParamByName('Gerencial').AsInteger    := iParamGerencial;
      QryConsumos.Open;

      if QryConsumos.RecordCount > 0 then
      begin
          indice := 1;
          while Not QryConsumos.Eof do
          begin
              dConsumoTotal := QryConsumos.FieldByName('dConsumoReal').AsFloat;
              dConsumoTotal := RoundTo(dConsumoTotal, -3);

              dExistenciaAnteriorAux := QryConsumos.FieldByName('Anterior').AsFloat;

              if QryConsumos.FieldByName('sDescripcion').AsString = 'AGUA' then
              begin
                  rxBalance.Edit;
                  rxBalance.FieldValues['sConcepto']      := QryConsumos.FieldByName('sDescripcion').AsString;
                  rxBalance.FieldValues['sMedida']        := QryConsumos.FieldByName('sMedida').AsString;
                  rxBalance.FieldValues['dExistenciaAnt'] := QryConsumos.FieldByName('Anterior').AsFloat;
                  rxBalance.FieldValues['dConsumo']       := QryConsumos.FieldByName('dConsumoReal').AsFloat;
                  rxBalance.FieldValues['dExistenciaAct'] := QryConsumos.FieldByName('Existencia').AsFloat;
                  rxBalance.FieldValues['dRecepcion']     := QryConsumos.FieldByName('dRecibido').AsFloat;
                  rxBalance.FieldValues['dProducido']     := QryConsumos.FieldByName('dProduccion').AsFloat;
                  rxBalance.FieldValues['dTransferido']   := QryConsumos.FieldByName('dPrestamos').AsFloat;
                  rxBalance.Post;
              end;

              if QryConsumos.FieldByName('sDescripcion').AsString = 'DIESEL' then
              begin
                  rxBalance.Append;
                  rxBalance.FieldValues['sIdEmbarcacion'] := QryConsumoEmbarcaciones.FieldByName('sIdEmbarcacion').AsString;
                  rxBalance.FieldValues['sEmbarcacion']   := QryConsumoEmbarcaciones.FieldByName('sDescripcion').AsString;
                  rxBalance.FieldValues['sConcepto2']      := QryConsumos.FieldByName('sDescripcion').AsString;
                  rxBalance.FieldValues['sMedida2']        := QryConsumos.FieldByName('sMedida').AsString;
                  rxBalance.FieldValues['dExistenciaAnt2'] := QryConsumos.FieldByName('Anterior').AsFloat;
                  rxBalance.FieldValues['dConsumo2']       := QryConsumos.FieldByName('dConsumoReal').AsFloat;
                  rxBalance.FieldValues['dExistenciaAct2'] := QryConsumos.FieldByName('Existencia').AsFloat;
                  rxBalance.FieldValues['dRecepcion2']     := QryConsumos.FieldByName('dRecibido').AsFloat;
                  rxBalance.FieldValues['dProducido2']     := QryConsumos.FieldByName('dProduccion').AsFloat;
                  rxBalance.FieldValues['dTransferido2']   := QryConsumos.FieldByName('dPrestamos').AsFloat;
                  rxBalance.Post;
              end;

              QryConsumos.Next;
          end;
      end;
      {$EndRegion}

     {$REGION 'FOLIOS REPORTADOS'}
      QryFolios.SQL.Clear;
      QryFolios.SQL.Add('SELECT ot.sContrato, ot.sNumeroOrden, ot.sIdFolio, ot.mDescripcion, p.sDescripcion as plataforma, cv.sIdConvenio as Convenio, cv.iGerencialInicio, cv.iGerencialFinal, ot.lAplicaJornada '+
                        'FROM ordenesdetrabajo AS ot ' +
                        ' inner join convenios cv on (cv.sContrato = ot.sContrato and ot.sNumeroOrden = cv.sNumeroOrden) '+
                        '	INNER JOIN rd_proyectos AS c ' +
                        '		ON (ot.sContrato=c.sContrato) ' +
                        '	INNER JOIN g_bitacoradeactividades AS ba ' +
                        '		ON (ba.sContrato=c.sContrato AND ba.sNumeroOrden=ot.sNumeroOrden and ba.IdGerencial =:Gerencial ) ' +
                        '	LEFT JOIN tiposdemovimiento AS tm ' +
                        '		ON (tm.sContrato= :ContratoBarco AND tm.sIdTipoMovimiento=ba.sIdTipoMovimiento AND tm.sClasificacion="Tarifa Diaria") ' +
                        'inner join plataformas  p on (p.sIdPlataforma = ot.sIdPlataforma) '+
                        'WHERE c.sContrato= :Orden AND ba.dIdFecha= :Fecha and ot.sNumeroOrden like :Folio ' +
                        'GROUP BY cv.sNumeroorden  order by ot.iOrden ');
      QryFolios.ParamByName('Orden').AsString         := sParamContrato;
      QryFolios.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
      QryFolios.ParamByName('Folio').AsString         := '%';
      QryFolios.ParamByName('Gerencial').AsInteger    := iParamGerencial;
      QryFolios.ParamByName('Fecha').AsDateTime       := dParamFecha;
      QryFolios.Open;

      while Not QryFolios.Eof do
      begin
          {$REGION 'AVANCES DEL FOLIO'}
          {Avances anteriores}
          QryConsultaAvanceAnterior.SQL.Clear;
          QryConsultaAvanceAnterior.SQL.Text := 'SELECT ROUND(AvancesAnterioresGerencial("'+FormatDateTime('yyyy-mm-dd', dParamFecha)+'", :Orden, :Folio, :Gerencial), 2) AS dAvanceAnterior;';
          QryConsultaAvanceAnterior.ParamByName('Orden').AsString      := sParamContrato;
          QryConsultaAvanceAnterior.ParamByName('Gerencial').AsInteger := iParamGerencial ;
          QryConsultaAvanceAnterior.ParamByName('Folio').AsString      := QryFolios.FieldByName('sNumeroOrden').AsString;
          QryConsultaAvanceAnterior.Open;

          //Avances Acumulados
          dDiaSiguiente := dParamFecha;
          dDiaSiguiente := IncDay(dDiaSiguiente);

          QryConsultaAvancesAcumulados.SQL.Clear;
          QryConsultaAvancesAcumulados.SQL.Text := 'SELECT ROUND(AvancesAnterioresGerencial("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio, :Gerencial), 2) AS dAvanceAcumulado;';
          QryConsultaAvancesAcumulados.ParamByName('Orden').AsString      := sParamContrato;
          QryConsultaAvancesAcumulados.ParamByName('Gerencial').AsInteger := iParamGerencial +1;
          QryConsultaAvancesAcumulados.ParamByName('Folio').AsString      := QryFolios.FieldByName('sNumeroOrden').AsString;
          QryConsultaAvancesAcumulados.Open;
          {$ENDREGION}

          {$REGION 'CONSULTA - PARTIDAS REPORTADAS'}
          QryPartidas.SQL.Clear;
          QryPartidas.SQL.Add('SELECT  a.sContrato, a.iIdDiario,	a.sNumeroActividad, o.dPonderado, a.sWbs, a.lOrdenaNormal, '+
                              ' (select round(sum(dAvance),2) as actual from g_bitacoradeactividades where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                              'and sNumeroActividad = a.sNumeroActividad and ( dIdfecha <= a.didfecha and IdGerencial <=:Gerencial-1 )  group by sContrato ) as dAvanceAnt, '+
                              '(select round(sum(dAvance),2) as actual from g_bitacoradeactividades where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                              'and sNumeroActividad = a.sNumeroActividad and ( dIdfecha <= a.didfecha and IdGerencial <=:Gerencial  )  group by sContrato ) as dAvance, '+
                              '	CONCAT(a.sHoraInicio,"-",a.sHoraFinal)  AS Horario, ' +
                              '	a.sIdClasificacion,	a.sHoraInicio, a.sHorafinal, ' +
                              '	o.mdescripcion as sDescripcionActividad ' +
                              'FROM g_bitacoradeactividades a ' +
                              'INNER JOIN actividadesxorden o ' +
                              '		ON (o.sContrato = a.sContrato AND o.sIdConvenio = a.sIdConvenio AND o.sNumeroOrden = a.sNumeroOrden AND a.sWbs = o.sWbs AND o.sNumeroActividad = a.sNumeroActividad AND o.sTipoActividad = "Actividad" and o.sTipoAnexo = "PT") '+
                              'WHERE a.sContrato = :Orden AND a.dIdFecha = :Fecha AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento = "E" and a.lImprime ="Si" and a.idGerencial =:Gerencial ' +
                              'GROUP BY a.sNumeroActividad '+
                              'ORDER BY a.sContrato, o.iItemOrden, a.sNumeroActividad, a.sHoraInicio ');
          QryPartidas.ParamByName('Orden').AsString      := sParamContrato;
          QryPartidas.ParamByName('Gerencial').AsInteger := iParamGerencial;
          QryPartidas.ParamByName('Fecha').AsDateTime    := dParamFecha;
          QryPartidas.ParamByName('Folio').AsString      := QryFolios.FieldByName('sNumeroOrden').AsString;
          QryPartidas.ParamByName('Turno').AsString      := 'A';
          QryPartidas.Open;

          while Not QryPartidas.Eof do
          begin
              {Insertar Datos en RxPartidas}
              rxPartidas.Append;
              rxPartidas.FieldValues['sTipo']       := 'General';
              rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
              rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
              rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
              rxPartidas.FieldValues['mDescripcionFolio'] := QryFolios.FieldValues['mDescripcion'];
              rxPartidas.FieldValues['dAvanceAntFolio']   := QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat;
              rxPartidas.FieldValues['dAvanceActFolio']   := QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat - QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat;
              rxPartidas.FieldValues['dAvanceAcumFolio']  := QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat;
              rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString;
              rxPartidas.FieldValues['mDescripcion']     := QryPartidas.FieldByName('sDescripcionActividad').AsString;
              rxPartidas.FieldValues['dAvanceAntPart']   := QryPartidas.FieldByName('dAvanceAnt').AsFloat;
              rxPartidas.FieldValues['dAvanceActPart']   := QryPartidas.FieldByName('dAvance').AsFloat - QryPartidas.FieldByName('dAvanceAnt').AsFloat;
              rxPartidas.FieldValues['dAvanceAcumPart']  := QryPartidas.FieldByName('dAvance').AsFloat;
              rxPartidas.Post;


              {$REGION 'CONSULTA - DETALLE DE PARTIDAS'}
              QryDetallePartidas.SQL.Clear;
              QryDetallePartidas.SQL.Add( 'SELECT b.dIdFecha, b.sIdClasificacion, b.sHoraInicio, b.sHoraFinal, b.iIdDiario, b.sNumeroActividad, b.iIdTarea,b.iIdActividad,b.iHermano, ao.iItemOrden, b.sWbs, '+
                                          '	( SELECT (ifnull(sum(ba.dAvance), 0)) ' +
                                          '		FROM ' +
                                          '			g_bitacoradeactividades AS ba ' +
                                          '		WHERE ba.sContrato = b.sContrato ' +
                                          '	 AND ba.sNumeroOrden = b.sNumeroOrden AND ba.sIdTipoMovimiento = b.sIdTipoMovimiento  AND ba.swbs = b.swbs ' +
                                          'and sNumeroActividad = b.sNumeroActividad AND (didfecha < b.didfecha OR (didfecha = b.didfecha AND cast(sHoraInicio AS Time) < cast(b.sHoraInicio AS Time)))  group by sContrato ) as dAvanceAnterior, '+
                                          '(select round(sum(dAvance),2) as actual from g_bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                                          'and sNumeroActividad = b.sNumeroActividad and ( dIdfecha < b.didfecha OR (dIdfecha <= b.didfecha AND cast(sHoraFinal AS Time) <= cast(b.sHoraFinal AS Time)) )  group by sContrato ) as dAvance, '+
                                          '	b.dAvance, b.mDescripcion AS descAct, b.sTipoObra, b.dCantidadAjuste, b.dCantidadAjusteNext, b.dCantidadAjusteNext2, b.dRestaEspacio ' +
                                          'FROM ' +
                                          '	g_bitacoradeactividades b ' +
                                          'INNER JOIN tiposdemovimiento tm ON ( ' +
                                          '	tm.sContrato = :ContratoBarco ' +
                                          '	AND tm.sIdTipoMovimiento = b.sIdClasificacion ) ' +
                                          'INNER JOIN actividadesxorden ao ON ( ' +
                                          '	ao.sContrato = b.sContrato and ao.sIdConvenio =b.sIdConvenio and ao.sNumeroOrden = b.sNumeroOrden and ' +
                                          '	ao.sWbs = b.sWbs and ao.sTipoActividad = "Actividad" ) ' +
                                          ' inner join tipos_actividades ta on(ta.sIdTipo = b.sTipoObra) '+
                                          'WHERE	b.sContrato = :Orden ' +
                                          'AND b.sNumeroOrden = :Folio ' +
                                          'AND b.sIdTipoMovimiento = "ED" ' +
                                          'AND b.IdGerencial = :Gerencial ' +
                                          'AND b.sNumeroActividad = :Actividad ' +
                                          'AND dIdFecha = :Fecha ' +
                                          'and ((b.iHermano=-1) or (b.iHermano=b.iIdActividad)) AND lImprime = "Si" '+
                                          ' group by b.sNumeroActividad, ta.iOrden, b.sHoraInicio, b.iIdDiario ');
              if QryPartidas.FieldByName('lOrdenaNormal').AsString = 'Si' then
                 QryDetallePartidas.SQL.Add(' ORDER BY b.didFecha, ao.iItemOrden, b.iIdDiario')
              else
                 QryDetallePartidas.SQL.Add(' ORDER BY b.didFecha, ta.iOrden, ao.iItemOrden, b.iIdDiario');
              QryDetallePartidas.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
              QryDetallePartidas.ParamByName('Orden').AsString         := sParamContrato;
              QryDetallePartidas.ParamByName('Gerencial').AsInteger    := iParamGerencial;
              QryDetallePartidas.ParamByName('Fecha').AsDateTime       := dParamFecha;
              QryDetallePartidas.ParamByName('Folio').AsString         := QryFolios.FieldByName('sNumeroOrden').AsString;
              QryDetallePartidas.ParamByName('Actividad').AsString     := QryPartidas.FieldByName('sNumeroActividad').AsString;
              QryDetallePartidas.Open;
              {$ENDREGION}

              {$REGION 'INSERCIÓN DE DATOS'}
              while Not QryDetallePartidas.Eof do
              begin
                  rxPartidas.Append;
                  rxPartidas.FieldValues['sTipo']       := 'TituloHorario';
                  rxPartidas.FieldValues['sOT']         := QryFolios.FieldByName('sContrato').AsString;
                  rxPartidas.FieldValues['sFolio']      := QryFolios.FieldByName('sIdFolio').AsString;
                  rxPartidas.FieldValues['sPlataforma'] := QryFolios.FieldByName('plataforma').AsString;
                  rxPartidas.FieldValues['sNumeroActividad'] := QryPartidas.FieldByName('sNumeroActividad').AsString ;
                  rxPartidas.FieldValues['sHoraInicio']  := QryDetallePartidas.FieldByName('sHoraInicio').AsString;
                  rxPartidas.FieldValues['mDescripcionHorario']  := QryDetallePartidas.FieldByName('descAct').AsString;

                  rxPartidas.FieldValues['sClasificacion']   := QryDetallePartidas.FieldByName('sIdClasificacion').AsString ;
                  rxPartidas.FieldValues['sHoraInicio']  := QryDetallePartidas.FieldByName('sHoraInicio').AsString;
                  rxPartidas.FieldValues['sHoraFin']     := QryDetallePartidas.FieldByName('sHoraFinal').AsString;

                  rxPartidas.FieldValues['dAvanceAntPart']   := QryDetallePartidas.FieldByName('dAvanceAnterior').AsFloat;
                  rxPartidas.FieldValues['dAvanceActPart']   := QryDetallePartidas.FieldByName('dAvance').AsFloat - QryDetallePartidas.FieldByName('dAvanceAnterior').AsFloat;
                  rxPartidas.FieldValues['dAvanceAcumPart']  := QryDetallePartidas.FieldByName('dAvance').AsFloat;
                  rxPartidas.Post;

                  QryDetallePartidas.Next;
              end;

             QryPartidas.Next;
             {$endRegion}
          end;
          {$EndRegion}
          QryFolios.Next;
      end;
      Td_Partidas.DataSet:= rxPartidas;
      Td_Partidas.FieldAliases.Clear;

      rDiario.DataSets.Add(Td_partidas);
      {$ENDREGION}

     {$region 'Categorias , Personal'}
     QryCategorias.Active := False;
     QryCategorias.SQL.Add('select gb.*, c.sDescripcion, c.lPersonalAnexo, c.iOrden '+
                'from g_bitacora_resumenpersonal gb '+
                'inner join g_categorias c on (c.sIdCategoria = gb.sIdCategoria) '+
                'where gb.sContrato =:Contrato and gb.dIdFecha =:Fecha and gb.IdGerencial =:Gerencial and lImprime = "Si" '+
                'order by iOrden ');
     QryCategorias.ParamByName('Contrato').AsString  := global_contrato;
     QryCategorias.ParamByName('Fecha').AsDate       := dParamFecha;
     QryCategorias.ParamByName('Gerencial').AsInteger := iParamGerencial;
     QryCategorias.Open;

     QryDistribucion.Active := False;
     QryDistribucion.SQL.Add('select g.sNumeroOrden, o.sIdFolio, g.sIdPersonal, sum(g.dCantidadDiurno + g.dCantidadNocturno) as dCantidad, '+
                '(select sum(dCantidadDiurno + dCantidadNocturno) from g_bitacoradepersonal '+
                'where sContrato = g.sContrato and dIdFecha =g.dIdFecha and IdGerencial =g.IdGerencial group by sContrato ) as CantidadOrden, '+
                '(select sum(dCantidadDiurno + dCantidadNocturno) from g_bitacoradepersonal '+
                'where sContrato = g.sContrato and dIdFecha =g.dIdFecha and IdGerencial =g.IdGerencial and sNumeroOrden = g.sNumeroOrden group by sContrato,sNumeroOrden ) as CantidadFolio '+
                'from g_bitacoradepersonal g '+
                'inner join ordenesdetrabajo o on (o.sContrato = g.sContrato and o.sNumeroOrden = g.sNumeroOrden) '+
                'inner join personal p on (p.sContrato =:ContratoBarco and p.sIdPersonal =g.sIdPersonal) '+
                'where g.sContrato =:Contrato and g.dIdFecha =:Fecha and g.IdGerencial =:Gerencial and (g.dCantidadDiurno > 0 or g.dCantidadNocturno > 0) '+
                'group by g.sContrato,g.sNumeroOrden,g.dIdFecha '+
                'order by o.iOrden, p.iItemOrden ');
     QryDistribucion.ParamByName('Contrato').AsString        := global_contrato;
     QryDistribucion.ParamByName('ContratoBarco').AsString   := global_contrato_barco;
     QryDistribucion.ParamByName('Fecha').AsDate        := dParamFecha;
     QryDistribucion.ParamByName('Gerencial').AsInteger := iParamGerencial;
     QryDistribucion.Open;

     while not QryCategorias.Eof  do
     begin
        rxPersonal.Append;
        rxPersonal.FieldByName('sIdCategoria').AsString  := QryCategorias.FieldByName('sIdCategoria').AsString;
        rxPersonal.FieldByName('sDescripcion').AsString  := QryCategorias.FieldByName('sDescripcion').AsString;
        if QryCategorias.FieldByName('lPersonalAnexo').AsString = 'Si' then
        begin
           rxPersonal.FieldByName('sOT').AsString           := connection.ucontrato.FieldByName('sMascara').AsString;
           rxPersonal.FieldByName('dCantidadTotal').AsFloat := QryDistribucion.FieldByName('CantidadOrden').AsFloat;
        end
        else
        begin
           rxPersonal.FieldByName('sOT').AsString           := '';
           rxPersonal.FieldByName('dCantidadTotal').AsFloat := QryCategorias.FieldByName('dCantidad').AsFloat;
        end;
        rxPersonal.FieldByName('sFolio').AsString        := '';
        rxPersonal.FieldByName('sConcatena').AsString    := '';
        rxPersonal.FieldByName('dCantidadFolio').AsFloat := 0;
        QryCategorias.Next;
     end;

     QryDistribucion.First;
     rxPersonal.First;
     while not QryDistribucion.Eof do
     begin
        if rxPersonal.RecordCount > 0 then
        begin
            if not rxPersonal.Eof then
            begin
                rxPersonal.Edit;
                rxPersonal.FieldByName('sFolio').AsString        := QryDistribucion.FieldByName('sIdFolio').AsString;
                rxPersonal.FieldByName('sConcatena').AsString    := ConcatenaPersonal(global_contrato, QryDistribucion.FieldByName('sNumeroOrden').AsString, dParamFecha, iParamGerencial );
                rxPersonal.FieldByName('dCantidadFolio').AsFloat := QryDistribucion.FieldByName('CantidadFolio').AsFloat;
                rxPersonal.Post;

                rxPersonal.Next;
            end
            else
            begin
                rxPersonal.Append;
                rxPersonal.FieldByName('sIdCategoria').AsString  := '';
                rxPersonal.FieldByName('sDescripcion').AsString  := '';
                rxPersonal.FieldByName('sOT').AsString           := '';
                rxPersonal.FieldByName('dCantidadTotal').AsFloat := 0;
                rxPersonal.FieldByName('sFolio').AsString        := QryDistribucion.FieldByName('sIdFolio').AsString;
                rxPersonal.FieldByName('sConcatena').AsString    := ConcatenaPersonal(global_contrato, QryDistribucion.FieldByName('sNumeroOrden').AsString, dParamFecha, iParamGerencial );
                rxPersonal.FieldByName('dCantidadFolio').AsFloat := QryDistribucion.FieldByName('CantidadFolio').AsFloat;
                rxPersonal.Post;
            end;
        end;
        QryDistribucion.Next;
     end;

     {$endregion}

     {$region 'Configuracion'}
      qryConfiguracion := TZReadOnlyQuery.Create(nil);
      qryConfiguracion.Connection := connection.zConnection;
      dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
      dsConfiguracion.DataSet := QryConfiguracion;
      dsConfiguracion.UserName := 'dsConfiguracion';
      QryConfiguracion.Active := False;
      QryConfiguracion.SQL.Clear;
      QryConfiguracion.SQL.Add('select c2.sCodigo, c.sReportesCIA, c.bImagen, c.sContrato, c.sNombre, c.sEmail, c.sWeb, c.sSlogan, c2.sMascara as sLabelContrato, '+
                    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, '+
                    '(select dIdFecha from rd_reporte_gerencial where idGerencial =:Gerencial ) as FechaGerencial, '+
                    '(select hg.sDescripcion from rd_reporte_gerencial rg '+
                    'inner join rd_horarios_gerencial hg on (hg.idHorarioGerencial = rg.IdHorarioGerencial) where rg.idGerencial =:Gerencial ) as HorarioGerencial, '+
                    '(select mDescripcion from rd_proyectos where sContrato =:ContratoBarco) as mDescripcionBarco, '+
                    '(select sTitulo from rd_proyectos where sContrato =:Contrato) as sTituloGerencial, '+
                    '(select sDescripcion from embarcaciones where sContrato =:ContratoBarco and sAplicaDiesel ="Si" and sTipo ="Principal") as Embarcacion '+
                    'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = :Contrato) '+
                    'Where c2.sContrato = :Contrato');
      QryConfiguracion.Params.ParamByName('contrato').asString      := sParamContrato;
      QryConfiguracion.Params.ParamByName('contratoBarco').asString := global_contrato_barco;
      QryConfiguracion.Params.ParamByName('Gerencial').AsInteger    := iParamGerencial;
      QryConfiguracion.Open;
      {$endregion}


    rDiario.DataSets.Add(dsConfiguracion);

    Td_Movimientos.DataSet    := zqMovimientos;
    Td_Movimientos.FieldAliases.Clear;

    Td_Arribos.DataSet          := zqArribos;
    Td_Arribos.FieldAliases.Clear;

    Td_balance.DataSet:= rxBalance;
    Td_balance.FieldAliases.Clear;

    Td_embarcacion.DataSet:= zEmbarcacion;
    Td_embarcacion.FieldAliases.Clear;

    Td_NotasGrales.DataSet:= QryNotasGenerales;
    Td_NotasGrales.FieldAliases.Clear;

    Td_Personal.DataSet:= rxPersonal;
    Td_Personal.FieldAliases.Clear;

    rDiario.DataSets.Add(Td_embarcacion);
    rDiario.DataSets.Add(Td_balance);
    rDiario.DataSets.Add(Td_balanceResumen);
    rDiario.DataSets.Add(Td_Movimientos);
    rDiario.DataSets.Add(Td_Arribos);
    rDiario.DataSets.Add(Td_NotasGrales);
    rDiario.DataSets.Add(Td_Personal);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

    if QryConfiguracion.RecordCount > 0 then
    begin
       rDiario.LoadFromFile(global_files + global_miReporte+'_GerencialDiario.fr3');
       rDiario.ShowReport();
    end
    else
       messageDLG('No se encontraron Folios en el Periodo', mtInformation, [mbOk], 0);


    // Destruye Objetos ...
    rDiario.DataSets.Clear;

    {$region 'Destruir Objetos'}
    dsConfiguracion.Destroy;
    Td_Movimientos.Destroy;
    Td_Arribos.Destroy;
    zqMovimientos.Destroy;
    zqArribos.Destroy;

    zEmbarcacion.Destroy;;
    QryNotasGenerales.Destroy;

    Td_embarcacion.Destroy;
    Td_NotasGrales.Destroy;
    Td_Partidas.Destroy;
    Td_balance.Destroy;
    Td_balanceResumen.Destroy;
    Td_Personal.Destroy;

    QryConsumos.Destroy;
    QryConsumoEmbarcaciones.Destroy;
    QryPartidas.Destroy;
    QryDetallePartidas.Destroy;
    QryConsultaAvanceAnterior.Destroy;
    QryConsultaAvancesAcumulados.Destroy;
    QryFolios.Destroy;
    QryCategorias.Destroy;
    QryDistribucion.Destroy;

    rxBalance.Destroy;
    rxPartidas.Destroy;
    rxPersonal.Destroy;
    {$endregion}

end;



Procedure procReporteDatosGenerales(iParamEmpresa :integer; sParamFiltro :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosEmpleado : TfrxDBDataSet;
    Folios : tUniQuery;
    rDiario: TfrxReport;
begin

    {$region 'Categorias'}
    Folios := tUniQuery.create(nil);
    Folios.Connection := Connection.uConnection;
    {$endregion}
    rDiario := TfrxReport.Create(tOrigen);
    BarraProgresoAvance(BarraProgreso, 0,50,50);

    {$region 'Configuracion'}
    qryConfiguracion := TZReadOnlyQuery.Create(nil);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select e.*, p.Pais, es.Estado, c.FK_Ciudad '+
      'from master_empresa e '+
      ' left join  master_pais as p on (p.IdPais =e.IdPais) '+
      ' left join  master_estado as es on(es.IdEstado = e.IdEstado) '+
      ' left join  master_ciudad as c  on(c.IdCiudad = e.IdCiudad) '+
      'where IdEmpresa =:Id ');
    QryConfiguracion.Params.ParamByName('Id').AsInteger    := iParamEmpresa;
    QryConfiguracion.Open;
    {$endregion}

    BarraProgresoAvance(BarraProgreso, 0,100,100);
    dsDatosEmpleado := TfrxDBDataSet.Create(nil);
    dsDatosEmpleado.DataSet:= zParamConsulta;
    dsDatosEmpleado.UserName := 'dsEmpleados';
    dsDatosEmpleado.FieldAliases.Clear;

    rDiario.DataSets.Add(dsConfiguracion);
    rDiario.DataSets.Add(dsDatosEmpleado);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);

    if zParamConsulta.RecordCount > 0 then
    begin
       rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneralEmpleados.fr3');
       rDiario.ShowReport();
    end
    else
       messageDLG('No se encontraron Empleados en la Empresa Seleciconada', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rDiario.DataSets.Clear;

    {$region 'Destruir Objetos'}

    dsDatosEmpleado.Destroy;
    dsConfiguracion.Destroy;

    Folios.Destroy;

    {$endregion}
end;

Procedure procReporteCredencial(iParamEmpresa :integer; sParamFiltro :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosEmpleado : TfrxDBDataSet;
    Folios : tUniQuery;
    rDiario: TfrxReport;
begin

    {$region 'Categorias'}
    Folios := tUniQuery.create(nil);
    Folios.Connection := Connection.uConnection;
    {$endregion}
    rDiario := TfrxReport.Create(tOrigen);
    BarraProgresoAvance(BarraProgreso, 0,50,50);

    {$region 'Configuracion'}
    qryConfiguracion := TZReadOnlyQuery.Create(nil);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select e.*, p.Pais, es.Estado, c.FK_Ciudad '+
      'from master_empresa e '+
      ' left join  master_pais as p on (p.IdPais =e.IdPais) '+
      ' left join  master_estado as es on(es.IdEstado = e.IdEstado) '+
      ' left join  master_ciudad as c  on(c.IdCiudad = e.IdCiudad) '+
      'where IdEmpresa =:Id ');
    QryConfiguracion.Params.ParamByName('Id').AsInteger    := iParamEmpresa;
    QryConfiguracion.Open;
    {$endregion}

    BarraProgresoAvance(BarraProgreso, 0,100,100);
    dsDatosEmpleado := TfrxDBDataSet.Create(nil);
    dsDatosEmpleado.DataSet:= zParamConsulta;
    dsDatosEmpleado.UserName := 'dsEmpleados';
    dsDatosEmpleado.FieldAliases.Clear;

    rDiario.DataSets.Add(dsConfiguracion);
    rDiario.DataSets.Add(dsDatosEmpleado);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);

    if zParamConsulta.RecordCount > 0 then
    begin
       rDiario.LoadFromFile(global_files + global_miReporte+'_RH_CredencialEmpleados.fr3');
       rDiario.ShowReport();
    end
    else
       messageDLG('No se encontraron Empleados en la Empresa Seleciconada', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rDiario.DataSets.Clear;

    {$region 'Destruir Objetos'}

    dsDatosEmpleado.Destroy;
    dsConfiguracion.Destroy;

    Folios.Destroy;

    {$endregion}
end;


Procedure procReporteCredencialPrint(iParamEmpresa :integer; sParamFiltro, sParamNombreReporte :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosEmpleado : TfrxDBDataSet;
    Folios : tUniQuery;
    rDiario: TfrxReport;
    qryConfiguracion : tUniQuery;
begin

    {$region 'Categorias'}
    Folios := tUniQuery.create(nil);
    Folios.Connection := Connection.uConnection;
    {$endregion}
    rDiario := TfrxReport.Create(tOrigen);
    BarraProgresoAvance(BarraProgreso, 0,50,50);

    {$region 'Configuracion'}
    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select e.*, p.Pais, es.Estado, c.FK_Ciudad '+
      'from master_empresa e '+
      ' left join  master_pais as p on (p.IdPais =e.IdPais) '+
      ' left join  master_estado as es on(es.IdEstado = e.IdEstado) '+
      ' left join  master_ciudad as c  on(c.IdCiudad = e.IdCiudad) '+
      'where IdEmpresa =:Id ');
    QryConfiguracion.Params.ParamByName('Id').AsInteger    := iParamEmpresa;
    QryConfiguracion.Open;
    {$endregion}

    BarraProgresoAvance(BarraProgreso, 0,100,100);
    dsDatosEmpleado := TfrxDBDataSet.Create(nil);
    dsDatosEmpleado.DataSet:= zParamConsulta;
    dsDatosEmpleado.UserName := 'dsEmpleados';
    dsDatosEmpleado.FieldAliases.Clear;

    rDiario.DataSets.Add(dsConfiguracion);
    rDiario.DataSets.Add(dsDatosEmpleado);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);

    if zParamConsulta.RecordCount > 0 then
    begin
       rDiario.LoadFromFile(global_files + global_miReporte+ sParamNombreReporte);
       rDiario.ShowReport();
    end
    else
       messageDLG('No se encontraron Empleados en la Empresa Seleciconada', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rDiario.DataSets.Clear;

    {$region 'Destruir Objetos'}

    dsDatosEmpleado.Destroy;
    dsConfiguracion.Destroy;

    Folios.Destroy;

    {$endregion}
end;


end.
