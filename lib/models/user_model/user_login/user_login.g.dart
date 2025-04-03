// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserLogin _$UserLoginFromJson(Map<String, dynamic> json) => _UserLogin(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String,
    );

Map<String, dynamic> _$UserLoginToJson(_UserLogin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
    };
