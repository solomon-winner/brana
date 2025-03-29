 import 'package:brana/models/book_model/books.dart';

// abstract class BookRepository {
//   Future<List<Book>> fetchBooks();
//   Future<void> toggleLike(String bookId);
// }

// Abstract interface
abstract class BookRepository {
  Future<List<Book>> fetchBooks();
   Future<void> toggleFavorite(int bookId);
   Future<Set<int>> getFavorites();
}

