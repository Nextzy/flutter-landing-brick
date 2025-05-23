import 'package:data/lib.dart';

/// Singleton
class AppHttpClient extends BaseHttpClient {
  AppHttpClient._singleton({required super.dio});

  static final AppHttpClient instance = AppHttpClient._singleton(dio: Dio());

  AppAccessTokenInterceptor? get tokenInterceptor =>
      dio.interceptors.firstOrNullWhere(
              (interceptor) => interceptor is AppAccessTokenInterceptor)
          as AppAccessTokenInterceptor?;

  AppHeaderInterceptor? get headerInterceptor =>
      dio.interceptors.firstOrNullWhere(
              (interceptor) => interceptor is AppHeaderInterceptor)
          as AppHeaderInterceptor?;

  bool get hasAccessToken => tokenInterceptor?.hasAccessToken == true;

  bool get hasRefreshAccessToken => tokenInterceptor?.hasRefreshToken == true;

  void setupCredential({
    String? apiKey,
    String? language,
    String? token,
    String? refreshToken,
  }) {
    headerInterceptor?.apiKey = apiKey;
    tokenInterceptor?.accessToken = token;
    tokenInterceptor?.refreshToken = refreshToken;
  }

  void clearToken() {
    tokenInterceptor?.accessToken = null;
    tokenInterceptor?.refreshToken = null;
  }

  void setupHeader({
    String? language,
  }) {
    headerInterceptor?.language = language;
  }

  @override
  void setupOptions(Dio dio, BaseOptions options) {
    super.setupOptions(dio, options);
    options.connectTimeout = 20.seconds;
    options.receiveTimeout = 20.seconds;
  }

  @override
  void setupInterceptors(Dio dio, Interceptors interceptors) {
    super.setupInterceptors(dio, interceptors);
    interceptors.addAll([
      AppHeaderInterceptor(),
      AppAccessTokenInterceptor(
        dio,
        refreshTokenPath: '/refreshToken',
      ),
      AppNetworkErrorHandlerInterceptor(),
      MockHeaderInterceptor(),
      HttpLogInterceptor(), // Add to last
    ]);
  }
}
