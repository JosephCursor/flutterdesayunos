import '../database.dart';

class SanValentinTable extends SupabaseTable<SanValentinRow> {
  @override
  String get tableName => 'San Valentin';

  @override
  SanValentinRow createRow(Map<String, dynamic> data) => SanValentinRow(data);
}

class SanValentinRow extends SupabaseDataRow {
  SanValentinRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SanValentinTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  double get precio => getField<double>('precio')!;
  set precio(double value) => setField<double>('precio', value);

  String get descripcion => getField<String>('descripción')!;
  set descripcion(String value) => setField<String>('descripción', value);

  String get photoUrl => getField<String>('photo_url')!;
  set photoUrl(String value) => setField<String>('photo_url', value);

  String get categoria => getField<String>('categoria')!;
  set categoria(String value) => setField<String>('categoria', value);

  String? get field2urlPhoto => getField<String>('2url_photo');
  set field2urlPhoto(String? value) => setField<String>('2url_photo', value);
}
