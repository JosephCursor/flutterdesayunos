// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CostoenvioStruct extends BaseStruct {
  CostoenvioStruct({
    double? valorenvio,
  }) : _valorenvio = valorenvio;

  // "valorenvio" field.
  double? _valorenvio;
  double get valorenvio => _valorenvio ?? 0.0;
  set valorenvio(double? val) => _valorenvio = val;

  void incrementValorenvio(double amount) => valorenvio = valorenvio + amount;

  bool hasValorenvio() => _valorenvio != null;

  static CostoenvioStruct fromMap(Map<String, dynamic> data) =>
      CostoenvioStruct(
        valorenvio: castToType<double>(data['valorenvio']),
      );

  static CostoenvioStruct? maybeFromMap(dynamic data) => data is Map
      ? CostoenvioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'valorenvio': _valorenvio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'valorenvio': serializeParam(
          _valorenvio,
          ParamType.double,
        ),
      }.withoutNulls;

  static CostoenvioStruct fromSerializableMap(Map<String, dynamic> data) =>
      CostoenvioStruct(
        valorenvio: deserializeParam(
          data['valorenvio'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CostoenvioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CostoenvioStruct && valorenvio == other.valorenvio;
  }

  @override
  int get hashCode => const ListEquality().hash([valorenvio]);
}

CostoenvioStruct createCostoenvioStruct({
  double? valorenvio,
}) =>
    CostoenvioStruct(
      valorenvio: valorenvio,
    );
