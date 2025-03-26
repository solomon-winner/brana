import 'package:brana/models/book_model/books.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class BookService {
  Future<List<Book>>fetchBooks() async {
    //final response = await http.get(Uri.parse(''));
    //  if (response.statusCode == 200) {
      // List<dynamic> data = json.decode(response.body);
      // List<Book> books = data.map((book) =>Book.fromJson(book)).toList();
      //   // _initData() async{
       String data = await rootBundle.loadString("assets/info.json");
       List<dynamic> jsonResult = json.decode(data);


       List<Book> books = jsonResult.map((book) =>Book.fromJson(book)).toList();

      return books;
    //  } 
    //  else {
    //   throw Exception('Failed to load Books!');
    //  }
  }
}