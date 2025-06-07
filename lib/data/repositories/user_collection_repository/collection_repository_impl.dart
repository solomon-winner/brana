import 'package:brana/data/datasources/collection_data_source.dart';
import 'package:brana/data/repositories/user_collection_repository/collection_repository.dart';
import 'package:brana/models/user_collection_model/user_collection.dart';
import 'package:dio/dio.dart'; 
import 'package:brana/utils/operation_type.dart';
import 'package:brana/models/shelve_model/shelve.dart';


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
    Future<void> addOrRemoveWishList(String bookId, OperationType type) async {

   if (type == OperationType.remove) {
    await remoteDataSource.addOrRemoveWishList(bookId, OperationType.remove);
  } else if (type == OperationType.add) {
    await remoteDataSource.addOrRemoveWishList(bookId, OperationType.add);
  }


  }
  
 @override
 Future<Shelve> addShelveList({
    required String bookId,
    required int bookCount,
    required String to,
    required bool isPaid,
  }) async {
    print("#####################$bookId");
  final response = await remoteDataSource.addShelveList(
    bookId: bookId,
    bookCount: bookCount,
    to: to,
    isPaid: isPaid,
  );

  return response;
}

@override
  Future<List<Shelve>> getShelveList() async {
    final response = await remoteDataSource.getShelveList();
    return response;

  }
@override
  Future<void> removeBookFromShelve(String shelveId) async{
    await remoteDataSource.removeBookFromShelve(shelveId);
  }

@override
  Future<void> removeAwholeShelve() async{
    await remoteDataSource.removeAwholeShelve();
  }
  // @override
  // Future<Set<String>> getFavorites() async {
  //   final favorites = _prefs.getStringList('favorites') ?? [];
  //   return favorites.toSet();
  // }
}