import 'package:brana/models/books.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
        child: Text("Detail Page",
        style: TextStyle(
          color: BranaColor.WhiteColor
        ),),
      )
    );
  }
}