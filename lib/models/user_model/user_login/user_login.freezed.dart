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
  String get token;
  String get refreshToken;
  UserProfile get user;

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
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken, user);

  @override
  String toString() {
    return 'UserLogin(token: $token, refreshToken: $refreshToken, user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserLoginCopyWith<$Res> {
  factory $UserLoginCopyWith(UserLogin value, $Res Function(UserLogin) _then) =
      _$UserLoginCopyWithImpl;
  @useResult
  $Res call({String token, String refreshToken, UserProfile user});

  $UserProfileCopyWith<$Res> get user;
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
    Object? token = null,
    Object? refreshToken = null,
    Object? user = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get user {
    return $UserProfileCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserLogin implements UserLogin {
  const _UserLogin(
      {required this.token, required this.refreshToken, required this.user});
  factory _UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);

  @override
  final String token;
  @override
  final String refreshToken;
  @override
  final UserProfile user;

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
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken, user);

  @override
  String toString() {
    return 'UserLogin(token: $token, refreshToken: $refreshToken, user: $user)';
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
  $Res call({String token, String refreshToken, UserProfile user});

  @override
  $UserProfileCopyWith<$Res> get user;
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
    Object? token = null,
    Object? refreshToken = null,
    Object? user = null,
  }) {
    return _then(_UserLogin(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get user {
    return $UserProfileCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
