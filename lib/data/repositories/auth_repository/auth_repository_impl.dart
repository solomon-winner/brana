import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:brana/models/user_model/user_profile/user_profile.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:brana/data/repositories/auth_repository/auth_repository.dart';
import 'dart:convert';

class AuthRepositoryImpl implements AuthRepository{
  final Dio _dio;
  final FlutterSecureStorage _storage;
  final CookieJar _cookieJar;

  AuthRepositoryImpl({
    required Dio dio,
    required FlutterSecureStorage storage,
    required CookieJar cookieJar,
  })  : _dio = dio,
        _storage = storage,
        _cookieJar = cookieJar;

  Future<UserProfile> login(String email, String password) async {
    try {
      final response = await _dio.post('/auth/login', data: {
        'email': email,
        'password': password,
      });

      // Save user session
      final user = UserProfile.fromJson(response.data['data']);
      await _storage.write(key: 'current_user', value: jsonEncode(user.toJson()));
      
      return user;
    } on DioException catch (e) {
      throw AuthException(
        message: e.response?.data['message'] ?? 'Login failed',
        statusCode: e.response?.statusCode,
      );
    }
  }

  Future<void> logout() async {
    try {
      await _dio.post('/auth/logout');
      await _clearSession();
    } on DioException catch (e) {
      throw AuthException(
        message: e.response?.data['message'] ?? 'Logout failed',
        statusCode: e.response?.statusCode,
      );
    }
  }

  Future<UserProfile> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String phoneNo,
    String? altPhoneNo,
  }) async {
    try {
      final response = await _dio.post('/auth/register', data: {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'phoneNo': phoneNo,
        'altPhoneNo': altPhoneNo,
      });

      return UserProfile.fromJson(response.data['data']);
    } on DioException catch (e) {
      throw AuthException(
        message: e.response?.data['message'] ?? 'Registration failed',
        statusCode: e.response?.statusCode,
      );
    }
  }

  Future<bool> isLoggedIn() async {
    try {
      final cookies = await _cookieJar.loadForRequest(Uri.parse(_dio.options.baseUrl));
      return cookies.any((c) => c.name == 'access_token');
    } catch (e) {
      return false;
    }
  }

  Future<void> _clearSession() async {
    await _storage.delete(key: 'current_user');
    await _cookieJar.deleteAll();
    await _storage.delete(key: 'csrf_token');
  }
}

class AuthException implements Exception {
  final String message;
  final int? statusCode;

  AuthException({required this.message, this.statusCode});
}