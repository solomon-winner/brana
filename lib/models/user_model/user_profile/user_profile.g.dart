// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String,
      phoneNo: json['phoneNo'] as String,
      altPhoneNo: json['altPhoneNo'] as String,
      address: (json['address'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      Categories: (json['Categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'phoneNo': instance.phoneNo,
      'altPhoneNo': instance.altPhoneNo,
      'address': instance.address,
      'Categories': instance.Categories,
      'authors': instance.authors,
    };
