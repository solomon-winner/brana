import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Aboutyou extends StatefulWidget {
  const Aboutyou({super.key});

  @override
  State<Aboutyou> createState() => _AboutyouState();
}

class _AboutyouState extends State<Aboutyou> {
  String selectedTab = "Your Categories";
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

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = "Your Categories";
                    });
                  },
                  child: Text(
                    "Your Categories",
                    style: TextStyle(
                        fontWeight: selectedTab == "Your Categories"
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 15
                            ),
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = "Your Authors";
                    });
                  },
                  child: Text(
                    "Your Authors",
                    style: TextStyle(
                        fontWeight: selectedTab == "Your Authors"
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 15
                        ),
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
                            : FontWeight.normal,
                        fontSize: 15
                        ),
                  )),
            ]),
          ),
          Expanded(
            child: Container(
              child: getContent(),
            )),
        ],
      ),
    );
  }

  Widget getContent() {
    switch (selectedTab) {
      case "Your Categories":
        return Center(
          child: Text(
            "Content for Favourite Categories"
          ),
        );
      case "Your Authors":
                return Center(
          child: Text(
            "Content for Favourite Categories"
          ),
        );
      case "Saved Books":
                return Center(
          child: Text(
            "Content for Saved Books"
          ),
        );
      default:
                return Center(
          child: Text(
            "Selected a tab"
          ),
        );
    }
  }
}
