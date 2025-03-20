import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:brana/models/books.dart';

abstract class BookRemoteDataSource {
  Future<List<Book>> getBooks();
  Future<void> toggleBookLike(String bookId);
}

class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  final String baseUrl = "https://api.example.com/books"; // Replace with actual API

  @override
  Future<List<Book>> getBooks() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.map((json) => Book.fromJson(json)).toList();
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
      final response = await http.post(
        Uri.parse("$baseUrl/$bookId/toggle-like"),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode != 200) {
        throw Exception("Failed to toggle like");
      }
    } catch (e) {
      throw Exception("Error toggling like: $e");
    }
  }
}
