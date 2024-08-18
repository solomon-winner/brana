import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Aboutyou extends StatefulWidget {
  const Aboutyou({super.key});

  @override
  State<Aboutyou> createState() => _AboutyouState();
}

class _AboutyouState extends State<Aboutyou> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.3,

        decoration: BoxDecoration(
            color: BranaColor.WhiteColor,
            boxShadow: [
              BoxShadow(
                  color: BranaColor.ShadowColor,
                  spreadRadius: -5.0,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 7.0))
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    );
  }
}
