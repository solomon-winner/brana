import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/book_service.dart';
import 'package:brana/models/book_model/books.dart';

final bookServiceProvider = Provider((ref) => BookService());

final bookListProvider = FutureProvider<List<Book>>((ref) async {
  final bookService = ref.read(bookServiceProvider);
  return bookService.fetchBooks();
});
