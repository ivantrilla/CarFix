import '../database.dart';

class ComentariosTable extends SupabaseTable<ComentariosRow> {
  @override
  String get tableName => 'comentarios';

  @override
  ComentariosRow createRow(Map<String, dynamic> data) => ComentariosRow(data);
}

class ComentariosRow extends SupabaseDataRow {
  ComentariosRow(super.data);

  @override
  SupabaseTable get table => ComentariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String? get satisfaccion => getField<String>('satisfaccion');
  set satisfaccion(String? value) => setField<String>('satisfaccion', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);
}
