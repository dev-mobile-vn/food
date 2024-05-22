import 'package:dio/dio.dart';

class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio();
    _dio
      ..options.baseUrl = 'http://192.168.1.104/api/v1/'
      ..options.connectTimeout = const Duration(milliseconds: 15000)
      ..options.receiveTimeout = const Duration(milliseconds: 15000)
      ..options.responseType = ResponseType.json
      ..interceptors.add(
          LogInterceptor(responseBody: true, requestBody: true, request: true))
      ..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
        // Do something before request is sent
        return handler.next(options); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      }, onResponse: (response, handler) {
        // Do something with response data
        return handler.next(response); // continue
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      }, onError: (e, handler) {
        // Do something with response error
        return handler.next(e); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
      }));
  }

  Future<Response<dynamic>> get(String url,
      {Map<String, dynamic>? query}) async {
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

  Future<Response<dynamic>> post(String url,
      {data, Map<String, dynamic>? query}) async {
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
