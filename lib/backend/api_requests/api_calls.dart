import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://xn8h-jzwm-odfz.n7c.xano.io/api:JJxCCbQC/auth/login',
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

  static dynamic authToken(dynamic response) => getJsonField(
        response,
        r'''$.authToken''',
      );
}

class GoogleInitCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'google init',
      apiUrl:
          'https://xn8h-jzwm-odfz.n7c.xano.io/api:U0aE1wpF/oauth/google/init',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'redirect_uri': "https://glotek.app/login",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic authURL(dynamic response) => getJsonField(
        response,
        r'''$.authUrl''',
      );
}

class GoogleContinueCall {
  static Future<ApiCallResponse> call({
    String? code = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'google continue ',
      apiUrl:
          'https://xn8h-jzwm-odfz.n7c.xano.io/api:U0aE1wpF/oauth/google/continue',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'code': code,
        'redirect_uri': "https://glotek.app/login",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic authToken(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
}

class AddCrmEmailCall {
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
      callName: 'add crm email',
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
