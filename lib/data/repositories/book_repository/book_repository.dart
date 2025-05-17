import 'package:brana/models/book_model/books.dart';

abstract class BookRepository {
  Future<List<Book>> fetchBooks();
   Future<void> toggleFavorite(String bookId);
    Future<Set<String>> getFavorites();
}

