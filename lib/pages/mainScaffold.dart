import 'package:brana/components/home/bodyContainer.dart';
import 'package:brana/utils/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:brana/components/home/search_bar.dart';

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
        break;
      case 3:
        Navigator.pushReplacementNamed(context, "/settings");
        break;
      case 4:
        Navigator.pushReplacementNamed(context, "/profile");
        break;
      case 5:
        Navigator.pushReplacementNamed(context, "/shelves");
        break;
    }
  }

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
              onTap: () {
                // setState(() {
                // _selectedIndex = 5;                
                // });
                _onItemTapped(5);
              },
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
      body: widget.body,
      
      bottomNavigationBar: Container(
        child: CurvedNavigationBar(
          backgroundColor: BranaColor.light_background,
          color:BranaColor.navigationColor,
          height: 60,
          animationDuration: Duration(milliseconds: 300),
          onTap: _onItemTapped, 
          items: [
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
            isLabelVisible: false,
            child: GestureDetector(
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

              child: Icon(
                Icons.settings,
                color: Colors.white,
                ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}

/////////////////////////////////
///


