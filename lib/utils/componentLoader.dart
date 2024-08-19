import 'package:flutter/material.dart';

class Componentloader extends StatefulWidget {
  final List<String> list;
   Componentloader({required this.list});

  @override
  State<Componentloader> createState() => _ComponentloaderState();
}

class _ComponentloaderState extends State<Componentloader> {
    int _displayCount = 2;

  void _loadMore() {
    setState(() {
      _displayCount += 2;
    });
  }
  void _Unload() {
    setState(() {
      _displayCount = 2;
    });
  }
  @override
  Widget build(BuildContext context) {
    final displayedComponent = widget.list.take(_displayCount).toList();
    return Container(

    );
  }
}