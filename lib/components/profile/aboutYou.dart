import 'package:brana/models/books.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Aboutyou extends StatefulWidget {
  List<String> categories = [];
  List<String> authors = [];
  List<Book> saving = [];

  Aboutyou(
      {required this.categories, required this.authors, required this.saving});

  @override
  State<Aboutyou> createState() => _AboutyouState();
}

class _AboutyouState extends State<Aboutyou> {
  String selectedTab = "Your Categories";
  bool isContent = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
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
            padding: const EdgeInsets.symmetric(vertical: 10),
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
                            fontSize: 15),
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
                            fontSize: 15),
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
                            fontSize: 15),
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
      case "Your Categories":
        return isContent
            ? Container(
               height: MediaQuery.sizeOf(context).height * 0.3, 
               decoration: BoxDecoration(
                border: Border.all(
                  color: BranaColor.dark_background,
                  width: 1.0,
                  style: BorderStyle.solid
                )
               ),            
                child: ListView.builder(
                  itemCount: widget.categories.length,
                  itemBuilder: (context, index) {
                    String Category = widget.categories[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8
                      ),
                      child:
                          GestureDetector(onTap: () {}, child: Text(Category)),
                    );
                  },
                ),
              )
            : Container(
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: Center(
                  child: Text("You've not chosen Favourite Categories"),
                ),
              );
      case "Your Authors":
        return Container(
          height: MediaQuery.sizeOf(context).height * 0.3,
          child: Center(
            child: Text("You've not chosen Favourite Authors"),
          ),
        );
      case "Saved Books":
        return Container(
          height: MediaQuery.sizeOf(context).height * 0.3,
          child: Center(
            child: Text("You've not Saved Books"),
          ),
        );
      default:
        return Center(
          child: Text("Selected a tab"),
        );
    }
  }
}
