import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DioClient {
  final Dio dio;
  final CookieJar cookieJar;
  final FlutterSecureStorage secureStorage;

  DioClient({
    required this.dio,
    required this.cookieJar,
    required this.secureStorage,
  }) {
    dio.interceptors.add(CookieManager(cookieJar));
    dio.interceptors.add(_CsrfInterceptor(secureStorage));
  }
}

class _CsrfInterceptor extends Interceptor {
  final FlutterSecureStorage _storage;

  _CsrfInterceptor(this._storage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final csrfToken = await _storage.read(key: 'csrf_token');
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
    final cookies = response.headers['set-cookie'];
    if (cookies != null) {
      final csrfCookie = cookies.firstWhere(
        (c) => c.startsWith('XSRF-TOKEN'),
        orElse: () => '',
      );
      if (csrfCookie.isNotEmpty) {
        final token = csrfCookie.split(';').first.split('=').last;
        await _storage.write(key: 'csrf_token', value: token);
      }
    }
    handler.next(response);
  }
}