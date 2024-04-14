import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get nombreCompleto => getField<String>('nombre_completo');
  set nombreCompleto(String? value) =>
      setField<String>('nombre_completo', value);

  String? get descripcionUsuario => getField<String>('descripcion_usuario');
  set descripcionUsuario(String? value) =>
      setField<String>('descripcion_usuario', value);

  String? get imagenUrl => getField<String>('imagen_url');
  set imagenUrl(String? value) => setField<String>('imagen_url', value);
}
