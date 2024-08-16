import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetail extends StatelessWidget {
  // final String Detail;
  // const BookDetail({required this.Detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Born a Crime",
        style:TextStyle(
          fontSize: 20,
          color: BranaColor.BookTitleColor
        )
      ),
    );
  }
  }