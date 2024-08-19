import 'package:brana/utils/colors.dart';
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
    final hasMore =  _displayCount < widget.list.length;
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 7.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
        color: BranaColor.WhiteColor,
      ),
    );
  }
}