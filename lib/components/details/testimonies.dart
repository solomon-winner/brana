import 'package:brana/utils/colors.dart';
import 'package:brana/utils/seeMore.dart';
import 'package:flutter/material.dart';

class Testimonies extends StatefulWidget {
  String testimony;
  Testimonies({required this.testimony});

  @override
  State<Testimonies> createState() => _TestimoniesState();
}

class _TestimoniesState extends State<Testimonies> {
  @override
  Widget build(BuildContext context) {
    final full_testimony = "Solomon Yalew: ${widget.testimony}";
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
                offset: Offset(0.0, 7.0))
          ],
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Testimonies: ",
            style: TextStyle(fontSize: 17, color: BranaColor.BookTitleColor),
          ),
          SizedBox(
            height: 10,
          ),
          SeeMore(text: full_testimony, testimonier: 'Solomon Yalew:  '),
          Divider(
            color: BranaColor.DividerColor,
            thickness: 1,
          ),
          SeeMore(text: full_testimony, testimonier: 'Solomon Yalew:  '),
          
        ],
      ),
    );
  }
}
