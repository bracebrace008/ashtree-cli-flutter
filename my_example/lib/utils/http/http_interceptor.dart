import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:my_example/models/api_response/api_response.dart';
import 'package:my_example/utils/http/result_type.dart';

class HttpInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      options.headers['UserId'] = 14;
      print('REQUEST[${options.method}] => PATH: ${options.path}');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    ApiResponse apiResponse = ApiResponse.fromJson(response.data);
    if (kDebugMode) {
      print("返回数据: $apiResponse");
    }
    if (apiResponse.code != ResultType.SUCCESS.code) {
      return handler.reject(DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: apiResponse,
      ));
    }
    Response modifiedResponse = Response(
      data: apiResponse,
      headers: response.headers,
      requestOptions: response.requestOptions,
      statusCode: response.statusCode,
    );
    return handler.next(modifiedResponse);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    print('ERROR MESSAGE: ${err.error}');
    print(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }
}
