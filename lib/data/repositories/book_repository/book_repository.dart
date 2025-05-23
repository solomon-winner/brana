import 'package:brana/models/book_model/books.dart';

abstract class BookRepository {
  Future<List<Book>> fetchBooks();
   Future<void> toggleFavorite(String bookId, String type);
    Future<Set<String>> getFavorites();
}

