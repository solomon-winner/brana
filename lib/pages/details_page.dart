import 'package:brana/components/details/bookImage.dart';
import 'package:brana/models/books.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Book book;

  Detail({required this.book});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: BranaColor.light_background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
       backgroundColor: BranaColor.AppBarTransparent,
       centerTitle: true,
        title: Text(book.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookImage(image: book.img)
          ],
        )
      ),
    );
  }
}