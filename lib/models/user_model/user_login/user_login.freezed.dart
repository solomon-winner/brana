// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserLogin {
  int get id;
  String get email;
  String get name;
  String get profilePicture;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserLoginCopyWith<UserLogin> get copyWith =>
      _$UserLoginCopyWithImpl<UserLogin>(this as UserLogin, _$identity);

  /// Serializes this UserLogin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLogin &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, profilePicture);

  @override
  String toString() {
    return 'UserLogin(id: $id, email: $email, name: $name, profilePicture: $profilePicture)';
  }
}

/// @nodoc
abstract mixin class $UserLoginCopyWith<$Res> {
  factory $UserLoginCopyWith(UserLogin value, $Res Function(UserLogin) _then) =
      _$UserLoginCopyWithImpl;
  @useResult
  $Res call({int id, String email, String name, String profilePicture});
}

/// @nodoc
class _$UserLoginCopyWithImpl<$Res> implements $UserLoginCopyWith<$Res> {
  _$UserLoginCopyWithImpl(this._self, this._then);

  final UserLogin _self;
  final $Res Function(UserLogin) _then;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profilePicture = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserLogin implements UserLogin {
  const _UserLogin(
      {required this.id,
      required this.email,
      required this.name,
      required this.profilePicture});
  factory _UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String profilePicture;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserLoginCopyWith<_UserLogin> get copyWith =>
      __$UserLoginCopyWithImpl<_UserLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserLoginToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLogin &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, profilePicture);

  @override
  String toString() {
    return 'UserLogin(id: $id, email: $email, name: $name, profilePicture: $profilePicture)';
  }
}

/// @nodoc
abstract mixin class _$UserLoginCopyWith<$Res>
    implements $UserLoginCopyWith<$Res> {
  factory _$UserLoginCopyWith(
          _UserLogin value, $Res Function(_UserLogin) _then) =
      __$UserLoginCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String email, String name, String profilePicture});
}

/// @nodoc
class __$UserLoginCopyWithImpl<$Res> implements _$UserLoginCopyWith<$Res> {
  __$UserLoginCopyWithImpl(this._self, this._then);

  final _UserLogin _self;
  final $Res Function(_UserLogin) _then;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profilePicture = null,
  }) {
    return _then(_UserLogin(
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
    ));
  }
}

// dart format on
