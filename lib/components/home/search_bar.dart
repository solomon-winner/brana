import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> 
with SingleTickerProviderStateMixin{
  late TextEditingController _textEditingController;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Container(
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: 280,
            ),
        ),
      ),
    );
  }
}