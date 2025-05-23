import 'dart:convert';
import 'package:brana/utils/isSuccess.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:brana/models/book_model/books.dart';

abstract class BookRemoteDataSource {
  Future<List<Book>> getBooks();
  Future<void> toggleBookLike(String bookId, String type);
}

class BookRemoteDataSourceImpl implements BookRemoteDataSource {
   final Dio dio;
   BookRemoteDataSourceImpl(this.dio);

  @override
  Future<List<Book>> getBooks() async {
    try {

       final response = await dio.get('/books');
      //  String data = await rootBundle.loadString("assets/info.json");

      if (isSuccessStatus(response.statusCode)) {
    final data = response.data;

    final List<dynamic> booksJson = data["data"]["books"];
           return booksJson.map((json) => Book.fromJson(json)).toList();
          } else {

        throw Exception("Failed to load books");
      }
    } catch (e) {
      throw Exception("Error fetching books: $e");
    }
  }

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
}
