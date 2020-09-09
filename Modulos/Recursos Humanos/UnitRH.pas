unit UnitRH;

interface

uses frxClass, frxDBSet, ZConnection, ZAbstractRODataset,
     DBCtrls, ExtCtrls,
     ZAbstractDataset, ZDataset, math, unitGenerales,
     strUtils, DateUtils, SysUtils,  Variants,
     Windows, Messages,
     classes, Graphics , Controls, Forms, Dialogs, cxProgressBar, Uni, DB, dxmdaset, StdCtrls, Grids, DBGrids, UnitMetodos;

Type
  FtTipo=(FtTierra,FtAbordo);

  //Procedure EncabezadoPDF_Horizontal(Reportediario :TzREadOnlyQuery;        Var Reporte: TfrxReport;Tipo:FtTipo);
 // Procedure FirmasPDF_Generales(Reportediario :TzREadOnlyQuery;             Var Reporte: TfrxReport;Tipo:FtTipo);


  Procedure procReporteDiasLaborados(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String=''; CodigosPersonal:String='-1'; Personales:String='-1');
  Procedure procReporteDiasLaboradosHora(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String=''; CodigosPersonal:String='-1'; Personales:String='-1');
  Procedure ReporteDescuentos(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String=''; CodigosPersonal:String='-1');

  Procedure procReporteDiasLaboradosSIANI(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String=''; CodigosPersonal:String='-1');
  Procedure procNominaSIANI(sFiltroEmpresa : string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';IdProyecto:String='';IdPersonal:String='';IdPuesto:String='';Tipo:String='';IdN:Integer=0);
  Procedure procPreNominaSIANI(sFiltroEmpresa :string;dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';IdProyecto:String='';IdPersonal:String='';IdPuesto:String='';Tipo:String='';IdN:Integer=0);
  Procedure procReporteNominasRH(lParamContinuo :boolean; FInicio, FTermino, dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';idp:String='';Tipo:String=''; CodigosPersonal:String='-1');
  procedure procReporteNominasEB(lParamContinuo :boolean; FInicio, FTermino, dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';idP:String='';Tipo:String=''; CodigosPersonal:String='-1');
  procedure procReporteNominasEB2(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';Tipo:String='');
  procedure procReporteNominasEBComp(lParamContinuo :boolean; FInicio, FTermino, dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';idP:String='';Tipo:String=''; CodigosPersonal:String='-1');
  Procedure procReporteCredenciales(iParamEmpresa :integer; sParamFiltro :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure ReporteJustificar(dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteNominasCompleta(lParamContinuo :boolean; FInicio, FTermino, dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';idp:String='';Tipo:String='';CodigosPersonal:String='-1');
  procedure CreaCampoMemData(Memoria: TDataSet; NombreCampo: string; TipoDato: TFieldType; iSize :Integer; lRequired : boolean );
  Procedure procReporteVacaciones(iParamEmpresa :integer; sParamFiltro :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteGNominas(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';Tipo:String='');
  Procedure ReporteEvaluacionProveedor(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure ReporteNominaConsolidada(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure ReporteComentariosNomina(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure ReporteMantenimiento(zParamConsulta : tUniQuery; zParamConsultaDet : tUniQuery; zParamConsultaDet2 : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');

  Procedure ReporteMtoFalla(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');

  Procedure ReporteSeguroVida(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
  Procedure procReporteGeneradorMtoSIANI(AniosF:String; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');

  const
    TotalCol=10;
    TotalColPer=11;
    Mantisa=2;

implementation

uses frm_connection, global,Utilerias;

Procedure procNominaSIANI(sFiltroEmpresa : string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';IdProyecto:String='';IdPersonal:String='';IdPuesto:String='';Tipo:String='';IdN:Integer=0);
var
    dsDiasLaborados : TfrxDBDataSet;
    salarios:TUniQuery;
    zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    dFechaActual2,auxT,dFechaActual,act:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3,res : string;
    ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol,CuentaCol2 : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    dTotal,salario,suma,dias : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    flag:Boolean;
    deduciones:Double;
begin

    {$region 'Categorias'}
    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    //AsignarSQL(categorias);
    Categorias.SQL.Text:='Select vm.IdPersonal,vm.IdProyecto, '+
    '(Select me.FK_Titulo from master_empresa as me where me.IdEmpresa  = '+
    '(Select mp.IdEmpresa From master_personal as mp where vm.IdPersonal = mp.IdPersonal))  as Empresa, '+
    'vm.IdPuesto, '+
    '(Select concat (mp.Nombre,'' '' '' '',mp.APaterno,'' '' '' '',mp.AMaterno) From master_personal as mp where vm.IdPersonal = mp.IdPersonal) as Nombre, '+
    '(Select mp.CodigoPersonal From master_personal as mp where vm.IdPersonal = mp.IdPersonal) as CodigoPersonal, '+
    'DiasLaborados(vm.IdPersonal,:FechaI, :FechaF,vm.IdProyecto,vm.IdSalario) as Dias, '+
    'MontoSalario(vm.IdPersonal,:FechaI,:FechaF,vm.IdProyecto,vm.IdSalario) as Monto, '+
    '(SELECT s.TituloSalario FROM rhu_salario s WHERE s.IdSalario = vm.IdSalario) as Puesto, '+
    '(select concat(be.Cuenta,'' '' '' '',(select NombreCorto from rhu_bancos where IdBanco = be.IdBanco)) '+
    'from rhu_datosbancariosxpersonal be where be.IdPersonal = vm.IdPersonal '+
    'group by be.IdPersonal ) as Cuenta '+

    'From rh_verificar_manual as vm '+
    'where DATE(vm.Fecha) between :FechaI and :FechaF '+
    'group By vm.IdPersonal, vm.IdProyecto order by vm.IdProyecto';
    categorias.ParamByName('FechaI').Value:=fechaSQL(dParamFechaI);
    categorias.ParamByName('FechaF').Value:=fechaSQL(dParamFechaF);
    categorias.Open;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'Reporte_Nomina',pUpdate);
    FiltrarDataSet(generador_diario,'IdProyecto,IdPersonal,IdPuesto,FechaI,FechaF, IdNomina',['-1',
    '-1','-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF), IdN ]);
    generador_diario.Open;
    generador_diario.RecordCount;

    Salarios := tUniQuery.create(nil);
    Salarios.Connection := Connection.uConnection;
    AsignarSQL(Salarios,'Reporte_Nomina',pUpdate);
    FiltrarDataSet(Salarios,'IdProyecto,IdPersonal,IdPuesto,FechaI,FechaF,IdNomina',['-1',
    id,'-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF), IdN ]);

    salarios.Open;

    if sFiltroEmpresa <> '%' then
    begin
        categorias.Filtered := False;
        categorias.Filter   := sFiltroEmpresa;
        categorias.Filtered := True;

        generador_diario.Filtered := False;
        generador_diario.Filter   := sFiltroEmpresa;
        generador_diario.Filtered := True;

        Salarios.Filtered := False;
        Salarios.Filter   := sFiltroEmpresa;
        Salarios.Filtered := True;
    end;

    {$endregion}


    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Cuenta', ftString, 120, True);
        CreaCampoMemData(mDatos,'dcantTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'dSumSubTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'IdProyecto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Proyecto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Alta', ftString, 50, True);
        CreaCampoMemData(mDatos,'Baja', ftString, 50, True);
        CreaCampoMemData(mDatos,'SDI', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'SDR', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'SNeto', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'Bonos', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'Anticipos', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'infDiario', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'Descuento', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'infAnterior', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'TotalInf', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'TotalDeduciones', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'TotalNomina', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'Fuera', ftFloat, 0, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mDatos,'dCantidad' + Inttostr(CuentaCol), FtString, 10, false);
          CreaCampoMemData(mDatos,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mDatos,'dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'FDias' + Inttostr(CuentaCol), ftString, 20, False);
          CreaCampoMemData(mDatos,'FDiasN' + Inttostr(CuentaCol), ftString, 20, False);
        end;
        Active:=true;
      end;

    mTotales:=TdxMemData.Create(nil);
    with mTotales do
      begin
        Active:=false;
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mTotales, 'dTotal' + Inttostr(CuentaCol),FtFloat,0,False);
          CreaCampoMemData(mTotales, 'iDia'+ Inttostr(CuentaCol),ftInteger,0,False);
        end;
       Active:=true;
       mTotales.Close;
       mTotales.Open;
      end;

    for CuentaCol := 1 to 31 do
    begin
        mTotales.Append;
        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
        mTotales.Post;
    end;

    mSubTotal:=TdxMemData.Create(nil);
    with mSubTotal do
      begin
        Active:=false;
        CreaCampoMemData(mSubTotal,'sIdRecurso', ftString, 100, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mSubTotal,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mSubTotal,'dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
        end;
        Active:=true;
      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
        mSubTotal.Append;
        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
        for CuentaCol:=1 to 31 do
        begin
          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Proceso'}
    Categorias.First;
    while not Categorias.Eof do
    begin
       generador_diario.Filtered := False;
       generador_diario.Filter   := '(CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString )+ ') and ( IdProyecto ='+QuotedStr(Categorias.FieldByName('IdProyecto').AsString)+')';
       generador_diario.Filtered := True;
       generador_diario.First;
      if (generador_diario.FieldByName('IdProyecto').AsString <> '') then
      begin
       if ((generador_diario.RecordCount = 0))
        then
       begin
           sId := generador_diario.FieldByName('CodigoPersonal').AsString+ generador_diario.FieldByName('IdProyecto').AsString;

           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('Nombre').AsString;
           mDatos.FieldByName('Cuenta').AsString := Categorias.FieldByName('Cuenta').AsString;
           mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
           mDatos.FieldByName('dcantTotal').AsFloat    := 0;
           mDatos.FieldByName('IdProyecto').AsString := generador_diario.FieldByName('IdProyecto').AsString;
           mDatos.FieldByName('Proyecto').AsString := generador_diario.FieldByName('Proyecto').AsString;
           mDatos.FieldByName('Alta').AsString := generador_diario.FieldByName('Alta').AsString;
           mDatos.FieldByName('Baja').AsString := generador_diario.FieldByName('Baja').AsString;
           mDatos.FieldByName('SDI').AsFloat := generador_diario.FieldByName('SDJ').AsFloat;
           mDatos.FieldByName('SDR').AsFloat := generador_diario.FieldByName('SDR').AsFloat;
           mDatos.FieldByName('SNeto').AsFloat := generador_diario.FieldByName('Monto').AsFloat;
           mDatos.FieldByName('Bonos').AsFloat := generador_diario.FieldByName('Bonos').AsFloat;
           mDatos.FieldByName('Anticipos').AsFloat := generador_diario.FieldByName('Anticipos').AsFloat;
           mDatos.FieldByName('InfDiario').AsFloat := 0;//generador_diario.FieldByName('infDiario').AsFloat;
           mDatos.FieldByName('Descuento').AsFloat := generador_diario.FieldByName('Descuentos').AsFloat;
           mDatos.FieldByName('infAnterior').AsFloat := 0;//generador_diario.FieldByName('InfNoDes').AsFloat;
           mDatos.FieldByName('TotalInf').AsFloat := generador_diario.FieldByName('Infonavit').AsFloat;
           deduciones:= generador_diario.FieldByName('Anticipos').AsFloat+generador_diario.FieldByName('Descuentos').AsFloat+
           generador_diario.FieldByName('Infonavit').AsFloat;
           mDatos.FieldByName('TotalDeduciones').AsFloat := deduciones;
           mDatos.FieldByName('TotalNomina').AsFloat := generador_diario.FieldByName('Monto').AsFloat+
                                                        generador_diario.FieldByName('Bonos').AsFloat - deduciones;
            mDatos.FieldByName('Fuera').AsFloat:=generador_diario.FieldByName('Fuera').AsFloat;
           mDatos.Post;
       end
       else
       begin
           sId := '';
           while not generador_diario.Eof do
           begin
               if sId <> (generador_diario.FieldByName('CodigoPersonal').AsString + generador_diario.FieldByName('IdProyecto').AsString) then
               begin

                   dFechaActual2 := dParamFechaI;

                   dFechaActual := dParamFechaI;
                   CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
                   dTotal    := 0;
                   sId    :=  generador_diario.FieldByName('CodigoPersonal').AsString+generador_diario.FieldByName('IdProyecto').AsString;
                   mDatos.Append;
                   mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
                   mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
                   mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('Nombre').AsString;
                   mDatos.FieldByName('Cuenta').AsString := Categorias.FieldByName('Cuenta').AsString;
                   mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
                   mDatos.FieldByName('IdProyecto').AsString := generador_diario.FieldByName('IdProyecto').AsString;
                   mDatos.FieldByName('Proyecto').AsString := generador_diario.FieldByName('Proyecto').AsString;
                   mDatos.FieldByName('Alta').AsString := generador_diario.FieldByName('Alta').AsString;
                   mDatos.FieldByName('Baja').AsString := generador_diario.FieldByName('Baja').AsString;
                   mDatos.FieldByName('SDI').AsFloat := generador_diario.FieldByName('SDJ').AsFloat;
                   mDatos.FieldByName('SDR').AsFloat := generador_diario.FieldByName('SDR').AsFloat;
                   mDatos.FieldByName('SNeto').AsFloat := generador_diario.FieldByName('Monto').AsFloat;
                   mDatos.FieldByName('Bonos').AsFloat := generador_diario.FieldByName('Bonos').AsFloat;
                   mDatos.FieldByName('Anticipos').AsFloat := generador_diario.FieldByName('Anticipos').AsFloat;
                   mDatos.FieldByName('InfDiario').AsFloat := 0;//generador_diario.FieldByName('infDiario').AsFloat;
                   mDatos.FieldByName('Descuento').AsFloat := generador_diario.FieldByName('Descuentos').AsFloat;
                   mDatos.FieldByName('infAnterior').AsFloat := 0;//generador_diario.FieldByName('InfNoDes').AsFloat;
                   mDatos.FieldByName('TotalInf').AsFloat := generador_diario.FieldByName('Infonavit').AsFloat;
                   mDatos.FieldByName('Fuera').AsFloat:=generador_diario.FieldByName('Fuera').AsFloat;

                   deduciones:= generador_diario.FieldByName('Anticipos').AsFloat+generador_diario.FieldByName('Descuentos').AsFloat+
                   generador_diario.FieldByName('Infonavit').AsFloat;
                   mDatos.FieldByName('TotalDeduciones').AsFloat :=deduciones;

                     while (dFechaActual2 <= dParamFechaF) do
                     begin
                       CuentaCol2 := StrToInt(copy(DateToStr(dFechaActual2),1,2));
                       TempF1:= FormatDateTime('dddd',dFechaActual2);
                       if TempF1='lunes' then begin res:='LUN'end;
                       if TempF1='martes' then begin res:='MAR'end;
                       if TempF1='miercoles' then begin res:='MIER'end;
                       if TempF1='jueves' then begin res:='JUE'end;
                       if TempF1='viernes' then begin res:='VIE'end;
                       if TempF1='sabado' then begin res:='SAB'end;
                       if TempF1='domingo' then begin res:='DOM'end;
                       mDatos.FieldByName('FDias'+ Inttostr(CuentaCol2)).AsString    := RES;
                       mDatos.FieldByName('FDiasN'+ Inttostr(CuentaCol2)).AsString    := IntToStr(CuentaCol2);
                       dFechaActual2 := dFechaActual2 + 1;
                     end;
               end;

               while (dFechaActual <= dParamFechaF) and (sId = generador_diario.FieldByName('CodigoPersonal').AsString+generador_diario.FieldByName('IdProyecto').AsString) do
               begin
                   fecha1:=formatdatetime('yyyy/mm/dd',generador_diario.FieldByName('Fecha').AsDateTime);
                   fecha2:= formatdatetime('yyyy/mm/dd',dFechaActual);

                   if (fecha1=fecha2) then
                   begin
                      mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := generador_diario.FieldByName('Asistencia').AsFloat;
                      mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                      dTotal:=dTotal+generador_diario.FieldByName('Asistencia').AsFloat;
                     generador_diario.Next;
                   end;

                   if (fecha1<>fecha2) or (generador_diario.Eof) then
                   begin
                     inc(CuentaCol);
                     dFechaActual := dFechaActual + 1;
                   end;
               end;

               if (mDatos.State = dsInsert) or (mDatos.State = dsEdit) then
               begin
                 mDatos.FieldByName('Fuera').AsFloat:=generador_diario.FieldByName('Fuera').AsFloat;
                 //mDatos.FieldByName('SNeto').AsFloat := generador_diario.FieldByName('SDR').AsFloat*dTotal;
                 mDatos.FieldByName('TotalNomina').AsFloat := generador_diario.FieldByName('MontoTNomina').AsFloat; {(mDatos.FieldByName('SNeto').AsFloat)-deduciones+
                                                                generador_diario.FieldByName('Bonos').AsFloat+generador_diario.FieldByName('complemento').AsFloat; }
                 mDatos.FieldByName('dcantTotal').AsFloat :=  generador_diario.FieldByName('Dias').AsFloat;   //dTotal
                 mDatos.Post;
               end;
               generador_diario.Next;
           end;
       end;
      end;
       Categorias.Next;
    end;

    {$ENDREGION}


    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;

    if Tipo = 'PreNomina' then
      rDiario.LoadFromFile(global_files + global_miReporte+'_RH_PreNomina.fr3')
    else
      rDiario.LoadFromFile(global_files + global_miReporte+'_RH_Nomina.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

    dsDiasLaborados.Destroy;
    generador_diario.Destroy;
end;


Procedure procPreNominaSIANI(sFiltroEmpresa : string; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';IdProyecto:String='';IdPersonal:String='';IdPuesto:String='';Tipo:String='';IdN:Integer=0);
var
    dsDiasLaborados : TfrxDBDataSet;
    salarios:TUniQuery;
    zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    dFechaActual2,auxT,dFechaActual,act:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3,res : string;
    ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol,CuentaCol2 : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    dTotal,salario,suma,dias : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    flag:Boolean;
    deduciones:Double;
begin

    {$region 'Categorias'}
    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    //AsignarSQL(categorias);
    Categorias.SQL.Text:='Select vm.IdPersonal,vm.IdProyecto, '+
    '(Select me.FK_Titulo from master_empresa as me where me.IdEmpresa  = '+
    '(Select mp.IdEmpresa From master_personal as mp where vm.IdPersonal = mp.IdPersonal))  as Empresa, '+
    'vm.IdPuesto, '+
    '(Select concat (mp.Nombre,'' '' '' '',mp.APaterno,'' '' '' '',mp.AMaterno) From master_personal as mp where vm.IdPersonal = mp.IdPersonal) as Nombre, '+
    '(Select mp.CodigoPersonal From master_personal as mp where vm.IdPersonal = mp.IdPersonal) as CodigoPersonal, '+
    'DiasLaborados(vm.IdPersonal,:FechaI, :FechaF,vm.IdProyecto,vm.IdSalario) as Dias, '+
    'MontoSalario(vm.IdPersonal,:FechaI,:FechaF,vm.IdProyecto,vm.IdSalario) as Monto, '+
    '(select s.TituloSalario FROM rhu_salario s WHERE s.IdSalario = vm.IdSalario) as Puesto, '+
    '(select concat(be.Cuenta,'' '' '' '',(select NombreCorto from rhu_bancos where IdBanco = be.IdBanco)) '+
    'from rhu_datosbancariosxpersonal be where be.IdPersonal = vm.IdPersonal '+
    'group by be.IdPersonal ) as Cuenta '+

    'From rh_verificar_manual as vm '+
    'where DATE(vm.Fecha) between :FechaI and :FechaF '+
    'group By vm.IdPersonal, vm.IdProyecto order by vm.IdProyecto';
    categorias.ParamByName('FechaI').Value:=fechaSQL(dParamFechaI);
    categorias.ParamByName('FechaF').Value:=fechaSQL(dParamFechaF);
    categorias.Open;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'Reporte_PerNomina',pUpdate);
    FiltrarDataSet(generador_diario,'IdProyecto,IdPersonal,IdPuesto,FechaI,FechaF, IdNomina,Contrato',['-1',
    '-1','-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF), IdN, GLOBAL_CONTRATO ]);
    generador_diario.Open;

    generador_diario.RecordCount;

    Salarios := tUniQuery.create(nil);
    Salarios.Connection := Connection.uConnection;
    AsignarSQL(Salarios,'Reporte_PerNomina',pUpdate);
    FiltrarDataSet(Salarios,'IdProyecto,IdPersonal,IdPuesto,FechaI,FechaF,IdNomina,Contrato',['-1',
    id,'-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF), IdN, GLOBAL_CONTRATO ]);

    salarios.Open;

    if sFiltroEmpresa <> '%' then
    begin
        categorias.Filtered := False;
        categorias.Filter   := sFiltroEmpresa;
        categorias.Filtered := True;

        generador_diario.Filtered := False;
        generador_diario.Filter   := sFiltroEmpresa;
        generador_diario.Filtered := True;

        Salarios.Filtered := False;
        Salarios.Filter   := sFiltroEmpresa;
        Salarios.Filtered := True;
    end;

    {$endregion}


    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Cuenta', ftString, 120, True);
        CreaCampoMemData(mDatos,'dcantTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'dSumSubTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'IdProyecto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Proyecto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Alta', ftString, 50, True);
        CreaCampoMemData(mDatos,'Baja', ftString, 50, True);
        CreaCampoMemData(mDatos,'SDI', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'SDR', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'SNeto', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'Bonos', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'Anticipos', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'infDiario', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'Descuento', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'infAnterior', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'TotalInf', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'TotalDeduciones', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'TotalNomina', ftFloat, 0, True);
        CreaCampoMemData(mDatos,'Fuera', ftFloat, 0, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mDatos,'dCantidad' + Inttostr(CuentaCol), FtString, 10, false);
          CreaCampoMemData(mDatos,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mDatos,'dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'FDias' + Inttostr(CuentaCol), ftString, 20, False);
          CreaCampoMemData(mDatos,'FDiasN' + Inttostr(CuentaCol), ftString, 20, False);
        end;
        Active:=true;
      end;

    mTotales:=TdxMemData.Create(nil);
    with mTotales do
      begin
        Active:=false;
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mTotales, 'dTotal' + Inttostr(CuentaCol),FtFloat,0,False);
          CreaCampoMemData(mTotales, 'iDia'+ Inttostr(CuentaCol),ftInteger,0,False);
        end;
       Active:=true;
       mTotales.Close;
       mTotales.Open;
      end;

    for CuentaCol := 1 to 31 do
    begin
        mTotales.Append;
        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
        mTotales.Post;
    end;

    mSubTotal:=TdxMemData.Create(nil);
    with mSubTotal do
      begin
        Active:=false;
        CreaCampoMemData(mSubTotal,'sIdRecurso', ftString, 100, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mSubTotal,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mSubTotal,'dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
        end;
        Active:=true;
      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
        mSubTotal.Append;
        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
        for CuentaCol:=1 to 31 do
        begin
          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Proceso'}
    Categorias.First;
    while not Categorias.Eof do
    begin
       generador_diario.Filtered := False;
       generador_diario.Filter   := '(CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString )+ ') and ( IdProyecto ='+QuotedStr(Categorias.FieldByName('IdProyecto').AsString)+')';
       generador_diario.Filtered := True;
       generador_diario.First;

       if generador_diario.RecordCount = 0 then
       begin
           sId := generador_diario.FieldByName('CodigoPersonal').AsString+ generador_diario.FieldByName('IdProyecto').AsString;

           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('Nombre').AsString;
           mDatos.FieldByName('Cuenta').AsString := Categorias.FieldByName('Cuenta').AsString;
           mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
           mDatos.FieldByName('dcantTotal').AsFloat    := 0;
           mDatos.FieldByName('IdProyecto').AsString := generador_diario.FieldByName('IdProyecto').AsString;
           mDatos.FieldByName('Proyecto').AsString := generador_diario.FieldByName('Proyecto').AsString;
           mDatos.FieldByName('Alta').AsString := generador_diario.FieldByName('Alta').AsString;
           mDatos.FieldByName('Baja').AsString := generador_diario.FieldByName('Baja').AsString;
           mDatos.FieldByName('SDI').AsFloat := generador_diario.FieldByName('SDJ').AsFloat;
           mDatos.FieldByName('SDR').AsFloat := generador_diario.FieldByName('SDR').AsFloat;
           mDatos.FieldByName('SNeto').AsFloat := generador_diario.FieldByName('Monto').AsFloat;
           mDatos.FieldByName('Bonos').AsFloat := generador_diario.FieldByName('Bonos').AsFloat;
           mDatos.FieldByName('Anticipos').AsFloat := generador_diario.FieldByName('Anticipos').AsFloat;
           mDatos.FieldByName('InfDiario').AsFloat := 0;//generador_diario.FieldByName('infDiario').AsFloat;
           mDatos.FieldByName('Descuento').AsFloat := generador_diario.FieldByName('Descuentos').AsFloat;
           mDatos.FieldByName('infAnterior').AsFloat := 0;//generador_diario.FieldByName('InfNoDes').AsFloat;
           mDatos.FieldByName('TotalInf').AsFloat := generador_diario.FieldByName('Infonavit').AsFloat;
           deduciones:= generador_diario.FieldByName('Anticipos').AsFloat+generador_diario.FieldByName('Descuentos').AsFloat+
           generador_diario.FieldByName('Infonavit').AsFloat;
           mDatos.FieldByName('TotalDeduciones').AsFloat := deduciones;
           mDatos.FieldByName('TotalNomina').AsFloat := generador_diario.FieldByName('Monto').AsFloat+
                                                        generador_diario.FieldByName('Bonos').AsFloat - deduciones;
            mDatos.FieldByName('Fuera').AsFloat:=generador_diario.FieldByName('Fuera').AsFloat;
           mDatos.Post;
       end
       else
       begin
           sId := '';
           while not generador_diario.Eof do
           begin
               if sId <> (generador_diario.FieldByName('CodigoPersonal').AsString + generador_diario.FieldByName('IdProyecto').AsString) then
               begin

                   dFechaActual2 := dParamFechaI;

                   dFechaActual := dParamFechaI;
                   CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
                   dTotal    := 0;
                   sId    :=  generador_diario.FieldByName('CodigoPersonal').AsString+generador_diario.FieldByName('IdProyecto').AsString;
                   mDatos.Append;
                   mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
                   mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
                   mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('Nombre').AsString;
                   mDatos.FieldByName('Cuenta').AsString := Categorias.FieldByName('Cuenta').AsString;
                   mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
                   mDatos.FieldByName('IdProyecto').AsString := generador_diario.FieldByName('IdProyecto').AsString;
                   mDatos.FieldByName('Proyecto').AsString := generador_diario.FieldByName('Proyecto').AsString;
                   mDatos.FieldByName('Alta').AsString := generador_diario.FieldByName('Alta').AsString;
                   mDatos.FieldByName('Baja').AsString := generador_diario.FieldByName('Baja').AsString;
                   mDatos.FieldByName('SDI').AsFloat := generador_diario.FieldByName('SDJ').AsFloat;
                   mDatos.FieldByName('SDR').AsFloat := generador_diario.FieldByName('SDR').AsFloat;
                   mDatos.FieldByName('SNeto').AsFloat := generador_diario.FieldByName('Monto').AsFloat;
                   mDatos.FieldByName('Bonos').AsFloat := generador_diario.FieldByName('Bonos').AsFloat;
                   mDatos.FieldByName('Anticipos').AsFloat := generador_diario.FieldByName('Anticipos').AsFloat;
                   mDatos.FieldByName('InfDiario').AsFloat := 0;//generador_diario.FieldByName('infDiario').AsFloat;
                   mDatos.FieldByName('Descuento').AsFloat := generador_diario.FieldByName('Descuentos').AsFloat;
                   mDatos.FieldByName('infAnterior').AsFloat := 0;//generador_diario.FieldByName('InfNoDes').AsFloat;
                   mDatos.FieldByName('TotalInf').AsFloat := generador_diario.FieldByName('Infonavit').AsFloat;
                   mDatos.FieldByName('Fuera').AsFloat:=generador_diario.FieldByName('Fuera').AsFloat;

                   deduciones:= generador_diario.FieldByName('Anticipos').AsFloat+generador_diario.FieldByName('Descuentos').AsFloat+
                   generador_diario.FieldByName('Infonavit').AsFloat;
                   mDatos.FieldByName('TotalDeduciones').AsFloat :=deduciones;

                     while (dFechaActual2 <= dParamFechaF) do
                     begin
                       CuentaCol2 := StrToInt(copy(DateToStr(dFechaActual2),1,2));
                       TempF1:= FormatDateTime('dddd',dFechaActual2);
                       if TempF1='lunes' then begin res:='LUN'end;
                       if TempF1='martes' then begin res:='MAR'end;
                       if TempF1='miercoles' then begin res:='MIER'end;
                       if TempF1='jueves' then begin res:='JUE'end;
                       if TempF1='viernes' then begin res:='VIE'end;
                       if TempF1='sabado' then begin res:='SAB'end;
                       if TempF1='domingo' then begin res:='DOM'end;
                       mDatos.FieldByName('FDias'+ Inttostr(CuentaCol2)).AsString    := RES;
                       mDatos.FieldByName('FDiasN'+ Inttostr(CuentaCol2)).AsString    := IntToStr(CuentaCol2);
                       dFechaActual2 := dFechaActual2 + 1;
                     end;
               end;

               while (dFechaActual <= dParamFechaF) and (sId = generador_diario.FieldByName('CodigoPersonal').AsString+generador_diario.FieldByName('IdProyecto').AsString) do
               begin
                   fecha1:=formatdatetime('yyyy/mm/dd',generador_diario.FieldByName('Fecha').AsDateTime);
                   fecha2:= formatdatetime('yyyy/mm/dd',dFechaActual);

                   if (fecha1=fecha2) then
                   begin
                      if generador_diario.FieldByName('IdTipoAsistencia').AsInteger = 1 then
                        mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := generador_diario.FieldByName('Asistencia').AsFloat
                      else
                        mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsString := generador_diario.FieldByName('CodigoTA').AsString;
                      mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                      dTotal:=dTotal+generador_diario.FieldByName('Asistencia').AsFloat;
                     generador_diario.Next;
                   end;

                   if (fecha1<>fecha2) or (generador_diario.Eof) then
                   begin
                     inc(CuentaCol);
                     dFechaActual := dFechaActual + 1;
                   end;
               end;

               if (mDatos.State = dsInsert) or (mDatos.State = dsEdit) then
               begin
                 mDatos.FieldByName('Fuera').AsFloat:=generador_diario.FieldByName('Fuera').AsFloat;
                 //mDatos.FieldByName('SNeto').AsFloat := generador_diario.FieldByName('SDR').AsFloat*dTotal;
                 mDatos.FieldByName('TotalNomina').AsFloat :=  (mDatos.FieldByName('SNeto').AsFloat)-deduciones+
                                                                generador_diario.FieldByName('Bonos').AsFloat+generador_diario.FieldByName('complemento').AsFloat;
                 mDatos.FieldByName('dcantTotal').AsFloat :=  generador_diario.FieldByName('Dias').AsFloat;   //dTotal
                 mDatos.Post;
               end;
               generador_diario.Next;
           end;
       end;
       Categorias.Next;
    end;

    {$ENDREGION}


    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;

    if Tipo = 'PreNomina' then
      rDiario.LoadFromFile(global_files + global_miReporte+'_RH_PreNomina.fr3')
    else
      rDiario.LoadFromFile(global_files + global_miReporte+'_RH_Nomina.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

    dsDiasLaborados.Destroy;
    generador_diario.Destroy;
end;

Procedure procReporteDiasLaboradosSIANI(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String=''; CodigosPersonal:String='-1');
var
    dsDiasLaborados : TfrxDBDataSet;
    zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;
    Vacaciones : tUniQuery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    auxT,dFechaActual,act:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3 : string;
    ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    dTotal,salario,suma,dias : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    flag:Boolean;
begin

    {$region 'Categorias'}
    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    AsignarSQL(categorias,'dias_laborados_e',pUpdate);
    FiltrarDataSet(categorias,'Activo,Proyecto,CodsPersonal,FechaI,FechaF',['Si',id,'-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    categorias.Open;

    categorias.RecordCount;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'Dias_laborados',pUpdate);
    FiltrarDataSet(generador_diario,'Personal,IdProyecto,fechaI,fechaF',['-1',id,fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;
    generador_diario.RecordCount;
    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'dcantTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'dSumSubTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Proyecto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Ubicacion', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nota', ftString, 150, True);
        CreaCampoMemData(mDatos,'Mes',ftString,45,True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mDatos,'dCantidad' + Inttostr(CuentaCol), FtString, 10, false);
          CreaCampoMemData(mDatos,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mDatos,'dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'Especial' + Inttostr(CuentaCol), FtString, 10, False);
        end;
        Active:=true;
      end;

    mTotales:=TdxMemData.Create(nil);
    with mTotales do
      begin
        Active:=false;
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mTotales, 'dTotal' + Inttostr(CuentaCol),FtFloat,0,False);
          CreaCampoMemData(mTotales, 'iDia'+ Inttostr(CuentaCol),ftInteger,0,False);
        end;
       Active:=true;
       mTotales.Close;
       mTotales.Open;
      end;

    for CuentaCol := 1 to 31 do
    begin
        mTotales.Append;
        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
        mTotales.Post;
    end;

    mSubTotal:=TdxMemData.Create(nil);
    with mSubTotal do
      begin
        Active:=false;
        CreaCampoMemData(mSubTotal,'sIdRecurso', ftString, 100, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mSubTotal,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mSubTotal,'dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
        end;
        Active:=true;
      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
        mSubTotal.Append;
        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
        for CuentaCol:=1 to 31 do
        begin
          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Proceso'}
    Categorias.First;
    while not Categorias.Eof do
    begin
       generador_diario.Filtered := False;
       generador_diario.Filter   := '(CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString )+') AND (Mes = '+QuotedStr(Categorias.FieldByName('Mes').AsString)+')';
       generador_diario.Filtered := True;
       generador_diario.First;

       if generador_diario.RecordCount = 0 then
       begin
           sId := generador_diario.FieldByName('CodigoPersonal').AsString;

           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
           mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
           mDatos.FieldByName('dcantTotal').AsFloat    := 0;
           mDatos.FieldByName('Proyecto').AsString := generador_diario.FieldByName('NombreProyecto').AsString;
           mDatos.FieldByName('Ubicacion').AsString := generador_diario.FieldByName('sUbicacion').AsString;
           mDatos.FieldByName('Nota').AsString := generador_diario.FieldByName('Nota').AsString;
           mDatos.FieldByName('Mes').AsString := Categorias.FieldByName('Mes').AsString;
           mDatos.Post;
       end
       else
       begin
           sId := '';
           while not generador_diario.Eof do
           begin
               if sId <> (generador_diario.FieldByName('CodigoPersonal').AsString) then
               begin

                     dFechaActual := dParamFechaI;

                     CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));

                   dTotal    := 0;
                   sId    :=  generador_diario.FieldByName('CodigoPersonal').AsString;
                   mDatos.Append;
                   mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
                   mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
                   mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
                   mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
                   mDatos.FieldByName('Proyecto').AsString := generador_diario.FieldByName('NombreProyecto').AsString;
                   mDatos.FieldByName('Ubicacion').AsString := generador_diario.FieldByName('sUbicacion').AsString;
                   mDatos.FieldByName('Nota').AsString := generador_diario.FieldByName('Nota').AsString;
                   mDatos.FieldByName('Mes').AsString := generador_diario.FieldByName('Mes').AsString;
               end;

               while (dFechaActual <= dParamFechaF) and (sId = generador_diario.FieldByName('CodigoPersonal').AsString) and (generador_diario.FieldByName('Mes').AsString = Categorias.FieldByName('Mes').AsString) do
               begin

                   fecha1:=formatdatetime('yyyy/mm/dd',generador_diario.FieldByName('Fecha').AsDateTime);
                   fecha2:= formatdatetime('yyyy/mm/dd',dFechaActual);

                   if (fecha1=fecha2) then
                   begin
                      mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := generador_diario.FieldByName('Asistencia').AsFloat;
                      mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'No';
                      mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                      dTotal:=dTotal+generador_diario.FieldByName('Asistencia').AsFloat;
                     generador_diario.Next;
                   end;

                   if (fecha1<>fecha2) or (generador_diario.Eof) then
                   begin
                     //inc(CuentaCol);
                     dFechaActual := dFechaActual + 1;
                     CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
                   end;
               end;

               if (mDatos.State = dsInsert) or (mDatos.State = dsEdit) then
               begin
                 mDatos.FieldByName('dcantTotal').AsFloat := dTotal;
                 mDatos.Post;
               end;
               generador_diario.Next;
           end;
       end;
       Categorias.Next;
    end;

    //mDatos.SortOnField('mes',False);
    mDatos.SortedField :='mes';

    {$ENDREGION}


    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;


    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_Jornada_Trabajo.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

    dsDiasLaborados.Destroy;
    generador_diario.Destroy;
end;

Procedure procReporteGeneradorMtoSIANI(AniosF:String; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDiasManteminientos : TfrxDBDataSet;
    zRetardo,QueryTemp,jf,especial,dFest,Familias, generador_semanas, qryConfiguracion : tUniQuery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    auxT,dFechaActual,act:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3 : string;
    ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    dTotal,salario,suma,dias : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    flag:Boolean;
begin

    {$region 'Familias'}
    Familias := tUniQuery.create(nil);
    Familias.Connection := Connection.uConnection;

    Familias.Active:=False;
    AsignarSQL(Familias,'mto_subfamilias_reporte',pUpdate);
    FiltrarDataSet(Familias,'IdSubfamilia',['-1']);
    Familias.Open;
//
//    Familias.RecordCount;
//
    generador_semanas := TUniquery.create(nil);
    generador_semanas.Connection := Connection.uConnection;

    generador_semanas.Active:=False;
    AsignarSQL(generador_semanas,'mto_programa_subfamilias',pUpdate);
    FiltrarDataSet(generador_semanas,'Anio',[AniosF]);
    generador_semanas.Open;
    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
    begin
        Active:=false;
        CreaCampoMemData(mDatos,'Grupo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Familia', ftString, 200, True);
        CreaCampoMemData(mDatos,'Subfamilia', ftString, 200, True);
        CreaCampoMemData(mDatos,'id_check', FtString, 30, True);
        CreaCampoMemData(mDatos,'Frecuencia', ftString, 30, True);
        CreaCampoMemData(mDatos,'FechaA', ftString, 30, True);
        for CuentaCol:=1 to 48 do
        begin
          CreaCampoMemData(mDatos,'Sem' + Inttostr(CuentaCol), FtString, 10, false);
        end;
        Active:=true;
      end;

    {$endregion}

    {$REGION 'Proceso'}
   Familias.First;
    while not Familias.Eof do
    begin
      mDatos.Append;
      mDatos.FieldByName('Grupo').AsString := Familias.FieldByName('Grupo').AsString;
      mDatos.FieldByName('Familia').AsString := Familias.FieldByName('Familia').AsString;
      mDatos.FieldByName('Subfamilia').AsString := Familias.FieldByName('Nombre').AsString;
      mDatos.FieldByName('id_check').AsString  := Familias.FieldByName('Codigo').AsString;
      mDatos.FieldByName('Frecuencia').AsString    := Familias.FieldByName('FrecuenciaMantenimiento').AsString;
      mDatos.FieldByName('FechaA').AsString := Familias.FieldByName('Fecha').AsString;

      generador_semanas.Filtered := False;
      generador_semanas.Filter   := 'IdSubFamilia = ' + QuotedStr(Familias.FieldByName('IdSubFamilia').AsString);
      generador_semanas.Filtered := True;
      generador_semanas.First;

      if generador_semanas.RecordCount > 0 then
      begin
        while not generador_semanas.Eof do
        begin
          if ((generador_semanas.FieldByName('Mes').AsInteger = 1) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem1').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 1) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem2').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 1) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem3').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 1) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem4').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 2) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem5').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 2) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem6').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 2) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem7').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 2) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem8').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 3) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem9').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 3) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem10').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 3) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem11').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 3) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem12').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 4) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem13').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 4) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem14').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 4) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem15').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 4) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem16').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 5) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem17').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 5) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem18').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 5) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem19').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 5) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem20').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 6) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem21').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 6) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem22').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 6) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem23').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 6) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem24').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 7) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem25').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 7) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem26').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 7) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem27').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 7) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem28').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 8) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem29').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 8) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem30').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 8) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem31').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 8) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem32').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 9) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem33').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 9) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem34').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 9) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem35').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 9) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem36').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 10) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem37').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 10) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem38').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 10) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem39').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 10) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem40').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 11) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem41').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 11) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem42').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 11) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem43').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 11) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem44').AsString := '*';

          if ((generador_semanas.FieldByName('Mes').AsInteger = 12) and (generador_semanas.FieldByName('Semana').AsInteger = 1)) then
            mDatos.FieldByName('Sem45').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 12) and (generador_semanas.FieldByName('Semana').AsInteger = 2)) then
            mDatos.FieldByName('Sem46').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 12) and (generador_semanas.FieldByName('Semana').AsInteger = 3)) then
            mDatos.FieldByName('Sem47').AsString := '*';
          if ((generador_semanas.FieldByName('Mes').AsInteger = 12) and (generador_semanas.FieldByName('Semana').AsInteger = 4)) then
            mDatos.FieldByName('Sem148').AsString := '*';


          generador_semanas.Next;
        end;


      end;


      mDatos.Post;


       Familias.Next;
    end;

    {$ENDREGION}

    dsDiasManteminientos:= TfrxDBDataSet.Create(Nil);
    dsDiasManteminientos.UserName   :='dsGeneradorFolio';
    dsDiasManteminientos.DataSet    := mDatos;
    dsDiasManteminientos.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasManteminientos);
    rDiario.OnGetValue := tProcedure;


    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneradorMto.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...
    mDatos.Destroy;
    dsDiasManteminientos.Destroy;
    generador_semanas.Destroy;
