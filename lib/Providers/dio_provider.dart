import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:brana/data/repositories/auth_repository/auth_repository.dart';
// import 'package:brana/services/dio_client_service.dart';
// dio_provider.dart
import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://10.0.2.2:5000/api',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  // Get dependencies
  final cookieJar = ref.read(cookieJarProvider);
  final secureStorage = ref.read(secureStorageProvider);

  // Add interceptors in order
  dio.interceptors.addAll([
    // 1. Cookie Manager (must be first)
    CookieManager(cookieJar),
    
    // 2. CSRF Protection
    _CsrfInterceptor(secureStorage),
     _AuthInterceptor(secureStorage),
   //  TokenRefreshInterceptor(secureStorage, dio),
    // 3. Logging (keep your existing configuration)
    LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      error: true,
      responseHeader: false,  // Reduced noise
      requestHeader: true,
    ),
  ]);

  return dio;
});

class _AuthInterceptor extends Interceptor {
  final FlutterSecureStorage _storage;

  _AuthInterceptor(this._storage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _storage.read(key: 'auth_token');

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = ' $token';
    }

    handler.next(options);
  }
}

// Supporting providers
final cookieJarProvider = Provider<CookieJar>((ref) => CookieJar());
final secureStorageProvider = Provider<FlutterSecureStorage>(
  (ref) => const FlutterSecureStorage(),
);

// CSRF Interceptor
class _CsrfInterceptor extends Interceptor {
  final FlutterSecureStorage _storage;

  _CsrfInterceptor(this._storage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Add CSRF token from secure storage if exists
    final csrfToken = await _storage.read(key: 'XSRF-TOKEN');
    if (csrfToken != null) {
      options.headers['X-XSRF-TOKEN'] = csrfToken;
    }
    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    // Store new CSRF token if received
    final cookies = response.headers['set-cookie'];
    if (cookies != null) {
      for (final cookie in cookies) {
        if (cookie.startsWith('XSRF-TOKEN')) {
          final token = cookie.split(';').first.split('=').last;
          await _storage.write(key: 'XSRF-TOKEN', value: token);
        }
      }
    }
    handler.next(response);
  }
}

class TokenRefreshInterceptor extends Interceptor {
  final FlutterSecureStorage storage;
  final Dio dio;

  TokenRefreshInterceptor(this.storage, this.dio);

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Only attempt refresh if unauthorized
    if (err.response?.statusCode == 401 &&
        !err.requestOptions.path.contains('/auth/refresh')) {
      try {
        final refreshToken = await storage.read(key: 'refreshToken');

        if (refreshToken == null) {
          return handler.next(err); // No refresh token, abort
        }

        final refreshResponse = await dio.post(
          '/authentication/refresh',
          options: Options(headers: {
            'Authorization': 'Bearer $refreshToken',
          }),
        );

        final newAccessToken = refreshResponse.data['data']['accessToken'];

        if (newAccessToken != null) {
          // Save new access token
          await storage.write(key: 'accessToken', value: newAccessToken);

          // Clone original request
          final retryRequest = err.requestOptions;
          retryRequest.headers['Authorization'] = 'Bearer $newAccessToken';

          final response = await dio.fetch(retryRequest);
          return handler.resolve(response); // ✅ Retry success
        }
      } catch (e) {
        print('Token refresh failed: $e');
        // clear storage or force logout here
      }
    }

    handler.next(err); // Continue with original error if failed
  }
}
