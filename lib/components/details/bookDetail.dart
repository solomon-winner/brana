import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetail extends StatelessWidget {
  // final String Detail;
  // const BookDetail({required this.Detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BranaColor.WhiteColor,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          "Born a Crime",
          style:TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: BranaColor.BookTitleColor
          ),
          overflow: TextOverflow.ellipsis,
           maxLines: 3,
        ),
          Text(
          "SubTitle: Born a Crime",
          style:TextStyle(
            fontSize: 22,
            color: BranaColor.BookTitleColor
          )
        ),        
        ]
      ),
    );
  }
  }