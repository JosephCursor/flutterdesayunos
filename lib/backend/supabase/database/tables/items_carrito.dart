import '../database.dart';

class ItemsCarritoTable extends SupabaseTable<ItemsCarritoRow> {
  @override
  String get tableName => 'items_carrito';

  @override
  ItemsCarritoRow createRow(Map<String, dynamic> data) => ItemsCarritoRow(data);
}

class ItemsCarritoRow extends SupabaseDataRow {
  ItemsCarritoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemsCarritoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombreItem => getField<String>('nombre_item');
  set nombreItem(String? value) => setField<String>('nombre_item', value);

  double? get precioSubTotal => getField<double>('precio_subTotal');
  set precioSubTotal(double? value) =>
      setField<double>('precio_subTotal', value);

  double? get precioEnvio => getField<double>('precio_envio');
  set precioEnvio(double? value) => setField<double>('precio_envio', value);

  double? get precioTotal => getField<double>('precio_total');
  set precioTotal(double? value) => setField<double>('precio_total', value);

  String? get direccion1 => getField<String>('direccion1');
  set direccion1(String? value) => setField<String>('direccion1', value);

  String? get direccion2 => getField<String>('direccion2');
  set direccion2(String? value) => setField<String>('direccion2', value);

  List<String> get ingredientesAdicionales =>
      getListField<String>('ingredientes_adicionales')!;
  set ingredientesAdicionales(List<String> value) =>
      setListField<String>('ingredientes_adicionales', value);

  String? get nombreCliente => getField<String>('nombre_cliente');
  set nombreCliente(String? value) => setField<String>('nombre_cliente', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);
}
