import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  final String image;

  BookImage({required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.40,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)
          )
      ),
    );
  }
}