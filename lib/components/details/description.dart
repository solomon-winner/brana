import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 7.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
        color: BranaColor.WhiteColor,
        boxShadow: [
          BoxShadow(
            color: BranaColor.ShadowColor,
            spreadRadius: -5.0,
            blurRadius: 5.0,
            offset: Offset(0.0,7.0)
          )
        ],
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:  MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description: ",
            style: TextStyle(
              fontSize: 15,
              color: BranaColor.BookTitleColor
            ),
          )
        ],),
    );
  }
}