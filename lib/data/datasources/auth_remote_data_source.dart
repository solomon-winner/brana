import 'package:dio/dio.dart';


abstract class AuthRemoteDataSource {
  Future<void> login(String username, String password);
  Future<void> register(String username, String password);
  Future<void> logout(String token);
  Future<void> resetPassword(String email);
}
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;
  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<void> login(String username, String password) async {
    try {
      final response = await dio.post('/login', data: {
        'username': username,
        'password': password,
      });
      if (response.statusCode != 200) {
        throw Exception("Failed to login");
      }
    } catch (e) {
      throw Exception("Error logging in: $e");
    }
  }
@override
  Future<void> register(String username, String password) async {
    try {
      final response = await dio.post('/register', data: {
        'username': username,
        'password': password,
      });
      if (response.statusCode != 201) {
        throw Exception("Failed to register");
      }
    } catch (e) {
      throw Exception("Error registering: $e");
    }
  }
@override
  Future<void> logout(String token) async {
    try {
      final response = await dio.post('/logout', data: {
        'token': token,
      });
      if (response.statusCode != 200) {
        throw Exception("Failed to logout");
      }
    } catch (e) {
      throw Exception("Error logging out: $e");
    }
  }
@override
  Future<void> resetPassword(String email) async {
    try {
      final response = await dio.post('/reset-password', data: {
        'email': email,
      });
      if (response.statusCode != 200) {
        throw Exception("Failed to reset password");
      }
    } catch (e) {
      throw Exception("Error resetting password: $e");
    }
  }
}