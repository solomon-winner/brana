import 'package:brana/models/user_collection_model/user_collection.dart';
import 'package:brana/utils/operation_type.dart';
import 'package:brana/models/shelve_model/shelve.dart';

abstract class CollectionRepository {
  Future<List<UserCollection>> getWishListItems();
  Future<void> addOrRemoveWishList(String bookId, OperationType type);
  Future<Shelve> addShelveList({
    required String bookId,
    required int bookCount,
    required String to,
    required bool isPaid,
  });
  Future<List<Shelve>> getShelveList();
  Future<void> removeAwholeShelve();
  Future<void> removeBookFromShelve(String shelveId);
}

