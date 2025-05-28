import 'package:brana/models/user_collection_model/user_collection.dart';

abstract class CollectionRepository {
  Future<List<UserCollection>> getWishListItems();
   Future<void> addOrRemoveWishList(String bookId, String type);
}

