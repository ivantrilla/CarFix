import '../database.dart';

class HorasNoDisponiblesTable extends SupabaseTable<HorasNoDisponiblesRow> {
  @override
  String get tableName => 'horas_no_disponibles';

  @override
  HorasNoDisponiblesRow createRow(Map<String, dynamic> data) =>
      HorasNoDisponiblesRow(data);
}

class HorasNoDisponiblesRow extends SupabaseDataRow {
  HorasNoDisponiblesRow(super.data);

  @override
  SupabaseTable get table => HorasNoDisponiblesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get dia => getField<DateTime>('dia')!;
  set dia(DateTime value) => setField<DateTime>('dia', value);

  PostgresTime? get hora => getField<PostgresTime>('hora');
  set hora(PostgresTime? value) => setField<PostgresTime>('hora', value);

  String? get idMantenimiento => getField<String>('id_mantenimiento');
  set idMantenimiento(String? value) =>
      setField<String>('id_mantenimiento', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);
}
