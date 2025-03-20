// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BookEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BookEvent()';
  }
}

/// @nodoc
class $BookEventCopyWith<$Res> {
  $BookEventCopyWith(BookEvent _, $Res Function(BookEvent) __);
}

/// @nodoc

class FetchBooks implements BookEvent {
  const FetchBooks();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchBooks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BookEvent.fetchBooks()';
  }
}

/// @nodoc

class ToggleLike implements BookEvent {
  const ToggleLike(this.bookId);

  final String bookId;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ToggleLikeCopyWith<ToggleLike> get copyWith =>
      _$ToggleLikeCopyWithImpl<ToggleLike>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleLike &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @override
  String toString() {
    return 'BookEvent.toggleLike(bookId: $bookId)';
  }
}

/// @nodoc
abstract mixin class $ToggleLikeCopyWith<$Res>
    implements $BookEventCopyWith<$Res> {
  factory $ToggleLikeCopyWith(
          ToggleLike value, $Res Function(ToggleLike) _then) =
      _$ToggleLikeCopyWithImpl;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class _$ToggleLikeCopyWithImpl<$Res> implements $ToggleLikeCopyWith<$Res> {
  _$ToggleLikeCopyWithImpl(this._self, this._then);

  final ToggleLike _self;
  final $Res Function(ToggleLike) _then;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = null,
  }) {
    return _then(ToggleLike(
      null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
