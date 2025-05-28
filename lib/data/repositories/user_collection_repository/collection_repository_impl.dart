import 'package:brana/data/datasources/collection_data_source.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'package:brana/models/user_collection_model/user_collection.dart';
import 'package:dio/dio.dart'; 


class CollectionRepositoryImpl implements CollectionRepository {
  final CollectionDataSource remoteDataSource;
  //  final SharedPreferences _prefs;

  CollectionRepositoryImpl(this.remoteDataSource);
 
  @override
  Future<List<UserCollection>> getWishListItems() async {
    try {
      final response = await remoteDataSource.getWishListItems();
      print("Response from API: $response");
    return response;
      
    } on DioException catch (e) {
      throw Exception("Error fetching books: $e");
    }
  }

 @override
    Future<void> addOrRemoveWishList(String bookId, String type) async {

   if (type == "remove") {
    await remoteDataSource.addOrRemoveWishList(bookId, "remove");
  } else if (type == "add") {
    await remoteDataSource.addOrRemoveWishList(bookId, "add");
  }

  }


  // @override
  // Future<Set<String>> getFavorites() async {
  //   final favorites = _prefs.getStringList('favorites') ?? [];
  //   return favorites.toSet();
  // }
}