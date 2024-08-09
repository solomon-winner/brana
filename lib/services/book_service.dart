// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:http/http.dart' as http;
// import 'package:brana/models/books.dart';
// import 'package:brana/utils/consts.dart';
// import 'package:provider/provider.dart';

// class BookService {
//   Future<List<Book>>fetchBooks() async {
//    // final response = await http.get(Uri.file(r'info.json', windows: true));
//    final file = File('file:///C:/Users/solya/OneDrive/Documents/Projects/Mobile/Flutter/brana/assets/info.json');
//    final contents = await rootBundle.loadString('assets/info.json'); 
//     print("${contents} *******");
//           List<dynamic> data = json.decode(contents);
//       return data.map((book) =>Book.fromJson(book)).toList();
//     //  if (response.statusCode == 200) {
//     //   List<dynamic> data = json.decode(response.body);
//     //   return data.map((book) =>Book.fromJson(book)).toList();
//     //  } else {
//     //   throw Exception('Failed to load Books!');
//     //  }
//   }
// }
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:brana/models/books.dart';

class BookService {
  Future<List<Book>> fetchBooks() async {
    final contents = await rootBundle.loadString('assets/info.json');
    print("Raw JSON contents: $contents");

    List<dynamic> data = json.decode(contents);
    print("Decoded JSON data: $data");

    List<Book> books = data.map((book) => Book.fromJson(book)).toList();
    print("Parsed Book objects: $books");

    return books;
  }
}