end;

Procedure procReporteDiasLaborados(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String=''; CodigosPersonal:String='-1'; Personales:String='-1');
var
    dsDiasLaborados : TfrxDBDataSet;
    zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario,
    vacaciones, qryConfiguracion, complemento : tUniQuery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    auxT,dFechaActual,act,dFechaRepite:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3,fDuplicado, FechaRepiteDia : string;
    cDias,ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol,retar : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    contJ,dTotal,salario,suma,dias, diasAux : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    flag,but:Boolean;
    cuentaRetardo : integer;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;
    flag:=False;
    {$region 'Categorias'}
    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    AsignarSQL(categorias,'dias_laborados_reporte',pUpdate);
    FiltrarDataSet(categorias,'CodsPersonal, Activo, IdGuardia',[CodigosPersonal,'Si',id]);
    categorias.Open;

    categorias.RecordCount;

    vacaciones := TUniquery.create(nil);
    vacaciones.Connection := Connection.uConnection;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'dcantTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'dSumSubTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Salario', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'SD', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'DiasMes', FtFloat, 0, True);
//        CreaCampoMemData(mDatos,'Especial', FtString, 10, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mDatos,'dCantidad' + Inttostr(CuentaCol), FtString, 10, false);
          CreaCampoMemData(mDatos,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mDatos,'dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'Especial' + Inttostr(CuentaCol), FtString, 10, False);
        end;
        Active:=true;
      end;

    mTotales:=TdxMemData.Create(nil);
    with mTotales do
      begin
        Active:=false;
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mTotales, 'dTotal' + Inttostr(CuentaCol),FtFloat,0,False);
          CreaCampoMemData(mTotales, 'iDia'+ Inttostr(CuentaCol),ftInteger,0,False);
        end;
       Active:=true;
       mTotales.Close;
       mTotales.Open;
      end;

    for CuentaCol := 1 to 31 do
    begin
        mTotales.Append;
        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
        mTotales.Post;
    end;

    mSubTotal:=TdxMemData.Create(nil);
    with mSubTotal do
      begin
        Active:=false;
        CreaCampoMemData(mSubTotal,'sIdRecurso', ftString, 100, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mSubTotal,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mSubTotal,'dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
        end;
        Active:=true;
      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
        mSubTotal.Append;
        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
        for CuentaCol:=1 to 31 do
        begin
          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Consultas'}
    //Ahora vienen las consultas del generador..
    dFest := TUniquery.create(nil);
    dFest.Connection := Connection.uConnection;

    especial := TUniquery.create(nil);
    especial.Connection := Connection.uConnection;

    zRetardo := TUniquery.create(nil);
    zRetardo.Connection := Connection.uConnection;

    zRetardo.Active:=False;
    zRetardo.SQL.Text:='select RetardoAM, RetardoPM from configuracion';
    zRetardo.Open;

    QueryTemp := TUniquery.create(nil);
    QueryTemp.Connection := Connection.uConnection;
    QueryTemp.Active;

    especial.Active:=False;
    AsignarSQL(especial,'p_noVerifica',pUpdate);
    especial.Open;

    jf := TUniquery.create(nil);
    jf.Connection := Connection.uConnection;
    jf.Active:=False;
    jf.SQL.Text:='Select p.Cantidad,p.IdPersonal, DATE(p.Fecha) as Fecha, '+
    '(Select mp.CodigoPersonal from master_personal as mp where mp.IdPersonal = p.IdPersonal) as Codigo '+
    'from rh_justificar_personal as p where p.Asistencia=:activo';
    jf.ParamByName('activo').AsString:='Si';
    jf.Open;



    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;

    vacaciones.Active:=False;
    vacaciones.SQL.Text:='Select v.*,(Select CodigoPersonal from master_personal as p where p.IdPersonal = v.IdPersonal) as CodigoPersonal '+
    'from vacaciones_pedidas as v where Date(v.FechaInicio) Between :FechaI and :FechaF ';
    Vacaciones.ParamByName('FechaI').Value:=fechaSQL(dParamFechaI);
    Vacaciones.ParamByName('FechaF').Value:=fechaSQL(dParamFechaF);
    vacaciones.Open;



    complemento := TUniquery.create(nil);
    complemento.Connection := Connection.uConnection;

    complemento.Active:=False;
    AsignarSQL(complemento,'complemento',pUpdate);
    FiltrarDataSet(complemento,'CodsPersonal',[Personales]);
    complemento.Open;

    actual:=now;
    if id='9' then
    begin
       anios:=formatdatetime('yyyy',dParamFechaF);
       mes:=formatdatetime('mm',dParamFechaF);
       a:= StrToInt(anios);
       m:= StrToInt(mes);
       Mes:=IntToStr(DaysInAMonth(a,m));
       x:= StrToInt(mes);
       anio:=FormatDateTime('yyyy',actual);
    end
    else
    begin
      act:=dParamFechaI;
      anio:=FormatDateTime('yyyy',actual);
      x:=14;
      while act <= dParamFechaF do
      begin
       act:=act+1;
      end;
    end;

     dFest.Active:=False;
     dFest.SQL.Text:='Select * FROM rhu_diasfestivos where anio = :anio';
     dFest.ParamByName('anio').AsString:=anio;
     dFest.Open;

    QueryTemp:=generador_diario;
   {$endregion}


    {$REGION 'Proceso'}
    valid:=False;
    Categorias.First;
    while not Categorias.Eof do
    begin

       if valid=True then
       begin
         generador_diario:=QueryTemp;
         valid:=false;
       end;
       dnl:=x;

       generador_diario.Filtered := False;
       generador_diario.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       generador_diario.Filtered := True;
       generador_diario.First;


       especial.Filtered := False;
       especial.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       especial.Filtered := True;
       especial.First;

       //filtra los empleados que estan de vacaciones
       Vacaciones.Filtered := False;
       Vacaciones.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       Vacaciones.Filtered := True;
       Vacaciones.First;

       //Filtra los empleados que no aplica la verificacion de huella
       noV:=especial.FieldByName('P_Especial').AsString;
       if Nov='Si' then
       begin
           especial.Filtered := False;
           generador_diario.Filtered := False;
           generador_diario:=especial;
           valid:=True;
       end;


       if generador_diario.RecordCount = 0 then
       begin
           generador_diario.Filtered := False;
           especial.Filtered := False;
           sId := generador_diario.FieldByName('CodigoPersonal').AsString;

           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
           mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
           mDatos.FieldByName('dcantTotal').AsFloat    := 0;
           mDatos.FieldByName('Salario').AsFloat    := 0;
           mDatos.FieldByName('SD').AsFloat    := 0;
           mDatos.FieldByName('DiasMes').AsFloat:= 1;
           mDatos.Post;
       end
       else
       begin

           sId := '';
           while not generador_diario.Eof do
           begin
               if sId <> (generador_diario.FieldByName('CodigoPersonal').AsString) then
               begin

                     dFechaActual := dParamFechaI;

                   CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));

                   dTotal    := 0;
                   sId    :=  generador_diario.FieldByName('CodigoPersonal').AsString;

                   contR:=0;
                   dFechaRepite := 0;
                   FechaRepiteDia := '';
                   mDatos.Append;
                   mDatos.FieldByName('Codigo').AsString := generador_diario.FieldByName('CodigoPersonal').AsString;
                   mDatos.FieldByName('Puesto').AsString := generador_diario.FieldByName('Puesto').AsString;
                   mDatos.FieldByName('Nombre').AsString := generador_diario.FieldByName('NombreCompleto').AsString;
                   mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
                   mDatos.FieldByName('Salario').AsFloat  := generador_diario.FieldByName('Salario').AsFloat;
                   mDatos.FieldByName('SD').AsFloat   := generador_diario.FieldByName('SalarioDiario').AsFloat;
               end;

               while (dFechaActual <= dParamFechaF) and (sId = generador_diario.FieldByName('CodigoPersonal').AsString) do
               begin

                   dFest.Filtered := False;
                   dFest.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) );
                   dFest.Filtered := True;

                   fecha1:=formatdatetime('yyyy/mm/dd',generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                   Tretardo:=formatdatetime('hh:nn:ss',generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                   fecha2:= formatdatetime('yyyy/mm/dd',dFechaActual);
                   temp2:=FormatDateTime('yyyy/mm/dd', dFest.FieldByName('Fecha').AsDateTime);
                   f3 := FormatDateTime('dddd', generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                   TempF1:= FormatDateTime('d',dFechaActual);
                   TempF2:=FormatDateTime('yyyy/mm/dd', dFechaActual);
                   AM:=formatdatetime('hh:nn:ss',zRetardo.FieldByName('RetardoAM').AsDateTime);
                   if dFechaRepite <> dFechaActual then
                   begin
                      cuentaRetardo := 0;
                      dFechaRepite  := dFechaActual;
                   end;

                   if lParamContinuo then
                   begin
                      if fDuplicado<>fecha2 then
                      begin
                        suma:=Suma+1;
                        mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                        mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'No';
                        mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                        generador_diario.Next;
                        fDuplicado:=fecha2;
                      end;
                      if (fecha1<>fecha2) or (generador_diario.Eof) then
                       begin
                         inc(CuentaCol);
                         dFechaActual := dFechaActual + 1;
                         dias:=0;
                         contJ:=0;
                         retar:=0;
                       end;
                       generador_diario.Next;
                    end
                   else
                   begin
                     {$region 'Catorcenales'}
                     if (Id <> '9') and (Id <> '20')  then
                      begin
                        if (fecha1=fecha2) then
                         begin
                              if fDuplicado<>fecha2 then
                              begin
                                  if (cont<2) then
                                  begin
                                  suma:=Suma+1;
                                  mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                                  mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'No';
                                  mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                end;
                              end;
                           generador_diario.Next;
                           fDuplicado:=fecha2;
                         end;

                         if cont < 2 then
                         begin
                           jf.Filtered := False;
                           jf.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) )+' and Codigo = ' + QuotedStr( sId );
                           jf.Filtered := True;


                           if (jf.RecordCount > 0) then
                           begin

                               if dias<1 then
                                begin
                                  if contJ<1 then
                                  begin
                                        suma:=Suma+1;
                                        mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                                        mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'J';
                                        mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                      flag:=True;
                                  end;
                                end;
                           end;
                         end;

                         if (fecha1<>fecha2) or (generador_diario.Eof) then
                         begin
                           inc(CuentaCol);
                           dFechaActual := dFechaActual + 1;
                           dias:=0;
                           contJ:=0;
                           retar:=0;
                         end;
                     end
                     {$endregion}
                     else
                     begin
                         if (fecha1=fecha2) then
                         begin
                            if dias<1 then
                            begin
                              if (Tretardo > '06:00:00') or (retar = 1) then
                              begin
                                 suma:=Suma+0.5;
                                 dias:=dias+0.5;
                                 mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := dias;
                                 if diasAux = 0 then
                                    mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString := 'Normal';
                                 mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                 retar:=retar+1;
                                 FechaRepiteDia := Fecha2;
                              end
                              else
                              begin
                                 dias:=dias+1;
                                 mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 0;
                                 mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString := 'Retardo';
                                 mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                 retar:=retar+1;
                                 diasAux := diasAux + 1;
                                 FechaRepiteDia := Fecha2;
                              end;
                            end;

                            if dias = 1 then
                            begin
                              dias:=0;
                            end;
                            generador_diario.Next;
                         end
                         else
                         begin
                            if FechaRepiteDia <> fecha2 then
                            begin
                               diasAux :=1;
                               FechaRepiteDia := Fecha2;

                            end
                            else
                               diasAux := 0;
                         end;

                         f3 := FormatDateTime('dddd', dFechaActual);
                         if diasAux = 1 then
                         begin
                             if (f3<>'sábado') and (f3<>'domingo') then
                             begin
                                 if cuentaRetardo = 0 then
                                 begin
                                   contR:=ContR+1;
                                   if contR=3 then
                                   begin
                                      mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := -1;
                                      mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString := 'Descuento';
                                      mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                      suma:=Suma-1;
                                   end;
                                 end;
                             end;
                             diasAux := diasAux + 1;
                         end;

                         if (f3='sábado') or (f3='domingo') then
                         begin
                             mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString := 'Fin';
                         end;

                         if fecha2=temp2 then
                         begin
                           if noV <>'Si' then
                           begin
                            dnl:=dnl+1;
                            mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                            mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'Especial';
                            mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                            Suma:=suma+1;
                           end;
                         end;

                         if cont < 2 then
                         begin
                           jf.Filtered := False;
                           jf.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) )+' and Codigo = ' + QuotedStr( sId );
                           jf.Filtered := True;
                           if (jf.RecordCount > 0) then
                           begin
                              if ( sId = jf.FieldByName('Codigo').AsString ) then
                              begin
                               if dias<1 then
                                begin
                                  if contJ<1 then
                                  begin
                                    if contR<3then
                                    begin
                                        if (dias+jf.FieldByName('Cantidad').AsFloat)>=1 then
                                        begin
                                          dias:=dias+0.5;
                                          suma:=Suma+0.5;
                                          mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                                          mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'Justi';
                                          mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                        end
                                        else
                                        begin
                                          suma:=Suma+jf.FieldByName('Cantidad').AsFloat;
                                          dias:=dias+jf.FieldByName('Cantidad').AsFloat;
                                          mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := dias;
                                          mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'Justi';
                                          mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                        end;
                                        if (f3<>'sábado') and (f3<>'domingo') then
                                           ContR:=ContR-1;
                                        flag:=True;
                                    end
                                  end;
                                  contJ:=ContJ+1;
                                end;
                              end;
                           end;
                         end;
                         if (noV='Si') then
                         begin
                           suma:=Suma+1;
                           mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                           mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'Especial';
                           mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                         end;

                         if ( dFechaActual >= vacaciones.FieldByName('FechaInicio').AsDateTime ) and (vacaciones.FieldByName('Dias').AsInteger > cDias) then
                         begin
                           suma:=Suma+1;
                           mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                           mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'Vacacion';
                           mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                           cDias:=cDias+1;
                         end
                         else
                         begin
                           cDias:=0;
                         end;

                         if(suma = StrToInt(TempF1)) then
                         begin
                            suma:=suma-0.5;
                            but:=true;
                         end;

                         if (fecha1<>fecha2) or (generador_diario.Eof) then
                         begin
                          if but then
                          begin
                            suma:=suma+0.5;
                            but:=false;
                          end;
                           inc(CuentaCol);
                           dFechaActual := dFechaActual + 1;
                           dias:=0;
                           contJ:=0;
                           retar:=0;
                           if contR = 3 then
                              contR:=0;
                         end;
                      end;
                   end;
               end;

               if (mDatos.State = dsInsert) or (mDatos.State = dsEdit) then
               begin
                 if Suma < 0 then
                    Suma := 0;
                 mDatos.FieldByName('dcantTotal').AsFloat := Suma;
                 if id<>'9' then
                 begin
                   mDatos.FieldByName('DiasMes').AsFloat:= x;
                 end
                 else
                 begin
                   mDatos.FieldByName('DiasMes').AsFloat:= dnl;
                 end;
                 mDatos.Post;
                 suma:=0;
                 contR:=0;
                 cDias:=0;
                 Flap:=False;
               end;


               generador_diario.Next;
           end;
       end;
       Categorias.Next;
    end;

    while not complemento.Eof do
    begin
       mDatos.Append;
       mDatos.FieldByName('Codigo').AsString := complemento.FieldByName('CodigoPersonal').AsString;
       mDatos.FieldByName('Puesto').AsString := '';
       mDatos.FieldByName('Nombre').AsString := complemento.FieldByName('NombreCompleto').AsString;
       mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
       mDatos.FieldByName('dcantTotal').AsFloat    := 0;
       mDatos.FieldByName('Salario').AsFloat    := 0;
       mDatos.FieldByName('SD').AsFloat    := 0;
       mDatos.FieldByName('DiasMes').AsFloat:= 1;
       mDatos.Post;
       complemento.Next;
    end;

    {$ENDREGION}

    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
   // rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

    if lParamContinuo then
       rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneradorFolio.fr3')
    else
       rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneradorFolio.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

   // rDiario.Destroy;
    dsDiasLaborados.Destroy;
    generador_diario.Destroy;
    categorias.Destroy;
    dFest.Destroy;
    jf.Destroy;
