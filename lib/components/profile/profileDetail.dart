import 'dart:ffi';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      decoration: BoxDecoration(
          color: BranaColor.WhiteColor,
          boxShadow: [
            BoxShadow(
                color: BranaColor.ShadowColor,
                spreadRadius: -5.0,
                blurRadius: 5.0,
                offset: Offset(0.0, 7.0))
          ],
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Solomon Yalew",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: BranaColor.BookTitleColor),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  Text(
                    "@sol_african",
                    style: TextStyle(
                        fontSize: 20, 
                        color: BranaColor.BookTitleColor),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: BranaColor.ShadowColor,
                        spreadRadius: -5.0,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 7.0)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: CircleAvatar(
                  backgroundColor: BranaColor.WhiteColor,
                  child: ClipOval(
                    child: Icon(
                      Icons.edit,
                      color: BranaColor.BookTitleColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Email: solomonyalew664@gmail.com",
            style: TextStyle(fontSize: 16, color: BranaColor.BookTitleColor),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text(
            "phone No. : +251986780165",
            style: TextStyle(fontSize: 15, color: BranaColor.BookTitleColor),
          ),
          Text(
            "Alternative phone No. : +251936187311",
            style: TextStyle(fontSize: 15, color: BranaColor.BookTitleColor),
          ),
        ],
      ),
    );
  }
}
