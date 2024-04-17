import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';
import 'package:weather_app_dynamic/constants/api/api_const.dart';
import 'package:weather_app_dynamic/domain/model/expections/invalid_credentials_exceptions.dart';

@Injectable()
class Api {
  // final TokenPreference _token;

  // Api(this._token);

  final _host = AppUrl.baseUrl;
  final _root = "/data/2.5";

  final _timeout = const Duration(seconds: 15);

  static final HttpWithMiddleware _httpClient = HttpWithMiddleware.build(
    middlewares: [HttpLogger(logLevel: LogLevel.BODY)],
  );

  Future<Response> get({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final headers = await _headers;
    final result =
        await _httpClient.get(uri, headers: headers).timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> post({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path", params);
    final headers = await _headers;
    final result = await _httpClient
        .post(uri, headers: headers, body: jsonEncode(body))
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path", params);
    final headers = await _headers;
    final result = await _httpClient
        .put(uri,
            headers: headers, body: body != null ? jsonEncode(body) : null)
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Map<String, String>> get _headers async {
    final headers = <String, String>{
      "Content-Type": "application/json; charset=UTF-8"
    };

    return headers;
  }

  Future<Response> propagateErrors(Response response) async {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    }

    switch (response.statusCode) {
      // case 404:
      //   throw UserNotFoundException();
      case 403:
        //await _token.clear();
        throw InvalidCredentialsExceptions();
      // case 402:
      //   throw NameUnavailableException();
      default:
        throw Exception();
    }
  }
}