end;


Procedure procReporteDiasLaboradosHora(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String=''; CodigosPersonal:String='-1'; Personales:String='-1');
var
    dsDiasLaborados : TfrxDBDataSet;
    zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario,
    vacaciones, qryConfiguracion, complemento : tUniQuery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    auxT,dFechaActual,act,dFechaRepite:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3,fDuplicado, FechaRepiteDia : string;
    cDias,ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol,retar : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    contJ,dTotal,salario,suma,dias, diasAux : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    flag,but:Boolean;
    cuentaRetardo : integer;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;
    flag:=False;
    {$region 'Categorias'}
    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    AsignarSQL(categorias,'dias_laborados_reporte',pUpdate);
    FiltrarDataSet(categorias,'CodsPersonal, Activo, IdGuardia',[CodigosPersonal,'Si',id]);
    categorias.Open;

    categorias.RecordCount;

    vacaciones := TUniquery.create(nil);
    vacaciones.Connection := Connection.uConnection;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'dcantTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'dSumSubTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Salario', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'SD', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'DiasMes', FtFloat, 0, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mDatos,'dCantidad' + Inttostr(CuentaCol), FtString, 15, false);
          CreaCampoMemData(mDatos,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mDatos,'dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'Especial' + Inttostr(CuentaCol), FtString, 10, False);
        end;
        Active:=true;
      end;

    mTotales:=TdxMemData.Create(nil);
    with mTotales do
      begin
        Active:=false;
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mTotales, 'dTotal' + Inttostr(CuentaCol),FtFloat,0,False);
          CreaCampoMemData(mTotales, 'iDia'+ Inttostr(CuentaCol),ftInteger,0,False);
        end;
       Active:=true;
       mTotales.Close;
       mTotales.Open;
      end;

    for CuentaCol := 1 to 31 do
    begin
        mTotales.Append;
        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
        mTotales.Post;
    end;

    mSubTotal:=TdxMemData.Create(nil);
    with mSubTotal do
      begin
        Active:=false;
        CreaCampoMemData(mSubTotal,'sIdRecurso', ftString, 100, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mSubTotal,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mSubTotal,'dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
        end;
        Active:=true;
      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
        mSubTotal.Append;
        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
        for CuentaCol:=1 to 31 do
        begin
          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Consultas'}
    //Ahora vienen las consultas del generador..

    QueryTemp := TUniquery.create(nil);
    QueryTemp.Connection := Connection.uConnection;
    QueryTemp.Active;

    jf := TUniquery.create(nil);
    jf.Connection := Connection.uConnection;
    jf.Active:=False;
    jf.SQL.Text:='Select p.Cantidad,p.IdPersonal, DATE(p.Fecha) as Fecha, '+
    '(Select mp.CodigoPersonal from master_personal as mp where mp.IdPersonal = p.IdPersonal) as Codigo '+
    'from rh_justificar_personal as p where p.Asistencia=:activo';
    jf.ParamByName('activo').AsString:='Si';
    jf.Open;


    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle_horarios',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;

   {$endregion}


    {$REGION 'Proceso'}
    valid:=False;
    Categorias.First;
    while not Categorias.Eof do
    begin
       dnl:=x;

       generador_diario.Filtered := False;
       generador_diario.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       generador_diario.Filtered := True;
       generador_diario.First;


       if generador_diario.RecordCount = 0 then
       begin
           generador_diario.Filtered := False;
           sId := generador_diario.FieldByName('CodigoPersonal').AsString;

           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
           mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
           mDatos.FieldByName('dcantTotal').AsFloat    := 0;
           mDatos.FieldByName('Salario').AsFloat    := 0;
           mDatos.FieldByName('SD').AsFloat    := 0;
           mDatos.FieldByName('DiasMes').AsFloat:= 1;
           mDatos.Post;
       end
       else
       begin

           sId := '';
           while not generador_diario.Eof do
           begin
               if sId <> (generador_diario.FieldByName('CodigoPersonal').AsString) then
               begin

                   dFechaActual := dParamFechaI;
                   CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));

                   dTotal    := 0;
                   sId    :=  generador_diario.FieldByName('CodigoPersonal').AsString;

                   contR:=0;
                   dFechaRepite := 0;
                   FechaRepiteDia := '';
                   mDatos.Append;
                   mDatos.FieldByName('Codigo').AsString := generador_diario.FieldByName('CodigoPersonal').AsString;
                   mDatos.FieldByName('Puesto').AsString := generador_diario.FieldByName('Puesto').AsString;
                   mDatos.FieldByName('Nombre').AsString := generador_diario.FieldByName('NombreCompleto').AsString;
                   mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
                   mDatos.FieldByName('Salario').AsFloat  := generador_diario.FieldByName('Salario').AsFloat;
                   mDatos.FieldByName('SD').AsFloat   := generador_diario.FieldByName('SalarioDiario').AsFloat;
               end;

               while (dFechaActual <= dParamFechaF) and (sId = generador_diario.FieldByName('CodigoPersonal').AsString) do
               begin
                   fecha1:=formatdatetime('yyyy/mm/dd',generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                   fecha2:= formatdatetime('yyyy/mm/dd',dFechaActual);

                   if lParamContinuo then
                   begin
                      if fecha1=fecha2 then
                      begin
                        suma:=Suma+1;
                        mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsString := mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsString + ' ' + generador_diario.FieldByName('Hora').AsString;
                        mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString  := 'No';
                        mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger     := CuentaCol;
                        generador_diario.Next;
                        fecha1:=fecha2;
                      end;

                      if (fecha1<>fecha2) or (generador_diario.Eof) then
                      begin
                         inc(CuentaCol);
                         dFechaActual := dFechaActual + 1;
                      end;
                    end
               end;

               if (mDatos.State = dsInsert) or (mDatos.State = dsEdit) then
               begin
                 mDatos.FieldByName('dcantTotal').AsFloat := 0;
                 mDatos.FieldByName('DiasMes').AsFloat:= CuentaCol;
                 mDatos.Post;
               end;
               generador_diario.Next;
           end;
       end;
       Categorias.Next;
    end;

    {$ENDREGION}

    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
   // rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

    if lParamContinuo then
       rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneradorAsistenciaHora.fr3')
    else
       rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneradorAsistenciaHora.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...
    dsDiasLaborados.Destroy;
    generador_diario.Destroy;
    categorias.Destroy;
end;


procedure ReporteDescuentos(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';CodigosPersonal:String='-1');
var
    dsDiasLaborados : TfrxDBDataSet;
    zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario,
    vacaciones, qryConfiguracion : tUniQuery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    auxT,dFechaActual,act:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3,fDuplicado : string;
    cDias,contDS,ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol,retar : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    contJ,dTotal,salario,suma,dias : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    flag:Boolean;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;
    flag:=False;
    {$region 'Categorias'}
    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    AsignarSQL(categorias,'dias_laborados_reporte',pUpdate);
    FiltrarDataSet(categorias,'CodsPersonal, Activo, IdGuardia',[CodigosPersonal,'Si',id]);
    categorias.Open;

    categorias.RecordCount;

    vacaciones := TUniquery.create(nil);
    vacaciones.Connection := Connection.uConnection;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'dcantTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'dSumSubTotal', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Salario', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Salario2', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'DiasMes', FtFloat, 0, True);
//        CreaCampoMemData(mDatos,'Especial', FtString, 10, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mDatos,'dCantidad' + Inttostr(CuentaCol), FtString, 10, false);
          CreaCampoMemData(mDatos,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mDatos,'dTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'dSubTotalDia' + Inttostr(CuentaCol), FtFloat, 0, false);
          CreaCampoMemData(mDatos,'Especial' + Inttostr(CuentaCol), FtString, 10, False);
        end;
        Active:=true;
      end;

    mTotales:=TdxMemData.Create(nil);
    with mTotales do
      begin
        Active:=false;
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mTotales, 'dTotal' + Inttostr(CuentaCol),FtFloat,0,False);
          CreaCampoMemData(mTotales, 'iDia'+ Inttostr(CuentaCol),ftInteger,0,False);
        end;
       Active:=true;
       mTotales.Close;
       mTotales.Open;
      end;

    for CuentaCol := 1 to 31 do
    begin
        mTotales.Append;
        mTotales.FieldByName('dTotal'+ Inttostr(CuentaCol)).AsFloat := 0;
        mtotales.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
        mTotales.Post;
    end;

    mSubTotal:=TdxMemData.Create(nil);
    with mSubTotal do
      begin
        Active:=false;
        CreaCampoMemData(mSubTotal,'sIdRecurso', ftString, 100, True);
        for CuentaCol:=1 to 31 do
        begin
          CreaCampoMemData(mSubTotal,'iDia'+ Inttostr(CuentaCol), ftInteger, 0, false);
          CreaCampoMemData(mSubTotal,'dSubTotal' + Inttostr(CuentaCol), FtFloat, 0, false);
        end;
        Active:=true;
      end;

    Categorias.First;
    while not Categorias.Eof do
    begin
        mSubTotal.Append;
        mSubTotal.FieldByName('sIdRecurso').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
        for CuentaCol:=1 to 31 do
        begin
          mSubTotal.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger := CuentaCol;
          mSubTotal.FieldByName('dSubTotal' + Inttostr(CuentaCol)).AsFloat := 0;
        end;
        mSubTotal.Post;
        Categorias.Next;
    end;

    {$endregion}

    {$REGION 'Consultas'}
    //Ahora vienen las consultas del generador..
    dFest := TUniquery.create(nil);
    dFest.Connection := Connection.uConnection;

    especial := TUniquery.create(nil);
    especial.Connection := Connection.uConnection;

    zRetardo := TUniquery.create(nil);
    zRetardo.Connection := Connection.uConnection;

    zRetardo.Active:=False;
    zRetardo.SQL.Text:='select RetardoAM, RetardoPM from configuracion';
    zRetardo.Open;

    QueryTemp := TUniquery.create(nil);
    QueryTemp.Connection := Connection.uConnection;
    QueryTemp.Active;

    especial.Active:=False;
    AsignarSQL(especial,'p_noVerifica',pUpdate);
    especial.Open;

    jf := TUniquery.create(nil);
    jf.Connection := Connection.uConnection;
    jf.Active:=False;
    jf.SQL.Text:='Select p.Cantidad,p.IdPersonal, DATE(p.Fecha) as Fecha, '+
    '(Select mp.CodigoPersonal from master_personal as mp where mp.IdPersonal = p.IdPersonal) as Codigo '+
    'from rh_justificar_personal as p where p.Asistencia=:activo order by p.Fecha asc ';
    jf.ParamByName('activo').AsString:='Si';
    jf.Open;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;

    vacaciones.Active:=False;
    vacaciones.SQL.Text:='Select v.*,(Select CodigoPersonal from master_personal as p where p.IdPersonal = v.IdPersonal) as CodigoPersonal '+
    'from vacaciones_pedidas as v where Date(v.FechaInicio) Between :FechaI and :FechaF ';
    Vacaciones.ParamByName('FechaI').Value:=fechaSQL(dParamFechaI);
    Vacaciones.ParamByName('FechaF').Value:=fechaSQL(dParamFechaF);
    vacaciones.Open;

    actual:=now;
    if id='9' then
    begin
       anios:=formatdatetime('yyyy',dParamFechaF);
       mes:=formatdatetime('mm',dParamFechaF);
       a:= StrToInt(anios);
       m:= StrToInt(mes);
       Mes:=IntToStr(DaysInAMonth(a,m));
       x:= StrToInt(mes);
       anio:=FormatDateTime('yyyy',actual);
    end
    else
    begin
      act:=dParamFechaI;
      anio:=FormatDateTime('yyyy',actual);
      x:=14;
      while act <= dParamFechaF do
      begin
       act:=act+1;
      end;
    end;

     dFest.Active:=False;
     dFest.SQL.Text:='Select * FROM rhu_diasfestivos where anio = :anio';
     dFest.ParamByName('anio').AsString:=anio;
     dFest.Open;

    QueryTemp:=generador_diario;
   {$endregion}


    {$REGION 'Proceso'}
    valid:=False;
    Categorias.First;
    while not Categorias.Eof do
    begin
       if valid=True then
       begin
         generador_diario:=QueryTemp;
         valid:=false;
       end;
       dnl:=x;
       generador_diario.Filtered := False;
       generador_diario.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       generador_diario.Filtered := True;
       generador_diario.First;

       especial.Filtered := False;
       especial.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       especial.Filtered := True;
       especial.First;

       Vacaciones.Filtered := False;
       Vacaciones.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       Vacaciones.Filtered := True;
       Vacaciones.First;

       noV:=especial.FieldByName('P_Especial').AsString;
       if Nov='Si' then
       begin
           especial.Filtered := False;
           generador_diario.Filtered := False;
           generador_diario:=especial;
           valid:=True;
       end;
       if generador_diario.RecordCount = 0 then
       begin
           generador_diario.Filtered := False;
           especial.Filtered := False;
           sId := generador_diario.FieldByName('CodigoPersonal').AsString;

           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Puesto').AsString := Categorias.FieldByName('Puesto').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
           mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
           mDatos.FieldByName('dcantTotal').AsFloat    := 0;
           mDatos.FieldByName('Salario').AsFloat    := 0;
           mDatos.FieldByName('Salario2').AsFloat    := 0;
           mDatos.FieldByName('DiasMes').AsFloat:= 1;
           mDatos.Post;
       end
       else
       begin
           sId := '';
           while not generador_diario.Eof do
           begin
               if sId <> (generador_diario.FieldByName('CodigoPersonal').AsString) then
               begin

                   dFechaActual := dParamFechaI;

                   CuentaCol := StrToInt(copy(DateToStr(dFechaActual),1,2));
                   //flag:=False;
                   dTotal    := 0;
                   sId    :=  generador_diario.FieldByName('CodigoPersonal').AsString;
                   cont:=0;
                   contR:=0;
                   mDatos.Append;
                   mDatos.FieldByName('Codigo').AsString := generador_diario.FieldByName('CodigoPersonal').AsString;
                   mDatos.FieldByName('Puesto').AsString := generador_diario.FieldByName('Puesto').AsString;
                   mDatos.FieldByName('Nombre').AsString := generador_diario.FieldByName('NombreCompleto').AsString;
                   mDatos.FieldByName('dSumSubTotal').AsFloat  := 0;
                   mDatos.FieldByName('Salario').AsFloat  := generador_diario.FieldByName('Salario').AsFloat;
                   mDatos.FieldByName('Salario2').AsFloat   := generador_diario.FieldByName('Salario').AsFloat;
               end;

               while (dFechaActual <= dParamFechaF) and (sId = generador_diario.FieldByName('CodigoPersonal').AsString) do
               begin

                   dFest.Filtered := False;
                   dFest.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) );
                   dFest.Filtered := True;

                   fecha1:=formatdatetime('yyyy/mm/dd',generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                   Tretardo:=formatdatetime('hh:nn:ss',generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                   fecha2:= formatdatetime('yyyy/mm/dd',dFechaActual);
                   temp2:=FormatDateTime('yyyy/mm/dd', dFest.FieldByName('Fecha').AsDateTime);
                   f3 := FormatDateTime('dddd', generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                   TempF1:= FormatDateTime('dddd',dFechaActual);
                   TempF2:=FormatDateTime('yyyy/mm/dd', dFechaActual);
                   AM:=formatdatetime('hh:nn:ss',zRetardo.FieldByName('RetardoAM').AsDateTime);

                   if lParamContinuo then
                   begin
                      if fDuplicado<>fecha2 then
                      begin
                       suma:=Suma+1;
                       mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 0;
                       mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'No';
                       mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                       generador_diario.Next;
                       fDuplicado:=fecha2;
                      end;
                      if (fecha1<>fecha2) or (generador_diario.Eof) then
                      begin
                       inc(CuentaCol);
                       dFechaActual := dFechaActual + 1;
                       cont:=0;
                       dias:=0;
                       contJ:=0;
                       retar:=0;
                      end;
                      generador_diario.Next;
                   end
                   else
                   begin
                     if Id <> '9' then
                      begin
                          if (fecha1=fecha2) then
                           begin
                                if fDuplicado<>fecha2 then
                                begin
                                    if (cont<2) then
                                    begin
                                    suma:=Suma+1;
                                    dias:=dias+1;
                                    mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := dias;
                                    mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'No';
                                    mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                    cont:=cont+1;

                                    if dias = 1 then
                                    begin
                                      dias:=0;
                                    end;
                                  end;
                                end;
                             generador_diario.Next;
                             fDuplicado:=fecha2;
                           end;

                           if cont < 2 then
                           begin
                             jf.Filtered := False;
                             jf.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) )+' and Codigo = ' + QuotedStr( sId );
                             jf.Filtered := True;
                             if (jf.RecordCount > 0) then
                             begin
                                if ( sId = jf.FieldByName('Codigo').AsString ) then
                                begin
                                 if dias<1 then
                                  begin
                                    if contJ<1 then
                                    begin

     //                                   if (dias+jf.FieldByName('Cantidad').AsFloat)>=1 then
     //                                   begin
                                          dias:=dias+1;
                                          suma:=Suma+1;
                                          mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                                          mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'J';
                                          mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
    //                                    end
    //                                    else
    //                                    begin
    //                                      suma:=Suma+jf.FieldByName('Cantidad').AsFloat;
    //                                      dias:=dias+jf.FieldByName('Cantidad').AsFloat;
    //                                      mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := dias;
    //                                      mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'J';
    //                                      mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
    //                                    end;
          //                                ContR:=ContR+1;
                                        flag:=True;
                                    end;
                                    //contJ:=ContJ+1;
                                  end;
                                end;
                             end;
                           end;

                           if (fecha1<>fecha2) or (generador_diario.Eof) then
                           begin
                             inc(CuentaCol);
                             dFechaActual := dFechaActual + 1;
                             cont:=0;
                             dias:=0;
                             contJ:=0;
                             retar:=0;
                           end;
                      end
                      else
                      begin
                           if (fecha1=fecha2) then
                           begin
                              if (f3<>'sábado') then
                              begin
                                if temp2<>fecha2 then
                                begin
                                    contDS:=0;
                                    if (cont<2) then
                                    begin
                                      if dias<1 then
                                      begin
                                      if (Tretardo < AM) or (retar = 1) then
                                        begin
                                        if contR<3then
                                        begin
                                         suma:=Suma+0.5;
                                         dias:=dias+0.5;
                                         mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := dias;
                                         mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'No';
                                         mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                         cont:=cont+1;
                                         retar:=retar+1;
                                        end
                                        else
                                        begin
                                         dias:=dias+1;
                                         mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 0;
                                         mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := '-1';
                                         mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                         cont:=cont+1;
                                         retar:=retar+1;
                                         //flap:=True;
                                        end;
                                      end
                                      else
                                      begin
                                        if contR<3then
                                        begin
                                         dias:=dias+0.5;
                                         mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 0;
                                         mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'R';
                                         mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                         cont:=cont+1;
                                         contR:=ContR+1;
                                        end
                                        else
                                        begin
                                         dias:=dias+1;
                                         mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 0;
                                         mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := '-1';
                                         mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                         cont:=cont+1;
                                         contR:=0;
                                         //flap:=True;
                                        end;
                                      end;
                                    end;
                                    if dias = 1 then
                                    begin
                                      dias:=0;
                                    end;
                                  end;
                                end;
                              end;
                             generador_diario.Next;
                           end;

                           if (TempF1='sábado') or (TempF1='domingo') then
                           begin
                             if noV <>'Si' then
                             begin
                                mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                                mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'No';
                                mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                Suma:=suma+1;
                             end;
                           end;
                            if fecha2=temp2 then
                           begin
                             if noV <>'Si' then
                             begin
                              dnl:=dnl+1;
                              mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                              mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'No';
                              mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                              Suma:=suma+1;
                             end;
                           end;

                           if cont < 2 then
                           begin
                             jf.Filtered := False;
                             jf.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) )+' and Codigo = ' + QuotedStr( sId );
                             jf.Filtered := True;
                             if (jf.RecordCount > 0) then
                             begin
                                if ( sId = jf.FieldByName('Codigo').AsString ) then
                                begin
                                 if dias<1 then
                                  begin
                                    if contJ<1 then
                                    begin
                                     if contR<3then
                                      begin
                                        if (dias+jf.FieldByName('Cantidad').AsFloat)>=1 then
                                        begin
                                          dias:=dias+0.5;
                                          suma:=Suma+0.5;
                                          mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                                          mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'J';
                                          mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                        end
                                        else
                                        begin
                                          suma:=Suma+jf.FieldByName('Cantidad').AsFloat;
                                          dias:=dias+jf.FieldByName('Cantidad').AsFloat;
                                          mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := dias;
                                          mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'J';
                                          mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                                        end;
          //                                ContR:=ContR+1;
                                        flag:=True;
                                      end
                                      else
                                      begin
                                          mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := -1;
                                          mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := '0';
                                          mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
          //                                  ContR:=0;
                                          flag:=True;
                                      end;
                                    end;
                                    contJ:=ContJ+1;
                                  end;
                                end;
                             end;
                           end;
                           if (noV='Si') then
                           begin
                             suma:=Suma+1;
                             mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                             mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'Si';
                             mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                           end;

                           if ( dFechaActual >= vacaciones.FieldByName('FechaInicio').AsDateTime ) and (vacaciones.FieldByName('Dias').AsInteger > cDias) then
                           begin
                             suma:=Suma+1;
                             mDatos.FieldByName('dCantidad'+ Inttostr(CuentaCol)).AsFloat := 1;
                             mDatos.FieldByName('Especial'+ Inttostr(CuentaCol)).AsString    := 'A';
                             mDatos.FieldByName('iDia'+ Inttostr(CuentaCol)).AsInteger    := CuentaCol;
                             cDias:=cDias+1;
                           end
                           else
                           begin
                             cDias:=0;
                           end;

                           if (fecha1<>fecha2) or (generador_diario.Eof) then
                           begin
                             inc(CuentaCol);
                             dFechaActual := dFechaActual + 1;
                             cont:=0;
                             dias:=0;
                             contJ:=0;
                             retar:=0;
                           end;
                      end;
                   end;

               end;

               if (mDatos.State = dsInsert) or (mDatos.State = dsEdit) then
               begin
                 mDatos.FieldByName('dcantTotal').AsFloat := Suma;
                 if id<>'9' then
                 begin
                   mDatos.FieldByName('DiasMes').AsFloat:= x;
                 end
                 else
                 begin
                   mDatos.FieldByName('DiasMes').AsFloat:= dnl;
                 end;
                 mDatos.Post;
                 suma:=0;
                 contR:=0;
                 cDias:=0;
                 Flap:=False;
               end;
               generador_diario.Next;
           end;
       end;
       Categorias.Next;
    end;

    {$ENDREGION}

    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
   // rDiarioFirmas(sParamContrato, '', 'A', dParamFechaF, tOrigen);

    if lParamContinuo then
       rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneradorDescuento.fr3')
    else
       rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneradorDescuento.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

   // rDiario.Destroy;
    dsDiasLaborados.Destroy;
    generador_diario.Destroy;
    categorias.Destroy;
    dFest.Destroy;
    jf.Destroy;
