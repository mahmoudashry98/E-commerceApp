// ignore_for_file: non_constant_identifier_names

import 'dart:developer';
import 'package:dio/dio.dart';

import '../https/http_handler.dart';

class DioClient {
  static Dio get DIO_CLIENT {
    final Dio dio = Dio(
      BaseOptions(
          baseUrl: '',
          contentType: 'application/json',
          receiveDataWhenStatusError: true,
          connectTimeout: const Duration(minutes: 2), // 60 seconds
          receiveTimeout: const Duration(minutes: 2)),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          return handler.next(options);
        },
        onResponse:
            (Response<dynamic> e, ResponseInterceptorHandler handler) async {
          try {
            final Response<dynamic> result = responseHandler(e);
            return handler.next(result);
          } catch (e) {
            log('E: $e');
            final DioException error = DioException(
                requestOptions: RequestOptions(path: ''), error: e);
            return handler.reject(error);
          }
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          return handler.reject(e);
        },
      ),
    );

    return dio;
  }

  static Dio get File_DIO_CLIENT {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: '',
        contentType: 'multipart/form-data',
        receiveDataWhenStatusError: true,
        // connectTimeout: const Duration(seconds: 10), // 60 seconds
        // receiveTimeout: const Duration(seconds: 15),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          return handler.next(options);
        },
        onResponse:
            (Response<dynamic> e, ResponseInterceptorHandler handler) async {
          try {
            final Response<dynamic> result = responseHandler(e);
            return handler.next(result);
          } catch (e) {
            log('E: $e');
            final DioException error = DioException(
                requestOptions: RequestOptions(path: ''), error: e);
            return handler.reject(error);
          }
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          return handler.reject(e);
        },
      ),
    );

    return dio;
  }
}
