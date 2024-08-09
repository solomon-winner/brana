import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:brana/models/books.dart';
import 'package:brana/utils/consts.dart';

class BookService {
  Future<List<Book>>fetchBooks() async {
    final response = await http.get(Uri.parse('http://localhost:8000/Mobile/Flutter/brana/assets/info.json'));
    print("${response} *******");
     if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      List<Book> books = data.map((book) =>Book.fromJson(book)).toList();
      return books;
     } else {
      throw Exception('Failed to load Books!');
     }
  }
}