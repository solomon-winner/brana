import 'package:brana/models/books.dart'; 

abstract class BookRepository {
  Future<List<Book>> fetchBooks();
  Future<void> toggleLike(String bookId);
}
