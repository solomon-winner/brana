import 'package:brana/models/book_model/books.dart';

class BookState {
  final List<Book> books;
  final Set<int> favorites;
  // final bool isLoading;
  // final String? error;

  const BookState({
    required this.books,
    required this.favorites,
    // this.isLoading = false,
    // this.error,
  });

  BookState copyWith({
    List<Book>? books,
    Set<int>? favorites,
    // bool? isLoading,
    // String? error,
  }) {
    return BookState(
      books: books ?? this.books,
      favorites: favorites ?? this.favorites,
      // isLoading: isLoading ?? this.isLoading,
      // error: error ?? this.error,
    );
  }
}