end;


procedure CreaCampoMemData(Memoria: TDataSet; NombreCampo: string; TipoDato: TFieldType; iSize :Integer; lRequired : boolean );
begin
  if (Memoria = nil) or (NombreCampo = '') then
    Exit;
  with Memoria.FieldDefs.AddFieldDef do
  begin
    Name := NombreCampo;
    DataType := TipoDato;
    Size     := iSize;
    Required := lRequired;
    CreateField(Memoria);
  end;
end;

Procedure procReporteNominasRH(lParamContinuo :boolean; FInicio, FTermino, dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';idp:String='';Tipo:String=''; CodigosPersonal:String='-1');
var
    dsDiasLaborados : TfrxDBDataSet;
    cat,Bonos,Reembolso,zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    auxT,dFechaActual,act:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3,auxV : string;
    ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    dTotal,salario,suma,dias : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    validar,zAnti:TUniquery;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;

    {$region 'Categorias'}
    validar := tUniQuery.create(nil);
    validar.Connection := Connection.uConnection;
    validar.Active:=False;
    validar.SQL.Text:='SELECT *, '+
                      'if(YEAR(:Fecha) = YEAR(Fecha) and MONTH(:Fecha) = MONTH(Fecha),'+
                      QuotedStr( 'True' )+','+QuotedStr( 'False' )+') '+
                      'as Validado '+
                      'FROM validacion_nomina where IdGuardia = '+idP+' group by Nombre,Tipo';
    validar.Params.ParamByName('Fecha').Value:=fechaSQL(dParamFechaI);
    validar.Open;

    zAnti := tUniQuery.create(nil);
    ZAnti.Connection := Connection.uConnection;
    zAnti.Active:=False;
    AsignarSQL(zAnti,'ReporteAnticipo',pUpdate);
    FiltrarDataSet(zAnti,'FechaI,FechaF,Guardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),Idp]);
    zAnti.Open;

    zRetardo := TUniquery.create(nil);
    zRetardo.Connection := Connection.uConnection;

    zRetardo.Active:=False;
    zRetardo.SQL.Text:='select RetardoAM, RetardoPM from configuracion';
    zRetardo.Open;

    jf := TUniquery.create(nil);
    jf.Connection := Connection.uConnection;
    jf.Active:=False;
    jf.SQL.Text:='Select p.Codigo,p.Cantidad,p.IdPersonal, DATE(p.Fecha) as Fecha '+
                 'from rh_justificar_personal as p where p.Asistencia=:activo';
    jf.ParamByName('activo').AsString:='Si';
    jf.Open;

    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    AsignarSQL(categorias,'ReporteNomina',pUpdate);
    FiltrarDataSet(categorias,'Activo,IdGuardia,CodsPersonal',['Si',Id,CodigosPersonal]);
    categorias.Open;

    Cat := tUniQuery.create(nil);
    Cat.Connection := Connection.uConnection;

    id := StringReplace(id, ' ', '', [rfReplaceAll]);
    cat.Active:=False;
    AsignarSQL(cat,'ReporteTiempoExtra',pUpdate);
    FiltrarDataSet(cat,'FechaI,FechaF,IdGuardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),id]);
    cat.Open;

    if Categorias.RecordCount = 0 then
    begin
      ShowMessage('No hay Datos');
      exit
    end;

    Bonos := TUniquery.create(nil);
    Bonos.Connection := Connection.uConnection;
    Bonos.Active:=False;
    AsignarSQL(Bonos,'ReporteBonos',pUpdate);
    FiltrarDataSet(Bonos,'Activo,IdGuardia',['Si',id]);
    Bonos.Open;

    Reembolso := TUniquery.create(nil);
    Reembolso.Connection := Connection.uConnection;
    Reembolso.Active:=False;
    AsignarSQL(Reembolso,'ReporteReembolso',pUpdate);
    FiltrarDataSet(Reembolso,'Activo,IdGuardia',['Si',id]);
    Reembolso.Open;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Rfc', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Salario', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Banco', ftString, 50, True);
        CreaCampoMemData(mDatos,'Cuenta', ftString, 120, True);
        CreaCampoMemData(mDatos,'Clave', ftString, 120, True);
        CreaCampoMemData(mDatos,'Concepto', ftString, 160, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 160, True);
        CreaCampoMemData(mDatos,'validar', ftString, 200, True);
        Active:=true;
      end;


    {$endregion}



    {$REGION 'Proceso'}
    actual:=now;
    anio:=FormatDateTime('yyyy',actual);
    dFest := TUniquery.create(nil);
    dFest.Connection := Connection.uConnection;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    especial := TUniquery.create(nil);
    especial.Connection := Connection.uConnection;

    QueryTemp := TUniquery.create(nil);
    QueryTemp.Connection := Connection.uConnection;
    QueryTemp.Active;

    especial.Active:=False;
    AsignarSQL(especial,'p_noVerifica',pUpdate);
    especial.Open;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;

    anios:=formatdatetime('yyyy',dParamFechaF);
    mes:=formatdatetime('mm',dParamFechaF);
    a:= StrToInt(anios);
    m:= StrToInt(mes);
    Mes:=IntToStr(DaysInAMonth(a,m));
    x:= StrToInt(mes);

    dFest.Active:=False;
    dFest.SQL.Text:='Select * FROM rhu_diasfestivos where anio = :anio';
    dFest.ParamByName('anio').AsString:=anio;
    dFest.Open;

    QueryTemp:=generador_diario;

    Categorias.First;
    valid:=False;
    while not Categorias.Eof do
    begin
       if valid=True then
       begin
         generador_diario:=QueryTemp;
         valid:=false;
       end;
       dnl:=x;
       generador_diario.Filtered := False;
       generador_diario.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       generador_diario.Filtered := True;
       generador_diario.First;

       especial.Filtered := False;
       especial.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       especial.Filtered := True;
       especial.First;

       noV:=especial.FieldByName('P_Especial').AsString;
       if Nov='Si' then
       begin
           especial.Filtered := False;
           generador_diario.Filtered := False;
           generador_diario:=especial;
           valid:=True;
       end;

         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
         mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= 'Nomina '+FormatDateTime(' d ',dParamFechaI)+' al '+mes+FormatDateTime('" de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= Categorias.FieldByName('Nombre').AsString;

         if auxV='' then
         begin
           validar.First;
           while not validar.Eof do
           begin
            if Tipo = validar.FieldByName('Tipo').AsString then
            begin
              if validar.FieldByName('Validado').AsString = 'True' then
              begin
                auxV:=auxV+'Autorizado por '+Validar.FieldByName('Nombre').AsString+''#13;
              end;
            end;
            validar.Next;
           end;
           mDatos.FieldByName('validar').AsString:=AuxV;
         end
         else
         begin
           mDatos.FieldByName('validar').AsString:=AuxV;
         end;


          sId := '';
           while not generador_diario.Eof do
           begin

               if sId <> (generador_diario.FieldByName('CodigoPersonal').AsString) then
               begin
                 dFechaActual := dParamFechaI;
                 sId    :=  generador_diario.FieldByName('CodigoPersonal').AsString;
                 cont:=0;
               end;

               while (dFechaActual <= dParamFechaF) and (sId = generador_diario.FieldByName('CodigoPersonal').AsString) do
               begin
                    dFest.Filtered := False;
                    dFest.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) );
                    dFest.Filtered := True;

                    fecha1:=formatdatetime('yyyy/mm/dd',generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                    fecha2:= formatdatetime('yyyy/mm/dd',dFechaActual);
                    Tretardo:=formatdatetime('hh:nn:ss',generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                    temp2:=FormatDateTime('yyyy/mm/dd', dFest.FieldByName('Fecha').AsDateTime);
                    f3 := FormatDateTime('dddd', generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                    TempF1:= FormatDateTime('dddd',dFechaActual);
                    TempF2:=FormatDateTime('yyyy/mm/dd', dFechaActual);
                    AM:=formatdatetime('hh:nn:ss',zRetardo.FieldByName('RetardoAM').AsDateTime);

                    if (fecha1=fecha2)then
                    begin
                      if (f3<>'sábado') then
                      begin
                        if temp2<>fecha2 then
                        begin
                          if (cont<2) then
                          begin
                            if (tRetardo >= AM) and (TRetardo <= '11:30:00')then
                            begin
                              ContR:=ContR+1;
                            end;
                            if dias<1 then
                            begin
                              if contR<=3then
                              begin
                                suma:=Suma+0.5;
                                dias:=dias+0.5;
                                cont:=cont+1;
                              end
                              else
                              begin
                                flap:=True;
                              end;
                            end;
                          end;
                          if dias = 1 then
                          begin
                            dias:=0;
                          end;
                        end;
                      end;
                      generador_diario.Next;
                    end;
                   if (TempF1='sábado') or (TempF1='domingo')then
                   begin
                    if noV <>'Si' then
                     begin
                       Suma:=suma+1;
                     end;
                   end;
                   if temp2=fecha2 then
                   begin
                     if noV <>'Si' then
                     begin
                       Suma:=suma+1;
                      dnl:=dnl+1;
                     end;
                   end;
                   if cont < 2 then
                   begin
                     jf.Filtered := False;
                     jf.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) );
                     jf.Filtered := True;
                     if (jf.RecordCount > 0) then
                     begin
                        if ( sId = jf.FieldByName('Codigo').AsString ) then
                        begin
                         if dias<1 then
                          begin
                            if (dias+jf.FieldByName('Cantidad').AsFloat)>1 then
                            begin
                              dias:=dias+0.5;
                              suma:=Suma+0.5;
                            end
                            else
                            begin
                              suma:=Suma+jf.FieldByName('Cantidad').AsFloat;
                              dias:=dias+jf.FieldByName('Cantidad').AsFloat;
                            end;
                          end;

                        end;
                     end;
                   end;
                   if (noV='Si') then
                   begin
                       suma:=Suma+1;
                   end;
                   if (fecha1<>fecha2) or (generador_diario.Eof) then
                   begin
                       cont:=0;
                       dias:=0;
                       dFechaActual := dFechaActual + 1;
                     if Flap=True then
                     begin
                       contR:=0;
                     end;
                   end;
               end;
               generador_diario.Next;
           end;
           mDatos.FieldByName('Salario').AsFloat:= (Categorias.FieldByName('salario').AsFloat/dnl)*Suma;
           mDatos.Post;
           suma:=0;
           contR:=0;

       Categorias.Next;
    end;

    Categorias.First;
    while not Categorias.Eof do
    begin
       Reembolso.Filtered := False;
       Reembolso.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       Reembolso.Filtered := True;
       Reembolso.First;

       //if (Tipo = Categorias.FieldByName('Departamento').AsString) and (Reembolso.FieldByName('CodigoPersonal').AsString<>'') then
       //begin
         if copy(DateToStr(Reembolso.FieldByName('Fecha').AsDateTime),4,8) = copy(DateToStr(now),4,8) then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Reembolso.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
           mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
           mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
           mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
           mDatos.FieldByName('Concepto').AsString:= 'Nomina '+FormatDateTime(' d ',dParamFechaI)+' al '+mes+FormatDateTime('" de " mmmm yyyy ',dParamFechaF);
           mDatos.FieldByName('Puesto').AsString:= Reembolso.FieldByName('Nota').AsString;
           mDatos.FieldByName('validar').AsString:='';
           mDatos.FieldByName('Salario').AsFloat:= Reembolso.FieldByName('Monto').AsFloat;
           mDatos.Post;
         end;
       //end;
       Categorias.Next;
    end;

    Categorias.First;
    while not Categorias.Eof do
    begin
       Bonos.Filtered := False;
       Bonos.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       Bonos.Filtered := True;
       Bonos.First;

       if (Tipo = Categorias.FieldByName('Departamento').AsString) and (Bonos.FieldByName('CodigoPersonal').AsString<>'') then
       begin
         if copy(DateToStr(Bonos.FieldByName('Fecha').AsDateTime),4,8) = copy(DateToStr(dFechaActual),4,8) then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Bonos.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
           mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
           mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
           mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
           mDatos.FieldByName('Concepto').AsString:= 'Nomina '+FormatDateTime(' d ',dParamFechaI)+' al '+mes+FormatDateTime('" de " mmmm yyyy ',dParamFechaF);
           mDatos.FieldByName('Puesto').AsString:= Bonos.FieldByName('Nota').AsString;
           mDatos.FieldByName('validar').AsString:='';
           mDatos.FieldByName('Salario').AsFloat:= Bonos.FieldByName('Monto').AsFloat;
           mDatos.Post;
         end;
       end;
       Categorias.Next;
    end;

    cat.First;
    while not cat.Eof do
    begin
      if cat.FieldByName('Nomina').AsString = 'Nomina RH' then
      begin
         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := cat.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := cat.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := cat.FieldByName('NombreCompleto').AsString+' '+
         cat.FieldByName('Nota').AsString;
         mDatos.FieldByName('Banco').AsString:= cat.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= cat.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= cat.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= cat.FieldByName('Guardia').AsString+' '+FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= cat.FieldByName('Nombre').AsString+' DEL PERIODO ' + FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('validar').AsString:='';
         mDatos.FieldByName('Salario').AsFloat:= cat.FieldByName('Monto').AsFloat;
         mDatos.Post;
      end;
      if cat.FieldByName('Nomina').AsString = 'Nomina OP' then
      begin
         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := cat.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := cat.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := cat.FieldByName('NombreCompleto').AsString+' '+
         cat.FieldByName('Nota').AsString;
         mDatos.FieldByName('Banco').AsString:= cat.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= cat.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= cat.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= cat.FieldByName('Guardia').AsString+' '+FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= cat.FieldByName('Nombre').AsString+' DEL PERIODO ' + FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('validar').AsString:='';
         mDatos.FieldByName('Salario').AsFloat:= cat.FieldByName('Monto').AsFloat;
         mDatos.Post;
      end;
       cat.Next;
    end;
        zAnti.First;
    while not zAnti.Eof do
    begin
         if zAnti.FieldByName('Nomina').AsString = 'Nomina RH' then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := '';
           mDatos.FieldByName('Rfc').AsString := '';
           mDatos.FieldByName('Nombre').AsString := zAnti.FieldByName('Nota').AsString;
           mDatos.FieldByName('Banco').AsString:= '';
           mDatos.FieldByName('Cuenta').AsString:= '';
           mDatos.FieldByName('Clave').AsString:= '';
           mDatos.FieldByName('Concepto').AsString:= '';
           mDatos.FieldByName('Puesto').AsString:= '';
           mDatos.FieldByName('validar').AsString:='';
           mDatos.FieldByName('Salario').AsFloat:= zAnti.FieldByName('Monto').AsFloat;
           mDatos.Post;
         end;
         if zAnti.FieldByName('Nomina').AsString = 'Nomina OP' then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := '';
           mDatos.FieldByName('Rfc').AsString := '';
           mDatos.FieldByName('Nombre').AsString := zAnti.FieldByName('Nota').AsString;
           mDatos.FieldByName('Banco').AsString:= '';
           mDatos.FieldByName('Cuenta').AsString:= '';
           mDatos.FieldByName('Clave').AsString:= '';
           mDatos.FieldByName('Concepto').AsString:= '';
           mDatos.FieldByName('Puesto').AsString:= '';
           mDatos.FieldByName('validar').AsString:='';
           mDatos.FieldByName('Salario').AsFloat:= zAnti.FieldByName('Monto').AsFloat;
           mDatos.Post;
         end;
      zAnti.Next;
    end;

    {$ENDREGION}

    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;

    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_nominaUno.fr3');

    rDiario.ShowReport();


    // Destruye Objetos ...

   // rDiario.Destroy;
    dsDiasLaborados.Destroy;
    categorias.Destroy;
    dFest.Destroy;
    jf.Destroy;
end;

Procedure procReporteCredenciales(iParamEmpresa :integer; sParamFiltro :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosEmpleado : TfrxDBDataSet;
    Folios, qryConfiguracion : tUniQuery;
    rDiario: TfrxReport;
begin

    {$region 'Categorias'}
    Folios := tUniQuery.create(nil);
    Folios.Connection := Connection.uConnection;
    {$endregion}
    rDiario := TfrxReport.Create(tOrigen);
    BarraProgresoAvance(BarraProgreso, 0,50,50);

    {$region 'Configuracion'}
    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.uConnection;
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
       rDiario.LoadFromFile(global_files+global_miReporte+'_RH_Credencial.fr3');
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

Procedure ReporteMtoFalla(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosFallas : TfrxDBDataSet;
    rMtoFallas: TfrxReport;
begin

    rMtoFallas := TfrxReport.Create(tOrigen);
    BarraProgresoAvance(BarraProgreso, 0,50,50);
    rMtoFallas.DataSets.Clear;

    BarraProgresoAvance(BarraProgreso, 0,100,100);
    dsDatosFallas := TfrxDBDataSet.Create(nil);

    dsDatosFallas.DataSet:= zParamConsulta;
    dsDatosFallas.UserName := 'ds_Fallas';
    dsDatosFallas.FieldAliases.Clear;

    rMtoFallas.DataSets.Add(dsDatosFallas);


    rMtoFallas.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);


    rMtoFallas.PreviewOptions.MDIChild := False;
    rMtoFallas.PreviewOptions.Modal := True;
    rMtoFallas.PreviewOptions.ShowCaptions := False;
    rMtoFallas.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if zParamConsulta.RecordCount > 0 then
    begin
       rMtoFallas.LoadFromFile(global_files + global_miReporte +'_MTO_Falla.fr3');
       rMtoFallas.ShowReport();
    end
    else
       messageDLG('No se encontraron Datos de la Evaluación Seleciconada', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rMtoFallas.DataSets.Clear;

    {$region 'Destruir Objetos'}
    dsDatosFallas.Destroy;
    {$endregion}
end;


Procedure ReporteMantenimiento(zParamConsulta : tUniQuery; zParamConsultaDet : tUniQuery; zParamConsultaDet2 : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosMto : TfrxDBDataSet;
    dsDatosMtoVolt, dsDatosMtoAmp : TfrxDBDataSet;
    rMto: TfrxReport;
begin

    rMto := TfrxReport.Create(tOrigen);
    BarraProgresoAvance(BarraProgreso, 0,50,50);
    rMto.DataSets.Clear;

    BarraProgresoAvance(BarraProgreso, 0,100,100);
    dsDatosMto := TfrxDBDataSet.Create(nil);

    dsDatosMto.DataSet:= zParamConsulta;
    dsDatosMto.UserName := 'ds_Mantenimiento';
    dsDatosMto.FieldAliases.Clear;

    rMto.DataSets.Add(dsDatosMto);

    dsDatosMtoVolt := TfrxDBDataSet.Create(nil);
    dsDatosMtoVolt.DataSet:= zParamConsultaDet;
    dsDatosMtoVolt.UserName := 'ds_MtoVolt';
    dsDatosMtoVolt.FieldAliases.Clear;

    rMto.DataSets.Add(dsDatosMtoVolt);

    dsDatosMtoAmp := TfrxDBDataSet.Create(nil);
    dsDatosMtoAmp.DataSet:= zParamConsultaDet2;
    dsDatosMtoAmp.UserName := 'ds_MtoAmp';
    dsDatosMtoAmp.FieldAliases.Clear;

    rMto.DataSets.Add(dsDatosMtoAmp);

    rMto.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);


    rMto.PreviewOptions.MDIChild := False;
    rMto.PreviewOptions.Modal := True;
    rMto.PreviewOptions.ShowCaptions := False;
    rMto.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if zParamConsulta.RecordCount > 0 then
    begin
       rMto.LoadFromFile(global_files+global_miReporte+'_MTO_Voltaje_y_Corrie.fr3');
       rMto.ShowReport();
    end
    else
       messageDLG('No se encontraron Datos de la Evaluación Seleciconada', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rMto.DataSets.Clear;

    {$region 'Destruir Objetos'}
    dsDatosMto.Destroy;
    {$endregion}
end;

Procedure ReporteNominaConsolidada(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosEvaluacion : TfrxDBDataSet;
    rEvalua: TfrxReport;
    qryConfiguracion: TUniQuery;
begin

    rEvalua := TfrxReport.Create(tOrigen);
    dsDatosEvaluacion := TfrxDBDataSet.Create(nil);

    dsDatosEvaluacion.DataSet:= zParamConsulta;
    dsDatosEvaluacion.UserName := 'dsGeneradorFolio';
    dsDatosEvaluacion.FieldAliases.Clear;

    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := GLOBAL_CONTRATO;
    QryConfiguracion.Open;

    rEvalua.DataSets.Add(dsDatosEvaluacion);
    rEvalua.DataSets.Add(dsConfiguracion);

    rEvalua.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);


    rEvalua.PreviewOptions.MDIChild := False;
    rEvalua.PreviewOptions.Modal := True;
    rEvalua.PreviewOptions.ShowCaptions := False;
    rEvalua.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if zParamConsulta.RecordCount > 0 then
    begin
       rEvalua.LoadFromFile(global_files+global_miReporte+'_RH_Nomina.fr3');
       rEvalua.ShowReport();
    end
    else
       messageDLG('No se encontraron Datos de la Nómina Seleccionada', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rEvalua.DataSets.Clear;

    {$region 'Destruir Objetos'}
    dsDatosEvaluacion.Destroy;
    {$endregion}
end;

Procedure ReporteComentariosNomina(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosEvaluacion : TfrxDBDataSet;
    rEvalua: TfrxReport;
    qryConfiguracion: TUniQuery;
begin

    rEvalua := TfrxReport.Create(tOrigen);
    dsDatosEvaluacion := TfrxDBDataSet.Create(nil);

    dsDatosEvaluacion.DataSet:= zParamConsulta;
    dsDatosEvaluacion.UserName := 'dsGeneradorFolio';
    dsDatosEvaluacion.FieldAliases.Clear;

    qryConfiguracion := tUniquery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := GLOBAL_CONTRATO;
    QryConfiguracion.Open;

    rEvalua.DataSets.Add(dsDatosEvaluacion);
    rEvalua.DataSets.Add(dsConfiguracion);

    rEvalua.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);


    rEvalua.PreviewOptions.MDIChild := False;
    rEvalua.PreviewOptions.Modal := True;
    rEvalua.PreviewOptions.ShowCaptions := False;
    rEvalua.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if zParamConsulta.RecordCount > 0 then
    begin
       rEvalua.LoadFromFile(global_files+global_miReporte+'_RH_ComentariosNomina.fr3');
       rEvalua.ShowReport();
    end
    else
       messageDLG('No se encontraron Datos de la Nómina Seleccionada', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rEvalua.DataSets.Clear;

    {$region 'Destruir Objetos'}
    dsDatosEvaluacion.Destroy;
    {$endregion}
end;

Procedure ReporteEvaluacionProveedor(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsDatosEvaluacion : TfrxDBDataSet;
    rEvalua: TfrxReport;
begin

    rEvalua := TfrxReport.Create(tOrigen);
    BarraProgresoAvance(BarraProgreso, 0,50,50);


    BarraProgresoAvance(BarraProgreso, 0,100,100);
    dsDatosEvaluacion := TfrxDBDataSet.Create(nil);

    dsDatosEvaluacion.DataSet:= zParamConsulta;
    dsDatosEvaluacion.UserName := 'ds_EvaluaProveedor';
    dsDatosEvaluacion.FieldAliases.Clear;

    rEvalua.DataSets.Add(dsDatosEvaluacion);


    rEvalua.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);


    rEvalua.PreviewOptions.MDIChild := False;
    rEvalua.PreviewOptions.Modal := True;
    rEvalua.PreviewOptions.ShowCaptions := False;
    rEvalua.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if zParamConsulta.RecordCount > 0 then
    begin
       rEvalua.LoadFromFile(global_files+global_miReporte+'_ReporteEvaluacionProveedor.fr3');
       rEvalua.ShowReport();
    end
    else
       messageDLG('No se encontraron Datos de la Evaluación Seleciconada', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rEvalua.DataSets.Clear;

    {$region 'Destruir Objetos'}
    dsDatosEvaluacion.Destroy;
    {$endregion}
end;

Procedure ReporteSeguroVida(zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
    dsSeguroVida : TfrxDBDataSet;
    rSeguro: TfrxReport;
begin

    rSeguro := TfrxReport.Create(tOrigen);
    BarraProgresoAvance(BarraProgreso, 0,50,50);


    BarraProgresoAvance(BarraProgreso, 0,100,100);
    dsSeguroVida := TfrxDBDataSet.Create(nil);

    dsSeguroVida.DataSet:= zParamConsulta;
    dsSeguroVida.UserName := 'dsSeguroVida';
    dsSeguroVida.FieldAliases.Clear;

    rSeguro.DataSets.Add(dsSeguroVida);


    rSeguro.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
    rDiarioFirmas('', '', 'A', dParamFechaF, tOrigen);


    rSeguro.PreviewOptions.MDIChild := False;
    rSeguro.PreviewOptions.Modal := True;
    rSeguro.PreviewOptions.ShowCaptions := False;
    rSeguro.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if zParamConsulta.RecordCount > 0 then
    begin
       rSeguro.LoadFromFile(global_files+global_miReporte+'_RH_ReporteSeguroVida.fr3');
       rSeguro.ShowReport();
    end
    else
       messageDLG('No se encontraron Datos del Seguro de Vida Seleciconado', mtInformation, [mbOk], 0);

    // Destruye Objetos ...
    rSeguro.DataSets.Clear;

    {$region 'Destruir Objetos'}
    dsSeguroVida.Destroy;
    {$endregion}
end;


procedure procReporteNominasEB(lParamContinuo :boolean; FInicio, FTermino, dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';idP:String='';Tipo:String=''; CodigosPersonal:String='-1');
var
    dsDiasLaborados : TfrxDBDataSet;
    cat,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;

    mDatos, mTotales, mSubTotal :TdxMemData;
    cont:Integer;
    rDiario: TfrxReport;
    fechaAntes,actual: tDate;
    AuxV,sId, sFolio,anio,temp,temp2,just,fDuplicado: string;
    x,dnl : integer;
    fecha1,fecha2,f3:String;
    dTotal,suma  : double;
    dFechaActual,act,jusd : tDate;
    validar,zAnti, jf:tUniquery;
    aplica:boolean;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;

    {$region 'Categorias'}

    validar := tUniQuery.create(nil);
    validar.Connection := Connection.uConnection;
    validar.Active:=False;
    validar.SQL.Text:='SELECT * FROM validacion_nomina where IdGuardia = '+idP+' group by Nombre';
    validar.Open;

    zAnti := tUniQuery.create(nil);
    ZAnti.Connection := Connection.uConnection;
    zAnti.Active:=False;
    AsignarSQL(zAnti,'ReporteAnticipo',pUpdate);
    FiltrarDataSet(zAnti,'FechaI,FechaF,Guardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),Idp]);
    zAnti.Open;

    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    AsignarSQL(categorias,'ReporteNomina',pUpdate);
    FiltrarDataSet(categorias,'Activo,IdGuardia,CodsPersonal',['Si',Id,CodigosPersonal]);
    categorias.Open;



    Cat := tUniQuery.create(nil);
    Cat.Connection := Connection.uConnection;

    id := StringReplace(id, ' ', '', [rfReplaceAll]);
    cat.Active:=False;
    AsignarSQL(cat,'ReporteTiempoExtra',pUpdate);
    FiltrarDataSet(cat,'FechaI,FechaF,IdGuardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),-1]);
    cat.Open;

    jf := TUniquery.create(nil);
    jf.Connection := Connection.uConnection;
    jf.Active:=False;
    if Categorias.RecordCount = 0 then
    begin
      ShowMessage('No existe guardia creada con ese rango de fecha');
      exit
    end;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Rfc', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Salario', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Banco', ftString, 50, True);
        CreaCampoMemData(mDatos,'Cuenta', ftString, 120, True);
        CreaCampoMemData(mDatos,'Clave', ftString, 120, True);
        CreaCampoMemData(mDatos,'Concepto', ftString, 160, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 160, True);
        CreaCampoMemData(mDatos,'validar', ftString, 200, True);
        Active:=true;
      end;


    {$endregion}



    {$REGION 'Proceso'}
    actual:=now;
    anio:=FormatDateTime('yyyy',actual);
    dFest := TUniquery.create(nil);
    dFest.Connection := Connection.uConnection;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;

    act:=dParamFechaI;
    while act <= dParamFechaF do
    begin
       x:=x+1;
       act:=act+1;
    end;

    dFest.Active:=False;
    dFest.SQL.Text:='Select * FROM rhu_diasfestivos where anio = :anio';
    dFest.ParamByName('anio').AsString:=anio;
    dFest.Open;

    Categorias.First;
    while not Categorias.Eof do
    begin

         dnl:=x;
         generador_diario.Filtered := False;
         generador_diario.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
         generador_diario.Filtered := True;
         generador_diario.First;

         jf.SQL.Text:='SELECT sum(Cantidad) as just FROM rh_justificar_personal where IdPersonal= :personal and Asistencia = '+QuotedStr('Si')+
        ' and (DATE(Fecha) between DATE(:FechaI) and (:FechaT))';
        jf.ParamByName('personal').AsString:=generador_diario.FieldByName('IdPersonal').AsString;
        jf.ParamByName('FechaI').AsString:=fechaSQL(dParamFechaI);
        jf.ParamByName('FechaT').AsString:=fechaSQL(dParamFechaF);
        jf.Open;

         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
         mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= Categorias.FieldByName('Guardia').AsString+FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= Categorias.FieldByName('Nombre').AsString;
         mDatos.FieldByName('Salario').AsFloat:= 0;
         validar.First;
              if auxV='' then
         begin
           validar.First;
           while not validar.Eof do
           begin
            auxV:=auxV+'Autorizado por '+Validar.FieldByName('Nombre').AsString+''#13;
            validar.Next;
           end;
           mDatos.FieldByName('validar').AsString:=AuxV;
         end
         else
         begin
           mDatos.FieldByName('validar').AsString:=AuxV;
         end;
          sId := '';
           while not generador_diario.Eof do
           begin

               if sId <> (generador_diario.FieldByName('CodigoPersonal').AsString) then
               begin
                 dFechaActual := dParamFechaI;
                 sId    :=  generador_diario.FieldByName('CodigoPersonal').AsString;
                 suma:=0;
                 cont:=0;
               end;

               while (dFechaActual <= dParamFechaF) and (sId = generador_diario.FieldByName('CodigoPersonal').AsString) do
               begin

                    dFest.Filtered := False;
                    dFest.Filter   := 'Fecha = ' + QuotedStr( fechaSQL(dFechaActual) );
                    dFest.Filtered := True;

                    fecha1:=formatdatetime('yyyy/mm/dd ',generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);
                    fecha2:= formatdatetime('yyyy/mm/dd ',dFechaActual);
                    temp2:=FormatDateTime('yyyy/mm/dd', dFest.FieldByName('Fecha').AsDateTime);
                    f3 := FormatDateTime('dddd', generador_diario.FieldByName('FechaHoraRegistro').AsDateTime);

                  if (fecha1=fecha2)then
                   begin
                    if just<>fecha2 then
                     begin
                       cont:=cont+1;
                       suma:=Suma+1;
                     end;
                     generador_diario.Next;
                     just:=fecha2;
                   end;

                   if (fecha1<>fecha2) or (generador_diario.Eof) then
                   begin
                     dFechaActual := dFechaActual + 1
                   end;
               end;
               Suma:=Suma+jf.fieldByName('just').AsFloat;
               generador_diario.Next;
           end;
           mDatos.FieldByName('Salario').AsFloat:= (Categorias.FieldByName('salario').AsFloat/dnl)*Suma;
           mDatos.Post;
       Categorias.Next;
    end;


    zAnti.First;
    while not zAnti.Eof do
    begin

         if zAnti.FieldByName('Nomina').AsString = 'Nomina Abordo' then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := '';
           mDatos.FieldByName('Rfc').AsString := '';
           mDatos.FieldByName('Nombre').AsString := zAnti.FieldByName('Nota').AsString;
           mDatos.FieldByName('Banco').AsString:= '';
           mDatos.FieldByName('Cuenta').AsString:= '';
           mDatos.FieldByName('Clave').AsString:= '';
           mDatos.FieldByName('Concepto').AsString:= '';
           mDatos.FieldByName('Puesto').AsString:= '';
           mDatos.FieldByName('Salario').AsFloat:= zAnti.FieldByName('Monto').AsFloat;
           mDatos.FieldByName('validar').AsString:= '';
           mDatos.Post;
         end;
      zAnti.Next;
    end;

    {$ENDREGION}

    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.uConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;


    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_nominaUno.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

   // rDiario.Destroy;
    dsDiasLaborados.Destroy;
    categorias.Destroy;
    dFest.Destroy;
end;

procedure procReporteNominasEB2(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';Tipo:String='');
var
    dsDiasLaborados : TfrxDBDataSet;
    dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;

    mDatos, mTotales, mSubTotal :TdxMemData;
    cont:Integer;
    rDiario: TfrxReport;
    fechaAntes,actual: tDate;
    sId, sFolio,anio,temp,temp2 : string;
    x,dnl : integer;
    fecha1,fecha2,f3:String;
    dTotal,suma  : double;
    dFechaActual,act : tDate;
    zAnti:TUniquery;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;

    {$region 'Categorias'}
    zAnti := tUniQuery.create(nil);
    ZAnti.Connection := Connection.uConnection;
    zAnti.Active:=False;
    AsignarSQL(zAnti,'ReporteAnticipo',pUpdate);
    FiltrarDataSet(zAnti,'FechaI,FechaF,Guardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),Id]);
    zAnti.Open;

    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    AsignarSQL(categorias,'ReporteTiempoExtra',pUpdate);
    FiltrarDataSet(categorias,'FechaI,FechaF,IdGuardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),id]);
    categorias.Open;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Rfc', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Salario', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Banco', ftString, 50, True);
        CreaCampoMemData(mDatos,'Cuenta', ftString, 120, True);
        CreaCampoMemData(mDatos,'Clave', ftString, 120, True);
        CreaCampoMemData(mDatos,'Concepto', ftString, 160, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 160, True);
        Active:=true;
      end;


    {$endregion}



    {$REGION 'Proceso'}
    actual:=now;
    anio:=FormatDateTime('yyyy',actual);
    dFest := TUniquery.create(nil);
    dFest.Connection := Connection.uConnection;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;
    act:=dParamFechaI;
    while act <= dParamFechaF do
    begin
       x:=x+1;
       act:=act+1;
    end;

    dFest.Active:=False;
    dFest.SQL.Text:='Select * FROM rhu_diasfestivos where anio = :anio';
    dFest.ParamByName('anio').AsString:=anio;
    dFest.Open;

    Categorias.First;
    while not Categorias.Eof do
    begin

         dnl:=x;

         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString+' '+
         Categorias.FieldByName('Nota').AsString;
         mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= Categorias.FieldByName('Guardia').AsString+' '+FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= Categorias.FieldByName('Nombre').AsString+' DEL PERIODO ' + FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Salario').AsFloat:= Categorias.FieldByName('Monto').AsFloat;
         mDatos.Post;
       Categorias.Next;
    end;
    zAnti.First;
    while not zAnti.Eof do
    begin
        if (dParamFechaI<= zAnti.FieldByName('Fecha').AsDateTime ) and (zAnti.FieldByName('Fecha').AsDateTime <= dParamFechaF) then
        begin
           if zAnti.FieldByName('Nomina').AsString = 'Tiempo Extra' then
           begin
             mDatos.Append;
             mDatos.FieldByName('Codigo').AsString := '';
             mDatos.FieldByName('Rfc').AsString := '';
             mDatos.FieldByName('Nombre').AsString := zAnti.FieldByName('Nota').AsString;
             mDatos.FieldByName('Banco').AsString:= '';
             mDatos.FieldByName('Cuenta').AsString:= '';
             mDatos.FieldByName('Clave').AsString:= '';
             mDatos.FieldByName('Concepto').AsString:= '';
             mDatos.FieldByName('Puesto').AsString:= '';
             mDatos.FieldByName('Salario').AsFloat:= zAnti.FieldByName('Monto').AsFloat;
             mDatos.Post;
           end;
        end;
        zAnti.Next;
    end;


    {$ENDREGION}

    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.uConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;


    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_nominaUno.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

   // rDiario.Destroy;
    dsDiasLaborados.Destroy;
    categorias.Destroy;
    dFest.Destroy;
end;

procedure procReporteNominasEBComp(lParamContinuo :boolean; FInicio, FTermino, dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';idP:String='';Tipo:String=''; CodigosPersonal:String='-1');
var
    dsDiasLaborados : TfrxDBDataSet;
    cat,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;

    mDatos, mTotales, mSubTotal :TdxMemData;
    cont:Integer;
    rDiario: TfrxReport;
    fechaAntes,actual: tDate;
    sId, sFolio,anio,temp,temp2 : string;
    x,dnl : integer;
    fecha1,fecha2,f3:String;
    dTotal,suma  : double;
    dFechaActual,act : tDate;
    validar,zAnti:TUniquery;
    auxV:String;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;

    {$region 'Categorias'}
    validar := tUniQuery.create(nil);
    validar.Connection := Connection.uConnection;
    validar.Active:=False;
    validar.SQL.Text:='SELECT * FROM validacion_nomina where IdGuardia = '+idP+' group by Nombre';
    validar.Open;

    zAnti := tUniQuery.create(nil);
    ZAnti.Connection := Connection.uConnection;
    zAnti.Active:=False;
    AsignarSQL(zAnti,'ReporteAnticipo',pUpdate);
    FiltrarDataSet(zAnti,'FechaI,FechaF,Guardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),Idp]);
    zAnti.Open;

    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    AsignarSQL(categorias,'ReporteNomina',pUpdate);
    FiltrarDataSet(categorias,'Activo,IdGuardia,CodsPersonal',['Si',Id,CodigosPersonal]);
    categorias.Open;

    Cat := tUniQuery.create(nil);
    Cat.Connection := Connection.uConnection;

    id := StringReplace(id, ' ', '', [rfReplaceAll]);
    cat.Active:=False;
    AsignarSQL(cat,'ReporteTiempoExtra',pUpdate);
    FiltrarDataSet(cat,'FechaI,FechaF,IdGuardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),idP]);
    cat.Open;
    if Categorias.RecordCount = 0 then
    begin
      ShowMessage('No existe guardia creada con ese rango de fecha');
      exit
    end;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Rfc', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Salario', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Banco', ftString, 50, True);
        CreaCampoMemData(mDatos,'Cuenta', ftString, 120, True);
        CreaCampoMemData(mDatos,'Clave', ftString, 120, True);
        CreaCampoMemData(mDatos,'Concepto', ftString, 160, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 160, True);
        CreaCampoMemData(mDatos,'validar', ftString, 200, True);
        Active:=true;
      end;


    {$endregion}



    {$REGION 'Proceso'}
    actual:=now;
    anio:=FormatDateTime('yyyy',actual);
    dFest := TUniquery.create(nil);
    dFest.Connection := Connection.uConnection;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;
    act:=dParamFechaI;
    while act <= dParamFechaF do
    begin
       x:=x+1;
       act:=act+1;
    end;

    dFest.Active:=False;
    dFest.SQL.Text:='Select * FROM rhu_diasfestivos where anio = :anio';
    dFest.ParamByName('anio').AsString:=anio;
    dFest.Open;
    auxV:='';

    Categorias.First;
    while not Categorias.Eof do
    begin

         dnl:=x;
         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
         mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= Categorias.FieldByName('Guardia').AsString+FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= Categorias.FieldByName('Nombre').AsString;
         mDatos.FieldByName('Salario').AsFloat:= (Categorias.FieldByName('salario').AsFloat/dnl)*dnl;
         if auxV='' then
         begin
           validar.First;
           while not validar.Eof do
           begin
             if Tipo = validar.FieldByName('Tipo').AsString then
            begin
              auxV:=auxV+'Autorizado por '+Validar.FieldByName('Nombre').AsString+''#13;
            end;
            validar.Next;
           end;
           mDatos.FieldByName('validar').AsString:=AuxV;
         end
         else
         begin
           mDatos.FieldByName('validar').AsString:=AuxV;
         end;
         mDatos.Post;
       Categorias.Next;
    end;

    zAnti.First;
    while not zAnti.Eof do
    begin
         if zAnti.FieldByName('Nomina').AsString = 'Nomina Abordo' then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := '';
           mDatos.FieldByName('Rfc').AsString := '';
           mDatos.FieldByName('Nombre').AsString := zAnti.FieldByName('Nota').AsString;
           mDatos.FieldByName('Banco').AsString:= '';
           mDatos.FieldByName('Cuenta').AsString:= '';
           mDatos.FieldByName('Clave').AsString:= '';
           mDatos.FieldByName('Concepto').AsString:= '';
           mDatos.FieldByName('Puesto').AsString:= '';
           mDatos.FieldByName('Salario').AsFloat:= zAnti.FieldByName('Monto').AsFloat;
           mDatos.FieldByName('validar').AsString:= '';
           mDatos.Post;
         end;

      zAnti.Next;
    end;


    {$ENDREGION}

    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.uConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;


    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_nominaUno.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

   // rDiario.Destroy;
    dsDiasLaborados.Destroy;
    categorias.Destroy;
    dFest.Destroy;
end;

procedure  ReporteJustificar(dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
var
 just:TUniqueRy;
 dsDiasLaborados : TfrxDBDataSet;
 mDatos, mTotales, mSubTotal :TdxMemData;
 dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;
begin

    just := TUniquery.create(nil);
    just.Connection := Connection.uConnection;

    just.Active:=False;
    AsignarSQL(just,'ReporteJustificar',pUpdate);
    FiltrarDataSet(just,'FechaI,FechaF',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    just.Open;

 {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Nota', ftString, 170, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Asistencia', ftString, 10, True);
        CreaCampoMemData(mDatos,'Cantidad', ftString, 10, True);
        CreaCampoMemData(mDatos,'HoraE', ftString, 10, True);
        CreaCampoMemData(mDatos,'HoraS', ftString, 10, True);
        CreaCampoMemData(mDatos,'Fecha', ftString, 10, True);
        Active:=true;
      end;
    {$endregion}

    while not just.Eof do
    begin


       mDatos.Append;
       mDatos.FieldByName('Codigo').AsString := just.FieldByName('Codigo').AsString;
       mDatos.FieldByName('Nota').AsString := just.FieldByName('Nota').AsString;
       mDatos.FieldByName('Nombre').AsString := just.FieldByName('Nombre').AsString;
       mDatos.FieldByName('Asistencia').AsString  := just.FieldByName('Asistencia').AsString;
       mDatos.FieldByName('Cantidad').AsString    := just.FieldByName('Cantidad').AsString;
       mDatos.FieldByName('HoraE').AsString    := just.FieldByName('HoraEntrada').AsString;
       mDatos.FieldByName('HoraS').AsString:= just.FieldByName('HoraSalida').AsString;
       mDatos.FieldByName('Fecha').Asstring:= just.FieldByName('Fecha').AsString;
       mDatos.Post;
      just.Next;
    end;


    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.uConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;


    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_Justificacion.fr3');
    rDiario.ShowReport();

    dsDiasLaborados.Destroy;
    just.Destroy;

end;

Procedure procReporteVacaciones(iParamEmpresa :integer; sParamFiltro :string; zParamConsulta : tUniQuery; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; BarraProgreso :TcxProgressBar; FormatosExp: string = ''; PermisosExp: string = '');
var
dsDiasLaborados : TfrxDBDataSet;
 mDatos, mTotales, mSubTotal :TdxMemData;
 Personal,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;
begin
    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;
    categorias.Active:=False;
    AsignarSQL(categorias,'ReporteVacaciones',pUpdate);
    FiltrarDataSet(categorias,'IdPersonal',[iParamEmpresa]);
    categorias.Open;

   {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);

     with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Departamento', ftString, 170, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 10, True);
        CreaCampoMemData(mDatos,'Antiguedad', ftString, 10, True);
        CreaCampoMemData(mDatos,'DiasV', ftInteger, 0, True);
        CreaCampoMemData(mDatos,'DiasPedidos', ftInteger, 0, True);
        CreaCampoMemData(mDatos,'DiasRes', ftInteger, 0, True);
        CreaCampoMemData(mDatos,'PagaV', ftString, 10, True);
        CreaCampoMemData(mDatos,'FactorV', ftString, 10, True);
        CreaCampoMemData(mDatos,'FechaI', ftString, 10, True);
        CreaCampoMemData(mDatos,'FechaF', ftString, 10, True);
        Active:=true;
      end;

      while Not Categorias.Eof do
      begin
        mDatos.Append;
        mDatos.FieldByName('Codigo').AsString := categorias.FieldByName('CodigoPersonal').AsString;
        mDatos.FieldByName('Nombre').AsString := categorias.FieldByName('NombreCompleto').AsString;
        mDatos.FieldByName('Departamento').AsString := categorias.FieldByName('Departamento').AsString;
        mDatos.FieldByName('Puesto').AsString  := categorias.FieldByName('Nombre').AsString;
        mDatos.FieldByName('Antiguedad').AsString    := categorias.FieldByName('Antiguedad').AsString;
        mDatos.FieldByName('DiasV').AsInteger   := categorias.FieldByName('Dias').AsInteger;
        mDatos.FieldByName('DiasPedidos').AsInteger:= categorias.FieldByName('DiasPedidos').AsInteger;
        mDatos.FieldByName('DiasRes').AsInteger:= categorias.FieldByName('DiasRes').AsInteger;
        mDatos.FieldByName('PagaV').AsString:= categorias.FieldByName('PagaVacacion').AsString;
        mDatos.FieldByName('FactorV').Asstring:= categorias.FieldByName('FactorVacaciones').AsString;
        mDatos.FieldByName('FechaI').AsString:= categorias.FieldByName('FInicio').AsString;
        mDatos.FieldByName('FechaF').Asstring:= categorias.FieldByName('FTermino').AsString;
        mDatos.Post;
        Categorias.Next;
      end;


    {$endregion}

    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.uConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;


    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.LoadFromFile(global_files + global_miReporte+'RH_Vacaciones.fr3');
    rDiario.ShowReport();

    dsDiasLaborados.Destroy;
end;

Procedure procReporteNominasCompleta(lParamContinuo :boolean; FInicio, FTermino, dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';idp:String='';Tipo:String='';CodigosPersonal:String='-1');
var
    dsDiasLaborados : TfrxDBDataSet;
    zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;
    cat,Bonos,Reembolso:TUniquery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    auxT,dFechaActual,act:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3,AuxV : string;
    ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    dTotal,salario,suma,dias : double;
    flap,valid:boolean;
    nowF,actual:TDateTime;
    validar,zAnti:TUniquery;
begin
    dTotal := 0;
    dFechaActual := dParamFechaI;

    {$region 'Categorias'}

    validar := tUniQuery.create(nil);
    validar.Connection := Connection.uConnection;
    validar.Active:=False;
    validar.SQL.Text:='SELECT *, '+
                      'if(YEAR(:Fecha) = YEAR(Fecha) and MONTH(:Fecha) = MONTH(Fecha),'+
                      QuotedStr( 'True' )+','+QuotedStr( 'False' )+') '+
                      'as Validado '+
                      'FROM validacion_nomina where IdGuardia = '+idP+' group by Nombre,Tipo';
    validar.Params.ParamByName('Fecha').Value:=fechaSQL(dParamFechaI);
    validar.Open;

    zAnti := tUniQuery.create(nil);
    ZAnti.Connection := Connection.uConnection;
    zAnti.Active:=False;
    AsignarSQL(zAnti,'ReporteAnticipo',pUpdate);
    FiltrarDataSet(zAnti,'FechaI,FechaF,Guardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),Idp]);
    zAnti.Open;

    zRetardo := TUniquery.create(nil);
    zRetardo.Connection := Connection.uConnection;

    Reembolso := TUniquery.create(nil);
    Reembolso.Connection := Connection.uConnection;
    Reembolso.Active:=False;
    AsignarSQL(Reembolso,'ReporteReembolso',pUpdate);
    FiltrarDataSet(Reembolso,'Activo,IdGuardia',['Si',id]);
    Reembolso.Open;

    Bonos := TUniquery.create(nil);
    Bonos.Connection := Connection.uConnection;
    Bonos.Active:=False;
    AsignarSQL(Bonos,'ReporteBonos',pUpdate);
    FiltrarDataSet(Bonos,'Activo,IdGuardia',['Si',id]);
    Bonos.Open;

    zRetardo.Active:=False;
    zRetardo.SQL.Text:='select RetardoAM, RetardoPM from configuracion';
    zRetardo.Open;

    jf := TUniquery.create(nil);
    jf.Connection := Connection.uConnection;
    jf.Active:=False;
        jf.SQL.Text:='Select p.Cantidad,p.IdPersonal, DATE(p.Fecha) as Fecha, '+
    '(Select mp.CodigoPersonal from master_personal as mp where mp.IdPersonal = p.IdPersonal) as Codigo '+
    'from rh_justificar_personal as p where p.Asistencia=:activo';
    jf.ParamByName('activo').AsString:='Si';
    jf.Open;

    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;
    categorias.Active:=False;
    AsignarSQL(categorias,'ReporteNomina',pUpdate);
    FiltrarDataSet(categorias,'Activo,IdGuardia,CodsPersonal',['Si',Id,CodigosPersonal]);
    categorias.Open;

    Cat := tUniQuery.create(nil);
    Cat.Connection := Connection.uConnection;

    id := StringReplace(id, ' ', '', [rfReplaceAll]);
    cat.Active:=False;
    AsignarSQL(cat,'ReporteTiempoExtra',pUpdate);
    FiltrarDataSet(cat,'FechaI,FechaF,IdGuardia',[fechaSQL(dParamFechaI),fechaSQL(dParamFechaF),id]);
    cat.Open;

    if Categorias.RecordCount = 0 then
    begin
      ShowMessage('No hay Datos');
      exit
    end;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Codigo', ftString, 45, True);
        CreaCampoMemData(mDatos,'Rfc', ftString, 150, True);
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'Salario', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'Banco', ftString, 50, True);
        CreaCampoMemData(mDatos,'Cuenta', ftString, 120, True);
        CreaCampoMemData(mDatos,'Clave', ftString, 120, True);
        CreaCampoMemData(mDatos,'Concepto', ftString, 160, True);
        CreaCampoMemData(mDatos,'Puesto', ftString, 160, True);
        CreaCampoMemData(mDatos,'validar', ftString, 200, True);
        Active:=true;
      end;


    {$endregion}



    {$REGION 'Proceso'}
    actual:=now;
    anio:=FormatDateTime('yyyy',actual);
    dFest := TUniquery.create(nil);
    dFest.Connection := Connection.uConnection;

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    especial := TUniquery.create(nil);
    especial.Connection := Connection.uConnection;

    QueryTemp := TUniquery.create(nil);
    QueryTemp.Connection := Connection.uConnection;
    QueryTemp.Active;

    especial.Active:=False;
    AsignarSQL(especial,'p_noVerifica',pUpdate);
    especial.Open;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;

    anios:=formatdatetime('yyyy',dParamFechaF);
    mes:=formatdatetime('mm',dParamFechaF);
    a:= StrToInt(anios);
    m:= StrToInt(mes);
    Mes:=IntToStr(DaysInAMonth(a,m));
    x:= StrToInt(mes);

    dFest.Active:=False;
    dFest.SQL.Text:='Select * FROM rhu_diasfestivos where anio = :anio';
    dFest.ParamByName('anio').AsString:=anio;
    dFest.Open;

    QueryTemp:=generador_diario;

    Categorias.First;
    valid:=False;
    while not Categorias.Eof do
    begin
       if valid=True then
       begin
         generador_diario:=QueryTemp;
         valid:=false;
       end;
       dnl:=x;
       generador_diario.Filtered := False;
       generador_diario.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       generador_diario.Filtered := True;
       generador_diario.First;

         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := Categorias.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
         mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= 'Nomina '+FormatDateTime(' d ',dParamFechaI)+' al '+mes+FormatDateTime('" de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= Categorias.FieldByName('Nombre').AsString;
         if auxV='' then
         begin
           validar.First;
           while not validar.Eof do
           begin
            if Tipo = validar.FieldByName('Tipo').AsString then
            begin
              if validar.FieldByName('Validado').AsString = 'True' then
              begin
                auxV:=auxV+'Autorizado por '+Validar.FieldByName('Nombre').AsString+''#13;
              end;
            end;
            validar.Next;
           end;
           mDatos.FieldByName('validar').AsString:=AuxV;
         end
         else
         begin
           mDatos.FieldByName('validar').AsString:=AuxV;
         end;
          mDatos.FieldByName('Salario').AsFloat:= (Categorias.FieldByName('salario').AsFloat/dnl)*dnl;
          mDatos.Post;


       Categorias.Next;
    end;

    Categorias.First;
    while not Categorias.Eof do
    begin
       Reembolso.Filtered := False;
       Reembolso.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       Reembolso.Filtered := True;
       Reembolso.First;

       //if (Tipo = Categorias.FieldByName('Departamento').AsString) and (Reembolso.FieldByName('CodigoPersonal').AsString<>'') then
       //begin
         if copy(DateToStr(Reembolso.FieldByName('Fecha').AsDateTime),4,8) = copy(DateToStr(dFechaActual),4,8) then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Reembolso.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
           mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
           mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
           mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
           mDatos.FieldByName('Concepto').AsString:= 'Nomina '+FormatDateTime(' d ',dParamFechaI)+' al '+mes+FormatDateTime('" de " mmmm yyyy ',dParamFechaF);
           mDatos.FieldByName('Puesto').AsString:= Reembolso.FieldByName('Nota').AsString;
           mDatos.FieldByName('Salario').AsFloat:= Reembolso.FieldByName('Monto').AsFloat;
           mDatos.FieldByName('validar').AsString:='';
           mDatos.Post;
         end;
       //end;
       Categorias.Next;
    end;

    Categorias.First;
    while not Categorias.Eof do
    begin
       Bonos.Filtered := False;
       Bonos.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
       Bonos.Filtered := True;
       Bonos.First;

       if (Tipo = Categorias.FieldByName('Departamento').AsString) and (Bonos.FieldByName('CodigoPersonal').AsString<>'') then
       begin
         if copy(DateToStr(Bonos.FieldByName('Fecha').AsDateTime),4,8) = copy(DateToStr(dFechaActual),4,8) then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := Bonos.FieldByName('CodigoPersonal').AsString;
           mDatos.FieldByName('Rfc').AsString := Categorias.FieldByName('Rfc').AsString;
           mDatos.FieldByName('Nombre').AsString := Categorias.FieldByName('NombreCompleto').AsString;
           mDatos.FieldByName('Banco').AsString:= Categorias.FieldByName('Banco').AsString;
           mDatos.FieldByName('Cuenta').AsString:= Categorias.FieldByName('Cuenta').AsString;
           mDatos.FieldByName('Clave').AsString:= Categorias.FieldByName('Clabe').AsString;
           mDatos.FieldByName('Concepto').AsString:= 'Nomina '+FormatDateTime(' d ',dParamFechaI)+' al '+mes+FormatDateTime('" de " mmmm yyyy ',dParamFechaF);
           mDatos.FieldByName('Puesto').AsString:= Bonos.FieldByName('Nota').AsString;
           mDatos.FieldByName('Salario').AsFloat:= Bonos.FieldByName('Monto').AsFloat;
           mDatos.FieldByName('validar').AsString:='';
           mDatos.Post;
         end;
       end;
       Categorias.Next;
    end;

    cat.First;
    while not cat.Eof do
    begin
      if cat.FieldByName('Nomina').AsString = 'Nomina RH' then
      begin
         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := cat.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := cat.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := cat.FieldByName('NombreCompleto').AsString+' '+
         cat.FieldByName('Nota').AsString;
         mDatos.FieldByName('Banco').AsString:= cat.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= cat.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= cat.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= cat.FieldByName('Guardia').AsString+' '+FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= cat.FieldByName('Nombre').AsString+' DEL PERIODO ' + FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Salario').AsFloat:= cat.FieldByName('Monto').AsFloat;
         mDatos.FieldByName('validar').AsString:='';
         mDatos.Post;
      end;
      if cat.FieldByName('Nomina').AsString = 'Nomina OP' then
      begin
         mDatos.Append;
         mDatos.FieldByName('Codigo').AsString := cat.FieldByName('CodigoPersonal').AsString;
         mDatos.FieldByName('Rfc').AsString := cat.FieldByName('Rfc').AsString;
         mDatos.FieldByName('Nombre').AsString := cat.FieldByName('NombreCompleto').AsString+' '+
         cat.FieldByName('Nota').AsString;
         mDatos.FieldByName('Banco').AsString:= cat.FieldByName('Banco').AsString;
         mDatos.FieldByName('Cuenta').AsString:= cat.FieldByName('Cuenta').AsString;
         mDatos.FieldByName('Clave').AsString:= cat.FieldByName('Clabe').AsString;
         mDatos.FieldByName('Concepto').AsString:= cat.FieldByName('Guardia').AsString+' '+FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Puesto').AsString:= cat.FieldByName('Nombre').AsString+' DEL PERIODO ' + FormatDateTime('dd',dParamFechaI)+' al '+FormatDateTime(' d " de " mmmm yyyy ',dParamFechaF);
         mDatos.FieldByName('Salario').AsFloat:= cat.FieldByName('Monto').AsFloat;
         mDatos.FieldByName('validar').AsString:='';
         mDatos.Post;
      end;
       cat.Next;
    end;

    zAnti.First;
    while not zAnti.Eof do
    begin

        if zAnti.FieldByName('Nomina').AsString = 'Nomina RH' then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := '';
           mDatos.FieldByName('Rfc').AsString := '';
           mDatos.FieldByName('Nombre').AsString := zAnti.FieldByName('Nota').AsString;
           mDatos.FieldByName('Banco').AsString:= '';
           mDatos.FieldByName('Cuenta').AsString:= '';
           mDatos.FieldByName('Clave').AsString:= '';
           mDatos.FieldByName('Concepto').AsString:= '';
           mDatos.FieldByName('Puesto').AsString:= '';
           mDatos.FieldByName('Salario').AsFloat:= zAnti.FieldByName('Monto').AsFloat;
           mDatos.FieldByName('validar').AsString:='';
           mDatos.Post;
         end;
         if zAnti.FieldByName('Nomina').AsString = 'Nomina OP' then
         begin
           mDatos.Append;
           mDatos.FieldByName('Codigo').AsString := '';
           mDatos.FieldByName('Rfc').AsString := '';
           mDatos.FieldByName('Nombre').AsString := zAnti.FieldByName('Nota').AsString;
           mDatos.FieldByName('Banco').AsString:= '';
           mDatos.FieldByName('Cuenta').AsString:= '';
           mDatos.FieldByName('Clave').AsString:= '';
           mDatos.FieldByName('Concepto').AsString:= '';
           mDatos.FieldByName('Puesto').AsString:= '';
           mDatos.FieldByName('Salario').AsFloat:= zAnti.FieldByName('Monto').AsFloat;
           mDatos.FieldByName('validar').AsString:='';
           mDatos.Post;
         end;
      zAnti.Next;
    end;


    {$ENDREGION}

    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.Uconnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;

    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_NominaUno.fr3');

    rDiario.ShowReport();

   // Destruye Objetos ...

   // rDiario.Destroy;
    dsDiasLaborados.Destroy;
    categorias.Destroy;
    dFest.Destroy;
    jf.Destroy;
end;

Procedure procReporteGNominas(lParamContinuo :boolean; dParamFechaI, dParamFechaF: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '';id:String='';Tipo:String='');
var
    dsDiasLaborados : TfrxDBDataSet;
    zRetardo,QueryTemp,jf,especial,dFest,Categorias, generador_diario, qryConfiguracion : tUniQuery;
    Reembolso:TUniquery;
    mDatos, mTotales, mSubTotal :TdxMemData;
    auxT,dFechaActual,act:TDate;
    rDiario: TfrxReport;
    fechaAntes: tDate;
    AM,PM,sId, sFolio,anio,fecha1,fecha2,f3 : string;
    ContR,x,cont,dnl,sum,nMes,a,m,CuentaCol : integer;
    Tretardo,simbolo,temp,temp2,mes,anios,noV,TempF1,TempF2:String;
    dTotal,salario,suma,dias : double;
    nOP,nRh:Double;
    flap,valid:boolean;
    ArrayMes: Array of String;
begin
   SetLength(ArrayMes, 12);
    ArrayMes[0]:='Enero';ArrayMes[1]:='Febrero';ArrayMes[2]:='Marzo';ArrayMes[3]:='Abril';ArrayMes[4]:='Mayo';
    ArrayMes[5]:='Junio';ArrayMes[6]:='Julio';ArrayMes[7]:='Agosto';ArrayMes[8]:='Septiembre';ArrayMes[9]:='Octubre';
    ArrayMes[10]:='Novienbre';ArrayMes[11]:='Diciembre';

    dTotal := 0;
    dFechaActual := dParamFechaI;

    {$region 'Categorias'}

    Categorias := tUniQuery.create(nil);
    Categorias.Connection := Connection.uConnection;

    categorias.Active:=False;
    AsignarSQL(categorias,'ReporteNomina',pUpdate);
    FiltrarDataSet(categorias,'Activo,IdGuardia',['Si',Id]);
    categorias.Open;

    {$endregion}

    {$region 'Memorys Data'}
    rDiario := TfrxReport.Create(tOrigen);
    mDatos:=TdxMemData.Create(nil);
    with mDatos do
      begin
        Active:=false;
        CreaCampoMemData(mDatos,'Nombre', ftString, 120, True);
        CreaCampoMemData(mDatos,'SalarioRH', FtFloat, 0, True);
        CreaCampoMemData(mDatos,'SalarioOP', FtFloat, 0, True);
        Active:=true;
      end;


    {$endregion}



    {$REGION 'Proceso'}

    generador_diario := TUniquery.create(nil);
    generador_diario.Connection := Connection.uConnection;

    generador_diario.Active:=False;
    AsignarSQL(generador_diario,'GuardiaDetalle',pUpdate);
    FiltrarDataSet(generador_diario,'IdGuardiaDetalle,fecha_inicio_filtrar,fecha_termino_filtrar',['-1',fechaSQL(dParamFechaI),fechaSQL(dParamFechaF)]);
    generador_diario.Open;

  while x<6 do
  begin
        Categorias.First;
        while not Categorias.Eof do
        begin
          generador_diario.Filtered := False;
          generador_diario.Filter   := 'CodigoPersonal = ' + QuotedStr( Categorias.FieldByName('CodigoPersonal').AsString );
          generador_diario.Filtered := True;
          generador_diario.First;

           //showmessage(Categorias.FieldByName('salario').AsString);
           if 'ADMINISTRACION' = Categorias.FieldByName('Departamento').AsString then
           begin
              nRH:= nOP+(Categorias.FieldByName('salario').AsFloat/dnl)*dnl;
           end;
           if 'OPERACIONES' = Categorias.FieldByName('Departamento').AsString then
           begin
               nOP:= nOP+(Categorias.FieldByName('salario').AsFloat/dnl)*dnl;
           end;
           Categorias.Next;
        end;
         mDatos.Append;
         mDatos.FieldByName('Nombre').AsString := ArrayMes[x];
         mDatos.FieldByName('SalarioOP').AsFloat := nRH;
         mDatos.FieldByName('SalarioRH').AsFloat:= nOP;
         mDatos.Post;
        x:=x+1;
  end;


    {$ENDREGION}

    qryConfiguracion := tUniQuery.Create(nil);
    qryConfiguracion.Connection := connection.uConnection;
    dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet := QryConfiguracion;
    dsConfiguracion.UserName := 'dsConfiguracion';
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c2.sCodigo, c.*, 0 as sIdUsuarioValida, 0 as sIdUsuarioResidente, 0 as sIdUsuarioAutoriza, '+
                              'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal '+
                              'From rd_proyectos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                              'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) '+
                              'Where c2.sContrato = :Contrato');
    QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
    QryConfiguracion.Params.ParamByName('contrato').Value    := global_contrato_barco;
    QryConfiguracion.Open;

    dsDiasLaborados:= TfrxDBDataSet.Create(Nil);
    dsDiasLaborados.UserName   :='dsGeneradorFolio';
    dsDiasLaborados.DataSet    := mDatos;
    dsDiasLaborados.FieldAliases.Clear;

    rDiario.DataSets.Add(dsDiasLaborados);
    rDiario.DataSets.Add(dsConfiguracion);

    rDiario.OnGetValue := tProcedure;


    rDiario.LoadFromFile(global_files + global_miReporte+'_RH_GeneradorNominas.fr3');
    rDiario.ShowReport();


    // Destruye Objetos ...

   // rDiario.Destroy;
    dsDiasLaborados.Destroy;
    categorias.Destroy;
end;

end.
