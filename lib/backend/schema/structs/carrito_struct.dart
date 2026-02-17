// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoStruct extends BaseStruct {
  CarritoStruct({
    int? productoId,
    String? nombreItem,
    String? imagenpath,
    int? cantidad,
    double? valordireccion,
    double? subTotal,
    double? valorTotal,
    List<String>? ingredientessadicionales,
    List<double>? precioIngredientes,
    double? subTotal2,
  })  : _productoId = productoId,
        _nombreItem = nombreItem,
        _imagenpath = imagenpath,
        _cantidad = cantidad,
        _valordireccion = valordireccion,
        _subTotal = subTotal,
        _valorTotal = valorTotal,
        _ingredientessadicionales = ingredientessadicionales,
        _precioIngredientes = precioIngredientes,
        _subTotal2 = subTotal2;

  // "productoId" field.
  int? _productoId;
  int get productoId => _productoId ?? 0;
  set productoId(int? val) => _productoId = val;

  void incrementProductoId(int amount) => productoId = productoId + amount;

  bool hasProductoId() => _productoId != null;

  // "nombre_item" field.
  String? _nombreItem;
  String get nombreItem => _nombreItem ?? '';
  set nombreItem(String? val) => _nombreItem = val;

  bool hasNombreItem() => _nombreItem != null;

  // "imagenpath" field.
  String? _imagenpath;
  String get imagenpath => _imagenpath ?? '';
  set imagenpath(String? val) => _imagenpath = val;

  bool hasImagenpath() => _imagenpath != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;

  void incrementCantidad(int amount) => cantidad = cantidad + amount;

  bool hasCantidad() => _cantidad != null;

  // "Valordireccion" field.
  double? _valordireccion;
  double get valordireccion => _valordireccion ?? 0.0;
  set valordireccion(double? val) => _valordireccion = val;

  void incrementValordireccion(double amount) =>
      valordireccion = valordireccion + amount;

  bool hasValordireccion() => _valordireccion != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  set subTotal(double? val) => _subTotal = val;

  void incrementSubTotal(double amount) => subTotal = subTotal + amount;

  bool hasSubTotal() => _subTotal != null;

  // "valorTotal" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  set valorTotal(double? val) => _valorTotal = val;

  void incrementValorTotal(double amount) => valorTotal = valorTotal + amount;

  bool hasValorTotal() => _valorTotal != null;

  // "ingredientessadicionales" field.
  List<String>? _ingredientessadicionales;
  List<String> get ingredientessadicionales =>
      _ingredientessadicionales ?? const [];
  set ingredientessadicionales(List<String>? val) =>
      _ingredientessadicionales = val;

  void updateIngredientessadicionales(Function(List<String>) updateFn) {
    updateFn(_ingredientessadicionales ??= []);
  }

  bool hasIngredientessadicionales() => _ingredientessadicionales != null;

  // "precioIngredientes" field.
  List<double>? _precioIngredientes;
  List<double> get precioIngredientes => _precioIngredientes ?? const [];
  set precioIngredientes(List<double>? val) => _precioIngredientes = val;

  void updatePrecioIngredientes(Function(List<double>) updateFn) {
    updateFn(_precioIngredientes ??= []);
  }

  bool hasPrecioIngredientes() => _precioIngredientes != null;

  // "subTotal2" field.
  double? _subTotal2;
  double get subTotal2 => _subTotal2 ?? 0.0;
  set subTotal2(double? val) => _subTotal2 = val;

  void incrementSubTotal2(double amount) => subTotal2 = subTotal2 + amount;

  bool hasSubTotal2() => _subTotal2 != null;

  static CarritoStruct fromMap(Map<String, dynamic> data) => CarritoStruct(
        productoId: castToType<int>(data['productoId']),
        nombreItem: data['nombre_item'] as String?,
        imagenpath: data['imagenpath'] as String?,
        cantidad: castToType<int>(data['cantidad']),
        valordireccion: castToType<double>(data['Valordireccion']),
        subTotal: castToType<double>(data['subTotal']),
        valorTotal: castToType<double>(data['valorTotal']),
        ingredientessadicionales: getDataList(data['ingredientessadicionales']),
        precioIngredientes: getDataList(data['precioIngredientes']),
        subTotal2: castToType<double>(data['subTotal2']),
      );

  static CarritoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CarritoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'productoId': _productoId,
        'nombre_item': _nombreItem,
        'imagenpath': _imagenpath,
        'cantidad': _cantidad,
        'Valordireccion': _valordireccion,
        'subTotal': _subTotal,
        'valorTotal': _valorTotal,
        'ingredientessadicionales': _ingredientessadicionales,
        'precioIngredientes': _precioIngredientes,
        'subTotal2': _subTotal2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productoId': serializeParam(
          _productoId,
          ParamType.int,
        ),
        'nombre_item': serializeParam(
          _nombreItem,
          ParamType.String,
        ),
        'imagenpath': serializeParam(
          _imagenpath,
          ParamType.String,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
        ),
        'Valordireccion': serializeParam(
          _valordireccion,
          ParamType.double,
        ),
        'subTotal': serializeParam(
          _subTotal,
          ParamType.double,
        ),
        'valorTotal': serializeParam(
          _valorTotal,
          ParamType.double,
        ),
        'ingredientessadicionales': serializeParam(
          _ingredientessadicionales,
          ParamType.String,
          isList: true,
        ),
        'precioIngredientes': serializeParam(
          _precioIngredientes,
          ParamType.double,
          isList: true,
        ),
        'subTotal2': serializeParam(
          _subTotal2,
          ParamType.double,
        ),
      }.withoutNulls;

  static CarritoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CarritoStruct(
        productoId: deserializeParam(
          data['productoId'],
          ParamType.int,
          false,
        ),
        nombreItem: deserializeParam(
          data['nombre_item'],
          ParamType.String,
          false,
        ),
        imagenpath: deserializeParam(
          data['imagenpath'],
          ParamType.String,
          false,
        ),
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.int,
          false,
        ),
        valordireccion: deserializeParam(
          data['Valordireccion'],
          ParamType.double,
          false,
        ),
        subTotal: deserializeParam(
          data['subTotal'],
          ParamType.double,
          false,
        ),
        valorTotal: deserializeParam(
          data['valorTotal'],
          ParamType.double,
          false,
        ),
        ingredientessadicionales: deserializeParam<String>(
          data['ingredientessadicionales'],
          ParamType.String,
          true,
        ),
        precioIngredientes: deserializeParam<double>(
          data['precioIngredientes'],
          ParamType.double,
          true,
        ),
        subTotal2: deserializeParam(
          data['subTotal2'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CarritoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CarritoStruct &&
        productoId == other.productoId &&
        nombreItem == other.nombreItem &&
        imagenpath == other.imagenpath &&
        cantidad == other.cantidad &&
        valordireccion == other.valordireccion &&
        subTotal == other.subTotal &&
        valorTotal == other.valorTotal &&
        listEquality.equals(
            ingredientessadicionales, other.ingredientessadicionales) &&
        listEquality.equals(precioIngredientes, other.precioIngredientes) &&
        subTotal2 == other.subTotal2;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productoId,
        nombreItem,
        imagenpath,
        cantidad,
        valordireccion,
        subTotal,
        valorTotal,
        ingredientessadicionales,
        precioIngredientes,
        subTotal2
      ]);
}

CarritoStruct createCarritoStruct({
  int? productoId,
  String? nombreItem,
  String? imagenpath,
  int? cantidad,
  double? valordireccion,
  double? subTotal,
  double? valorTotal,
  double? subTotal2,
}) =>
    CarritoStruct(
      productoId: productoId,
      nombreItem: nombreItem,
      imagenpath: imagenpath,
      cantidad: cantidad,
      valordireccion: valordireccion,
      subTotal: subTotal,
      valorTotal: valorTotal,
      subTotal2: subTotal2,
    );
