import 'package:brana/utils/isSuccess.dart';
import 'package:dio/dio.dart';
import 'package:brana/models/user_collection_model/user_collection.dart';
import 'package:brana/utils/operation_type.dart';

abstract class CollectionDataSource {
  Future<void> toggleBookLike(String bookId, OperationType type);
  Future<List<UserCollection>> getWishListItems();
  Future<void> addOrRemoveWishList(String bookId, OperationType type);
  Future<void> addOrRemoveShelveList({
    required String bookId,
    required String bookCount,
    required double price,
    required String to,
    required String isPaid,
    required OperationType type,
  });
  Future<void> removeBookFromShelve(String shelveId);
  Future<void> payForShelve(String shelveId);
  Future<void> payForAllOnce();
}

class CollectionDataSourceImpl implements CollectionDataSource {
  final Dio dio;

  CollectionDataSourceImpl(this.dio);

  @override
  Future<void> toggleBookLike(String bookId, OperationType type) async {
    try {
      final path = "/favourites/book/";
      final response = type == OperationType.add
          ? await dio.post(path, data: {"bookId": bookId})
          : await dio.delete(path, queryParameters: {"bookId": bookId});

      if (!isSuccessStatus(response.statusCode)) {
        throw Exception("Failed to toggle book like status.");
      }
    } catch (e) {
      throw Exception("Error toggling book like: $e");
    }
  }

  @override
  Future<List<UserCollection>> getWishListItems() async {
    try {
      final response = await dio.get('/wishlist');

      if (isSuccessStatus(response.statusCode)) {
        final data = response.data;
        final List<dynamic> wishListJson = data["data"];
        return wishListJson.map((json) => UserCollection.fromJson(json)).toList();
      } else {
        throw Exception("Failed to load wishlist items.");
      }
    } catch (e) {
      throw Exception("Error fetching wishlist items: $e");
    }
  }

  @override
  Future<void> addOrRemoveWishList(String bookId, OperationType type) async {
    try {
      final path = "/wishlist";
      final response = type == OperationType.add
          ? await dio.post(path, data: {"bookId": bookId})
          : await dio.delete(path, data: {"bookId": bookId});

      if (!isSuccessStatus(response.statusCode)) {
        throw Exception("Failed to update wishlist.");
      }
    } catch (e) {
      throw Exception("Error updating wishlist: $e");
    }
  }

  @override
  Future<void> addOrRemoveShelveList({
    required String bookId,
    required String bookCount,
    required double price,
    required String to,
    required String isPaid,
    required OperationType type,
  }) async {
    try {
      final path = "/shelve";
      final response = type == OperationType.add
          ? await dio.post(
              path,
              queryParameters: {"book": bookId},
              data: {
                "bookCount": bookCount,
                "price": price,
                "to": to,
                "isPaid": isPaid,
              },
            )
          : await dio.delete("/shelve/remove");

      if (!isSuccessStatus(response.statusCode)) {
        throw Exception("Failed to update shelve list.");
      }
    } catch (e) {
      throw Exception("Error updating shelve list: $e");
    }
  }

  @override
  Future<void> removeBookFromShelve(String shelveId) async {
    try {
      final response = await dio.delete("/shelve/$shelveId");

      if (!isSuccessStatus(response.statusCode)) {
        throw Exception("Failed to remove book from shelve.");
      }
    } catch (e) {
      throw Exception("Error removing book from shelve: $e");
    }
  }

  @override
  Future<void> payForShelve(String shelveId) async {
    try {
      final response = await dio.put("/shelve/pay/$shelveId");

      if (!isSuccessStatus(response.statusCode)) {
        throw Exception("Failed to pay for shelve.");
      }
    } catch (e) {
      throw Exception("Error paying for shelve: $e");
    }
  }

  @override
  Future<void> payForAllOnce() async {
    try {
      final response = await dio.put("/shelve/payAllOnce/");

      if (!isSuccessStatus(response.statusCode)) {
        throw Exception("Failed to pay for all shelved books.");
      }
    } catch (e) {
      throw Exception("Error paying for all shelved books: $e");
    }
  }
}
