// import 'dart:convert';
import 'package:brana/utils/isSuccess.dart';
import 'package:dio/dio.dart';
// import 'package:flutter/services.dart';
import 'package:brana/models/user_collection_model/user_collection.dart';

abstract class CollectionDataSource {
  Future<void> toggleBookLike(String bookId, String type);
  Future<List<UserCollection>> getWishListItems();
  Future<void> addOrRemoveWishList(String bookId, String type);
}

class CollectionDataSourceImpl implements CollectionDataSource {
   final Dio dio;
   CollectionDataSourceImpl(this.dio);


  @override
  Future<void> toggleBookLike(String bookId, String type ) async {
    try {
      late Response response;

      if (type == "add") {
        // Add to favorites
         response = await dio.post("/favourites/book/", data:{"bookId": bookId});
      } else if (type == "remove") {
        // Remove from favorites
         response = await dio.delete("/favourites/book/", queryParameters:{"bookId": bookId});
      } else {
      throw ArgumentError("Invalid type: $type. Use 'add' or 'remove'.");
    }
      if (!isSuccessStatus(response.statusCode)) { //?
        throw Exception("Failed to toggle like");
      }
    } catch (e) {
      throw Exception("Error toggling like: $e");
    }
  }

  @override
  Future<List<UserCollection>> getWishListItems() async {
    try{
    final response = await dio.get('/wishlist');

    if (isSuccessStatus(response.statusCode)) {
      final data = response.data;

      final List<dynamic> wishListJson = data["data"];

      return wishListJson.map((json) =>  UserCollection.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load wishlists");
    }
  } catch (e) {
    throw Exception("Error fetching wishlists: $e");
  }
  }
    @override
    Future<void> addOrRemoveWishList(String bookId, String type) async{
      try {
        late Response response;

        if (type == "add") {
          response = await dio.post("/wishlist", data: {"bookId": bookId});
        } else if (type == "remove") {
          response = await dio.delete("/wishlist",data:{"bookId": bookId});
        } else {
          throw ArgumentError("Invalid type: $type. Use 'add' or 'remove'.");
        }
        if (!isSuccessStatus(response.statusCode)) {
          throw Exception("Failed to add or remove a book!");
        }
      } catch (e) {
        throw Exception("Error adding a book to wishlist: $e");
      }
    }
  

}
