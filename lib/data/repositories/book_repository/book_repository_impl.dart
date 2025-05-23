import 'package:brana/data/datasources/book_remote_data_source.dart';
import 'package:dio/dio.dart'; 
import 'package:shared_preferences/shared_preferences.dart';
import 'package:brana/data/repositories/book_repository/book_repository.dart';
import 'package:brana/models/book_model/books.dart';

class BookRepositoryImpl implements BookRepository {
  final BookRemoteDataSource remoteDataSource;
   final SharedPreferences _prefs;

  BookRepositoryImpl(this.remoteDataSource ,this._prefs);
 
  @override
  Future<List<Book>> fetchBooks() async {
    try {
      final response = await remoteDataSource.getBooks();
      print("Response from API: $response");
    return response;
      
    } on DioException catch (e) {
      throw Exception("Error fetching books: $e");
    }
  }

 @override
 Future<void> toggleFavorite(String bookId) async {
    final favorites = await getFavorites();
  
   if (favorites.contains(bookId)) {
    favorites.remove(bookId);
  } else {
    favorites.add(bookId);
  }
      await remoteDataSource.toggleBookLike(bookId);

  }


  @override
  Future<Set<String>> getFavorites() async {
    final favorites = _prefs.getStringList('favorites') ?? [];
    return favorites.toSet();
  }
}