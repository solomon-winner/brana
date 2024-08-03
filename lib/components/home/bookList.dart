import 'package:brana/utils/colors.dart';
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
        Padding(
          
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 150,
            decoration: BoxDecoration(
              color: BranaColor.WhiteColor,
              boxShadow:  [
                BoxShadow(
                  color: BranaColor.ShadowColor,
                  spreadRadius: -5.0,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 7.0)
                )
              ]
            ),
            child: Row(
              
             children: [
              Container(
                // margin: EdgeInsets.only(top: 30),
                width: MediaQuery.sizeOf(context).width / 3,
              ),
              Column(
                children: [
                  Text("The_mind_of_the_strategies",
                  style: TextStyle(
                  )
                  ),
                  
                  Text("Author: Kenichi Ohmae"),
                  Text("Genere: Leadership"),
                  Icon(Icons.star_half_outlined
                  
                  )
                ],
              )
              ] 
            ),
          ),
        )
      ],
    );
  }
}