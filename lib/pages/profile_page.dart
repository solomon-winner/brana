import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BranaColor.light_background,
      appBar: AppBar(
        backgroundColor: BranaColor.AppBarTransparent,
        centerTitle: true,
        leading: Container(
          color: BranaColor.WhiteColor,
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back,
              color: BranaColor.dark_background,
            )),
        ),
      ),
    );
  }
}