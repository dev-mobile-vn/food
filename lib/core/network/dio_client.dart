import 'package:dio/dio.dart';
import 'package:food/core/environment/environment.dart';

class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio();
    _dio
      ..options.baseUrl = Environment.baseUrl
      ..options.connectTimeout = const Duration(milliseconds: 15000)
      ..options.receiveTimeout = const Duration(milliseconds: 15000)
      ..options.responseType = ResponseType.json
      ..interceptors.add(
          LogInterceptor(responseBody: true, requestBody: true, request: true))
      ..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
        return handler.next(options); //continue
      }, onResponse: (response, handler) {
        return handler.next(response); // continue
      }, onError: (e, handler) {
        return handler.next(e); //continue
      }));
  }

  Future<Response> get(String url, {Map<String, dynamic>? query}) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: query,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response> post(String url, {data, Map<String, dynamic>? query}) async {
    try {
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: query,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }
}
