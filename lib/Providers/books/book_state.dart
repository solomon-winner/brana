import 'package:brana/models/book_model/books.dart';

class BookState {
  final List<Book> books;
  final Set<int> favorites;

  const BookState({
    required this.books,
    required this.favorites,

  });

  BookState copyWith({
    List<Book>? books,
    Set<int>? favorites,

  }) {
    return BookState(
      books: books ?? this.books,
      favorites: favorites ?? this.favorites,
    );
  }
}