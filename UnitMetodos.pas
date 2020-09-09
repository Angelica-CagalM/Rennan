unit UnitMetodos;

(*******
 **SAM**
 *******)


interface

  {$region 'Uses'}

  uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, global, frm_Connection, StdCtrls, DBCtrls, ComCtrls, StrUtils,
    ExtCtrls, DateUtils, Math, ZDataset, ZAbstractRODataset, ZAbstractDataset,
    ComObj, UnitExcel, ZSqlProcessor, cxGroupBox, cxProgressBar, cxTextEdit, dxBarApplicationMenu,
    dxNavBar, dxBarDBNav, dxBar, Menus, dxRibbonForm;

  {$endregion}

  {$region 'Tipos'}

  type TSQLStatement = type string;
  type TFtTipoSentencia = ( ftCatalogo, ftUpdate, ftInsert, ftDelete, ftConsulta );

  type
    TExcelColIndex = type Integer;
    TExcelRow = type Integer;
    TExcelColAlias = type string;
    TExcelRangeAlias = type string;
    TExcelFormula = type string;
    TExcelInstance = type Variant;

  //Clase personalizada para columnas en excel
  type
    TExcelColumna = class( TObject )
      Column : TExcelColIndex;
      StrColumn : TExcelColAlias;
      function Columna():TExcelColAlias;
      function _Columna():TExcelColAlias;overload;
      function _Columna( Increment : TExcelColIndex ):TExcelColAlias;overload;
      function Columna_():TExcelColAlias;overload;
      function Columna_( Increment : TExcelColIndex ):TExcelColAlias;overload;

      constructor Create;
    end;

    //Clase personalizada para fila en excel
  type
    TExcelFila = class( TObject )
      public
        Row,
        OldRow : TExcelRow;

      function SigFila( count : TExcelRow = 1 ):TExcelRow;
      function StrFila:string;overload;
      function StrFila( Increment : Integer ):string;overload;
      function First( Increment : Integer = 0 ):TExcelRow;

    end;

  {$endregion}

  //Inicializar ZDatasets en memoria y asigna la conexión.
  procedure InicializarZDataSet( var DataSet : TZQuery );overload;
  procedure InicializarZDataSet( var DataSet : TZReadOnlyQuery );overload;
  procedure InicializarForm( var Form : TForm; Grupo : TcxGroupBox; FWith, FHeight : Integer );

  //Obtener Sentencia de la tabla de sentencias.
  function ObtenerSentencia( Tabla, Nombre : string; Tipo : TFtTipoSentencia ):TSQLStatement;

  //Re programar folio.
  procedure ReProgramarFolio( Folio, IdReprogramacion : string; var Progreso, ProgresoPartidas : TcxProgressBar );

  procedure VisibleControles( var Controles : array of TWinControl; Visible : Boolean );

  function MostrarFormChild(sForm: string; dParamBarra :tdxBarManager): boolean;
  function ValidaChildAbierto(dParamForm :tForm): integer;
  procedure CierraFormChild(dParamForm :tForm);

  {$region 'enumeraciones'}
  const
    FTIPO_SENTENCIA : array[ 0..4 ] of string = ( 'CATALOGO', 'UPDATE', 'INSERT', 'DELETE', 'CONSULTA' ); 
  {$endregion}

