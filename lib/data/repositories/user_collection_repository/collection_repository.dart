import 'package:brana/models/user_collection_model/user_collection.dart';
import 'package:brana/utils/operation_type.dart';

abstract class CollectionRepository {
  Future<List<UserCollection>> getWishListItems();
   Future<void> addOrRemoveWishList(String bookId, OperationType type);
}

