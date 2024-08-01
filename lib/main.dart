import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:brana/pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: BranaColor.light_background,
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
