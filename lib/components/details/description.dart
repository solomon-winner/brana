import 'package:brana/utils/colors.dart';
import 'package:brana/utils/seeMore.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  final String description;
  const Description({required this.description});

  @override
  _DescriptionState createState() => _DescriptionState();
}
class _DescriptionState extends State<Description> {

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
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: SeeMore(text: widget.description, title: "Description: "),
    );
  }   
}

