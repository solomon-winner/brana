import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
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