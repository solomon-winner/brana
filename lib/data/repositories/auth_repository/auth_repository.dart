import 'package:brana/models/user_model/user_login/user_login.dart';
import 'package:brana/models/user_model/user_profile/user_profile.dart';

// abstract class AuthRepository {
//   Future<UserLogin> login();
//   Future<void> logout();
//   Future<String> resetPassword();
//   Future<UserProfile> signUp();
// }

abstract class AuthRepository {
  Future<UserLogin> login(String email, String password);
  Future<void> logout();
  Future<UserProfile> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String phoneNo,
    String? altPhoneNo,
  });
  Future<bool> isLoggedIn();
}
