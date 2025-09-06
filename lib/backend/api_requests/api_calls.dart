import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FetchUsersFarmIDCall {
  static Future<ApiCallResponse> call({
    String? userID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'FetchUsersFarmID',
      apiUrl:
          'https://rmjyfdmwnmaerthcoosq.supabase.co/rest/v1/profile_with_farm?id=eq.${userID}&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJtanlmZG13bm1hZXJ0aGNvb3NxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk0ODgxNTMsImV4cCI6MjAyNTA2NDE1M30.qqErJJQlxHpwZWRHWLDouGWLHIaYn09R-EZdot8ZqDg',
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

  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].firstname''',
      ));
  static String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].lastname''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static int? farmID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].farmid''',
      ));
  static String? farmName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].farmname''',
      ));
  static String? farmUUID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].farm_uuid''',
      ));
  static String? farmRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].role''',
      ));
  static bool? isActive(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_active''',
      ));
}

class FetchVarietyNamesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'FetchVarietyNames',
      apiUrl:
          'https://rmjyfdmwnmaerthcoosq.supabase.co/rest/v1/varieties?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJtanlmZG13bm1hZXJ0aGNvb3NxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk0ODgxNTMsImV4cCI6MjAyNTA2NDE1M30.qqErJJQlxHpwZWRHWLDouGWLHIaYn09R-EZdot8ZqDg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJtanlmZG13bm1hZXJ0aGNvb3NxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk0ODgxNTMsImV4cCI6MjAyNTA2NDE1M30.qqErJJQlxHpwZWRHWLDouGWLHIaYn09R-EZdot8ZqDg',
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

  static List<String>? varietyName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? quantityGrams(dynamic response) => (getJsonField(
        response,
        r'''$[:].seed_quantity_grams''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? quantityOz(dynamic response) => (getJsonField(
        response,
        r'''$[:].seed_quantity_ounces''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? microImage(dynamic response) => (getJsonField(
        response,
        r'''$[:].imageurl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? microDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? varietyID(dynamic response) => (getJsonField(
        response,
        r'''$[:].varietyid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class FetchVendorNamesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'FetchVendorNames',
      apiUrl:
          'https://hbblyniohzgkdumcawun.supabase.co/rest/v1/vendors?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhiYmx5bmlvaHpna2R1bWNhd3VuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3NjQ3NjQsImV4cCI6MjAyMTM0MDc2NH0.F6xR4qysXA4Oyou1KT46z5Sbqk6yx3wSZBSMoyAS824',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhiYmx5bmlvaHpna2R1bWNhd3VuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3NjQ3NjQsImV4cCI6MjAyMTM0MDc2NH0.F6xR4qysXA4Oyou1KT46z5Sbqk6yx3wSZBSMoyAS824',
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

  static List<String>? vendorName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LinkFarmManagerToFarmCall {
  static Future<ApiCallResponse> call({
    String? farmName = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "farm_name": "${farmName}",
  "user_id": "${userId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LinkFarmManagerToFarm',
      apiUrl:
          'https://hbblyniohzgkdumcawun.supabase.co/rest/v1/rpc/link_farm_to_user',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhiYmx5bmlvaHpna2R1bWNhd3VuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3NjQ3NjQsImV4cCI6MjAyMTM0MDc2NH0.F6xR4qysXA4Oyou1KT46z5Sbqk6yx3wSZBSMoyAS824',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhiYmx5bmlvaHpna2R1bWNhd3VuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3NjQ3NjQsImV4cCI6MjAyMTM0MDc2NH0.F6xR4qysXA4Oyou1KT46z5Sbqk6yx3wSZBSMoyAS824',
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
