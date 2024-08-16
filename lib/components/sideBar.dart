import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOutBack,
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: BranaColor.light_background,
        boxShadow: [
          BoxShadow(
            color: BranaColor.ShadowColor,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.zero
      ),
      width:  250 ,
      child: Drawer(
        shadowColor: BranaColor.ShadowColor,
        backgroundColor: BranaColor.light_background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                
                    currentAccountPicture: CircleAvatar(
                   backgroundColor: BranaColor.WhiteColor,
                   child: ClipOval(child: Text("S",
                   style: TextStyle(
                    color: BranaColor.dark_background,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                   ),
                   )),
                 ),
                 decoration: BoxDecoration(
                   color: BranaColor.dark_background,
                   image: DecorationImage(
                     image: AssetImage("assets/Green.PNG"),
                     fit: BoxFit.cover
                   )
                 ),
                accountName: const Text("Solomon Yalew",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )
                ),
                 accountEmail:  Text("solomonyalew664@gmail.com",
                 style: TextStyle(
                   color: BranaColor.WhiteColor,
                    fontSize: 12,

                 ),
                 ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home_filled,
                ),
                title: Text("Home"),
                onTap: () => print(this),
              ),
                            ListTile(
                leading: Icon(
                  Icons.share,
                ),
                title: Text("Share"),
                onTap: () => print(this),
              ),
                ListTile(
                leading: Icon(
                  Icons.settings,
                ),
                title: Text("Setting"),
                onTap: () => print(this),
              ),
                            ListTile(
                leading: Icon(
                  Icons.money,
                ),
                title: Text("Purchase History"),
                onTap: () => print(this),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                ),
                title: Text("Notification"),
                onTap: () => print(this),
              ),
              ListTile(
                leading: Icon(
                  Icons.nightlight,
                ),
                title: Text("Dark Mode"),
                onTap: () => print(this),
              )
            ],
          )


        ),
    );
  }
}

// ???
// import 'package:flutter/material.dart';

// class SideBar extends StatefulWidget {
//   const SideBar({super.key});

//   @override
//   State<SideBar> createState() => _SideBarState();
// }

// class _SideBarState extends State<SideBar> {
//   bool _isExpanded = true;

//   void _toggleSidebar() {
//     setState(() {
//       _isExpanded = !_isExpanded;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 300),
//       width: _isExpanded ? 250.0 : 70.0,
//       child: Drawer(
//         child: Column(
//           children: [
//             ListTile(
//               title: Text('Menu'),
//               trailing: IconButton(
//                 icon: Icon(_isExpanded ? Icons.arrow_back : Icons.arrow_forward),
//                 onPressed: _toggleSidebar,
//               ),
//             ),
//             // Add your menu items here
//             ListTile(
//               leading: Icon(Icons.home),
//               title: _isExpanded ? Text('Home') : null,
//             ),
//             ListTile(
//               leading: Icon(Icons.search),
//               title: _isExpanded ? Text('Search') : null,
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: _isExpanded ? Text('Profile') : null,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }