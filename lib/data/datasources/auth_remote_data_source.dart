// auth_remote_data_source.dart
import 'package:dio/dio.dart';
import 'package:brana/models/user_model/user_login/user_login.dart';
import 'package:brana/models/user_model/user_profile/user_profile.dart';
import 'package:brana/utils/app_exception.dart';

abstract class AuthRemoteDataSource {
  Future<UserLogin> login(String email, String password);
  Future<UserProfile> register(String name, String email, String password);
  Future<void> logout();
  Future<void> resetPassword(String email);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<UserLogin> login(String email, String password) async {
    try {
      final response = await dio.post('/auth/login', data: {
        'email': email,
        'password': password,
      });
      return UserLogin.fromJson(response.data);
    } on DioException catch (e) {
      throw AppException(
        e.response?.data['message'] ?? 'Login failed',
        e.response?.statusCode,
      );
    }
  }

  @override
  Future<UserProfile> register(String name, String email, String password) async {
    try {
      final response = await dio.post('/auth/register', data: {
        'name': name,
        'email': email,
        'password': password,
      });
      return UserProfile.fromJson(response.data);
    } on DioException catch (e) {
      throw AppException(
        e.response?.data['message'] ?? 'Registration failed',
        e.response?.statusCode,
      );
    }
  }

  @override
  Future<void> logout() async {
    try {
      await dio.post('/auth/logout');
    } on DioException catch (e) {
      throw AppException(
        e.response?.data['message'] ?? 'Logout failed',
        e.response?.statusCode,
      );
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      await dio.post('/auth/reset-password', data: {'email': email});
    } on DioException catch (e) {
      throw AppException(
        e.response?.data['message'] ?? 'Password reset failed',
        e.response?.statusCode,
      );
    }
  }
}