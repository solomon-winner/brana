import 'dart:math';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> 
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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}