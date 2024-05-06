import 'dart:async';

import 'package:my_example/utils/http/http_config.dart';
import 'package:my_example/utils/http/http_interceptor.dart';
import 'package:dio/dio.dart';

enum HttpMethod {
  get,
  post,
  delete,
  put,
  patch,
  head,
}

class HttpRequest {
  static late final Dio _dio;

  static final HttpRequest _instance = HttpRequest._internal();

  factory HttpRequest() => _instance;

  HttpRequest._internal() {
    _dio = Dio(httpOptions);
    _dio.interceptors.add(HttpInterceptor());
  }

  Future request({
    required String url,
    required HttpMethod method,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    Options options = Options(method: method.name);
    try {
      final response = await _dio.request(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future get(String url, {Map<String, dynamic>? queryParameters}) async {
    return request(
        url: url, method: HttpMethod.get, queryParameters: queryParameters);
  }

  Future post(String url, {dynamic data}) async {
    return request(url: url, method: HttpMethod.post, data: data);
  }
}
