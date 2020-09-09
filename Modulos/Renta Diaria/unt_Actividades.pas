unit unt_Actividades;

interface

  {$region 'Uses'}

  uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ZConnection, DB, ZAbstractRODataset, ZDataset, StrUtils, Math,
    frm_connection, global, DateUtils, ComObj, DBClient, ZSqlProcessor, DBGrids,
    DBCtrls, cxDBEdit, StdCtrls ;


  {$endregion}



  type
    TTiposActividad = class( TObject )
    public
      cdValores : TClientDataSet;
      dsValores : TDataSource;

      constructor Create( Tabla, Campo : string );
      procedure AlterTable();
      procedure ValoresPickList( Columna : TColumn );
      procedure LinkWithLookup( var Lookup : TComboBox );
      procedure LinkWithTextEdit( var Edit : TcxDBTextEdit );

    private
      Tabla,
      Columna : string;

      zQuery : TZReadOnlyQuery;
      zProcesaSQL : TZSQLProcessor;

      procedure LlenarValores( var DataSet : TClientDataSet );

    end;


  const
    SQL_TIPOS_ACTIVIDAD_ENUM : string = 'select '+
                                          'replace( '+
                                            'replace( '+
                                              'replace( '+
                                                'replace( information_schema.COLUMNS.COLUMN_TYPE, :caracter, "" ), '+
                                              '"enum", "" ), '+
                                            '"(", "" ), '+
                                          '")", "" ) as ValorEnum '+
                                        'from information_schema.COLUMNS where information_schema.COLUMNS.TABLE_SCHEMA = :base '+
                                        'and information_schema.COLUMNS.TABLE_NAME = :tabla '+
                                        'and information_schema.COLUMNS.DATA_TYPE = "enum" '+
                                        'and information_schema.COLUMNS.COLUMN_NAME = :columna';

implementation

  constructor TTiposActividad.Create( Tabla, Campo : string );
  begin

    inherited Create;
    zQuery := TZReadOnlyQuery.Create( nil );
    zQuery.Connection := connection.zConnection;
    zQuery.Active := False;
    zQuery.SQL.Text := SQL_TIPOS_ACTIVIDAD_ENUM;
    zQuery.ParamByName( 'caracter' ).AsString := Char( 39 );
    zQuery.ParamByName( 'base' ).AsString := connection.zConnection.Database;
    zQuery.ParamByName( 'tabla' ).AsString := Tabla;
    zQuery.ParamByName( 'columna' ).AsString := Campo;
    zQuery.Open;
    zQuery.First;

    if zQuery.RecordCount = 0 then
      raise Exception.Create( 'No se encontrarón valores' );

    cdValores := TClientDataSet.Create( nil );
    cdValores.FieldDefs.Add( 'TipoActividad', ftstring, 255, True );
    cdValores.CreateDataSet;
    cdValores.Open;

    dsValores := TDataSource.Create( nil );
    dsValores.DataSet := cdValores;

    Self.Tabla := Tabla;
    Self.Columna := Campo;

    LlenarValores( cdValores );
  end;

  procedure TTiposActividad.LlenarValores( var DataSet : TClientDataSet );
  var
    Cadena : string;

    Contador,
    Pivote : Integer;


  begin
    zQuery.First;
    Pivote := 1;
    Cadena := '';

    while Pivote < Length( zQuery.FieldByName( 'ValorEnum' ).AsString ) do
    begin

      for Contador := Pivote to Length( zQuery.FieldByName( 'ValorEnum' ).AsString ) do
      begin
        if zQuery.FieldByName( 'ValorEnum' ).AsString[ Contador ] = ',' then
          Break
        else
          Cadena := Cadena + zQuery.FieldByName( 'ValorEnum' ).AsString[ Contador ];

        Pivote := Pivote + 1;

      end;

      Pivote := Pivote + 1;

      Cadena := Trim( Cadena );

      DataSet.Append;
      DataSet.FieldByName( 'TipoActividad' ).AsString := Cadena;
      DataSet.Post;

      Cadena := '';

    end;
  end;



  procedure TTiposActividad.AlterTable;
  var
    i : Integer;
  begin

    if cdValores.RecordCount = 0 then
      raise Exception.Create( 'No hay valores para alterar la tabla' );

    zProcesaSQL := TZSQLProcessor.Create( nil );
    zProcesaSQL.Connection := connection.zConnection;
    zProcesaSQL.Script.Text := 'alter table ' + Tabla + ' '+
                               'modify column ' + Columna + ' ' +
                               'enum( ' ;

    zProcesaSQL.Script.Text := Trim( zProcesaSQL.Script.Text );
    cdValores.First;

    while not cdValores.Eof do
    begin

      if cdValores.RecNo < cdValores.RecordCount then
        zProcesaSQL.Script.Text := zProcesaSQL.Script.Text + QuotedStr( cdValores.FieldByName( 'TipoActividad' ).AsString ) + ', '
      else
        zProcesaSQL.Script.Text := zProcesaSQL.Script.Text + QuotedStr( cdValores.FieldByName( 'TipoActividad' ).AsString ) + ' );';
      cdValores.Next;
    end;

    zProcesaSQL.Script.Text := Trim( zProcesaSQL.Script.Text );
    zProcesaSQL.Execute;
  end;

  procedure TTiposActividad.ValoresPickList( Columna: TColumn);
  begin
    cdValores.First;

    while not cdValores.Eof do
    begin
      Columna.PickList.Add( cdValores.FieldByName( 'TipoActividad' ).AsString );
      cdValores.Next;
    end;
  end;

  procedure TTiposActividad.LinkWithLookup( var Lookup : TComboBox );
  begin
    Lookup.Items.Clear;
    cdValores.First;
    while not cdValores.Eof do
    begin
      Lookup.Items.Add( cdValores.FieldByName( 'TipoActividad' ).AsString );
      cdValores.Next;
    end;
  end;

  procedure TTiposActividad.LinkWithTextEdit(var Edit: TcxDBTextEdit);
  begin
    Edit.DataBinding.DataSource := dsValores;
    Edit.DataBinding.DataField := 'TipoActividad';
  end;

end.
