import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: Text(
          "Detail page for Favourite",
          style: TextStyle(
            color: BranaColor.dark_background,
           ),
         ),
        ),
      );
    }
 }