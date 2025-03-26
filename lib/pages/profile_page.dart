import 'package:brana/components/details/bookDetail.dart';
import 'package:brana/components/details/bookImage.dart';
import 'package:brana/components/details/description.dart';
import 'package:brana/components/details/booksByAuthor.dart';
import 'package:brana/components/details/testimonies.dart';
import 'package:brana/components/profile/aboutYou.dart';
import 'package:brana/components/profile/profileDetail.dart';
import 'package:brana/components/profile/profileImage.dart';
import 'package:brana/models/books.dart';
import 'package:brana/utils/colors.dart';
import 'package:brana/utils/componentLoader.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BranaColor.light_background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: BranaColor.AppBarTransparent,
        centerTitle: true,
        leading: Container(
          color: BranaColor.WhiteColor, // Set the background color to white
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: BranaColor.dark_background),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: 410,
          child: Stack(
            children: [
              Positioned(
                child: Profileimage(),
              ),
              Positioned(
                top: 230,
                left: 0,
                right: 0,
                child: ProfileDetail(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: 15.0,
          ),
          decoration: BoxDecoration(
              color: BranaColor.WhiteColor,
              boxShadow: [
                BoxShadow(
                    color: BranaColor.ShadowColor,
                    spreadRadius: -5.0,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 7.0))
              ],
              borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Favourite Categories: ",
                style:
                    TextStyle(fontSize: 19, color: BranaColor.BookTitleColor),
              ),
              SizedBox(
                height: 10,
              ),
              Componentloader(
                list: ["Fiction", "Psycology", "Politics"],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: 15.0,
          ),
          decoration: BoxDecoration(
              color: BranaColor.WhiteColor,
              boxShadow: [
                BoxShadow(
                    color: BranaColor.ShadowColor,
                    spreadRadius: -5.0,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 7.0))
              ],
              borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Favourite Authors: ",
                style:
                    TextStyle(fontSize: 19, color: BranaColor.BookTitleColor),
              ),
              SizedBox(
                height: 10,
              ),
              Componentloader(
                list: [
                  "Sidini Sheldon",
                  "Agatha Cristie",
                  "Trevor Noah",
                  "Pableo Cohileo"
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Aboutyou(recommended: [
          " Born A crime",
          " Born A crime",
          " Born A crime",
          " Born A crime",
          " Born A crime",
          " Born A crime",
          " Born A crime",
          " Born A crime",
          " Born A crime"
        ], saving: [])
      ])),
    );
  }
}
