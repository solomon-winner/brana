import 'package:brana/models/books.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Book book;

  Detail({required this.book});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Container(
        child: Center(child: Text(
          "Detail page for ${book.title}",
          style: TextStyle(
            color: BranaColor.WhiteColor,
          ),
        ),),
      ),
    );
  }
}