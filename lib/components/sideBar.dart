import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  final GlobalKey<SideBarState> key;
  const SideBar({required this.key}) : super(key: key);

  @override
  State<SideBar> createState() => SideBarState();
}

class SideBarState extends State<SideBar> {
  bool _isExpanded = false;

  void _toggleSidebar() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: _isExpanded ? 250 : 0,
      child: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Home'),
              trailing: IconButton(
                icon: Icon(_isExpanded ?
                Icons.arrow_back:
                Icons.arrow_forward),
                onPressed: _toggleSidebar,
                ),
              ),
          ]
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