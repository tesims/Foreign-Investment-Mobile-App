import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FirebaseAuthCall {
  static Future<ApiCallResponse> call({
    String? idToken = '',
  }) {
    final body = '''
{
  "id_token": "${idToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Firebase Auth',
      apiUrl: 'https://xn8h-jzwm-odfz.n7c.xano.io/api:JJxCCbQC/auth/firebase',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic firebaseid(dynamic response) => getJsonField(
        response,
        r'''$.firebase_id''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  static dynamic displayname(dynamic response) => getJsonField(
        response,
        r'''$.display_name''',
      );
  static dynamic profilepicture(dynamic response) => getJsonField(
        response,
        r'''$.profile_picture''',
      );
}

class AddCRMEmailCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? category = 'updates',
  }) {
    final body = '''
{
  "email": "${email}",
  "category": "${category}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add CRM Email',
      apiUrl: 'https://xn8h-jzwm-odfz.n7c.xano.io/api:JJxCCbQC/crmlist',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic created(dynamic response) => getJsonField(
        response,
        r'''$.created_at''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
