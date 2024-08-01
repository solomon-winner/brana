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
    return Scaffold(
      body: Container(
        color: BranaColor.light_background,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: 280,
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
              children: [],
              )
          ),
        ),
      ),
    );
  }
}