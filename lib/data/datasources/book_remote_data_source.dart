import 'dart:convert';
import 'package:brana/utils/isSuccess.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:brana/models/book_model/books.dart';

abstract class BookRemoteDataSource {
  Future<List<Book>> getBooks();
  Future<void> toggleBookLike(String bookId);
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
        print("booksJson@@@@@@@@@@@@: ${booksJson[0]['isApproaved']}, ${booksJson[0]['isBanned']}");
    print("booksJson: ${booksJson[0]['isFavourite']}, ${booksJson[0]['isRecommended']}, ${booksJson[0]['isWishlist']}, ${booksJson[0]['isSaved']}, ${booksJson[0]['isBestSeller']}, ${booksJson[0]['isTrending']}, ${booksJson[0]['isOnSale']}, ${booksJson[0]['isDiscounted']}, ${booksJson[0]['isPopular']}, ${booksJson[0]['isDiscounted']}, ${booksJson[0]['isSoldOut']}, ${booksJson[0]['isPreOrder']}, ${booksJson[0]['isApproaved']}, ${booksJson[0]['isBanned']}, ${booksJson[0]['isComingSoon']}");
    return booksJson.map((json) => Book.fromJson(json)).toList();
          } else {
        throw Exception("Failed to load books");
      }
    } catch (e) {
      throw Exception("Error fetching books: $e");
    }
  }

  @override
  Future<void> toggleBookLike(String bookId) async {
    try {
       final response = await dio.post("books/favourites/$bookId/");
        // final response = await rootBundle.loadString("assets/info.json");

      if (response.statusCode != 200) { //?
        throw Exception("Failed to toggle like");
      }
    } catch (e) {
      throw Exception("Error toggling like: $e");
    }
  }
}
