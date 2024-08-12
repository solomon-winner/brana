import 'package:flutter/material.dart';

class MainScaffold extends StatefulWidget {
  final Widget body;

  MainScaffold({required this.body});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, "/home");
        break;
      case 2:
        Navigator.pushReplacementNamed(context, "/favourites");
      default:
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}