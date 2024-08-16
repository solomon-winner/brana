import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Shelves extends StatefulWidget {
  const Shelves({super.key});

  @override
  State<Shelves> createState() => _ShelvesState();
}

class _ShelvesState extends State<Shelves> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: BranaColor.light_background,
      appBar: AppBar(
              backgroundColor: BranaColor.light_background,

        title: Text("Shelves Page"),
      ),
      body: Container(
        child: Center(child: Text(
          "Detail page for Shelves",
          style: TextStyle(
            color: BranaColor.dark_background,
          ),
        ),),
      ),
    );
  }
}