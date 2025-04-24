// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserLogin _$UserLoginFromJson(Map<String, dynamic> json) => _UserLogin(
      token: json['token'] as String,
      user: UserProfile.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserLoginToJson(_UserLogin instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
