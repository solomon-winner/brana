// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shelve.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Shelve {
  String get shelveId;
  String get bookId;
  String get title;
  String get img;
  String get author;
  int get bookCount;
  String get to;
  double get price;
  bool get isPaied;

  /// Create a copy of Shelve
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShelveCopyWith<Shelve> get copyWith =>
      _$ShelveCopyWithImpl<Shelve>(this as Shelve, _$identity);

  /// Serializes this Shelve to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Shelve &&
            (identical(other.shelveId, shelveId) ||
                other.shelveId == shelveId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.bookCount, bookCount) ||
                other.bookCount == bookCount) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isPaied, isPaied) || other.isPaied == isPaied));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shelveId, bookId, title, img,
      author, bookCount, to, price, isPaied);

  @override
  String toString() {
    return 'Shelve(shelveId: $shelveId, bookId: $bookId, title: $title, img: $img, author: $author, bookCount: $bookCount, to: $to, price: $price, isPaied: $isPaied)';
  }
}

/// @nodoc
abstract mixin class $ShelveCopyWith<$Res> {
  factory $ShelveCopyWith(Shelve value, $Res Function(Shelve) _then) =
      _$ShelveCopyWithImpl;
  @useResult
  $Res call(
      {String shelveId,
      String bookId,
      String title,
      String img,
      String author,
      int bookCount,
      String to,
      double price,
      bool isPaied});
}

/// @nodoc
class _$ShelveCopyWithImpl<$Res> implements $ShelveCopyWith<$Res> {
  _$ShelveCopyWithImpl(this._self, this._then);

  final Shelve _self;
  final $Res Function(Shelve) _then;

  /// Create a copy of Shelve
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shelveId = null,
    Object? bookId = null,
    Object? title = null,
    Object? img = null,
    Object? author = null,
    Object? bookCount = null,
    Object? to = null,
    Object? price = null,
    Object? isPaied = null,
  }) {
    return _then(_self.copyWith(
      shelveId: null == shelveId
          ? _self.shelveId
          : shelveId // ignore: cast_nullable_to_non_nullable
              as String,
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
      bookCount: null == bookCount
          ? _self.bookCount
          : bookCount // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isPaied: null == isPaied
          ? _self.isPaied
          : isPaied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Shelve implements Shelve {
  const _Shelve(
      {required this.shelveId,
      required this.bookId,
      required this.title,
      required this.img,
      required this.author,
      required this.bookCount,
      required this.to,
      required this.price,
      this.isPaied = false});
  factory _Shelve.fromJson(Map<String, dynamic> json) => _$ShelveFromJson(json);

  @override
  final String shelveId;
  @override
  final String bookId;
  @override
  final String title;
  @override
  final String img;
  @override
  final String author;
  @override
  final int bookCount;
  @override
  final String to;
  @override
  final double price;
  @override
  @JsonKey()
  final bool isPaied;

  /// Create a copy of Shelve
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShelveCopyWith<_Shelve> get copyWith =>
      __$ShelveCopyWithImpl<_Shelve>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShelveToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Shelve &&
            (identical(other.shelveId, shelveId) ||
                other.shelveId == shelveId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.bookCount, bookCount) ||
                other.bookCount == bookCount) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isPaied, isPaied) || other.isPaied == isPaied));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shelveId, bookId, title, img,
      author, bookCount, to, price, isPaied);

  @override
  String toString() {
    return 'Shelve(shelveId: $shelveId, bookId: $bookId, title: $title, img: $img, author: $author, bookCount: $bookCount, to: $to, price: $price, isPaied: $isPaied)';
  }
}

/// @nodoc
abstract mixin class _$ShelveCopyWith<$Res> implements $ShelveCopyWith<$Res> {
  factory _$ShelveCopyWith(_Shelve value, $Res Function(_Shelve) _then) =
      __$ShelveCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String shelveId,
      String bookId,
      String title,
      String img,
      String author,
      int bookCount,
      String to,
      double price,
      bool isPaied});
}

/// @nodoc
class __$ShelveCopyWithImpl<$Res> implements _$ShelveCopyWith<$Res> {
  __$ShelveCopyWithImpl(this._self, this._then);

  final _Shelve _self;
  final $Res Function(_Shelve) _then;

  /// Create a copy of Shelve
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? shelveId = null,
    Object? bookId = null,
    Object? title = null,
    Object? img = null,
    Object? author = null,
    Object? bookCount = null,
    Object? to = null,
    Object? price = null,
    Object? isPaied = null,
  }) {
    return _then(_Shelve(
      shelveId: null == shelveId
          ? _self.shelveId
          : shelveId // ignore: cast_nullable_to_non_nullable
              as String,
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
      bookCount: null == bookCount
          ? _self.bookCount
          : bookCount // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isPaied: null == isPaied
          ? _self.isPaied
          : isPaied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
