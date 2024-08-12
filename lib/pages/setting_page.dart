import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
      ),
      body: Container(
        child: Center(child: Text(
          "Detail page for Setting",
          style: TextStyle(
            color: BranaColor.dark_background
          ),
        ),),
      ),
    );  }
}