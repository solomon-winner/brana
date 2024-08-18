import 'package:flutter/material.dart';

class Profileimage extends StatelessWidget {
  const Profileimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.40,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/Library.jpg"),          
        )

      ),
    );
  }
}