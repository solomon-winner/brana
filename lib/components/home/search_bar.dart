import 'dart:math';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({super.key});

  @override
  State<AnimatedSearchBar> createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> 
with SingleTickerProviderStateMixin{
  late TextEditingController _textEditingController;
  late AnimationController _animationController;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: 280 ,
            height: 50,
            decoration: BoxDecoration(
              color: BranaColor.WhiteColor,
              borderRadius: BorderRadius.circular(30),
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
                Padding(
                  padding: EdgeInsets.only(left:5),
                    child: CircleAvatar(
                      backgroundColor: BranaColor.WhiteColor,
                      child: Icon(
                        Icons.search,
                        size: 30
                      ),
                    ),
                  
                  ),

                  Expanded(
                    child:AnimatedOpacity(
                      opacity: 1.0 ,
                      duration: const Duration(
                        milliseconds: 200
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: "Search...",
                          labelStyle: TextStyle(
                            color: BranaColor.ShadowColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    )
                   ),
                   Expanded(
                     child: Align(
                      alignment: Alignment.centerRight,
                       child: Visibility(
                        visible: true,
                         child: Padding(
                          padding: EdgeInsets.all(8),
                             child: Icon(Icons.mic, size:20),
                              
                           
                         ),
                       ),
                     ),
                   )
              ],
            )
          
        
      
    );
  }
}