// import 'package:brana/models/books.dart';
// import 'package:brana/data/repositories/book_repository.dart';
// import 'package:brana/data/datasources/book_remote_data_source.dart';

// class BookRepositoryImpl implements BookRepository {
//   final BookRemoteDataSource remoteDataSource;

//   BookRepositoryImpl({required this.remoteDataSource});

//   @override
//   Future<List<Book>> fetchBooks() async {
//     return await remoteDataSource.getBooks();
//   }

//   @override
//   Future<void> toggleLike(String bookId) async {
//     await remoteDataSource.toggleBookLike(bookId);
//   }
// }
import 'package:dio/dio.dart'; 
import 'package:shared_preferences/shared_preferences.dart';
import 'package:brana/data/repositories/book_repository.dart';
import 'package:brana/models/book_model/books.dart';

class BookRepositoryImpl implements BookRepository {
  final SharedPreferences _prefs;
  final Dio _dio;

  BookRepositoryImpl(this._prefs, this._dio);

  @override
  Future<List<Book>> fetchBooks() async {
    final response = await _dio.get('/books');
    return (response.data as List)
      .map((json) => Book.fromJson(json))
      .toList();
  }

  @override
  Future<void> toggleFavorite(int bookId) async {
    final favorites = await getFavorites();
    favorites.contains(bookId) 
      ? favorites.remove(bookId)
      : favorites.add(bookId);
    
    await _prefs.setStringList('favorites', 
      favorites.map((id) => id.toString()).toList());
  }

  @override
  Future<Set<int>> getFavorites() async {
    return _prefs.getStringList('favorites')?.map(int.parse).toSet() ?? {};
  }
}