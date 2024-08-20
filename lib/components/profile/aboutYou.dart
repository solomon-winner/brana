import 'package:brana/models/books.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Aboutyou extends StatefulWidget {

 final List<String> recommended ;
 final  List<Book> saving ;

  Aboutyou({required this.recommended , required this.saving});

  @override
  State<Aboutyou> createState() => _AboutyouState();
}

class _AboutyouState extends State<Aboutyou> {
  String selectedTab = "Your recommended Books";
  bool isContent = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
                mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = "Your recommended Books";
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: selectedTab == "Your recommended Books"
                                        ? BranaColor.BookTitleColor
                                        : Colors.transparent,
                                    width: 2))),
                        child: Text(
                          "Your recommended Books ",
                          style: TextStyle(
                              decoration: selectedTab == "Your recommended Books"
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                              decorationColor:
                                  selectedTab == "Your recommended Books"
                                      ? Colors.green
                                      : Colors.transparent,
                              fontWeight: selectedTab == "Your recommended Books"
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 15),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = "Saved Books";
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: selectedTab == "Saved Books"
                                        ? BranaColor.BookTitleColor
                                        : Colors.transparent,
                                    width: 2))),
                        child: Text(
                          "Saved Books",
                          style: TextStyle(
                              decoration: selectedTab == "Saved Books"
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                              decorationColor: selectedTab == "Saved Books"
                                  ? Colors.green
                                  : Colors.transparent,
                              fontWeight: selectedTab == "Saved Books"
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 15),
                        ),
                      )),
                ]),
          ),
          getContent(),
        ],
      ),
    );
  }

  Widget getContent() {
    switch (selectedTab) {
      case "Your recommended Books":
        return isContent
            ? Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Text("recommendation")
                )
              
            : Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Center(
                  child: Text(
                      "You've not chosen your most recommended Books list"),
                ),
              );
      case "Saved Books":
        return Container(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Center(child: Text("You've not Saved Books")),

        );
      default:
        return Center(
          child: Text("Selected a tab"),
        );
    }
  }
}
