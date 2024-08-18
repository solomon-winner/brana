import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Aboutyou extends StatefulWidget {
  const Aboutyou({super.key});

  @override
  State<Aboutyou> createState() => _AboutyouState();
}

class _AboutyouState extends State<Aboutyou> {
  String selectedTab = "Favourite Categories";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.3,
      decoration: BoxDecoration(
          color: BranaColor.WhiteColor,
          boxShadow: [
            BoxShadow(
                color: BranaColor.ShadowColor,
                spreadRadius: -5.0,
                blurRadius: 5.0,
                offset: Offset(0.0, 7.0))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTab = "Favourite Categories";
                  });
                },
                child: Text(
                  "Favourite Categories",
                  style: TextStyle(
                      fontWeight: selectedTab == "Favourite Categories"
                          ? FontWeight.bold
                          : FontWeight.normal),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTab = "Favourite Authors";
                  });
                },
                child: Text(
                  "Favourite Authors",
                  style: TextStyle(
                      fontWeight: selectedTab == "Favourite Authors"
                          ? FontWeight.bold
                          : FontWeight.normal),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTab = "Saved Books";
                  });
                },
                child: Text(
                  "Saved Books",
                  style: TextStyle(
                      fontWeight: selectedTab == "Saved Books"
                          ? FontWeight.bold
                          : FontWeight.normal),
                )),
          ]),
          Container(),
        ],
      ),
    );
  }
}
