import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Brana Library",
          style: TextStyle(
            color: Colors.white
          ),
          ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 25, 25, 26),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurpleAccent,
        color:Color.fromARGB(255, 25, 25, 26),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          print(index);
        },
        items: [
        Icon(
          Icons.shelves,
          color: Colors.white,
        ),
        Icon(
          Icons.favorite,
          color: Colors.white,
          ),
        Icon(
          Icons.settings,
          color: Colors.white,
          ),
      ]),
    );
  }
}