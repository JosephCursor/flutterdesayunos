// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteStructStruct extends BaseStruct {
  ClienteStructStruct({
    String? nombresCliente,
    String? telefono,
    String? direccion1,
    String? direccion2,
    String? fechadeentrega,
  })  : _nombresCliente = nombresCliente,
        _telefono = telefono,
        _direccion1 = direccion1,
        _direccion2 = direccion2,
        _fechadeentrega = fechadeentrega;

  // "nombresCliente" field.
  String? _nombresCliente;
  String get nombresCliente => _nombresCliente ?? '';
  set nombresCliente(String? val) => _nombresCliente = val;

  bool hasNombresCliente() => _nombresCliente != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  // "direccion1" field.
  String? _direccion1;
  String get direccion1 => _direccion1 ?? '';
  set direccion1(String? val) => _direccion1 = val;

  bool hasDireccion1() => _direccion1 != null;

  // "direccion2" field.
  String? _direccion2;
  String get direccion2 => _direccion2 ?? '';
  set direccion2(String? val) => _direccion2 = val;

  bool hasDireccion2() => _direccion2 != null;

  // "fechadeentrega" field.
  String? _fechadeentrega;
  String get fechadeentrega => _fechadeentrega ?? '';
  set fechadeentrega(String? val) => _fechadeentrega = val;

  bool hasFechadeentrega() => _fechadeentrega != null;

  static ClienteStructStruct fromMap(Map<String, dynamic> data) =>
      ClienteStructStruct(
        nombresCliente: data['nombresCliente'] as String?,
        telefono: data['telefono'] as String?,
        direccion1: data['direccion1'] as String?,
        direccion2: data['direccion2'] as String?,
        fechadeentrega: data['fechadeentrega'] as String?,
      );

  static ClienteStructStruct? maybeFromMap(dynamic data) => data is Map
      ? ClienteStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nombresCliente': _nombresCliente,
        'telefono': _telefono,
        'direccion1': _direccion1,
        'direccion2': _direccion2,
        'fechadeentrega': _fechadeentrega,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombresCliente': serializeParam(
          _nombresCliente,
          ParamType.String,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'direccion1': serializeParam(
          _direccion1,
          ParamType.String,
        ),
        'direccion2': serializeParam(
          _direccion2,
          ParamType.String,
        ),
        'fechadeentrega': serializeParam(
          _fechadeentrega,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClienteStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStructStruct(
        nombresCliente: deserializeParam(
          data['nombresCliente'],
          ParamType.String,
          false,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
        direccion1: deserializeParam(
          data['direccion1'],
          ParamType.String,
          false,
        ),
        direccion2: deserializeParam(
          data['direccion2'],
          ParamType.String,
          false,
        ),
        fechadeentrega: deserializeParam(
          data['fechadeentrega'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClienteStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStructStruct &&
        nombresCliente == other.nombresCliente &&
        telefono == other.telefono &&
        direccion1 == other.direccion1 &&
        direccion2 == other.direccion2 &&
        fechadeentrega == other.fechadeentrega;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nombresCliente, telefono, direccion1, direccion2, fechadeentrega]);
}

ClienteStructStruct createClienteStructStruct({
  String? nombresCliente,
  String? telefono,
  String? direccion1,
  String? direccion2,
  String? fechadeentrega,
}) =>
    ClienteStructStruct(
      nombresCliente: nombresCliente,
      telefono: telefono,
      direccion1: direccion1,
      direccion2: direccion2,
      fechadeentrega: fechadeentrega,
    );
