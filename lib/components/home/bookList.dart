import 'package:flutter/material.dart';

class Booklist extends StatefulWidget {
  const Booklist({super.key});

  @override
  State<Booklist> createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
         children: [
          Container(),
          Column(
            children: [
              Text("Tittle"),
              Text("Author"),
              Text("Genere"),
              Icon(Icons.star_half_outlined
              
              )
            ],
          )
          ] 
        )
      ],
    );
  }
}