implementation

  {$region 'Metodos Columna Excel.'}

  constructor TExcelColumna.Create;
  begin
    inherited Create;
    Column := 1;
    StrColumn := ColumnaNombre( Column );
  end;

  function TExcelColumna.Columna():TExcelColAlias;
  begin
    StrColumn := ColumnaNombre( Column );
    Result := StrColumn;
  end;

  function TExcelColumna._Columna:TExcelColAlias;
  begin
    Result := ColumnaNombre( Column - 1 );
  end;

  function TExcelColumna.Columna_:TExcelColAlias;
  begin
    Result := ColumnaNombre( Column + 1 );
  end;

  function TExcelColumna._Columna( Increment : TExcelColIndex ):TExcelColAlias;
  begin
    Result := ColumnaNombre( Column - Increment );
  end;

  function TExcelColumna.Columna_( Increment : TExcelColIndex ):TExcelColAlias;
  begin
    Result := ColumnaNombre( Column + Increment );
  end;
  
  {$endregion}

  {$region 'Metodos Fila Excel.'}

  function TExcelFila.SigFila( count : TExcelRow = 1 ):TExcelRow;
  begin
    Inc( Row, count );
    Result := Row;
  end;

  function TExcelFila.StrFila:string;
  begin
    Result := IntToStr( Row );
  end;

  function TExcelFila.StrFila( Increment : Integer ):string;
  begin
    Result := IntToStr( Row + Increment )
  end;

  function TExcelFila.First( Increment : Integer = 0 ):TExcelRow;
  begin
    Row := 1 + Increment;
    Result := Row;
  end;

  
  {$endregion}

  {$region 'Inicializa ZDatasets.'}

  procedure InicializarZDataSet( var DataSet : TZQuery );
  begin
    DataSet := TZQuery.Create( nil );
    DataSet.Connection := connection.zConnection;
    DataSet.Active := False;
  end;

  procedure InicializarZDataSet( var DataSet : TZReadOnlyQuery );
  begin
    DataSet := TZReadOnlyQuery.Create( nil );
    DataSet.Connection := connection.zConnection;
    DataSet.Active := False;
  end;

  {$endregion}

  {$region 'Inicializa Formulario'}

  procedure InicializarForm( var Form : TForm; Grupo : TcxGroupBox; FWith, FHeight : Integer );
  begin
    Form := TForm.Create( nil );
    Form.BorderStyle := bsDialog;
    Form.Caption := EmptyStr;
    Form.Width := FWith;
    Form.Height := FHeight;
    Form.Position := poScreenCenter;
    Grupo.Parent := Form;
    Grupo.Align := alClient;
    Grupo.Visible := True;
  end;


  {$endregion}

  {$region 'Obtener Sentencia.'}

  function ObtenerSentencia( Tabla, Nombre : string; Tipo : TFtTipoSentencia ):TSQLStatement;
  begin
    with connection do
    begin
      QryUBusca.Active := False;
      QryUBusca.SQL.Text := 'select Sentencia from sentencias where Tabla = :tabla && Nombre = :nombre && Tipo = :tipo;';
      QryUBusca.ParamByName( 'tabla' ).AsString := Tabla;
      QryUBusca.ParamByName( 'nombre' ).AsString := Nombre;
      QryUBusca.ParamByName( 'Tipo' ).AsString := FTIPO_SENTENCIA[ Integer( Tipo ) ];
      QryUBusca.Open;

      if QryUBusca.RecordCount = 0 then
        raise Exception.Create( Format( 'no se ha encontrado la sentencia: %s para la tabla %s de tipo %s', [ Nombre, Tabla, FTIPO_SENTENCIA[ Integer( Tipo ) ] ] ) );

      Result := QryUBusca.FieldByName( 'Sentencia' ).AsString;

    end;
  end;

  {$endregion}

  {$region 'Re programar folio.'}

 procedure ReProgramarFolio( Folio, IdReprogramacion : string; var Progreso, ProgresoPartidas : TcxProgressBar );

 const
  INCREMENTO_PARTIDA : Integer = ( 10 );
  COLUMN_PARTIDA : string = ( 'A' ); 
  COLUMN_FECHA_INICIO : string = ( 'B' );
  COLUMN_FECHA_TERMINO : string = ( 'C' );
  COLUMN_DURACION : string = ( 'D' );
  COLUMN_FACTOR_DIA : string = ( 'E' );
  COLUMN_PORCENTAJE_DIA : string = ( 'F' );
  COLUMN_FECHA : string = ( 'G' );
  COLUMN_HORARIO : string = ( 'H' );
  COLUMN_HORAS : string = ( 'I' );
  COLUMN_ACUMULADO : string = ( 'J' );
  COLUMN_ACTUAL : string = ( 'K' );
  COLUMN_ANTERIOR : string = ( 'L' );


  var
    ZAvances,
    ZPartidas,
    ZNuevoAvance,
    ZReprogramaciones,
    ZHorarios : TZReadOnlyQuery;

    ZActualiza,
    ZActualizaAv : TZQuery;

    Excel,
    Book,
    Sheet,
    Range : TExcelInstance;

    Fila : TExcelFila;
    RowTemp,
    Row : TExcelRow;

    DiasDuracion,
    DiasIncremento,
    NumReprogramaciones : Integer;

    AvanceAnterior : string;
    ReprogramacionAplicada,
    AplicaReprogramacion : Boolean;

    Fecha,
    FechaReprogramacion : TDate;

    Hora,
    HoraReprogramacion : TDateTime;

  begin
    try
      try
        AplicaReprogramacion := False;
        NumReprogramaciones := 0;

        {$region 'Obtencion de datos'}
        //Obtener Re programaciones.
        InicializarZDataSet( ZReprogramaciones );
        ZReprogramaciones.SQL.Text := ObtenerSentencia( 'convenios', 'sql_datos_reprogramacion', ftConsulta );
        ZReprogramaciones.ParamByName( 'orden' ).AsString := global_contrato;
        ZReprogramaciones.ParamByName( 'folio' ).AsString := Folio;
        ZReprogramaciones.ParamByName( 'id_reprogramacion' ).AsString := IdReprogramacion;
        ZReprogramaciones.Open;
        ZReprogramaciones.First;

        if ZReprogramaciones.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón re programaciones.' );

        //Obtener avances registrados.
        InicializarZDataSet( ZAvances );
        ZAvances.SQL.Text := ObtenerSentencia( 'avancesglobales', 'sql_proyeccion_reprogramacion', ftConsulta );
        ZAvances.ParamByName( 'orden' ).AsString    := global_contrato;
        ZAvances.ParamByName( 'folio' ).AsString    := Folio;
        ZAvances.ParamByName( 'idreprogramacion' ).AsString := IdReprogramacion;
        ZAvances.Open;
        ZAvances.First;

        if ZAvances.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón avances registrados.' );

        InicializarZDataSet( ZActualizaAv );
        ZActualizaAv.SQL.Text := ObtenerSentencia( 'avancesglobales', 'sql_actualiza_avance_reprogramacion', ftUpdate );
        {$endregion}

        {$region 'Crear Excel'}

        Excel := CreateOleObject( 'Excel.Application' );
        Excel.DisplayAlerts := False;
        Excel.ScreenUpdating := True;
        Excel.Workbooks.Add;
        Excel.Visible := False;
        Book := Excel.Workbooks[ 1 ];
        Sheet := Book.Sheets[ 1 ];
        Sheet.Name := 'REPROGRAMACION';
      
        Fila := TExcelFila.Create;
      
        {$endregion}

        {$region 'Avances Generales'}
        Excel.Range[ 'E8' ].Value := '12:00';
        Excel.Range[ 'D3' ].Value := ZReprogramaciones.FieldByName( 'FechaInicio' ).AsString;
        Excel.Range[ 'D4' ].Value := ZReprogramaciones.FieldByName( 'FechaFinal' ).AsString;

        Excel.Range[ 'D5' ].Value := '=D4-D3';
        Excel.Range[ 'D5' ].NumberFormat := '0.0000';
        Excel.Range[ 'D7' ].Formula := '=100/(D5*24)';
        Excel.Range[ 'E7' ].Formula := '=D7*12';
        Excel.Range[ 'F7' ].Formula := '=D7*24';

        Fila.Row := 12;
        Progreso.Properties.Max := ZAvances.RecordCount;
        Progreso.Position := 0;
        Application.ProcessMessages;

        AvanceAnterior := '0';
        ReprogramacionAplicada := False;
        AplicaReprogramacion := False;
        while not ZAvances.Eof do
        begin
          Excel.Range[ 'A'+Fila.StrFila ].NumberFormat := '@';
          Excel.Range[ 'A'+Fila.StrFila ].Value := FormatDateTime( 'YYYY-MM-DD', ZAvances.FieldByName( 'Fecha' ).AsDateTime );
          Excel.Range[ 'B'+Fila.StrFila ].Value := ZAvances.FieldByName( 'Horario' ).AsString;
          Excel.Range[ 'C'+Fila.StrFila ].Value := ZAvances.FieldByName( 'Duracion' ).AsString;
          Excel.Range[ 'E'+Fila.StrFila ].Formula := '=C' + Fila.StrFila + ' / E8';
          Range := Excel.Range[ 'F'+Fila.StrFila ];
          Range.Formula := '=((E'+Fila.StrFila+'*E7/100)*100)+' +AvanceAnterior;;
          Range.NumberFormat := '0.00';
          Range := Excel.Range[ 'G'+Fila.StrFila ];
          if ReprogramacionAplicada then
          begin
            Range.Formula := '=F'+Fila.StrFila( -1 )+'-F'+Fila.StrFila();
            ReprogramacionAplicada := False;
          end
          else
            Range.Formula := '=F'+Fila.StrFila+'-F'+Fila.StrFila( -1 );
          Range.NumberFormat := '0.00';

          {$region 'Antiguo Calculo - NO BORRAR'}
          (*
          if ( ZReprogramaciones.Locate( 'IdReprogramacion', ZAvances.FieldByName( 'IdReprogramacion' ).AsString, [] ) ) and
             ( ZReprogramaciones.FieldByName( 'FechaAplicacion' ).AsString = ZAvances.FieldByName( 'FechaAplicacion' ).AsString ) and
             ( ZReprogramaciones.FieldByName( 'Gerencial' ).AsInteger = ZAvances.FieldByName( 'Gerencial' ).AsInteger ) and
             ( ZReprogramaciones.FieldByName( 'Horario' ).AsString = ZAvances.FieldByName( 'Horario' ).AsString ) then
          begin
            Excel.Range[ 'H' + Fila.StrFila ].Formula := '=((E'+Fila.StrFila( )+'*E7/100)*100)+'+ '(' + AvanceAnterior +' - ( ( ' + FloatToStr( ZReprogramaciones.FieldByName( 'Dias' ).AsFloat ) + ' * 24 ) * D7 ) )';
            Excel.Range[ 'H' + Fila.StrFila ].NumberFormat := '0.00';
            Range := Excel.Range[ 'G'+Fila.StrFila ];
            Range.Formula := '=F'+Fila.StrFila()+'-H'+Fila.StrFila();
            //Range.Formula := '=F'+Fila.StrFila( -1 )+'-'+'(' + AvanceAnterior +' - ( ( ' + FloatToStr( ZReprogramaciones.FieldByName( 'Dias' ).AsFloat ) + ' * 24 ) * D7 ) )';
            Range := Excel.Range[ 'I'+Fila.StrFila ];
            Range.Formula := '=H'+Fila.StrFila( )+' / F'+Fila.StrFila( -1 ) + ' * 100' ;
            Range.NumberFormat := '0.00';
            AvanceAnterior := 'H'+Fila.StrFila( );

            ReprogramacionAplicada := True;
            NumReprogramaciones := NumReprogramaciones + 1;

            {$region 'Actualiza partidas - PENDIENTE'}
            ZActualiza.Active := False;
            ZPartidas.Active := False;
            ZPartidas.ParamByName( 'orden' ).AsString := global_contrato;
            ZPartidas.ParamByName( 'convenio' ).AsString := global_convenio;
            ZPartidas.ParamByName( 'folio' ).AsString := Folio;
            ZPartidas.ParamByName( 'inicio' ).AsString := FormatDateTime( 'YYYY-MM-DD', ZReprogramaciones.FieldByName( 'Inicio' ).AsDateTime );
            ZPartidas.ParamByName( 'fin' ).AsString := FormatDateTime( 'YYYY-MM-DD', ZReprogramaciones.FieldByName( 'Final' ).AsDateTime );
            ZPartidas.ParamByName( 'rep_avance' ).AsString := Excel.Range[ 'I'+Fila.StrFila( ) ].Value;
            ZPartidas.Open;
            ZPartidas.First;

            ProgresoPartidas.Visible := True;
            ProgresoPartidas.Properties.Max := ZPartidas.RecordCount;
            ProgresoPartidas.Position := 0;
            Application.ProcessMessages;

            while not ZPartidas.Eof do
            begin
              ZActualiza.Active := False;
              ZActualiza.ParamByName( 'avance' ).AsString := ZPartidas.FieldByName( 'Avance' ).AsString;
              ZActualiza.ParamByName( 'orden' ).AsString := global_contrato;
              ZActualiza.ParamByName( 'convenio' ).AsString := global_convenio;
              ZActualiza.ParamByName( 'fecha' ).AsString := ZPartidas.FieldByName( 'Fecha' ).AsString;
              ZActualiza.ParamByName( 'folio' ).AsString := Folio;
              ZActualiza.ParamByName( 'wbs' ).AsString := ZPartidas.FieldByName( 'sWbs' ).AsString;
              ZActualiza.ParamByName( 'gerencial' ).AsInteger := ZPartidas.FieldByName( 'iNumeroGerencial' ).AsInteger;
              ZActualiza.ExecSQL;

              ZPartidas.Next;
              ProgresoPartidas.Position := ProgresoPartidas.Position + 1;
              ProgresoPartidas.Refresh;
            end;
            AplicaReprogramacion := False;
            {$endregion}

          end;
          *)
          {$endregion}

          ZActualizaAv.Active := False;
          ZActualizaAv.ParamByName( 'orden' ).AsString := global_contrato;
          ZActualizaAv.ParamByName( 'convenio' ).AsString := ZAvances.FieldByName( 'IdReprogramacion' ).AsString; 
          ZActualizaAv.ParamByName( 'fecha' ).AsString := FormatDateTime( 'YYYY-MM-DD', ZAvances.FieldByName( 'Fecha' ).AsDateTime );
          ZActualizaAv.ParamByName( 'gerencial' ).AsInteger := ZAvances.FieldByName( 'Gerencial' ).AsInteger;
          ZActualizaAv.ParamByName( 'horario' ).AsString := ZAvances.FieldByName( 'Horario' ).AsString;
          ZActualizaAv.ParamByName( 'folio' ).AsString := Folio;
          ZActualizaAv.ParamByName( 'avance_actual' ).AsString := Excel.Range[ 'G'+Fila.StrFila ].Text;
          ZActualizaAv.ParamByName( 'avance_acumulado' ).AsString := Excel.Range[ 'F'+Fila.StrFila ].Text;
          ZActualizaAv.ExecSQL;

          ZAvances.Next;
          Progreso.Position := Progreso.Position + 1;
          Progreso.Refresh;
          Fila.SigFila();

          AvanceAnterior := 'F'+Fila.StrFila( -1 );
          if ReprogramacionAplicada then
          begin
            AplicaReprogramacion := True;
            AvanceAnterior := 'H'+Fila.StrFila( -1 );
          end;
        end;
      
        {$endregion}

        {$region 'Avances partidas'}

        InicializarZDataSet( ZPartidas );
        ZPartidas.SQL.Text := ObtenerSentencia( 'actividadesxorden', 'sql_reprogramacion_partidas', ftConsulta );
        ZPartidas.ParamByName( 'orden' ).AsString := global_contrato;
        ZPartidas.ParamByName( 'folio' ).AsString := Folio;
        ZPartidas.ParamByName( 'id_reprogramacion' ).AsString := IdReprogramacion;
        ZPartidas.Open;
        ZPartidas.First;

        if ZPartidas.RecordCount = 0 then
          raise Exception.Create( Format( 'No se hayo un programa de trabajo para la reprogramacion %s', [ IdReprogramacion ] ) );

        InicializarZDataSet( ZHorarios );
        ZHorarios.SQL.Text := ObtenerSentencia( 'horarios_gerenciales', 'sql_horarios_principales', ftConsulta );
        ZHorarios.Open;

        if ZHorarios.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón horarios gerenciales principales' );

        InicializarZDataSet( ZActualiza );
        ZActualiza.SQL.Text := ObtenerSentencia( 'distribuciondeactividades', 'sql_elimina_actividades', ftDelete );
        ZActualiza.ParamByName( 'orden' ).AsString := global_contrato;
        ZActualiza.ParamByName( 'folio' ).AsString := Folio;
        ZActualiza.ParamByName( 'id_reprogramacion' ).AsString := IdReprogramacion;
        ZActualiza.ExecSQL;
        ZActualiza.Active := False;
        ZActualiza.SQL.Text := ObtenerSentencia( 'distribuciondeactividades', 'sql_inserta_avance_partida', ftInsert );

        Book.Sheets.Add;
        Book.Sheets[ 'REPROGRAMACION' ].Delete;
        Sheet := Book.Sheets[ 1 ];
        Fila.First( 1 ) ;
        while not ZPartidas.Eof do
        begin
          Excel.Range[ COLUMN_PARTIDA + Fila.StrFila ].Value := ZPartidas.FieldByName( 'Wbs' ).AsString;
          Excel.Range[ COLUMN_FECHA_INICIO + Fila.StrFila ].Value := FormatDateTime( 'YYYY-MM-DD', ZPartidas.FieldByName( 'Inicio' ).AsDateTime );
          Excel.Range[ COLUMN_FECHA_TERMINO + Fila.StrFila ].Value := FormatDateTime( 'YYYY-MM-DD', ZPartidas.FieldByName( 'Final' ).AsDateTime );
          Excel.Range[ COLUMN_DURACION + Fila.StrFila ].Formula := Format( '=( %s - %s ) + 1', [ COLUMN_FECHA_TERMINO + Fila.StrFila, COLUMN_FECHA_INICIO + Fila.StrFila ] );
          Excel.Range[ COLUMN_FACTOR_DIA + Fila.StrFila ].Formula := '=24 * ' + COLUMN_DURACION + Fila.StrFila;
          Excel.Range[ COLUMN_PORCENTAJE_DIA + Fila.StrFila ].Formula := '=100 / ' + COLUMN_FACTOR_DIA + Fila.StrFila;
          DiasIncremento := 0;
          DiasDuracion := Excel.Range[ COLUMN_DURACION + Fila.StrFila ].Value;
          Fila.OldRow := Fila.Row;
          while DiasIncremento < DiasDuracion do
          begin
            ZHorarios.First;
            while not ZHorarios.Eof do
            begin

              //Horario gerencial.
              if ZHorarios.FieldByName( 'Horario' ).AsString = '24:00' then
                Hora := StrToTime( '23:59' ) + StrToTime( '00:01' )
              else
                Hora := StrToTime( ZHorarios.FieldByName( 'Horario' ).AsString );

              //Hora inicial de la reprogramación.
              if ZReprogramaciones.FieldByName( 'HoraInicio' ).AsString = '24:00' then
                HoraReprogramacion := StrToTime( '23:59' ) + StrToTime( '00:01' )
              else
                HoraReprogramacion := StrToTime( ZReprogramaciones.FieldByName( 'HoraInicio' ).AsString );

              Fecha := DateOf( IncDay( ZPartidas.FieldByName( 'Inicio' ).AsDateTime, DiasIncremento ) );
              FechaReprogramacion := DateOf( ZReprogramaciones.FieldByName( 'Inicio' ).AsDateTime );
              Hora := ( Fecha + Hora );
              HoraReprogramacion := ( FechaReprogramacion + HoraReprogramacion );
              if ( ( Fecha = FechaReprogramacion ) and ( Hora >= HoraReprogramacion ) ) or
                 ( ( Fecha >= ZReprogramaciones.FieldByName( 'Inicio' ).AsDateTime ) and ( Fecha < ZReprogramaciones.FieldByName( 'Final' ).AsDateTime ) ) or
                 ( ( Fecha < ZReprogramaciones.FieldByName( 'Final' ).AsDateTime ) )
              then
              begin
                Excel.Range[ COLUMN_FECHA + Fila.StrFila ].Value := FormatDateTime( 'YYYY-MM-DD', IncDay( ZPartidas.FieldByName( 'Inicio' ).AsDateTime, DiasIncremento ) );
                Excel.Range[ COLUMN_HORARIO + Fila.StrFila ].Value := ZHorarios.FieldByName( 'Horario' ).AsString;
                if ZHorarios.FieldByName( 'Horario' ).AsString <> '05:00' then
                  Excel.Range[ COLUMN_HORAS + Fila.StrFila ].Formula := Format( '=( %s - %s ) * 24', [ COLUMN_HORARIO + Fila.StrFila, COLUMN_HORARIO + Fila.StrFila( -1 ) ] )
                else
                  Excel.Range[ COLUMN_HORAS + Fila.StrFila ].Formula := Format( '=( %s ) * 24', [ COLUMN_HORARIO + Fila.StrFila ]);
                Excel.Range[ COLUMN_ACUMULADO + Fila.StrFila ].Formula := Format( '=( %s * %s )', [ COLUMN_HORAS + Fila.StrFila, COLUMN_PORCENTAJE_DIA + IntToStr( Fila.OldRow ) ] );
                Excel.Range[ COLUMN_ACUMULADO + Fila.StrFila ].NumberFormat := '0.00';
                if ( Excel.Range[ COLUMN_ACUMULADO + Fila.StrFila( -1 ) ].Value > Excel.Range[ COLUMN_ACUMULADO + Fila.StrFila() ].Value ) then
                  Excel.Range[ COLUMN_ACTUAL + Fila.StrFila ].Formula := Format( '=%s - %s', [ COLUMN_ACUMULADO + Fila.StrFila( -1 ), COLUMN_ACUMULADO + Fila.StrFila() ] )
                else
                  Excel.Range[ COLUMN_ACTUAL + Fila.StrFila ].Formula := Format( '=%s - %s', [ COLUMN_ACUMULADO + Fila.StrFila(), COLUMN_ACUMULADO + Fila.StrFila( -1 ) ] );

                Excel.Range[ COLUMN_ANTERIOR + Fila.StrFila ].Formula := Format( '=%s - %s', [ COLUMN_ACUMULADO + Fila.StrFila, COLUMN_ACTUAL + Fila.StrFila ] );

                ZActualiza.Active := False;
                ZActualiza.ParamByName( 'orden' ).AsString := global_contrato;
                ZActualiza.ParamByName( 'reprogramacion' ).AsString := IdReprogramacion;
                ZActualiza.ParamByName( 'fecha' ).AsString := FormatDateTime( 'YYYY-MM-DD', DateOf( Fecha ) );
                ZActualiza.ParamByName( 'folio' ).AsString := Folio;
                ZActualiza.ParamByName( 'paquete' ).AsString := EmptyStr;
                ZActualiza.ParamByName( 'wbs' ).AsString := ZPartidas.FieldByName( 'Wbs' ).AsString;
                ZActualiza.ParamByName( 'actividad' ).AsString := ZPartidas.FieldByName( 'Actividad' ).AsString;
                ZActualiza.ParamByName( 'gerencial' ).AsInteger := ZHorarios.FieldByName( 'NumeroGerencial' ).AsInteger;
                ZActualiza.ParamByName( 'avance' ).AsString := Excel.Range[ COLUMN_ACUMULADO + Fila.StrFila ].Text;
                ZActualiza.ExecSQL;

                Fila.SigFila();
              end;
              ZHorarios.Next;
            end;

            Excel.Range[ 'M' + Fila.StrFila( -1 ) ].Formula := Format( '=SUM( %s:%s )', [ COLUMN_ACUMULADO + Fila.StrFila( -ZHorarios.RecordCount ), COLUMN_ACUMULADO + Fila.StrFila( -1 ) ] );
            Inc( DiasIncremento );

          end;

          ZPartidas.Next;
        end;

        {$endregion}


      except
        on e:Exception do
        begin
          TaskMessageDlg( 'Ha ocurrido un error', e.Message + #10+#13 + 'Se revertirán los cambios.', mtInformation, [ mbOK ], 0 );
        end;
      end;

    finally
      Fila.Free;
      ZAvances.Free;
      ZNuevoAvance.Free;
      ZActualiza.Free;
      if TaskMessageDlg( 'Confirmación', '¿Desea conservar el archivo temporal de calculos?', mtConfirmation, [ mbYes, mbNo ], 0 ) = mrYes then
      begin
        Excel.Visible := True;
        Excel.DisplayAlerts := False
      end
      else
        Excel.Quit;
    end;
  end;

  {$endregion}

  {$region 'Ocultar controles'}

  procedure VisibleControles( var Controles : array of TWinControl; Visible : Boolean );
  var
    Control : Integer;
  begin
    for Control := 0 to Length( Controles ) - 1 do
      Controles[ Control ].Visible := Visible; 
  end;

  {$endregion}


function MostrarFormChild(sForm: string; dParamBarra :tdxBarManager): boolean;
var
  i: integer;
begin
  result := false;
  dParamBarra.PopupMenuLinks[0].PopupMenu:=nil;

  if global_FormNoilPrincipal.MDIChildCount <> 0 then
  begin
    for I := 0 to global_FormNoilPrincipal.MDIChildCount - 1 do
      if uppercase(global_FormNoilPrincipal.MDIChildren[i].Name) = uppercase(sform) then
      begin
        global_FormNoilPrincipal.MDIChildren[i].Show;
        result := true;
        break;
      end;
  end;
end;

function ValidaChildAbierto(dParamForm :tForm): integer;
begin
   if global_FormNoilPrincipal.MDIChildCount > 0 then
      result := global_FormNoilPrincipal.MDIChildCount
   else
      result := 0;
end;

procedure CierraFormChild(dParamForm :tForm);
var I:Integer;
begin
  for I := 0 to global_FormNoilPrincipal.MDIChildCount - 1 do  //Recorre el ciclo mientras se tenga un mdi
    global_FormNoilPrincipal.MDIChildren[I].Close;  //Cierra el formulario
end;


end.
