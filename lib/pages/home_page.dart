import 'package:brana/components/home/bodyContainer.dart';
import 'package:brana/pages/favourite.dart';
import 'package:brana/pages/profile_page.dart';
import 'package:brana/pages/setting_page.dart';
import 'package:brana/pages/shelves.dart';
import 'package:brana/utils/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:brana/components/home/search_bar.dart';
import 'package:brana/components/sideBar.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var _page = 0;
  final pages = [bodyContainer(),Shelves(),Favourite(),Profile()];
  final GlobalKey<SideBarState> _sidebarKey= GlobalKey<SideBarState>();
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

          SizedBox(width: 20,),
                    Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
            isLabelVisible: false,
            child: Icon(
                Icons.settings,
                color: Colors.white,
                ),
            
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
      body: pages[_page],
      
      bottomNavigationBar: Container(
        child: CurvedNavigationBar(
          backgroundColor: BranaColor.light_background,
          color:BranaColor.navigationColor,
          height: 60,
          animationDuration: Duration(milliseconds: 300),
          index: 0,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
            isLabelVisible: false,
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
              child: Icon(Icons.shelves,
              color: BranaColor.WhiteColor,
              ),
            ),
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                ),
            
          ),
          Icon(Icons.person,
          color: BranaColor.WhiteColor,
          ),
        ],
        ),
      ),
    );
  }
}