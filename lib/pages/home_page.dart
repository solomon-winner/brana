import 'package:brana/components/home/bodyContainer.dart';
import 'package:brana/utils/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:brana/components/home/search_bar.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: BranaColor.light_background,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: BranaColor.WhiteColor,
          ),
        actions: [
          Icon(Icons.shelves,
          color: BranaColor.WhiteColor,
          ),
          SizedBox(width: 20,),
          Icon(Icons.person,
          color: BranaColor.WhiteColor,
          ),
          SizedBox(width: 10,)
        ],
        title: const Text(
          "Brana Library",
          style: TextStyle(
            color: Colors.white
          ),
          ),
        centerTitle: true,
        backgroundColor: BranaColor.navigationColor,
      ),
      body:bodyContainer(),
      
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: BranaColor.light_background,
        color:BranaColor.navigationColor,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          print(index);
        },
        items: [
        Icon(
          Icons.home,
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