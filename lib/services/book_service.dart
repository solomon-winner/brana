import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:brana/models/books.dart';
import 'package:brana/utils/consts.dart';

class BookService {
  Future<List<Book>>fetchBooks() async {
    final response = await http.get(Uri.parse(API_BASE_URL));
     if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((book) =>Book.fromJson(book)).toList();
     } else {
      throw Exception('Failed to load Books!');
     }
  }
}