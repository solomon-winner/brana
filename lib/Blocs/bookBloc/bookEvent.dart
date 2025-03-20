import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookEvent.freezed.dart';

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.fetchBooks() = FetchBooks;
  const factory BookEvent.toggleLike(String bookId) = ToggleLike;
}