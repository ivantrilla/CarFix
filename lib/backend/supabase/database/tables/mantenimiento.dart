import '../database.dart';

class MantenimientoTable extends SupabaseTable<MantenimientoRow> {
  @override
  String get tableName => 'mantenimiento';

  @override
  MantenimientoRow createRow(Map<String, dynamic> data) =>
      MantenimientoRow(data);
}

class MantenimientoRow extends SupabaseDataRow {
  MantenimientoRow(super.data);

  @override
  SupabaseTable get table => MantenimientoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get tipoMantenimiento => getField<String>('tipo_mantenimiento')!;
  set tipoMantenimiento(String value) =>
      setField<String>('tipo_mantenimiento', value);

  String? get imagenesMantenimientoUrl =>
      getField<String>('imagenes_mantenimiento_url');
  set imagenesMantenimientoUrl(String? value) =>
      setField<String>('imagenes_mantenimiento_url', value);
}
