import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  final String image;

  BookImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image)
          )
      ),
    );
  }
}