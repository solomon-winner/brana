import 'package:brana/models/books.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

    final Book book;
  Detail({required this.book});
  
  @override
  Widget build(BuildContext context) {
    print("************?????????::::::${book}");
    return  Container();
  }
}