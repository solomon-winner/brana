import 'package:brana/models/user_model/user_profile/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login.freezed.dart';
part 'user_login.g.dart';

@freezed
abstract class UserLogin with _$UserLogin {
  const factory UserLogin ({
    required String token,
    required UserProfile user,
   
  }) = _UserLogin;

  factory UserLogin.fromJson(Map<String, dynamic> json) => _$UserLoginFromJson(json);
}