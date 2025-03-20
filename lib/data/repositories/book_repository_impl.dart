import 'package:brana/models/books.dart';
import 'package:brana/data/repositories/book_repository.dart';
import 'package:brana/data/datasources/book_remote_data_source.dart';

class BookRepositoryImpl implements BookRepository {
  final BookRemoteDataSource remoteDataSource;

  BookRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Book>> fetchBooks() async {
    return await remoteDataSource.getBooks();
  }

  @override
  Future<void> toggleLike(String bookId) async {
    await remoteDataSource.toggleBookLike(bookId);
  }
}
