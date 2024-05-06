import 'dart:io';

import 'package:dio/dio.dart';

class HttpException implements Exception {
  final String message;

  HttpException(this.message);

  @override
  String toString() {
    return message;
  }

  factory HttpException.create(DioException error) {
    String message = '网络请求失败';
    if (error.type == DioExceptionType.connectionTimeout) {
      message = '连接超时';
    } else if (error.type == DioExceptionType.sendTimeout) {
      message = '请求超时';
    } else if (error.type == DioExceptionType.receiveTimeout) {
      message = '响应超时';
    } else if (error.type == DioExceptionType.badResponse) {
      message = '请求失败';
    } else if (error.type == DioExceptionType.cancel) {
      message = '请求取消';
    } else if (error.error is SocketException) {
      message = '网络异常';
    }
    return HttpException(message);
  }
}
