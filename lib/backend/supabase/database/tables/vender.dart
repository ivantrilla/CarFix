import '../database.dart';

class VenderTable extends SupabaseTable<VenderRow> {
  @override
  String get tableName => 'vender';

  @override
  VenderRow createRow(Map<String, dynamic> data) => VenderRow(data);
}

class VenderRow extends SupabaseDataRow {
  VenderRow(super.data);

  @override
  SupabaseTable get table => VenderTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get modelo => getField<String>('modelo')!;
  set modelo(String value) => setField<String>('modelo', value);

  int? get precio => getField<int>('precio');
  set precio(int? value) => setField<int>('precio', value);

  double? get kilometros => getField<double>('kilometros');
  set kilometros(double? value) => setField<double>('kilometros', value);

  DateTime? get anoCompra => getField<DateTime>('ano_compra');
  set anoCompra(DateTime? value) => setField<DateTime>('ano_compra', value);

  String? get tipoFuel => getField<String>('tipo_fuel');
  set tipoFuel(String? value) => setField<String>('tipo_fuel', value);

  String? get tipoTransmision => getField<String>('tipo_transmision');
  set tipoTransmision(String? value) =>
      setField<String>('tipo_transmision', value);

  bool? get accidente => getField<bool>('accidente');
  set accidente(bool? value) => setField<bool>('accidente', value);

  String? get imagenesCocheUrl => getField<String>('imagenes_coche_url');
  set imagenesCocheUrl(String? value) =>
      setField<String>('imagenes_coche_url', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);

  String? get urlCarWeb => getField<String>('url_car_web');
  set urlCarWeb(String? value) => setField<String>('url_car_web', value);

  String? get sonidoMotor => getField<String>('sonido_motor');
  set sonidoMotor(String? value) => setField<String>('sonido_motor', value);
}
