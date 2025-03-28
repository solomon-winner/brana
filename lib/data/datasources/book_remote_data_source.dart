import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:brana/models/book_model/books.dart';

abstract class BookRemoteDataSource {
  Future<List<Book>> getBooks();
  Future<void> toggleBookLike(String bookId);
}

class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  final Dio dio;

  BookRemoteDataSourceImpl(this.dio);
  final String baseUrl = "https://api.example.com/books"; // Replace with actual API

  @override
  Future<List<Book>> getBooks() async {
    try {
      final response = await dio.get('/books');

      if (response.statusCode == 200) {
        return (response.data as List).map((json) => Book.fromJson(json)).toList();
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

      if (response.statusCode != 200) {
        throw Exception("Failed to toggle like");
      }
    } catch (e) {
      throw Exception("Error toggling like: $e");
    }
  }
}
