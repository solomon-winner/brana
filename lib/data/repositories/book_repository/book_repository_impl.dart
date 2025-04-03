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
      print("book repository impl$_prefs");
    return await remoteDataSource.getBooks();
      
    } on DioException catch (e) {
      throw Exception("Error fetching books: ${e.message}");
    }
  }

 @override
 Future<void> toggleFavorite(int bookId) async {
    final favorites = await getFavorites();
    favorites.contains(bookId) 
      ? favorites.remove(bookId)
      : favorites.add(bookId);
    
    await Future.wait([
_prefs.setStringList('favorites', 
      favorites.map((id) => id.toString()).toList()),
      // remoteDataSource.toggleBookLike(bookId.toString()),
    ]);

    
  }

  @override
  Future<Set<int>> getFavorites() async {
     return _prefs.getStringList('favorites')?.map(int.parse).toSet() ?? {};
  }
}