import 'package:brana/models/book_model/books.dart';

class BookState {
  final List<Book> books;

  const BookState({
    required this.books,

  });

  BookState copyWith({
    List<Book>? books,

  }) {
    return BookState(
      books: books ?? this.books,
    );
  }
}