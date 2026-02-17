import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class MecadoPagoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? zipCode = '',
    int? streetNumber,
    String? streetName = '',
    int? precio,
    String? descripcion = '',
    String? titulo = '',
    String? pending = '',
    String? failure = '',
    String? success = '',
    int? number,
    String? email = '',
    String? surname = '',
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "items": [
    {
      "id": "${escapeStringForJson(id)}",
      "title": "${escapeStringForJson(titulo)}",
      "quantity": 1,
      "currency_id": "CLP",
      "unit_price": ${precio}
    }
  ],
  "back_urls": {
    "success": "${escapeStringForJson(success)}",
    "failure": "${escapeStringForJson(failure)}",
    "pending": "${escapeStringForJson(pending)}"
  },
  "auto_return": "approved",
  "statement_descriptor": "PACKAGEBKFST",
  "external_reference": "${escapeStringForJson(id)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MecadoPago',
      apiUrl: 'https://api.mercadopago.com/checkout/preferences',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/jzon',
        'Authorization':
            'Bearer APP_USR-1649531467608997-011709-bf2ff1742d10d363e1d061de73ba3249-2065537372',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.init_point''',
      ));
}

class ReferenciaIDCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'referenciaID',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer APP_USR-1649531467608997-011709-bf2ff1742d10d363e1d061de73ba3249-2065537372',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class EmailSendCall {
  static Future<ApiCallResponse> call({
    String? de = '',
    String? para = '',
    String? asunto = '',
    String? mensaje = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EmailSendCall',
        'variables': {
          'de': de,
          'para': para,
          'asunto': asunto,
          'mensaje': mensaje,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class TransbankCall {
  static Future<ApiCallResponse> call({
    String? buyOrder = '',
    String? sessionId = '',
    int? amount,
    String? returnUrl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "buy_order": "${escapeStringForJson(buyOrder)}",
  "session_id": "${escapeStringForJson(sessionId)}",
  "amount": ${amount},
  "return_url": "${escapeStringForJson(returnUrl)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transbank',
      apiUrl:
          'https://webpay3gint.transbank.cl/rswebpaytransaction/api/webpay/v1.2/transactions',
      callType: ApiCallType.POST,
      headers: {
        'Tbk-Api-Key-Id': '597055555532',
        'Tbk-Api-Key-Secret':
            '579B532A7440BB0C9079DED94D31EA1615BACEB56610332264630D42D0A36B1C',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
