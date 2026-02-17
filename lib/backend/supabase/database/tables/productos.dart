import '../database.dart';

class ProductosTable extends SupabaseTable<ProductosRow> {
  @override
  String get tableName => 'productos';

  @override
  ProductosRow createRow(Map<String, dynamic> data) => ProductosRow(data);
}

class ProductosRow extends SupabaseDataRow {
  ProductosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductosTable();

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

  String? get categoria2 => getField<String>('categoria2');
  set categoria2(String? value) => setField<String>('categoria2', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);
}
