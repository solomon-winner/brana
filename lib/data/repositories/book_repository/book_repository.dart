import 'package:brana/models/book_model/books.dart';

abstract class BookRepository {
  Future<List<Book>> fetchBooks();
   Future<void> toggleFavorite(int bookId);
   Future<Set<int>> getFavorites();
}

