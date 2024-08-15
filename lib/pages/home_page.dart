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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSideBarExpanded = false;

  var _page = 0;
  final pages = [bodyContainer(),Shelves(),Favourite(),Profile()];
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: BranaColor.light_background,
      drawer: SideBar(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
          icon: Icon(
              Icons.menu,
              ),
             color: BranaColor.WhiteColor, 

            onPressed: () {
              setState(() {
                Scaffold.of(context).openDrawer();
              });
            },
        )
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
      body: 
          Column(
            children:[
              Expanded(
              child: pages[_page],
              ),
            ] ,
          ),

      
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