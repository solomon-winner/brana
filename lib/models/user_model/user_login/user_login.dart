import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login.freezed.dart';
part 'user_login.g.dart';

@freezed
abstract class UserLogin with _$UserLogin {
  const factory UserLogin ({
    required int id,
    required String email,
    required String name,
    required String profilePicture,
   
  }) = _UserLogin;

  factory UserLogin.fromJson(Map<String, dynamic> json) => _$UserLoginFromJson(json);
}