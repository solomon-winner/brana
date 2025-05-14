import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile ({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    // required String phoneNo,
    // required String altPhoneNo,
    // required List<Map<String, String>> address,
    // required List<String> Categories,
    // required List<String> authors
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}