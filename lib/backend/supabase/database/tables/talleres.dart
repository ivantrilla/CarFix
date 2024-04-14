import '../database.dart';

class TalleresTable extends SupabaseTable<TalleresRow> {
  @override
  String get tableName => 'talleres';

  @override
  TalleresRow createRow(Map<String, dynamic> data) => TalleresRow(data);
}

class TalleresRow extends SupabaseDataRow {
  TalleresRow(super.data);

  @override
  SupabaseTable get table => TalleresTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nombreTaller => getField<String>('nombre_taller');
  set nombreTaller(String? value) => setField<String>('nombre_taller', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  double? get latitud => getField<double>('latitud');
  set latitud(double? value) => setField<double>('latitud', value);

  double? get longitud => getField<double>('longitud');
  set longitud(double? value) => setField<double>('longitud', value);

  String? get imagenTallerUrl => getField<String>('imagen_taller_url');
  set imagenTallerUrl(String? value) =>
      setField<String>('imagen_taller_url', value);
}
