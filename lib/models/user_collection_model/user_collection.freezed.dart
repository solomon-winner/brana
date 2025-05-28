// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCollection {
  String get bookId;
  String get title;
  String get img;
  String get author;
  double? get price; // Only present for wishlist
  String? get reason;

  /// Create a copy of UserCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCollectionCopyWith<UserCollection> get copyWith =>
      _$UserCollectionCopyWithImpl<UserCollection>(
          this as UserCollection, _$identity);

  /// Serializes this UserCollection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserCollection &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, title, img, author, price, reason);

  @override
  String toString() {
    return 'UserCollection(bookId: $bookId, title: $title, img: $img, author: $author, price: $price, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $UserCollectionCopyWith<$Res> {
  factory $UserCollectionCopyWith(
          UserCollection value, $Res Function(UserCollection) _then) =
      _$UserCollectionCopyWithImpl;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String img,
      String author,
      double? price,
      String? reason});
}

/// @nodoc
class _$UserCollectionCopyWithImpl<$Res>
    implements $UserCollectionCopyWith<$Res> {
  _$UserCollectionCopyWithImpl(this._self, this._then);

  final UserCollection _self;
  final $Res Function(UserCollection) _then;

  /// Create a copy of UserCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? img = null,
    Object? author = null,
    Object? price = freezed,
    Object? reason = freezed,
  }) {
    return _then(_self.copyWith(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserCollection implements UserCollection {
  const _UserCollection(
      {required this.bookId,
      required this.title,
      required this.img,
      required this.author,
      this.price,
      this.reason});
  factory _UserCollection.fromJson(Map<String, dynamic> json) =>
      _$UserCollectionFromJson(json);

  @override
  final String bookId;
  @override
  final String title;
  @override
  final String img;
  @override
  final String author;
  @override
  final double? price;
// Only present for wishlist
  @override
  final String? reason;

  /// Create a copy of UserCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCollectionCopyWith<_UserCollection> get copyWith =>
      __$UserCollectionCopyWithImpl<_UserCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserCollectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCollection &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, title, img, author, price, reason);

  @override
  String toString() {
    return 'UserCollection(bookId: $bookId, title: $title, img: $img, author: $author, price: $price, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class _$UserCollectionCopyWith<$Res>
    implements $UserCollectionCopyWith<$Res> {
  factory _$UserCollectionCopyWith(
          _UserCollection value, $Res Function(_UserCollection) _then) =
      __$UserCollectionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String img,
      String author,
      double? price,
      String? reason});
}

/// @nodoc
class __$UserCollectionCopyWithImpl<$Res>
    implements _$UserCollectionCopyWith<$Res> {
  __$UserCollectionCopyWithImpl(this._self, this._then);

  final _UserCollection _self;
  final $Res Function(_UserCollection) _then;

  /// Create a copy of UserCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? img = null,
    Object? author = null,
    Object? price = freezed,
    Object? reason = freezed,
  }) {
    return _then(_UserCollection(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
