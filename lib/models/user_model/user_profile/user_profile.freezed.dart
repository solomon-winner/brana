// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile {
  int get id;
  String get email;
  String get name;
  String get profilePicture;
  String get phoneNo;
  String get altPhoneNo;
  List<Map<String, String>> get address;
  List<String> get Categories;
  List<String> get authors;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<UserProfile> get copyWith =>
      _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo) &&
            (identical(other.altPhoneNo, altPhoneNo) ||
                other.altPhoneNo == altPhoneNo) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.Categories, Categories) &&
            const DeepCollectionEquality().equals(other.authors, authors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      profilePicture,
      phoneNo,
      altPhoneNo,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(Categories),
      const DeepCollectionEquality().hash(authors));

  @override
  String toString() {
    return 'UserProfile(id: $id, email: $email, name: $name, profilePicture: $profilePicture, phoneNo: $phoneNo, altPhoneNo: $altPhoneNo, address: $address, Categories: $Categories, authors: $authors)';
  }
}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) _then) =
      _$UserProfileCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String email,
      String name,
      String profilePicture,
      String phoneNo,
      String altPhoneNo,
      List<Map<String, String>> address,
      List<String> Categories,
      List<String> authors});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profilePicture = null,
    Object? phoneNo = null,
    Object? altPhoneNo = null,
    Object? address = null,
    Object? Categories = null,
    Object? authors = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _self.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNo: null == phoneNo
          ? _self.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      altPhoneNo: null == altPhoneNo
          ? _self.altPhoneNo
          : altPhoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      Categories: null == Categories
          ? _self.Categories
          : Categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authors: null == authors
          ? _self.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserProfile implements UserProfile {
  const _UserProfile(
      {required this.id,
      required this.email,
      required this.name,
      required this.profilePicture,
      required this.phoneNo,
      required this.altPhoneNo,
      required final List<Map<String, String>> address,
      required final List<String> Categories,
      required final List<String> authors})
      : _address = address,
        _Categories = Categories,
        _authors = authors;
  factory _UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String profilePicture;
  @override
  final String phoneNo;
  @override
  final String altPhoneNo;
  final List<Map<String, String>> _address;
  @override
  List<Map<String, String>> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  final List<String> _Categories;
  @override
  List<String> get Categories {
    if (_Categories is EqualUnmodifiableListView) return _Categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Categories);
  }

  final List<String> _authors;
  @override
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserProfileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo) &&
            (identical(other.altPhoneNo, altPhoneNo) ||
                other.altPhoneNo == altPhoneNo) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            const DeepCollectionEquality()
                .equals(other._Categories, _Categories) &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      profilePicture,
      phoneNo,
      altPhoneNo,
      const DeepCollectionEquality().hash(_address),
      const DeepCollectionEquality().hash(_Categories),
      const DeepCollectionEquality().hash(_authors));

  @override
  String toString() {
    return 'UserProfile(id: $id, email: $email, name: $name, profilePicture: $profilePicture, phoneNo: $phoneNo, altPhoneNo: $altPhoneNo, address: $address, Categories: $Categories, authors: $authors)';
  }
}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) _then) =
      __$UserProfileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String name,
      String profilePicture,
      String phoneNo,
      String altPhoneNo,
      List<Map<String, String>> address,
      List<String> Categories,
      List<String> authors});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profilePicture = null,
    Object? phoneNo = null,
    Object? altPhoneNo = null,
    Object? address = null,
    Object? Categories = null,
    Object? authors = null,
  }) {
    return _then(_UserProfile(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _self.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNo: null == phoneNo
          ? _self.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      altPhoneNo: null == altPhoneNo
          ? _self.altPhoneNo
          : altPhoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      Categories: null == Categories
          ? _self._Categories
          : Categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authors: null == authors
          ? _self._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
