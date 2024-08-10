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
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
            child: GestureDetector(
              onTap:() => Navigator.pushReplacementNamed(context, "/shelves"),
              child: Icon(Icons.shelves,
              color: BranaColor.WhiteColor,
              ),
            ),
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
      
      bottomNavigationBar: Container(
        child: CurvedNavigationBar(
          backgroundColor: BranaColor.light_background,
          color:BranaColor.navigationColor,
          height: 60,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            print(index);
          },
          items: [
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
            isLabelVisible: false,
            child: GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, "/home"),
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          ),
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
            child: GestureDetector(
              onTap:() => Navigator.pushReplacementNamed(context, "/favourites"),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                ),
            ),
          ),
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
            isLabelVisible: false,
            child: GestureDetector(
             onTap:() => Navigator.pushReplacementNamed(context, "/settings"),

              child: Icon(
                Icons.settings,
                color: Colors.white,
                ),
            ),
          ),
        ]),
      ),
    );
  }
}