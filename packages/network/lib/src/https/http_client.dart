import 'package:network/lib.dart';

abstract class BaseHttpClient {
  late final Dio _dio;

  BaseHttpClient({
    required Dio dio,
  }) : _dio = dio {
    setupOptions(_dio, _dio.options);
    setupInterceptors(_dio, _dio.interceptors);
  }

  Dio get dio => _dio;

  void setupBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
  }

  void setupOptions(Dio dio, BaseOptions options) {}

  void setupInterceptors(Dio dio, Interceptors interceptors) {}

  BaseOptions get config => _dio.options;

  Interceptors get interceptors => _dio.interceptors;

}
